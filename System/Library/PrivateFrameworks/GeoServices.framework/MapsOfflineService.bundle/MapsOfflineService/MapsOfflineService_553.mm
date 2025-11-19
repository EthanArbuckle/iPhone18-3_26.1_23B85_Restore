void sub_1F33BB4()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27F0798 = 0;
  unk_27F07A0 = 0;
  qword_27F07A8 = 0;
  sub_68678C(&qword_27F0798, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27F07B0 = 0;
  *algn_27F07B8 = 0;
  qword_27F07C0 = 0;
  sub_68678C(&qword_27F07B0, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27F07C8 = 0;
  unk_27F07D0 = 0;
  qword_27F07D8 = 0;
  sub_68678C(&qword_27F07C8, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1F290F8();
}

void sub_1F33CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1F33D3C(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = 0x4EC4EC4EC4EC4EC5 * ((v6 - v5) >> 3);
  if (v8 > 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    sub_1F342A0(&v28, 0, v5, v6, v8);
    v9 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v29 - v28) >> 3));
    *&v24 = sub_1F33D00;
    if (v29 == v28)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    sub_1F345EC(v28, v29, &v24, v10, 1);
    v26 = 0uLL;
    v27 = 0;
    while (1)
    {
      while (1)
      {
        v12 = v28;
        v11 = v29;
        if (0x4EC4EC4EC4EC4EC5 * ((v11 - v12) >> 3) < (sub_4D27AC(a2) + 1))
        {
          *a3 = 0;
          a3[1] = 0;
          a3[2] = 0;
          goto LABEL_27;
        }

        v13 = v29;
        v14 = 0x4EC4EC4EC4EC4EC5 * ((v29 - v28) >> 3);
        if (v14 >= 3)
        {
          break;
        }

        sub_1A2F0B4(&v28, (v29 - 13));
        sub_20A7B08(&v28, &v24);
        if (v24 != *(&v24 + 1))
        {
          sub_1F36580(&v26, *(&v26 + 1), v24, *(&v24 + 1), 0x8E38E38E38E38E39 * ((*(&v24 + 1) - v24) >> 3));
          *a3 = v26;
          a3[2] = v27;
          v27 = 0;
          v26 = 0uLL;
          v22 = &v24;
          sub_19E2CA4(&v22);
          goto LABEL_27;
        }

        v22 = &v24;
        sub_19E2CA4(&v22);
      }

      if (v14 >= 1)
      {
        break;
      }

LABEL_23:
      sub_1A2F0B4(&v28, (v13 - 13));
    }

    v15 = v14 & 0x7FFFFFFF;
    while (1)
    {
      v24 = 0uLL;
      v25 = 0;
      v16 = v28;
      v17 = v29;
      if (v29 != v28)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        do
        {
          if (v15 - 1 != v20)
          {
            if (v19 >= v25)
            {
              v19 = sub_1F36434(&v24, &v16[v18]);
            }

            else
            {
              sub_1F34558(&v24, v19, &v16[v18]);
              v19 += 104;
            }

            *(&v24 + 1) = v19;
            v16 = v28;
            v17 = v29;
          }

          ++v20;
          v18 += 104;
        }

        while (0x4EC4EC4EC4EC4EC5 * ((v17 - v16) >> 3) > v20);
      }

      sub_20A7B08(&v24, &v22);
      if (v22 != v23)
      {
        break;
      }

      v31 = &v22;
      sub_19E2CA4(&v31);
      v22 = &v24;
      sub_1A2F060(&v22);
      if (v15-- < 2)
      {
        v13 = v29;
        goto LABEL_23;
      }
    }

    sub_1F36580(&v26, *(&v26 + 1), v22, v23, 0x8E38E38E38E38E39 * (v23 - v22));
    *a3 = v26;
    a3[2] = v27;
    v27 = 0;
    v26 = 0uLL;
    v31 = &v22;
    sub_19E2CA4(&v31);
    v22 = &v24;
    sub_1A2F060(&v22);
LABEL_27:
    *&v24 = &v26;
    sub_19E2CA4(&v24);
    *&v26 = &v28;
    sub_1A2F060(&v26);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1F34060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a9 = &a13;
  sub_19E2CA4(&a9);
  *(v21 - 88) = &a17;
  sub_19E2CA4((v21 - 88));
  a17 = &a21;
  sub_1A2F060(&a17);
  _Unwind_Resume(a1);
}

void sub_1F34104(uint64_t a1@<X2>, uint64_t a2@<X3>, __int128 **a3@<X8>)
{
  v6 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  if (v6 >= sub_4D27AC(a2))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    sub_1F342A0(&v9, 0, *a1, *(a1 + 8), 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3));
    while (1)
    {
      v8 = v9;
      v7 = v10;
      if (0x4EC4EC4EC4EC4EC5 * ((v7 - v8) >> 3) < (sub_4D27AC(a2) + 1))
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        goto LABEL_9;
      }

      sub_1A2F0B4(&v9, v10 - 104);
      sub_20A7B08(&v9, a3);
      if (*a3 != a3[1])
      {
        break;
      }

      v12 = a3;
      sub_19E2CA4(&v12);
    }

    sub_1A9BF64(a2, -991146299 * ((v10 - v9) >> 3));
LABEL_9:
    v12 = &v9;
    sub_1A2F060(&v12);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1F3423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_19E2CA4(&a12);
  a12 = &a9;
  sub_1A2F060(&a12);
  _Unwind_Resume(a1);
}

std::string *sub_1F342A0(void *a1, uint64_t a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v9 - v10) >> 3) >= a5)
    {
      v16 = v10 - a2;
      if (0x4EC4EC4EC4EC4EC5 * ((v10 - a2) >> 3) >= a5)
      {
        v18 = 104 * a5;
        sub_1E12A58(a1, a2, a1[1], a2 + 104 * a5);
        v17 = (v7 + v18);
      }

      else
      {
        a1[1] = sub_1F344AC(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_1E12A58(a1, v5, v10, v5 + 104 * a5);
        v17 = (v7 + v16);
      }

      sub_1E12E78(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x4EC4EC4EC4EC4EC5 * ((v10 - *a1) >> 3);
    if (v12 > 0x276276276276276)
    {
      sub_1794();
    }

    v13 = a2 - v11;
    v14 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x13B13B13B13B13BLL)
    {
      v15 = 0x276276276276276;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      sub_1A2EDC8(a1, v15);
    }

    v19 = 8 * (v13 >> 3);
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = 104 * a5;
    v21 = v19 + 104 * a5;
    do
    {
      sub_1F34558(v26, v19, v7);
      v19 += 104;
      v7 = (v7 + 104);
      v20 -= 104;
    }

    while (v20);
    v24 = v21;
    v5 = sub_1E12C00(a1, v23, v5);
    sub_1A2EFE0(v23);
  }

  return v5;
}

uint64_t sub_1F344AC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1F34558(a1, v4, v6);
      v6 = (v6 + 104);
      v4 = v12 + 104;
      v12 += 104;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_1A2EF54(v9);
  return v4;
}

uint64_t sub_1F34558(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_325C(a2, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v5;
  }

  sub_19E3830(a2 + 24, a3 + 24);
  return sub_19E3830(a2 + 64, (a3 + 4));
}

void sub_1F345BC(_Unwind_Exception *a1)
{
  sub_1B11224(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_1F345EC(__int128 *a1, void **a2, uint64_t (**a3)(__int128 *, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 13);
  v49 = (a2 - 39);
  v50 = (a2 - 26);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        if ((*a3)((a2 - 13), v10))
        {
LABEL_82:
          v45 = v10;
LABEL_83:
          v48 = v9;
LABEL_84:

          sub_1F35A94(v45, v48);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      sub_1F34CC0(v10, (v10 + 104), (v10 + 208), (a2 - 13), a3);
      return;
    }

    if (v14 == 5)
    {
      sub_1F34CC0(v10, (v10 + 104), (v10 + 208), (v10 + 312), a3);
      if (!(*a3)((a2 - 13), v10 + 312))
      {
        return;
      }

      sub_1F35A94(v10 + 312, (a2 - 13));
      if (!(*a3)((v10 + 312), v10 + 208))
      {
        return;
      }

      sub_1F35A94(v10 + 208, (v10 + 312));
      if (!(*a3)((v10 + 208), v10 + 104))
      {
        return;
      }

      v46 = v10 + 104;
      v47 = (v10 + 208);
LABEL_100:
      sub_1F35A94(v46, v47);
      if ((*a3)((v10 + 104), v10))
      {
        v48 = (v10 + 104);
        v45 = v10;
        goto LABEL_84;
      }

      return;
    }

LABEL_10:
    if (v13 <= 2495)
    {
      if (a5)
      {

        sub_1F34E10(v10, a2, a3);
      }

      else
      {

        sub_1F35000(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_1F35BD4(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = (v10 + 104 * (v14 >> 1));
    v17 = *a3;
    if (v13 >= 0x3401)
    {
      v18 = v17(v16, v10);
      v19 = (*a3)((a2 - 13), v16);
      if (v18)
      {
        if (v19)
        {
          v20 = a1;
          goto LABEL_27;
        }

        sub_1F35A94(a1, v16);
        if ((*a3)((a2 - 13), v16))
        {
          v20 = v16;
LABEL_27:
          v24 = (a2 - 13);
LABEL_28:
          sub_1F35A94(v20, v24);
        }
      }

      else if (v19)
      {
        sub_1F35A94(v16, (a2 - 13));
        if ((*a3)(v16, a1))
        {
          v20 = a1;
          v24 = v16;
          goto LABEL_28;
        }
      }

      v26 = a1 + 104 * v15 - 104;
      v27 = (*a3)(v26, a1 + 104);
      v28 = (*a3)(v50, v26);
      if (v27)
      {
        if (v28)
        {
          v29 = a1 + 104;
          goto LABEL_40;
        }

        sub_1F35A94(a1 + 104, (a1 + 104 * v15 - 104));
        if ((*a3)(v50, a1 + 104 * v15 - 104))
        {
          v29 = a1 + 104 * v15 - 104;
LABEL_40:
          v30 = (a2 - 26);
LABEL_41:
          sub_1F35A94(v29, v30);
        }
      }

      else if (v28)
      {
        sub_1F35A94(a1 + 104 * v15 - 104, v50);
        if ((*a3)((a1 + 104 * v15 - 104), a1 + 104))
        {
          v29 = a1 + 104;
          v30 = (a1 + 104 * v15 - 104);
          goto LABEL_41;
        }
      }

      v31 = a1 + 104 * v15;
      v32 = (*a3)((v31 + 104), (a1 + 13));
      v33 = (*a3)(v49, (v31 + 104));
      if (v32)
      {
        if (v33)
        {
          v34 = (a1 + 13);
          goto LABEL_50;
        }

        sub_1F35A94((a1 + 13), (v31 + 104));
        if ((*a3)(v49, (v31 + 104)))
        {
          v34 = (v31 + 104);
LABEL_50:
          v35 = (a2 - 39);
LABEL_51:
          sub_1F35A94(v34, v35);
        }
      }

      else if (v33)
      {
        sub_1F35A94((v31 + 104), v49);
        if ((*a3)((v31 + 104), (a1 + 13)))
        {
          v34 = (a1 + 13);
          v35 = (v31 + 104);
          goto LABEL_51;
        }
      }

      v36 = (*a3)(v16, v26);
      v37 = (*a3)((v31 + 104), v16);
      if (v36)
      {
        if (v37)
        {
          v38 = (v31 + 104);
          v39 = v26;
          goto LABEL_60;
        }

        sub_1F35A94(v26, v16);
        if ((*a3)((v31 + 104), v16))
        {
          v38 = (v31 + 104);
          v39 = v16;
LABEL_60:
          sub_1F35A94(v39, v38);
        }
      }

      else if (v37)
      {
        sub_1F35A94(v16, (v31 + 104));
        if ((*a3)(v16, v26))
        {
          v39 = v26;
          v38 = v16;
          goto LABEL_60;
        }
      }

      v23 = a1;
      v25 = v16;
LABEL_62:
      sub_1F35A94(v23, v25);
      goto LABEL_63;
    }

    v21 = v17(v10, v16);
    v22 = (*a3)((a2 - 13), a1);
    if (v21)
    {
      if (v22)
      {
        v23 = v16;
LABEL_37:
        v25 = (a2 - 13);
        goto LABEL_62;
      }

      sub_1F35A94(v16, a1);
      if ((*a3)((a2 - 13), a1))
      {
        v23 = a1;
        goto LABEL_37;
      }
    }

    else if (v22)
    {
      sub_1F35A94(a1, (a2 - 13));
      if ((*a3)(a1, v16))
      {
        v23 = v16;
        v25 = a1;
        goto LABEL_62;
      }
    }

LABEL_63:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 104), a1) & 1) == 0)
    {
      v10 = sub_1F351C0(a1, a2, a3);
      goto LABEL_70;
    }

    v40 = sub_1F35400(a1, a2, a3);
    if ((v41 & 1) == 0)
    {
      goto LABEL_68;
    }

    v42 = sub_1F3564C(a1, v40, a3);
    v10 = v40 + 104;
    if (sub_1F3564C((v40 + 104), a2, a3))
    {
      a4 = -v12;
      a2 = v40;
      if (v42)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v42)
    {
LABEL_68:
      sub_1F345EC(a1, v40, a3, -v12, a5 & 1);
      v10 = v40 + 104;
LABEL_70:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v43 = (*a3)((v10 + 104), v10);
  v44 = (*a3)(v9, v10 + 104);
  if ((v43 & 1) == 0)
  {
    if (!v44)
    {
      return;
    }

    v46 = v10 + 104;
    v47 = v9;
    goto LABEL_100;
  }

  if (v44)
  {
    goto LABEL_82;
  }

  sub_1F35A94(v10, (v10 + 104));
  if ((*a3)(v9, v10 + 104))
  {
    v45 = v10 + 104;
    goto LABEL_83;
  }
}

void sub_1F34CC0(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t (**a5)(__int128 *, uint64_t))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    sub_1F35A94(a1, a2);
    if ((*a5)(a3, a2))
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_1F35A94(a2, a3);
    if ((*a5)(a2, a1))
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      sub_1F35A94(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    sub_1F35A94(a3, a4);
    if ((*a5)(a3, a2))
    {
      sub_1F35A94(a2, a3);
      if ((*a5)(a2, a1))
      {

        sub_1F35A94(a1, a2);
      }
    }
  }
}

void sub_1F34E10(uint64_t a1, void **a2, uint64_t (**a3)(void **, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 104);
    if ((a1 + 104) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          *__p = *v9;
          v19 = v9[2];
          v9[1] = 0;
          v9[2] = 0;
          *v9 = 0;
          v10 = *(v8 + 144);
          v20[0] = *(v8 + 128);
          v20[1] = v10;
          v21 = *(v8 + 160);
          sub_1B10CDC(v8 + 128, 0);
          v11 = *(v8 + 184);
          v22[0] = *(v8 + 168);
          v22[1] = v11;
          v23 = *(v8 + 200);
          sub_1B10CDC(v8 + 168, 0);
          v12 = v7;
          while (1)
          {
            v13 = v12;
            v14 = a1 + v12;
            if (*(a1 + v12 + 127) < 0)
            {
              operator delete(*(v14 + 104));
            }

            *(v14 + 104) = *v14;
            *(v14 + 120) = *(v14 + 16);
            *(v14 + 23) = 0;
            *v14 = 0;
            sub_19E3C78(v14 + 128, (v14 + 24));
            sub_19E3C78(v14 + 168, (v14 + 64));
            if (!v13)
            {
              break;
            }

            v15 = (*a3)(__p, a1 + v13 - 104);
            v12 = v13 - 104;
            if ((v15 & 1) == 0)
            {
              v16 = a1 + v13;
              goto LABEL_12;
            }
          }

          v16 = a1;
LABEL_12:
          if (*(v16 + 23) < 0)
          {
            operator delete(*v16);
          }

          v17 = a1 + v13;
          *v16 = *__p;
          *(v16 + 16) = v19;
          HIBYTE(v19) = 0;
          LOBYTE(__p[0]) = 0;
          sub_19E3C78(v17 + 24, v20);
          sub_19E3C78(v17 + 64, v22);
          sub_1B11224(v22);
          sub_1B11224(v20);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v5 = v9 + 13;
        v7 += 104;
        v8 = v9;
      }

      while (v9 + 13 != a2);
    }
  }
}

void sub_1F35000(void **a1, void **a2, uint64_t (**a3)(void **, void **))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 13;
    if (a1 + 13 != a2)
    {
      v7 = a1 - 13;
      do
      {
        v8 = v5;
        if ((*a3)(v5, v4))
        {
          *__p = *v8;
          v14 = v8[2];
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v9 = *(v4 + 9);
          v15[0] = *(v4 + 8);
          v15[1] = v9;
          v16 = v4[20];
          sub_1B10CDC(v4 + 16, 0);
          v10 = *(v4 + 23);
          v17[0] = *(v4 + 21);
          v17[1] = v10;
          v18 = v4[25];
          sub_1B10CDC(v4 + 21, 0);
          v11 = v7;
          do
          {
            if (*(v11 + 231) < 0)
            {
              operator delete(v11[26]);
            }

            *(v11 + 13) = *(v11 + 13);
            v11[28] = v11[15];
            *(v11 + 127) = 0;
            *(v11 + 104) = 0;
            sub_19E3C78((v11 + 29), v11 + 8);
            sub_19E3C78((v11 + 34), (v11 + 21));
            v12 = (*a3)(__p, v11);
            v11 -= 13;
          }

          while ((v12 & 1) != 0);
          if (*(v11 + 231) < 0)
          {
            operator delete(v11[26]);
          }

          *(v11 + 13) = *__p;
          v11[28] = v14;
          HIBYTE(v14) = 0;
          LOBYTE(__p[0]) = 0;
          sub_19E3C78((v11 + 29), v15);
          sub_19E3C78((v11 + 34), v17);
          sub_1B11224(v17);
          sub_1B11224(v15);
          if (SHIBYTE(v14) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v5 = v8 + 13;
        v7 += 13;
        v4 = v8;
      }

      while (v8 + 13 != a2);
    }
  }
}

unint64_t sub_1F351C0(unint64_t a1, __int128 *a2, uint64_t (**a3)(void **, unint64_t))
{
  *__p = *a1;
  v15 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v16[0] = *(a1 + 24);
  v16[1] = *(a1 + 40);
  v17 = *(a1 + 56);
  sub_1B10CDC(a1 + 24, 0);
  v6 = *(a1 + 80);
  v18[0] = *(a1 + 64);
  v18[1] = v6;
  v19 = *(a1 + 96);
  sub_1B10CDC(a1 + 64, 0);
  if ((*a3)(__p, a2 - 104))
  {
    v7 = a1;
    do
    {
      v7 += 104;
    }

    while (((*a3)(__p, v7) & 1) == 0);
  }

  else
  {
    v8 = a1 + 104;
    do
    {
      v7 = v8;
      if (v8 >= a2)
      {
        break;
      }

      v9 = (*a3)(__p, v8);
      v8 = v7 + 104;
    }

    while (!v9);
  }

  if (v7 < a2)
  {
    do
    {
      a2 = (a2 - 104);
    }

    while (((*a3)(__p, a2) & 1) != 0);
  }

  while (v7 < a2)
  {
    sub_1F35A94(v7, a2);
    do
    {
      v7 += 104;
    }

    while (!(*a3)(__p, v7));
    do
    {
      a2 = (a2 - 104);
    }

    while (((*a3)(__p, a2) & 1) != 0);
  }

  v10 = (v7 - 104);
  if (v7 - 104 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v11 = *v10;
    *(a1 + 16) = *(v7 - 88);
    *a1 = v11;
    *(v7 - 81) = 0;
    *(v7 - 104) = 0;
    sub_19E3C78(a1 + 24, (v7 - 80));
    sub_19E3C78(a1 + 64, (v7 - 40));
  }

  if (*(v7 - 81) < 0)
  {
    operator delete(*v10);
  }

  v12 = *__p;
  *(v7 - 88) = v15;
  *v10 = v12;
  HIBYTE(v15) = 0;
  LOBYTE(__p[0]) = 0;
  sub_19E3C78(v7 - 80, v16);
  sub_19E3C78(v7 - 40, v18);
  sub_1B11224(v18);
  sub_1B11224(v16);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

unint64_t sub_1F35400(uint64_t a1, __int128 *a2, uint64_t (**a3)(uint64_t, void **))
{
  *__p = *a1;
  v17 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v18[0] = *(a1 + 24);
  v18[1] = *(a1 + 40);
  v19 = *(a1 + 56);
  sub_1B10CDC(a1 + 24, 0);
  v6 = *(a1 + 80);
  v20[0] = *(a1 + 64);
  v20[1] = v6;
  v21 = *(a1 + 96);
  sub_1B10CDC(a1 + 64, 0);
  v7 = 0;
  do
  {
    v8 = (*a3)(a1 + v7 + 104, __p);
    v7 += 104;
  }

  while ((v8 & 1) != 0);
  v9 = a1 + v7;
  if (v7 == 104)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 = (a2 - 104);
    }

    while (((*a3)(a2, __p) & 1) == 0);
  }

  else
  {
    do
    {
      a2 = (a2 - 104);
    }

    while (!(*a3)(a2, __p));
  }

  v10 = a1 + v7;
  if (v9 < a2)
  {
    v11 = a2;
    do
    {
      sub_1F35A94(v10, v11);
      do
      {
        v10 += 104;
      }

      while (((*a3)(v10, __p) & 1) != 0);
      do
      {
        v11 = (v11 - 104);
      }

      while (!(*a3)(v11, __p));
    }

    while (v10 < v11);
  }

  v12 = (v10 - 104);
  if (v10 - 104 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    *(a1 + 16) = *(v10 - 88);
    *a1 = v13;
    *(v10 - 81) = 0;
    *(v10 - 104) = 0;
    sub_19E3C78(a1 + 24, (v10 - 80));
    sub_19E3C78(a1 + 64, (v10 - 40));
  }

  if (*(v10 - 81) < 0)
  {
    operator delete(*v12);
  }

  v14 = *__p;
  *(v10 - 88) = v17;
  *v12 = v14;
  HIBYTE(v17) = 0;
  LOBYTE(__p[0]) = 0;
  sub_19E3C78(v10 - 80, v18);
  sub_19E3C78(v10 - 40, v20);
  sub_1B11224(v20);
  sub_1B11224(v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  return v10 - 104;
}

