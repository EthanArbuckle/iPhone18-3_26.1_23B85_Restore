void sub_E63F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_44FDEC(&a9);
  sub_44FD90(v9);
  _Unwind_Resume(a1);
}

void sub_E63F68(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = 0uLL;
  v33 = 0;
  v6 = *(a2 + 40);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 0x20) == 0)
    {
      if (*(a2 + 312))
      {
        v7 = *(a2 + 312);
      }

      else
      {
        v7 = &off_2776FB8;
      }

      sub_E64E10(a1, v7, 1, v31);
      goto LABEL_9;
    }

LABEL_12:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  sub_E64BC8(a1, *(a2 + 288), 1, v31);
LABEL_9:
  v8 = *(&v32 + 1);
  if (*(&v32 + 1) >= v33)
  {
    v9 = sub_E67100(&v32, v31);
    *(&v32 + 1) = v9;
    v10 = v32;
    if (v32 != v9)
    {
LABEL_14:
      while (sub_E67BDC(v10))
      {
        v10 += 440;
        if (v10 == v9)
        {
          v11 = *(a2 + 64);
          v12 = *(a2 + 88);
          v13 = v12 | v11;
          if (v12 >= v11)
          {
            v12 = *(a2 + 64);
          }

          if (v13)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 0;
          }

          if (v14)
          {
            sub_E64948(a1, a2 + 152, 3, &__p);
            v18 = __p;
            v19 = v30;
            v27 = &v32;
            if (__p != v30)
            {
              do
              {
                sub_E66F14(&v27, v18);
                v18 += 440;
              }

              while (v18 != v19);
            }

            if (v11)
            {
              sub_E646C8(a1, a2 + 56, 2, &v27);
            }

            else
            {
              sub_E64948(a1, a2 + 80, 2, &v27);
            }

            v20 = v27;
            v21 = v28;
            v34 = &v32;
            if (v27 != v28)
            {
              do
              {
                sub_E66F14(&v34, v20);
                v20 += 55;
              }

              while (v20 != v21);
              v20 = v27;
            }

            *a3 = v32;
            a3[2] = v33;
            v32 = 0uLL;
            v33 = 0;
            if (v20)
            {
              v22 = v28;
              v23 = v20;
              if (v28 != v20)
              {
                do
                {
                  v22 = sub_44FDEC(v22 - 440);
                }

                while (v22 != v20);
                v23 = v27;
              }

              v28 = v20;
              operator delete(v23);
            }

            v24 = __p;
            if (__p)
            {
              v25 = v30;
              v26 = __p;
              if (v30 != __p)
              {
                do
                {
                  v25 = sub_44FDEC(v25 - 440);
                }

                while (v25 != v24);
                v26 = __p;
              }

              v30 = v24;
              operator delete(v26);
            }

            goto LABEL_23;
          }

          break;
        }
      }
    }
  }

  else
  {
    sub_4E9DA4(*(&v32 + 1), v31);
    v9 = v8 + 440;
    *(&v32 + 1) = v9;
    v10 = v32;
    if (v32 != v9)
    {
      goto LABEL_14;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_23:
  sub_44FDEC(v31);
  v15 = v32;
  if (v32)
  {
    v16 = *(&v32 + 1);
    v17 = v32;
    if (*(&v32 + 1) != v32)
    {
      do
      {
        v16 = sub_44FDEC(v16 - 440);
      }

      while (v16 != v15);
      v17 = v32;
    }

    *(&v32 + 1) = v15;
    operator delete(v17);
  }
}

void sub_E64208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_44FD90(va);
  sub_44FDEC(va1);
  sub_44FD90((v5 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_E64298@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a2 + 192);
  if (!v5)
  {
    v5 = &off_278AB30;
  }

  v6 = v5[55];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_278A980;
  }

  result = sub_E22244(a3, *(v7 + 8) + 1);
  v9 = *(v7 + 8);
  v10 = v7[5];
  if (v10)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  v60 = a3;
  if (v9)
  {
    v12 = 8 * v9;
    do
    {
      if (*(*v11 + 3))
      {
        v13 = *(*v11 + 3);
      }

      else
      {
        v13 = &off_2776FB8;
      }

      sub_E64E10(a1, v13, 1, v27);
      sub_E66F14(&v60, v27);
      result = sub_44FDEC(v27);
      ++v11;
      v12 -= 8;
    }

    while (v12);
  }

  if (v7[2])
  {
    sub_E64E10(a1, v7[6], 1, v27);
    v14 = a3[1];
    if (v14 >= a3[2])
    {
      v26 = sub_E66C88(a3, v27);
    }

    else
    {
      *v14 = v27[0];
      v15 = v27[1];
      v16 = v27[2];
      v17 = *v28;
      *(v14 + 63) = *&v28[15];
      *(v14 + 32) = v16;
      *(v14 + 48) = v17;
      *(v14 + 16) = v15;
      *(v14 + 80) = 0;
      *(v14 + 88) = 0;
      *(v14 + 72) = 0;
      *(v14 + 72) = v29;
      *(v14 + 88) = v30;
      v29 = 0uLL;
      v18 = v31;
      *(v14 + 112) = v32;
      *(v14 + 96) = v18;
      v19 = v33;
      *(v14 + 136) = v34;
      *(v14 + 120) = v19;
      *(v14 + 152) = v35;
      *(v14 + 160) = v36;
      v30 = 0;
      v35 = 0;
      v36 = 0uLL;
      v20 = v37;
      *(v14 + 184) = v38;
      *(v14 + 176) = v20;
      v21 = v39;
      *(v14 + 208) = v40;
      *(v14 + 192) = v21;
      v39 = 0uLL;
      v22 = v41;
      *(v14 + 232) = v42;
      *(v14 + 216) = v22;
      v42 = 0;
      v40 = 0;
      v41 = 0uLL;
      v23 = v43;
      *(v14 + 256) = v44;
      *(v14 + 240) = v23;
      v43 = 0uLL;
      v24 = v45;
      *(v14 + 280) = v46;
      *(v14 + 264) = v24;
      v44 = 0;
      v45 = 0uLL;
      v46 = 0;
      v25 = v48;
      *(v14 + 288) = v47;
      *(v14 + 304) = v25;
      *(v14 + 312) = 0;
      *(v14 + 320) = 0;
      *(v14 + 328) = 0;
      *(v14 + 312) = v49;
      *(v14 + 320) = v50;
      v49 = 0;
      *&v50 = 0;
      *(v14 + 336) = 0;
      *(v14 + 344) = 0;
      *(v14 + 352) = 0;
      *(v14 + 360) = 0;
      *(v14 + 336) = v51;
      *(v14 + 352) = v52;
      *(&v50 + 1) = 0;
      v51 = 0uLL;
      v52 = 0;
      *(v14 + 368) = 0;
      *(v14 + 376) = 0;
      *(v14 + 360) = v53;
      *(v14 + 368) = v54;
      v53 = 0;
      *&v54 = 0;
      *(v14 + 384) = v55;
      *(v14 + 400) = 0;
      *(v14 + 408) = 0;
      *(v14 + 416) = 0;
      *(v14 + 400) = v56;
      *(v14 + 416) = v57;
      *(&v54 + 1) = 0;
      v56 = 0uLL;
      v57 = 0;
      *(v14 + 424) = v58;
      *(v14 + 432) = v59;
      v26 = v14 + 440;
    }

    a3[1] = v26;
    return sub_44FDEC(v27);
  }

  return result;
}

void sub_E64558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_44FDEC(&a9);
  sub_44FD90(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_E645B4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = &off_278AB30;
  if (*(a2 + 192))
  {
    v5 = *(a2 + 192);
  }

  v6 = v5[62];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_278A9D8;
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_E22244(a3, *(v7 + 6));
  v9 = *(v7 + 6);
  v10 = v7[4];
  if (v10)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  v15 = a3;
  if (v9)
  {
    v12 = 8 * v9;
    do
    {
      if (*(*v11 + 3))
      {
        v13 = *(*v11 + 3);
      }

      else
      {
        v13 = &off_2776FB8;
      }

      sub_E64E10(a1, v13, 1, v14);
      sub_E66F14(&v15, v14);
      result = sub_44FDEC(v14);
      ++v11;
      v12 -= 8;
    }

    while (v12);
  }

  return result;
}