BOOL sub_1F3564C(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  v6 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v12 = (a2 - 104);
        v13 = (*a3)((a1 + 104), a1);
        v14 = (*a3)(v12, a1 + 104);
        if (v13)
        {
          if (v14)
          {
            v7 = a1;
          }

          else
          {
            sub_1F35A94(a1, (a1 + 104));
            if (!(*a3)(v12, a1 + 104))
            {
              return 1;
            }

            v7 = a1 + 104;
          }

          v8 = v12;
          goto LABEL_30;
        }

        if (!v14)
        {
          return 1;
        }

        v10 = a1 + 104;
        v11 = v12;
        break;
      case 4:
        sub_1F34CC0(a1, (a1 + 104), a1 + 13, (a2 - 104), a3);
        return 1;
      case 5:
        v9 = (a2 - 104);
        sub_1F34CC0(a1, (a1 + 104), a1 + 13, (a1 + 312), a3);
        if (!(*a3)(v9, a1 + 312))
        {
          return 1;
        }

        sub_1F35A94(a1 + 312, v9);
        if (!(*a3)((a1 + 312), (a1 + 13)))
        {
          return 1;
        }

        sub_1F35A94((a1 + 13), (a1 + 312));
        if (!(*a3)(a1 + 13, a1 + 104))
        {
          return 1;
        }

        v10 = a1 + 104;
        v11 = a1 + 13;
        break;
      default:
        goto LABEL_16;
    }

    sub_1F35A94(v10, v11);
    if ((*a3)((a1 + 104), a1))
    {
      v8 = (a1 + 104);
      v7 = a1;
      goto LABEL_30;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)((a2 - 104), a1))
    {
      v7 = a1;
      v8 = (a2 - 104);
LABEL_30:
      sub_1F35A94(v7, v8);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v15 = a1 + 13;
  v16 = (*a3)((a1 + 104), a1);
  v17 = (*a3)(a1 + 13, a1 + 104);
  if (v16)
  {
    if (v17)
    {
      v18 = a1;
    }

    else
    {
      sub_1F35A94(a1, (a1 + 104));
      if (!(*a3)(a1 + 13, a1 + 104))
      {
        goto LABEL_35;
      }

      v18 = a1 + 104;
    }

    v19 = a1 + 13;
    goto LABEL_34;
  }

  if (v17)
  {
    sub_1F35A94(a1 + 104, a1 + 13);
    if ((*a3)((a1 + 104), a1))
    {
      v19 = (a1 + 104);
      v18 = a1;
LABEL_34:
      sub_1F35A94(v18, v19);
    }
  }

LABEL_35:
  v20 = (a1 + 312);
  if ((a1 + 312) == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if ((*a3)(v20, v15))
    {
      *__p = *v20;
      v33 = *(v20 + 2);
      *(v20 + 1) = 0;
      *(v20 + 2) = 0;
      *v20 = 0;
      v34[0] = *(v20 + 24);
      v34[1] = *(v20 + 40);
      v35 = *(v20 + 7);
      sub_1B10CDC(v20 + 24, 0);
      v23 = v20[5];
      v36[0] = v20[4];
      v36[1] = v23;
      v37 = *(v20 + 12);
      sub_1B10CDC(v20 + 4, 0);
      v24 = v21;
      while (1)
      {
        v25 = v24;
        v26 = a1 + v24;
        v27 = a1 + v24 + 312;
        if (*(a1 + v24 + 335) < 0)
        {
          operator delete(*v27);
        }

        *v27 = *(v26 + 13);
        *(v27 + 16) = *(v26 + 28);
        v26[231] = 0;
        v26[208] = 0;
        sub_19E3C78((v26 + 336), (v26 + 232));
        sub_19E3C78((v26 + 376), v26 + 17);
        if (v25 == -208)
        {
          break;
        }

        v28 = (*a3)(__p, a1 + v25 + 104);
        v24 = v25 - 104;
        if ((v28 & 1) == 0)
        {
          v29 = a1 + v24 + 312;
          goto LABEL_45;
        }
      }

      v29 = a1;
LABEL_45:
      if (*(v29 + 23) < 0)
      {
        operator delete(*v29);
      }

      v30 = a1 + v25;
      *v29 = *__p;
      *(v29 + 16) = v33;
      HIBYTE(v33) = 0;
      LOBYTE(__p[0]) = 0;
      sub_19E3C78((v30 + 232), v34);
      sub_19E3C78((v30 + 272), v36);
      sub_1B11224(v36);
      sub_1B11224(v34);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p[0]);
      }

      if (++v22 == 8)
      {
        return (v20 + 104) == a2;
      }
    }

    v15 = v20;
    v21 += 104;
    v20 = (v20 + 104);
    if (v20 == a2)
    {
      return 1;
    }
  }
}

void sub_1F35A94(uint64_t a1, __int128 *a2)
{
  *__p = *a1;
  v7 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v8[0] = *(a1 + 24);
  v8[1] = *(a1 + 40);
  v9 = *(a1 + 56);
  sub_1B10CDC(a1 + 24, 0);
  v4 = *(a1 + 80);
  v10[0] = *(a1 + 64);
  v10[1] = v4;
  v11 = *(a1 + 96);
  sub_1B10CDC(a1 + 64, 0);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_19E3C78(a1 + 24, (a2 + 24));
  sub_19E3C78(a1 + 64, a2 + 4);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *__p;
  *(a2 + 2) = v7;
  sub_19E3C78(a2 + 24, v8);
  sub_19E3C78((a2 + 4), v10);
  sub_1B11224(v10);
  sub_1B11224(v8);
}

uint64_t sub_1F35BD4(__int128 *a1, __int128 *a2, uint64_t a3, unsigned int (**a4)(int64_t, uint64_t))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 105)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 104 * v10);
      do
      {
        sub_1F35D10(a1, a4, v9, v12);
        v12 = (v12 - 104);
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if ((*a4)(v13, a1))
        {
          sub_1F35A94(v13, a1);
          sub_1F35D10(a1, a4, v9, a1);
        }

        v13 += 104;
      }

      while (v13 != a3);
    }

    if (v8 >= 105)
    {
      v14 = 0x4EC4EC4EC4EC4EC5 * (v8 >> 3);
      do
      {
        sub_1F35F74(a1, v6, a4, v14);
        v6 -= 104;
      }

      while (v14-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_1F35D10(uint64_t a1, unsigned int (**a2)(int64_t, uint64_t), uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x4EC4EC4EC4EC4EC5 * ((a4 - a1) >> 3))
    {
      v10 = (0x9D89D89D89D89D8ALL * ((a4 - a1) >> 3)) | 1;
      v11 = (a1 + 104 * v10);
      v12 = 0x9D89D89D89D89D8ALL * ((a4 - a1) >> 3) + 2;
      if (v12 < a3 && (*a2)(a1 + 104 * v10, v11 + 104))
      {
        v11 = (v11 + 104);
        v10 = v12;
      }

      if (((*a2)(v11, v5) & 1) == 0)
      {
        *__p = *v5;
        v19 = *(v5 + 2);
        *(v5 + 1) = 0;
        *(v5 + 2) = 0;
        *v5 = 0;
        v20[0] = *(v5 + 24);
        v20[1] = *(v5 + 40);
        v21 = *(v5 + 7);
        sub_1B10CDC(v5 + 24, 0);
        v13 = v5[5];
        v22[0] = v5[4];
        v22[1] = v13;
        v23 = *(v5 + 12);
        sub_1B10CDC(v5 + 4, 0);
        do
        {
          v14 = v11;
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          v15 = *v11;
          *(v5 + 2) = *(v11 + 2);
          *v5 = v15;
          *(v11 + 23) = 0;
          *v11 = 0;
          sub_19E3C78(v5 + 24, (v11 + 24));
          sub_19E3C78((v5 + 4), v11 + 4);
          if (v7 < v10)
          {
            break;
          }

          v16 = (2 * v10) | 1;
          v11 = (a1 + 104 * v16);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v16;
          }

          else if ((*a2)(a1 + 104 * v16, v11 + 104))
          {
            v11 = (v11 + 104);
          }

          else
          {
            v10 = v16;
          }

          v5 = v14;
        }

        while (!(*a2)(v11, __p));
        if (*(v14 + 23) < 0)
        {
          operator delete(*v14);
        }

        v17 = *__p;
        *(v14 + 2) = v19;
        *v14 = v17;
        HIBYTE(v19) = 0;
        LOBYTE(__p[0]) = 0;
        sub_19E3C78(v14 + 24, v20);
        sub_19E3C78((v14 + 4), v22);
        sub_1B11224(v22);
        sub_1B11224(v20);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_1F35F74(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    __p = *a1;
    v16 = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v17[0] = *(a1 + 24);
    v17[1] = *(a1 + 40);
    v18 = *(a1 + 56);
    sub_1B10CDC(a1 + 24, 0);
    v8 = *(a1 + 80);
    v19[0] = *(a1 + 64);
    v19[1] = v8;
    v20 = *(a1 + 96);
    sub_1B10CDC(a1 + 64, 0);
    v9 = sub_1F36180(a1, a3, a4);
    v10 = v9;
    v11 = (a2 - 104);
    v12 = *(v9 + 23);
    if (v9 == (a2 - 104))
    {
      if (v12 < 0)
      {
        operator delete(*v9);
      }

      *(v10 + 2) = v16;
      *v10 = __p;
      sub_19E3C78(v10 + 24, v17);
      sub_19E3C78((v10 + 4), v19);
    }

    else
    {
      if (v12 < 0)
      {
        operator delete(*v9);
      }

      v13 = *v11;
      *(v10 + 2) = *(a2 - 88);
      *v10 = v13;
      *(a2 - 81) = 0;
      *(a2 - 104) = 0;
      sub_19E3C78(v10 + 24, (a2 - 80));
      sub_19E3C78((v10 + 4), (a2 - 40));
      v14 = v10 + 104;
      if (*(a2 - 81) < 0)
      {
        operator delete(*v11);
      }

      *v11 = __p;
      *(a2 - 88) = v16;
      sub_19E3C78(a2 - 80, v17);
      sub_19E3C78(a2 - 40, v19);
      sub_1F36270(a1, v14, a3, 0x4EC4EC4EC4EC4EC5 * ((v14 - a1) >> 3));
    }

    sub_1B11224(v19);
    sub_1B11224(v17);
  }
}

__int128 *sub_1F36180(__int128 *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 104 * v6;
    v9 = (v8 + 104);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = (v8 + 208);
      if ((*a2)(v8 + 104, v8 + 208))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    sub_19E3C78(a1 + 24, (v9 + 24));
    sub_19E3C78((a1 + 4), v9 + 4);
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_1F36270(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, void **), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 104 * (v4 >> 1));
    v10 = (a2 - 104);
    if ((*a3)(v9, (a2 - 104)))
    {
      *__p = *v10;
      v16 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      v11 = *(a2 - 64);
      v17[0] = *(a2 - 80);
      v17[1] = v11;
      v18 = *(a2 - 48);
      sub_1B10CDC(a2 - 80, 0);
      v12 = *(a2 - 24);
      v19[0] = *(a2 - 40);
      v19[1] = v12;
      v20 = *(a2 - 8);
      sub_1B10CDC(a2 - 40, 0);
      do
      {
        v13 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v14 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v14;
        *(v9 + 23) = 0;
        *v9 = 0;
        sub_19E3C78(v10 + 24, (v9 + 24));
        sub_19E3C78((v10 + 4), v9 + 4);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 104 * v8);
        v10 = v13;
      }

      while (((*a3)(v9, __p) & 1) != 0);
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      *v13 = *__p;
      *(v13 + 2) = v16;
      HIBYTE(v16) = 0;
      LOBYTE(__p[0]) = 0;
      sub_19E3C78(v13 + 24, v17);
      sub_19E3C78((v13 + 4), v19);
      sub_1B11224(v19);
      sub_1B11224(v17);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

uint64_t sub_1F36434(uint64_t a1, __int128 *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1A2EDC8(a1, v6);
  }

  v13 = 0;
  v14 = 104 * v2;
  sub_1F34558(a1, 104 * v2, a2);
  v15 = (104 * v2 + 104);
  v7 = *(a1 + 8);
  v8 = 104 * v2 + *a1 - v7;
  sub_1A2EE24(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1A2EFE0(&v13);
  return v12;
}

void sub_1F3656C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1A2EFE0(va);
  _Unwind_Resume(a1);
}

void **sub_1F36580(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 9 * a5;
        sub_19E34EC(a1, a2, a1[1], a2 + 72 * a5);
        v17 = a3 + 8 * v18;
      }

      else
      {
        a1[1] = sub_1F36820(a1, v16 + a3, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_19E34EC(a1, v5, v10, &v5[9 * a5]);
        v17 = v16 + a3;
      }

      sub_19E3D04(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 3);
    if (v12 > 0x38E38E38E38E38ELL)
    {
      sub_1794();
    }

    v13 = a2 - v11;
    v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x1C71C71C71C71C7)
    {
      v15 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      sub_19E3F88(a1, v15);
    }

    v20 = 0;
    v21 = 8 * (v13 >> 3);
    v22 = v21;
    v23 = 0;
    sub_1F36760(&v20, a3, a5);
    v5 = sub_19E3690(a1, &v20, v5);
    sub_19E4100(&v20);
  }

  return v5;
}

uint64_t sub_1F36760(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v5 = v4 + 72 * a3;
    v6 = 72 * a3;
    v7 = a2 + 24;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_19E38F8(v4, *(v7 - 24), *(v7 - 16), (*(v7 - 16) - *(v7 - 24)) >> 5);
      result = sub_19E3830(v4 + 24, v7);
      *(v4 + 64) = *(v7 + 40);
      v4 += 72;
      v7 += 72;
      v6 -= 72;
    }

    while (v6);
    v4 = v5;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t sub_1F36820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 24;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      v7 = v6 - 24;
      sub_19E38F8(v4, *(v6 - 24), *(v6 - 16), (*(v6 - 16) - *(v6 - 24)) >> 5);
      sub_19E3830(v4 + 24, v6);
      *(v4 + 64) = *(v6 + 40);
      v4 = v12 + 72;
      v12 += 72;
      v6 += 72;
    }

    while (v7 + 72 != a3);
  }

  v10 = 1;
  sub_19E3B50(v9);
  return v4;
}

void sub_1F368DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19E3B50(va);
  _Unwind_Resume(a1);
}

void sub_1F36904()
{
  __chkstk_darwin();
  sub_3608D0(&v1245, "AW");
  sub_3608D0(&v1242, "ABW");
  v1244 = 40;
  sub_195E43C(v1247, &v1245, &v1242);
  sub_3608D0(&v1240, "AF");
  sub_3608D0(&v1237, "AFG");
  v1239 = 41;
  sub_195E43C(&v1248, &v1240, &v1237);
  sub_3608D0(&v1235, "AO");
  sub_3608D0(&v1232, "AGO");
  v1234 = 42;
  sub_195E43C(&v1249, &v1235, &v1232);
  sub_3608D0(&v1230, "AI");
  sub_3608D0(&v1227, "AIA");
  v1229 = 43;
  sub_195E43C(&v1250, &v1230, &v1227);
  sub_3608D0(&v1225, "AX");
  sub_3608D0(&v1222, "ALA");
  v1224 = 246;
  sub_195E43C(&v1251, &v1225, &v1222);
  sub_3608D0(&v1220, "AL");
  sub_3608D0(&v1217, "ALB");
  v1219 = 76;
  sub_195E43C(&v1252, &v1220, &v1217);
  sub_3608D0(&v1215, "AD");
  sub_3608D0(&v1212, "AND");
  v1214 = 78;
  sub_195E43C(&v1253, &v1215, &v1212);
  sub_3608D0(&v1210, "AN");
  sub_3608D0(&v1207, "ANT");
  v1209 = 44;
  sub_195E43C(&v1254, &v1210, &v1207);
  sub_3608D0(&v1205, "AE");
  sub_3608D0(&v1202, "ARE");
  v1204 = 2;
  sub_195E43C(&v1255, &v1205, &v1202);
  sub_3608D0(&v1200, "AR");
  sub_3608D0(&v1197, "ARG");
  v1199 = 80;
  sub_195E43C(&v1256, &v1200, &v1197);
  sub_3608D0(&v1195, "AM");
  sub_3608D0(&v1192, "ARM");
  v1194 = 45;
  sub_195E43C(&v1257, &v1195, &v1192);
  sub_3608D0(&v1190, "AS");
  sub_3608D0(&v1187, "ASM");
  v1189 = 77;
  sub_195E43C(&v1258, &v1190, &v1187);
  sub_3608D0(&v1185, "AQ");
  sub_3608D0(&v1182, "ATA");
  v1184 = 46;
  sub_195E43C(&v1259, &v1185, &v1182);
  sub_3608D0(&v1180, "TF");
  sub_3608D0(&v1177, "ATF");
  v1179 = 125;
  sub_195E43C(&v1260, &v1180, &v1177);
  sub_3608D0(&v1175, "AG");
  sub_3608D0(&v1172, "ATG");
  v1174 = 79;
  sub_195E43C(&v1261, &v1175, &v1172);
  sub_3608D0(&v1170, "AU");
  sub_3608D0(&v1167, "AUS");
  v1169 = 22;
  sub_195E43C(&v1262, &v1170, &v1167);
  sub_3608D0(&v1165, "AT");
  sub_3608D0(&v1162, "AUT");
  v1164 = 81;
  sub_195E43C(&v1263, &v1165, &v1162);
  sub_3608D0(&v1160, "AZ");
  sub_3608D0(&v1157, "AZE");
  v1159 = 82;
  sub_195E43C(&v1264, &v1160, &v1157);
  sub_3608D0(&v1155, "BI");
  sub_3608D0(&v1152, "BDI");
  v1154 = 96;
  sub_195E43C(&v1265, &v1155, &v1152);
  sub_3608D0(&v1150, "BE");
  sub_3608D0(&v1147, "BEL");
  v1149 = 87;
  sub_195E43C(&v1266, &v1150, &v1147);
  sub_3608D0(&v1145, "BJ");
  sub_3608D0(&v1142, "BEN");
  v1144 = 3;
  sub_195E43C(&v1267, &v1145, &v1142);
  sub_3608D0(&v1140, "BQ");
  sub_3608D0(&v1137, "BES");
  v1139 = 248;
  sub_195E43C(&v1268, &v1140, &v1137);
  sub_3608D0(&v1135, "BF");
  sub_3608D0(&v1132, "BFA");
  v1134 = 11;
  sub_195E43C(&v1269, &v1135, &v1132);
  sub_3608D0(&v1130, "BD");
  sub_3608D0(&v1127, "BGD");
  v1129 = 84;
  sub_195E43C(&v1270, &v1130, &v1127);
  sub_3608D0(&v1125, "BG");
  sub_3608D0(&v1122, "BGR");
  v1124 = 95;
  sub_195E43C(&v1271, &v1125, &v1122);
  sub_3608D0(&v1120, "BH");
  sub_3608D0(&v1117, "BHR");
  v1119 = 12;
  sub_195E43C(&v1272, &v1120, &v1117);
  sub_3608D0(&v1115, "BS");
  sub_3608D0(&v1112, "BHS");
  v1114 = 83;
  sub_195E43C(&v1273, &v1115, &v1112);
  sub_3608D0(&v1110, "BA");
  sub_3608D0(&v1107, "BIH");
  v1109 = 92;
  sub_195E43C(&v1274, &v1110, &v1107);
  sub_3608D0(&v1105, "BL");
  sub_3608D0(&v1102, "BLM");
  v1104 = 237;
  sub_195E43C(&v1275, &v1105, &v1102);
  sub_3608D0(&v1100, "BY");
  sub_3608D0(&v1097, "BLR");
  v1099 = 86;
  sub_195E43C(&v1276, &v1100, &v1097);
  sub_3608D0(&v1095, "BZ");
  sub_3608D0(&v1092, "BLZ");
  v1094 = 88;
  sub_195E43C(&v1277, &v1095, &v1092);
  sub_3608D0(&v1090, "BM");
  sub_3608D0(&v1087, "BMU");
  v1089 = 89;
  sub_195E43C(&v1278, &v1090, &v1087);
  sub_3608D0(&v1085, "BO");
  sub_3608D0(&v1082, "BOL");
  v1084 = 91;
  sub_195E43C(&v1279, &v1085, &v1082);
  sub_3608D0(&v1080, "BR");
  sub_3608D0(&v1077, "BRA");
  v1079 = 25;
  sub_195E43C(&v1280, &v1080, &v1077);
  sub_3608D0(&v1075, "BB");
  sub_3608D0(&v1072, "BRB");
  v1074 = 85;
  sub_195E43C(&v1281, &v1075, &v1072);
  sub_3608D0(&v1070, "BN");
  sub_3608D0(&v1067, "BRN");
  v1069 = 94;
  sub_195E43C(&v1282, &v1070, &v1067);
  sub_3608D0(&v1065, "BT");
  sub_3608D0(&v1062, "BTN");
  v1064 = 90;
  sub_195E43C(&v1283, &v1065, &v1062);
  sub_3608D0(&v1060, "BV");
  sub_3608D0(&v1057, "BVT");
  v1059 = 245;
  sub_195E43C(&v1284, &v1060, &v1057);
  sub_3608D0(&v1055, "BW");
  sub_3608D0(&v1052, "BWA");
  v1054 = 93;
  sub_195E43C(&v1285, &v1055, &v1052);
  sub_3608D0(&v1050, "CF");
  sub_3608D0(&v1047, "CAF");
  v1049 = 63;
  sub_195E43C(&v1286, &v1050, &v1047);
  sub_3608D0(&v1045, "CA");
  sub_3608D0(&v1042, "CAN");
  v1044 = 98;
  sub_195E43C(&v1287, &v1045, &v1042);
  sub_3608D0(&v1040, "CC");
  sub_3608D0(&v1037, "CCK");
  v1039 = 47;
  sub_195E43C(&v1288, &v1040, &v1037);
  sub_3608D0(&v1035, "CH");
  sub_3608D0(&v1032, "CHE");
  v1034 = 211;
  sub_195E43C(&v1289, &v1035, &v1032);
  sub_3608D0(&v1030, "CL");
  sub_3608D0(&v1027, "CHL");
  v1029 = 102;
  sub_195E43C(&v1290, &v1030, &v1027);
  sub_3608D0(&v1025, "CN");
  sub_3608D0(&v1022, "CHN");
  v1024 = 4;
  sub_195E43C(&v1291, &v1025, &v1022);
  sub_3608D0(&v1020, "CI");
  sub_3608D0(&v1017, "CIV");
  v1019 = 26;
  sub_195E43C(&v1292, &v1020, &v1017);
  sub_3608D0(&v1015, "CM");
  sub_3608D0(&v1012, "CMR");
  v1014 = 27;
  sub_195E43C(&v1293, &v1015, &v1012);
  sub_3608D0(&v1010, "CD");
  sub_3608D0(&v1007, "COD");
  v1009 = 106;
  sub_195E43C(&v1294, &v1010, &v1007);
  sub_3608D0(&v1005, "CG");
  sub_3608D0(&v1002, "COG");
  v1004 = 105;
  sub_195E43C(&v1295, &v1005, &v1002);
  sub_3608D0(&v1000, "CK");
  sub_3608D0(&v997, "COK");
  v999 = 107;
  sub_195E43C(&v1296, &v1000, &v997);
  sub_3608D0(&v995, "CO");
  sub_3608D0(&v992, "COL");
  v994 = 28;
  sub_195E43C(&v1297, &v995, &v992);
  sub_3608D0(&v990, "KM");
  sub_3608D0(&v987, "COM");
  v989 = 104;
  sub_195E43C(&v1298, &v990, &v987);
  sub_3608D0(&v985, "CV");
  sub_3608D0(&v982, "CPV");
  v984 = 99;
  sub_195E43C(&v1299, &v985, &v982);
  sub_3608D0(&v980, "CR");
  sub_3608D0(&v977, "CRI");
  v979 = 13;
  sub_195E43C(&v1300, &v980, &v977);
  sub_3608D0(&v975, "CU");
  sub_3608D0(&v972, "CUB");
  v974 = 109;
  sub_195E43C(&v1301, &v975, &v972);
  sub_3608D0(&v970, "CW");
  sub_3608D0(&v967, "CUW");
  v969 = 247;
  sub_195E43C(&v1302, &v970, &v967);
  sub_3608D0(&v965, "CX");
  sub_3608D0(&v962, "CXR");
  v964 = 103;
  sub_195E43C(&v1303, &v965, &v962);
  sub_3608D0(&v960, "KY");
  sub_3608D0(&v957, "CYM");
  v959 = 100;
  sub_195E43C(&v1304, &v960, &v957);
  sub_3608D0(&v955, "CY");
  sub_3608D0(&v952, "CYP");
  v954 = 110;
  sub_195E43C(&v1305, &v955, &v952);
  sub_3608D0(&v950, "CZ");
  sub_3608D0(&v947, "CZE");
  v949 = 111;
  sub_195E43C(&v1306, &v950, &v947);
  sub_3608D0(&v945, "DE");
  sub_3608D0(&v942, "DEU");
  v944 = 129;
  sub_195E43C(&v1307, &v945, &v942);
  sub_3608D0(&v940, "DJ");
  sub_3608D0(&v937, "DJI");
  v939 = 113;
  sub_195E43C(&v1308, &v940, &v937);
  sub_3608D0(&v935, "DM");
  sub_3608D0(&v932, "DMA");
  v934 = 114;
  sub_195E43C(&v1309, &v935, &v932);
  sub_3608D0(&v930, "DK");
  sub_3608D0(&v927, "DNK");
  v929 = 112;
  sub_195E43C(&v1310, &v930, &v927);
  sub_3608D0(&v925, "DO");
  sub_3608D0(&v922, "DOM");
  v924 = 29;
  sub_195E43C(&v1311, &v925, &v922);
  sub_3608D0(&v920, "DZ");
  sub_3608D0(&v917, "DZA");
  v919 = 0;
  sub_195E43C(&v1312, &v920, &v917);
  sub_3608D0(&v915, "EC");
  sub_3608D0(&v912, "ECU");
  v914 = 30;
  sub_195E43C(&v1313, &v915, &v912);
  sub_3608D0(&v910, "EG");
  sub_3608D0(&v907, "EGY");
  v909 = 64;
  sub_195E43C(&v1314, &v910, &v907);
  sub_3608D0(&v905, "ER");
  sub_3608D0(&v902, "ERI");
  v904 = 116;
  sub_195E43C(&v1315, &v905, &v902);
  sub_3608D0(&v900, "EH");
  sub_3608D0(&v897, "ESH");
  v899 = 65;
  sub_195E43C(&v1316, &v900, &v897);
  sub_3608D0(&v895, "ES");
  sub_3608D0(&v892, "ESP");
  v894 = 206;
  sub_195E43C(&v1317, &v895, &v892);
  sub_3608D0(&v890, "EE");
  sub_3608D0(&v887, "EST");
  v889 = 117;
  sub_195E43C(&v1318, &v890, &v887);
  sub_3608D0(&v885, "ET");
  sub_3608D0(&v882, "ETH");
  v884 = 31;
  sub_195E43C(&v1319, &v885, &v882);
  sub_3608D0(&v880, "FI");
  sub_3608D0(&v877, "FIN");
  v879 = 121;
  sub_195E43C(&v1320, &v880, &v877);
  sub_3608D0(&v875, "FJ");
  sub_3608D0(&v872, "FJI");
  v874 = 120;
  sub_195E43C(&v1321, &v875, &v872);
  sub_3608D0(&v870, "FK");
  sub_3608D0(&v867, "FLK");
  v869 = 118;
  sub_195E43C(&v1322, &v870, &v867);
  sub_3608D0(&v865, "FR");
  sub_3608D0(&v862, "FRA");
  v864 = 122;
  sub_195E43C(&v1323, &v865, &v862);
  sub_3608D0(&v860, "FO");
  sub_3608D0(&v857, "FRO");
  v859 = 119;
  sub_195E43C(&v1324, &v860, &v857);
  sub_3608D0(&v855, "FM");
  sub_3608D0(&v852, "FSM");
  v854 = 166;
  sub_195E43C(&v1325, &v855, &v852);
  sub_3608D0(&v850, "GA");
  sub_3608D0(&v847, "GAB");
  v849 = 126;
  sub_195E43C(&v1326, &v850, &v847);
  sub_3608D0(&v845, "GB");
  sub_3608D0(&v842, "GBR");
  v844 = 225;
  sub_195E43C(&v1327, &v845, &v842);
  sub_3608D0(&v840, "GE");
  sub_3608D0(&v837, "GEO");
  v839 = 128;
  sub_195E43C(&v1328, &v840, &v837);
  sub_3608D0(&v835, "GG");
  sub_3608D0(&v832, "GGY");
  v834 = 256;
  sub_195E43C(&v1329, &v835, &v832);
  sub_3608D0(&v830, "GH");
  sub_3608D0(&v827, "GHA");
  v829 = 66;
  sub_195E43C(&v1330, &v830, &v827);
  sub_3608D0(&v825, "GI");
  sub_3608D0(&v822, "GIB");
  v824 = 67;
  sub_195E43C(&v1331, &v825, &v822);
  sub_3608D0(&v820, "GN");
  sub_3608D0(&v817, "GIN");
  v819 = 135;
  sub_195E43C(&v1332, &v820, &v817);
  sub_3608D0(&v815, "GP");
  sub_3608D0(&v812, "GLP");
  v814 = 133;
  sub_195E43C(&v1333, &v815, &v812);
  sub_3608D0(&v810, "GM");
  sub_3608D0(&v807, "GMB");
  v809 = 127;
  sub_195E43C(&v1334, &v810, &v807);
  sub_3608D0(&v805, "GW");
  sub_3608D0(&v802, "GNB");
  v804 = 68;
  sub_195E43C(&v1335, &v805, &v802);
  sub_3608D0(&v800, "GQ");
  sub_3608D0(&v797, "GNQ");
  v799 = 115;
  sub_195E43C(&v1336, &v800, &v797);
  sub_3608D0(&v795, "GR");
  sub_3608D0(&v792, "GRC");
  v794 = 130;
  sub_195E43C(&v1337, &v795, &v792);
  sub_3608D0(&v790, "GD");
  sub_3608D0(&v787, "GRD");
  v789 = 132;
  sub_195E43C(&v1338, &v790, &v787);
  sub_3608D0(&v785, "GL");
  sub_3608D0(&v782, "GRL");
  v784 = 131;
  sub_195E43C(&v1339, &v785, &v782);
  sub_3608D0(&v780, "GT");
  sub_3608D0(&v777, "GTM");
  v779 = 32;
  sub_195E43C(&v1340, &v780, &v777);
  sub_3608D0(&v775, "GF");
  sub_3608D0(&v772, "GUF");
  v774 = 123;
  sub_195E43C(&v1341, &v775, &v772);
  sub_3608D0(&v770, "GU");
  sub_3608D0(&v767, "GUM");
  v769 = 134;
  sub_195E43C(&v1342, &v770, &v767);
  sub_3608D0(&v765, "GY");
  sub_3608D0(&v762, "GUY");
  v764 = 136;
  sub_195E43C(&v1343, &v765, &v762);
  sub_3608D0(&v760, "HK");
  sub_3608D0(&v757, "HKG");
  v759 = 5;
  sub_195E43C(&v1344, &v760, &v757);
  sub_3608D0(&v755, "HM");
  sub_3608D0(&v752, "HMD");
  v754 = 240;
  sub_195E43C(&v1345, &v755, &v752);
  sub_3608D0(&v750, "HN");
  sub_3608D0(&v747, "HND");
  v749 = 14;
  sub_195E43C(&v1346, &v750, &v747);
  sub_3608D0(&v745, "HR");
  sub_3608D0(&v742, "HRV");
  v744 = 108;
  sub_195E43C(&v1347, &v745, &v742);
  sub_3608D0(&v740, "HT");
  sub_3608D0(&v737, "HTI");
  v739 = 137;
  sub_195E43C(&v1348, &v740, &v737);
  sub_3608D0(&v735, "HU");
  sub_3608D0(&v732, "HUN");
  v734 = 138;
  sub_195E43C(&v1349, &v735, &v732);
  sub_3608D0(&v730, "ID");
  sub_3608D0(&v727, "IDN");
  v729 = 69;
  sub_195E43C(&v1350, &v730, &v727);
  sub_3608D0(&v725, "IM");
  sub_3608D0(&v722, "IMN");
  v724 = 255;
  sub_195E43C(&v1351, &v725, &v722);
  sub_3608D0(&v720, "IN");
  sub_3608D0(&v717, "IND");
  v719 = 140;
  sub_195E43C(&v1352, &v720, &v717);
  sub_3608D0(&v715, "IO");
  sub_3608D0(&v712, "IOT");
  v714 = 48;
  sub_195E43C(&v1353, &v715, &v712);
  sub_3608D0(&v710, "IE");
  sub_3608D0(&v707, "IRL");
  v709 = 143;
  sub_195E43C(&v1354, &v710, &v707);
  sub_3608D0(&v705, "IR");
  sub_3608D0(&v702, "IRN");
  v704 = 141;
  sub_195E43C(&v1355, &v705, &v702);
  sub_3608D0(&v700, "IQ");
  sub_3608D0(&v697, "IRQ");
  v699 = 142;
  sub_195E43C(&v1356, &v700, &v697);
  sub_3608D0(&v695, "IS");
  sub_3608D0(&v692, "ISL");
  v694 = 139;
  sub_195E43C(&v1357, &v695, &v692);
  sub_3608D0(&v690, "IL");
  sub_3608D0(&v687, "ISR");
  v689 = 75;
  sub_195E43C(&v1358, &v690, &v687);
  sub_3608D0(&v685, "IT");
  sub_3608D0(&v682, "ITA");
  v684 = 144;
  sub_195E43C(&v1359, &v685, &v682);
  sub_3608D0(&v680, "JM");
  sub_3608D0(&v677, "JAM");
  v679 = 15;
  sub_195E43C(&v1360, &v680, &v677);
  sub_3608D0(&v675, "JE");
  sub_3608D0(&v672, "JEY");
  v674 = 254;
  sub_195E43C(&v1361, &v675, &v672);
  sub_3608D0(&v670, "JO");
  sub_3608D0(&v667, "JOR");
  v669 = 33;
  sub_195E43C(&v1362, &v670, &v667);
  sub_3608D0(&v665, "JP");
  sub_3608D0(&v662, "JPN");
  v664 = 10;
  sub_195E43C(&v1363, &v665, &v662);
  sub_3608D0(&v660, "KZ");
  sub_3608D0(&v657, "KAZ");
  v659 = 145;
  sub_195E43C(&v1364, &v660, &v657);
  sub_3608D0(&v655, "KE");
  sub_3608D0(&v652, "KEN");
  v654 = 34;
  sub_195E43C(&v1365, &v655, &v652);
  sub_3608D0(&v650, "KG");
  sub_3608D0(&v647, "KGZ");
  v649 = 149;
  sub_195E43C(&v1366, &v650, &v647);
  sub_3608D0(&v645, "KH");
  sub_3608D0(&v642, "KHM");
  v644 = 97;
  sub_195E43C(&v1367, &v645, &v642);
  sub_3608D0(&v640, "KI");
  sub_3608D0(&v637, "KIR");
  v639 = 146;
  sub_195E43C(&v1368, &v640, &v637);
  sub_3608D0(&v635, "KN");
  sub_3608D0(&v632, "KNA");
  v634 = 193;
  sub_195E43C(&v1369, &v635, &v632);
  sub_3608D0(&v630, "KR");
  sub_3608D0(&v627, "KOR");
  v629 = 148;
  sub_195E43C(&v1370, &v630, &v627);
  sub_3608D0(&v625, "KW");
  sub_3608D0(&v622, "KWT");
  v624 = 16;
  sub_195E43C(&v1371, &v625, &v622);
  sub_3608D0(&v620, "LA");
  sub_3608D0(&v617, "LAO");
  v619 = 150;
  sub_195E43C(&v1372, &v620, &v617);
  sub_3608D0(&v615, "LB");
  sub_3608D0(&v612, "LBN");
  v614 = 152;
  sub_195E43C(&v1373, &v615, &v612);
  sub_3608D0(&v610, "LR");
  sub_3608D0(&v607, "LBR");
  v609 = 153;
  sub_195E43C(&v1374, &v610, &v607);
  sub_3608D0(&v605, "LY");
  sub_3608D0(&v602, "LBY");
  v604 = 154;
  sub_195E43C(&v1375, &v605, &v602);
  sub_3608D0(&v600, "LC");
  sub_3608D0(&v597, "LCA");
  v599 = 194;
  sub_195E43C(&v1376, &v600, &v597);
  sub_3608D0(&v595, "LI");
  sub_3608D0(&v592, "LIE");
  v594 = 70;
  sub_195E43C(&v1377, &v595, &v592);
  sub_3608D0(&v590, "LK");
  sub_3608D0(&v587, "LKA");
  v589 = 207;
  sub_195E43C(&v1378, &v590, &v587);
  sub_3608D0(&v585, "LS");
  sub_3608D0(&v582, "LSO");
  v584 = 49;
  sub_195E43C(&v1379, &v585, &v582);
  sub_3608D0(&v580, "LT");
  sub_3608D0(&v577, "LTU");
  v579 = 155;
  sub_195E43C(&v1380, &v580, &v577);
  sub_3608D0(&v575, "LU");
  sub_3608D0(&v572, "LUX");
  v574 = 156;
  sub_195E43C(&v1381, &v575, &v572);
  sub_3608D0(&v570, "LV");
  sub_3608D0(&v567, "LVA");
  v569 = 151;
  sub_195E43C(&v1382, &v570, &v567);
  sub_3608D0(&v565, "MO");
  sub_3608D0(&v562, "MAC");
  v564 = 157;
  sub_195E43C(&v1383, &v565, &v562);
  sub_3608D0(&v560, "MF");
  sub_3608D0(&v557, "MAF");
  v559 = 236;
  sub_195E43C(&v1384, &v560, &v557);
  sub_3608D0(&v555, "MA");
  sub_3608D0(&v552, "MAR");
  v554 = 171;
  sub_195E43C(&v1385, &v555, &v552);
  sub_3608D0(&v550, "MC");
  sub_3608D0(&v547, "MCO");
  v549 = 71;
  sub_195E43C(&v1386, &v550, &v547);
  sub_3608D0(&v545, "MD");
  sub_3608D0(&v542, "MDA");
  v544 = 167;
  sub_195E43C(&v1387, &v545, &v542);
  sub_3608D0(&v540, "MG");
  sub_3608D0(&v537, "MDG");
  v539 = 159;
  sub_195E43C(&v1388, &v540, &v537);
  sub_3608D0(&v535, "MV");
  sub_3608D0(&v532, "MDV");
  v534 = 50;
  sub_195E43C(&v1389, &v535, &v532);
  sub_3608D0(&v530, "MX");
  sub_3608D0(&v527, "MEX");
  v529 = 165;
  sub_195E43C(&v1390, &v530, &v527);
  sub_3608D0(&v525, "MH");
  sub_3608D0(&v522, "MHL");
  v524 = 51;
  sub_195E43C(&v1391, &v525, &v522);
  sub_3608D0(&v520, "MK");
  sub_3608D0(&v517, "MKD");
  v519 = 158;
  sub_195E43C(&v1392, &v520, &v517);
  sub_3608D0(&v515, "ML");
  sub_3608D0(&v512, "MLI");
  v514 = 17;
  sub_195E43C(&v1393, &v515, &v512);
  sub_3608D0(&v510, "MT");
  sub_3608D0(&v507, "MLT");
  v509 = 162;
  sub_195E43C(&v1394, &v510, &v507);
  sub_3608D0(&v505, "MM");
  sub_3608D0(&v502, "MMR");
  v504 = 173;
  sub_195E43C(&v1395, &v505, &v502);
  sub_3608D0(&v500, "ME");
  sub_3608D0(&v497, "MNE");
  v499 = 169;
  sub_195E43C(&v1396, &v500, &v497);
  sub_3608D0(&v495, "MN");
  sub_3608D0(&v492, "MNG");
  v494 = 168;
  sub_195E43C(&v1397, &v495, &v492);
  sub_3608D0(&v490, "MP");
  sub_3608D0(&v487, "MNP");
  v489 = 179;
  sub_195E43C(&v1398, &v490, &v487);
  sub_3608D0(&v485, "MZ");
  sub_3608D0(&v482, "MOZ");
  v484 = 172;
  sub_195E43C(&v1399, &v485, &v482);
  sub_3608D0(&v480, "MR");
  sub_3608D0(&v477, "MRT");
  v479 = 163;
  sub_195E43C(&v1400, &v480, &v477);
  sub_3608D0(&v475, "MS");
  sub_3608D0(&v472, "MSR");
  v474 = 170;
  sub_195E43C(&v1401, &v475, &v472);
  sub_3608D0(&v470, "MQ");
  sub_3608D0(&v467, "MTQ");
  v469 = 52;
  sub_195E43C(&v1402, &v470, &v467);
  sub_3608D0(&v465, "MU");
  sub_3608D0(&v462, "MUS");
  v464 = 164;
  sub_195E43C(&v1403, &v465, &v462);
  sub_3608D0(&v460, "MW");
  sub_3608D0(&v457, "MWI");
  v459 = 160;
  sub_195E43C(&v1404, &v460, &v457);
  sub_3608D0(&v455, "MY");
  sub_3608D0(&v452, "MYS");
  v454 = 161;
  sub_195E43C(&v1405, &v455, &v452);
  sub_3608D0(&v450, "YT");
  sub_3608D0(&v447, "MYT");
  v449 = 53;
  sub_195E43C(&v1406, &v450, &v447);
  sub_3608D0(&v445, "NA");
  sub_3608D0(&v442, "NAM");
  v444 = 174;
  sub_195E43C(&v1407, &v445, &v442);
  sub_3608D0(&v440, "NC");
  sub_3608D0(&v437, "NCL");
  v439 = 177;
  sub_195E43C(&v1408, &v440, &v437);
  sub_3608D0(&v435, "NE");
  sub_3608D0(&v432, "NER");
  v434 = 35;
  sub_195E43C(&v1409, &v435, &v432);
  sub_3608D0(&v430, "NF");
  sub_3608D0(&v427, "NFK");
  v429 = 23;
  sub_195E43C(&v1410, &v430, &v427);
  sub_3608D0(&v425, "NG");
  sub_3608D0(&v422, "NGA");
  v424 = 6;
  sub_195E43C(&v1411, &v425, &v422);
  sub_3608D0(&v420, "NI");
  sub_3608D0(&v417, "NIC");
  v419 = 18;
  sub_195E43C(&v1412, &v420, &v417);
  sub_3608D0(&v415, "NU");
  sub_3608D0(&v412, "NIU");
  v414 = 178;
  sub_195E43C(&v1413, &v415, &v412);
  sub_3608D0(&v410, "NL");
  sub_3608D0(&v407, "NLD");
  v409 = 176;
  sub_195E43C(&v1414, &v410, &v407);
  sub_3608D0(&v405, "NO");
  sub_3608D0(&v402, "NOR");
  v404 = 180;
  sub_195E43C(&v1415, &v405, &v402);
  sub_3608D0(&v400, "NP");
  sub_3608D0(&v397, "NPL");
  v399 = 175;
  sub_195E43C(&v1416, &v400, &v397);
  sub_3608D0(&v395, "NR");
  sub_3608D0(&v392, "NRU");
  v394 = 54;
  sub_195E43C(&v1417, &v395, &v392);
  sub_3608D0(&v390, "NZ");
  sub_3608D0(&v387, "NZL");
  v389 = 24;
  sub_195E43C(&v1418, &v390, &v387);
  sub_3608D0(&v385, "OM");
  sub_3608D0(&v382, "OMN");
  v384 = 7;
  sub_195E43C(&v1419, &v385, &v382);
  sub_3608D0(&v380, "PA");
  sub_3608D0(&v377, "PAN");
  v379 = 19;
  sub_195E43C(&v1420, &v380, &v377);
  sub_3608D0(&v375, "PE");
  sub_3608D0(&v372, "PER");
  v374 = 184;
  sub_195E43C(&v1421, &v375, &v372);
  sub_3608D0(&v370, "PF");
  sub_3608D0(&v367, "PYF");
  v369 = 124;
  sub_195E43C(&v1422, &v370, &v367);
  sub_3608D0(&v365, "PG");
  sub_3608D0(&v362, "PNG");
  v364 = 56;
  sub_195E43C(&v1423, &v365, &v362);
  sub_3608D0(&v360, "PH");
  sub_3608D0(&v357, "PHL");
  v359 = 185;
  sub_195E43C(&v1424, &v360, &v357);
  sub_3608D0(&v355, "PK");
  sub_3608D0(&v352, "PAK");
  v354 = 181;
  sub_195E43C(&v1425, &v355, &v352);
  sub_3608D0(&v350, "PL");
  sub_3608D0(&v347, "POL");
  v349 = 186;
  sub_195E43C(&v1426, &v350, &v347);
  sub_3608D0(&v345, "PM");
  sub_3608D0(&v342, "SPM");
  v344 = 241;
  sub_195E43C(&v1427, &v345, &v342);
  sub_3608D0(&v340, "PN");
  sub_3608D0(&v337, "PCN");
  v339 = 55;
  sub_195E43C(&v1428, &v340, &v337);
  sub_3608D0(&v335, "PR");
  sub_3608D0(&v332, "PRI");
  v334 = 253;
  sub_195E43C(&v1429, &v335, &v332);
  sub_3608D0(&v330, "PS");
  sub_3608D0(&v327, "PSE");
  v329 = 36;
  sub_195E43C(&v1430, &v330, &v327);
  sub_3608D0(&v325, "PT");
  sub_3608D0(&v322, "PRT");
  v324 = 187;
  sub_195E43C(&v1431, &v325, &v322);
  sub_3608D0(&v320, "PW");
  sub_3608D0(&v317, "PLW");
  v319 = 182;
  sub_195E43C(&v1432, &v320, &v317);
  sub_3608D0(&v315, "PY");
  sub_3608D0(&v312, "PRY");
  v314 = 183;
  sub_195E43C(&v1433, &v315, &v312);
  sub_3608D0(&v310, "QA");
  sub_3608D0(&v307, "QAT");
  v309 = 8;
  sub_195E43C(&v1434, &v310, &v307);
  sub_3608D0(&v305, "RE");
  sub_3608D0(&v302, "REU");
  v304 = 188;
  sub_195E43C(&v1435, &v305, &v302);
  sub_3608D0(&v300, "RO");
  sub_3608D0(&v297, "ROU");
  v299 = 189;
  sub_195E43C(&v1436, &v300, &v297);
  sub_3608D0(&v295, "RS");
  sub_3608D0(&v292, "SRB");
  v294 = 199;
  sub_195E43C(&v1437, &v295, &v292);
  sub_3608D0(&v290, "RU");
  sub_3608D0(&v287, "RUS");
  v289 = 190;
  sub_195E43C(&v1438, &v290, &v287);
  sub_3608D0(&v285, "RW");
  sub_3608D0(&v282, "RWA");
  v284 = 191;
  sub_195E43C(&v1439, &v285, &v282);
  sub_3608D0(&v280, "SA");
  sub_3608D0(&v277, "SAU");
  v279 = 20;
  sub_195E43C(&v1440, &v280, &v277);
  sub_3608D0(&v275, "SB");
  sub_3608D0(&v272, "SLB");
  v274 = 58;
  sub_195E43C(&v1441, &v275, &v272);
  sub_3608D0(&v270, "SC");
  sub_3608D0(&v267, "SYC");
  v269 = 200;
  sub_195E43C(&v1442, &v270, &v267);
  sub_3608D0(&v265, "SD");
  sub_3608D0(&v262, "SDN");
  v264 = 208;
  sub_195E43C(&v1443, &v265, &v262);
  sub_3608D0(&v260, "SE");
  sub_3608D0(&v257, "SWE");
  v259 = 210;
  sub_195E43C(&v1444, &v260, &v257);
  sub_3608D0(&v255, "SG");
  sub_3608D0(&v252, "SGP");
  v254 = 202;
  sub_195E43C(&v1445, &v255, &v252);
  sub_3608D0(&v250, "SH");
  sub_3608D0(&v247, "SHN");
  v249 = 192;
  sub_195E43C(&v1446, &v250, &v247);
  sub_3608D0(&v245, "SI");
  sub_3608D0(&v242, "SVN");
  v244 = 204;
  sub_195E43C(&v1447, &v245, &v242);
  sub_3608D0(&v240, "SJ");
  sub_3608D0(&v237, "SJM");
  v239 = 72;
  sub_195E43C(&v1448, &v240, &v237);
  sub_3608D0(&v235, "SK");
  sub_3608D0(&v232, "SVK");
  v234 = 203;
  sub_195E43C(&v1449, &v235, &v232);
  sub_3608D0(&v230, "SL");
  sub_3608D0(&v227, "SLE");
  v229 = 201;
  sub_195E43C(&v1450, &v230, &v227);
  sub_3608D0(&v225, "SM");
  sub_3608D0(&v222, "SMR");
  v224 = 197;
  sub_195E43C(&v1451, &v225, &v222);
  sub_3608D0(&v220, "SN");
  sub_3608D0(&v217, "SEN");
  v219 = 37;
  sub_195E43C(&v1452, &v220, &v217);
  sub_3608D0(&v215, "SO");
  sub_3608D0(&v212, "SOM");
  v214 = 205;
  sub_195E43C(&v1453, &v215, &v212);
  sub_3608D0(&v210, "SR");
  sub_3608D0(&v207, "SUR");
  v209 = 209;
  sub_195E43C(&v1454, &v210, &v207);
  sub_3608D0(&v205, "SS");
  sub_3608D0(&v202, "SSD");
  v204 = 243;
  sub_195E43C(&v1455, &v205, &v202);
  sub_3608D0(&v200, "ST");
  sub_3608D0(&v197, "STP");
  v199 = 198;
  sub_195E43C(&v1456, &v200, &v197);
  sub_3608D0(&v195, "SV");
  sub_3608D0(&v192, "SLV");
  v194 = 21;
  sub_195E43C(&v1457, &v195, &v192);
  sub_3608D0(&v190, "SX");
  sub_3608D0(&v187, "SXM");
  v189 = 234;
  sub_195E43C(&v1458, &v190, &v187);
  sub_3608D0(&v185, "SY");
  sub_3608D0(&v182, "SYR");
  v184 = 212;
  sub_195E43C(&v1459, &v185, &v182);
  sub_3608D0(&v180, "SZ");
  sub_3608D0(&v177, "SWZ");
  v179 = 59;
  sub_195E43C(&v1460, &v180, &v177);
  sub_3608D0(&v175, "TC");
  sub_3608D0(&v172, "TCA");
  v174 = 222;
  sub_195E43C(&v1461, &v175, &v172);
  sub_3608D0(&v170, "TD");
  sub_3608D0(&v167, "TCD");
  v169 = 101;
  sub_195E43C(&v1462, &v170, &v167);
  sub_3608D0(&v165, "TF");
  sub_3608D0(&v162, "ATF");
  v164 = 125;
  sub_195E43C(&v1463, &v165, &v162);
  sub_3608D0(&v160, "TG");
  sub_3608D0(&v157, "TGO");
  v159 = 216;
  sub_195E43C(&v1464, &v160, &v157);
  sub_3608D0(&v155, "TH");
  sub_3608D0(&v152, "THA");
  v154 = 214;
  sub_195E43C(&v1465, &v155, &v152);
  sub_3608D0(&v150, "TJ");
  sub_3608D0(&v147, "TJK");
  v149 = 213;
  sub_195E43C(&v1466, &v150, &v147);
  sub_3608D0(&v145, "TK");
  sub_3608D0(&v142, "TKL");
  v144 = 244;
  sub_195E43C(&v1467, &v145, &v142);
  sub_3608D0(&v140, "TL");
  sub_3608D0(&v137, "TLS");
  v139 = 215;
  sub_195E43C(&v1468, &v140, &v137);
  sub_3608D0(&v135, "TM");
  sub_3608D0(&v132, "TKM");
  v134 = 221;
  sub_195E43C(&v1469, &v135, &v132);
  sub_3608D0(&v130, "TN");
  sub_3608D0(&v127, "TUN");
  v129 = 219;
  sub_195E43C(&v1470, &v130, &v127);
  sub_3608D0(&v125, "TO");
  sub_3608D0(&v122, "TON");
  v124 = 217;
  sub_195E43C(&v1471, &v125, &v122);
  sub_3608D0(&v120, "TR");
  sub_3608D0(&v117, "TUR");
  v119 = 220;
  sub_195E43C(&v1472, &v120, &v117);
  sub_3608D0(&v115, "TT");
  sub_3608D0(&v112, "TTO");
  v114 = 218;
  sub_195E43C(&v1473, &v115, &v112);
  sub_3608D0(&v110, "TV");
  sub_3608D0(&v107, "TUV");
  v109 = 60;
  sub_195E43C(&v1474, &v110, &v107);
  sub_3608D0(&v105, "TZ");
  sub_3608D0(&v102, "TZA");
  v104 = 38;
  sub_195E43C(&v1475, &v105, &v102);
  sub_3608D0(&v100, "UA");
  sub_3608D0(&v97, "UKR");
  v99 = 224;
  sub_195E43C(&v1476, &v100, &v97);
  sub_3608D0(&v95, "UG");
  sub_3608D0(&v92, "UGA");
  v94 = 223;
  sub_195E43C(&v1477, &v95, &v92);
  sub_3608D0(&v90, "UM");
  sub_3608D0(&v87, "UMI");
  v89 = 251;
  sub_195E43C(&v1478, &v90, &v87);
  sub_3608D0(&v85, "US");
  sub_3608D0(&v82, "USA");
  v84 = 226;
  sub_195E43C(&v1479, &v85, &v82);
  sub_3608D0(&v80, "UY");
  sub_3608D0(&v77, "URY");
  v79 = 1;
  sub_195E43C(&v1480, &v80, &v77);
  sub_3608D0(&v75, "UZ");
  sub_3608D0(&v72, "UZB");
  v74 = 227;
  sub_195E43C(&v1481, &v75, &v72);
  sub_3608D0(&v70, "VA");
  sub_3608D0(&v67, "VAT");
  v69 = 74;
  sub_195E43C(&v1482, &v70, &v67);
  sub_3608D0(&v65, "VC");
  sub_3608D0(&v62, "VCT");
  v64 = 195;
  sub_195E43C(&v1483, &v65, &v62);
  sub_3608D0(&v60, "VE");
  sub_3608D0(&v57, "VEN");
  v59 = 39;
  sub_195E43C(&v1484, &v60, &v57);
  sub_3608D0(&v55, "VG");
  sub_3608D0(&v52, "VGB");
  v54 = 229;
  sub_195E43C(&v1485, &v55, &v52);
  sub_3608D0(&v50, "VI");
  sub_3608D0(&v47, "VIR");
  v49 = 242;
  sub_195E43C(&v1486, &v50, &v47);
  sub_3608D0(&v45, "VN");
  sub_3608D0(&v42, "VNM");
  v44 = 9;
  sub_195E43C(&v1487, &v45, &v42);
  sub_3608D0(&v40, "VU");
  sub_3608D0(&v37, "VUT");
  v39 = 228;
  sub_195E43C(&v1488, &v40, &v37);
  sub_3608D0(&v35, "WF");
  sub_3608D0(&v32, "WLF");
  v34 = 230;
  sub_195E43C(&v1489, &v35, &v32);
  sub_3608D0(&v30, "WS");
  sub_3608D0(&v27, "WSM");
  v29 = 196;
  sub_195E43C(&v1490, &v30, &v27);
  sub_3608D0(&v25, "YE");
  sub_3608D0(&v22, "YEM");
  v24 = 231;
  sub_195E43C(&v1491, &v25, &v22);
  sub_3608D0(&v20, "YT");
  sub_3608D0(&v17, "MYT");
  v19 = 53;
  sub_195E43C(&v1492, &v20, &v17);
  sub_3608D0(&v15, "ZA");
  sub_3608D0(v12, "ZAF");
  v14 = 62;
  sub_195E43C(&v1493, &v15, v12);
  sub_3608D0(v10, "ZM");
  sub_3608D0(v7, "ZMB");
  v9 = 232;
  sub_195E43C(&v1494, v10, v7);
  sub_3608D0(v5, "ZW");
  sub_3608D0(__p, "ZWE");
  v4 = 233;
  sub_195E43C(&v1495, v5, __p);
  sub_1966280(qword_27F0840, v1247, 249);
  v0 = &v1496;
  v1 = -13944;
  do
  {
    if (*v0 < 0)
    {
      operator delete(*(v0 - 23));
    }

    if (*(v0 - 24) < 0)
    {
      operator delete(*(v0 - 47));
    }

    v0 -= 56;
    v1 += 56;
  }

  while (v1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v68 < 0)
  {
    operator delete(v67);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v83 < 0)
  {
    operator delete(v82);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v88 < 0)
  {
    operator delete(v87);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v93 < 0)
  {
    operator delete(v92);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v98 < 0)
  {
    operator delete(v97);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v103 < 0)
  {
    operator delete(v102);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v113 < 0)
  {
    operator delete(v112);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v128 < 0)
  {
    operator delete(v127);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v133 < 0)
  {
    operator delete(v132);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v138 < 0)
  {
    operator delete(v137);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v143 < 0)
  {
    operator delete(v142);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v148 < 0)
  {
    operator delete(v147);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v153 < 0)
  {
    operator delete(v152);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v158 < 0)
  {
    operator delete(v157);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v163 < 0)
  {
    operator delete(v162);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v168 < 0)
  {
    operator delete(v167);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v173 < 0)
  {
    operator delete(v172);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v178 < 0)
  {
    operator delete(v177);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v183 < 0)
  {
    operator delete(v182);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v188 < 0)
  {
    operator delete(v187);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v193 < 0)
  {
    operator delete(v192);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v198 < 0)
  {
    operator delete(v197);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v203 < 0)
  {
    operator delete(v202);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v208 < 0)
  {
    operator delete(v207);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v213 < 0)
  {
    operator delete(v212);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v218 < 0)
  {
    operator delete(v217);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v223 < 0)
  {
    operator delete(v222);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v228 < 0)
  {
    operator delete(v227);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v233 < 0)
  {
    operator delete(v232);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v238 < 0)
  {
    operator delete(v237);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v243 < 0)
  {
    operator delete(v242);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v248 < 0)
  {
    operator delete(v247);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v253 < 0)
  {
    operator delete(v252);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v258 < 0)
  {
    operator delete(v257);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v263 < 0)
  {
    operator delete(v262);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v268 < 0)
  {
    operator delete(v267);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v273 < 0)
  {
    operator delete(v272);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v278 < 0)
  {
    operator delete(v277);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v283 < 0)
  {
    operator delete(v282);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v288 < 0)
  {
    operator delete(v287);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v293 < 0)
  {
    operator delete(v292);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v298 < 0)
  {
    operator delete(v297);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v303 < 0)
  {
    operator delete(v302);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v308 < 0)
  {
    operator delete(v307);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v313 < 0)
  {
    operator delete(v312);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v318 < 0)
  {
    operator delete(v317);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v323 < 0)
  {
    operator delete(v322);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v328 < 0)
  {
    operator delete(v327);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v333 < 0)
  {
    operator delete(v332);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v338 < 0)
  {
    operator delete(v337);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v343 < 0)
  {
    operator delete(v342);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v348 < 0)
  {
    operator delete(v347);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v353 < 0)
  {
    operator delete(v352);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v358 < 0)
  {
    operator delete(v357);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v363 < 0)
  {
    operator delete(v362);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v368 < 0)
  {
    operator delete(v367);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v373 < 0)
  {
    operator delete(v372);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v378 < 0)
  {
    operator delete(v377);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v383 < 0)
  {
    operator delete(v382);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v388 < 0)
  {
    operator delete(v387);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v393 < 0)
  {
    operator delete(v392);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v398 < 0)
  {
    operator delete(v397);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v403 < 0)
  {
    operator delete(v402);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v408 < 0)
  {
    operator delete(v407);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v413 < 0)
  {
    operator delete(v412);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v418 < 0)
  {
    operator delete(v417);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v423 < 0)
  {
    operator delete(v422);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v428 < 0)
  {
    operator delete(v427);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v433 < 0)
  {
    operator delete(v432);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v438 < 0)
  {
    operator delete(v437);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v443 < 0)
  {
    operator delete(v442);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v448 < 0)
  {
    operator delete(v447);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v453 < 0)
  {
    operator delete(v452);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v458 < 0)
  {
    operator delete(v457);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v463 < 0)
  {
    operator delete(v462);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v468 < 0)
  {
    operator delete(v467);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v473 < 0)
  {
    operator delete(v472);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v478 < 0)
  {
    operator delete(v477);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v483 < 0)
  {
    operator delete(v482);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v488 < 0)
  {
    operator delete(v487);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v493 < 0)
  {
    operator delete(v492);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v498 < 0)
  {
    operator delete(v497);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v503 < 0)
  {
    operator delete(v502);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v508 < 0)
  {
    operator delete(v507);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v513 < 0)
  {
    operator delete(v512);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v518 < 0)
  {
    operator delete(v517);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v523 < 0)
  {
    operator delete(v522);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v528 < 0)
  {
    operator delete(v527);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v533 < 0)
  {
    operator delete(v532);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v538 < 0)
  {
    operator delete(v537);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v543 < 0)
  {
    operator delete(v542);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v548 < 0)
  {
    operator delete(v547);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v553 < 0)
  {
    operator delete(v552);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v558 < 0)
  {
    operator delete(v557);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v563 < 0)
  {
    operator delete(v562);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v568 < 0)
  {
    operator delete(v567);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v573 < 0)
  {
    operator delete(v572);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v578 < 0)
  {
    operator delete(v577);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v583 < 0)
  {
    operator delete(v582);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v588 < 0)
  {
    operator delete(v587);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v593 < 0)
  {
    operator delete(v592);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v598 < 0)
  {
    operator delete(v597);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v603 < 0)
  {
    operator delete(v602);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v608 < 0)
  {
    operator delete(v607);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v613 < 0)
  {
    operator delete(v612);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v618 < 0)
  {
    operator delete(v617);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v623 < 0)
  {
    operator delete(v622);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v628 < 0)
  {
    operator delete(v627);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v633 < 0)
  {
    operator delete(v632);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v638 < 0)
  {
    operator delete(v637);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v643 < 0)
  {
    operator delete(v642);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v648 < 0)
  {
    operator delete(v647);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v653 < 0)
  {
    operator delete(v652);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v658 < 0)
  {
    operator delete(v657);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v663 < 0)
  {
    operator delete(v662);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v668 < 0)
  {
    operator delete(v667);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v673 < 0)
  {
    operator delete(v672);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v678 < 0)
  {
    operator delete(v677);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v683 < 0)
  {
    operator delete(v682);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v688 < 0)
  {
    operator delete(v687);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v693 < 0)
  {
    operator delete(v692);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v698 < 0)
  {
    operator delete(v697);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v703 < 0)
  {
    operator delete(v702);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v708 < 0)
  {
    operator delete(v707);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v713 < 0)
  {
    operator delete(v712);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v718 < 0)
  {
    operator delete(v717);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v723 < 0)
  {
    operator delete(v722);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v728 < 0)
  {
    operator delete(v727);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v733 < 0)
  {
    operator delete(v732);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v738 < 0)
  {
    operator delete(v737);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v743 < 0)
  {
    operator delete(v742);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v748 < 0)
  {
    operator delete(v747);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v753 < 0)
  {
    operator delete(v752);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v758 < 0)
  {
    operator delete(v757);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v763 < 0)
  {
    operator delete(v762);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v768 < 0)
  {
    operator delete(v767);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v773 < 0)
  {
    operator delete(v772);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v778 < 0)
  {
    operator delete(v777);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v783 < 0)
  {
    operator delete(v782);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v788 < 0)
  {
    operator delete(v787);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v793 < 0)
  {
    operator delete(v792);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v798 < 0)
  {
    operator delete(v797);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v803 < 0)
  {
    operator delete(v802);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v808 < 0)
  {
    operator delete(v807);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v813 < 0)
  {
    operator delete(v812);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v818 < 0)
  {
    operator delete(v817);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v823 < 0)
  {
    operator delete(v822);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v828 < 0)
  {
    operator delete(v827);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v833 < 0)
  {
    operator delete(v832);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v838 < 0)
  {
    operator delete(v837);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v843 < 0)
  {
    operator delete(v842);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v848 < 0)
  {
    operator delete(v847);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v853 < 0)
  {
    operator delete(v852);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v858 < 0)
  {
    operator delete(v857);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v863 < 0)
  {
    operator delete(v862);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v868 < 0)
  {
    operator delete(v867);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v873 < 0)
  {
    operator delete(v872);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v878 < 0)
  {
    operator delete(v877);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v883 < 0)
  {
    operator delete(v882);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v888 < 0)
  {
    operator delete(v887);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v893 < 0)
  {
    operator delete(v892);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v898 < 0)
  {
    operator delete(v897);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v903 < 0)
  {
    operator delete(v902);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v908 < 0)
  {
    operator delete(v907);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v913 < 0)
  {
    operator delete(v912);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v918 < 0)
  {
    operator delete(v917);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v923 < 0)
  {
    operator delete(v922);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v928 < 0)
  {
    operator delete(v927);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v933 < 0)
  {
    operator delete(v932);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v938 < 0)
  {
    operator delete(v937);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v943 < 0)
  {
    operator delete(v942);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v948 < 0)
  {
    operator delete(v947);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v953 < 0)
  {
    operator delete(v952);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v958 < 0)
  {
    operator delete(v957);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v963 < 0)
  {
    operator delete(v962);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v968 < 0)
  {
    operator delete(v967);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v973 < 0)
  {
    operator delete(v972);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v978 < 0)
  {
    operator delete(v977);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v983 < 0)
  {
    operator delete(v982);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v988 < 0)
  {
    operator delete(v987);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v993 < 0)
  {
    operator delete(v992);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v998 < 0)
  {
    operator delete(v997);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1003 < 0)
  {
    operator delete(v1002);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1008 < 0)
  {
    operator delete(v1007);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1013 < 0)
  {
    operator delete(v1012);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1018 < 0)
  {
    operator delete(v1017);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1023 < 0)
  {
    operator delete(v1022);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1028 < 0)
  {
    operator delete(v1027);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1033 < 0)
  {
    operator delete(v1032);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1038 < 0)
  {
    operator delete(v1037);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1043 < 0)
  {
    operator delete(v1042);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1048 < 0)
  {
    operator delete(v1047);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1053 < 0)
  {
    operator delete(v1052);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1058 < 0)
  {
    operator delete(v1057);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1063 < 0)
  {
    operator delete(v1062);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1068 < 0)
  {
    operator delete(v1067);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1073 < 0)
  {
    operator delete(v1072);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1078 < 0)
  {
    operator delete(v1077);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1083 < 0)
  {
    operator delete(v1082);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1088 < 0)
  {
    operator delete(v1087);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1093 < 0)
  {
    operator delete(v1092);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1098 < 0)
  {
    operator delete(v1097);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1103 < 0)
  {
    operator delete(v1102);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1108 < 0)
  {
    operator delete(v1107);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1113 < 0)
  {
    operator delete(v1112);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1118 < 0)
  {
    operator delete(v1117);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1123 < 0)
  {
    operator delete(v1122);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1128 < 0)
  {
    operator delete(v1127);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1133 < 0)
  {
    operator delete(v1132);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1138 < 0)
  {
    operator delete(v1137);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1143 < 0)
  {
    operator delete(v1142);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1148 < 0)
  {
    operator delete(v1147);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1153 < 0)
  {
    operator delete(v1152);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1158 < 0)
  {
    operator delete(v1157);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1163 < 0)
  {
    operator delete(v1162);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1168 < 0)
  {
    operator delete(v1167);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1173 < 0)
  {
    operator delete(v1172);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1178 < 0)
  {
    operator delete(v1177);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1183 < 0)
  {
    operator delete(v1182);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1188 < 0)
  {
    operator delete(v1187);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1193 < 0)
  {
    operator delete(v1192);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1198 < 0)
  {
    operator delete(v1197);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1203 < 0)
  {
    operator delete(v1202);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1208 < 0)
  {
    operator delete(v1207);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1213 < 0)
  {
    operator delete(v1212);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1218 < 0)
  {
    operator delete(v1217);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1223 < 0)
  {
    operator delete(v1222);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1228 < 0)
  {
    operator delete(v1227);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1233 < 0)
  {
    operator delete(v1232);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1238 < 0)
  {
    operator delete(v1237);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1243 < 0)
  {
    operator delete(v1242);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }
}