void sub_E646AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_44FDEC(&a9);
  sub_44FD90(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_E646C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v9 = result;
    v10 = 8 * v7;
    do
    {
      sub_E64BC8(v9, *v6, a3, v26);
      v25 = a4[1];
      if (v25 < a4[2])
      {
        *v25 = v26[0];
        v11 = v26[1];
        v12 = v26[2];
        v13 = *v27;
        *(v25 + 63) = *&v27[15];
        *(v25 + 32) = v12;
        *(v25 + 48) = v13;
        *(v25 + 16) = v11;
        *(v25 + 80) = 0;
        *(v25 + 88) = 0;
        *(v25 + 72) = 0;
        *(v25 + 72) = v28;
        *(v25 + 88) = v29;
        v28 = 0uLL;
        v29 = 0;
        v14 = v30;
        *(v25 + 112) = v31;
        *(v25 + 96) = v14;
        v15 = v32;
        *(v25 + 136) = v33;
        *(v25 + 120) = v15;
        *(v25 + 152) = v34;
        *(v25 + 160) = v35;
        v34 = 0;
        v35 = 0uLL;
        v16 = v36;
        *(v25 + 184) = v37;
        *(v25 + 176) = v16;
        v17 = v38;
        *(v25 + 208) = v39;
        *(v25 + 192) = v17;
        v38 = 0uLL;
        v18 = v40;
        *(v25 + 232) = v41;
        *(v25 + 216) = v18;
        v41 = 0;
        v39 = 0;
        v40 = 0uLL;
        v19 = v42;
        *(v25 + 256) = v43;
        *(v25 + 240) = v19;
        v42 = 0uLL;
        v43 = 0;
        v20 = v44;
        *(v25 + 280) = v45;
        *(v25 + 264) = v20;
        v44 = 0uLL;
        v45 = 0;
        v21 = v47;
        *(v25 + 288) = v46;
        *(v25 + 304) = v21;
        *(v25 + 312) = 0;
        *(v25 + 320) = 0;
        *(v25 + 328) = 0;
        *(v25 + 312) = v48;
        *(v25 + 336) = 0;
        *(v25 + 344) = 0;
        *(v25 + 352) = 0;
        *(v25 + 360) = 0;
        v22 = v50;
        *(v25 + 320) = v49;
        *(v25 + 336) = v22;
        v48 = 0;
        *&v49 = 0;
        *(v25 + 368) = 0;
        *(v25 + 376) = 0;
        v23 = v52;
        *(v25 + 352) = v51;
        *(v25 + 360) = v23;
        *(&v49 + 1) = 0;
        v50 = 0uLL;
        v51 = 0;
        *(v25 + 368) = v53;
        v52 = 0;
        v53 = 0uLL;
        *(v25 + 384) = v54;
        *(v25 + 400) = 0;
        *(v25 + 408) = 0;
        *(v25 + 416) = 0;
        *(v25 + 400) = v55;
        *(v25 + 416) = v56;
        v55 = 0uLL;
        v56 = 0;
        *(v25 + 424) = v57;
        *(v25 + 432) = v58;
        v24 = v25 + 440;
      }

      else
      {
        v24 = sub_E66C88(a4, v26);
      }

      a4[1] = v24;
      result = sub_44FDEC(v26);
      ++v6;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

void sub_E64918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_44FDEC(va);
  sub_44FD90(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_E64948@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v9 = result;
    v10 = 8 * v7;
    do
    {
      sub_E64E10(v9, *v6, a3, v26);
      v25 = a4[1];
      if (v25 < a4[2])
      {
        *v25 = v26[0];
        v11 = v26[1];
        v12 = v26[2];
        v13 = *v27;
        *(v25 + 63) = *&v27[15];
        *(v25 + 32) = v12;
        *(v25 + 48) = v13;
        *(v25 + 16) = v11;
        *(v25 + 80) = 0;
        *(v25 + 88) = 0;
        *(v25 + 72) = 0;
        *(v25 + 72) = v28;
        *(v25 + 88) = v29;
        v28 = 0uLL;
        v29 = 0;
        v14 = v30;
        *(v25 + 112) = v31;
        *(v25 + 96) = v14;
        v15 = v32;
        *(v25 + 136) = v33;
        *(v25 + 120) = v15;
        *(v25 + 152) = v34;
        *(v25 + 160) = v35;
        v34 = 0;
        v35 = 0uLL;
        v16 = v36;
        *(v25 + 184) = v37;
        *(v25 + 176) = v16;
        v17 = v38;
        *(v25 + 208) = v39;
        *(v25 + 192) = v17;
        v38 = 0uLL;
        v18 = v40;
        *(v25 + 232) = v41;
        *(v25 + 216) = v18;
        v41 = 0;
        v39 = 0;
        v40 = 0uLL;
        v19 = v42;
        *(v25 + 256) = v43;
        *(v25 + 240) = v19;
        v42 = 0uLL;
        v43 = 0;
        v20 = v44;
        *(v25 + 280) = v45;
        *(v25 + 264) = v20;
        v44 = 0uLL;
        v45 = 0;
        v21 = v47;
        *(v25 + 288) = v46;
        *(v25 + 304) = v21;
        *(v25 + 312) = 0;
        *(v25 + 320) = 0;
        *(v25 + 328) = 0;
        *(v25 + 312) = v48;
        *(v25 + 336) = 0;
        *(v25 + 344) = 0;
        *(v25 + 352) = 0;
        *(v25 + 360) = 0;
        v22 = v50;
        *(v25 + 320) = v49;
        *(v25 + 336) = v22;
        v48 = 0;
        *&v49 = 0;
        *(v25 + 368) = 0;
        *(v25 + 376) = 0;
        v23 = v52;
        *(v25 + 352) = v51;
        *(v25 + 360) = v23;
        *(&v49 + 1) = 0;
        v50 = 0uLL;
        v51 = 0;
        *(v25 + 368) = v53;
        v52 = 0;
        v53 = 0uLL;
        *(v25 + 384) = v54;
        *(v25 + 400) = 0;
        *(v25 + 408) = 0;
        *(v25 + 416) = 0;
        *(v25 + 400) = v55;
        *(v25 + 416) = v56;
        v55 = 0uLL;
        v56 = 0;
        *(v25 + 424) = v57;
        *(v25 + 432) = v58;
        v24 = v25 + 440;
      }

      else
      {
        v24 = sub_E66C88(a4, v26);
      }

      a4[1] = v24;
      result = sub_44FDEC(v26);
      ++v6;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

void sub_E64B98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_44FDEC(va);
  sub_44FD90(v2);
  _Unwind_Resume(a1);
}

void sub_E64BC8(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_E65F04(a1, a2, a4);
  v7 = sub_E67BDC(a4);
  if (!v7)
  {
    v37 = sub_E65D70(v7, a2);
    v38 = v8;
    sub_E6793C(&v25, &v37);
    *a4 = v25;
    *(a4 + 8) = DWORD2(v25);
    v9 = v27;
    *(a4 + 16) = v26;
    *(a4 + 32) = v9;
    *(a4 + 48) = *v28;
    *(a4 + 63) = *&v28[15];
    v10 = *(a4 + 72);
    if (v10)
    {
      *(a4 + 80) = v10;
      operator delete(v10);
    }

    *(a4 + 72) = *__p;
    *(a4 + 88) = v30;
    __p[1] = 0;
    v30 = 0;
    __p[0] = 0;
    *(a4 + 96) = v31;
    *(a4 + 112) = v32;
    *(a4 + 120) = v33;
    *(a4 + 136) = v34;
    v11 = *(a4 + 152);
    if (v11)
    {
      operator delete(v11);
      v11 = __p[0];
    }

    *(a4 + 152) = v35;
    *(a4 + 160) = v36;
    v36 = 0uLL;
    v35 = 0;
    if (v11)
    {
      __p[1] = v11;
      operator delete(v11);
    }

    sub_E65594(a2, &v25);
    v12 = (a4 + 312);
    v13 = *(a4 + 312);
    if (v13)
    {
      v14 = *(a4 + 320);
      v15 = *(a4 + 312);
      if (v14 != v13)
      {
        do
        {
          v16 = *(v14 - 24);
          if (v16)
          {
            operator delete(v16);
          }

          v17 = *(v14 - 104);
          if (v17)
          {
            *(v14 - 96) = v17;
            operator delete(v17);
          }

          v14 -= 176;
        }

        while (v14 != v13);
        v15 = *v12;
      }

      *(a4 + 320) = v13;
      operator delete(v15);
    }

    *v12 = v25;
    *(a4 + 328) = v26;
    *(a4 + 384) = -1;
    *(a4 + 392) = -1;
    v18 = (a4 + 400);
    v19 = *(a4 + 400);
    if (v19)
    {
      v20 = *(a4 + 408);
      v21 = *(a4 + 400);
      if (v20 != v19)
      {
        v22 = *(a4 + 408);
        do
        {
          v24 = *(v22 - 24);
          v22 -= 24;
          v23 = v24;
          if (v24)
          {
            *(v20 - 16) = v23;
            operator delete(v23);
          }

          v20 = v22;
        }

        while (v22 != v19);
        v21 = *v18;
      }

      *(a4 + 408) = v19;
      operator delete(v21);
    }

    *v18 = 0;
    *(a4 + 408) = 0;
    *(a4 + 424) = 0;
    *(a4 + 416) = 0;
    *(a4 + 432) = 0;
  }

  *(a4 + 288) = 0;
  *(a4 + 296) = 0;
  *(a4 + 304) = 0;
  *(a4 + 16) = -1;
  *(a4 + 436) = 0;
  *(a4 + 180) = 0;
  *(a4 + 184) = 0;
  *(a4 + 176) = a3;
}

void sub_E64E10(_BYTE *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_E665CC(a1, a2, a4);
  if (!sub_E67BDC(a4))
  {
    sub_E6581C(a1, a2, v30);
    *a4 = *v30;
    *(a4 + 8) = *&v30[8];
    v8 = v31;
    *(a4 + 16) = *&v30[16];
    *(a4 + 32) = v8;
    *(a4 + 48) = *v32;
    *(a4 + 63) = *&v32[15];
    v9 = *(a4 + 72);
    if (v9)
    {
      *(a4 + 80) = v9;
      operator delete(v9);
    }

    *(a4 + 72) = *__p;
    *(a4 + 88) = v34;
    __p[1] = 0;
    v34 = 0;
    __p[0] = 0;
    *(a4 + 96) = v35;
    *(a4 + 112) = v36;
    *(a4 + 120) = v37;
    *(a4 + 136) = v38;
    v10 = *(a4 + 152);
    if (v10)
    {
      operator delete(v10);
      v10 = __p[0];
    }

    *(a4 + 152) = v39;
    *(a4 + 160) = v40;
    v40 = 0uLL;
    v39 = 0;
    if (v10)
    {
      __p[1] = v10;
      operator delete(v10);
    }

    sub_E65380(a2, v30);
    v11 = *(a4 + 312);
    if (v11)
    {
      v12 = *(a4 + 320);
      v13 = *(a4 + 312);
      if (v12 != v11)
      {
        do
        {
          v14 = *(v12 - 24);
          if (v14)
          {
            operator delete(v14);
          }

          v15 = *(v12 - 104);
          if (v15)
          {
            *(v12 - 96) = v15;
            operator delete(v15);
          }

          v12 -= 176;
        }

        while (v12 != v11);
        v13 = *(a4 + 312);
      }

      *(a4 + 320) = v11;
      operator delete(v13);
    }

    *(a4 + 312) = *v30;
    *(a4 + 328) = *&v30[16];
    if (*(a2 + 80) != 3)
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 32);
    if (!v16)
    {
      v16 = &off_2776ED0;
    }

    if ((v16[2] & 2) != 0)
    {
      sub_4B6854(v30, v16[7]);
    }

    else
    {
LABEL_22:
      *v30 = -1;
      *&v30[8] = -1;
      v31 = 0uLL;
      *&v30[16] = 0uLL;
    }

    *(a4 + 384) = *v30;
    v17 = *(a4 + 400);
    if (v17)
    {
      v18 = *(a4 + 408);
      v19 = *(a4 + 400);
      if (v18 != v17)
      {
        v20 = *(a4 + 408);
        do
        {
          v22 = *(v20 - 24);
          v20 -= 24;
          v21 = v22;
          if (v22)
          {
            *(v18 - 16) = v21;
            operator delete(v21);
          }

          v18 = v20;
        }

        while (v20 != v17);
        v19 = *(a4 + 400);
      }

      *(a4 + 408) = v17;
      operator delete(v19);
    }

    *(a4 + 400) = *&v30[16];
    *(a4 + 416) = v31;
    *(a4 + 424) = DWORD2(v31);
    *(a4 + 432) = *(a2 + 64);
  }

  sub_E88C3C(a2, v30);
  *(a4 + 288) = v30[0];
  *(a4 + 296) = *&v30[8];
  *(a4 + 176) = a3;
  v23 = *(a2 + 24);
  if (!v23)
  {
    v23 = &off_2776E58;
  }

  if ((v23[5] & 8) != 0)
  {
    v24 = nullsub_1(v23[12]);
  }

  else
  {
    v24 = -1;
  }

  *(a4 + 16) = v24;
  *(a4 + 436) = *(a2 + 72) == 1;
  v25 = *(a2 + 16);
  if ((v25 & 0x400) != 0)
  {
    v27 = *(a2 + 80);
    v28 = v27 - 2;
    v26 = v27 - 1;
    if (v28 >= 3)
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  if (((*(a2 + 76) < 5u) & (v25 >> 9)) != 0)
  {
    v29 = *(a2 + 76);
  }

  else
  {
    v29 = *(a2 + 64);
  }

  *(a4 + 180) = v26;
  *(a4 + 184) = v29;
  sub_E66AEC(a1, a2, a4);
}

BOOL sub_E65180(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  do
  {
    result = sub_E67BDC(v2);
    if (!result)
    {
      break;
    }

    v2 += 440;
  }

  while (v2 != v3);
  return result;
}

void *sub_E651D8(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_E65380(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = &off_2776ED0;
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_E651D8(a2, *(v3 + 8));
  v4 = v3[5];
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      sub_EA40DC(*v5, v15);
      if (sub_E67BDC(v15))
      {
        v8 = a2[1];
        if (v8 >= a2[2])
        {
          v14 = sub_D4E5B4(a2, v15);
        }

        else
        {
          *v8 = v15[0];
          v9 = v15[1];
          v10 = v15[2];
          v11 = *v16;
          *(v8 + 63) = *&v16[15];
          *(v8 + 32) = v10;
          *(v8 + 48) = v11;
          *(v8 + 72) = 0;
          *(v8 + 16) = v9;
          *(v8 + 80) = 0;
          *(v8 + 88) = 0;
          if (v18 != v17)
          {
            if (((v18 - v17) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v12 = v19;
          *(v8 + 112) = v20;
          *(v8 + 96) = v12;
          v13 = v21;
          *(v8 + 136) = v22;
          *(v8 + 120) = v13;
          sub_81988((v8 + 152), &__p);
          v14 = v8 + 176;
        }

        a2[1] = v14;
      }

      if (__p)
      {
        operator delete(__p);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      ++v5;
      v7 -= 8;
    }

    while (v7);
  }
}

void sub_E65578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_44D36C(va);
  sub_48C9A4(v2);
  _Unwind_Resume(a1);
}

void *sub_E65594@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_E651D8(a2, *(a1 + 56));
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = v5 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = 8 * v7;
    do
    {
      v9 = *(*v6 + 56);
      v10 = -1;
      if (v9 <= 180.0)
      {
        v11 = *(*v6 + 48);
        if (fabs(v11) <= 85.0511288 && v9 >= -180.0)
        {
          v12 = sin(fmin(fmax(v11, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
          LODWORD(v13) = ((log((v12 + 1.0) / (1.0 - v12)) / -12.5663706 + 0.5) * 4294967300.0);
          if (v13 >= 0xFFFFFFFE)
          {
            v13 = 4294967294;
          }

          else
          {
            v13 = v13;
          }

          v10 = ((v9 + 180.0) / 360.0 * 4294967300.0) | (v13 << 32);
        }
      }

      *&__src = v10;
      DWORD2(__src) = 0x7FFFFFFF;
      v14 = a2[1];
      if (v14 >= a2[2])
      {
        v15 = sub_E67264(a2, &__src);
      }

      else
      {
        sub_E6793C(a2[1], &__src);
        v15 = v14 + 176;
      }

      a2[1] = v15;
      __src = xmmword_22AC900;
      v17 = 0x800000007;
      result = sub_A74424((v15 - 104), &__src, &v18, 6uLL);
      v6 += 8;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

void sub_E657EC(_Unwind_Exception *a1)
{
  v3 = v2;
  *(v1 + 8) = v3;
  sub_48C9A4(v1);
  _Unwind_Resume(a1);
}

void sub_E6581C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  *a3 = -1;
  *(a3 + 8) = 0x7FFFFFFF;
  *(a3 + 16) = -1;
  v6 = a3 + 16;
  *(a3 + 24) = -1;
  *(a3 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 40) = 0;
  *(a3 + 48) = -1935635296;
  *(a3 + 56) = 0;
  v7 = (a3 + 56);
  *(a3 + 72) = 0;
  v8 = (a3 + 72);
  *(a3 + 63) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 112) = 100;
  *(a3 + 120) = 0;
  *(a3 + 136) = vnegq_f64(v5);
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  v9 = sub_E65B6C(a1, a2);
  v44 = v9;
  v45 = v10;
  if (v9 == -1 && v9 > 0xFFFFFFFEFFFFFFFFLL)
  {
    v11 = *(a2 + 40);
    if (!v11)
    {
      v11 = &off_2776F10;
    }

    v12 = sub_194FEFC((v11 + 2), dword_278D158, qword_278D160);
    sub_E67B78(&v31, v12);
    v13 = *(a3 + 72);
    *a3 = v31;
    *(a3 + 8) = v32;
    v14 = v34;
    *v6 = v33;
    *(v6 + 16) = v14;
    *(v6 + 32) = *v35;
    *(v6 + 47) = *&v35[15];
    if (v13)
    {
      operator delete(v13);
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
    }
  }

  else
  {
    sub_E6793C(&v31, &v44);
    *a3 = v31;
    *(a3 + 8) = v32;
    v15 = v34;
    *v6 = v33;
    *(v6 + 16) = v15;
    *(v6 + 32) = *v35;
    *(v6 + 47) = *&v35[15];
  }

  *(a3 + 72) = __p;
  v16 = v37;
  v17 = v38;
  v37 = 0uLL;
  __p = 0;
  *(a3 + 80) = v16;
  *(a3 + 96) = v17;
  *(a3 + 112) = v39;
  *(a3 + 120) = v40;
  *(a3 + 136) = v41;
  v18 = *(a3 + 152);
  if (v18)
  {
    operator delete(v18);
    v18 = __p;
  }

  *(a3 + 152) = v42;
  *(a3 + 160) = v43;
  v43 = 0uLL;
  v42 = 0;
  if (v18)
  {
    *&v37 = v18;
    operator delete(v18);
  }

  if (*(a2 + 80) == 4)
  {
    v19 = *(a2 + 40);
    if (!v19)
    {
      v19 = &off_2776F10;
    }

    v20 = v19[6];
    v21 = &off_277E738;
    if (v20)
    {
      v21 = v20;
    }

    v22 = *(v21 + 10);
    if ((v22 & 0x20) != 0)
    {
      v23 = *(v21 + 11);
      if (v23 >= 0.0)
      {
        v24 = v23 * 3.6;
        v25 = 0x406F400000000000;
        if (v24 <= 250.0)
        {
          v25 = *&v24;
        }

        *v7 = v25;
      }
    }

    if ((v22 & 8) != 0)
    {
      v26 = *(v21 + 9);
      if (v26 >= 0.0)
      {
        *(a3 + 40) = v26;
      }
    }

    if ((v22 & 0x200) != 0)
    {
      v27 = *(v21 + 14);
      if (v27 >= 0.0)
      {
        v28 = llround(v27 * 100.0) % 36000;
        if (v28 > 0xFFFF735F)
        {
          LOWORD(v28) = v28 - 29536;
        }

        *(a3 + 50) = v28;
        if ((v22 & 0x400) != 0)
        {
          v29 = *(v21 + 15);
          if (v29 >= 0.0)
          {
            v30 = llround(v29 * 100.0) % 36000;
            if (v30 > 0xFFFF735F)
            {
              LOWORD(v30) = v30 - 29536;
            }

            *(a3 + 48) = v30;
          }
        }
      }
    }

    *(a3 + 66) = (v22 & 2) != 0;
  }
}

uint64_t sub_E65B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  switch(v2)
  {
    case 2:
      v12 = *(a2 + 24);
      if (!v12)
      {
        v12 = &off_2776E58;
      }

      v4 = v12[10];
      if (!v4)
      {
        v4 = &off_277E5E8;
      }

      if ((~*(v4 + 10) & 3) != 0)
      {
        return -1;
      }

      break;
    case 4:
      v6 = *(a2 + 40);
      if (!v6)
      {
        v6 = &off_2776F10;
      }

      v7 = v6[6];
      if (!v7)
      {
        v7 = &off_277E738;
      }

      v4 = v7[6];
      if (!v4)
      {
        v4 = &off_277E5E8;
      }

      if ((~*(v4 + 10) & 3) != 0)
      {
        return -1;
      }

      break;
    case 3:
      v3 = *(a2 + 32);
      if (!v3)
      {
        v3 = &off_2776ED0;
      }

      v4 = v3[6];
      if (!v4)
      {
        v4 = &off_277E5E8;
      }

      if ((~*(v4 + 10) & 3) != 0)
      {
        return -1;
      }

      break;
    default:
      return -1;
  }

  v8 = *(v4 + 7);
  result = -1;
  if (v8 <= 180.0)
  {
    v9 = *(v4 + 6);
    if (fabs(v9) <= 85.0511288 && v8 >= -180.0)
    {
      v10 = sin(fmin(fmax(v9, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v11) = ((log((v10 + 1.0) / (1.0 - v10)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v11 >= 0xFFFFFFFE)
      {
        v11 = 4294967294;
      }

      else
      {
        v11 = v11;
      }

      return ((v8 + 180.0) / 360.0 * 4294967300.0) | (v11 << 32);
    }
  }

  return result;
}

uint64_t sub_E65D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 80);
  }

  else
  {
    if ((v2 & 1) == 0 || (v3 = *(a2 + 72), (*(v3 + 17) & 8) == 0))
    {
      if (*(a2 + 56))
      {
        v4 = *(*(a2 + 64) + 8);
        if ((~*(v4 + 10) & 3) != 0)
        {
          return -1;
        }

        goto LABEL_11;
      }

      return -1;
    }

    v6 = *(v3 + 304);
  }

  v4 = *(v6 + 48);
  if (!v4)
  {
    v4 = &off_277E5E8;
  }

  if ((~*(v4 + 10) & 3) != 0)
  {
    return -1;
  }

LABEL_11:
  v7 = *(v4 + 7);
  result = -1;
  if (v7 <= 180.0)
  {
    v8 = *(v4 + 6);
    if (fabs(v8) <= 85.0511288 && v7 >= -180.0)
    {
      v9 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v10) = ((log((v9 + 1.0) / (1.0 - v9)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v10 >= 0xFFFFFFFE)
      {
        v10 = 4294967294;
      }

      else
      {
        v10 = v10;
      }

      return ((v7 + 180.0) / 360.0 * 4294967300.0) | (v10 << 32);
    }
  }

  return result;
}

double sub_E65F04@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!sub_7E7E4(2u))
  {
    goto LABEL_22;
  }

  sub_19594F8(&v25);
  v6 = sub_4A5C(&v25, "get_place_details Waypoint=", 27);
  p_p = &__p;
  sub_1957658(a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = strlen(p_p);
  sub_4A5C(v6, p_p, v8);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v9 = v35;
    if ((v35 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v11 = v31;
    }

    v12 = v30;
    v10 = v11 - v30;
    if (v11 - v30 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_33:
      sub_3244();
    }

LABEL_12:
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v9 = v35;
  if ((v35 & 0x10) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((v9 & 8) != 0)
  {
    v12 = v28;
    v10 = v29 - v28;
    if ((v29 - v28) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  v10 = 0;
  *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_17:
  __p.__r_.__value_.__s.__data_[v10] = 0;
  sub_7E854(&__p, 2u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  std::locale::~locale(&v27);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_22:
  if (sub_194F918(a2 + 16, dword_278D148))
  {
    v13 = sub_1950CD0(a2 + 16, dword_278D148, qword_278D150);
    sub_E6D080(v13, a3);
    return result;
  }

  *(a1 + 7) = 1;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v25);
    v15 = sub_4A5C(&v25, "ERROR: Received a Waypoint without a corresponding PlaceSearchResponse extension. ", 82);
    v16 = sub_4A5C(v15, "Waypoint=", 9);
    sub_1957658(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    v18 = strlen(v17);
    sub_4A5C(v16, v17, v18);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v19 = v35;
      if ((v35 & 0x10) == 0)
      {
LABEL_30:
        if ((v19 & 8) == 0)
        {
          v20 = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_43:
          __p.__r_.__value_.__s.__data_[v20] = 0;
          sub_7E854(&__p, 2u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v33 < 0)
          {
            operator delete(v32);
          }

          std::locale::~locale(&v27);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_48;
        }

        v22 = v28;
        v20 = v29 - v28;
        if ((v29 - v28) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_50:
          sub_3244();
        }

LABEL_38:
        if (v20 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v20;
        if (v20)
        {
          memmove(&__p, v22, v20);
        }

        goto LABEL_43;
      }
    }

    else
    {
      v19 = v35;
      if ((v35 & 0x10) == 0)
      {
        goto LABEL_30;
      }
    }

    v21 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v21 = v31;
    }

    v22 = v30;
    v20 = v21 - v30;
    if (v21 - v30 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_50;
    }

    goto LABEL_38;
  }

LABEL_48:
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  *a3 = -1;
  *(a3 + 8) = 0x7FFFFFFF;
  *(a3 + 16) = -1;
  *(a3 + 24) = -1;
  *(a3 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 40) = 0;
  *(a3 + 48) = -1935635296;
  *(a3 + 56) = 0;
  *(a3 + 63) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 72) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 112) = 100;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = vnegq_f64(v23);
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = 1;
  *(a3 + 184) = 0;
  result = 0.0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0;
  *(a3 + 296) = 0u;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a3 + 376) = 0;
  *(a3 + 384) = -1;
  *(a3 + 392) = -1;
  *(a3 + 400) = 0;
  *(a3 + 424) = 0;
  *(a3 + 408) = 0;
  *(a3 + 416) = 0;
  *(a3 + 432) = 0;
  *(a3 + 436) = 0;
  return result;
}

void sub_E66524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

double sub_E665CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 80) != 2)
  {
    goto LABEL_45;
  }

  if (*(a2 + 24))
  {
    v4 = *(a2 + 24);
  }

  else
  {
    v4 = &off_2776E58;
  }

  if ((v4[5] & 8) == 0)
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&v19);
      sub_4A5C(&v19, "Received a WaypointID without muid", 34);
      if ((v29 & 0x10) != 0)
      {
        v11 = v28;
        if (v28 < v25)
        {
          v28 = v25;
          v11 = v25;
        }

        v12 = v24;
        v5 = v11 - v24;
        if (v11 - v24 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if ((v29 & 8) == 0)
        {
          v5 = 0;
          v18 = 0;
LABEL_26:
          *(&__p + v5) = 0;
          sub_7E854(&__p, 1u);
LABEL_40:
          if (v18 < 0)
          {
            operator delete(__p);
          }

          if (v27 < 0)
          {
            operator delete(v26);
          }

          std::locale::~locale(&v21);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_45;
        }

        v12 = v22;
        v5 = v23 - v22;
        if (v23 - v22 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_28:
          sub_3244();
        }
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      v18 = v5;
      if (v5)
      {
        memmove(&__p, v12, v5);
      }

      goto LABEL_26;
    }

LABEL_45:
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    *a3 = -1;
    *(a3 + 8) = 0x7FFFFFFF;
    *(a3 + 16) = -1;
    *(a3 + 24) = -1;
    *(a3 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    *(a3 + 40) = 0;
    *(a3 + 48) = -1935635296;
    *(a3 + 56) = 0;
    *(a3 + 63) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 72) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(a3 + 112) = 100;
    *(a3 + 120) = 0;
    *(a3 + 128) = 0;
    *(a3 + 136) = vnegq_f64(v16);
    *(a3 + 152) = 0;
    *(a3 + 160) = 0;
    *(a3 + 168) = 0;
    *(a3 + 176) = 1;
    *(a3 + 184) = 0;
    result = 0.0;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 328) = 0u;
    *(a3 + 344) = 0u;
    *(a3 + 360) = 0u;
    *(a3 + 376) = 0;
    *(a3 + 384) = -1;
    *(a3 + 392) = -1;
    *(a3 + 400) = 0;
    *(a3 + 424) = 0;
    *(a3 + 408) = 0;
    *(a3 + 416) = 0;
    *(a3 + 432) = 0;
    *(a3 + 436) = 0;
    return result;
  }

  if ((sub_194F918((v4 + 2), dword_278D138) & 1) == 0)
  {
    *(a1 + 6) = 1;
    if (!sub_7E7E4(3u))
    {
      goto LABEL_45;
    }

    sub_19594F8(&v19);
    sub_4A5C(&v19, "Received a WaypointID: ", 23);
    v9 = std::ostream::operator<<();
    sub_4A5C(v9, " without a corresponding PlaceResponse extension. Falling back to location hint", 79);
    if ((v29 & 0x10) != 0)
    {
      v13 = v28;
      if (v28 < v25)
      {
        v28 = v25;
        v13 = v25;
      }

      v14 = &v24;
    }

    else
    {
      if ((v29 & 8) == 0)
      {
        v10 = 0;
        v18 = 0;
LABEL_39:
        *(&__p + v10) = 0;
        sub_7E854(&__p, 3u);
        goto LABEL_40;
      }

      v14 = &v22;
      v13 = v23;
    }

    v15 = *v14;
    v10 = v13 - *v14;
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v18 = v13 - *v14;
    if (v10)
    {
      memmove(&__p, v15, v10);
    }

    goto LABEL_39;
  }

  v7 = sub_1950CD0((v4 + 2), dword_278D138, qword_278D140);

  sub_E6D904(v7, a3);
  return result;
}

void sub_E66A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_E66AEC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 184);
  v6 = a1 + 2;
  if (v5 != 3)
  {
    v6 = a1;
  }

  if (v5 == 4)
  {
    v7 = a1 + 4;
  }

  else
  {
    v7 = v6;
  }

  if ((v7[1] & 1) == 0)
  {
    sub_E675FC((a3 + 312), 0, 0, 0);
  }

  if (*v7 == 1)
  {
    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = &off_2776E58;
    }

    v9 = &off_277E5E8;
    v10 = v8[10];
    if (v10)
    {
      v9 = v10;
    }

    if ((~*(v9 + 10) & 3) == 0)
    {
      v11 = *(v9 + 7);
      v12 = -1;
      if (v11 <= 180.0)
      {
        v13 = *(v9 + 6);
        if (fabs(v13) <= 85.0511288 && v11 >= -180.0)
        {
          v14 = sin(fmin(fmax(v13, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
          LODWORD(v15) = ((log((v14 + 1.0) / (1.0 - v14)) / -12.5663706 + 0.5) * 4294967300.0);
          if (v15 >= 0xFFFFFFFE)
          {
            v15 = 4294967294;
          }

          else
          {
            v15 = v15;
          }

          v12 = ((v11 + 180.0) / 360.0 * 4294967300.0) | (v15 << 32);
        }
      }

      *a3 = v12;
      *(a3 + 8) = 0x7FFFFFFF;
    }
  }
}

uint64_t sub_E66C88(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x94F2094F2094F2)
  {
    sub_1794();
  }

  if (0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6FB586FB586FB587 * ((a1[2] - *a1) >> 3)) >= 0x4A7904A7904A79)
  {
    v5 = 0x94F2094F2094F2;
  }

  else
  {
    v5 = v3;
  }

  v28 = a1;
  if (v5)
  {
    if (v5 <= 0x94F2094F2094F2)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 440 * v2;
  __p = 0;
  v25 = v6;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 63) = *(a2 + 63);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v6 + 112) = *(a2 + 112);
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 136) = *(a2 + 136);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 152) = *(a2 + 152);
  *(v6 + 160) = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(v6 + 176) = *(a2 + 176);
  *(v6 + 184) = *(a2 + 184);
  v9 = *(a2 + 192);
  *(v6 + 208) = *(a2 + 208);
  *(v6 + 192) = v9;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v10 = *(a2 + 216);
  *(v6 + 232) = *(a2 + 232);
  *(v6 + 216) = v10;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v11 = *(a2 + 240);
  *(v6 + 256) = *(a2 + 256);
  *(v6 + 240) = v11;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v12 = *(a2 + 264);
  *(v6 + 280) = *(a2 + 280);
  *(v6 + 264) = v12;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(v6 + 288) = *(a2 + 288);
  v13 = *(a2 + 312);
  *(v6 + 304) = *(a2 + 304);
  *(v6 + 312) = v13;
  v14 = *(a2 + 320);
  v15 = *(a2 + 336);
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(v6 + 320) = v14;
  *(v6 + 336) = v15;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  v16 = *(a2 + 352);
  v17 = *(a2 + 360);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(v6 + 352) = v16;
  *(v6 + 360) = v17;
  v18 = *(a2 + 368);
  v19 = *(a2 + 384);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 360) = 0;
  *(v6 + 368) = v18;
  *(v6 + 384) = v19;
  *(v6 + 400) = *(a2 + 400);
  *(v6 + 416) = *(a2 + 416);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(v6 + 424) = *(a2 + 424);
  *(v6 + 432) = *(a2 + 432);
  v26 = 440 * v2 + 440;
  v27 = 0;
  sub_E22348(a1, &__p);
  v20 = a1[1];
  v22 = v25;
  for (i = v26; v26 != v22; i = v26)
  {
    v26 = i - 440;
    sub_44FDEC(i - 440);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v20;
}