void sub_1F3D8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  v86 = -13944;
  v87 = v80;
  do
  {
    v87 = sub_195CE20(v87) - 56;
    v86 += 56;
  }

  while (v86);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(*(v81 + 32));
  }

  if (a54 < 0)
  {
    operator delete(*(v81 + 56));
  }

  if (a61 < 0)
  {
    operator delete(*(v81 + 88));
  }

  if (a67 < 0)
  {
    operator delete(*(v81 + 112));
  }

  if (a72 < 0)
  {
    operator delete(*(v81 + 144));
  }

  if (a73 < 0)
  {
    operator delete(*(v81 + 168));
  }

  if (a74 < 0)
  {
    operator delete(*(v81 + 200));
  }

  if (a75 < 0)
  {
    operator delete(*(v81 + 224));
  }

  if (a76 < 0)
  {
    operator delete(*(v81 + 256));
  }

  if (a77 < 0)
  {
    operator delete(*(v81 + 280));
  }

  if (a78 < 0)
  {
    operator delete(*(v81 + 312));
  }

  if (a79 < 0)
  {
    operator delete(*(v81 + 336));
  }

  if (a80 < 0)
  {
    operator delete(*(v81 + 368));
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(*(v81 + 392));
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(*(v81 + 424));
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(*(v81 + 448));
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(*(v81 + 480));
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(*(v81 + 504));
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(*(v81 + 536));
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(*(v81 + 560));
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(*(v81 + 592));
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(*(v81 + 616));
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(*(v81 + 648));
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(*(v81 + 672));
  }

  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(*(v81 + 704));
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(*(v81 + 728));
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(*(v81 + 760));
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(*(v81 + 784));
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(*(v81 + 816));
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(*(v81 + 840));
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(*(v81 + 872));
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(*(v81 + 896));
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(*(v81 + 928));
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(*(v81 + 952));
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(*(v81 + 984));
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(*(v81 + 1008));
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(*(v81 + 1040));
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(*(v81 + 1064));
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(*(v81 + 1096));
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(*(v81 + 1120));
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(*(v81 + 1152));
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(*(v81 + 1176));
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(*(v81 + 1208));
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(*(v81 + 1232));
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(*(v81 + 1264));
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(*(v81 + 1288));
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(*(v81 + 1320));
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(*(v81 + 1344));
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(*(v81 + 1376));
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(*(v81 + 1400));
  }

  if (SLOBYTE(STACK[0x627]) < 0)
  {
    operator delete(*(v81 + 1432));
  }

  if (SLOBYTE(STACK[0x63F]) < 0)
  {
    operator delete(*(v81 + 1456));
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(*(v81 + 1488));
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(*(v81 + 1512));
  }

  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(*(v81 + 1544));
  }

  if (SLOBYTE(STACK[0x6AF]) < 0)
  {
    operator delete(*(v81 + 1568));
  }

  if (SLOBYTE(STACK[0x6CF]) < 0)
  {
    operator delete(*(v81 + 1600));
  }

  if (SLOBYTE(STACK[0x6E7]) < 0)
  {
    operator delete(*(v81 + 1624));
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(*(v81 + 1656));
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(*(v81 + 1680));
  }

  if (SLOBYTE(STACK[0x73F]) < 0)
  {
    operator delete(*(v81 + 1712));
  }

  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(*(v81 + 1736));
  }

  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(*(v81 + 1768));
  }

  if (SLOBYTE(STACK[0x78F]) < 0)
  {
    operator delete(*(v81 + 1792));
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(*(v81 + 1824));
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(*(v81 + 1848));
  }

  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(*(v81 + 1880));
  }

  if (SLOBYTE(STACK[0x7FF]) < 0)
  {
    operator delete(*(v81 + 1904));
  }

  if (SLOBYTE(STACK[0x81F]) < 0)
  {
    operator delete(*(v81 + 1936));
  }

  if (SLOBYTE(STACK[0x837]) < 0)
  {
    operator delete(*(v81 + 1960));
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(*(v81 + 1992));
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(*(v81 + 2016));
  }

  if (SLOBYTE(STACK[0x88F]) < 0)
  {
    operator delete(*(v81 + 2048));
  }

  if (SLOBYTE(STACK[0x8A7]) < 0)
  {
    operator delete(*(v81 + 2072));
  }

  if (SLOBYTE(STACK[0x8C7]) < 0)
  {
    operator delete(*(v81 + 2104));
  }

  if (SLOBYTE(STACK[0x8DF]) < 0)
  {
    operator delete(*(v81 + 2128));
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(*(v81 + 2160));
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(*(v81 + 2184));
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(*(v81 + 2216));
  }

  if (SLOBYTE(STACK[0x94F]) < 0)
  {
    operator delete(*(v81 + 2240));
  }

  if (SLOBYTE(STACK[0x96F]) < 0)
  {
    operator delete(*(v81 + 2272));
  }

  if (SLOBYTE(STACK[0x987]) < 0)
  {
    operator delete(*(v81 + 2296));
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(*(v81 + 2328));
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(*(v81 + 2352));
  }

  if (SLOBYTE(STACK[0x9DF]) < 0)
  {
    operator delete(*(v81 + 2384));
  }

  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(*(v81 + 2408));
  }

  if (SLOBYTE(STACK[0xA17]) < 0)
  {
    operator delete(*(v81 + 2440));
  }

  if (SLOBYTE(STACK[0xA2F]) < 0)
  {
    operator delete(*(v81 + 2464));
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(*(v81 + 2496));
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(*(v81 + 2520));
  }

  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(*(v81 + 2552));
  }

  if (SLOBYTE(STACK[0xA9F]) < 0)
  {
    operator delete(*(v81 + 2576));
  }

  if (SLOBYTE(STACK[0xABF]) < 0)
  {
    operator delete(*(v81 + 2608));
  }

  if (SLOBYTE(STACK[0xAD7]) < 0)
  {
    operator delete(*(v81 + 2632));
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(*(v81 + 2664));
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(*(v81 + 2688));
  }

  if (SLOBYTE(STACK[0xB2F]) < 0)
  {
    operator delete(*(v81 + 2720));
  }

  if (SLOBYTE(STACK[0xB47]) < 0)
  {
    operator delete(*(v81 + 2744));
  }

  if (SLOBYTE(STACK[0xB67]) < 0)
  {
    operator delete(*(v81 + 2776));
  }

  if (SLOBYTE(STACK[0xB7F]) < 0)
  {
    operator delete(*(v81 + 2800));
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(*(v81 + 2832));
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(*(v81 + 2856));
  }

  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(*(v81 + 2888));
  }

  if (SLOBYTE(STACK[0xBEF]) < 0)
  {
    operator delete(*(v81 + 2912));
  }

  if (SLOBYTE(STACK[0xC0F]) < 0)
  {
    operator delete(*(v81 + 2944));
  }

  if (SLOBYTE(STACK[0xC27]) < 0)
  {
    operator delete(*(v81 + 2968));
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(*(v81 + 3000));
  }

  if (SLOBYTE(STACK[0xC5F]) < 0)
  {
    operator delete(*(v81 + 3024));
  }

  if (SLOBYTE(STACK[0xC7F]) < 0)
  {
    operator delete(*(v81 + 3056));
  }

  if (SLOBYTE(STACK[0xC97]) < 0)
  {
    operator delete(*(v81 + 3080));
  }

  if (SLOBYTE(STACK[0xCB7]) < 0)
  {
    operator delete(*(v81 + 3112));
  }

  if (SLOBYTE(STACK[0xCCF]) < 0)
  {
    operator delete(*(v81 + 3136));
  }

  if (SLOBYTE(STACK[0xCEF]) < 0)
  {
    operator delete(*(v81 + 3168));
  }

  if (SLOBYTE(STACK[0xD07]) < 0)
  {
    operator delete(*(v81 + 3192));
  }

  if (SLOBYTE(STACK[0xD27]) < 0)
  {
    operator delete(*(v81 + 3224));
  }

  if (SLOBYTE(STACK[0xD3F]) < 0)
  {
    operator delete(*(v81 + 3248));
  }

  if (SLOBYTE(STACK[0xD5F]) < 0)
  {
    operator delete(*(v81 + 3280));
  }

  if (SLOBYTE(STACK[0xD77]) < 0)
  {
    operator delete(*(v81 + 3304));
  }

  if (SLOBYTE(STACK[0xD97]) < 0)
  {
    operator delete(*(v81 + 3336));
  }

  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(*(v81 + 3360));
  }

  if (SLOBYTE(STACK[0xDCF]) < 0)
  {
    operator delete(*(v81 + 3392));
  }

  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(*(v81 + 3416));
  }

  if (SLOBYTE(STACK[0xE07]) < 0)
  {
    operator delete(*(v81 + 3448));
  }

  if (SLOBYTE(STACK[0xE1F]) < 0)
  {
    operator delete(*(v81 + 3472));
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(*(v81 + 3504));
  }

  if (SLOBYTE(STACK[0xE57]) < 0)
  {
    operator delete(*(v81 + 3528));
  }

  if (SLOBYTE(STACK[0xE77]) < 0)
  {
    operator delete(*(v81 + 3560));
  }

  if (SLOBYTE(STACK[0xE8F]) < 0)
  {
    operator delete(*(v81 + 3584));
  }

  if (SLOBYTE(STACK[0xEAF]) < 0)
  {
    operator delete(*(v81 + 3616));
  }

  if (SLOBYTE(STACK[0xEC7]) < 0)
  {
    operator delete(*(v81 + 3640));
  }

  if (SLOBYTE(STACK[0xEE7]) < 0)
  {
    operator delete(*(v81 + 3672));
  }

  if (SLOBYTE(STACK[0xEFF]) < 0)
  {
    operator delete(*(v81 + 3696));
  }

  if (SLOBYTE(STACK[0xF1F]) < 0)
  {
    operator delete(*(v81 + 3728));
  }

  if (SLOBYTE(STACK[0xF37]) < 0)
  {
    operator delete(*(v81 + 3752));
  }

  if (SLOBYTE(STACK[0xF57]) < 0)
  {
    operator delete(*(v81 + 3784));
  }

  if (SLOBYTE(STACK[0xF6F]) < 0)
  {
    operator delete(*(v81 + 3808));
  }

  if (*(v81 + 3863) < 0)
  {
    operator delete(*(v81 + 3840));
  }

  if (*(v81 + 3887) < 0)
  {
    operator delete(*(v81 + 3864));
  }

  if (*(v81 + 3919) < 0)
  {
    operator delete(*(v81 + 3896));
  }

  if (*(v81 + 3943) < 0)
  {
    operator delete(*(v81 + 3920));
  }

  if (*(v81 + 3975) < 0)
  {
    operator delete(*(v81 + 3952));
  }

  if (*(v81 + 3999) < 0)
  {
    operator delete(*(v81 + 3976));
  }

  if (*(v81 + 4031) < 0)
  {
    operator delete(*(v81 + 4008));
  }

  if (*(v81 + 4055) < 0)
  {
    operator delete(*(v81 + 4032));
  }

  if (*(v81 + 4087) < 0)
  {
    operator delete(*(v81 + 4064));
  }

  if (*(v84 + 23) < 0)
  {
    operator delete(*v84);
  }

  if (*(v84 + 55) < 0)
  {
    operator delete(*(v84 + 32));
  }

  if (*(v84 + 79) < 0)
  {
    operator delete(*(v84 + 56));
  }

  if (*(v84 + 111) < 0)
  {
    operator delete(*(v84 + 88));
  }

  if (*(v84 + 135) < 0)
  {
    operator delete(*(v84 + 112));
  }

  if (*(v84 + 167) < 0)
  {
    operator delete(*(v84 + 144));
  }

  if (*(v84 + 191) < 0)
  {
    operator delete(*(v84 + 168));
  }

  if (*(v84 + 223) < 0)
  {
    operator delete(*(v84 + 200));
  }

  if (*(v84 + 247) < 0)
  {
    operator delete(*(v84 + 224));
  }

  if (*(v84 + 279) < 0)
  {
    operator delete(*(v84 + 256));
  }

  if (*(v84 + 303) < 0)
  {
    operator delete(*(v84 + 280));
  }

  if (*(v84 + 335) < 0)
  {
    operator delete(*(v84 + 312));
  }

  if (*(v84 + 359) < 0)
  {
    operator delete(*(v84 + 336));
  }

  if (*(v84 + 391) < 0)
  {
    operator delete(*(v84 + 368));
  }

  if (*(v84 + 415) < 0)
  {
    operator delete(*(v84 + 392));
  }

  if (*(v84 + 447) < 0)
  {
    operator delete(*(v84 + 424));
  }

  if (*(v84 + 471) < 0)
  {
    operator delete(*(v84 + 448));
  }

  if (*(v84 + 503) < 0)
  {
    operator delete(*(v84 + 480));
  }

  if (*(v84 + 527) < 0)
  {
    operator delete(*(v84 + 504));
  }

  if (*(v84 + 559) < 0)
  {
    operator delete(*(v84 + 536));
  }

  if (*(v84 + 583) < 0)
  {
    operator delete(*(v84 + 560));
  }

  if (*(v84 + 615) < 0)
  {
    operator delete(*(v84 + 592));
  }

  if (*(v84 + 639) < 0)
  {
    operator delete(*(v84 + 616));
  }

  if (*(v84 + 671) < 0)
  {
    operator delete(*(v84 + 648));
  }

  if (*(v84 + 695) < 0)
  {
    operator delete(*(v84 + 672));
  }

  if (*(v84 + 727) < 0)
  {
    operator delete(*(v84 + 704));
  }

  if (*(v84 + 751) < 0)
  {
    operator delete(*(v84 + 728));
  }

  if (*(v84 + 783) < 0)
  {
    operator delete(*(v84 + 760));
  }

  if (*(v84 + 807) < 0)
  {
    operator delete(*(v84 + 784));
  }

  if (*(v84 + 839) < 0)
  {
    operator delete(*(v84 + 816));
  }

  if (*(v84 + 863) < 0)
  {
    operator delete(*(v84 + 840));
  }

  if (*(v84 + 895) < 0)
  {
    operator delete(*(v84 + 872));
  }

  if (*(v84 + 919) < 0)
  {
    operator delete(*(v84 + 896));
  }

  if (*(v84 + 951) < 0)
  {
    operator delete(*(v84 + 928));
  }

  if (*(v84 + 975) < 0)
  {
    operator delete(*(v84 + 952));
  }

  if (*(v84 + 1007) < 0)
  {
    operator delete(*(v84 + 984));
  }

  if (*(v84 + 1031) < 0)
  {
    operator delete(*(v84 + 1008));
  }

  if (*(v84 + 1063) < 0)
  {
    operator delete(*(v84 + 1040));
  }

  if (*(v84 + 1087) < 0)
  {
    operator delete(*(v84 + 1064));
  }

  if (*(v84 + 1119) < 0)
  {
    operator delete(*(v84 + 1096));
  }

  if (*(v84 + 1143) < 0)
  {
    operator delete(*(v84 + 1120));
  }

  if (*(v84 + 1175) < 0)
  {
    operator delete(*(v84 + 1152));
  }

  if (*(v84 + 1199) < 0)
  {
    operator delete(*(v84 + 1176));
  }

  if (*(v84 + 1231) < 0)
  {
    operator delete(*(v84 + 1208));
  }

  if (*(v84 + 1255) < 0)
  {
    operator delete(*(v84 + 1232));
  }

  if (*(v84 + 1287) < 0)
  {
    operator delete(*(v84 + 1264));
  }

  if (*(v84 + 1311) < 0)
  {
    operator delete(*(v84 + 1288));
  }

  if (*(v84 + 1343) < 0)
  {
    operator delete(*(v84 + 1320));
  }

  if (*(v84 + 1367) < 0)
  {
    operator delete(*(v84 + 1344));
  }

  if (*(v84 + 1399) < 0)
  {
    operator delete(*(v84 + 1376));
  }

  if (*(v84 + 1423) < 0)
  {
    operator delete(*(v84 + 1400));
  }

  if (*(v84 + 1455) < 0)
  {
    operator delete(*(v84 + 1432));
  }

  if (*(v84 + 1479) < 0)
  {
    operator delete(*(v84 + 1456));
  }

  if (*(v84 + 1511) < 0)
  {
    operator delete(*(v84 + 1488));
  }

  if (*(v84 + 1535) < 0)
  {
    operator delete(*(v84 + 1512));
  }

  if (*(v84 + 1567) < 0)
  {
    operator delete(*(v84 + 1544));
  }

  if (*(v84 + 1591) < 0)
  {
    operator delete(*(v84 + 1568));
  }

  if (*(v84 + 1623) < 0)
  {
    operator delete(*(v84 + 1600));
  }

  if (*(v84 + 1647) < 0)
  {
    operator delete(*(v84 + 1624));
  }

  if (*(v84 + 1679) < 0)
  {
    operator delete(*(v84 + 1656));
  }

  if (*(v84 + 1703) < 0)
  {
    operator delete(*(v84 + 1680));
  }

  if (*(v84 + 1735) < 0)
  {
    operator delete(*(v84 + 1712));
  }

  if (*(v84 + 1759) < 0)
  {
    operator delete(*(v84 + 1736));
  }

  if (*(v84 + 1791) < 0)
  {
    operator delete(*(v84 + 1768));
  }

  if (*(v84 + 1815) < 0)
  {
    operator delete(*(v84 + 1792));
  }

  if (*(v84 + 1847) < 0)
  {
    operator delete(*(v84 + 1824));
  }

  if (*(v84 + 1871) < 0)
  {
    operator delete(*(v84 + 1848));
  }

  if (*(v84 + 1903) < 0)
  {
    operator delete(*(v84 + 1880));
  }

  if (*(v84 + 1927) < 0)
  {
    operator delete(*(v84 + 1904));
  }

  if (*(v84 + 1959) < 0)
  {
    operator delete(*(v84 + 1936));
  }

  if (*(v84 + 1983) < 0)
  {
    operator delete(*(v84 + 1960));
  }

  if (*(v84 + 2015) < 0)
  {
    operator delete(*(v84 + 1992));
  }

  if (*(v84 + 2039) < 0)
  {
    operator delete(*(v84 + 2016));
  }

  if (*(v84 + 2071) < 0)
  {
    operator delete(*(v84 + 2048));
  }

  if (*(v84 + 2095) < 0)
  {
    operator delete(*(v84 + 2072));
  }

  if (*(v84 + 2127) < 0)
  {
    operator delete(*(v84 + 2104));
  }

  if (*(v84 + 2151) < 0)
  {
    operator delete(*(v84 + 2128));
  }

  if (*(v84 + 2183) < 0)
  {
    operator delete(*(v84 + 2160));
  }

  if (*(v84 + 2207) < 0)
  {
    operator delete(*(v84 + 2184));
  }

  if (*(v84 + 2239) < 0)
  {
    operator delete(*(v84 + 2216));
  }

  if (*(v84 + 2263) < 0)
  {
    operator delete(*(v84 + 2240));
  }

  if (*(v84 + 2295) < 0)
  {
    operator delete(*(v84 + 2272));
  }

  if (*(v84 + 2319) < 0)
  {
    operator delete(*(v84 + 2296));
  }

  if (*(v84 + 2351) < 0)
  {
    operator delete(*(v84 + 2328));
  }

  if (*(v84 + 2375) < 0)
  {
    operator delete(*(v84 + 2352));
  }

  if (*(v84 + 2407) < 0)
  {
    operator delete(*(v84 + 2384));
  }

  if (*(v84 + 2431) < 0)
  {
    operator delete(*(v84 + 2408));
  }

  if (*(v84 + 2463) < 0)
  {
    operator delete(*(v84 + 2440));
  }

  if (*(v84 + 2487) < 0)
  {
    operator delete(*(v84 + 2464));
  }

  if (*(v84 + 2519) < 0)
  {
    operator delete(*(v84 + 2496));
  }

  if (*(v84 + 2543) < 0)
  {
    operator delete(*(v84 + 2520));
  }

  if (*(v84 + 2575) < 0)
  {
    operator delete(*(v84 + 2552));
  }

  if (*(v84 + 2599) < 0)
  {
    operator delete(*(v84 + 2576));
  }

  if (*(v84 + 2631) < 0)
  {
    operator delete(*(v84 + 2608));
  }

  if (*(v84 + 2655) < 0)
  {
    operator delete(*(v84 + 2632));
  }

  if (*(v84 + 2687) < 0)
  {
    operator delete(*(v84 + 2664));
  }

  if (*(v84 + 2711) < 0)
  {
    operator delete(*(v84 + 2688));
  }

  if (*(v84 + 2743) < 0)
  {
    operator delete(*(v84 + 2720));
  }

  if (*(v84 + 2767) < 0)
  {
    operator delete(*(v84 + 2744));
  }

  if (*(v84 + 2799) < 0)
  {
    operator delete(*(v84 + 2776));
  }

  if (*(v84 + 2823) < 0)
  {
    operator delete(*(v84 + 2800));
  }

  if (*(v84 + 2855) < 0)
  {
    operator delete(*(v84 + 2832));
  }

  if (*(v84 + 2879) < 0)
  {
    operator delete(*(v84 + 2856));
  }

  if (*(v84 + 2911) < 0)
  {
    operator delete(*(v84 + 2888));
  }

  if (*(v84 + 2935) < 0)
  {
    operator delete(*(v84 + 2912));
  }

  if (*(v84 + 2967) < 0)
  {
    operator delete(*(v84 + 2944));
  }

  if (*(v84 + 2991) < 0)
  {
    operator delete(*(v84 + 2968));
  }

  if (*(v84 + 3023) < 0)
  {
    operator delete(*(v84 + 3000));
  }

  if (*(v84 + 3047) < 0)
  {
    operator delete(*(v84 + 3024));
  }

  if (*(v84 + 3079) < 0)
  {
    operator delete(*(v84 + 3056));
  }

  if (*(v84 + 3103) < 0)
  {
    operator delete(*(v84 + 3080));
  }

  if (*(v84 + 3135) < 0)
  {
    operator delete(*(v84 + 3112));
  }

  if (*(v84 + 3159) < 0)
  {
    operator delete(*(v84 + 3136));
  }

  if (*(v84 + 3191) < 0)
  {
    operator delete(*(v84 + 3168));
  }

  if (*(v84 + 3215) < 0)
  {
    operator delete(*(v84 + 3192));
  }

  if (*(v84 + 3247) < 0)
  {
    operator delete(*(v84 + 3224));
  }

  if (*(v84 + 3271) < 0)
  {
    operator delete(*(v84 + 3248));
  }

  if (*(v84 + 3303) < 0)
  {
    operator delete(*(v84 + 3280));
  }

  if (*(v84 + 3327) < 0)
  {
    operator delete(*(v84 + 3304));
  }

  if (*(v84 + 3359) < 0)
  {
    operator delete(*(v84 + 3336));
  }

  if (*(v84 + 3383) < 0)
  {
    operator delete(*(v84 + 3360));
  }

  if (*(v84 + 3415) < 0)
  {
    operator delete(*(v84 + 3392));
  }

  if (*(v84 + 3439) < 0)
  {
    operator delete(*(v84 + 3416));
  }

  if (*(v84 + 3471) < 0)
  {
    operator delete(*(v84 + 3448));
  }

  if (*(v84 + 3495) < 0)
  {
    operator delete(*(v84 + 3472));
  }

  if (*(v84 + 3527) < 0)
  {
    operator delete(*(v84 + 3504));
  }

  if (*(v84 + 3551) < 0)
  {
    operator delete(*(v84 + 3528));
  }

  if (*(v84 + 3583) < 0)
  {
    operator delete(*(v84 + 3560));
  }

  if (*(v84 + 3607) < 0)
  {
    operator delete(*(v84 + 3584));
  }

  if (*(v84 + 3639) < 0)
  {
    operator delete(*(v84 + 3616));
  }

  if (*(v84 + 3663) < 0)
  {
    operator delete(*(v84 + 3640));
  }

  if (*(v84 + 3695) < 0)
  {
    operator delete(*(v84 + 3672));
  }

  if (*(v84 + 3719) < 0)
  {
    operator delete(*(v84 + 3696));
  }

  if (*(v84 + 3751) < 0)
  {
    operator delete(*(v84 + 3728));
  }

  if (*(v84 + 3775) < 0)
  {
    operator delete(*(v84 + 3752));
  }

  if (*(v84 + 3807) < 0)
  {
    operator delete(*(v84 + 3784));
  }

  if (*(v84 + 3831) < 0)
  {
    operator delete(*(v84 + 3808));
  }

  if (*(v84 + 3863) < 0)
  {
    operator delete(*(v84 + 3840));
  }

  if (*(v84 + 3887) < 0)
  {
    operator delete(*(v84 + 3864));
  }

  if (*(v84 + 3919) < 0)
  {
    operator delete(*(v84 + 3896));
  }

  if (*(v84 + 3943) < 0)
  {
    operator delete(*(v84 + 3920));
  }

  if (*(v84 + 3975) < 0)
  {
    operator delete(*(v84 + 3952));
  }

  if (*(v84 + 3999) < 0)
  {
    operator delete(*(v84 + 3976));
  }

  if (*(v84 + 4031) < 0)
  {
    operator delete(*(v84 + 4008));
  }

  if (*(v84 + 4055) < 0)
  {
    operator delete(*(v84 + 4032));
  }

  if (*(v84 + 4087) < 0)
  {
    operator delete(*(v84 + 4064));
  }

  if (*(v83 + 23) < 0)
  {
    operator delete(*v83);
  }

  if (*(v83 + 55) < 0)
  {
    operator delete(*(v83 + 32));
  }

  if (*(v83 + 79) < 0)
  {
    operator delete(*(v83 + 56));
  }

  if (*(v83 + 111) < 0)
  {
    operator delete(*(v83 + 88));
  }

  if (*(v83 + 135) < 0)
  {
    operator delete(*(v83 + 112));
  }

  if (*(v83 + 167) < 0)
  {
    operator delete(*(v83 + 144));
  }

  if (*(v83 + 191) < 0)
  {
    operator delete(*(v83 + 168));
  }

  if (*(v83 + 223) < 0)
  {
    operator delete(*(v83 + 200));
  }

  if (*(v83 + 247) < 0)
  {
    operator delete(*(v83 + 224));
  }

  if (*(v83 + 279) < 0)
  {
    operator delete(*(v83 + 256));
  }

  if (*(v83 + 303) < 0)
  {
    operator delete(*(v83 + 280));
  }

  if (*(v83 + 335) < 0)
  {
    operator delete(*(v83 + 312));
  }

  if (*(v83 + 359) < 0)
  {
    operator delete(*(v83 + 336));
  }

  if (*(v83 + 391) < 0)
  {
    operator delete(*(v83 + 368));
  }

  if (*(v83 + 415) < 0)
  {
    operator delete(*(v83 + 392));
  }

  if (*(v83 + 447) < 0)
  {
    operator delete(*(v83 + 424));
  }

  if (*(v83 + 471) < 0)
  {
    operator delete(*(v83 + 448));
  }

  if (*(v83 + 503) < 0)
  {
    operator delete(*(v83 + 480));
  }

  if (*(v83 + 527) < 0)
  {
    operator delete(*(v83 + 504));
  }

  if (*(v83 + 559) < 0)
  {
    operator delete(*(v83 + 536));
  }

  if (*(v83 + 583) < 0)
  {
    operator delete(*(v83 + 560));
  }

  if (*(v83 + 615) < 0)
  {
    operator delete(*(v83 + 592));
  }

  if (*(v83 + 639) < 0)
  {
    operator delete(*(v83 + 616));
  }

  if (*(v83 + 671) < 0)
  {
    operator delete(*(v83 + 648));
  }

  if (*(v83 + 695) < 0)
  {
    operator delete(*(v83 + 672));
  }

  if (*(v83 + 727) < 0)
  {
    operator delete(*(v83 + 704));
  }

  if (*(v83 + 751) < 0)
  {
    operator delete(*(v83 + 728));
  }

  if (*(v83 + 783) < 0)
  {
    operator delete(*(v83 + 760));
  }

  if (*(v83 + 807) < 0)
  {
    operator delete(*(v83 + 784));
  }

  if (*(v83 + 839) < 0)
  {
    operator delete(*(v83 + 816));
  }

  if (*(v83 + 863) < 0)
  {
    operator delete(*(v83 + 840));
  }

  if (*(v83 + 895) < 0)
  {
    operator delete(*(v83 + 872));
  }

  if (*(v83 + 919) < 0)
  {
    operator delete(*(v83 + 896));
  }

  if (*(v83 + 951) < 0)
  {
    operator delete(*(v83 + 928));
  }

  if (*(v83 + 975) < 0)
  {
    operator delete(*(v83 + 952));
  }

  if (*(v83 + 1007) < 0)
  {
    operator delete(*(v83 + 984));
  }

  if (*(v83 + 1031) < 0)
  {
    operator delete(*(v83 + 1008));
  }

  if (*(v83 + 1063) < 0)
  {
    operator delete(*(v83 + 1040));
  }

  if (*(v83 + 1087) < 0)
  {
    operator delete(*(v83 + 1064));
  }

  if (*(v83 + 1119) < 0)
  {
    operator delete(*(v83 + 1096));
  }

  if (*(v83 + 1143) < 0)
  {
    operator delete(*(v83 + 1120));
  }

  if (*(v83 + 1175) < 0)
  {
    operator delete(*(v83 + 1152));
  }

  if (*(v83 + 1199) < 0)
  {
    operator delete(*(v83 + 1176));
  }

  if (*(v83 + 1231) < 0)
  {
    operator delete(*(v83 + 1208));
  }

  if (*(v83 + 1255) < 0)
  {
    operator delete(*(v83 + 1232));
  }

  if (*(v83 + 1287) < 0)
  {
    operator delete(*(v83 + 1264));
  }

  if (*(v83 + 1311) < 0)
  {
    operator delete(*(v83 + 1288));
  }

  if (*(v83 + 1343) < 0)
  {
    operator delete(*(v83 + 1320));
  }

  if (*(v83 + 1367) < 0)
  {
    operator delete(*(v83 + 1344));
  }

  if (*(v83 + 1399) < 0)
  {
    operator delete(*(v83 + 1376));
  }

  if (*(v83 + 1423) < 0)
  {
    operator delete(*(v83 + 1400));
  }

  if (*(v83 + 1455) < 0)
  {
    operator delete(*(v83 + 1432));
  }

  if (*(v83 + 1479) < 0)
  {
    operator delete(*(v83 + 1456));
  }

  if (*(v83 + 1511) < 0)
  {
    operator delete(*(v83 + 1488));
  }

  if (*(v83 + 1535) < 0)
  {
    operator delete(*(v83 + 1512));
  }

  if (*(v83 + 1567) < 0)
  {
    operator delete(*(v83 + 1544));
  }

  if (*(v83 + 1591) < 0)
  {
    operator delete(*(v83 + 1568));
  }

  if (*(v83 + 1623) < 0)
  {
    operator delete(*(v83 + 1600));
  }

  if (*(v83 + 1647) < 0)
  {
    operator delete(*(v83 + 1624));
  }

  if (*(v83 + 1679) < 0)
  {
    operator delete(*(v83 + 1656));
  }

  if (*(v83 + 1703) < 0)
  {
    operator delete(*(v83 + 1680));
  }

  if (*(v83 + 1735) < 0)
  {
    operator delete(*(v83 + 1712));
  }

  if (*(v83 + 1759) < 0)
  {
    operator delete(*(v83 + 1736));
  }

  if (*(v83 + 1791) < 0)
  {
    operator delete(*(v83 + 1768));
  }

  if (*(v83 + 1815) < 0)
  {
    operator delete(*(v83 + 1792));
  }

  if (*(v83 + 1847) < 0)
  {
    operator delete(*(v83 + 1824));
  }

  if (*(v83 + 1871) < 0)
  {
    operator delete(*(v83 + 1848));
  }

  if (*(v83 + 1903) < 0)
  {
    operator delete(*(v83 + 1880));
  }

  if (*(v83 + 1927) < 0)
  {
    operator delete(*(v83 + 1904));
  }

  if (*(v83 + 1959) < 0)
  {
    operator delete(*(v83 + 1936));
  }

  if (*(v83 + 1983) < 0)
  {
    operator delete(*(v83 + 1960));
  }

  if (*(v83 + 2015) < 0)
  {
    operator delete(*(v83 + 1992));
  }

  if (*(v83 + 2039) < 0)
  {
    operator delete(*(v83 + 2016));
  }

  if (*(v83 + 2071) < 0)
  {
    operator delete(*(v83 + 2048));
  }

  if (*(v83 + 2095) < 0)
  {
    operator delete(*(v83 + 2072));
  }

  if (*(v83 + 2127) < 0)
  {
    operator delete(*(v83 + 2104));
  }

  if (*(v83 + 2151) < 0)
  {
    operator delete(*(v83 + 2128));
  }

  if (*(v83 + 2183) < 0)
  {
    operator delete(*(v83 + 2160));
  }

  if (*(v83 + 2207) < 0)
  {
    operator delete(*(v83 + 2184));
  }

  if (*(v83 + 2239) < 0)
  {
    operator delete(*(v83 + 2216));
  }

  if (*(v83 + 2263) < 0)
  {
    operator delete(*(v83 + 2240));
  }

  if (*(v83 + 2295) < 0)
  {
    operator delete(*(v83 + 2272));
  }

  if (*(v83 + 2319) < 0)
  {
    operator delete(*(v83 + 2296));
  }

  if (*(v83 + 2351) < 0)
  {
    operator delete(*(v83 + 2328));
  }

  if (*(v83 + 2375) < 0)
  {
    operator delete(*(v83 + 2352));
  }

  if (*(v83 + 2407) < 0)
  {
    operator delete(*(v83 + 2384));
  }

  if (*(v83 + 2431) < 0)
  {
    operator delete(*(v83 + 2408));
  }

  if (*(v83 + 2463) < 0)
  {
    operator delete(*(v83 + 2440));
  }

  if (*(v83 + 2487) < 0)
  {
    operator delete(*(v83 + 2464));
  }

  if (*(v83 + 2519) < 0)
  {
    operator delete(*(v83 + 2496));
  }

  if (*(v83 + 2543) < 0)
  {
    operator delete(*(v83 + 2520));
  }

  if (*(v83 + 2575) < 0)
  {
    operator delete(*(v83 + 2552));
  }

  if (*(v83 + 2599) < 0)
  {
    operator delete(*(v83 + 2576));
  }

  if (*(v83 + 2631) < 0)
  {
    operator delete(*(v83 + 2608));
  }

  if (*(v83 + 2655) < 0)
  {
    operator delete(*(v83 + 2632));
  }

  if (*(v83 + 2687) < 0)
  {
    operator delete(*(v83 + 2664));
  }

  if (*(v83 + 2711) < 0)
  {
    operator delete(*(v83 + 2688));
  }

  if (*(v83 + 2743) < 0)
  {
    operator delete(*(v83 + 2720));
  }

  if (*(v83 + 2767) < 0)
  {
    operator delete(*(v83 + 2744));
  }

  if (*(v83 + 2799) < 0)
  {
    operator delete(*(v83 + 2776));
  }

  if (*(v83 + 2823) < 0)
  {
    operator delete(*(v83 + 2800));
  }

  if (*(v83 + 2855) < 0)
  {
    operator delete(*(v83 + 2832));
  }

  if (*(v83 + 2879) < 0)
  {
    operator delete(*(v83 + 2856));
  }

  if (*(v83 + 2911) < 0)
  {
    operator delete(*(v83 + 2888));
  }

  if (*(v83 + 2935) < 0)
  {
    operator delete(*(v83 + 2912));
  }

  if (*(v83 + 2967) < 0)
  {
    operator delete(*(v83 + 2944));
  }

  if (*(v83 + 2991) < 0)
  {
    operator delete(*(v83 + 2968));
  }

  if (*(v83 + 3023) < 0)
  {
    operator delete(*(v83 + 3000));
  }

  if (*(v83 + 3047) < 0)
  {
    operator delete(*(v83 + 3024));
  }

  if (*(v83 + 3079) < 0)
  {
    operator delete(*(v83 + 3056));
  }

  if (*(v83 + 3103) < 0)
  {
    operator delete(*(v83 + 3080));
  }

  if (*(v83 + 3135) < 0)
  {
    operator delete(*(v83 + 3112));
  }

  if (*(v83 + 3159) < 0)
  {
    operator delete(*(v83 + 3136));
  }

  if (*(v83 + 3191) < 0)
  {
    operator delete(*(v83 + 3168));
  }

  if (*(v83 + 3215) < 0)
  {
    operator delete(*(v83 + 3192));
  }

  if (*(v83 + 3247) < 0)
  {
    operator delete(*(v83 + 3224));
  }

  if (*(v83 + 3271) < 0)
  {
    operator delete(*(v83 + 3248));
  }

  if (*(v83 + 3303) < 0)
  {
    operator delete(*(v83 + 3280));
  }

  if (*(v83 + 3327) < 0)
  {
    operator delete(*(v83 + 3304));
  }

  if (*(v83 + 3359) < 0)
  {
    operator delete(*(v83 + 3336));
  }

  if (*(v83 + 3383) < 0)
  {
    operator delete(*(v83 + 3360));
  }

  if (*(v83 + 3415) < 0)
  {
    operator delete(*(v83 + 3392));
  }

  if (*(v83 + 3439) < 0)
  {
    operator delete(*(v83 + 3416));
  }

  if (*(v83 + 3471) < 0)
  {
    operator delete(*(v83 + 3448));
  }

  if (*(v83 + 3495) < 0)
  {
    operator delete(*(v83 + 3472));
  }

  if (*(v83 + 3527) < 0)
  {
    operator delete(*(v83 + 3504));
  }

  if (*(v83 + 3551) < 0)
  {
    operator delete(*(v83 + 3528));
  }

  if (*(v83 + 3583) < 0)
  {
    operator delete(*(v83 + 3560));
  }

  if (*(v83 + 3607) < 0)
  {
    operator delete(*(v83 + 3584));
  }

  if (*(v83 + 3639) < 0)
  {
    operator delete(*(v83 + 3616));
  }

  if (*(v83 + 3663) < 0)
  {
    operator delete(*(v83 + 3640));
  }

  if (*(v83 + 3695) < 0)
  {
    operator delete(*(v83 + 3672));
  }

  if (*(v83 + 3719) < 0)
  {
    operator delete(*(v83 + 3696));
  }

  if (*(v83 + 3751) < 0)
  {
    operator delete(*(v83 + 3728));
  }

  if (*(v83 + 3775) < 0)
  {
    operator delete(*(v83 + 3752));
  }

  if (*(v83 + 3807) < 0)
  {
    operator delete(*(v83 + 3784));
  }

  if (*(v83 + 3831) < 0)
  {
    operator delete(*(v83 + 3808));
  }

  if (*(v83 + 3863) < 0)
  {
    operator delete(*(v83 + 3840));
  }

  if (*(v83 + 3887) < 0)
  {
    operator delete(*(v83 + 3864));
  }

  if (*(v83 + 3919) < 0)
  {
    operator delete(*(v83 + 3896));
  }

  if (*(v83 + 3943) < 0)
  {
    operator delete(*(v83 + 3920));
  }

  if (*(v83 + 3975) < 0)
  {
    operator delete(*(v83 + 3952));
  }

  if (*(v83 + 3999) < 0)
  {
    operator delete(*(v83 + 3976));
  }

  if (*(v83 + 4031) < 0)
  {
    operator delete(*(v83 + 4008));
  }

  if (*(v83 + 4055) < 0)
  {
    operator delete(*(v83 + 4032));
  }

  if (*(v83 + 4087) < 0)
  {
    operator delete(*(v83 + 4064));
  }

  if (*(v82 + 23) < 0)
  {
    operator delete(*v82);
  }

  if (*(v82 + 55) < 0)
  {
    operator delete(*(v82 + 32));
  }

  if (*(v82 + 79) < 0)
  {
    operator delete(*(v82 + 56));
  }

  if (*(v82 + 111) < 0)
  {
    operator delete(*(v82 + 88));
  }

  if (*(v82 + 135) < 0)
  {
    operator delete(*(v82 + 112));
  }

  if (*(v82 + 167) < 0)
  {
    operator delete(*(v82 + 144));
  }

  if (*(v82 + 191) < 0)
  {
    operator delete(*(v82 + 168));
  }

  if (*(v82 + 223) < 0)
  {
    operator delete(*(v82 + 200));
  }

  if (*(v82 + 247) < 0)
  {
    operator delete(*(v82 + 224));
  }

  if (*(v82 + 279) < 0)
  {
    operator delete(*(v82 + 256));
  }

  if (*(v82 + 303) < 0)
  {
    operator delete(*(v82 + 280));
  }

  if (*(v82 + 335) < 0)
  {
    operator delete(*(v82 + 312));
  }

  if (*(v82 + 359) < 0)
  {
    operator delete(*(v82 + 336));
  }

  if (*(v82 + 391) < 0)
  {
    operator delete(*(v82 + 368));
  }

  if (*(v82 + 415) < 0)
  {
    operator delete(*(v82 + 392));
  }

  if (*(v82 + 447) < 0)
  {
    operator delete(*(v82 + 424));
  }

  if (*(v82 + 471) < 0)
  {
    operator delete(*(v82 + 448));
  }

  if (*(v82 + 503) < 0)
  {
    operator delete(*(v82 + 480));
  }

  if (*(v82 + 527) < 0)
  {
    operator delete(*(v82 + 504));
  }

  if (*(v82 + 559) < 0)
  {
    operator delete(*(v82 + 536));
  }

  if (*(v82 + 583) < 0)
  {
    operator delete(*(v82 + 560));
  }

  if (*(v82 + 615) < 0)
  {
    operator delete(*(v82 + 592));
  }

  if (*(v82 + 639) < 0)
  {
    operator delete(*(v82 + 616));
  }

  if (*(v82 + 671) < 0)
  {
    operator delete(*(v82 + 648));
  }

  if (*(v82 + 695) < 0)
  {
    operator delete(*(v82 + 672));
  }

  if (*(v82 + 727) < 0)
  {
    operator delete(*(v82 + 704));
  }

  if (*(v82 + 751) < 0)
  {
    operator delete(*(v82 + 728));
  }

  if (*(v82 + 783) < 0)
  {
    operator delete(*(v82 + 760));
  }

  if (*(v82 + 807) < 0)
  {
    operator delete(*(v82 + 784));
  }

  if (*(v82 + 839) < 0)
  {
    operator delete(*(v82 + 816));
  }

  if (*(v82 + 863) < 0)
  {
    operator delete(*(v82 + 840));
  }

  if (*(v82 + 895) < 0)
  {
    operator delete(*(v82 + 872));
  }

  if (*(v82 + 919) < 0)
  {
    operator delete(*(v82 + 896));
  }

  if (*(v82 + 951) < 0)
  {
    operator delete(*(v82 + 928));
  }

  if (*(v82 + 975) < 0)
  {
    operator delete(*(v82 + 952));
  }

  if (*(v82 + 1007) < 0)
  {
    operator delete(*(v82 + 984));
  }

  if (*(v82 + 1031) < 0)
  {
    operator delete(*(v82 + 1008));
  }

  if (*(v82 + 1063) < 0)
  {
    operator delete(*(v82 + 1040));
  }

  if (*(v82 + 1087) < 0)
  {
    operator delete(*(v82 + 1064));
  }

  if (*(v82 + 1119) < 0)
  {
    operator delete(*(v82 + 1096));
  }

  if (*(v82 + 1143) < 0)
  {
    operator delete(*(v82 + 1120));
  }

  if (*(v82 + 1175) < 0)
  {
    operator delete(*(v82 + 1152));
  }

  if (*(v82 + 1199) < 0)
  {
    operator delete(*(v82 + 1176));
  }

  if (*(v82 + 1231) < 0)
  {
    operator delete(*(v82 + 1208));
  }

  if (*(v82 + 1255) < 0)
  {
    operator delete(*(v82 + 1232));
  }

  if (*(v82 + 1287) < 0)
  {
    operator delete(*(v82 + 1264));
  }

  if (*(v82 + 1311) < 0)
  {
    operator delete(*(v82 + 1288));
  }

  if (*(v82 + 1343) < 0)
  {
    operator delete(*(v82 + 1320));
  }

  if (*(v82 + 1367) < 0)
  {
    operator delete(*(v82 + 1344));
  }

  if (*(v82 + 1399) < 0)
  {
    operator delete(*(v82 + 1376));
  }

  if (*(v82 + 1423) < 0)
  {
    operator delete(*(v82 + 1400));
  }

  if (*(v82 + 1455) < 0)
  {
    operator delete(*(v82 + 1432));
  }

  if (*(v82 + 1479) < 0)
  {
    operator delete(*(v82 + 1456));
  }

  if (*(v82 + 1511) < 0)
  {
    operator delete(*(v82 + 1488));
  }

  if (*(v82 + 1535) < 0)
  {
    operator delete(*(v82 + 1512));
  }

  if (*(v82 + 1567) < 0)
  {
    operator delete(*(v82 + 1544));
  }

  _Unwind_Resume(a1);
}