void sub_E66F00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4EA748(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_E66F14(uint64_t **result, uint64_t a2)
{
  v2 = *result;
  v3 = (*result)[1];
  if (v3 >= (*result)[2])
  {
    v15 = result;
    v16 = sub_E66C88(*result, a2);
    result = v15;
    v2[1] = v16;
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(v3 + 63) = *(a2 + 63);
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    *(v3 + 16) = v4;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 72) = 0;
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v7 = *(a2 + 96);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 96) = v7;
    v8 = *(a2 + 120);
    *(v3 + 136) = *(a2 + 136);
    *(v3 + 120) = v8;
    *(v3 + 152) = *(a2 + 152);
    *(v3 + 160) = *(a2 + 160);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    v9 = *(a2 + 176);
    *(v3 + 184) = *(a2 + 184);
    *(v3 + 176) = v9;
    v10 = *(a2 + 192);
    *(v3 + 208) = *(a2 + 208);
    *(v3 + 192) = v10;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 192) = 0;
    v11 = *(a2 + 216);
    *(v3 + 232) = *(a2 + 232);
    *(v3 + 216) = v11;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 216) = 0;
    v12 = *(a2 + 240);
    *(v3 + 256) = *(a2 + 256);
    *(v3 + 240) = v12;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    v13 = *(a2 + 264);
    *(v3 + 280) = *(a2 + 280);
    *(v3 + 264) = v13;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
    v14 = *(a2 + 304);
    *(v3 + 288) = *(a2 + 288);
    *(v3 + 304) = v14;
    *(v3 + 312) = 0;
    *(v3 + 320) = 0;
    *(v3 + 328) = 0;
    *(v3 + 312) = *(a2 + 312);
    *(v3 + 320) = *(a2 + 320);
    *(a2 + 312) = 0;
    *(a2 + 320) = 0;
    *(a2 + 328) = 0;
    *(v3 + 336) = 0;
    *(v3 + 344) = 0;
    *(v3 + 352) = 0;
    *(v3 + 336) = *(a2 + 336);
    *(v3 + 352) = *(a2 + 352);
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    *(a2 + 352) = 0;
    *(v3 + 360) = 0;
    *(v3 + 368) = 0;
    *(v3 + 376) = 0;
    *(v3 + 360) = *(a2 + 360);
    *(v3 + 368) = *(a2 + 368);
    *(a2 + 368) = 0;
    *(a2 + 376) = 0;
    *(a2 + 360) = 0;
    *(v3 + 384) = *(a2 + 384);
    *(v3 + 408) = 0;
    *(v3 + 416) = 0;
    *(v3 + 400) = 0;
    *(v3 + 400) = *(a2 + 400);
    *(v3 + 416) = *(a2 + 416);
    *(a2 + 400) = 0;
    *(a2 + 408) = 0;
    *(a2 + 416) = 0;
    *(v3 + 424) = *(a2 + 424);
    *(v3 + 432) = *(a2 + 432);
    v2[1] = v3 + 440;
  }

  return result;
}

uint64_t sub_E67100(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x94F2094F2094F2)
  {
    sub_1794();
  }

  if (0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6FB586FB586FB587 * ((a1[2] - *a1) >> 3)) >= 0x4A7904A7904A79)
  {
    v5 = 0x94F2094F2094F2;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x94F2094F2094F2)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 440 * v2;
  v13 = 0;
  sub_4E9DA4(440 * v2, a2);
  v12 = 440 * v2 + 440;
  sub_E22348(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 440;
    sub_44FDEC(i - 440);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_E67250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4EA748(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E67264(uint64_t *a1, uint64_t *a2)
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

  v20 = 16 * ((a1[1] - *a1) >> 4);
  sub_E6793C(v20, a2);
  v6 = 176 * v2 + 176;
  v7 = *a1;
  v8 = a1[1];
  v9 = v20 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v20 + *a1 - v8;
    do
    {
      *v11 = *v10;
      v12 = *(v10 + 1);
      v13 = *(v10 + 2);
      v14 = *(v10 + 3);
      *(v11 + 63) = *(v10 + 63);
      *(v11 + 32) = v13;
      *(v11 + 48) = v14;
      *(v11 + 16) = v12;
      *(v11 + 80) = 0;
      *(v11 + 88) = 0;
      *(v11 + 72) = 0;
      *(v11 + 72) = *(v10 + 9);
      *(v11 + 88) = v10[11];
      v10[9] = 0;
      v10[10] = 0;
      v10[11] = 0;
      v15 = *(v10 + 6);
      *(v11 + 112) = *(v10 + 112);
      *(v11 + 96) = v15;
      v16 = *(v10 + 15);
      *(v11 + 136) = *(v10 + 17);
      *(v11 + 120) = v16;
      *(v11 + 152) = v10[19];
      *(v11 + 160) = *(v10 + 10);
      v10[19] = 0;
      v10[20] = 0;
      v10[21] = 0;
      v10 += 22;
      v11 += 176;
    }

    while (v10 != v8);
    do
    {
      v17 = v7[19];
      if (v17)
      {
        operator delete(v17);
      }

      v18 = v7[9];
      if (v18)
      {
        v7[10] = v18;
        operator delete(v18);
      }

      v7 += 22;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_E67468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_789B8C(va);
  _Unwind_Resume(a1);
}

void *sub_E6747C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v15 = result[1];
  if (a2 == a3)
  {
    v6 = result[1];
  }

  else
  {
    v5 = a2 + 152;
    v6 = result[1];
    do
    {
      *v6 = *(v5 - 152);
      v7 = *(v5 - 136);
      v8 = *(v5 - 120);
      v9 = *(v5 - 104);
      *(v6 + 63) = *(v5 - 89);
      *(v6 + 32) = v8;
      *(v6 + 48) = v9;
      *(v6 + 72) = 0;
      *(v6 + 16) = v7;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v11 = *(v5 - 80);
      v10 = *(v5 - 72);
      if (v10 != v11)
      {
        if (((v10 - v11) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v12 = v5 - 152;
      v13 = *(v5 - 56);
      *(v6 + 112) = *(v5 - 40);
      *(v6 + 96) = v13;
      v14 = *(v5 - 32);
      *(v6 + 136) = *(v5 - 16);
      *(v6 + 120) = v14;
      result = sub_81988((v6 + 152), v5);
      v6 = v15 + 176;
      v15 += 176;
      v5 += 176;
    }

    while (v12 + 176 != a3);
  }

  v3[1] = v6;
  return result;
}

void sub_E675CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 80) = v14;
    operator delete(v14);
  }

  sub_4A0D48(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_E675FC(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 3);
          if (v11)
          {
            operator delete(v11);
          }

          v12 = *(v9 - 13);
          if (v12)
          {
            *(v9 - 12) = v12;
            operator delete(v12);
          }

          v9 -= 176;
        }

        while (v9 != v8);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1745D1745D1745DLL)
    {
      v30 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 4);
      v31 = 2 * v30;
      if (2 * v30 <= a4)
      {
        v31 = a4;
      }

      if (v30 >= 0xBA2E8BA2E8BA2ELL)
      {
        v32 = 0x1745D1745D1745DLL;
      }

      else
      {
        v32 = v31;
      }

      if (v32 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  if (0x2E8BA2E8BA2E8BA3 * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v23 = a2 + 80;
      do
      {
        v26 = v23 - 80;
        *v8 = *(v23 - 80);
        v27 = *(v23 - 64);
        v28 = *(v23 - 48);
        v29 = *(v23 - 32);
        *(v8 + 63) = *(v23 - 17);
        *(v8 + 2) = v28;
        *(v8 + 3) = v29;
        *(v8 + 1) = v27;
        if (v8 != (v23 - 80))
        {
          sub_146EC(v8 + 9, *(v23 - 8), *v23, (*v23 - *(v23 - 8)) >> 2);
        }

        v24 = *(v23 + 16);
        v8[112] = *(v23 + 32);
        *(v8 + 6) = v24;
        v25 = *(v23 + 40);
        *(v8 + 136) = *(v23 + 56);
        *(v8 + 120) = v25;
        sub_3E428(v8 + 19, v23 + 72);
        v8 += 176;
        v23 += 176;
      }

      while (v26 + 176 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v33 = *(v13 - 3);
      if (v33)
      {
        operator delete(v33);
      }

      v34 = *(v13 - 13);
      if (v34)
      {
        *(v13 - 12) = v34;
        operator delete(v34);
      }

      v13 -= 176;
    }

    a1[1] = v8;
  }

  else
  {
    v14 = a2 + v13 - v8;
    if (v13 != v8)
    {
      v15 = v8 + 72;
      v16 = a2 + 80;
      do
      {
        v19 = v16 - 80;
        *(v15 - 72) = *(v16 - 80);
        v20 = *(v16 - 64);
        v21 = *(v16 - 48);
        v22 = *(v16 - 32);
        *(v15 - 9) = *(v16 - 17);
        *(v15 - 24) = v22;
        *(v15 - 40) = v21;
        *(v15 - 56) = v20;
        if (v15 - 72 != (v16 - 80))
        {
          sub_146EC(v15, *(v16 - 8), *v16, (*v16 - *(v16 - 8)) >> 2);
        }

        v17 = *(v16 + 16);
        v15[40] = *(v16 + 32);
        *(v15 + 24) = v17;
        v18 = *(v16 + 40);
        *(v15 + 4) = *(v16 + 56);
        *(v15 + 3) = v18;
        sub_3E428(v15 + 10, v16 + 72);
        v15 += 176;
        v16 += 176;
      }

      while (v19 + 176 != v14);
    }

    sub_E6747C(a1, v14, a3);
  }
}

float64x2_t sub_E6793C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v2;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1935635296;
  *(a1 + 56) = 0;
  *(a1 + 63) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 112) = 100;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  result = vnegq_f64(v3);
  *(a1 + 136) = result;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_E679A4(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1935635296;
  *(a1 + 72) = 0;
  v5 = a1 + 72;
  *(a1 + 56) = 0;
  *(a1 + 63) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 112) = 100;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  *(a1 + 152) = 0;
  *(a1 + 136) = vnegq_f64(v6);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v10 = 0uLL;
  v11 = 0;
  v7 = a3[1];
  if (v7 != *a3)
  {
    if (!((v7 - *a3) >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v12 = &v10;
  v8 = *v5;
  if (*v5)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  *(a1 + 72) = v10;
  *(a1 + 88) = v11;
  return a1;
}

void sub_E67B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (*v12)
  {
    operator delete(*v12);
    v14 = *v11;
    if (!*v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v10 + 80) = v14;
  operator delete(v14);
  _Unwind_Resume(exception_object);
}

float64x2_t sub_E67B78(uint64_t a1, uint64_t a2)
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *a1 = -1;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1935635296;
  *(a1 + 56) = 0;
  *(a1 + 63) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 112) = 100;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  result = vnegq_f64(v2);
  *(a1 + 136) = result;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return result;
}

BOOL sub_E67BDC(uint64_t a1)
{
  if (*a1 != -1)
  {
    return 1;
  }

  if (*(a1 + 4) != -1)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  return v2 != 0x7FFFFFFFFFFFFFFFLL && v2 != 0;
}

uint64_t sub_E67C1C(uint64_t result)
{
  *result = -1;
  *(result + 8) = 0x7FFFFFFF;
  *(result + 32) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t sub_E67C38(uint64_t a1)
{
  v1 = 24;
  if (*(a1 + 24) == -1)
  {
    v1 = 16;
  }

  return *(a1 + v1);
}

BOOL sub_E67C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *(a2 + 56);
  v7 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = 0;
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 40) == *(a2 + 40) && *(a1 + 50) == *(a2 + 50))
  {
    if (v2 == v5)
    {
      return *(a1 + 112) == *(a2 + 112) && *(a1 + 104) == *(a2 + 104) && *(a1 + 64) == *(a2 + 64);
    }

    v9 = v2 - v5;
    if (v2 - v5 <= 0.0)
    {
      v9 = -(v2 - v5);
    }

    return v9 < 2.22044605e-16 && *(a1 + 112) == *(a2 + 112) && *(a1 + 104) == *(a2 + 104) && *(a1 + 64) == *(a2 + 64);
  }

  return v8;
}

void sub_E67EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E67EF8(void *a1, uint64_t a2)
{
  v4 = sub_4A5C(a1, "(coordinate: ", 13);
  sub_35820(v4, a2, v5);
  sub_4A5C(a1, ", place_muid: ", 14);
  if (*(a2 + 16) == -1)
  {
    sub_4A5C(a1, "n/a", 3);
  }

  else
  {
    std::ostream::operator<<();
  }

  sub_4A5C(a1, ", alewife_muid: ", 16);
  if (*(a2 + 24) == -1)
  {
    sub_4A5C(a1, "n/a", 3);
    if (*(a2 + 72) == *(a2 + 80))
    {
      goto LABEL_15;
    }
  }

  else
  {
    std::ostream::operator<<();
    if (*(a2 + 72) == *(a2 + 80))
    {
      goto LABEL_15;
    }
  }

  v6 = sub_4A5C(a1, ", access_types_and_directions: [", 32);
  sub_E681E0(*(a2 + 72), *(a2 + 80), ",", __p);
  if ((v13 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = sub_4A5C(v6, v7, v8);
  sub_4A5C(v9, "]", 1);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (*(a2 + 104) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (*(a2 + 104) != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_16:
    v10 = sub_4A5C(a1, ", access_point_distance: ", 25);
    sub_70FBC(v10, *(a2 + 104));
  }

LABEL_17:
  sub_4A5C(a1, ")", 1);
  return a1;
}

void sub_E680A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E680C0(void *result, int a2)
{
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = "WALKING_EXIT";
        v3 = 12;
      }

      else if (a2 == 3)
      {
        v2 = "DRIVING_DESTINATION";
        v3 = 19;
      }

      else
      {
        v2 = "DRIVING_ENTRY";
        v3 = 13;
      }

      return sub_4A5C(result, v2, v3);
    }

    if (!a2)
    {
      v2 = "WALKING_DESTINATION";
      v3 = 19;
      return sub_4A5C(result, v2, v3);
    }

    if (a2 == 1)
    {
      v2 = "WALKING_ENTRY";
      v3 = 13;
      return sub_4A5C(result, v2, v3);
    }
  }

  else
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        v2 = "DRIVING_EXIT";
        v3 = 12;
      }

      else if (a2 == 6)
      {
        v2 = "CYCLING_DESTINATION";
        v3 = 19;
      }

      else
      {
        v2 = "CYCLING_ENTRY";
        v3 = 13;
      }

      return sub_4A5C(result, v2, v3);
    }

    switch(a2)
    {
      case 8:
        v2 = "CYCLING_EXIT";
        v3 = 12;
        return sub_4A5C(result, v2, v3);
      case 9:
        v2 = "PARKING_ENTRY";
        v3 = 13;
        return sub_4A5C(result, v2, v3);
      case 10:
        v2 = "PARKING_EXIT";
        v3 = 12;
        return sub_4A5C(result, v2, v3);
    }
  }

  return result;
}

uint64_t sub_E681E0@<X0>(int *a1@<X0>, int *a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v13);
  if (a1 != a2)
  {
    sub_E680C0(&v13, *a1);
    while (++a1 != a2)
    {
      v9 = strlen(a3);
      sub_4A5C(&v13, a3, v9);
      sub_E680C0(&v13, *a1);
    }
  }

  if ((v23 & 0x10) != 0)
  {
    v10 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v10 = v19;
    }

    v11 = v18;
    v8 = v10 - v18;
    if (v10 - v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v8 = 0;
      a4[23] = 0;
      goto LABEL_16;
    }

    v11 = v16;
    v8 = v17 - v16;
    if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_20:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    memmove(a4, v11, v8);
  }

LABEL_16:
  a4[v8] = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_E6843C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

_BYTE *sub_E6846C(_BYTE *a1, void *a2)
{
  v12 = 11;
  strcpy(__p, "consistency");
  v4 = sub_5F8FC(a2, __p);
  v5 = sub_E9A5F0(v4);
  if (v12 < 0)
  {
    v6 = v5;
    operator delete(__p[0]);
    v5 = v6;
  }

  *a1 = v5;
  v12 = 6;
  strcpy(__p, "limits");
  v7 = sub_5F8FC(a2, __p);
  v8 = sub_E9A5F0(v7);
  if (v12 < 0)
  {
    v9 = v8;
    operator delete(__p[0]);
    v8 = v9;
  }

  a1[1] = v8;
  return a1;
}

void sub_E6854C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E6856C(_DWORD *a1, void *a2)
{
  strcpy(__p, "max_num_user_waypoints");
  v6 = 22;
  v3 = sub_353010(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_E6866C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E686C4(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v26[0] = 0;
  v26[1] = &off_2669FE0;
  sub_434934(a3, v26);
  sub_E9B4D4(v32, a1, *a2, a3);
  sub_E9B4D4(v29, a1, a2[1], a3);
  v6 = sub_E7A5E0(a1);
  v7 = *(a1 + 40);
  v8 = sub_585D8(v32);
  if ((v7 & 0x10000) != 0 && ((v8 ^ 1) & 1) == 0 && v6 != 11 && *(a1 + 112))
  {
    v9 = *(a1 + 424);
    if (!v9)
    {
      v9 = &off_27721B8;
    }

    sub_E68B2C(v26, *(v9 + 8), v9[5]);
    sub_E9BBFC(v32, v26);
    v10 = __p_8;
    if (__p_8)
    {
      v11 = v28;
      v12 = __p_8;
      if (v28 != __p_8)
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
        v12 = __p_8;
      }

      v28 = v10;
      operator delete(v12);
    }

    v13 = *(a1 + 424);
    if (!v13)
    {
      v13 = &off_27721B8;
    }

    sub_E68DFC(v26, *(a1 + 112), *(v13 + 8), v13[5], 1, v6);
    sub_E9BBFC(v32, v26);
    v14 = __p_8;
    if (__p_8)
    {
      v15 = v28;
      v16 = __p_8;
      if (v28 != __p_8)
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
        v16 = __p_8;
      }

      v28 = v14;
      operator delete(v16);
    }
  }

  if (sub_E7A428(a1))
  {
    if (sub_585D8(v29))
    {
      sub_E68FFC(v26, 0, a1 + 104, 0, *(a2 + 2), *(a2 + 2));
      sub_E9BBFC(v29, v26);
      v17 = __p_8;
      if (__p_8)
      {
        v18 = v28;
        v19 = __p_8;
        if (v28 != __p_8)
        {
          do
          {
            if (*(v18 - 1) < 0)
            {
              operator delete(*(v18 - 3));
            }

            v18 -= 4;
          }

          while (v18 != v17);
          v19 = __p_8;
        }

        v28 = v17;
        operator delete(v19);
      }
    }

    if (sub_585D8(v32))
    {
      v22 = *(a1 + 424);
      if (!v22)
      {
        v22 = &off_27721B8;
      }

      sub_E690F4(v26, *(v22 + 8), v22[5]);
      sub_E9BBFC(v32, v26);
      v23 = __p_8;
      if (__p_8)
      {
        v24 = v28;
        v25 = __p_8;
        if (v28 != __p_8)
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
          v25 = __p_8;
        }

        v28 = v23;
        operator delete(v25);
      }
    }
  }

  else
  {
    v20 = sub_585D8(v32);
    if (v6 == 7)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 == 1 && *(a1 + 112) <= 1)
    {
      operator new();
    }
  }

  if ((v31 & 0x80000000) == 0)
  {
    if ((v34 & 0x80000000) == 0)
    {
      return;
    }

LABEL_56:
    operator delete(v33);
    return;
  }

  operator delete(v30);
  if (v34 < 0)
  {
    goto LABEL_56;
  }
}

void sub_E68A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_CF3C94(&a9);
  if (a24 < 0)
  {
    operator delete(__p);
    if (a32 < 0)
    {
LABEL_6:
      operator delete(a27);
      sub_CF3C94(v32);
      _Unwind_Resume(a1);
    }
  }

  else if (a32 < 0)
  {
    goto LABEL_6;
  }

  sub_CF3C94(v32);
  _Unwind_Resume(a1);
}

double sub_E68B2C(__n128 *a1, unsigned int a2, uint64_t a3)
{
  v3 = a3 + 8;
  if (!a3)
  {
    v3 = 0;
  }

  if (a2 >= 2)
  {
    v5 = a1;
    v6 = (v3 + 8);
    v7 = 8 * a2 - 8;
    v8 = 1;
    v9 = 1;
    v10 = 1;
    do
    {
      v11 = *v6;
      if (*(*(v6 - 1) + 80))
      {
        v12 = *(*(v6 - 1) + 80);
      }

      else
      {
        v12 = &off_2772310;
      }

      v13 = *(v11 + 72);
      if (!v13)
      {
        v13 = &off_2772310;
      }

      v8 &= *(v12 + 26) == *(v13 + 26);
      v9 &= v12[12] == v13[12];
      sub_E82D18(v12, &__p);
      if (*(v11 + 72))
      {
        v14 = *(v11 + 72);
      }

      else
      {
        v14 = &off_2772310;
      }

      sub_E82D18(v14, v15);
      v10 &= !sub_58918(&__p, v15);
      ++v6;
      v7 -= 8;
    }

    while (v7);
    if ((v8 & 1) == 0)
    {
      operator new();
    }

    if ((v9 & 1) == 0)
    {
      operator new();
    }

    a1 = v5;
    if ((v10 & 1) == 0)
    {
      operator new();
    }
  }

  __p.n128_u64[0] = 0;
  __p.n128_u64[1] = &off_2669FE0;
  *&result = sub_434934(a1, &__p).n128_u64[0];
  return result;
}

void sub_E68DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_E68DFC(__n128 *a1, int a2, int a3, uint64_t a4, int a5, int a6)
{
  if (a5 == 3 && !a2)
  {
    goto LABEL_3;
  }

  v7 = a6 - 7;
  if (a4)
  {
    v8 = (a4 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = 0;
    v10 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 1;
      v13 = (v10 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v14 = &v8[v13];
      v15 = v8 + 1;
      v16 = v13;
      do
      {
        v17 = *(*(v15 - 1) + 80);
        v18 = *(*v15 + 80);
        if (!v17)
        {
          v17 = &off_2772310;
        }

        if (!v18)
        {
          v18 = &off_2772310;
        }

        v19 = *(v18 + 26);
        if (*(v17 + 26) != 2)
        {
          ++v9;
        }

        if (v19 != 2)
        {
          ++v11;
        }

        v15 += 2;
        v16 -= 2;
      }

      while (v16);
      v9 += v11;
      if (v12 == v13)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = v8;
    }

    v21 = &v8[a3];
    do
    {
      v22 = *v14++;
      v23 = *(v22 + 80);
      if (!v23)
      {
        v23 = &off_2772310;
      }

      if (*(v23 + 26) != 2)
      {
        ++v9;
      }
    }

    while (v14 != v21);
LABEL_29:
    v20 = v9 + 1;
    goto LABEL_30;
  }

  v20 = 1;
LABEL_30:
  v24 = a2 + 2;
  if (a5 == 2)
  {
    v24 = a2 + 1;
  }

  if (a5 == 1)
  {
    v24 = a2;
  }

  if (v7 >= 2 && v20 != v24)
  {
    operator new();
  }

LABEL_3:
  __p.n128_u64[0] = 0;
  __p.n128_u64[1] = &off_2669FE0;
  *&result = sub_434934(a1, &__p).n128_u64[0];
  return result;
}

void sub_E68FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E68FFC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = a5;
  v7 = *(a3 + 8);
  v8 = a2 != 0;
  if (a4)
  {
    ++v8;
  }

  v11 = v8 + v7;
  if (v8 + v7 <= a5)
  {

    sub_E97074(a2, a3, a4, a6, a1);
  }

  else
  {
    sub_E6A060("Total number of user-selected waypoints in the request (", ") exceeds the maximum that is allowed (", ").", __p);
    sub_434A40(14, __p, a1);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_E690D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_E690F4(__n128 *a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3 + 8;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = 8 * a2;
    do
    {
      v6 = *(*v4 + 80);
      if (!v6)
      {
        v6 = &off_2772310;
      }

      if (!*(v6 + 26))
      {
        operator new();
      }

      v4 += 8;
      v5 -= 8;
    }

    while (v5);
    if (a2 >= 1)
    {
      if (*(*(a3 + 8 + 8 * (a2 - 1)) + 80))
      {
        v7 = *(*(a3 + 8 + 8 * (a2 - 1)) + 80);
      }

      else
      {
        v7 = &off_2772310;
      }

      sub_14741E8(__p, v7);
      if (v10 != 1)
      {
        operator new();
      }

      sub_147A260(__p);
    }
  }

  __p[0].n128_u64[0] = 0;
  __p[0].n128_u64[1] = &off_2669FE0;
  *&result = sub_434934(a1, __p).n128_u64[0];
  return result;
}

void sub_E692E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_147A260(&a16);
  _Unwind_Resume(a1);
}

void sub_E69310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E6932C(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v67 = 0;
  v68[0] = &off_2669FE0;
  sub_434934(a3, &v67);
  sub_E9BBEC(v63, a1, *a2, a3);
  if ((sub_585D8(v63) & 1) == 0)
  {
    goto LABEL_104;
  }

  v6 = sub_394BD0();
  v7 = v6;
  if (*(a1 + 360))
  {
    v8 = *(a1 + 360);
  }

  else
  {
    v8 = &off_2773F38;
  }

  v9 = *(v8 + 8);
  v10 = v8[5];
  if (v10)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v9 >= 2)
  {
    v59 = v6;
    v12 = (v11 + 1);
    v13 = 8 * v9 - 8;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    do
    {
      v17 = *v12;
      if (*(*(v12 - 1) + 488))
      {
        v18 = *(*(v12 - 1) + 488);
      }

      else
      {
        v18 = &off_2772310;
      }

      v19 = *(v17 + 480);
      if (!v19)
      {
        v19 = &off_2772310;
      }

      v20 = *(v18 + 26) == *(v19 + 26);
      v21 = v18[12] == v19[12];
      sub_E82D18(v18, &__p);
      if (*(v17 + 480))
      {
        v22 = *(v17 + 480);
      }

      else
      {
        v22 = &off_2772310;
      }

      sub_E82D18(v22, &v66);
      v14 &= v20;
      v15 &= v21;
      v16 &= !sub_58918(&__p, &v66);
      ++v12;
      v13 -= 8;
    }

    while (v13);
    if ((v14 & 1) == 0)
    {
      operator new();
    }

    v7 = v59;
    if ((v15 & 1) == 0)
    {
      operator new();
    }

    if ((v16 & 1) == 0)
    {
      operator new();
    }
  }

  __p = 0;
  v61[0] = &off_2669FE0;
  sub_434934(&v67, &__p);
  sub_E9BBFC(v63, &v67);
  v23 = v68[1];
  if (v68[1])
  {
    v24 = v69;
    v25 = v68[1];
    if (v69 != v68[1])
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
      v25 = v68[1];
    }

    v69 = v23;
    operator delete(v25);
  }

  v26 = *(a1 + 360);
  if (!v26)
  {
    v26 = &off_2773F38;
  }

  v27 = *(v26 + 8);
  v28 = v26[5];
  v29 = (v28 + 1);
  if (!v28)
  {
    v29 = 0;
  }

  if (!v27)
  {
    v41 = 1;
    if ((v7 - 7) >= 2u)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v30 = 0;
  v31 = (v27 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v31)
  {
    v35 = v29;
LABEL_55:
    v42 = &v29[v27];
    do
    {
      v43 = *v35++;
      v44 = *(v43 + 488);
      if (!v44)
      {
        v44 = &off_2772310;
      }

      if (*(v44 + 26) != 2)
      {
        ++v30;
      }
    }

    while (v35 != v42);
    goto LABEL_61;
  }

  v32 = 0;
  v33 = v31 + 1;
  v34 = (v31 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v35 = &v29[v34];
  v36 = v29 + 1;
  v37 = v34;
  do
  {
    v38 = *(*(v36 - 1) + 488);
    v39 = *(*v36 + 488);
    if (!v38)
    {
      v38 = &off_2772310;
    }

    if (!v39)
    {
      v39 = &off_2772310;
    }

    v40 = *(v39 + 26);
    if (*(v38 + 26) != 2)
    {
      ++v30;
    }

    if (v40 != 2)
    {
      ++v32;
    }

    v36 += 2;
    v37 -= 2;
  }

  while (v37);
  v30 += v32;
  if (v33 != v34)
  {
    goto LABEL_55;
  }

LABEL_61:
  v41 = v30 + 1;
  if ((v7 - 7) >= 2u)
  {
LABEL_62:
    if (v41 != *(a1 + 152) + 1)
    {
      operator new();
    }
  }

LABEL_63:
  __p = 0;
  v61[0] = &off_2669FE0;
  sub_434934(&v67, &__p);
  sub_E9BBFC(v63, &v67);
  v45 = v68[1];
  if (v68[1])
  {
    v46 = v69;
    v47 = v68[1];
    if (v69 != v68[1])
    {
      do
      {
        if (*(v46 - 1) < 0)
        {
          operator delete(*(v46 - 3));
        }

        v46 -= 4;
      }

      while (v46 != v45);
      v47 = v68[1];
    }

    v69 = v45;
    operator delete(v47);
  }

  if (!*(a1 + 152))
  {
    operator new();
  }

  if (sub_E7C46C(a1))
  {
    if (*(a1 + 360))
    {
      v48 = *(a1 + 360);
    }

    else
    {
      v48 = &off_2773F38;
    }

    v49 = *(v48 + 8);
    v50 = v48[5];
    if (v50)
    {
      v51 = v50 + 1;
    }

    else
    {
      v51 = 0;
    }

    if (v49)
    {
      v52 = 8 * v49;
      do
      {
        v53 = *(*v51 + 61);
        if (!v53)
        {
          v53 = &off_2772310;
        }

        if (!*(v53 + 26))
        {
          operator new();
        }

        ++v51;
        v52 -= 8;
      }

      while (v52);
      if (v49 >= 1)
      {
        v54 = *(v50[(v49 - 1) + 1] + 61);
        if (v54)
        {
          v55 = v54;
        }

        else
        {
          v55 = &off_2772310;
        }

        sub_14741E8(&v67, v55);
        if (v70 != 1)
        {
          operator new();
        }

        sub_147A260(&v67);
      }
    }

    v67 = 0;
    v68[0] = &off_2669FE0;
    sub_434934(&__p, &v67);
    sub_E9BBFC(v63, &__p);
    v56 = v61[1];
    if (v61[1])
    {
      v57 = v62;
      v58 = v61[1];
      if (v62 != v61[1])
      {
        do
        {
          if (*(v57 - 1) < 0)
          {
            operator delete(*(v57 - 3));
          }

          v57 -= 4;
        }

        while (v57 != v56);
        v58 = v61[1];
      }

      v62 = v56;
      operator delete(v58);
    }
  }

LABEL_104:
  if (v65 < 0)
  {
    operator delete(v64);
  }
}

void sub_E69BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_147A260(&a35);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_CF3C94(v40);
  _Unwind_Resume(a1);
}

void sub_E69CD8(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v23.n128_u64[0] = 0;
  v23.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v23);
  sub_E9B860(v29, a1, *a2, a3);
  sub_E9B860(v26, a1, a2[1], a3);
  if (sub_585D8(v29) && (*(a1 + 42) & 2) != 0)
  {
    v6 = sub_394BD0();
    v7 = *(a1 + 384);
    if (!v7)
    {
      v7 = &off_27721B8;
    }

    sub_E68B2C(&v23, *(v7 + 8), v7[5]);
    sub_E9BBFC(v29, &v23);
    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
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
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
    }

    v11 = *(a1 + 384);
    if (!v11)
    {
      v11 = &off_27721B8;
    }

    sub_E68DFC(&v23, *(a1 + 160), *(v11 + 8), v11[5], 3, v6);
    sub_E9BBFC(v29, &v23);
    v12 = __p;
    if (__p)
    {
      v13 = v25;
      v14 = __p;
      if (v25 != __p)
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
        v14 = __p;
      }

      v25 = v12;
      operator delete(v14);
    }
  }

  if (sub_E84290(a1))
  {
    if (sub_585D8(v26))
    {
      v15 = *(a1 + 312) ? *(a1 + 312) : &off_2776FB8;
      sub_E68FFC(&v23, v15, a1 + 152, *(*(a1 + 96) + 8), *(a2 + 2), *(a2 + 2));
      sub_E9BBFC(v26, &v23);
      v16 = __p;
      if (__p)
      {
        v17 = v25;
        v18 = __p;
        if (v25 != __p)
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
          v18 = __p;
        }

        v25 = v16;
        operator delete(v18);
      }
    }

    if (sub_585D8(v29))
    {
      v19 = *(a1 + 384);
      if (!v19)
      {
        v19 = &off_27721B8;
      }

      sub_E690F4(&v23, *(v19 + 8), v19[5]);
      sub_E9BBFC(v29, &v23);
      v20 = __p;
      if (__p)
      {
        v21 = v25;
        v22 = __p;
        if (v25 != __p)
        {
          do
          {
            if (*(v21 - 1) < 0)
            {
              operator delete(*(v21 - 3));
            }

            v21 -= 4;
          }

          while (v21 != v20);
          v22 = __p;
        }

        v25 = v20;
        operator delete(v22);
      }
    }
  }

  if ((v28 & 0x80000000) == 0)
  {
    if ((v31 & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(v30);
    return;
  }

  operator delete(v27);
  if (v31 < 0)
  {
    goto LABEL_51;
  }
}

void sub_E69FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_CF3C94(&a9);
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(v29);
      _Unwind_Resume(a1);
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  sub_CF3C94(v29);
  _Unwind_Resume(a1);
}

uint64_t sub_E6A060@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E6A324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_E6A348(uint64_t a1)
{
  v1 = *(a1 + 212);
  if (v1 <= 36)
  {
    switch(v1)
    {
      case 5:
        if ((*(a1 + 40) & 8) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
          if ((v126 & 0x10) != 0)
          {
            v40 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v40 = v122;
            }

            v41 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v41 = v119;
            v40 = v120;
          }

          v54 = *v41;
          v3 = v40 - *v41;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v40 - *v41;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        if ((*(*(a1 + 192) + 40) & 0x10) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request parameters do not contain place lookup parameters", 63);
          if ((v126 & 0x10) != 0)
          {
            v58 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v58 = v122;
            }

            v59 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v59 = v119;
            v58 = v120;
          }

          v54 = *v59;
          v3 = v58 - *v59;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v58 - *v59;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        break;
      case 21:
        if ((*(a1 + 40) & 8) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
          if ((v126 & 0x10) != 0)
          {
            v52 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v52 = v122;
            }

            v53 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v53 = v119;
            v52 = v120;
          }

          v54 = *v53;
          v3 = v52 - *v53;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v52 - *v53;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        v14 = *(a1 + 192);
        if ((*(v14 + 42) & 0x10) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request parameters do not contain external transit lookup parameters", 74);
          if ((v126 & 0x10) != 0)
          {
            v70 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v70 = v122;
            }

            v71 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v71 = v119;
            v70 = v120;
          }

          v54 = *v71;
          v3 = v70 - *v71;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v70 - *v71;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        v32 = *(v14 + 216);
        if ((*(v32 + 16) & 1) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "External transit lookup parameters do not contain a source id", 61);
          if ((v126 & 0x10) != 0)
          {
            v74 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v74 = v122;
            }

            v75 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v75 = v119;
            v74 = v120;
          }

          v54 = *v75;
          v3 = v74 - *v75;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v74 - *v75;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        v35 = *(v32 + 40);
        if (v35)
        {
          v36 = v35 + 8;
        }

        else
        {
          v36 = 0;
        }

        v37 = *(v32 + 32);
        if (v37)
        {
          v38 = 8 * v37;
          while (1)
          {
            v39 = *(*v36 + 23);
            if (v39 < 0)
            {
              v39 = *(*v36 + 8);
            }

            if (!v39)
            {
              break;
            }

            v36 += 8;
            v38 -= 8;
            if (!v38)
            {
              goto LABEL_143;
            }
          }

          result = sub_7E7E4(1u);
          if (result)
          {
            sub_19594F8(&v116);
            sub_4A5C(&v116, "External transit lookup parameters contain an empty external station code", 73);
            if ((v126 & 0x10) != 0)
            {
              v86 = v125;
              if (v125 < v122)
              {
                v125 = v122;
                v86 = v122;
              }

              v87 = &v121;
            }

            else
            {
              if ((v126 & 8) == 0)
              {
                v3 = 0;
                v115 = 0;
                goto LABEL_440;
              }

              v87 = v119;
              v86 = v120;
            }

            v54 = *v87;
            v3 = v86 - *v87;
            if (v3 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v3 >= 0x17)
            {
              operator new();
            }

            v115 = v86 - *v87;
            if (!v3)
            {
              goto LABEL_440;
            }

            goto LABEL_439;
          }

          return result;
        }

        break;
      case 23:
        if ((*(a1 + 40) & 8) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
          if ((v126 & 0x10) != 0)
          {
            v50 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v50 = v122;
            }

            v51 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v51 = v119;
            v50 = v120;
          }

          v54 = *v51;
          v3 = v50 - *v51;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v50 - *v51;
          if (!v3)
          {
            goto LABEL_440;
          }

LABEL_439:
          memmove(&__dst, v54, v3);
          goto LABEL_440;
        }

        v13 = *(a1 + 192);
        if ((*(v13 + 42) & 0x40) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request parameters do not contain maps identifier place lookup parameters", 79);
          if ((v126 & 0x10) != 0)
          {
            v68 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v68 = v122;
            }

            v69 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v69 = v119;
            v68 = v120;
          }

          v54 = *v69;
          v3 = v68 - *v69;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v68 - *v69;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        v27 = *(v13 + 232);
        v28 = *(v27 + 64);
        if (v28)
        {
          v29 = v28 + 8;
        }

        else
        {
          v29 = 0;
        }

        v30 = *(v27 + 56);
        if (v30)
        {
          v31 = 8 * v30;
          while (1)
          {
            if ((*(*v29 + 40) & 1) == 0)
            {
              result = sub_7E7E4(1u);
              if (!result)
              {
                return result;
              }

              sub_19594F8(&v116);
              sub_4A5C(&v116, "Maps identifier does not contain a sharded id", 45);
              if ((v126 & 0x10) != 0)
              {
                v82 = v125;
                if (v125 < v122)
                {
                  v125 = v122;
                  v82 = v122;
                }

                v83 = &v121;
              }

              else
              {
                if ((v126 & 8) == 0)
                {
                  v3 = 0;
                  v115 = 0;
                  goto LABEL_440;
                }

                v83 = v119;
                v82 = v120;
              }

              v54 = *v83;
              v3 = v82 - *v83;
              if (v3 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v3 >= 0x17)
              {
                operator new();
              }

              v115 = v82 - *v83;
              if (v3)
              {
                goto LABEL_439;
              }

              goto LABEL_440;
            }

            if ((*(*(*v29 + 48) + 16) & 2) == 0)
            {
              break;
            }

            v29 += 8;
            v31 -= 8;
            if (!v31)
            {
              goto LABEL_143;
            }
          }

          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Maps identifier contains a sharded id without a muid", 52);
          if ((v126 & 0x10) != 0)
          {
            v84 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v84 = v122;
            }

            v85 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v85 = v119;
            v84 = v120;
          }

          v54 = *v85;
          v3 = v84 - *v85;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v84 - *v85;
          if (v3)
          {
            goto LABEL_439;
          }

          goto LABEL_440;
        }

        break;
      default:
        goto LABEL_30;
    }