void sub_1F413C0()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27F07F8 = 0;
  unk_27F0800 = 0;
  qword_27F0808 = 0;
  sub_68678C(&qword_27F07F8, __p, &v4, 1uLL);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27F0810 = 0;
  *algn_27F0818 = 0;
  qword_27F0820 = 0;
  sub_68678C(&qword_27F0810, __p, &v4, 1uLL);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27F0828 = 0;
  unk_27F0830 = 0;
  qword_27F0838 = 0;
  sub_68678C(&qword_27F0828, __p, &v4, 1uLL);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1F36904();
  sub_3608D0(__p, "en_US");
  v4 = 0;
  sub_3608D0(v5, "en-US_US");
  v6 = 0;
  sub_3608D0(v7, "en_AU");
  v8 = 1;
  sub_3608D0(v9, "en-AU_AU");
  v10 = 1;
  sub_3608D0(v11, "en_CA");
  v12 = 2;
  sub_3608D0(v13, "en-CA_CA");
  v14 = 2;
  sub_3608D0(v15, "en_GB");
  v16 = 3;
  sub_3608D0(v17, "en-GB_GB");
  v18 = 3;
  sub_3608D0(v19, "en_IE");
  v20 = 4;
  sub_3608D0(v21, "en-IE_IE");
  v22 = 4;
  sub_3608D0(v23, "en_NZ");
  v24 = 4;
  sub_3608D0(v25, "en-NZ_NZ");
  v26 = 4;
  sub_3608D0(v27, "en_ZA");
  v28 = 4;
  sub_3608D0(v29, "en-ZA_ZA");
  v30 = 4;
  sub_19664AC(&unk_27F0858, __p, 14);
  v0 = 56;
  do
  {
    if (*(&__p[v0 - 1] - 1) < 0)
    {
      operator delete(__p[v0 - 4]);
    }

    v0 -= 4;
  }

  while (v0 * 8);
  sub_3608D0(__p, "US");
  v4 = 1;
  sub_3608D0(v5, "AU");
  v6 = 2;
  sub_3608D0(v7, "CA");
  v8 = 3;
  sub_3608D0(v9, "GB");
  v10 = 4;
  sub_3608D0(v11, "IE");
  v12 = 5;
  sub_3608D0(v13, "NZ");
  v14 = 5;
  sub_3608D0(v15, "ZA");
  v16 = 5;
  sub_3608D0(v17, "ZA");
  v18 = 5;
  sub_3608D0(v19, "IN");
  v20 = 7;
  sub_3608D0(v21, "DE");
  v22 = 6;
  sub_3608D0(v23, "CH");
  v24 = 6;
  sub_3608D0(v25, "NL");
  v26 = 6;
  sub_3608D0(v27, "DK");
  v28 = 6;
  sub_3608D0(v29, "NO");
  v30 = 6;
  sub_3608D0(v31, "FI");
  v32 = 6;
  sub_3608D0(v33, "SE");
  v34 = 6;
  sub_3608D0(v35, "BE");
  v36 = 6;
  sub_3608D0(v37, "AT");
  v38 = 6;
  sub_3608D0(v39, "MX");
  v40 = 6;
  sub_3608D0(v41, "AR");
  v42 = 6;
  sub_3608D0(v43, "CL");
  v44 = 6;
  sub_3608D0(v45, "BR");
  v46 = 6;
  sub_3608D0(v47, "SK");
  v48 = 6;
  sub_3608D0(v49, "TR");
  v50 = 6;
  sub_3608D0(v51, "PL");
  v52 = 6;
  sub_3608D0(v53, "HR");
  v54 = 6;
  sub_3608D0(v55, "RO");
  v56 = 6;
  sub_3608D0(v57, "HU");
  v58 = 6;
  sub_3608D0(v59, "VN");
  v60 = 6;
  sub_3608D0(v61, "GR");
  v62 = 6;
  sub_3608D0(v63, "IL");
  v64 = 6;
  sub_3608D0(v65, "NG");
  v66 = 6;
  sub_3608D0(v67, "AE");
  v68 = 6;
  sub_3608D0(v69, "EG");
  v70 = 6;
  sub_1966844(&unk_27F0880, __p, 34);
  v1 = 136;
  do
  {
    if (*(&__p[v1 - 1] - 1) < 0)
    {
      operator delete(__p[v1 - 4]);
    }

    v1 -= 4;
  }

  while (v1 * 8);
}

void sub_1F41A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = (v15 + 1079);
  v18 = -1088;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 32;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 32;
    if (!v18)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_1F41BEC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = 8 * v8;
    do
    {
      v10 = *v7;
      v11 = *(*v7 + 136);
      sub_1812EE4(v12, v10);
      sub_1F43C84(&v13, &v11);
      sub_1812FDC(v12);
      ++v7;
      v9 -= 8;
    }

    while (v9);
  }

  sub_1F41CE8(a1, &v13, a2, a3);
  sub_1F43C28(&v13, v14[0]);
}

double sub_1F41CE8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  sub_1F41D44(a1, a2, a3);
  sub_1F42D90(a1, a2, a4);

  return sub_1F434A0(a1, a4);
}

uint64_t sub_1F41D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) |= 2u;
  v5 = *(a1 + 104);
  if (!v5)
  {
    v7 = *(a1 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v5 = sub_1864C74(v8);
    *(a1 + 104) = v5;
  }

  v9 = v5[5];
  if (v9 && (v10 = *(v5 + 8), v10 < *v9))
  {
    *(v5 + 8) = v10 + 1;
    v11 = *&v9[2 * v10 + 2];
  }

  else
  {
    v12 = sub_1864D10(v5[3]);
    v11 = sub_19593CC((v5 + 3), v12);
  }

  v13 = *(v11 + 16);
  *(v11 + 16) = v13 | 2;
  *(v11 + 32) = 1;
  v16 = *(a2 + 8);
  v15 = (a2 + 8);
  v14 = v16;
  v17 = v15;
  if (v16)
  {
    v18 = v15;
    do
    {
      if (v14[8] >= 64)
      {
        v18 = v14;
      }

      v14 = *&v14[2 * (v14[8] < 64)];
    }

    while (v14);
    v17 = v15;
    if (v18 != v15)
    {
      v17 = v15;
      if (v18[8] <= 64)
      {
        if (v18[24] >= 1 && (*(*(*(v18 + 13) + 8) + 47) & 8) != 0)
        {
          *(v11 + 16) = v13 | 3;
          v19 = *(v11 + 24);
          if (!v19)
          {
            v20 = *(v11 + 8);
            v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
            if (v20)
            {
              v21 = *v21;
            }

            sub_1864D8C(v21);
            v19 = v22;
            *(v11 + 24) = v22;
          }

          *(v19 + 16) |= 1u;
          v23 = *(v19 + 24);
          if (!v23)
          {
            v24 = *(v19 + 8);
            v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
            if (v24)
            {
              v25 = *v25;
            }

            v23 = sub_18652FC(v25);
            *(v19 + 24) = v23;
          }

          v26 = *(v23 + 32);
          if (v26 && (v27 = *(v23 + 24), v27 < *v26))
          {
            *(v23 + 24) = v27 + 1;
            v28 = *&v26[2 * v27 + 2];
          }

          else
          {
            sub_186527C(*(v23 + 16));
            v28 = sub_19593CC(v23 + 16, v29);
          }

          *(v28 + 16) |= 8u;
          *(v28 + 48) = 1;
        }

        v17 = v18;
      }
    }
  }

  v30 = sub_19C47B0(a3);
  v31 = *v15;
  if (*(v30 + 1184) == 1)
  {
    if (!v31)
    {
      goto LABEL_208;
    }

    v32 = v15;
    v33 = *v15;
    do
    {
      if (v33[8] >= 107)
      {
        v32 = v33;
      }

      v33 = *&v33[2 * (v33[8] < 107)];
    }

    while (v33);
    if (v32 != v15 && v32[8] <= 107 && v32[24] >= 1 && (*(*(*(v32 + 13) + 8) + 52) & 0x10) != 0)
    {
      *(v11 + 16) |= 1u;
      v34 = *(v11 + 24);
      if (!v34)
      {
        v35 = *(v11 + 8);
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v36 = *v36;
        }

        sub_1864D8C(v36);
        v34 = v37;
        *(v11 + 24) = v37;
      }

      *(v34 + 16) |= 1u;
      v38 = *(v34 + 24);
      if (!v38)
      {
        v39 = *(v34 + 8);
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v40 = *v40;
        }

        v38 = sub_18652FC(v40);
        *(v34 + 24) = v38;
      }

      v41 = *(v38 + 32);
      if (v41 && (v42 = *(v38 + 24), v42 < *v41))
      {
        *(v38 + 24) = v42 + 1;
        v43 = *&v41[2 * v42 + 2];
      }

      else
      {
        sub_186527C(*(v38 + 16));
        v43 = sub_19593CC(v38 + 16, v44);
      }

      *(v43 + 16) |= 8u;
      *(v43 + 48) = 10;
      v31 = *v15;
    }
  }

  if (v31)
  {
    v45 = v15;
    v46 = v31;
    do
    {
      if (v46[8] >= 6)
      {
        v45 = v46;
      }

      v46 = *&v46[2 * (v46[8] < 6)];
    }

    while (v46);
    if (v45 != v15 && v45[8] <= 6 && v17[24] >= 1 && (*(*(*(v45 + 13) + 8) + 40) & 0x20) != 0)
    {
      *(v11 + 16) |= 1u;
      v47 = *(v11 + 24);
      if (!v47)
      {
        v48 = *(v11 + 8);
        v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v49 = *v49;
        }

        sub_1864D8C(v49);
        v47 = v50;
        *(v11 + 24) = v50;
      }

      *(v47 + 16) |= 1u;
      v51 = *(v47 + 24);
      if (!v51)
      {
        v52 = *(v47 + 8);
        v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v53 = *v53;
        }

        v51 = sub_18652FC(v53);
        *(v47 + 24) = v51;
      }

      v54 = *(v51 + 32);
      if (v54 && (v55 = *(v51 + 24), v55 < *v54))
      {
        *(v51 + 24) = v55 + 1;
        v56 = *&v54[2 * v55 + 2];
      }

      else
      {
        sub_186527C(*(v51 + 16));
        v56 = sub_19593CC(v51 + 16, v57);
      }

      *(v56 + 16) |= 8u;
      *(v56 + 48) = 2;
      *(v11 + 16) |= 1u;
      v58 = *(v11 + 24);
      if (!v58)
      {
        v59 = *(v11 + 8);
        v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
        if (v59)
        {
          v60 = *v60;
        }

        sub_1864D8C(v60);
        v58 = v61;
        *(v11 + 24) = v61;
      }

      *(v58 + 16) |= 1u;
      v62 = *(v58 + 24);
      if (!v62)
      {
        v63 = *(v58 + 8);
        v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
        if (v63)
        {
          v64 = *v64;
        }

        v62 = sub_18652FC(v64);
        *(v58 + 24) = v62;
      }

      v65 = *(v62 + 32);
      if (v65 && (v66 = *(v62 + 24), v66 < *v65))
      {
        *(v62 + 24) = v66 + 1;
        v67 = *&v65[2 * v66 + 2];
      }

      else
      {
        sub_186527C(*(v62 + 16));
        v67 = sub_19593CC(v62 + 16, v68);
      }

      *(v67 + 16) |= 8u;
      *(v67 + 48) = 4;
      v31 = *v15;
    }

    if (v31)
    {
      v69 = v15;
      v70 = v31;
      do
      {
        if (v70[8] >= 15)
        {
          v69 = v70;
        }

        v70 = *&v70[2 * (v70[8] < 15)];
      }

      while (v70);
      if (v69 != v15 && v69[8] <= 15 && v69[24] >= 1)
      {
        v71 = *(*(v69 + 13) + 8);
        if ((*(v71 + 41) & 0x40) != 0)
        {
          v72 = *(v71 + 176);
          if (*(v72 + 80) >= 1)
          {
            v73 = *(*(*(v72 + 88) + 8) + 80) & 0xFFFFFFFFFFFFFFFELL;
            if (*(v73 + 23) < 0 && *(v73 + 8) == 31)
            {
              v74 = *v73;
              v75 = *v74;
              v76 = v74[1];
              v77 = v74[2];
              v78 = *(v74 + 23);
              v79 = v75 == 0x73756273736F7263 && v76 == 0x61702E7373656E69;
              v80 = v79 && v77 == 0x612E73746E656D79;
              if (v80 && v78 == 0x796170656C707061)
              {
                *(v11 + 16) |= 1u;
                v82 = *(v11 + 24);
                if (!v82)
                {
                  v83 = *(v11 + 8);
                  v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
                  if (v83)
                  {
                    v84 = *v84;
                  }

                  sub_1864D8C(v84);
                  v82 = v85;
                  *(v11 + 24) = v85;
                }

                *(v82 + 16) |= 1u;
                v86 = *(v82 + 24);
                if (!v86)
                {
                  v87 = *(v82 + 8);
                  v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
                  if (v87)
                  {
                    v88 = *v88;
                  }

                  v86 = sub_18652FC(v88);
                  *(v82 + 24) = v86;
                }

                v89 = *(v86 + 32);
                if (v89 && (v90 = *(v86 + 24), v90 < *v89))
                {
                  *(v86 + 24) = v90 + 1;
                  v91 = *&v89[2 * v90 + 2];
                }

                else
                {
                  sub_186527C(*(v86 + 16));
                  v91 = sub_19593CC(v86 + 16, v92);
                }

                v93 = *(v91 + 16);
                *(v91 + 48) = 11;
                *(v91 + 16) = v93 | 0xC;
                v94 = *(v91 + 40);
                if (!v94)
                {
                  v95 = *(v91 + 8);
                  v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
                  if (v95)
                  {
                    v96 = *v96;
                  }

                  v94 = sub_18651E4(v96);
                  *(v91 + 40) = v94;
                }

                v97 = v94[6];
                if (v97 == v94[7])
                {
                  v98 = v97 + 1;
                  sub_1958E5C(v94 + 6, v97 + 1);
                  *(*(v94 + 4) + 4 * v97) = 0;
                }

                else
                {
                  *(*(v94 + 4) + 4 * v97) = 0;
                  v98 = v97 + 1;
                }

                v94[6] = v98;
                v99 = nullsub_1(a3);
                sub_19C47B8(v207, v99);
                sub_19C4B14(v209, v99 + 24);
                sub_19C4E70(v210, v99 + 48);
                sub_19C51CC(v211, v99 + 72);
                std::operator+<char>();
                sub_1A0B7D8(v207, &__p, v204);
                if (v203 < 0)
                {
                  operator delete(__p);
                }

                v100 = v206;
                *(v91 + 16) |= 4u;
                v101 = *(v91 + 40);
                if (v100 == 1)
                {
                  if (!v101)
                  {
                    v102 = *(v91 + 8);
                    v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v102)
                    {
                      v103 = *v103;
                    }

                    v101 = sub_18651E4(v103);
                    *(v91 + 40) = v101;
                  }

                  *(v101 + 4) |= 1u;
                  v104 = v101[5];
                  if (!v104)
                  {
                    v105 = v101[1];
                    v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v105)
                    {
                      v106 = *v106;
                    }

                    v104 = sub_16F5A54(v106);
                    v101[5] = v104;
                  }

                  if ((v206 & 1) == 0)
                  {
                    sub_4F0F0C();
                  }

                  v107 = v205;
                  *(v104 + 4) |= 2u;
                  v108 = v104[1];
                  v109 = (v108 & 0xFFFFFFFFFFFFFFFCLL);
                  if (v108)
                  {
                    v109 = *v109;
                  }

                  sub_194EA1C(v104 + 4, (v107 & 0xFFFFFFFFFFFFFFFELL), v109);
                }

                else
                {
                  if (!v101)
                  {
                    v110 = *(v91 + 8);
                    v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v110)
                    {
                      v111 = *v111;
                    }

                    v101 = sub_18651E4(v111);
                    *(v91 + 40) = v101;
                  }

                  *(v101 + 4) |= 1u;
                  v112 = v101[5];
                  if (!v112)
                  {
                    v113 = v101[1];
                    v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v113)
                    {
                      v114 = *v114;
                    }

                    v112 = sub_16F5A54(v114);
                    v101[5] = v112;
                  }

                  *(v112 + 4) |= 1u;
                  v115 = v112[1];
                  v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
                  if (v115)
                  {
                    v116 = *v116;
                  }

                  sub_10DF26C(v112 + 3, "en", v116);
                  *(v91 + 16) |= 4u;
                  v117 = *(v91 + 40);
                  if (!v117)
                  {
                    v118 = *(v91 + 8);
                    v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v118)
                    {
                      v119 = *v119;
                    }

                    v117 = sub_18651E4(v119);
                    *(v91 + 40) = v117;
                  }

                  *(v117 + 4) |= 1u;
                  v120 = v117[5];
                  if (!v120)
                  {
                    v121 = v117[1];
                    v122 = (v121 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v121)
                    {
                      v122 = *v122;
                    }

                    v120 = sub_16F5A54(v122);
                    v117[5] = v120;
                  }

                  *(v120 + 4) |= 2u;
                  v123 = v120[1];
                  v124 = (v123 & 0xFFFFFFFFFFFFFFFCLL);
                  if (v123)
                  {
                    v124 = *v124;
                  }

                  sub_10DF26C(v120 + 4, "Accepts", v124);
                }

                if (v206 == 1)
                {
                  sub_16E7270(v204);
                }

                sub_19C5714(v211, v211[1]);
                sub_19C5170(v210, v210[1]);
                sub_19C4E14(v209, v209[1]);
                sub_19C4AB8(v207, v207[1]);
                v31 = *v15;
              }
            }
          }
        }
      }

      if (v31)
      {
        v125 = v15;
        v126 = v31;
        do
        {
          if (v126[8] >= 97)
          {
            v125 = v126;
          }

          v126 = *&v126[2 * (v126[8] < 97)];
        }

        while (v126);
        if (v125 != v15 && v125[8] <= 97 && v125[24] >= 1 && (*(*(*(v125 + 13) + 8) + 51) & 4) != 0)
        {
          *(v11 + 16) |= 1u;
          v127 = *(v11 + 24);
          if (!v127)
          {
            v128 = *(v11 + 8);
            v129 = (v128 & 0xFFFFFFFFFFFFFFFCLL);
            if (v128)
            {
              v129 = *v129;
            }

            sub_1864D8C(v129);
            v127 = v130;
            *(v11 + 24) = v130;
          }

          *(v127 + 16) |= 1u;
          v131 = *(v127 + 24);
          if (!v131)
          {
            v132 = *(v127 + 8);
            v133 = (v132 & 0xFFFFFFFFFFFFFFFCLL);
            if (v132)
            {
              v133 = *v133;
            }

            v131 = sub_18652FC(v133);
            *(v127 + 24) = v131;
          }

          v134 = *(v131 + 32);
          if (v134 && (v135 = *(v131 + 24), v135 < *v134))
          {
            *(v131 + 24) = v135 + 1;
            v136 = *&v134[2 * v135 + 2];
          }

          else
          {
            sub_186527C(*(v131 + 16));
            v136 = sub_19593CC(v131 + 16, v137);
          }

          *(v136 + 16) |= 8u;
          *(v136 + 48) = 9;
          v31 = *v15;
        }

        if (v31)
        {
          v138 = v15;
          v139 = v31;
          do
          {
            if (v139[8] >= 23)
            {
              v138 = v139;
            }

            v139 = *&v139[2 * (v139[8] < 23)];
          }

          while (v139);
          if (v138 != v15 && v138[8] <= 23 && v138[24] >= 1)
          {
            v140 = v15;
            do
            {
              if (v31[8] >= 1)
              {
                v140 = v31;
              }

              v31 = *&v31[2 * (v31[8] < 1)];
            }

            while (v31);
            if (v140 != v15 && v140[8] <= 1 && v140[24] >= 1)
            {
              v141 = *(*(v140 + 13) + 8);
              if (*(v141 + 40))
              {
                v164 = *(*(v141 + 64) + 328);
                if (sub_19D5254(&unk_27F0920, (v164 & 0xFFFFFFFFFFFFFFFELL)) == &unk_27F0928)
                {
                  if (v138[24] >= 1)
                  {
                    v165 = 0;
                    do
                    {
                      *(v11 + 16) |= 1u;
                      v166 = *(v11 + 24);
                      if (!v166)
                      {
                        v167 = *(v11 + 8);
                        v168 = (v167 & 0xFFFFFFFFFFFFFFFCLL);
                        if (v167)
                        {
                          v168 = *v168;
                        }

                        sub_1864D8C(v168);
                        v166 = v169;
                        *(v11 + 24) = v169;
                      }

                      *(v166 + 16) |= 1u;
                      v170 = *(v166 + 24);
                      if (!v170)
                      {
                        v171 = *(v166 + 8);
                        v172 = (v171 & 0xFFFFFFFFFFFFFFFCLL);
                        if (v171)
                        {
                          v172 = *v172;
                        }

                        v170 = sub_18652FC(v172);
                        *(v166 + 24) = v170;
                      }

                      v173 = *(v170 + 32);
                      if (v173 && (v174 = *(v170 + 24), v174 < *v173))
                      {
                        *(v170 + 24) = v174 + 1;
                        v175 = *&v173[2 * v174 + 2];
                      }

                      else
                      {
                        sub_186527C(*(v170 + 16));
                        v175 = sub_19593CC(v170 + 16, v176);
                      }

                      sub_1F43BB0(v175, v165++);
                    }

                    while (v165 < v138[24]);
                  }

                  goto LABEL_208;
                }

                v177 = sub_19D5254(&unk_27F0920, (v164 & 0xFFFFFFFFFFFFFFFELL));
                v178 = *(v177 + 56);
                v179 = *(v177 + 64);
                if (v178 == v179)
                {
                  goto LABEL_208;
                }

                do
                {
                  if (v138[24] < 1)
                  {
                    goto LABEL_277;
                  }

                  v180 = 0;
                  while (1)
                  {
                    v181 = *(*(*(v138 + 13) + 8 * v180 + 8) + 216);
                    if (!v181)
                    {
                      v181 = &off_2784040;
                    }

                    if (sub_194FA04((v181 + 2), dword_278DFF0) < 1)
                    {
                      goto LABEL_276;
                    }

                    v182 = *(*(*(v138 + 13) + 8 * v180 + 8) + 216);
                    if (!v182)
                    {
                      v182 = &off_2784040;
                    }

                    v183 = *(sub_1950E54((v182 + 2), dword_278DFF0, 0) + 32) & 0xFFFFFFFFFFFFFFFELL;
                    if (*(v183 + 23) < 0)
                    {
                      sub_325C(v207, *v183, *(v183 + 8));
                    }

                    else
                    {
                      v184 = *v183;
                      v208 = *(v183 + 16);
                      *v207 = v184;
                    }

                    v185 = *(v178 + 23);
                    if (v185 >= 0)
                    {
                      v186 = *(v178 + 23);
                    }

                    else
                    {
                      v186 = *(v178 + 8);
                    }

                    v187 = HIBYTE(v208);
                    v188 = SHIBYTE(v208);
                    if (v208 < 0)
                    {
                      v187 = v207[1];
                    }

                    if (v186 == v187)
                    {
                      v189 = v185 >= 0 ? v178 : *v178;
                      v190 = v208 >= 0 ? v207 : v207[0];
                      if (!memcmp(v189, v190, v186))
                      {
                        break;
                      }
                    }

                    if (v188 < 0)
                    {
                      operator delete(v207[0]);
                    }

LABEL_276:
                    if (++v180 >= v138[24])
                    {
                      goto LABEL_277;
                    }
                  }

                  *(v11 + 16) |= 1u;
                  v191 = *(v11 + 24);
                  if (!v191)
                  {
                    v192 = *(v11 + 8);
                    v193 = (v192 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v192)
                    {
                      v193 = *v193;
                    }

                    sub_1864D8C(v193);
                    v191 = v194;
                    *(v11 + 24) = v194;
                  }

                  *(v191 + 16) |= 1u;
                  v195 = *(v191 + 24);
                  if (!v195)
                  {
                    v196 = *(v191 + 8);
                    v197 = (v196 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v196)
                    {
                      v197 = *v197;
                    }

                    v195 = sub_18652FC(v197);
                    *(v191 + 24) = v195;
                  }

                  v198 = *(v195 + 32);
                  if (v198 && (v199 = *(v195 + 24), v199 < *v198))
                  {
                    *(v195 + 24) = v199 + 1;
                    v200 = *&v198[2 * v199 + 2];
                  }

                  else
                  {
                    sub_186527C(*(v195 + 16));
                    v200 = sub_19593CC(v195 + 16, v201);
                  }

                  sub_1F43BB0(v200, v180);
                  if (SHIBYTE(v208) < 0)
                  {
                    operator delete(v207[0]);
                  }

LABEL_277:
                  v178 += 24;
                }

                while (v178 != v179);
              }
            }
          }
        }
      }
    }
  }