LABEL_143:
    v20 = 0;
    goto LABEL_144;
  }

  if (v1 > 49)
  {
    if (v1 != 50)
    {
      if (v1 != 57)
      {
        goto LABEL_30;
      }

      if ((*(a1 + 40) & 8) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
        if ((v126 & 0x10) != 0)
        {
          v48 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v48 = v122;
          }

          v49 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v49 = v119;
          v48 = v120;
        }

        v54 = *v49;
        v3 = v48 - *v49;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v48 - *v49;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      v12 = *(a1 + 192);
      if ((*(v12 + 46) & 0x80) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Place request parameters do not contain transit nearby payment method lookup parameters", 87);
        if ((v126 & 0x10) != 0)
        {
          v66 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v66 = v122;
          }

          v67 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v67 = v119;
          v66 = v120;
        }

        v54 = *v67;
        v3 = v66 - *v67;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v66 - *v67;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      v22 = *(v12 + 496);
      v23 = *(v22 + 32);
      if (v23)
      {
        v24 = v23 + 8;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(v22 + 24);
      if (!v25)
      {
        return 1;
      }

      v26 = 8 * v25;
      result = 1;
      while ((*(*v24 + 16) & 1) != 0)
      {
        v24 += 8;
        v26 -= 8;
        if (!v26)
        {
          return result;
        }
      }

      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit nearby payment method lookup origin does not contain a waypoint typed", 77);
        if ((v126 & 0x10) != 0)
        {
          v78 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v78 = v122;
          }

          v79 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v79 = v119;
          v78 = v120;
        }

        v54 = *v79;
        v3 = v78 - *v79;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v78 - *v79;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      return result;
    }

    if ((*(a1 + 40) & 8) == 0)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v116);
      sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
      if ((v126 & 0x10) != 0)
      {
        v44 = v125;
        if (v125 < v122)
        {
          v125 = v122;
          v44 = v122;
        }

        v45 = &v121;
      }

      else
      {
        if ((v126 & 8) == 0)
        {
          v3 = 0;
          v115 = 0;
          goto LABEL_440;
        }

        v45 = v119;
        v44 = v120;
      }

      v54 = *v45;
      v3 = v44 - *v45;
      if (v3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v3 >= 0x17)
      {
        operator new();
      }

      v115 = v44 - *v45;
      if (!v3)
      {
        goto LABEL_440;
      }

      goto LABEL_439;
    }

    v10 = *(a1 + 192);
    if ((*(v10 + 46) & 1) == 0)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v116);
      sub_4A5C(&v116, "Place request parameters do not contain transit nearby schedule lookup parameters", 81);
      if ((v126 & 0x10) != 0)
      {
        v62 = v125;
        if (v125 < v122)
        {
          v125 = v122;
          v62 = v122;
        }

        v63 = &v121;
      }

      else
      {
        if ((v126 & 8) == 0)
        {
          v3 = 0;
          v115 = 0;
          goto LABEL_440;
        }

        v63 = v119;
        v62 = v120;
      }

      v54 = *v63;
      v3 = v62 - *v63;
      if (v3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v3 >= 0x17)
      {
        operator new();
      }

      v115 = v62 - *v63;
      if (!v3)
      {
        goto LABEL_440;
      }

      goto LABEL_439;
    }

    v15 = *(v10 + 440);
    v16 = *(v15 + 40);
    if (v16)
    {
      v17 = v16 + 8;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v15 + 32);
    if (v18)
    {
      v19 = 8 * v18;
      while ((*(*v17 + 16) & 1) != 0)
      {
        v17 += 8;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_98;
        }
      }

      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit nearby schedule lookup origin does not contain a waypoint typed", 71);
        if ((v126 & 0x10) != 0)
        {
          v76 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v76 = v122;
          }

          v77 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v77 = v119;
          v76 = v120;
        }

        v54 = *v77;
        v3 = v76 - *v77;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v76 - *v77;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      return result;
    }

LABEL_98:
    v20 = 1;
LABEL_144:

    return sub_E6C67C(a1, v20);
  }

  if (v1 != 37)
  {
    if (v1 == 39)
    {
      if ((*(a1 + 40) & 8) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit schedule lookup request does not contain place request parameters", 73);
        if ((v126 & 0x10) != 0)
        {
          v46 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v46 = v122;
          }

          v47 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
LABEL_440:
            *(&__dst + v3) = 0;
            sub_7E854(&__dst, 1u);
            if (v115 < 0)
            {
              operator delete(__dst);
            }

            if (v124 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v118);
            std::ostream::~ostream();
            std::ios::~ios();
            return 0;
          }

          v47 = v119;
          v46 = v120;
        }

        v54 = *v47;
        v3 = v46 - *v47;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v46 - *v47;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      v11 = *(a1 + 192);
      if ((*(v11 + 44) & 0x20) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit schedule lookup request parameters do not contain transit schedule lookup parameters", 92);
        if ((v126 & 0x10) != 0)
        {
          v64 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v64 = v122;
          }

          v65 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v65 = v119;
          v64 = v120;
        }

        v54 = *v65;
        v3 = v64 - *v65;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v64 - *v65;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      v21 = *(*(v11 + 352) + 40);
      if ((v21 & 8) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit schedule lookup parameters does not have a reference trip id set", 72);
        if ((v126 & 0x10) != 0)
        {
          v72 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v72 = v122;
          }

          v73 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v73 = v119;
          v72 = v120;
        }

        v54 = *v73;
        v3 = v72 - *v73;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v72 - *v73;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      if ((v21 & 4) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit schedule lookup parameters does not have a transit id set", 65);
        if ((v126 & 0x10) != 0)
        {
          v80 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v80 = v122;
          }

          v81 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v81 = v119;
          v80 = v120;
        }

        v54 = *v81;
        v3 = v80 - *v81;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v80 - *v81;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      result = sub_E6C67C(a1, 0);
      if (!result)
      {
        return result;
      }

      v56 = sub_E6CFB8(a1, 68);
      if (v56)
      {
        v57 = *(v56 + 24);
        if (!v57)
        {
          v57 = &off_2785290;
        }

        if ((*(v57 + 11) & 0x80000000) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Transit trip stop time component does not have a transit trip stop time filter", 78);
          if ((v126 & 0x10) != 0)
          {
            v99 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v99 = v122;
            }

            v100 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v100 = v119;
            v99 = v120;
          }

          v54 = *v100;
          v3 = v99 - *v100;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v99 - *v100;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        v88 = v57[71];
        v113 = 14;
        strcpy(v112, "trip stop time");
        v89 = *(v88 + 10);
        if ((v89 & 2) != 0)
        {
          if (v89)
          {
            v101 = *(v88[7] + 3);
            if (!v101)
            {
              v101 = &off_27822F0;
            }

            if (*(v101 + 6) + 978307200 >= 0)
            {
              result = 1;
              goto LABEL_481;
            }

            result = sub_7E7E4(1u);
            if (!result)
            {
LABEL_481:
              if (v113 < 0)
              {
                v111 = result;
                operator delete(v112[0]);
                return v111;
              }

              return result;
            }

            sub_19594F8(&v116);
            v104 = sub_4A5C(&v116, "The start time in the transit ", 30);
            if (v113 >= 0)
            {
              v105 = v112;
            }

            else
            {
              v105 = v112[0];
            }

            if (v113 >= 0)
            {
              v106 = v113;
            }

            else
            {
              v106 = v112[1];
            }

            v107 = sub_4A5C(v104, v105, v106);
            sub_4A5C(v107, " filter cannot be cast to a time stamp: ", 40);
            std::ostream::operator<<();
            sub_1959680(&v116, &__dst);
            sub_7E854(&__dst, 1u);
            if (v115 < 0)
            {
              operator delete(__dst);
            }

            sub_1959728(&v116);
LABEL_480:
            result = 0;
            goto LABEL_481;
          }

          result = sub_7E7E4(1u);
          if (!result)
          {
            goto LABEL_481;
          }

          sub_19594F8(&v116);
          v95 = sub_4A5C(&v116, "Transit ", 8);
          if (v113 >= 0)
          {
            v96 = v112;
          }

          else
          {
            v96 = v112[0];
          }

          if (v113 >= 0)
          {
            v97 = v113;
          }

          else
          {
            v97 = v112[1];
          }

          v98 = sub_4A5C(v95, v96, v97);
          sub_4A5C(v98, " filter does not have a countdown departure predicate", 53);
          if ((v126 & 0x10) != 0)
          {
            v109 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v109 = v122;
            }

            v110 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v94 = 0;
              v115 = 0;
              goto LABEL_475;
            }

            v110 = v119;
            v109 = v120;
          }

          v108 = *v110;
          v94 = v109 - *v110;
          if (v94 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v94 >= 0x17)
          {
            operator new();
          }

          v115 = v109 - *v110;
          if (!v94)
          {
            goto LABEL_475;
          }
        }

        else
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            goto LABEL_481;
          }

          sub_19594F8(&v116);
          v90 = sub_4A5C(&v116, "Transit ", 8);
          if (v113 >= 0)
          {
            v91 = v112;
          }

          else
          {
            v91 = v112[0];
          }

          if (v113 >= 0)
          {
            v92 = v113;
          }

          else
          {
            v92 = v112[1];
          }

          v93 = sub_4A5C(v90, v91, v92);
          sub_4A5C(v93, " filter does not have a stamp departure predicate", 49);
          if ((v126 & 0x10) != 0)
          {
            v102 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v102 = v122;
            }

            v103 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v94 = 0;
              v115 = 0;
LABEL_475:
              *(&__dst + v94) = 0;
              sub_7E854(&__dst, 1u);
              if (v115 < 0)
              {
                operator delete(__dst);
              }

              if (v124 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v118);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_480;
            }

            v103 = v119;
            v102 = v120;
          }

          v108 = *v103;
          v94 = v102 - *v103;
          if (v94 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v94 >= 0x17)
          {
            operator new();
          }

          v115 = v102 - *v103;
          if (!v94)
          {
            goto LABEL_475;
          }
        }

        memmove(&__dst, v108, v94);
        goto LABEL_475;
      }

      return 1;
    }

LABEL_30:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v116);
    v5 = sub_4A5C(&v116, "Place request consistency check invoked with a request of unsupported type ", 75);
    v6 = sub_186996C(*(a1 + 212));
    v7 = *(v6 + 23);
    if (v7 >= 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = *v6;
    }

    if (v7 >= 0)
    {
      v9 = *(v6 + 23);
    }

    else
    {
      v9 = v6[1];
    }

    sub_4A5C(v5, v8, v9);
    if ((v126 & 0x10) != 0)
    {
      v33 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v33 = v122;
      }

      v34 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v3 = 0;
        v115 = 0;
        goto LABEL_440;
      }

      v34 = v119;
      v33 = v120;
    }

    v54 = *v34;
    v3 = v33 - *v34;
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v115 = v33 - *v34;
    if (!v3)
    {
      goto LABEL_440;
    }

    goto LABEL_439;
  }

  if ((*(a1 + 40) & 8) == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v116);
    sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
    if ((v126 & 0x10) != 0)
    {
      v42 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v42 = v122;
      }

      v43 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v3 = 0;
        v115 = 0;
        goto LABEL_440;
      }

      v43 = v119;
      v42 = v120;
    }

    v54 = *v43;
    v3 = v42 - *v43;
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v115 = v42 - *v43;
    if (!v3)
    {
      goto LABEL_440;
    }

    goto LABEL_439;
  }

  if ((*(*(a1 + 192) + 44) & 8) != 0)
  {
    return 1;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v116);
    sub_4A5C(&v116, "Place request parameters do not contain transit vehicle position parameters", 75);
    if ((v126 & 0x10) != 0)
    {
      v60 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v60 = v122;
      }

      v61 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v3 = 0;
        v115 = 0;
        goto LABEL_440;
      }

      v61 = v119;
      v60 = v120;
    }

    v54 = *v61;
    v3 = v60 - *v61;
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v115 = v60 - *v61;
    if (!v3)
    {
      goto LABEL_440;
    }

    goto LABEL_439;
  }

  return result;
}

void sub_E6C4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a22);
  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_E6C67C(uint64_t a1, int a2)
{
  v3 = sub_E6CFB8(a1, 11);
  if (!v3)
  {
    result = 1;
    if (!a2)
    {
      return result;
    }

    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v36);
    sub_4A5C(&v36, "Mandatory transit schedule component is not present in the request", 66);
    if ((v46 & 0x10) != 0)
    {
      v21 = v45;
      if (v45 < v42)
      {
        v45 = v42;
        v21 = v42;
      }

      v20 = v41;
      v6 = v21 - v41;
      if (v21 - v41 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if ((v46 & 8) == 0)
      {
        v6 = 0;
        v35 = 0;
        goto LABEL_61;
      }

      v20 = v39[0];
      v6 = v40 - v39[0];
      if (v40 - v39[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_77:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v35 = v6;
    if (!v6)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    v4 = &off_2785290;
  }

  if ((*(v4 + 41) & 4) == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v36);
    sub_4A5C(&v36, "Transit schedule component does not have a transit schedule filter", 66);
    if ((v46 & 0x10) != 0)
    {
      v19 = v45;
      if (v45 < v42)
      {
        v45 = v42;
        v19 = v42;
      }

      v20 = v41;
      v6 = v19 - v41;
      if (v19 - v41 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v46 & 8) == 0)
      {
        v6 = 0;
        v35 = 0;
LABEL_61:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 1u);
        if (v35 < 0)
        {
          operator delete(__dst);
        }

        if (v44 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v38);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v20 = v39[0];
      v6 = v40 - v39[0];
      if (v40 - v39[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_55:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v35 = v6;
    if (!v6)
    {
      goto LABEL_61;
    }

LABEL_60:
    memmove(&__dst, v20, v6);
    goto LABEL_61;
  }

  v7 = v4[18];
  v33 = 8;
  strcpy(v32, "schedule");
  v8 = *(v7 + 4);
  if ((v8 & 2) == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      goto LABEL_101;
    }

    sub_19594F8(&v36);
    v9 = sub_4A5C(&v36, "Transit ", 8);
    if (v33 >= 0)
    {
      v10 = v32;
    }

    else
    {
      v10 = v32[0];
    }

    if (v33 >= 0)
    {
      v11 = v33;
    }

    else
    {
      v11 = v32[1];
    }

    v12 = sub_4A5C(v9, v10, v11);
    sub_4A5C(v12, " filter does not have a stamp departure predicate", 49);
    if ((v46 & 0x10) != 0)
    {
      v22 = v45;
      if (v45 < v42)
      {
        v45 = v42;
        v22 = v42;
      }

      v23 = &v41;
    }

    else
    {
      if ((v46 & 8) == 0)
      {
        v13 = 0;
        v35 = 0;
LABEL_95:
        *(&__dst + v13) = 0;
        sub_7E854(&__dst, 1u);
        if (v35 < 0)
        {
          operator delete(__dst);
        }

        if (v44 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v38);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_100:
        result = 0;
        goto LABEL_101;
      }

      v23 = v39;
      v22 = v40;
    }

    v28 = *v23;
    v13 = v22 - *v23;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v35 = v22 - *v23;
    if (!v13)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if ((v8 & 1) == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      goto LABEL_101;
    }

    sub_19594F8(&v36);
    v14 = sub_4A5C(&v36, "Transit ", 8);
    if (v33 >= 0)
    {
      v15 = v32;
    }

    else
    {
      v15 = v32[0];
    }

    if (v33 >= 0)
    {
      v16 = v33;
    }

    else
    {
      v16 = v32[1];
    }

    v17 = sub_4A5C(v14, v15, v16);
    sub_4A5C(v17, " filter does not have a countdown departure predicate", 53);
    if ((v46 & 0x10) != 0)
    {
      v29 = v45;
      if (v45 < v42)
      {
        v45 = v42;
        v29 = v42;
      }

      v30 = &v41;
    }

    else
    {
      if ((v46 & 8) == 0)
      {
        v13 = 0;
        v35 = 0;
        goto LABEL_95;
      }

      v30 = v39;
      v29 = v40;
    }

    v28 = *v30;
    v13 = v29 - *v30;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v35 = v29 - *v30;
    if (!v13)
    {
      goto LABEL_95;
    }

LABEL_94:
    memmove(&__dst, v28, v13);
    goto LABEL_95;
  }

  v18 = *(v7[4] + 3);
  if (!v18)
  {
    v18 = &off_27822F0;
  }

  if (*(v18 + 6) + 978307200 >= 0)
  {
    result = 1;
    goto LABEL_101;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v36);
    v24 = sub_4A5C(&v36, "The start time in the transit ", 30);
    if (v33 >= 0)
    {
      v25 = v32;
    }

    else
    {
      v25 = v32[0];
    }

    if (v33 >= 0)
    {
      v26 = v33;
    }

    else
    {
      v26 = v32[1];
    }

    v27 = sub_4A5C(v24, v25, v26);
    sub_4A5C(v27, " filter cannot be cast to a time stamp: ", 40);
    std::ostream::operator<<();
    sub_1959680(&v36, &__dst);
    sub_7E854(&__dst, 1u);
    if (v35 < 0)
    {
      operator delete(__dst);
    }

    sub_1959728(&v36);
    goto LABEL_100;
  }

LABEL_101:
  if (v33 < 0)
  {
    v31 = result;
    operator delete(v32[0]);
    return v31;
  }

  return result;
}

void sub_E6CEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a22);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E6CFB8(uint64_t a1, int a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = v2 + 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = v3; *(*i + 32) != a2; i += 8)
    {
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }
  }

  else
  {
    i = v3;
  }

  if (i == v3 + 8 * v4)
  {
    return 0;
  }

  else
  {
    return *i;
  }
}

BOOL sub_E6D018(uint64_t a1, int a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = v2 + 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = v3; *(*i + 32) != a2; i += 8)
    {
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }
  }

  else
  {
    i = v3;
  }

  return i != v3 + 8 * v4 && *i != 0;
}