LABEL_208:
  *(v11 + 16) |= 1u;
  v142 = *(v11 + 24);
  if (!v142)
  {
    v143 = *(v11 + 8);
    v144 = (v143 & 0xFFFFFFFFFFFFFFFCLL);
    if (v143)
    {
      v144 = *v144;
    }

    sub_1864D8C(v144);
    v142 = v145;
    *(v11 + 24) = v145;
  }

  *(v142 + 16) |= 1u;
  v146 = *(v142 + 24);
  if (!v146)
  {
    v147 = *(v142 + 8);
    v148 = (v147 & 0xFFFFFFFFFFFFFFFCLL);
    if (v147)
    {
      v148 = *v148;
    }

    v146 = sub_18652FC(v148);
    *(v142 + 24) = v146;
  }

  v149 = *(v146 + 32);
  if (v149 && (v150 = *(v146 + 24), v150 < *v149))
  {
    *(v146 + 24) = v150 + 1;
    v151 = *&v149[2 * v150 + 2];
  }

  else
  {
    sub_186527C(*(v146 + 16));
    v151 = sub_19593CC(v146 + 16, v152);
  }

  *(v151 + 16) |= 8u;
  *(v151 + 48) = 7;
  *(v11 + 16) |= 1u;
  v153 = *(v11 + 24);
  if (!v153)
  {
    v154 = *(v11 + 8);
    v155 = (v154 & 0xFFFFFFFFFFFFFFFCLL);
    if (v154)
    {
      v155 = *v155;
    }

    sub_1864D8C(v155);
    v153 = v156;
    *(v11 + 24) = v156;
  }

  *(v153 + 16) |= 1u;
  v157 = *(v153 + 24);
  if (!v157)
  {
    v158 = *(v153 + 8);
    v159 = (v158 & 0xFFFFFFFFFFFFFFFCLL);
    if (v158)
    {
      v159 = *v159;
    }

    v157 = sub_18652FC(v159);
    *(v153 + 24) = v157;
  }

  v160 = *(v157 + 32);
  if (v160 && (v161 = *(v157 + 24), v161 < *v160))
  {
    *(v157 + 24) = v161 + 1;
    result = *&v160[2 * v161 + 2];
  }

  else
  {
    sub_186527C(*(v157 + 16));
    result = sub_19593CC(v157 + 16, v163);
  }

  *(result + 16) |= 8u;
  *(result + 48) = 8;
  return result;
}