void sub_E6D080(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 32) || (*(*(*(a1 + 40) + 8) + 184) ? (v3 = *(*(*(a1 + 40) + 8) + 184)) : (v3 = &off_2776328), v3[22] ? (v4 = v3[22]) : (v4 = &off_277E5E8), (~*(v4 + 10) & 3) != 0))
  {
    v57.f64[0] = NAN;
    v57.f64[1] = NAN;
    *a2 = -1;
    *(a2 + 8) = 0x7FFFFFFF;
    *(a2 + 16) = -1;
    *(a2 + 24) = -1;
    *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 40) = 0;
    *(a2 + 48) = -1935635296;
    *(a2 + 56) = 0;
    *(a2 + 63) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 112) = 100;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = vnegq_f64(v57);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 1;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0;
    *(a2 + 384) = -1;
    *(a2 + 392) = -1;
    *(a2 + 400) = 0;
    *(a2 + 424) = 0;
    *(a2 + 408) = 0;
    *(a2 + 416) = 0;
    *(a2 + 432) = 0;
    *(a2 + 436) = 0;
  }

  else
  {
    *(a2 + 8) = 0x7FFFFFFF;
    *(a2 + 16) = -1;
    *(a2 + 24) = -1;
    *(a2 + 48) = -1935635296;
    *(a2 + 56) = 0;
    *(a2 + 63) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(a2 + 96) = 0;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    v5.f64[0] = NAN;
    v5.f64[1] = NAN;
    v6 = vnegq_f64(v5);
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    *(a2 + 176) = 1;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 376) = 0;
    *(a2 + 384) = -1;
    *(a2 + 392) = -1;
    *(a2 + 400) = 0;
    *(a2 + 424) = 0;
    *(a2 + 408) = 0;
    *(a2 + 416) = 0;
    v5.f64[0] = fmin(fmax(*(v4 + 6), -85.0511288), 85.0511288);
    *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 40) = 0;
    *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 112) = 100;
    v59 = v6;
    *(a2 + 136) = v6;
    *(a2 + 184) = 0;
    *(a2 + 432) = 0;
    *(a2 + 436) = 0;
    v7 = sin(v5.f64[0] * 3.14159265 / 180.0);
    v8 = ((log((v7 + 1.0) / (1.0 - v7)) / -12.5663706 + 0.5) * 4294967300.0);
    if (v8 >= 0xFFFFFFFE)
    {
      v8 = -2;
    }

    *a2 = ((*(v4 + 7) + 180.0) / 360.0 * 4294967300.0);
    *(a2 + 4) = v8;
    v9 = v3[11];
    if (v9)
    {
      v10 = (v9 + 1);
    }

    else
    {
      v10 = 0;
    }

    v58 = v3;
    v11 = *(v3 + 20);
    if (v11)
    {
      v12 = 8 * v11;
      do
      {
        while (1)
        {
          v13 = *v10;
          v14 = *(a2 + 320);
          if (v14 >= *(a2 + 328))
          {
            v15 = sub_E6EBB4(a2 + 312);
          }

          else
          {
            *(v14 + 8) = 0u;
            *(v14 + 24) = 0u;
            *(v14 + 40) = 0u;
            *(v14 + 56) = 0u;
            *(v14 + 72) = 0u;
            *(v14 + 88) = 0u;
            *(v14 + 104) = 0u;
            *v14 = -1;
            *(v14 + 8) = 0x7FFFFFFF;
            *(v14 + 16) = -1;
            *(v14 + 24) = -1;
            *(v14 + 32) = 0x7FFFFFFFFFFFFFFFLL;
            *(v14 + 48) = -1935635296;
            *(v14 + 56) = 0;
            *(v14 + 63) = 0;
            *(v14 + 72) = 0;
            *(v14 + 80) = 0;
            *(v14 + 88) = 0;
            *(v14 + 96) = 0;
            *(v14 + 104) = 0x7FFFFFFFFFFFFFFFLL;
            *(v14 + 112) = 100;
            *(v14 + 120) = 0;
            *(v14 + 128) = 0;
            *(v14 + 136) = v59;
            *(v14 + 152) = 0;
            *(v14 + 160) = 0;
            *(v14 + 168) = 0;
            v15 = v14 + 176;
          }

          *(a2 + 320) = v15;
          v16 = sin(fmin(fmax(*(v13 + 48), -85.0511288), 85.0511288) * 3.14159265 / 180.0);
          v17 = ((log((v16 + 1.0) / (1.0 - v16)) / -12.5663706 + 0.5) * 4294967300.0);
          if (v17 >= 0xFFFFFFFE)
          {
            v17 = -2;
          }

          *(v15 - 176) = ((*(v13 + 56) + 180.0) / 360.0 * 4294967300.0);
          *(v15 - 172) = v17;
          v19 = *(v15 - 96);
          v18 = *(v15 - 88);
          if (v19 >= v18)
          {
            break;
          }

          *v19 = 4;
          *(v15 - 96) = v19 + 4;
          ++v10;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_35;
          }
        }

        v20 = *(v15 - 104);
        v21 = v19 - v20;
        v22 = (v19 - v20) >> 2;
        v23 = v22 + 1;
        if ((v22 + 1) >> 62)
        {
          sub_1794();
        }

        v24 = v18 - v20;
        if (v24 >> 1 > v23)
        {
          v23 = v24 >> 1;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v25 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (!(v25 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v26 = (v19 - v20) >> 2;
        v27 = (4 * v22);
        v28 = (4 * v22 - 4 * v26);
        *v27 = 4;
        v29 = v27 + 1;
        memcpy(v28, v20, v21);
        *(v15 - 104) = v28;
        *(v15 - 96) = v29;
        *(v15 - 88) = 0;
        if (v20)
        {
          operator delete(v20);
        }

        *(v15 - 96) = v29;
        ++v10;
        v12 -= 8;
      }

      while (v12);
    }

LABEL_35:
    v30 = v58[14];
    if (v30)
    {
      v31 = (v30 + 1);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(v58 + 26);
    if (v32)
    {
      v33 = 8 * v32;
      v34.f64[0] = NAN;
      v34.f64[1] = NAN;
      v60 = vnegq_f64(v34);
      while (1)
      {
        v35 = *v31;
        v36 = *(a2 + 320);
        if (v36 >= *(a2 + 328))
        {
          v37 = sub_E6EBB4(a2 + 312);
        }

        else
        {
          *(v36 + 8) = 0u;
          *(v36 + 24) = 0u;
          *(v36 + 40) = 0u;
          *(v36 + 56) = 0u;
          *(v36 + 72) = 0u;
          *(v36 + 88) = 0u;
          *(v36 + 104) = 0u;
          *v36 = -1;
          *(v36 + 8) = 0x7FFFFFFF;
          *(v36 + 16) = -1;
          *(v36 + 24) = -1;
          *(v36 + 32) = 0x7FFFFFFFFFFFFFFFLL;
          *(v36 + 48) = -1935635296;
          *(v36 + 56) = 0;
          *(v36 + 63) = 0;
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          *(v36 + 88) = 0;
          *(v36 + 96) = 0;
          *(v36 + 104) = 0x7FFFFFFFFFFFFFFFLL;
          *(v36 + 112) = 100;
          *(v36 + 120) = 0;
          *(v36 + 128) = 0;
          *(v36 + 136) = v60;
          *(v36 + 152) = 0;
          *(v36 + 160) = 0;
          *(v36 + 168) = 0;
          v37 = v36 + 176;
        }

        *(a2 + 320) = v37;
        if (*(v35 + 24))
        {
          v38 = *(v35 + 24);
        }

        else
        {
          v38 = &off_277E5E8;
        }

        v39 = sin(fmin(fmax(*(v38 + 6), -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        v40 = ((log((v39 + 1.0) / (1.0 - v39)) / -12.5663706 + 0.5) * 4294967300.0);
        if (v40 >= 0xFFFFFFFE)
        {
          v40 = -2;
        }

        *(v37 - 176) = ((*(v38 + 7) + 180.0) / 360.0 * 4294967300.0);
        *(v37 - 172) = v40;
        v41 = *(v35 + 40);
        if ((v41 & 0xFFFFFFFD) == 1)
        {
          v42 = 4;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        if (v41 == 2)
        {
          v42 = 5;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        v45 = *(v35 + 36);
        if ((v45 & 0xFFFFFFFD) == 1)
        {
          v42 = 1;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        if (v45 == 2)
        {
          v42 = 2;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        v46 = *(v35 + 56);
        if ((v46 & 0xFFFFFFFD) == 1)
        {
          v42 = 7;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        if (v46 == 2)
        {
          break;
        }

        if (v46 == 4)
        {
          v42 = 6;
          v44 = *(v37 - 96);
          v43 = *(v37 - 88);
          if (v44 < v43)
          {
            goto LABEL_66;
          }

LABEL_68:
          v48 = *(v37 - 104);
          v49 = v44 - v48;
          v50 = (v44 - v48) >> 2;
          v51 = v50 + 1;
          if ((v50 + 1) >> 62)
          {
            sub_1794();
          }

          v52 = v43 - v48;
          if (v52 >> 1 > v51)
          {
            v51 = v52 >> 1;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v53 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            if (!(v53 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v54 = (v44 - v48) >> 2;
          v55 = (4 * v50);
          v56 = (4 * v50 - 4 * v54);
          *v55 = v42;
          v47 = v55 + 1;
          memcpy(v56, v48, v49);
          *(v37 - 104) = v56;
          *(v37 - 96) = v47;
          *(v37 - 88) = 0;
          if (v48)
          {
            operator delete(v48);
          }

LABEL_79:
          *(v37 - 96) = v47;
        }

        ++v31;
        v33 -= 8;
        if (!v33)
        {
          return;
        }
      }

      v42 = 8;
      v44 = *(v37 - 96);
      v43 = *(v37 - 88);
      if (v44 >= v43)
      {
        goto LABEL_68;
      }

LABEL_66:
      *v44 = v42;
      v47 = v44 + 1;
      goto LABEL_79;
    }
  }
}

uint64_t sub_E6D904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *&v160 = -1;
  DWORD2(v160) = 0x7FFFFFFF;
  *&v161 = -1;
  *(&v161 + 1) = -1;
  v162 = 0x7FFFFFFFFFFFFFFFuLL;
  *v163 = -1935635296;
  *&v163[8] = 0;
  *&v163[15] = 0;
  v164 = 0uLL;
  v165 = 0;
  LODWORD(v166) = 0;
  *(&v166 + 1) = 0x7FFFFFFFFFFFFFFFLL;
  v167 = 100;
  v168 = 0uLL;
  v169 = vnegq_f64(v3);
  v170 = 0;
  v171 = 0uLL;
  v172 = 1;
  v173 = 0;
  v4 = 0uLL;
  memset(v174, 0, sizeof(v174));
  v175 = 0u;
  memset(v176, 0, sizeof(v176));
  v177[0] = 0;
  *&v177[8] = 0u;
  memset(v178, 0, sizeof(v178));
  v179 = 0u;
  v180 = 0;
  *&v181 = -1;
  *(&v181 + 1) = -1;
  v182 = 0uLL;
  v184 = 0;
  v183 = 0;
  LOBYTE(v185) = 0;
  HIDWORD(v185) = 0;
  if (!*(a1 + 208))
  {
    if (*(a1 + 128) < 1)
    {
      if (*(a1 + 56) < 1)
      {
        v7 = &unk_27B9AB8;
        if ((atomic_load_explicit(&qword_27B9AB0, memory_order_acquire) & 1) == 0)
        {
          if (__cxa_guard_acquire(&qword_27B9AB0))
          {
            sub_1838250(&unk_27B9AB8, 0, 0);
            __cxa_guard_release(&qword_27B9AB0);
            v7 = &unk_27B9AB8;
            v2 = a2;
          }

          else
          {
            v2 = a2;
            v7 = &unk_27B9AB8;
          }
        }
      }

      else
      {
        v7 = *(*(a1 + 64) + 8);
      }
    }

    else if (*(*(*(a1 + 136) + 8) + 24))
    {
      v7 = *(*(*(a1 + 136) + 8) + 24);
    }

    else
    {
      v7 = &off_27868A0;
    }

    v8 = *(v7 + 14);
    if (!v8)
    {
      v131.f64[0] = NAN;
      v131.f64[1] = NAN;
      *v2 = -1;
      *(v2 + 8) = 0x7FFFFFFF;
      *(v2 + 16) = -1;
      *(v2 + 24) = -1;
      *(v2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
      *(v2 + 40) = 0;
      *(v2 + 48) = -1935635296;
      *(v2 + 56) = 0;
      *(v2 + 63) = 0;
      *(v2 + 80) = 0;
      *(v2 + 88) = 0;
      *(v2 + 72) = 0;
      *(v2 + 96) = 0;
      *(v2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
      *(v2 + 112) = 100;
      *(v2 + 120) = 0;
      *(v2 + 128) = 0;
      *(v2 + 136) = vnegq_f64(v131);
      *(v2 + 152) = 0;
      *(v2 + 160) = 0;
      *(v2 + 168) = 0;
      *(v2 + 176) = 1;
      *(v2 + 184) = 0;
      v6 = (v2 + 296);
      v4 = 0uLL;
      goto LABEL_3;
    }

    v133 = (v2 + 312);
    v134 = v2;
    v9 = v7[8];
    v10 = v9 + 1;
    if (!v9)
    {
      v10 = 0;
    }

    v135 = &v10[v8];
    while (1)
    {
      v138 = v10;
      v11 = *v10;
      if (!*(*v10 + 14))
      {
        goto LABEL_15;
      }

      v12 = *(*(v11 + 8) + 8);
      v13 = *(v11 + 34);
      v136 = *v10;
      v137 = v12;
      if (v13 != 3)
      {
        break;
      }

      v19 = v12[10];
      if (!v19)
      {
        v19 = &off_2782800;
      }

      v20 = v19[4];
      if (v20)
      {
        v21 = (v20 + 1);
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v19 + 6);
      if (v22)
      {
        v23 = 8 * v22;
        do
        {
          sub_EA40DC(*v21, &v143);
          if (sub_E67BDC(&v143))
          {
            v24 = *(&v178[0] + 1);
            if (*(&v178[0] + 1) >= *&v178[1])
            {
              v30 = sub_D4E5B4(v178, &v143);
            }

            else
            {
              **(&v178[0] + 1) = v143;
              v25 = v144;
              v26 = v145;
              v27 = *v146;
              *(v24 + 63) = *&v146[15];
              *(v24 + 32) = v26;
              *(v24 + 48) = v27;
              *(v24 + 72) = 0;
              *(v24 + 16) = v25;
              *(v24 + 80) = 0;
              *(v24 + 88) = 0;
              if (v148 != v147)
              {
                if (((v148 - v147) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_1794();
              }

              v28 = v150;
              *(v24 + 112) = v151;
              *(v24 + 96) = v28;
              v29 = v152;
              *(v24 + 136) = v153;
              *(v24 + 120) = v29;
              sub_81988((v24 + 152), &__p);
              v30 = v24 + 176;
            }

            *(&v178[0] + 1) = v30;
          }

          if (__p)
          {
            operator delete(__p);
          }

          if (v147)
          {
            v148 = v147;
            operator delete(v147);
          }

          ++v21;
          v23 -= 8;
        }

        while (v23);
        v11 = v136;
        v13 = *(v136 + 34);
LABEL_48:
        if (v13 == 1)
        {
          v31 = v12[8];
          if (!v31)
          {
            v31 = &off_2782358;
          }

          if (*(v31 + 32) >= 1)
          {
            v32 = *(v31[17][1] + 4) & 0xFFFFFFFFFFFFFFFELL;
            if (v174 != v32)
            {
              v33 = *(v32 + 23);
              if (SBYTE7(v174[1]) < 0)
              {
                if (v33 >= 0)
                {
                  v35 = v32;
                }

                else
                {
                  v35 = *v32;
                }

                if (v33 >= 0)
                {
                  v36 = *(v32 + 23);
                }

                else
                {
                  v36 = *(v32 + 8);
                }

                sub_13B38(v174, v35, v36);
              }

              else if ((*(v32 + 23) & 0x80) != 0)
              {
                sub_13A68(v174, *v32, *(v32 + 8));
              }

              else
              {
                v34 = *v32;
                *&v174[1] = *(v32 + 16);
                v174[0] = v34;
              }
            }
          }

          v37 = v12[8];
          if (!v37)
          {
            v37 = &off_2782358;
          }

          v38 = v37[41] & 0xFFFFFFFFFFFFFFFELL;
          if (&v176[1] != v38)
          {
            v39 = *(v38 + 23);
            if (SHIBYTE(v176[3]) < 0)
            {
              if (v39 >= 0)
              {
                v41 = v38;
              }

              else
              {
                v41 = *v38;
              }

              if (v39 >= 0)
              {
                v42 = *(v38 + 23);
              }

              else
              {
                v42 = *(v38 + 8);
              }

              sub_13B38(&v176[1], v41, v42);
            }

            else if ((*(v38 + 23) & 0x80) != 0)
            {
              sub_13A68(&v176[1], *v38, *(v38 + 8));
            }

            else
            {
              v40 = *v38;
              v176[3] = *(v38 + 16);
              *&v176[1] = v40;
            }
          }
        }
      }

LABEL_78:
      v43 = *(v11 + 34);
      if (v43 == 5)
      {
        v44 = v12[12];
        if (!v44)
        {
          v44 = &off_2782930;
        }

        if (*(v44 + 14) >= 1)
        {
          v45 = *(v44[8][1] + 4);
          if (!v45)
          {
            v45 = &off_277E918;
          }

          v46 = v45[6];
          if (!v46)
          {
            v46 = &off_277E820;
          }

          v47 = v46[25] & 0xFFFFFFFFFFFFFFFELL;
          if ((&v174[1] + 8) != v47)
          {
            v48 = *(v47 + 23);
            if (SHIBYTE(v174[2]) < 0)
            {
              if (v48 >= 0)
              {
                v50 = v47;
              }

              else
              {
                v50 = *v47;
              }

              if (v48 >= 0)
              {
                v51 = *(v47 + 23);
              }

              else
              {
                v51 = *(v47 + 8);
              }

              sub_13B38(&v174[1] + 8, v50, v51);
            }

            else if ((*(v47 + 23) & 0x80) != 0)
            {
              sub_13A68(&v174[1] + 8, *v47, *(v47 + 8));
            }

            else
            {
              v49 = *v47;
              *(&v174[2] + 1) = *(v47 + 16);
              *(&v174[1] + 8) = v49;
            }
          }
        }

        v43 = *(v11 + 34);
      }

      if (v43 == 21)
      {
        if (v12[25])
        {
          v52 = v12[25];
        }

        else
        {
          v52 = &off_2783D90;
        }

        if (v52[2])
        {
          *(&v161 + 1) = nullsub_1(v52[6]);
        }

        v53 = v52[5];
        v54 = v53 ? (v53 + 1) : 0;
        v55 = *(v52 + 8);
        if (v55)
        {
          v56 = 8 * v55;
          while (2)
          {
            v58 = *v54;
            if ((*(*v54 + 16) & 2) == 0)
            {
              goto LABEL_112;
            }

            v59 = nullsub_1(*(v58 + 32));
            if (*(v58 + 16))
            {
              v64 = *(v58 + 24);
              v65 = sin(fmin(fmax(*(v64 + 48), -85.0511288), 85.0511288) * 3.14159265 / 180.0);
              v66 = ((log((v65 + 1.0) / (1.0 - v65)) / -12.5663706 + 0.5) * 4294967300.0);
              if (v66 >= 0xFFFFFFFE)
              {
                v61 = -2;
              }

              else
              {
                v61 = v66;
              }

              v60 = ((*(v64 + 56) + 180.0) / 360.0 * 4294967300.0);
              v63 = *(&v178[2] + 1);
              v62 = *&v178[2];
              if (*&v178[2] < *(&v178[2] + 1))
              {
                goto LABEL_110;
              }

LABEL_121:
              v67 = *(&v178[1] + 1);
              v68 = 0xAAAAAAAAAAAAAAABLL * ((v62 - *(&v178[1] + 1)) >> 3);
              v69 = v68 + 1;
              if (v68 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1794();
              }

              v70 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *(&v178[1] + 1)) >> 3);
              if (2 * v70 > v69)
              {
                v69 = 2 * v70;
              }

              if (v70 >= 0x555555555555555)
              {
                v71 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v71 = v69;
              }

              if (v71)
              {
                if (v71 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v72 = 8 * ((v62 - *(&v178[1] + 1)) >> 3);
              *v72 = v59;
              *(v72 + 8) = v60;
              *(v72 + 12) = v61;
              *(v72 + 16) = 0x7FFFFFFF;
              v57 = 24 * v68 + 24;
              v73 = (24 * v68 - (v62 - v67));
              memcpy(v73, v67, v62 - v67);
              *(&v178[1] + 1) = v73;
              v178[2] = v57;
              if (v67)
              {
                operator delete(v67);
              }
            }

            else
            {
              v60 = -1;
              v61 = -1;
              v63 = *(&v178[2] + 1);
              v62 = *&v178[2];
              if (*&v178[2] >= *(&v178[2] + 1))
              {
                goto LABEL_121;
              }

LABEL_110:
              *v62 = v59;
              *(v62 + 8) = v60;
              *(v62 + 12) = v61;
              v57 = v62 + 24;
              *(v62 + 16) = 0x7FFFFFFF;
            }

            *&v178[2] = v57;
LABEL_112:
            v54 += 8;
            v56 -= 8;
            if (!v56)
            {
              break;
            }

            continue;
          }
        }
      }

      v74 = *(v136 + 34);
      if (v74 == 4)
      {
        v75 = v137[11];
        if (!v75)
        {
          v75 = &off_2782860;
        }

        v76 = v75[6];
        if (v76)
        {
          v77 = v76;
        }

        else
        {
          v77 = &off_277E650;
        }

        sub_4B6854(&v143, v77);
        v181 = v143;
        v78 = v182;
        if (v182)
        {
          v79 = *(&v182 + 1);
          v80 = v182;
          if (*(&v182 + 1) != v182)
          {
            v81 = *(&v182 + 1);
            do
            {
              v83 = *(v81 - 24);
              v81 -= 24;
              v82 = v83;
              if (v83)
              {
                *(v79 - 16) = v82;
                operator delete(v82);
              }

              v79 = v81;
            }

            while (v81 != v78);
            v80 = v182;
          }

          *(&v182 + 1) = v78;
          operator delete(v80);
        }

        v182 = v144;
        v183 = v145;
        *&v145 = 0;
        v144 = 0uLL;
        v184 = DWORD2(v145);
        v74 = *(v136 + 34);
      }

      if (v74 == 81)
      {
        v84 = v137[82];
        if (!v84)
        {
          v84 = &off_2787518;
        }

        v85 = v84[4];
        v86 = v85 ? (v85 + 1) : 0;
        v87 = *(v84 + 6);
        if (v87)
        {
          v88 = v86 + 8 * v87;
          while (1)
          {
            v89 = *v86;
            v90 = *(*v86 + 56);
            if (v90)
            {
              v91 = *(v89 + 64);
              if (v91)
              {
                v92 = v91 + 8;
              }

              else
              {
                v92 = 0;
              }

              v93 = 8 * v90;
              while (1)
              {
                v94 = *(*v92 + 32);
                v95 = v94 > 5;
                v96 = (1 << v94) & 0x25;
                if (!v95 && v96 != 0)
                {
                  break;
                }

                v92 += 8;
                v93 -= 8;
                if (!v93)
                {
                  goto LABEL_157;
                }
              }
            }

            sub_43706C(v89, &v155);
            if ((v155 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(&v155 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v98 = (v156 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || *&v155 == 1.79769313e308;
              v99 = v98 || *(&v155 + 1) == 1.79769313e308;
              if (!v99 && ((BYTE8(v156) & 1) != 0 || *&v156 != 1.79769313e308))
              {
                v104 = *(&v179 + 1);
                if (*(&v179 + 1) >= v180)
                {
                  v109 = v179;
                  v110 = 0x8E38E38E38E38E39 * ((*(&v179 + 1) - v179) >> 3);
                  v111 = v110 + 1;
                  if (v110 + 1 > 0x38E38E38E38E38ELL)
                  {
                    sub_1794();
                  }

                  if (0x1C71C71C71C71C72 * ((v180 - v179) >> 3) > v111)
                  {
                    v111 = 0x1C71C71C71C71C72 * ((v180 - v179) >> 3);
                  }

                  if (0x8E38E38E38E38E39 * ((v180 - v179) >> 3) >= 0x1C71C71C71C71C7)
                  {
                    v112 = 0x38E38E38E38E38ELL;
                  }

                  else
                  {
                    v112 = v111;
                  }

                  if (v112)
                  {
                    if (v112 <= 0x38E38E38E38E38ELL)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v113 = 8 * ((*(&v179 + 1) - v179) >> 3);
                  v114 = v158;
                  *(v113 + 32) = v157;
                  *(v113 + 48) = v114;
                  *(v113 + 64) = v159;
                  v115 = v156;
                  *v113 = v155;
                  *(v113 + 16) = v115;
                  v108 = 72 * v110 + 72;
                  v116 = 72 * v110 - (v104 - v109);
                  memcpy((v113 - (v104 - v109)), v109, v104 - v109);
                  *&v179 = v116;
                  *(&v179 + 1) = v108;
                  v180 = 0;
                  if (v109)
                  {
                    operator delete(v109);
                  }
                }

                else
                {
                  **(&v179 + 1) = v155;
                  v105 = v156;
                  v106 = v157;
                  v107 = v158;
                  *(v104 + 64) = v159;
                  *(v104 + 32) = v106;
                  *(v104 + 48) = v107;
                  *(v104 + 16) = v105;
                  v108 = v104 + 72;
                }

                *(&v179 + 1) = v108;
                goto LABEL_157;
              }
            }

            if (sub_7E7E4(1u))
            {
              break;
            }

LABEL_157:
            v86 += 8;
            if (v86 == v88)
            {
              goto LABEL_15;
            }
          }

          sub_19594F8(&v143);
          sub_4A5C(&v143, "Invalid storefront face for muid ", 33);
          std::ostream::operator<<();
          if ((BYTE8(v150) & 0x10) != 0)
          {
            v101 = v150;
            v102 = v146;
            if (v150 < *&v146[8])
            {
              *&v150 = *&v146[8];
              v101 = *&v146[8];
              v102 = v146;
            }
          }

          else
          {
            if ((BYTE8(v150) & 8) == 0)
            {
              v100 = 0;
              v142 = 0;
LABEL_194:
              *(&__dst + v100) = 0;
              sub_7E854(&__dst, 1u);
              if (v142 < 0)
              {
                operator delete(__dst);
              }

              *&v143 = v140;
              *(&v143 + *(v140 - 24)) = v139;
              if (v149 < 0)
              {
                operator delete(v147);
              }

              std::locale::~locale(&v144);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_157;
            }

            v101 = *(&v145 + 1);
            v102 = &v144 + 1;
          }

          v103 = *v102;
          v100 = v101 - *v102;
          if (v100 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v100 >= 0x17)
          {
            operator new();
          }

          v142 = v101 - *v102;
          if (v100)
          {
            memmove(&__dst, v103, v100);
          }

          goto LABEL_194;
        }
      }

LABEL_15:
      v10 = v138 + 1;
      if (v138 + 1 == v135)
      {
        v117 = *v163;
        *(v134 + 32) = v162;
        *(v134 + 48) = v117;
        *(v134 + 63) = *&v163[15];
        v118 = v161;
        *v134 = v160;
        *(v134 + 16) = v118;
        *(v134 + 72) = v164;
        *(v134 + 88) = v165;
        v165 = 0;
        v164 = 0uLL;
        v119 = v166;
        *(v134 + 112) = v167;
        *(v134 + 96) = v119;
        v120 = v168;
        *(v134 + 136) = v169;
        *(v134 + 120) = v120;
        v121 = v176[0];
        *(v134 + 152) = v170;
        *(v134 + 160) = v171;
        v171 = 0uLL;
        v170 = 0;
        *(v134 + 184) = v173;
        *(v134 + 176) = v172;
        v122 = v174[0];
        *(v134 + 208) = *&v174[1];
        *(v134 + 192) = v122;
        memset(v174, 0, 24);
        v123 = *(&v174[1] + 8);
        *(v134 + 232) = *(&v174[2] + 1);
        *(v134 + 216) = v123;
        memset(&v174[1] + 8, 0, 24);
        v124 = v175;
        *(v134 + 256) = v121;
        *(v134 + 240) = v124;
        v175 = 0uLL;
        v176[0] = 0;
        v125 = *&v176[1];
        *(v134 + 280) = v176[3];
        *(v134 + 264) = v125;
        memset(&v176[1], 0, 24);
        v126 = *v177;
        v127 = *&v178[1];
        *(v134 + 304) = *&v177[16];
        *(v134 + 288) = v126;
        *v133 = v178[0];
        *(v134 + 328) = v127;
        memset(v178, 0, 24);
        *(v134 + 336) = *(&v178[1] + 8);
        v128 = v180;
        *(v134 + 352) = *(&v178[2] + 1);
        memset(&v178[1] + 8, 0, 24);
        v133[3] = v179;
        *(v134 + 376) = v128;
        v179 = 0uLL;
        v180 = 0;
        v129 = v182;
        *(v134 + 384) = v181;
        *(v134 + 400) = v129;
        *(v134 + 416) = v183;
        v182 = 0uLL;
        v183 = 0;
        *(v134 + 424) = v184;
        *(v134 + 432) = v185;
        return sub_44FDEC(&v160);
      }
    }

    if (v13 == 2)
    {
      v14 = v12[9];
      if (!v14)
      {
        v14 = &off_2782768;
      }

      v15 = v14[6];
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = &off_277E5E8;
      }

      v17 = sin(fmin(fmax(*(v16 + 6), -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      v18 = ((log((v17 + 1.0) / (1.0 - v17)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v18 >= 0xFFFFFFFE)
      {
        v18 = -2;
      }

      *&v160 = __PAIR64__(v18, ((*(v16 + 7) + 180.0) / 360.0 * 4294967300.0));
      goto LABEL_78;
    }

    goto LABEL_48;
  }

  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  *a2 = -1;
  *(a2 + 8) = 0x7FFFFFFF;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = -1935635296;
  *(a2 + 56) = 0;
  *(a2 + 63) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 112) = 100;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = vnegq_f64(v5);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  *(a2 + 184) = 0;
  v6 = (a2 + 296);
LABEL_3:
  *(v2 + 192) = v4;
  *(v2 + 208) = v4;
  *(v2 + 224) = v4;
  *(v2 + 240) = v4;
  *(v2 + 256) = v4;
  *(v2 + 272) = v4;
  *(v2 + 288) = 0;
  *v6 = v4;
  v6[1] = v4;
  v6[2] = v4;
  v6[3] = v4;
  v6[4] = v4;
  *(v2 + 376) = 0;
  *(v2 + 384) = -1;
  *(v2 + 392) = -1;
  *(v2 + 400) = 0;
  *(v2 + 424) = 0;
  *(v2 + 408) = 0;
  *(v2 + 416) = 0;
  *(v2 + 432) = 0;
  *(v2 + 436) = 0;
  return sub_44FDEC(&v160);
}

void sub_E6EA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_guard_abort(&qword_27B9AB0);
  sub_44FDEC(&a71);
  _Unwind_Resume(a1);
}

void sub_E6EA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = *v71;
  if (*v71)
  {
    *(v72 + 80) = v74;
    operator delete(v74);
  }

  STACK[0x330] = v72;
  sub_44D36C(&a29);
  sub_44FDEC(&a71);
  _Unwind_Resume(a1);
}

void sub_E6EAFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0xE6EB5CLL);
}

void sub_E6EB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_44D36C(&a29);
  sub_44FDEC(&a71);
  _Unwind_Resume(a1);
}

uint64_t sub_E6EBB4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0x2E8BA2E8BA2E8BA3 * (v3 >> 4) + 1;
  if (v4 > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - v1) >> 4) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((*(a1 + 16) - v1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - v1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * (v3 >> 4);
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *v7 = -1;
  *(v7 + 8) = 0x7FFFFFFF;
  *(v7 + 16) = -1;
  *(v7 + 24) = -1;
  *(v7 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(v7 + 48) = -1935635296;
  *(v7 + 56) = 0;
  *(v7 + 63) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(v7 + 112) = 100;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = vnegq_f64(v8);
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  v9 = v7 + 176;
  v10 = v7 - v3;
  *(v7 + 168) = 0;
  if (v1 != v2)
  {
    v11 = v1;
    v12 = v10;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      v15 = *(v11 + 3);
      *(v12 + 63) = *(v11 + 63);
      *(v12 + 32) = v14;
      *(v12 + 48) = v15;
      *(v12 + 16) = v13;
      *(v12 + 80) = 0;
      *(v12 + 88) = 0;
      *(v12 + 72) = *(v11 + 9);
      *(v12 + 88) = v11[11];
      v11[9] = 0;
      v11[10] = 0;
      v11[11] = 0;
      v16 = *(v11 + 6);
      *(v12 + 112) = *(v11 + 112);
      *(v12 + 96) = v16;
      v17 = *(v11 + 15);
      *(v12 + 136) = *(v11 + 17);
      *(v12 + 120) = v17;
      *(v12 + 152) = v11[19];
      *(v12 + 160) = *(v11 + 10);
      v11[19] = 0;
      v11[20] = 0;
      v11[21] = 0;
      v11 += 22;
      v12 += 176;
    }

    while (v11 != v2);
    do
    {
      v18 = v1[19];
      if (v18)
      {
        operator delete(v18);
      }

      v19 = v1[9];
      if (v19)
      {
        v1[10] = v19;
        operator delete(v19);
      }

      v1 += 22;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v9;
}

uint64_t sub_E6EE08(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9, int a10, int a11)
{
  v15 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v15;
  *(a1 + 16) = 0;
  *(a1 + 12) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *a6;
  *(a1 + 32) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_5ADDC(a1 + 56, a4);
  *(a1 + 96) = 0;
  sub_5ADDC(a1 + 104, a5);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = 126 - 2 * __clz((v17 - v16) >> 4);
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v20 = a7 == 0x7FFFFFFF || a8 == 0x7FFFFFFF;
  v21 = (10 * (a7 - a8)) & ~((10 * (a7 - a8)) >> 31);
  if (v20)
  {
    v21 = 0;
  }

  *(a1 + 144) = v21;
  *(a1 + 148) = a8;
  *(a1 + 152) = a9;
  *(a1 + 156) = a11;
  sub_E6F9A4(v16, v17, v19, 1);
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = v22;
  if (v22 != v23)
  {
    while (*(v24 + 12) != 1)
    {
      v24 += 16;
      if (v24 == v23)
      {
        v24 = *(a1 + 24);
        break;
      }
    }
  }

  *(a1 + 40) = (v24 - v22) >> 4;
  v27 = 8;
  strcpy(__p, "model_id");
  *(a1 + 48) = sub_353010((a1 + 56), __p);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v27 = 8;
  strcpy(__p, "model_id");
  *(a1 + 96) = sub_353010((a1 + 104), __p);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_E6EFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v15 + 104);
  sub_5C010(v15 + 56);
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 24) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E6F038@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 16);
  a2[1] = v2;
  return result;
}

uint64_t sub_E6F044@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = v2 + 16 * *(result + 40);
  *a2 = v2;
  a2[1] = v3;
  return result;
}

void *sub_E6F058@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[3];
  *a2 = result[2] + 16 * result[5];
  a2[1] = v2;
  return result;
}

BOOL sub_E6F06C(uint64_t a1)
{
  result = sub_4566B4(a1);
  if (result)
  {
    return *(a1 + 48) != -1 && *(a1 + 96) != -1 && *(a1 + 16) != *(a1 + 24);
  }

  return result;
}

BOOL sub_E6F0DC(uint64_t a1)
{
  v1 = sub_E6F270(a1);
  v5 = 17;
  strcpy(__p, "vehicle_is_towing");
  result = sub_5FC3C(v1, __p);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(*__p);
    result = v3;
    if (v3)
    {
LABEL_3:
      operator new();
    }
  }

  else if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_E6F250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_E6F270(uint64_t a1)
{
  if ((atomic_load_explicit(qword_27B9B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27B9B60))
  {
    sub_5F328(&unk_27B9B70);
    __cxa_guard_release(qword_27B9B60);
  }

  v5 = 18;
  strcpy(__p, "vehicle_parameters");
  result = sub_5FAAC((a1 + 56), __p, &unk_27B9B70);
  if (v5 < 0)
  {
    v3 = result;
    operator delete(*__p);
    return v3;
  }

  return result;
}

void sub_E6F350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_E6F36C(uint64_t a1)
{
  v1 = sub_E6F270(a1);
  v7 = 17;
  strcpy(__p, "vehicle_is_towing");
  v2 = sub_62A70(v1, __p);
  if (v2)
  {
    v3 = *(v2 + 12);
    if (v3 == 4 || v3 == 3)
    {
      v4 = *(v2 + 10);
      if ((v7 & 0x80000000) == 0)
      {
        return v4 == 1;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v4 = *(v2 + 5);
      if (v7 < 0)
      {
        goto LABEL_10;
      }

      return v4 == 1;
    }
  }

  v4 = 0;
  if ((v7 & 0x80000000) == 0)
  {
    return v4 == 1;
  }

LABEL_10:
  operator delete(*__p);
  return v4 == 1;
}

void sub_E6F430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E6F47C(void *result, int a2, int a3, int a4)
{
  v27 = a4;
  v28 = a3;
  v26 = a2;
  if (!a2 || a3 == 0x7FFFFFFF || !a3)
  {
    return result;
  }

  v4 = result[2];
  v5 = result[5];
  v6 = &v4[16 * v5];
  if (v5)
  {
    v7 = result[2];
    while (*v7 != a2)
    {
      v7 += 16;
      if (v7 == v6)
      {
        v7 = v6;
        break;
      }
    }

    if (v7 == v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = result[2];
    if (v4 == v6)
    {
LABEL_10:
      v8 = result[3];
      if (v8 == v6)
      {
        v25[0] = 0;
        v12 = result;
        if (result[4] <= v6)
        {
          result = sub_E6F880((result + 2), &v26, &v28, &v27, v25);
        }

        else
        {
          sub_96DCC(v8, a2, a3, a4, 0);
          result = v8 + 16;
          v12[3] = v8 + 16;
        }

        v12[3] = result;
        v18 = (result - v12[2]) >> 4;
      }

      else
      {
        v9 = result[4];
        if (v8 >= v9)
        {
          v13 = v8 - v4;
          v14 = (v8 - v4) >> 4;
          v15 = v14 + 1;
          if ((v14 + 1) >> 60)
          {
            sub_1794();
          }

          v16 = v9 - v4;
          if (v16 >> 3 > v15)
          {
            v15 = v16 >> 3;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v17 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            if (!(v17 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v19 = a3;
          v20 = a4;
          v21 = a2;
          v22 = result;
          *(16 * v14) = *v6;
          v10 = 16 * v14 + 16;
          memcpy(0, v4, v13);
          result = v22;
          v22[2] = 0;
          v22[3] = v10;
          v22[4] = 0;
          if (v4)
          {
            operator delete(v4);
            result = v22;
          }

          LOBYTE(a2) = v21;
          a4 = v20;
          a3 = v19;
        }

        else
        {
          *v8 = *v6;
          v10 = (v8 + 16);
        }

        result[3] = v10;
        v12 = result;
        result = sub_96DCC(v25, a2, a3, a4, 0);
        v23 = (v12[2] + 16 * v12[5]);
        v24 = *v25;
        *(v23 + 5) = *&v25[5];
        *v23 = v24;
        v18 = v12[5] + 1;
      }

      v12[5] = v18;
      return result;
    }
  }

  v11 = *(v7 + 1);
  if (v11 <= a3)
  {
    v11 = a3;
  }

  *(v7 + 1) = v11;
  return result;
}

void *sub_E6F6F0(void *result, int a2, int a3, int a4)
{
  v14 = a4;
  v15 = a3;
  v13 = a2;
  if (a2 && a3 != 0x7FFFFFFF && a3)
  {
    v4 = result;
    v6 = result[2];
    result += 2;
    v5 = v6;
    v7 = 16 * result[3];
    v8 = (v7 + v6);
    v9 = result[1];
    if (v9 == v7 + v6)
    {
      goto LABEL_14;
    }

    v10 = &v8[-v5 - v7 + 4];
    while (*v8 != a2)
    {
      v8 += 16;
      v10 += 16;
      if (v8 == v9)
      {
        goto LABEL_14;
      }
    }

    if (v8 == v9)
    {
LABEL_14:
      v12 = 1;
      if (v9 >= v4[4])
      {
        result = sub_E6F880(result, &v13, &v15, &v14, &v12);
        v4[3] = result;
      }

      else
      {
        sub_96DCC(v9, a2, a3, a4, 1);
        result = (v9 + 16);
        v4[3] = v9 + 16;
        v4[3] = v9 + 16;
      }
    }

    else
    {
      v11 = *(v5 + v10);
      if (v11 <= a3)
      {
        v11 = a3;
      }

      *(v5 + v10) = v11;
    }
  }

  return result;
}

BOOL sub_E6F808(uint64_t a1, int a2)
{
  v2 = 16 * *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = v2 + v3;
  v5 = v3 + 16;
  do
  {
    v6 = *(v5 - 16);
    result = v6 == a2;
    v8 = v6 == a2 || v5 == v4;
    v5 += 16;
  }

  while (!v8);
  return result;
}

BOOL sub_E6F844(void *a1, int a2)
{
  v2 = a1[3];
  v3 = a1[2] + 16 * a1[5];
  if (v2 == v3)
  {
    return 0;
  }

  v4 = v3 + 16;
  do
  {
    v5 = *(v4 - 16);
    result = v5 == a2;
    v7 = v5 == a2 || v4 == v2;
    v4 += 16;
  }

  while (!v7);
  return result;
}

uint64_t sub_E6F880(uint64_t a1, char *a2, int *a3, int *a4, char *a5)
{
  v5 = (*(a1 + 8) - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_1794();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v10 = sub_96DCC(16 * v5, *a2, *a3, *a4, *a5);
  v11 = v10 + 16;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v10 - v13;
  memcpy((v10 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_E6F98C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_E6F9A4(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 2;
  v9 = (a2 - 4);
  v10 = a2 - 6;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = (a2 - v11) >> 4;
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
      if (*(a2 - 4) < *(v11 + 12))
      {
        result = *v11;
        v160 = *v11;
        v75 = *(a2 - 2);
        *(v11 + 5) = *(a2 - 11);
        *v11 = v75;
        *(a2 - 11) = *(v160.n128_i64 + 5);
        *(a2 - 2) = v160.n128_u64[0];
      }

      return result;
    }

LABEL_9:
    if (v12 <= 23)
    {
      v81 = (v11 + 16);
      v83 = v11 == a2 || v81 == a2;
      if (a4)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v11;
          do
          {
            v87 = *(v85 + 28);
            v88 = *(v85 + 12);
            v85 = v81;
            if (v87 < v88)
            {
              v171 = *(v81 + 2);
              v163 = *v81;
              v89 = v84;
              do
              {
                v90 = v11 + v89;
                *(v90 + 16) = *(v11 + v89);
                *(v90 + 21) = *(v11 + v89 + 5);
                if (!v89)
                {
                  v86 = v11;
                  goto LABEL_124;
                }

                v89 -= 16;
              }

              while (v87 < *(v90 - 4));
              v86 = v11 + v89 + 16;
LABEL_124:
              *(v86 + 8) = v171;
              *v86 = v163;
              *(v86 + 12) = v87;
            }

            v81 = (v85 + 16);
            v84 += 16;
          }

          while ((v85 + 16) != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v124 = *(a1 + 28);
          v125 = *(a1 + 12);
          a1 = v81;
          if (v124 < v125)
          {
            v173 = *(v81 + 2);
            v167 = *v81;
            v126 = v81;
            do
            {
              v127 = v126;
              v128 = *(v126 - 2);
              v126 -= 2;
              *v127 = v128;
              *(v127 + 5) = *(v127 - 11);
            }

            while (v124 < *(v127 - 20));
            *(v126 + 2) = v173;
            *v126 = v167;
            *(v126 + 12) = v124;
          }

          v81 = (a1 + 16);
        }

        while ((a1 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v91 = (v12 - 2) >> 1;
        v92 = v91;
        do
        {
          if (v91 >= v92)
          {
            v94 = (2 * (v92 & 0xFFFFFFFFFFFFFFFLL)) | 1;
            v95 = v11 + 16 * v94;
            if (2 * (v92 & 0xFFFFFFFFFFFFFFFLL) + 2 < v12)
            {
              v96 = *(v95 + 12);
              v97 = *(v95 + 28);
              v95 += 16 * (v96 < v97);
              if (v96 < v97)
              {
                v94 = 2 * (v92 & 0xFFFFFFFFFFFFFFFLL) + 2;
              }
            }

            v98 = v11 + 16 * v92;
            v99 = *(v98 + 12);
            if (*(v95 + 12) >= v99)
            {
              v172 = *(v98 + 8);
              v164 = *v98;
              do
              {
                v100 = v98;
                v98 = v95;
                v101 = *v95;
                *(v100 + 5) = *(v98 + 5);
                *v100 = v101;
                if (v91 < v94)
                {
                  break;
                }

                v102 = (2 * v94) | 1;
                v95 = v11 + 16 * v102;
                v103 = 2 * v94 + 2;
                if (v103 < v12)
                {
                  v104 = *(v95 + 12);
                  v105 = *(v95 + 28);
                  v95 += 16 * (v104 < v105);
                  if (v104 < v105)
                  {
                    v102 = v103;
                  }
                }

                v94 = v102;
              }

              while (*(v95 + 12) >= v99);
              *(v98 + 8) = v172;
              *v98 = v164;
              *(v98 + 12) = v99;
            }
          }

          v93 = v92-- <= 0;
        }

        while (!v93);
        do
        {
          v106 = 0;
          result = *v11;
          v165 = *v11;
          v107 = v11;
          do
          {
            v113 = &v107[2 * v106];
            v111 = v113 + 2;
            v114 = (2 * v106) | 1;
            v106 = 2 * v106 + 2;
            if (v106 < v12)
            {
              v108 = *(v113 + 28);
              v109 = *(v113 + 44);
              v110 = v113 + 4;
              if (v108 >= v109)
              {
                v106 = v114;
              }

              else
              {
                v111 = v110;
              }
            }

            else
            {
              v106 = v114;
            }

            v112 = *v111;
            *(v107 + 5) = *(v111 + 5);
            *v107 = v112;
            v107 = v111;
          }

          while (v106 <= ((v12 - 2) >> 1));
          a2 -= 2;
          if (v111 == a2)
          {
            *(v111 + 5) = *(v165.n128_i64 + 5);
            *v111 = v165.n128_u64[0];
          }

          else
          {
            v115 = *a2;
            *(v111 + 5) = *(a2 + 5);
            *v111 = v115;
            *(a2 + 5) = *(v165.n128_i64 + 5);
            *a2 = v165.n128_u64[0];
            v116 = (v111 - v11 + 16) >> 4;
            v93 = v116 < 2;
            v117 = v116 - 2;
            if (!v93)
            {
              v118 = v117 >> 1;
              v119 = v11 + 16 * (v117 >> 1);
              v120 = *(v111 + 12);
              if (*(v119 + 12) < v120)
              {
                v136 = *(v111 + 2);
                v133 = *v111;
                do
                {
                  v121 = v111;
                  v111 = v119;
                  v122 = *v119;
                  *(v121 + 5) = *(v111 + 5);
                  *v121 = v122;
                  if (!v118)
                  {
                    break;
                  }

                  v118 = (v118 - 1) >> 1;
                  v119 = v11 + 16 * v118;
                }

                while (*(v119 + 12) < v120);
                *(v111 + 2) = v136;
                *v111 = v133;
                *(v111 + 12) = v120;
              }
            }
          }

          v93 = v12-- <= 2;
        }

        while (!v93);
      }

      return result;
    }

    v13 = v11 + 16 * (v12 >> 1);
    v14 = *(a2 - 4);
    if (v12 < 0x81)
    {
      v17 = *(v11 + 12);
      if (v17 < *(v13 + 12))
      {
        if (v14 < v17)
        {
          result = *v13;
          v138 = *v13;
          v19 = *v8;
          *(v13 + 5) = *(a2 - 11);
          *v13 = v19;
          goto LABEL_36;
        }

        result = *v13;
        v147 = *v13;
        v32 = *v11;
        *(v13 + 5) = *(v11 + 5);
        *v13 = v32;
        *(v11 + 5) = *(v147.n128_u64 + 5);
        *v11 = v147.n128_u64[0];
        if (*(a2 - 4) < *(v11 + 12))
        {
          result = *v11;
          v138 = *v11;
          v33 = *v8;
          *(v11 + 5) = *(a2 - 11);
          *v11 = v33;
LABEL_36:
          *(a2 - 11) = *(v138.n128_i64 + 5);
          *v8 = v138.n128_u64[0];
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v14 >= v17)
      {
        goto LABEL_37;
      }

      result = *v11;
      v141 = *v11;
      v22 = *v8;
      *(v11 + 5) = *(a2 - 11);
      *v11 = v22;
      *(a2 - 11) = *(v141.n128_i64 + 5);
      *v8 = v141.n128_u64[0];
      if (*(v11 + 12) >= *(v13 + 12))
      {
        goto LABEL_37;
      }

      result = *v13;
      v142 = *v13;
      v23 = *v11;
      *(v13 + 5) = *(v11 + 5);
      *v13 = v23;
      *(v11 + 5) = *(v142.n128_u64 + 5);
      *v11 = v142.n128_u64[0];
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v34 = *(v11 + 12);
      if (*(v11 - 4) < v34)
      {
        goto LABEL_62;
      }

      v135 = *(v11 + 8);
      v132 = *v11;
      v62 = *(v11 + 12);
      if (v62 >= *(a2 - 4))
      {
        v65 = v11 + 16;
        do
        {
          v11 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v66 = *(v65 + 12);
          v65 += 16;
        }

        while (v62 >= v66);
      }

      else
      {
        v63 = v11;
        do
        {
          v11 = v63 + 16;
          v64 = *(v63 + 28);
          v63 += 16;
        }

        while (v62 >= v64);
      }

      v67 = a2;
      if (v11 < a2)
      {
        v68 = a2;
        do
        {
          v67 = v68 - 2;
          v69 = *(v68 - 4);
          v68 -= 2;
        }

        while (v62 < v69);
      }

      while (v11 < v67)
      {
        result = *v11;
        v159 = *v11;
        v70 = *v67;
        *(v11 + 5) = *(v67 + 5);
        *v11 = v70;
        *(v67 + 5) = *(v159.n128_i64 + 5);
        *v67 = v159.n128_u64[0];
        do
        {
          v71 = *(v11 + 28);
          v11 += 16;
        }

        while (v62 >= v71);
        do
        {
          v72 = *(v67 - 4);
          v67 -= 2;
        }

        while (v62 < v72);
      }

      v73 = (v11 - 16);
      if (v11 - 16 != a1)
      {
        v74 = *v73;
        *(a1 + 5) = *(v11 - 11);
        *a1 = v74;
      }

      a4 = 0;
      *(v11 - 8) = v135;
      *v73 = v132;
      *(v11 - 4) = v62;
    }

    else
    {
      v15 = *(v13 + 12);
      if (v15 >= *(v11 + 12))
      {
        if (v14 < v15)
        {
          v139 = *v13;
          v20 = *v8;
          *(v13 + 5) = *(a2 - 11);
          *v13 = v20;
          *(a2 - 11) = *(v139.n128_i64 + 5);
          *v8 = v139.n128_u64[0];
          if (*(v13 + 12) < *(v11 + 12))
          {
            v140 = *v11;
            v21 = *v13;
            *(v11 + 5) = *(v13 + 5);
            *v11 = v21;
            *(v13 + 5) = *(v140.n128_u64 + 5);
            *v13 = v140.n128_u64[0];
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          v143 = *v11;
          v24 = *v13;
          *(v11 + 5) = *(v13 + 5);
          *v11 = v24;
          *(v13 + 5) = *(v143.n128_u64 + 5);
          *v13 = v143.n128_u64[0];
          if (*(a2 - 4) >= *(v13 + 12))
          {
            goto LABEL_28;
          }

          v137 = *v13;
          v25 = *v8;
          *(v13 + 5) = *(a2 - 11);
          *v13 = v25;
        }

        else
        {
          v137 = *v11;
          v16 = *v8;
          *(v11 + 5) = *(a2 - 11);
          *v11 = v16;
        }

        *(a2 - 11) = *(v137.n128_i64 + 5);
        *v8 = v137.n128_u64[0];
      }

LABEL_28:
      v26 = (v13 - 16);
      v27 = *(v13 - 4);
      v28 = *(a2 - 20);
      if (v27 >= *(v11 + 28))
      {
        if (v28 < v27)
        {
          v145 = *v26;
          v30 = *v9;
          *(v13 - 11) = *(a2 - 27);
          v26->n128_u64[0] = v30;
          *(a2 - 27) = *(v145.n128_i64 + 5);
          *v9 = v145.n128_u64[0];
          if (*(v13 - 4) < *(v11 + 28))
          {
            v146 = *(v11 + 16);
            v31 = v26->n128_u64[0];
            *(v11 + 21) = *(v13 - 11);
            *(v11 + 16) = v31;
            *(v13 - 11) = *(&v146 + 5);
            v26->n128_u64[0] = v146;
          }
        }
      }

      else
      {
        if (v28 >= v27)
        {
          v148 = *(v11 + 16);
          v35 = v26->n128_u64[0];
          *(v11 + 21) = *(v13 - 11);
          *(v11 + 16) = v35;
          *(v13 - 11) = *(&v148 + 5);
          v26->n128_u64[0] = v148;
          if (*(a2 - 20) >= *(v13 - 4))
          {
            goto LABEL_42;
          }

          v144 = *v26;
          v36 = *v9;
          *(v13 - 11) = *(a2 - 27);
          v26->n128_u64[0] = v36;
        }

        else
        {
          v144 = *(v11 + 16);
          v29 = *v9;
          *(v11 + 21) = *(a2 - 27);
          *(v11 + 16) = v29;
        }

        *(a2 - 27) = *(v144.n128_i64 + 5);
        *v9 = v144.n128_u64[0];
      }

LABEL_42:
      v37 = *(v13 + 28);
      v38 = *(a2 - 36);
      if (v37 >= *(v11 + 44))
      {
        if (v38 < v37)
        {
          v150 = *(v13 + 16);
          v40 = *v10;
          *(v13 + 21) = *(a2 - 43);
          *(v13 + 16) = v40;
          *(a2 - 43) = *(&v150 + 5);
          *v10 = v150;
          if (*(v13 + 28) < *(v11 + 44))
          {
            v151 = *(v11 + 32);
            v41 = *(v13 + 16);
            *(v11 + 37) = *(v13 + 21);
            *(v11 + 32) = v41;
            *(v13 + 21) = *(&v151 + 5);
            *(v13 + 16) = v151;
          }
        }
      }

      else
      {
        if (v38 >= v37)
        {
          v152 = *(v11 + 32);
          v42 = *(v13 + 16);
          *(v11 + 37) = *(v13 + 21);
          *(v11 + 32) = v42;
          *(v13 + 21) = *(&v152 + 5);
          *(v13 + 16) = v152;
          if (*(a2 - 36) >= HIBYTE(*(&v152 + 5)))
          {
            goto LABEL_51;
          }

          v149 = *(v13 + 16);
          v43 = *v10;
          *(v13 + 21) = *(a2 - 43);
          *(v13 + 16) = v43;
        }

        else
        {
          v149 = *(v11 + 32);
          v39 = *v10;
          *(v11 + 37) = *(a2 - 43);
          *(v11 + 32) = v39;
        }

        *(a2 - 43) = *(&v149 + 5);
        *v10 = v149;
      }

LABEL_51:
      v44 = *(v13 + 12);
      v45 = *(v13 + 28);
      if (v44 >= *(v13 - 4))
      {
        if (v45 < v44)
        {
          v154 = *v13;
          *v13 = *(v13 + 16);
          *(v13 + 5) = *(v13 + 21);
          *(v13 + 21) = *(v154.n128_u64 + 5);
          *(v13 + 16) = v154.n128_u64[0];
          if (*(v13 + 12) < *(v13 - 4))
          {
            v155 = *v26;
            v26->n128_u64[0] = *v13;
            *(v13 - 11) = *(v13 + 5);
            *(v13 + 5) = *(v155.n128_u64 + 5);
            *v13 = v155.n128_u64[0];
          }
        }
      }

      else
      {
        if (v45 >= v44)
        {
          v156 = *v26;
          v26->n128_u64[0] = *v13;
          *(v13 - 11) = *(v13 + 5);
          *(v13 + 5) = *(v156.n128_u64 + 5);
          *v13 = v156.n128_u64[0];
          if (*(v13 + 28) >= *(v13 + 12))
          {
            goto LABEL_60;
          }

          v153 = *v13;
          *v13 = *(v13 + 16);
          *(v13 + 5) = *(v13 + 21);
        }

        else
        {
          v153 = *v26;
          v26->n128_u64[0] = *(v13 + 16);
          *(v13 - 11) = *(v13 + 21);
        }

        *(v13 + 21) = *(v153.n128_u64 + 5);
        *(v13 + 16) = v153.n128_u64[0];
      }

LABEL_60:
      result = *v11;
      v157 = *v11;
      v46 = *v13;
      *(v11 + 5) = *(v13 + 5);
      *v11 = v46;
      *(v13 + 5) = *(v157.n128_u64 + 5);
      *v13 = v157.n128_u64[0];
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v34 = *(v11 + 12);
LABEL_62:
      v47 = 0;
      v134 = *(v11 + 8);
      v131 = *v11;
      do
      {
        v48 = *(v11 + v47 + 28);
        v47 += 16;
      }

      while (v48 < v34);
      v49 = v11 + v47;
      v50 = a2;
      if (v47 == 16)
      {
        v53 = a2;
        while (v49 < v53)
        {
          v51 = v53 - 2;
          v54 = *(v53 - 4);
          v53 -= 2;
          if (v54 < v34)
          {
            goto LABEL_70;
          }
        }

        v51 = v53;
        v11 = v49;
      }

      else
      {
        do
        {
          v51 = v50 - 2;
          v52 = *(v50 - 4);
          v50 -= 2;
        }

        while (v52 >= v34);
LABEL_70:
        v11 = v49;
        if (v49 < v51)
        {
          v55 = v51;
          do
          {
            v158 = *v11;
            v56 = *v55;
            *(v11 + 5) = *(v55 + 5);
            *v11 = v56;
            *(v55 + 5) = *(v158.n128_i64 + 5);
            *v55 = v158.n128_u64[0];
            do
            {
              v57 = *(v11 + 28);
              v11 += 16;
            }

            while (v57 < v34);
            do
            {
              v58 = *(v55 - 4);
              v55 -= 2;
            }

            while (v58 >= v34);
          }

          while (v11 < v55);
        }
      }

      v59 = (v11 - 16);
      if (v11 - 16 != a1)
      {
        v60 = *v59;
        *(a1 + 5) = *(v11 - 11);
        *a1 = v60;
      }

      *(v11 - 8) = v134;
      *v59 = v131;
      *(v11 - 4) = v34;
      if (v49 < v51)
      {
        goto LABEL_81;
      }

      v61 = sub_E70B40(a1, v11 - 16);
      if (sub_E70B40(v11, a2))
      {
        a2 = (v11 - 16);
        if (!v61)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v61)
      {
LABEL_81:
        sub_E6F9A4(a1, v11 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v79 = *(v11 + 28);
      v80 = *(v11 + 44);
      if (v79 >= *(v11 + 12))
      {
        if (v80 < v79)
        {
          result = *(v11 + 16);
          *(v11 + 16) = *(v11 + 32);
          *(v11 + 21) = *(v11 + 37);
          *(v11 + 32) = result.n128_u64[0];
          *(v11 + 37) = *&result >> 40;
          if (*(v11 + 28) < *(v11 + 12))
          {
            result = *v11;
            v166 = *v11;
            *v11 = *(v11 + 16);
            *(v11 + 5) = *(v11 + 21);
            *(v11 + 16) = v166.n128_u64[0];
            *(v11 + 21) = *(v166.n128_u64 + 5);
          }
        }
      }

      else
      {
        if (v80 < v79)
        {
          result = *v11;
          v162 = *v11;
          *v11 = *(v11 + 32);
          *(v11 + 5) = *(v11 + 37);
          goto LABEL_180;
        }

        result = *v11;
        v169 = *v11;
        *v11 = *(v11 + 16);
        *(v11 + 5) = *(v11 + 21);
        *(v11 + 16) = v169.n128_u64[0];
        *(v11 + 21) = *(v169.n128_u64 + 5);
        if (*(v11 + 44) < *(v11 + 28))
        {
          result = *(v11 + 16);
          v162 = result;
          *(v11 + 16) = *(v11 + 32);
          *(v11 + 21) = *(v11 + 37);
LABEL_180:
          *(v11 + 32) = v162.n128_u64[0];
          *(v11 + 37) = *(v162.n128_u64 + 5);
        }
      }

      if (*(a2 - 4) >= *(v11 + 44))
      {
        return result;
      }

      result = *(v11 + 32);
      v130 = *v8;
      *(v11 + 37) = *(a2 - 11);
      *(v11 + 32) = v130;
      *(a2 - 11) = *&result >> 40;
      *v8 = result.n128_u64[0];
      if (*(v11 + 44) >= *(v11 + 28))
      {
        return result;
      }

      result = *(v11 + 16);
      *(v11 + 16) = *(v11 + 32);
      *(v11 + 21) = *(v11 + 37);
      *(v11 + 32) = result.n128_u64[0];
      *(v11 + 37) = *&result >> 40;
LABEL_184:
      if (*(v11 + 28) < *(v11 + 12))
      {
        result = *v11;
        v170 = *v11;
        *v11 = *(v11 + 16);
        *(v11 + 5) = *(v11 + 21);
        *(v11 + 16) = v170.n128_u64[0];
        *(v11 + 21) = *(v170.n128_u64 + 5);
      }

      return result;
    }

    if (v12 == 5)
    {

      result.n128_u64[0] = sub_E708A8(v11, v11 + 16, (v11 + 32), (v11 + 48), (a2 - 2)).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v76 = *(v11 + 28);
  v77 = *(a2 - 4);
  if (v76 >= *(v11 + 12))
  {
    if (v77 >= v76)
    {
      return result;
    }

    result = *(v11 + 16);
    v123 = *v8;
    *(v11 + 21) = *(a2 - 11);
    *(v11 + 16) = v123;
    *(a2 - 11) = *&result >> 40;
    *v8 = result.n128_u64[0];
    goto LABEL_184;
  }

  if (v77 >= v76)
  {
    result = *v11;
    v168 = *v11;
    *v11 = *(v11 + 16);
    *(v11 + 5) = *(v11 + 21);
    *(v11 + 16) = v168.n128_u64[0];
    *(v11 + 21) = *(v168.n128_u64 + 5);
    if (*(a2 - 4) >= *(v11 + 28))
    {
      return result;
    }

    result = *(v11 + 16);
    v161 = result;
    v129 = *v8;
    *(v11 + 21) = *(a2 - 11);
    *(v11 + 16) = v129;
  }

  else
  {
    result = *v11;
    v161 = *v11;
    v78 = *v8;
    *(v11 + 5) = *(a2 - 11);
    *v11 = v78;
  }

  *(a2 - 11) = *(v161.n128_i64 + 5);
  *v8 = v161.n128_u64[0];
  return result;
}