void sub_1F42CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_19C5770(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1F42D90(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(a1 + 40) |= 2u;
  v6 = *(a1 + 104);
  if (!v6)
  {
    v7 = *(a1 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v6 = sub_1864C74(v8);
    *(a1 + 104) = v6;
  }

  v9 = v6[5];
  if (v9 && (v10 = *(v6 + 8), v10 < *v9))
  {
    *(v6 + 8) = v10 + 1;
    v11 = *&v9[2 * v10 + 2];
  }

  else
  {
    v12 = sub_1864D10(v6[3]);
    v11 = sub_19593CC((v6 + 3), v12);
  }

  v13 = *(v11 + 16);
  *(v11 + 32) = 9;
  *(v11 + 16) = v13 | 3;
  v14 = *(v11 + 24);
  if (!v14)
  {
    v15 = *(v11 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_1864D8C(v16);
    v14 = v17;
    *(v11 + 24) = v17;
  }

  *(v14 + 16) |= 0x100u;
  v18 = *(v14 + 88);
  if (!v18)
  {
    v19 = *(v14 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v18 = sub_18656E4(v20);
    *(v14 + 88) = v18;
  }

  v21 = *(v18 + 32);
  if (v21 && (v22 = *(v18 + 24), v22 < *v21))
  {
    *(v18 + 24) = v22 + 1;
    v23 = *&v21[2 * v22 + 2];
  }

  else
  {
    v24 = sub_1865F24(*(v18 + 16));
    v23 = sub_19593CC(v18 + 16, v24);
  }

  *(v23 + 16) |= 4u;
  *(v23 + 40) = 9;
  v27 = *(a2 + 8);
  v26 = a2 + 8;
  v25 = v27;
  if (v27)
  {
    v28 = v26;
    do
    {
      if (*(v25 + 32) >= 1)
      {
        v28 = v25;
      }

      v25 = *(v25 + 8 * (*(v25 + 32) < 1));
    }

    while (v25);
    if (v28 != v26 && *(v28 + 32) <= 1 && *(v28 + 96) >= 1)
    {
      v29 = *(*(v28 + 104) + 8);
      if (*(v29 + 40))
      {
        v30 = *(v29 + 64);
        if (v30[5])
        {
          v31 = *(v18 + 32);
          if (v31 && (v32 = *(v18 + 24), v32 < *v31))
          {
            *(v18 + 24) = v32 + 1;
            v33 = *&v31[2 * v32 + 2];
          }

          else
          {
            v34 = sub_1865F24(*(v18 + 16));
            v33 = sub_19593CC(v18 + 16, v34);
            v30 = *(*(*(v28 + 104) + 8) + 64);
          }

          *(v33 + 16) |= 4u;
          *(v33 + 40) = 4;
        }

        if (!v30)
        {
          v30 = &off_2782358;
        }

        if ((v30[5] & 4) != 0)
        {
          v35 = *(v18 + 32);
          if (v35 && (v36 = *(v18 + 24), v36 < *v35))
          {
            *(v18 + 24) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_1865F24(*(v18 + 16));
            v37 = sub_19593CC(v18 + 16, v38);
          }

          *(v37 + 16) |= 4u;
          *(v37 + 40) = 6;
        }
      }
    }
  }

  v39 = *(v18 + 32);
  if (v39 && (v40 = *(v18 + 24), v40 < *v39))
  {
    *(v18 + 24) = v40 + 1;
    v41 = *&v39[2 * v40 + 2];
  }

  else
  {
    v42 = sub_1865F24(*(v18 + 16));
    v41 = sub_19593CC(v18 + 16, v42);
  }

  v43 = *(v41 + 16);
  *(v41 + 40) = 8;
  *(v41 + 16) = v43 | 6;
  v44 = *(v41 + 32);
  if (!v44)
  {
    v45 = *(v41 + 8);
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    v44 = sub_1865EA8(v46);
    *(v41 + 32) = v44;
  }

  *(v44 + 4) |= 2u;
  *(v44 + 8) = 1;
  *(v41 + 16) |= 2u;
  *(v44 + 4) |= 1u;
  v47 = v44[3];
  if (!v47)
  {
    v48 = v44[1];
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    v47 = sub_1865DF8(v49);
    v44[3] = v47;
  }

  v50 = v47[8];
  if (v50 && (v51 = *(v47 + 14), v51 < *v50))
  {
    *(v47 + 14) = v51 + 1;
    result = *&v50[2 * v51 + 2];
  }

  else
  {
    v53 = sub_1865F24(v47[6]);
    result = sub_19593CC((v47 + 6), v53);
  }

  *(result + 16) |= 4u;
  *(result + 40) = 13;
  if (a3[1] == 1 && *a3 == 1)
  {
    *(a1 + 40) |= 2u;
    v54 = *(a1 + 104);
    if (!v54)
    {
      v55 = *(a1 + 8);
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
      if (v55)
      {
        v56 = *v56;
      }

      v54 = sub_1864C74(v56);
      *(a1 + 104) = v54;
    }

    v57 = v54[5];
    if (v57 && (v58 = *(v54 + 8), v58 < *v57))
    {
      *(v54 + 8) = v58 + 1;
      v59 = *&v57[2 * v58 + 2];
    }

    else
    {
      v60 = sub_1864D10(v54[3]);
      v59 = sub_19593CC((v54 + 3), v60);
    }

    v61 = *(v59 + 16);
    *(v59 + 32) = 11;
    *(v59 + 16) = v61 | 3;
    v62 = *(v59 + 24);
    if (!v62)
    {
      v63 = *(v59 + 8);
      v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
      if (v63)
      {
        v64 = *v64;
      }

      sub_1864D8C(v64);
      v62 = v65;
      *(v59 + 24) = v65;
    }

    *(v62 + 16) |= 0x400u;
    v66 = *(v62 + 104);
    if (!v66)
    {
      v67 = *(v62 + 8);
      v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
      if (v67)
      {
        v68 = *v68;
      }

      v66 = sub_1865784(v68);
      *(v62 + 104) = v66;
    }

    v69 = v66[5];
    if (v69 && (v70 = *(v66 + 8), v70 < *v69))
    {
      *(v66 + 8) = v70 + 1;
      v71 = *&v69[2 * v70 + 2];
      *(v71 + 16) |= 4u;
      *(v71 + 40) = 14;
    }

    else
    {
      v72 = sub_1865F24(v66[3]);
      v73 = sub_19593CC((v66 + 3), v72);
      v69 = v66[5];
      *(v73 + 16) |= 4u;
      *(v73 + 40) = 14;
      if (!v69)
      {
        goto LABEL_84;
      }
    }

    v74 = *(v66 + 8);
    if (v74 < *v69)
    {
      *(v66 + 8) = v74 + 1;
      v75 = *&v69[2 * v74 + 2];
      *(v75 + 16) |= 4u;
      *(v75 + 40) = 17;
LABEL_85:
      v78 = *(v66 + 8);
      if (v78 < *v69)
      {
        *(v66 + 8) = v78 + 1;
        v79 = *&v69[2 * v78 + 2];
        *(v79 + 16) |= 4u;
        *(v79 + 40) = 16;
LABEL_88:
        v82 = *(v66 + 8);
        if (v82 < *v69)
        {
          *(v66 + 8) = v82 + 1;
          v83 = *&v69[2 * v82 + 2];
LABEL_91:
          v85 = *(v83 + 16);
          *(v83 + 40) = 8;
          *(v83 + 16) = v85 | 6;
          v86 = *(v83 + 32);
          if (!v86)
          {
            v87 = *(v83 + 8);
            v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
            if (v87)
            {
              v88 = *v88;
            }

            v86 = sub_1865EA8(v88);
            *(v83 + 32) = v86;
          }

          v89 = *(v86 + 4);
          *(v86 + 8) = 1;
          *(v86 + 4) = v89 | 3;
          v90 = v86[3];
          if (!v90)
          {
            v91 = v86[1];
            v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
            if (v91)
            {
              v92 = *v92;
            }

            v90 = sub_1865DF8(v92);
            v86[3] = v90;
          }

          v93 = v90[8];
          if (v93 && (v94 = *(v90 + 14), v94 < *v93))
          {
            *(v90 + 14) = v94 + 1;
            result = *&v93[2 * v94 + 2];
          }

          else
          {
            v95 = sub_1865F24(v90[6]);
            result = sub_19593CC((v90 + 6), v95);
          }

          *(result + 16) |= 4u;
          *(result + 40) = 13;
          return result;
        }

LABEL_90:
        v84 = sub_1865F24(v66[3]);
        v83 = sub_19593CC((v66 + 3), v84);
        goto LABEL_91;
      }

LABEL_87:
      v80 = sub_1865F24(v66[3]);
      v81 = sub_19593CC((v66 + 3), v80);
      v69 = v66[5];
      *(v81 + 16) |= 4u;
      *(v81 + 40) = 16;
      if (!v69)
      {
        goto LABEL_90;
      }

      goto LABEL_88;
    }

LABEL_84:
    v76 = sub_1865F24(v66[3]);
    v77 = sub_19593CC((v66 + 3), v76);
    v69 = v66[5];
    *(v77 + 16) |= 4u;
    *(v77 + 40) = 17;
    if (!v69)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  return result;
}

double sub_1F434A0(uint64_t a1, _BYTE *a2)
{
  *(a1 + 40) |= 2u;
  v3 = *(a1 + 104);
  if (!v3)
  {
    v5 = *(a1 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      v6 = *v6;
    }

    v3 = sub_1864C74(v6);
    *(a1 + 104) = v3;
  }

  *(v3 + 4) |= 1u;
  v7 = v3[6];
  if (!v7)
  {
    v8 = v3[1];
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    v7 = sub_1866134(v9);
    v3[6] = v7;
  }

  v10 = *(v7 + 56);
  if (v10 && (v11 = *(v7 + 48), v11 < *v10))
  {
    *(v7 + 48) = v11 + 1;
    v12 = *&v10[2 * v11 + 2];
  }

  else
  {
    v13 = sub_1866084(*(v7 + 40));
    v12 = sub_19593CC(v7 + 40, v13);
  }

  *(v12 + 16) |= 2u;
  *(v12 + 80) = 1;
  v14 = *(v12 + 40);
  if (v14 && (v15 = *(v12 + 32), v15 < *v14))
  {
    *(v12 + 32) = v15 + 1;
    v16 = *&v14[2 * v15 + 2];
  }

  else
  {
    v17 = *(v12 + 24);
    if (!v17)
    {
      operator new();
    }

    *v19 = v18;
    v19[1] = sub_195A650;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = 0;
    v16 = sub_19593CC(v12 + 24, v18);
  }

  std::string::insert(v16, 0, "com.apple.Maps", 0xEuLL);
  v20 = *(v12 + 64);
  if (v20 && (v21 = *(v12 + 56), v21 < *v20))
  {
    *(v12 + 56) = v21 + 1;
    v22 = *&v20[2 * v21 + 2];
    *(v22 + 40) |= 4u;
    *(v22 + 64) = 1;
  }

  else
  {
    v23 = sub_1866028(*(v12 + 48));
    v24 = sub_19593CC(v12 + 48, v23);
    v20 = *(v12 + 64);
    *(v24 + 40) |= 4u;
    *(v24 + 64) = 1;
    if (!v20)
    {
LABEL_25:
      v27 = sub_1866028(*(v12 + 48));
      v26 = sub_19593CC(v12 + 48, v27);
      v20 = *(v12 + 64);
      goto LABEL_26;
    }
  }

  v25 = *(v12 + 56);
  if (v25 >= *v20)
  {
    goto LABEL_25;
  }

  *(v12 + 56) = v25 + 1;
  v26 = *&v20[2 * v25 + 2];
LABEL_26:
  *(v26 + 40) |= 0xCu;
  *(v26 + 64) = 0x100000029;
  if (v20 && (v28 = *(v12 + 56), v28 < *v20))
  {
    *(v12 + 56) = v28 + 1;
    v29 = *&v20[2 * v28 + 2];
  }

  else
  {
    v30 = sub_1866028(*(v12 + 48));
    v29 = sub_19593CC(v12 + 48, v30);
    v20 = *(v12 + 64);
  }

  *(v29 + 40) |= 0xCu;
  *&result = 35;
  *(v29 + 64) = 35;
  if (v20 && (v32 = *(v12 + 56), v32 < *v20))
  {
    *(v12 + 56) = v32 + 1;
    v33 = *&v20[2 * v32 + 2];
    *(v33 + 40) |= 4u;
    *(v33 + 64) = 6;
  }

  else
  {
    v34 = sub_1866028(*(v12 + 48));
    v35 = sub_19593CC(v12 + 48, v34);
    v20 = *(v12 + 64);
    *(v35 + 40) |= 4u;
    *(v35 + 64) = 6;
    if (!v20)
    {
      goto LABEL_36;
    }
  }

  v36 = *(v12 + 56);
  if (v36 >= *v20)
  {
LABEL_36:
    v38 = sub_1866028(*(v12 + 48));
    v39 = sub_19593CC(v12 + 48, v38);
    v20 = *(v12 + 64);
    *(v39 + 40) |= 4u;
    *(v39 + 64) = 7;
    if (!v20)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  *(v12 + 56) = v36 + 1;
  v37 = *&v20[2 * v36 + 2];
  *(v37 + 40) |= 4u;
  *(v37 + 64) = 7;
LABEL_37:
  v40 = *(v12 + 56);
  if (v40 < *v20)
  {
    *(v12 + 56) = v40 + 1;
    v41 = *&v20[2 * v40 + 2];
    *(v41 + 40) |= 4u;
    *(v41 + 64) = 43;
    goto LABEL_40;
  }

LABEL_39:
  v42 = sub_1866028(*(v12 + 48));
  v43 = sub_19593CC(v12 + 48, v42);
  v20 = *(v12 + 64);
  *(v43 + 40) |= 4u;
  *(v43 + 64) = 43;
  if (!v20)
  {
    goto LABEL_42;
  }

LABEL_40:
  v44 = *(v12 + 56);
  if (v44 >= *v20)
  {
LABEL_42:
    v46 = sub_1866028(*(v12 + 48));
    v47 = sub_19593CC(v12 + 48, v46);
    v20 = *(v12 + 64);
    *(v47 + 40) |= 4u;
    *(v47 + 64) = 8;
    if (!v20)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  *(v12 + 56) = v44 + 1;
  v45 = *&v20[2 * v44 + 2];
  *(v45 + 40) |= 4u;
  *(v45 + 64) = 8;
LABEL_43:
  v48 = *(v12 + 56);
  if (v48 < *v20)
  {
    *(v12 + 56) = v48 + 1;
    v49 = *&v20[2 * v48 + 2];
    *(v49 + 40) |= 4u;
    *(v49 + 64) = 44;
    goto LABEL_46;
  }

LABEL_45:
  v50 = sub_1866028(*(v12 + 48));
  v51 = sub_19593CC(v12 + 48, v50);
  v20 = *(v12 + 64);
  *(v51 + 40) |= 4u;
  *(v51 + 64) = 44;
  if (!v20)
  {
    goto LABEL_48;
  }

LABEL_46:
  v52 = *(v12 + 56);
  if (v52 >= *v20)
  {
LABEL_48:
    v54 = sub_1866028(*(v12 + 48));
    v55 = sub_19593CC(v12 + 48, v54);
    v20 = *(v12 + 64);
    *(v55 + 40) |= 4u;
    *(v55 + 64) = 9;
    if (!v20)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  *(v12 + 56) = v52 + 1;
  v53 = *&v20[2 * v52 + 2];
  *(v53 + 40) |= 4u;
  *(v53 + 64) = 9;
LABEL_49:
  v56 = *(v12 + 56);
  if (v56 < *v20)
  {
    *(v12 + 56) = v56 + 1;
    v57 = *&v20[2 * v56 + 2];
    *(v57 + 40) |= 4u;
    *(v57 + 64) = 37;
    goto LABEL_52;
  }

LABEL_51:
  v58 = sub_1866028(*(v12 + 48));
  v59 = sub_19593CC(v12 + 48, v58);
  v20 = *(v12 + 64);
  *(v59 + 40) |= 4u;
  *(v59 + 64) = 37;
  if (!v20)
  {
    goto LABEL_54;
  }

LABEL_52:
  v60 = *(v12 + 56);
  if (v60 >= *v20)
  {
LABEL_54:
    v62 = sub_1866028(*(v12 + 48));
    v63 = sub_19593CC(v12 + 48, v62);
    v20 = *(v12 + 64);
    *(v63 + 40) |= 4u;
    *(v63 + 64) = 10;
    if (!v20)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  *(v12 + 56) = v60 + 1;
  v61 = *&v20[2 * v60 + 2];
  *(v61 + 40) |= 4u;
  *(v61 + 64) = 10;
LABEL_55:
  v64 = *(v12 + 56);
  if (v64 < *v20)
  {
    *(v12 + 56) = v64 + 1;
    v65 = *&v20[2 * v64 + 2];
    *(v65 + 40) |= 4u;
    *(v65 + 64) = 5;
    goto LABEL_58;
  }

LABEL_57:
  v66 = sub_1866028(*(v12 + 48));
  v67 = sub_19593CC(v12 + 48, v66);
  v20 = *(v12 + 64);
  *(v67 + 40) |= 4u;
  *(v67 + 64) = 5;
  if (!v20)
  {
LABEL_60:
    v70 = sub_1866028(*(v12 + 48));
    v69 = sub_19593CC(v12 + 48, v70);
    goto LABEL_61;
  }

LABEL_58:
  v68 = *(v12 + 56);
  if (v68 >= *v20)
  {
    goto LABEL_60;
  }

  *(v12 + 56) = v68 + 1;
  v69 = *&v20[2 * v68 + 2];
LABEL_61:
  *(v69 + 40) |= 4u;
  *(v69 + 64) = 23;
  if (a2[1] == 1 && *a2 == 1)
  {
    v71 = *(v12 + 64);
    if (v71 && (v72 = *(v12 + 56), v72 < *v71))
    {
      *(v12 + 56) = v72 + 1;
      v73 = *&v71[2 * v72 + 2];
    }

    else
    {
      v74 = sub_1866028(*(v12 + 48));
      v73 = sub_19593CC(v12 + 48, v74);
    }

    *(v73 + 40) |= 0xCu;
    *&result = 0x20000002FLL;
    *(v73 + 64) = 0x20000002FLL;
  }

  return result;
}