uint64_t sub_4FA35C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_4F0FB4(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_4FA3B0(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + 1;
    if (v8 >> 60)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(16 * v7) = *a2;
    v12 = 16 * v7 + 16;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

void *sub_4FA4DC(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_4FA5CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4FA5E0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 144 * v2;
  __p = 0;
  v14 = v6;
  v15 = v6;
  v16 = 0;
  *v6 = 0x7FFFFFFFFFFFFFFFLL;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  if (*(a2 + 23) < 0)
  {
    sub_325C((v6 + 56), *a2, *(a2 + 8));
    v7 = v15;
  }

  else
  {
    *(v6 + 56) = *a2;
    *(v6 + 72) = *(a2 + 16);
    v7 = v6;
  }

  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *(v6 + 104) = vnegq_f64(v8);
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 120) = 0;
  v15 = v7 + 144;
  sub_4FA214(a1, &__p);
  v9 = a1[1];
  v11 = v14;
  for (i = v15; v15 != v11; i = v15)
  {
    v15 = i - 144;
    sub_4F0FB4(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_4FA788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v2[4];
  if (v5)
  {
    v2[5] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_4FA35C(va);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v2[2] = v6;
  operator delete(v6);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

void sub_4FA7D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4FA7E8(uint64_t result, int a2, uint64_t *a3, char a4, uint64_t *a5)
{
  *result = a2;
  v5 = *a3;
  *(result + 12) = *(a3 + 2);
  *(result + 4) = v5;
  *(result + 16) = a4;
  v6 = *a5;
  *(result + 28) = *(a5 + 2);
  *(result + 20) = v6;
  return result;
}

BOOL sub_4FA814(int *a1)
{
  result = sub_4566B4(a1 + 1);
  if (result)
  {
    return a1[5] != -1 || a1[6] != -1;
  }

  return result;
}

uint64_t sub_4FA868(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_4FBC5C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  *v8 = *(a2 + 44);
  sub_456538((v8 + 4), *(a2 + 32), *(a2 + 40), *(a2 + 36));
  *(v8 + 16) = *(a2 + 48);
  v9 = *(a2 + 24);
  if (!v9)
  {
    v9 = &off_277E738;
  }

  v10 = v9[6];
  v11 = &off_277E5E8;
  if (v10)
  {
    v11 = v10;
  }

  v12 = *(v11 + 7);
  v13 = -1;
  if (v12 <= 180.0)
  {
    v14 = *(v11 + 6);
    if (fabs(v14) <= 85.0511288 && v12 >= -180.0)
    {
      v15 = sin(fmin(fmax(v14, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v16) = ((log((v15 + 1.0) / (1.0 - v15)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v16 >= 0xFFFFFFFE)
      {
        v16 = 4294967294;
      }

      else
      {
        v16 = v16;
      }

      v13 = ((v12 + 180.0) / 360.0 * 4294967300.0) | (v16 << 32);
    }
  }

  *(v8 + 20) = v13;
  *(v8 + 28) = 0x7FFFFFFF;
  v17 = a1[4];
  v18 = a1[5] + 1;
  a1[5] = v18;
  v19 = v17 + v18;
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 >> 7));
  v22 = *v21 + 32 * (v19 & 0x7F);
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  if (v22 == *v21)
  {
    return *(v21 - 1) + 4064;
  }

  else
  {
    return v22 - 32;
  }
}

uint64_t sub_4FAA84(void *a1, int a2, int a3)
{
  v3 = a1[5];
  if (v3)
  {
    v4 = a1[1];
    if (a1[2] != v4)
    {
      v5 = a1[4];
      v6 = (v4 + 8 * (v5 >> 7));
      v7 = (*v6 + 32 * (v5 & 0x7F));
      v8 = *(v4 + (((v5 + v3) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v5 + v3) & 0x7F);
      if (v7 != v8)
      {
        v10 = v7 + 8;
        v11 = (v4 + 8 * (v5 >> 7));
        if (v7 - *v6 + 32 == "work/NaturalLanguage")
        {
          v11 = v6 + 1;
          v10 = v6[1];
        }

        if (v10 != v8)
        {
          v12 = 0;
          while (1)
          {
            v14 = 10 * (*v7 - *v10);
            v15 = sub_3F80(v7 + 1);
            v17 = a3 < fabs((v15 - sub_3F80(v10 + 1))) || v14 > a2;
            if (v10 - *v11 + 32 == "work/NaturalLanguage")
            {
              v18 = v11[1];
              ++v11;
              v10 = v18;
              v7 += 8;
              if (v7 - *v6 != "work/NaturalLanguage")
              {
                goto LABEL_9;
              }
            }

            else
            {
              v10 += 8;
              v7 += 8;
              if (v7 - *v6 != "work/NaturalLanguage")
              {
                goto LABEL_9;
              }
            }

            v13 = v6[1];
            ++v6;
            v7 = v13;
LABEL_9:
            v12 |= v17;
            if (v10 == v8)
            {
              return v12 & 1;
            }
          }
        }
      }
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t sub_4FABFC(void *a1)
{
  v1 = a1[1];
  if (a1[2] != v1)
  {
    v2 = a1[4];
    v3 = (v1 + 8 * (v2 >> 7));
    v4 = *v3;
    v5 = *v3 + 32 * (v2 & 0x7F);
    v6 = *(v1 + (((a1[5] + v2) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v2) & 0x7F);
    while (v5 != v6)
    {
      result = *(v5 + 16);
      if (result)
      {
        return result;
      }

      v5 += 32;
      if (v5 - v4 == 4096)
      {
        v8 = v3[1];
        ++v3;
        v4 = v8;
        v5 = v8;
      }
    }
  }

  return 0;
}

_DWORD *sub_4FAC6C(_DWORD *result, int a2, int a3, int a4)
{
  *result = a4;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t sub_4FAC78(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v8 = nullsub_1(a3);
  v9 = sub_3F80(v8);
  v10 = !sub_E6F0C8(a3) | a4;
  v11 = sub_E6F44C(a3);
  *a1 = a2;
  *(a1 + 4) = v9;
  *(a1 + 8) = v10;
  *(a1 + 9) = v11;
  return a1;
}

uint64_t sub_4FACEC(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v3;
  v4 = *a3;
  *(result + 20) = *(a3 + 2);
  *(result + 12) = v4;
  return result;
}

uint64_t sub_4FAD10(uint64_t a1, uint64_t a2)
{
  v4 = &off_2776F48;
  if (*(a2 + 24))
  {
    v4 = *(a2 + 24);
  }

  if ((~*(v4 + 4) & 3) != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    sub_58558(a1, v4[3], v4[4]);
  }

  v5 = &off_277E5E8;
  if (*(a2 + 32))
  {
    v5 = *(a2 + 32);
  }

  v6 = *(v5 + 7);
  v7 = -1;
  if (v6 <= 180.0)
  {
    v8 = *(v5 + 6);
    if (fabs(v8) <= 85.0511288 && v6 >= -180.0)
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

      v7 = ((v6 + 180.0) / 360.0 * 4294967300.0) | (v10 << 32);
    }
  }

  *(a1 + 24) = v7;
  *(a1 + 32) = 0x7FFFFFFF;
  *(a1 + 36) = *(a2 + 40) + 978307200;
  *(a1 + 40) = sub_4EB334(*(a2 + 44));
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if ((*(a2 + 16) & 0x10) != 0)
  {
    v11 = *(a2 + 48);
  }

  *(a1 + 48) = v11;
  return a1;
}

__n128 sub_4FAEB4(__n128 *a1, __n128 *a2, uint64_t a3, unsigned __int32 a4, unsigned __int8 a5, unint64_t a6)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  v7 = *(a3 + 8);
  a1[1].n128_u64[1] = *a3;
  a1[2].n128_u32[0] = v7;
  a1[2].n128_u32[1] = a4;
  a1[2].n128_u8[8] = a5;
  a1[3].n128_u64[0] = a6;
  return result;
}

uint64_t sub_4FAEE0(uint64_t a1, uint64_t a2)
{
  *(a1 + 12) = 0;
  *(a1 + 16) = 0u;
  v52 = (a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0x3FF0000000000000;
  *(a1 + 72) = 0;
  v55 = (a1 + 72);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0u;
  v58 = (a1 + 104);
  *(a1 + 96) = 5;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0x7FFFFFFF;
  *(a1 + 160) = 0;
  v54 = (a1 + 160);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *a1 = *(a2 + 104);
  if ((*(a2 + 16) & 8) != 0)
  {
    v4 = *(a2 + 112);
  }

  else
  {
    v4 = -1;
  }

  *(a1 + 4) = v4;
  if ((*(a2 + 16) & 4) != 0)
  {
    *(a1 + 8) = *(a2 + 108);
    *(a1 + 12) = 1;
  }

  v5 = *(a2 + 96);
  if (!v5)
  {
    v5 = &off_2734418;
  }

  v60 = 0uLL;
  *v61 = 0uLL;
  *__p = 0uLL;
  *&v62 = v5[6];
  v6 = v5[5];
  if (v6)
  {
    v7 = (v6 + 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 8);
  if (v8)
  {
    v9 = 8 * v8;
    do
    {
      sub_4FA868(__p, *v7++);
      v9 -= 8;
    }

    while (v9);
  }

  sub_4FB7B4(v52, __p);
  *(a1 + 64) = v62;
  v10 = __p[1];
  v11 = v60;
  v61[1] = 0;
  v12 = (v60 - __p[1]) >> 3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v10);
      v11 = v60;
      v10 = (__p[1] + 8);
      __p[1] = v10;
      v12 = (v60 - v10) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = &stru_20 + 32;
    goto LABEL_20;
  }

  if (v12 == 2)
  {
    v13 = &stru_68 + 24;
LABEL_20:
    v61[0] = v13;
  }

  if (v10 != v11)
  {
    do
    {
      v14 = *v10++;
      operator delete(v14);
    }

    while (v10 != v11);
    if (v60 != __p[1])
    {
      *&v60 = v60 + ((__p[1] - v60 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v15 = *(a2 + 40);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v53 = a2;
  v17 = *(a2 + 32);
  if (v17)
  {
    v18 = 8 * v17;
    while (1)
    {
      v19 = *v16;
      __p[0] = 0;
      __p[1] = 0;
      *&v60 = 0;
      *v61 = 0u;
      v62 = 0u;
      DWORD2(v60) = 0;
      v63 = 0x7FFFFFFF;
      v64 = 0x7FFFFFFFFFFFFFFFLL;
      v20 = *(v19 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (__p == v20)
      {
        v21 = 0;
        v22 = 0;
      }

      else if (*(v20 + 23) < 0)
      {
        sub_13A68(__p, *v20, *(v20 + 8));
        v21 = v61[0];
        v22 = v61[1];
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = *v20;
        *&v60 = *(v20 + 16);
        *__p = v23;
      }

      v24 = *(v19 + 56);
      if (!v24)
      {
        v24 = &off_27341C0;
      }

      DWORD2(v60) = *(v24 + 6);
      v25 = *(v19 + 32);
      if (v25 > v22 - v21)
      {
        break;
      }

      if (v25 < v22 - v21)
      {
        v26 = &v21[v25];
LABEL_47:
        v61[1] = v26;
      }

      v27 = *(a1 + 80);
      if (v27 >= *(a1 + 88))
      {
        v28 = sub_3E4A68(v55, __p);
      }

      else
      {
        sub_3E4C44(*(a1 + 80), __p);
        v28 = v27 + 80;
        *(a1 + 80) = v27 + 80;
      }

      *(a1 + 80) = v28;
      if (v61[0])
      {
        v61[1] = v61[0];
        operator delete(v61[0]);
      }

      if (SBYTE7(v60) < 0)
      {
        operator delete(__p[0]);
      }

      ++v16;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_55;
      }
    }

    if (v62 - v22 < v25 - (v22 - v21))
    {
      if ((v25 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v26 = &v21[v25];
    goto LABEL_47;
  }

LABEL_55:
  if ((*(v53 + 16) & 0x40) != 0)
  {
    *(a1 + 96) = sub_899A0(*(v53 + 124));
  }

  v29 = *(v53 + 64);
  v30 = (v29 + 8);
  if (!v29)
  {
    v30 = 0;
  }

  v31 = *(v53 + 56);
  if (v31)
  {
    v56 = &v30[v31];
    do
    {
      v57 = v30;
      v32 = *v30;
      v33 = *(*v30 + 40);
      if (v33)
      {
        v34 = (v33 + 8);
      }

      else
      {
        v34 = 0;
      }

      v35 = *(v32 + 32);
      if (v35)
      {
        v36 = *(a1 + 144);
        v37 = 8 * v35;
        do
        {
          v40 = *(a1 + 112);
          v41 = 170 * ((*(a1 + 120) - v40) >> 3) - 1;
          v42 = *v34;
          if (*(a1 + 120) == v40)
          {
            v41 = 0;
          }

          v43 = v36 + *(a1 + 136);
          if (v41 == v43)
          {
            sub_3F4F54(v58);
            v40 = *(a1 + 112);
            v43 = *(a1 + 144) + *(a1 + 136);
          }

          v38 = *(v40 + 8 * (v43 / 0xAA)) + 24 * (v43 % 0xAA);
          *v38 = *(v42 + 24);
          *(v38 + 8) = 1000 * *(v42 + 32);
          v39 = *(v32 + 48);
          if (!v39)
          {
            v39 = &off_2734450;
          }

          *(v38 + 12) = *(v39 + 6);
          *(v38 + 16) = 1000 * *(v39 + 7);
          *(v38 + 20) = *(v39 + 16);
          v36 = *(a1 + 144) + 1;
          *(a1 + 144) = v36;
          ++v34;
          v37 -= 8;
        }

        while (v37);
      }

      v30 = v57 + 1;
    }

    while (v57 + 1 != v56);
  }

  if ((*(v53 + 16) & 0x20) != 0)
  {
    v44 = *(v53 + 120);
    if (v44 != 0x7FFFFFFF)
    {
      *(a1 + 152) = v44 + 978307200;
    }
  }

  v45 = *(v53 + 88);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  v47 = *(v53 + 80);
  if (v47)
  {
    v48 = *(a1 + 168);
    v49 = 8 * v47;
    do
    {
      v50 = *v46;
      if (v48 >= *(a1 + 176))
      {
        v48 = sub_4FBAF4(v54, v50);
      }

      else
      {
        sub_4FAD10(v48, v50);
        v48 += 56;
        *(a1 + 168) = v48;
      }

      *(a1 + 168) = v48;
      ++v46;
      v49 -= 8;
    }

    while (v49);
  }

  return a1;
}

void sub_4FB488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void ***a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *a12;
  if (*a12)
  {
    *(v16 + 168) = v18;
    operator delete(v18);
  }

  sub_4F0D1C(a16);
  sub_4F0C94(a13);
  sub_4F0E40(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_4FB508@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 168);
  *a2 = *(result + 160);
  a2[1] = v2;
  return result;
}

uint64_t sub_4FB514@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 160);
  v2 = *(result + 168);
  *a2 = v2;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v3;
  return result;
}

uint64_t sub_4FB524(void *a1, __int128 *a2, unint64_t a3)
{
  v3 = *(a2 + 9);
  if ((*(a2 + 6) & *(a2 + 7)) == -1 || v3 == 0x7FFFFFFF)
  {
    v5 = 0;
    v6 = a1[21];
  }

  else
  {
    v7 = a1[20];
    v6 = a1[21];
    if (v7 == v6 || *(v6 - 5) <= v3)
    {
      v8 = a1[22];
      if (v6 >= v8)
      {
        v13 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 3) + 1;
        if (v13 > 0x492492492492492)
        {
          sub_1794();
        }

        v14 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x249249249249249)
        {
          v15 = 0x492492492492492;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          if (v15 <= 0x492492492492492)
          {
            operator new();
          }

          sub_1808();
        }

        v16 = 8 * ((v6 - v7) >> 3);
        v17 = a2[1];
        *v16 = *a2;
        *(v16 + 16) = v17;
        *(v16 + 32) = a2[2];
        *(v16 + 48) = *(a2 + 6);
        v12 = v16 + 56;
        v18 = v16 - (v6 - v7);
        if (v7 != v6)
        {
          v19 = v7;
          v20 = v16 - (v6 - v7);
          do
          {
            v21 = *v19;
            v22 = *(v19 + 1);
            v23 = *(v19 + 2);
            *(v20 + 48) = *(v19 + 6);
            *(v20 + 16) = v22;
            *(v20 + 32) = v23;
            *v20 = v21;
            v20 += 56;
            v19 += 56;
          }

          while (v19 != v6);
        }

        a1[20] = v18;
        a1[21] = v12;
        a1[22] = 0;
        if (v7)
        {
          v24 = a1;
          v25 = a3;
          operator delete(v7);
          a3 = v25;
          a1 = v24;
        }
      }

      else
      {
        v9 = *a2;
        v10 = a2[1];
        v11 = a2[2];
        *(v6 + 6) = *(a2 + 6);
        *(v6 + 1) = v10;
        *(v6 + 2) = v11;
        *v6 = v9;
        v12 = (v6 + 56);
      }

      a1[21] = v12;
      v5 = 1;
      v6 = v12;
    }

    else
    {
      v5 = 0;
    }
  }

  v26 = a1[20];
  v27 = &v6[-56 * a3];
  if (0x6DB6DB6DB6DB6DB7 * (&v6[-v26] >> 3) <= a3 || v27 == v26)
  {
    return v5;
  }

  if (v27 != v6)
  {
    v30 = &v27[-v26];
    do
    {
      v31 = &v30[v26];
      *v26 = v30[v26];
      *(v26 + 8) = *&v30[v26 + 8];
      *(v26 + 16) = *&v30[v26 + 16];
      v32 = *&v30[v26 + 24];
      *(v26 + 32) = *&v30[v26 + 32];
      *(v26 + 24) = v32;
      v33 = *&v30[v26 + 36];
      *(v26 + 52) = *&v30[v26 + 52];
      *(v26 + 36) = v33;
      v26 += 56;
    }

    while (v31 + 56 != v6);
  }

  a1[21] = v26;
  return v5;
}

double sub_4FB7B4(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  a1[5] = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = a1[2];
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 64;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 128;
  }

  a1[4] = v8;
LABEL_8:
  sub_4FB890(a1);
  v10 = a1[1];
  v9 = a1[2];
  if (v9 != v10)
  {
    a1[2] = v9 + ((v10 - v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_4FB984(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_4FB890(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[1];
    if (v3 >= 0x80)
    {
      operator delete(*v4);
      v4 = (a1[1] + 8);
      a1[1] = v4;
      v2 = a1[5];
      v3 = a1[4] - 128;
      a1[4] = v3;
    }

    v5 = a1[2];
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 16 * (v5 - v4) - 1;
    }

    if (v6 - (v2 + v3) >= 0x80)
    {
      operator delete(*(v5 - 1));
      a1[2] -= 8;
    }

    v7 = a1;
  }

  else
  {
    v8 = a1[2];
    if (v8 != a1[1])
    {
      do
      {
        operator delete(*(v8 - 8));
        v9 = a1[1];
        v8 = a1[2] - 8;
        a1[2] = v8;
      }

      while (v8 != v9);
    }

    a1[4] = 0;
    v7 = a1;
  }

  sub_4FB984(v7);
}

void sub_4FB984(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3 - v4;
  v7 = v2 - v5;
  if (v6 > v2 - v5)
  {
    v8 = v7 >> 3;
    if (v2 != v5)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    if (v7 < v6)
    {
      v9 = *(a1 + 8);
      v10 = (*(a1 + 16) - v9);
      v11 = v10;
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = (v10 - 1);
      if ((v10 - 1) < 0x18)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (-v9 >= 0x20)
        {
          v14 = (v12 >> 3) + 1;
          v13 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
          v15 = (v13 + v9);
          v16 = (v9 + 16);
          v17 = dword_10;
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          v9 = v15;
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v11;
            *(a1 + 24) = 8 * v8;
            if (v4)
            {

              operator delete(v4);
            }

            return;
          }
        }
      }

      do
      {
        v20 = *v9;
        v9 += 8;
        *v13++ = v20;
      }

      while (v13 != v11);
      goto LABEL_16;
    }
  }
}

uint64_t sub_4FBAF4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v4 = 0x492492492492492;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  sub_4FAD10(v5, a2);
  v6 = *a1;
  v7 = a1[1];
  v8 = v5 + *a1 - v7;
  if (v7 != *a1)
  {
    v9 = v5 + *a1 - v7;
    do
    {
      v10 = *v6;
      v11 = v6[1];
      v12 = v6[2];
      *(v9 + 48) = *(v6 + 6);
      *(v9 + 16) = v11;
      *(v9 + 32) = v12;
      *v9 = v10;
      v9 += 56;
      v6 = (v6 + 56);
    }

    while (v6 != v7);
    v6 = *a1;
  }

  *a1 = v8;
  a1[1] = v5 + 56;
  a1[2] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return v5 + 56;
}

void sub_4FBC44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4FBC5C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_4FBFCC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_4FC024(int a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_74700();
  sub_58568(v10);
  nullsub_1(v6);
  v7 = sub_4EF360(a3);
  if (sub_585D8(v7))
  {
    sub_4EF360(a3);
    return nullsub_1(v6);
  }

  v8 = sub_73EC4(v6);
  result = sub_585D8(v8);
  if (a1 == 1 && (result & 1) == 0 && a2 <= 0xC && ((1 << a2) & 0x1C09) != 0)
  {
    sub_73ECC(v6);
    return nullsub_1(v6);
  }

  return result;
}

BOOL sub_4FC0DC(uint64_t a1)
{
  if (sub_4EE33C(a1) == -1)
  {
    return 0;
  }

  v2 = sub_3CF23C(a1);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  if (!v3 || *(nullsub_1(a1) + 128) != 1)
  {
    return 0;
  }

  v4 = nullsub_1(a1);
  if ((*(v4 + 128) & 1) == 0)
  {
    sub_4F0F0C();
  }

  return sub_4F9718(v4) != 0;
}

void sub_4FC16C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = sub_4EE304(a1);
  sub_4FB508(v7, &v12);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = v12;
  v9 = v13;
  if (v12 != v13)
  {
    if (a3 == 0x7FFFFFFF)
    {
      do
      {
        v10 = *(v8 + 32);
        v14 = *(v8 + 24);
        v15 = v10;
        sub_376F0(a4, &v14);
        v8 += 56;
      }

      while (v8 != v9);
    }

    else
    {
      do
      {
        if (((10 * (a2 - *(v8 + 36))) & ~((10 * (a2 - *(v8 + 36))) >> 31)) <= a3)
        {
          v11 = *(v8 + 32);
          v14 = *(v8 + 24);
          v15 = v11;
          sub_376F0(a4, &v14);
        }

        v8 += 56;
      }

      while (v8 != v9);
    }
  }
}

void sub_4FC248(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4FC268(int a1)
{
  result = 3;
  if (a1 > 4)
  {
    if ((a1 - 5) < 3)
    {
      return 0;
    }

    if (a1 == 900)
    {
      return result;
    }

    if (a1 == 12)
    {
      return 1;
    }

LABEL_10:
    v3 = ((5243 * (a1 >> 2)) >> 17) - 1;
    if (v3 <= 0x11)
    {
      return byte_2298380[v3];
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return result;
    }

    if (a1 == 1)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (a1 == 2)
  {
    return 2;
  }

  if (a1 == 3)
  {
    return 4;
  }

  return 5;
}

BOOL sub_4FC330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v60);
    sub_4A5C(&v60, "Journey has an invalid static departure time", 44);
    if ((v70 & 0x10) != 0)
    {
      v12 = v69;
      if (v69 < v66)
      {
        v69 = v66;
        v12 = v66;
      }

      v13 = v65;
      v6 = v12 - v65;
      if (v12 - v65 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if ((v70 & 8) == 0)
      {
        v6 = 0;
        v59 = 0;
LABEL_101:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 1u);
LABEL_102:
        if (v59 < 0)
        {
          operator delete(__dst);
        }

        if (v68 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v62);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v13 = v63[0];
      v6 = v64 - v63[0];
      if (v64 - v63[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_41:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v59 = v6;
    if (!v6)
    {
      goto LABEL_101;
    }

LABEL_100:
    memmove(&__dst, v13, v6);
    goto LABEL_101;
  }

  v7 = *(a1 + 156);
  v8 = *(a1 + 4);
  if (v7 == 2 && v8 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v60);
    sub_4A5C(&v60, "Journey based on realtime data has an invalid expected departure time", 69);
    if ((v70 & 0x10) != 0)
    {
      v14 = v69;
      if (v69 < v66)
      {
        v69 = v66;
        v14 = v66;
      }

      v13 = v65;
      v6 = v14 - v65;
      if (v14 - v65 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if ((v70 & 8) == 0)
      {
        v6 = 0;
        v59 = 0;
        goto LABEL_101;
      }

      v13 = v63[0];
      v6 = v64 - v63[0];
      if (v64 - v63[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_58:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v59 = v6;
    if (!v6)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  if (*(a1 + 24) == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v60);
    sub_4A5C(&v60, "Journey has an invalid static original departure time", 53);
    if ((v70 & 0x10) != 0)
    {
      v16 = v69;
      if (v69 < v66)
      {
        v69 = v66;
        v16 = v66;
      }

      v17 = &v65;
    }

    else
    {
      if ((v70 & 8) == 0)
      {
        v6 = 0;
        v59 = 0;
        goto LABEL_101;
      }

      v17 = v63;
      v16 = v64;
    }

    v13 = *v17;
    v6 = v16 - *v17;
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v59 = v16 - *v17;
    if (!v6)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  if ((v7 - 3) >= 0xFFFFFFFE && *(a1 + 28) == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v60);
    sub_4A5C(&v60, "Journey which was based on realtime data has an invalid original expected departure time", 88);
    if ((v70 & 0x10) != 0)
    {
      v18 = v69;
      if (v69 < v66)
      {
        v69 = v66;
        v18 = v66;
      }

      v19 = &v65;
    }

    else
    {
      if ((v70 & 8) == 0)
      {
        v6 = 0;
        v59 = 0;
        goto LABEL_101;
      }

      v19 = v63;
      v18 = v64;
    }

    v13 = *v19;
    v6 = v18 - *v19;
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v59 = v18 - *v19;
    if (!v6)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v11 = *(a1 + 12);
  if (v11 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v60);
    sub_4A5C(&v60, "Journey has an invalid static arrival time", 42);
    if ((v70 & 0x10) != 0)
    {
      v21 = v69;
      if (v69 < v66)
      {
        v69 = v66;
        v21 = v66;
      }

      v22 = &v65;
    }

    else
    {
      if ((v70 & 8) == 0)
      {
        v6 = 0;
        v59 = 0;
        goto LABEL_101;
      }

      v22 = v63;
      v21 = v64;
    }

    v13 = *v22;
    v6 = v21 - *v22;
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v59 = v21 - *v22;
    if (!v6)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v15 = *(a1 + 16);
  if (v7 == 2 && v15 == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v60);
    sub_4A5C(&v60, "Journey based on realtime data has an invalid expected arrival time", 67);
    sub_1959680(&v60, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_62;
  }

  if (*(a1 + 36) == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v60);
    sub_4A5C(&v60, "Journey has an invalid static original arrival time", 51);
    sub_1959680(&v60, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_62;
  }

  if ((v7 - 3) < 0xFFFFFFFE)
  {
    if (!v7 && v4 > v11 && a2)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v60);
      sub_4A5C(&v60, "Journey has a negative static duration of ", 42);
      v20 = std::ostream::operator<<();
      sub_4A5C(v20, " sec", 4);
      sub_1959680(&v60, &__dst);
      sub_7E854(&__dst, 1u);
      goto LABEL_62;
    }

LABEL_114:
    v25 = *(a1 + 96);
    v24 = *(a1 + 104);
    if (v25 != v24)
    {
      if (v7 == 2)
      {
        while (*v25 != 0x7FFFFFFF)
        {
          if (v25[1] == 0x7FFFFFFF)
          {
            result = sub_7E7E4(1u);
            if (!result)
            {
              return result;
            }

            sub_19594F8(&v60);
            sub_4A5C(&v60, "Journey based on realtime data has an invalid future expected departure time entry", 82);
            sub_1959680(&v60, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_62;
          }

          if (*v25 < v4)
          {
            goto LABEL_133;
          }

          v25 += 3;
          if (v25 == v24)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        while (*v25 != 0x7FFFFFFF)
        {
          if (*v25 < v4)
          {
LABEL_133:
            result = sub_7E7E4(1u);
            if (!result)
            {
              return result;
            }

            sub_19594F8(&v60);
            v28 = sub_4A5C(&v60, "Journey has a future static departure time which is before the journey's static departure time: ", 96);
            v29 = sub_258D4(v28);
            v30 = sub_4A5C(v29, " < ", 3);
            sub_258D4(v30);
            sub_1959680(&v60, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_62;
          }

          v25 += 3;
          if (v25 == v24)
          {
            goto LABEL_124;
          }
        }
      }

      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v60);
        sub_4A5C(&v60, "Journey has an invalid future static departure time entry", 57);
        sub_1959680(&v60, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_62;
      }

      return result;
    }

LABEL_124:
    v27 = *(a1 + 72);
    v26 = *(a1 + 80);
    if (v27 != v26)
    {
      if (v7 == 2)
      {
        while (*v27 != 0x7FFFFFFF)
        {
          if (v27[1] == 0x7FFFFFFF)
          {
            result = sub_7E7E4(1u);
            if (!result)
            {
              return result;
            }

            sub_19594F8(&v60);
            sub_4A5C(&v60, "Journey based on realtime data has an invalid past expected departure time entry", 80);
            sub_1959680(&v60, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_62;
          }

          if (*v27 > v4)
          {
            goto LABEL_163;
          }

          v27 += 3;
          if (v27 == v26)
          {
            goto LABEL_138;
          }
        }
      }

      else
      {
        while (*v27 != 0x7FFFFFFF)
        {
          if (*v27 > v4)
          {
LABEL_163:
            result = sub_7E7E4(1u);
            if (!result)
            {
              return result;
            }

            sub_19594F8(&v60);
            v47 = sub_4A5C(&v60, "Journey has a past static departure time which is after the journey's static departure time: ", 93);
            v48 = sub_258D4(v47);
            v49 = sub_4A5C(v48, " > ", 3);
            sub_258D4(v49);
            sub_1959680(&v60, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_62;
          }

          v27 += 3;
          if (v27 == v26)
          {
            goto LABEL_138;
          }
        }
      }

      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v60);
        sub_4A5C(&v60, "Journey has an invalid past static departure time entry", 55);
        sub_1959680(&v60, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_62;
      }

      return result;
    }

LABEL_138:
    v31 = *(a1 + 48);
    if (v31 == *(a1 + 56))
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v60);
        sub_4A5C(&v60, "Journey has an empty set of journey segment bundles", 51);
        sub_1959680(&v60, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_62;
      }

      return result;
    }

    v57 = *(a1 + 48);
LABEL_140:
    v33 = *v31;
    v32 = *(v31 + 8);
    if (*v31 == v32)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v60);
      sub_4A5C(&v60, "Journey segment bundle has an empty set of journey segments", 59);
      if ((v70 & 0x10) != 0)
      {
        v52 = v69;
        if (v69 < v66)
        {
          v69 = v66;
          v52 = v66;
        }

        v53 = &v65;
      }

      else
      {
        if ((v70 & 8) == 0)
        {
          v50 = 0;
          v59 = 0;
LABEL_190:
          *(&__dst + v50) = 0;
          sub_7E854(&__dst, 1u);
          goto LABEL_102;
        }

        v53 = v63;
        v52 = v64;
      }

      v56 = *v53;
      v50 = v52 - *v53;
      if (v50 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v50 >= 0x17)
      {
        operator new();
      }

      v59 = v52 - *v53;
      if (!v50)
      {
        goto LABEL_190;
      }

LABEL_189:
      memmove(&__dst, v56, v50);
      goto LABEL_190;
    }

    v34 = v32 - v33 - 144;
    if (v34 >= 0x90)
    {
      v37 = 0;
      v38 = 0;
      v39 = v34 / 0x90 + 1;
      v36 = &v33[18 * (v39 & 0x3FFFFFFFFFFFFFELL)];
      v40 = *v31;
      v41 = v39 & 0x3FFFFFFFFFFFFFELL;
      do
      {
        if (!*v40)
        {
          ++v37;
        }

        if (!*(v40 + 36))
        {
          ++v38;
        }

        v40 += 36;
        v41 -= 2;
      }

      while (v41);
      v35 = v38 + v37;
      if (v39 == (v39 & 0x3FFFFFFFFFFFFFELL))
      {
        goto LABEL_153;
      }
    }

    else
    {
      v35 = 0;
      v36 = *v31;
    }

    do
    {
      v42 = *v36;
      v36 += 18;
      if (!v42)
      {
        ++v35;
      }
    }

    while (v36 != v32);
LABEL_153:
    if (v35 == 1)
    {
      v43 = a2;
      v44 = a3;
      v45 = a4;
      v60 = *v31;
      while (1)
      {
        v46 = a1;
        if (!sub_4FD68C(a1, &v57, &v60, v43, v44, v45))
        {
          return 0;
        }

        v33 += 18;
        v60 = v33;
        a1 = v46;
        if (v33 == *(v31 + 8))
        {
          v31 += 64;
          v57 = v31;
          a4 = v45;
          a3 = v44;
          a2 = v43;
          if (v31 != *(v46 + 56))
          {
            goto LABEL_140;
          }

          return 1;
        }
      }
    }

    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v60);
    sub_4A5C(&v60, "Journey segment bundle has ", 27);
    v51 = std::ostream::operator<<();
    sub_4A5C(v51, " segments of type MAIN", 22);
    if ((v70 & 0x10) != 0)
    {
      v54 = v69;
      if (v69 < v66)
      {
        v69 = v66;
        v54 = v66;
      }

      v55 = &v65;
    }

    else
    {
      if ((v70 & 8) == 0)
      {
        v50 = 0;
        v59 = 0;
        goto LABEL_190;
      }

      v55 = v63;
      v54 = v64;
    }

    v56 = *v55;
    v50 = v54 - *v55;
    if (v50 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v50 >= 0x17)
    {
      operator new();
    }

    v59 = v54 - *v55;
    if (!v50)
    {
      goto LABEL_190;
    }

    goto LABEL_189;
  }

  if (*(a1 + 40) == 0x7FFFFFFF)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v60);
    sub_4A5C(&v60, "Journey which was based on realtime data has an invalid original expected arrival time", 86);
    sub_1959680(&v60, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_62;
  }

  if (v7 != 2 || !a2 || v8 <= v15)
  {
    goto LABEL_114;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v60);
    sub_4A5C(&v60, "Journey based on realtime data has a negative expected duration of ", 67);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, " sec", 4);
    sub_1959680(&v60, &__dst);
    sub_7E854(&__dst, 1u);
LABEL_62:
    if (v59 < 0)
    {
      operator delete(__dst);
    }

    sub_1959728(&v60);
    return 0;
  }

  return result;
}

void sub_4FD280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

BOOL sub_4FD60C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    return 1;
  }

  do
  {
    result = sub_4FC330(v4, a2, a3, a4);
    if (!result)
    {
      break;
    }

    v4 += 232;
  }

  while (v4 != v5);
  return result;
}

BOOL sub_4FD68C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + 16);
  v7 = *(*a3 + 8);
  if (v7 == v6)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v123);
    sub_4A5C(&v123, "Journey segment has an empty sequence of journey legs", 53);
    if ((v133 & 0x10) != 0)
    {
      v50 = v132;
      if (v132 < v129)
      {
        v132 = v129;
        v50 = v129;
      }

      v51 = v128;
      v21 = v50 - v128;
      if (v50 - v128 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if ((v133 & 8) == 0)
      {
        v21 = 0;
        v122 = 0;
        goto LABEL_137;
      }

      v51 = v126[0];
      v21 = v127 - v126[0];
      if (v127 - v126[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_145:
        sub_3244();
      }
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v122 = v21;
    if (v21)
    {
      goto LABEL_136;
    }

    goto LABEL_137;
  }

  v14 = v7 + 1136;
  while (v14 != v6)
  {
    v15 = *(v14 - 1084);
    v16 = *(v14 - 8);
    v17 = *(v14 + 52);
    v18 = *(v14 + 1128);
    v14 += 1136;
    if (v16)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18 == 0;
    }

    if (v19 && v15 != v17)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v123);
      sub_4A5C(&v123, "Journey segment contains public transport journey legs with differing risk statuses", 83);
      if ((v133 & 0x10) != 0)
      {
        v52 = v132;
        if (v132 < v129)
        {
          v132 = v129;
          v52 = v129;
        }

        v51 = v128;
        v21 = v52 - v128;
        if (v52 - v128 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if ((v133 & 8) == 0)
        {
          v21 = 0;
          v122 = 0;
          goto LABEL_137;
        }

        v51 = v126[0];
        v21 = v127 - v126[0];
        if (v127 - v126[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_147:
          sub_3244();
        }
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v122 = v21;
      if (v21)
      {
        goto LABEL_136;
      }

      goto LABEL_137;
    }
  }

  while (1)
  {
    if (sub_50360C(v7) == 0x7FFFFFFF)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v123);
      sub_4A5C(&v123, "Journey leg has an invalid static departure time", 48);
      if ((v133 & 0x10) != 0)
      {
        v63 = v132;
        if (v132 < v129)
        {
          v132 = v129;
          v63 = v129;
        }

        v64 = &v128;
      }

      else
      {
        if ((v133 & 8) == 0)
        {
          v21 = 0;
          v122 = 0;
          goto LABEL_137;
        }

        v64 = v126;
        v63 = v127;
      }

      v51 = *v64;
      v21 = v63 - *v64;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v122 = v63 - *v64;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    if (*(a1 + 156) == 2 && sub_50360C(v7) >> 32 == 0x7FFFFFFF)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v123);
      sub_4A5C(&v123, "Journey based on realtime data has a journey leg with an invalid expected departure time", 88);
      if ((v133 & 0x10) != 0)
      {
        v75 = v132;
        if (v132 < v129)
        {
          v132 = v129;
          v75 = v129;
        }

        v76 = &v128;
      }

      else
      {
        if ((v133 & 8) == 0)
        {
          v21 = 0;
          v122 = 0;
          goto LABEL_137;
        }

        v76 = v126;
        v75 = v127;
      }

      v51 = *v76;
      v21 = v75 - *v76;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v122 = v75 - *v76;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    if (sub_503828(v7) == 0x7FFFFFFF)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v123);
      sub_4A5C(&v123, "Journey leg has an invalid static arrival time", 46);
      if ((v133 & 0x10) != 0)
      {
        v65 = v132;
        if (v132 < v129)
        {
          v132 = v129;
          v65 = v129;
        }

        v66 = &v128;
      }

      else
      {
        if ((v133 & 8) == 0)
        {
          v21 = 0;
          v122 = 0;
          goto LABEL_137;
        }

        v66 = v126;
        v65 = v127;
      }

      v51 = *v66;
      v21 = v65 - *v66;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v122 = v65 - *v66;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    v22 = *(a1 + 156);
    if (v22 == 2)
    {
      if (sub_503828(v7) >> 32 == 0x7FFFFFFF)
      {
        if (!sub_7E7E4(1u))
        {
          return 0;
        }

        sub_19594F8(&v123);
        sub_4A5C(&v123, "Journey based on realtime data has a journey leg with an invalid expected arrival time", 86);
        if ((v133 & 0x10) != 0)
        {
          v77 = v132;
          if (v132 < v129)
          {
            v132 = v129;
            v77 = v129;
          }

          v78 = &v128;
        }

        else
        {
          if ((v133 & 8) == 0)
          {
            v21 = 0;
            v122 = 0;
            goto LABEL_137;
          }

          v78 = v126;
          v77 = v127;
        }

        v51 = *v78;
        v21 = v77 - *v78;
        if (v21 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v21 >= 0x17)
        {
          operator new();
        }

        v122 = v77 - *v78;
        if (!v21)
        {
          goto LABEL_137;
        }

        goto LABEL_136;
      }

      v22 = *(a1 + 156);
    }

    if (v22)
    {
      if (v22 != 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = sub_50360C(v7);
      if (v23 > sub_503828(v7))
      {
        if (!sub_7E7E4(1u))
        {
          return 0;
        }

        sub_19594F8(&v123);
        sub_4A5C(&v123, "Journey leg has a negative static duration of ", 46);
        sub_503828(v7);
        sub_50360C(v7);
        v60 = std::ostream::operator<<();
        sub_4A5C(v60, " sec", 4);
        if ((v133 & 0x10) != 0)
        {
          v84 = v132;
          if (v132 < v129)
          {
            v132 = v129;
            v84 = v129;
          }

          v85 = &v128;
        }

        else
        {
          if ((v133 & 8) == 0)
          {
            v21 = 0;
            v122 = 0;
            goto LABEL_137;
          }

          v85 = v126;
          v84 = v127;
        }

        v51 = *v85;
        v21 = v84 - *v85;
        if (v21 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v21 >= 0x17)
        {
          operator new();
        }

        v122 = v84 - *v85;
        if (!v21)
        {
          goto LABEL_137;
        }

        goto LABEL_136;
      }

      if (*(a1 + 156) != 2)
      {
        goto LABEL_34;
      }
    }

    v24 = sub_50360C(v7);
    if (SHIDWORD(v24) > (sub_503828(v7) >> 32))
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v123);
      sub_4A5C(&v123, "Journey based on realtime data has a journey leg with a negative expected duration of ", 86);
      sub_503828(v7);
      sub_50360C(v7);
      v58 = std::ostream::operator<<();
      sub_4A5C(v58, " sec", 4);
      if ((v133 & 0x10) != 0)
      {
        v80 = v132;
        if (v132 < v129)
        {
          v132 = v129;
          v80 = v129;
        }

        v81 = &v128;
      }

      else
      {
        if ((v133 & 8) == 0)
        {
          v21 = 0;
          v122 = 0;
          goto LABEL_137;
        }

        v81 = v126;
        v80 = v127;
      }

      v51 = *v81;
      v21 = v80 - *v81;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v122 = v80 - *v81;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

LABEL_34:
    v25 = (v7 + 1136);
    if (*(*a3 + 16) == v7 + 1136)
    {
      v33 = (*a2 + 64);
      if (*(a1 + 56) != v33)
      {
        v34 = *(*a2 + 72);
        v35 = *v33;
        if (v35 != v34)
        {
          while (*v35)
          {
            v35 += 144;
            if (v35 == v34)
            {
              goto LABEL_131;
            }
          }
        }

        if (v35 == v34 || (v40 = *(v35 + 8), v40 == *(v35 + 16)))
        {
LABEL_131:
          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v123);
          sub_4A5C(&v123, "Unable to resolve subsequent journey leg", 40);
          if ((v133 & 0x10) != 0)
          {
            v56 = v132;
            if (v132 < v129)
            {
              v132 = v129;
              v56 = v129;
            }

            v57 = &v128;
          }

          else
          {
            if ((v133 & 8) == 0)
            {
              v21 = 0;
              v122 = 0;
              goto LABEL_137;
            }

            v57 = v126;
            v56 = v127;
          }

          v51 = *v57;
          v21 = v56 - *v57;
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v21 >= 0x17)
          {
            operator new();
          }

          v122 = v56 - *v57;
          if (!v21)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        v41 = *(a1 + 156);
        if (a4 && !v41)
        {
          v42 = sub_503828(v7);
          if (v42 > sub_50360C(v40))
          {
            if (!sub_7E7E4(1u))
            {
              return 0;
            }

            sub_19594F8(&v123);
            v86 = sub_4A5C(&v123, "Journey leg has a static arrival time after the subsequent leg's static departure time: ", 88);
            __dst = sub_503828(v7);
            LOWORD(v121) = v87;
            v88 = sub_258D4(v86);
            v89 = sub_4A5C(v88, " > ", 3);
            sub_50360C(v40);
            sub_258D4(v89);
            sub_1959680(&v123, &__dst);
            sub_7E854(&__dst, 1u);
            goto LABEL_303;
          }

          v41 = *(a1 + 156);
        }

        if (a4)
        {
          if (v41 == 2)
          {
            v43 = a2;
            v44 = a6;
            v45 = a5;
            v46 = sub_503828(v7);
            v47 = sub_50360C(v40);
            v48 = HIDWORD(v46);
            a5 = v45;
            a6 = v44;
            a2 = v43;
            if (v48 > SHIDWORD(v47))
            {
              if (!sub_7E7E4(1u))
              {
                return 0;
              }

              sub_19594F8(&v123);
              v91 = sub_4A5C(&v123, "Journey based on realtime data has a journey leg with an expected arrival time after the subsequent leg's expected departure time: ", 131);
              __dst = sub_503828(v7);
              LOWORD(v121) = v92;
              v93 = sub_258D4(v91);
              v94 = sub_4A5C(v93, " > ", 3);
              sub_50360C(v40);
              sub_258D4(v94);
              sub_1959680(&v123, &__dst);
              sub_7E854(&__dst, 1u);
              goto LABEL_303;
            }
          }
        }
      }
    }

    if (a4)
    {
      v26 = *(*a3 + 16);
      v27 = *(a1 + 156);
      if (v26 != v25 && v27 == 0)
      {
        v29 = sub_503828(v7);
        if (v29 > sub_50360C((v7 + 1136)))
        {
          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v123);
          v67 = sub_4A5C(&v123, "Journey leg has a static arrival time after the subsequent leg's static departure time: ", 88);
          __dst = sub_503828(v7);
          LOWORD(v121) = v68;
          v69 = sub_258D4(v67);
          v70 = sub_4A5C(v69, " > ", 3);
          sub_50360C(v25);
          sub_258D4(v70);
          sub_1959680(&v123, &__dst);
          sub_7E854(&__dst, 1u);
          goto LABEL_303;
        }

        v26 = *(*a3 + 16);
        v27 = *(a1 + 156);
      }

      if (v26 != v25 && v27 == 2)
      {
        v31 = sub_503828(v7);
        if (SHIDWORD(v31) > (sub_50360C((v7 + 1136)) >> 32))
        {
          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v123);
          v71 = sub_4A5C(&v123, "Journey based on realtime data has a journey leg with an expected arrival time after the subsequent leg's expected departure time: ", 131);
          __dst = sub_503828(v7);
          LOWORD(v121) = v72;
          v73 = sub_258D4(v71);
          v74 = sub_4A5C(v73, " > ", 3);
          sub_50360C(v25);
          sub_258D4(v74);
          sub_1959680(&v123, &__dst);
          sub_7E854(&__dst, 1u);
          goto LABEL_303;
        }
      }
    }

    v32 = *(v7 + 1128);
    if (v32 <= 1)
    {
      break;
    }

    if (v32 != 2)
    {
      if (v32 == 3)
      {
        if (!a6)
        {
          goto LABEL_20;
        }

        if (sub_4D1F6C((v7 + 32)))
        {
          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v123);
          sub_4A5C(&v123, "Street walking journey leg has a route with no segments", 55);
          if ((v133 & 0x10) != 0)
          {
            v114 = v132;
            if (v132 < v129)
            {
              v132 = v129;
              v114 = v129;
            }

            v115 = &v128;
          }

          else
          {
            if ((v133 & 8) == 0)
            {
              v21 = 0;
              v122 = 0;
              goto LABEL_137;
            }

            v115 = v126;
            v114 = v127;
          }

          v51 = *v115;
          v21 = v114 - *v115;
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v21 >= 0x17)
          {
            operator new();
          }

          v122 = v114 - *v115;
          if (!v21)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        if (!sub_4D6530((v7 + 32)))
        {
          return 0;
        }

        v32 = *(v7 + 1128);
      }

      else if (v32 == 4)
      {
        if (*(a1 + 56) - *(a1 + 48) != 64 || *(*a2 + 8) - **a2 != 144 || *(*a3 + 16) - *(*a3 + 8) != 1136)
        {
          if (!sub_7E7E4(3u))
          {
            return 0;
          }

          sub_19594F8(&v123);
          sub_4A5C(&v123, "Journey contains a self-transfer journey leg, however, it is not the only leg of the journey.", 93);
          if ((v133 & 0x10) != 0)
          {
            v82 = v132;
            if (v132 < v129)
            {
              v132 = v129;
              v82 = v129;
            }

            v83 = &v128;
          }

          else
          {
            if ((v133 & 8) == 0)
            {
              v59 = 0;
              v122 = 0;
LABEL_330:
              *(&__dst + v59) = 0;
              sub_7E854(&__dst, 3u);
              goto LABEL_138;
            }

            v83 = v126;
            v82 = v127;
          }

          v99 = *v83;
          v59 = v82 - *v83;
          if (v59 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v59 >= 0x17)
          {
            operator new();
          }

          v122 = v82 - *v83;
          if (v59)
          {
            memmove(&__dst, v99, v59);
          }

          goto LABEL_330;
        }

LABEL_111:
        if (*(v7 + 4) == -1 || !*(v7 + 8))
        {
          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v123);
          sub_4A5C(&v123, "Self-transfer journey leg has an invalid stop reference", 55);
          if ((v133 & 0x10) != 0)
          {
            v97 = v132;
            if (v132 < v129)
            {
              v132 = v129;
              v97 = v129;
            }

            v98 = &v128;
          }

          else
          {
            if ((v133 & 8) == 0)
            {
              v21 = 0;
              v122 = 0;
              goto LABEL_137;
            }

            v98 = v126;
            v97 = v127;
          }

          v51 = *v98;
          v21 = v97 - *v98;
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v21 >= 0x17)
          {
            operator new();
          }

          v122 = v97 - *v98;
          if (v21)
          {
            goto LABEL_136;
          }

          goto LABEL_137;
        }

        goto LABEL_20;
      }

LABEL_110:
      if (v32 != 4)
      {
        goto LABEL_20;
      }

      goto LABEL_111;
    }

    if (*(v7 + 12) == -1 || !*(v7 + 16))
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v123);
      sub_4A5C(&v123, "Road access point journey leg has an invalid road access point reference", 72);
      if ((v133 & 0x10) != 0)
      {
        v100 = v132;
        if (v132 < v129)
        {
          v132 = v129;
          v100 = v129;
        }

        v101 = &v128;
      }

      else
      {
        if ((v133 & 8) == 0)
        {
          v21 = 0;
          v122 = 0;
          goto LABEL_137;
        }

        v101 = v126;
        v100 = v127;
      }

      v51 = *v101;
      v21 = v100 - *v101;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v122 = v100 - *v101;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

LABEL_20:
    v7 += 1136;
    if (v7 == *(*a3 + 16))
    {
      if (!sub_4FFDAC(*(*a3 + 32), *(*a3 + 40)) || !sub_4FFDAC(*(*a3 + 56), *(*a3 + 64)))
      {
        return 0;
      }

      v54 = *(*a3 + 80);
      v55 = *(*a3 + 88);

      return sub_4FFDAC(v54, v55);
    }
  }

  if (v32)
  {
    if (v32 != 1)
    {
      goto LABEL_110;
    }

    if (*(v7 + 8) == -1 || !*(v7 + 12))
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v123);
      sub_4A5C(&v123, "In-station walking journey leg has an origin terminal which is not a transit entity", 83);
      if ((v133 & 0x10) != 0)
      {
        v102 = v132;
        if (v132 < v129)
        {
          v132 = v129;
          v102 = v129;
        }

        v103 = &v128;
      }

      else
      {
        if ((v133 & 8) == 0)
        {
          v21 = 0;
          v122 = 0;
          goto LABEL_137;
        }

        v103 = v126;
        v102 = v127;
      }

      v51 = *v103;
      v21 = v102 - *v103;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v122 = v102 - *v103;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    v36 = *(v7 + 4);
    if (v36 && v36 != 3)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v123);
      v95 = sub_4A5C(&v123, "In-station walking journey leg has an unsupported origin terminal entity type of ", 81);
      sub_5066C8(v95, *(v7 + 4));
      if ((v133 & 0x10) != 0)
      {
        v116 = v132;
        if (v132 < v129)
        {
          v132 = v129;
          v116 = v129;
        }

        v117 = &v128;
      }

      else
      {
        if ((v133 & 8) == 0)
        {
          v21 = 0;
          v122 = 0;
          goto LABEL_137;
        }

        v117 = v126;
        v116 = v127;
      }

      v51 = *v117;
      v21 = v116 - *v117;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v122 = v116 - *v117;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    if (*(v7 + 20) == -1 || !*(v7 + 24))
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v123);
      sub_4A5C(&v123, "In-station walking journey leg has a destination terminal which is not a transit entity", 87);
      if ((v133 & 0x10) != 0)
      {
        v106 = v132;
        if (v132 < v129)
        {
          v132 = v129;
          v106 = v129;
        }

        v107 = &v128;
      }

      else
      {
        if ((v133 & 8) == 0)
        {
          v21 = 0;
          v122 = 0;
          goto LABEL_137;
        }

        v107 = v126;
        v106 = v127;
      }

      v51 = *v107;
      v21 = v106 - *v107;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v122 = v106 - *v107;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    v37 = *(v7 + 16);
    if (v37 && v37 != 3)
    {
      if (!sub_7E7E4(1u))
      {
        return 0;
      }

      sub_19594F8(&v123);
      v96 = sub_4A5C(&v123, "In-station walking journey leg has an unsupported destination terminal entity type of ", 86);
      sub_5066C8(v96, *(v7 + 16));
      if ((v133 & 0x10) != 0)
      {
        v118 = v132;
        if (v132 < v129)
        {
          v132 = v129;
          v118 = v129;
        }

        v119 = &v128;
      }

      else
      {
        if ((v133 & 8) == 0)
        {
          v21 = 0;
          v122 = 0;
          goto LABEL_137;
        }

        v119 = v126;
        v118 = v127;
      }

      v51 = *v119;
      v21 = v118 - *v119;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v122 = v118 - *v119;
      if (!v21)
      {
        goto LABEL_137;
      }

      goto LABEL_136;
    }

    if (a5)
    {
      if (*(v7 + 36) == -1 || !*(v7 + 40))
      {
        if (!sub_7E7E4(1u))
        {
          return 0;
        }

        sub_19594F8(&v123);
        sub_4A5C(&v123, "In-station walking journey leg has an invalid transfer graph reference", 70);
        sub_1959680(&v123, &__dst);
        sub_7E854(&__dst, 1u);
      }

      else
      {
        v38 = *(v7 + 48);
        v39 = *(v7 + 56);
        if (v38 != v39)
        {
LABEL_97:
          while (HIDWORD(*v38) && *v38 != 0xFFFFFFFFLL)
          {
            if (++v38 == v39)
            {
              goto LABEL_110;
            }
          }

          if (!sub_7E7E4(1u))
          {
            return 0;
          }

          sub_19594F8(&v123);
          sub_4A5C(&v123, "In-station walking journey leg contains an invalid transfer reference", 69);
          if ((v133 & 0x10) != 0)
          {
            v61 = v132;
            if (v132 < v129)
            {
              v132 = v129;
              v61 = v129;
            }

            v62 = &v128;
          }

          else
          {
            if ((v133 & 8) == 0)
            {
              v21 = 0;
              v122 = 0;
              goto LABEL_137;
            }

            v62 = v126;
            v61 = v127;
          }

          v51 = *v62;
          v21 = v61 - *v62;
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v21 >= 0x17)
          {
            operator new();
          }

          v122 = v61 - *v62;
          if (!v21)
          {
            goto LABEL_137;
          }

LABEL_136:
          memmove(&__dst, v51, v21);
LABEL_137:
          *(&__dst + v21) = 0;
          sub_7E854(&__dst, 1u);
LABEL_138:
          if (v122 < 0)
          {
            operator delete(__dst);
          }

          if (v131 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v125);
          std::ostream::~ostream();
          std::ios::~ios();
          return 0;
        }

        if (!sub_7E7E4(1u))
        {
          return 0;
        }

        sub_19594F8(&v123);
        sub_4A5C(&v123, "In-station walking journey leg spans an empty set of transfers", 62);
        sub_1959680(&v123, &__dst);
        sub_7E854(&__dst, 1u);
      }

LABEL_303:
      if (v122 < 0)
      {
        operator delete(__dst);
      }

      sub_1959728(&v123);
      return 0;
    }

    v38 = *(v7 + 48);
    v39 = *(v7 + 56);
    if (v38 != v39)
    {
      goto LABEL_97;
    }

    goto LABEL_20;
  }

  if (v7 != *(*a3 + 8) && *(v7 - 8))
  {
    if (!sub_7E7E4(3u))
    {
      return 0;
    }

    sub_19594F8(&v123);
    sub_4A5C(&v123, "Journey leg of type public transport is preceded by a journey leg of a different type in the same segment.", 106);
    sub_1959680(&v123, &__dst);
    sub_7E854(&__dst, 3u);
    goto LABEL_303;
  }

  if (*v7 == -1)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v123);
    sub_4A5C(&v123, "Public transport journey leg has an invalid id", 46);
    if ((v133 & 0x10) != 0)
    {
      v104 = v132;
      if (v132 < v129)
      {
        v132 = v129;
        v104 = v129;
      }

      v105 = &v128;
    }

    else
    {
      if ((v133 & 8) == 0)
      {
        v21 = 0;
        v122 = 0;
        goto LABEL_137;
      }

      v105 = v126;
      v104 = v127;
    }

    v51 = *v105;
    v21 = v104 - *v105;
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v122 = v104 - *v105;
    if (!v21)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  if (*(v7 + 4) == -1 || !*(v7 + 8))
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v123);
    sub_4A5C(&v123, "Public transport journey leg has an invalid trip reference", 58);
    if ((v133 & 0x10) != 0)
    {
      v108 = v132;
      if (v132 < v129)
      {
        v132 = v129;
        v108 = v129;
      }

      v109 = &v128;
    }

    else
    {
      if ((v133 & 8) == 0)
      {
        v21 = 0;
        v122 = 0;
        goto LABEL_137;
      }

      v109 = v126;
      v108 = v127;
    }

    v51 = *v109;
    v21 = v108 - *v109;
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v122 = v108 - *v109;
    if (!v21)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  if (*(v7 + 12) == -1)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v123);
    sub_4A5C(&v123, "Public transport journey leg has an invalid schedule index", 58);
    if ((v133 & 0x10) != 0)
    {
      v110 = v132;
      if (v132 < v129)
      {
        v132 = v129;
        v110 = v129;
      }

      v111 = &v128;
    }

    else
    {
      if ((v133 & 8) == 0)
      {
        v21 = 0;
        v122 = 0;
        goto LABEL_137;
      }

      v111 = v126;
      v110 = v127;
    }

    v51 = *v111;
    v21 = v110 - *v111;
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v122 = v110 - *v111;
    if (!v21)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  if (*(v7 + 16) == -1)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v123);
    sub_4A5C(&v123, "Public transport journey leg has an invalid departure stop index", 64);
    if ((v133 & 0x10) != 0)
    {
      v112 = v132;
      if (v132 < v129)
      {
        v132 = v129;
        v112 = v129;
      }

      v113 = &v128;
    }

    else
    {
      if ((v133 & 8) == 0)
      {
        v21 = 0;
        v122 = 0;
        goto LABEL_137;
      }

      v113 = v126;
      v112 = v127;
    }

    v51 = *v113;
    v21 = v112 - *v113;
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v122 = v112 - *v113;
    if (!v21)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

  if (*(v7 + 20) != -1)
  {
    goto LABEL_20;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v123);
    sub_4A5C(&v123, "Public transport journey leg has an invalid arrival stop index", 62);
    sub_1959680(&v123, &__dst);
    sub_7E854(&__dst, 1u);
    goto LABEL_303;
  }

  return 0;
}

void sub_4FF774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

BOOL sub_4FFDAC(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  while (1)
  {
    if (*a1 == -1 || a1[1] == 0)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v10);
      sub_4A5C(&v10, "Journey segment departure alternative has an invalid trip reference", 67);
      if ((v20 & 0x10) != 0)
      {
        v5 = v19;
        if (v19 < v16)
        {
          v19 = v16;
          v5 = v16;
        }

        v6 = v15;
        v4 = v5 - v15;
        if (v5 - v15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if ((v20 & 8) == 0)
        {
          v4 = 0;
          v9 = 0;
          goto LABEL_35;
        }

        v6 = v13;
        v4 = v14 - v13;
        if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_41:
          sub_3244();
        }
      }

      if (v4 >= 0x17)
      {
        operator new();
      }

      v9 = v4;
      if (!v4)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (a1[4] == 0x7FFFFFFF)
    {
      break;
    }

    a1 += 7;
    if (a1 == a2)
    {
      return 1;
    }
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v10);
  sub_4A5C(&v10, "Journey leg has an invalid static departure time", 48);
  if ((v20 & 0x10) != 0)
  {
    v7 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v7 = v16;
    }

    v6 = v15;
    v4 = v7 - v15;
    if (v7 - v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v4 = 0;
      v9 = 0;
      goto LABEL_35;
    }

    v6 = v13;
    v4 = v14 - v13;
    if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_43:
      sub_3244();
    }
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
LABEL_34:
    memmove(&__p, v6, v4);
  }

LABEL_35:
  *(&__p + v4) = 0;
  sub_7E854(&__p, 1u);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::locale::~locale(&v12);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_500184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_5001FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  if (v3 - v2 == *(a2 + 56) - v4)
  {
    if (v2 == v3)
    {
      return 1;
    }

    do
    {
      result = sub_500508(v2, v4);
      if (!result)
      {
        break;
      }

      v2 += 8;
      v4 += 8;
    }

    while (v2 != v3);
    return result;
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v11);
  sub_4A5C(&v11, "The given journeys have different numbers of journey segment bundles.", 69);
  if ((v21 & 0x10) != 0)
  {
    v7 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v7 = v17;
    }

    v8 = v16;
    v6 = v7 - v16;
    if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_25:
      sub_3244();
    }

LABEL_14:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v10 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_19;
  }

  if ((v21 & 8) != 0)
  {
    v8 = v14;
    v6 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v6 = 0;
  v10 = 0;
LABEL_19:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 1u);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::locale::~locale(&v13);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_5004BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_500508(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 == a2[1] - *a2)
  {
    if (v2 == v3)
    {
      return 1;
    }

    do
    {
      result = sub_500814(v2, v4);
      if (!result)
      {
        break;
      }

      v2 += 144;
      v4 += 144;
    }

    while (v2 != v3);
    return result;
  }

  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v11);
  sub_4A5C(&v11, "The given journey segment bundles have different numbers of journey legs.", 73);
  if ((v21 & 0x10) != 0)
  {
    v7 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v7 = v17;
    }

    v8 = v16;
    v6 = v7 - v16;
    if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_25:
      sub_3244();
    }

LABEL_14:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v10 = v6;
    if (v6)
    {
      memmove(&__p, v8, v6);
    }

    goto LABEL_19;
  }

  if ((v21 & 8) != 0)
  {
    v8 = v14;
    v6 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v6 = 0;
  v10 = 0;
LABEL_19:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 1u);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::locale::~locale(&v13);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_5007C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_500814(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v33);
    sub_4A5C(&v33, "The given journey segments are of different types.", 50);
    if ((v43 & 0x10) != 0)
    {
      v18 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v18 = v39;
      }

      v19 = v38;
      v8 = v18 - v38;
      if (v18 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v8 = 0;
        v32 = 0;
LABEL_53:
        *(&__p + v8) = 0;
        sub_7E854(&__p, 1u);
        if (v32 < 0)
        {
          operator delete(__p);
        }

        if (v41 < 0)
        {
          operator delete(v40);
        }

        std::locale::~locale(&v35);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v19 = v36[0];
      v8 = v37 - v36[0];
      if (v37 - v36[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_44:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v32 = v8;
    if (!v8)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 == v4)
  {
    v6 = *(a1 + 8);
  }

  else
  {
    while (!sub_504820(v5))
    {
      v5 += 1136;
      if (v5 == v4)
      {
        v5 = v4;
        break;
      }
    }

    v6 = v5;
    v5 = *(a1 + 8);
  }

  v9 = 0x193D4BB7E327A977 * ((v6 - v5) >> 4);
  v11 = *(a2 + 8);
  v10 = *(a2 + 16);
  if (v11 == v10)
  {
    v12 = *(a2 + 8);
    if (!v9)
    {
      goto LABEL_17;
    }

LABEL_30:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v33);
    sub_4A5C(&v33, "The given journey segments have walking legs starting at different positions: ", 78);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " != ", 4);
    std::ostream::operator<<();
    if ((v43 & 0x10) != 0)
    {
      v20 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v20 = v39;
      }

      v19 = v38;
      v8 = v20 - v38;
      if (v20 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v8 = 0;
        v32 = 0;
        goto LABEL_53;
      }

      v19 = v36[0];
      v8 = v37 - v36[0];
      if (v37 - v36[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_65:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v32 = v8;
    if (!v8)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  while (!sub_504820(v11))
  {
    v11 += 1136;
    if (v11 == v10)
    {
      v11 = v10;
      break;
    }
  }

  v12 = v11;
  v11 = *(a2 + 8);
  if (v9 != 0x193D4BB7E327A977 * ((v12 - v11) >> 4))
  {
    goto LABEL_30;
  }

LABEL_17:
  v13 = *(a1 + 8);
  if (v13 == v6)
  {
LABEL_20:
    v14 = *(a1 + 16);
    v15 = *(a2 + 16);
    if (v6 == v14 && v12 == v15)
    {
      return 1;
    }

    if ((v6 == v14) == (v12 == v15))
    {
      v21 = sub_503828(v14 - 284);
      v22 = v21 - sub_50360C(v6);
      v23 = sub_503828(v15 - 284);
      v24 = v23 - sub_50360C(v12);
      result = 1;
      if (v22 == v24)
      {
        return result;
      }

      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v33);
      sub_4A5C(&v33, "The two given walking journey leg ranges have different static durations: ", 74);
      v25 = std::ostream::operator<<();
      sub_4A5C(v25, " dsec != ", 9);
      v26 = std::ostream::operator<<();
      sub_4A5C(v26, " dsec", 5);
      if ((v43 & 0x10) != 0)
      {
        v29 = v42;
        if (v42 < v39)
        {
          v42 = v39;
          v29 = v39;
        }

        v30 = &v38;
      }

      else
      {
        if ((v43 & 8) == 0)
        {
          v8 = 0;
          v32 = 0;
          goto LABEL_53;
        }

        v30 = v36;
        v29 = v37;
      }

      v19 = *v30;
      v8 = v29 - *v30;
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      v32 = v29 - *v30;
      if (!v8)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v33);
      sub_4A5C(&v33, "From the two given journey leg ranges one contains walking whilst the other does not", 84);
      if ((v43 & 0x10) != 0)
      {
        v27 = v42;
        if (v42 < v39)
        {
          v42 = v39;
          v27 = v39;
        }

        v28 = &v38;
      }

      else
      {
        if ((v43 & 8) == 0)
        {
          v8 = 0;
          v32 = 0;
          goto LABEL_53;
        }

        v28 = v36;
        v27 = v37;
      }

      v19 = *v28;
      v8 = v27 - *v28;
      if (v8 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      v32 = v27 - *v28;
      if (!v8)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    memmove(&__p, v19, v8);
    goto LABEL_53;
  }

  while (1)
  {
    result = sub_501020(v13, v11);
    if (!result)
    {
      return result;
    }

    v13 += 1136;
    v11 += 1136;
    if (v13 == v6)
    {
      goto LABEL_20;
    }
  }
}

void sub_500F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_501020(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1128);
  if (*(a2 + 1128) != v2)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v43);
    sub_4A5C(&v43, "The given journey legs are of different types.", 46);
    if ((v53 & 0x10) != 0)
    {
      v18 = v52;
      if (v52 < v49)
      {
        v52 = v49;
        v18 = v49;
      }

      v19 = v48;
      v7 = v18 - v48;
      if (v18 - v48 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if ((v53 & 8) == 0)
      {
        v7 = 0;
        v42 = 0;
LABEL_111:
        *(&__dst + v7) = 0;
        sub_7E854(&__dst, 1u);
        if (v42 < 0)
        {
          operator delete(__dst);
        }

        if (v51 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v45);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v19 = v46[0];
      v7 = v47 - v46[0];
      if (v47 - v46[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_49:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v42 = v7;
    if (!v7)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  if (v2 == 4)
  {
    if (*(a1 + 8) == *(a2 + 8) && *(a1 + 4) == *(a2 + 4))
    {
      goto LABEL_24;
    }

    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v43);
    v9 = sub_4A5C(&v43, "The given self-transfer journey legs have different stop refs: ", 63);
    v10 = sub_2FF718(v9, *(a1 + 4));
    v11 = sub_4A5C(v10, " != ", 4);
    sub_2FF718(v11, *(a2 + 4));
    if ((v53 & 0x10) != 0)
    {
      v33 = v52;
      if (v52 < v49)
      {
        v52 = v49;
        v33 = v49;
      }

      v34 = &v48;
    }

    else
    {
      if ((v53 & 8) == 0)
      {
        v7 = 0;
        v42 = 0;
        goto LABEL_111;
      }

      v34 = v46;
      v33 = v47;
    }

    v19 = *v34;
    v7 = v33 - *v34;
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v42 = v33 - *v34;
    if (!v7)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  if (!v2)
  {
    if (*a1 != *a2)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v43);
      v20 = sub_4A5C(&v43, "The given public transport journey legs have different ids: ", 60);
      std::ostream::operator<<();
      sub_4A5C(v20, " != ", 4);
      std::ostream::operator<<();
      if ((v53 & 0x10) != 0)
      {
        v31 = v52;
        if (v52 < v49)
        {
          v52 = v49;
          v31 = v49;
        }

        v32 = &v48;
      }

      else
      {
        if ((v53 & 8) == 0)
        {
          v7 = 0;
          v42 = 0;
          goto LABEL_111;
        }

        v32 = v46;
        v31 = v47;
      }

      v19 = *v32;
      v7 = v31 - *v32;
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v7 >= 0x17)
      {
        operator new();
      }

      v42 = v31 - *v32;
      if (!v7)
      {
        goto LABEL_111;
      }

      goto LABEL_110;
    }

    if (*(a1 + 8) != *(a2 + 8) || *(a1 + 4) != *(a2 + 4))
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v43);
      v25 = sub_4A5C(&v43, "The given public transport journey legs have different trip references: ", 72);
      v26 = sub_2FF718(v25, *(a1 + 4));
      v27 = sub_4A5C(v26, " != ", 4);
      sub_2FF718(v27, *(a2 + 4));
      if ((v53 & 0x10) != 0)
      {
        v38 = v52;
        if (v52 < v49)
        {
          v52 = v49;
          v38 = v49;
        }

        v39 = &v48;
      }

      else
      {
        if ((v53 & 8) == 0)
        {
          v7 = 0;
          v42 = 0;
          goto LABEL_111;
        }

        v39 = v46;
        v38 = v47;
      }

      v19 = *v39;
      v7 = v38 - *v39;
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v7 >= 0x17)
      {
        operator new();
      }

      v42 = v38 - *v39;
      if (!v7)
      {
        goto LABEL_111;
      }

      goto LABEL_110;
    }

    if (*(a1 + 12) != *(a2 + 12))
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v43);
        v30 = sub_4A5C(&v43, "The given public transport journey legs have different schedule indices: ", 73);
        std::ostream::operator<<();
        sub_4A5C(v30, " != ", 4);
        std::ostream::operator<<();
        sub_1959680(&v43, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_77;
      }

      return result;
    }

    if (*(a1 + 16) != *(a2 + 16))
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v43);
        v37 = sub_4A5C(&v43, "The given public transport journey legs have different departure stop indices: ", 79);
        std::ostream::operator<<();
        sub_4A5C(v37, " != ", 4);
        std::ostream::operator<<();
        sub_1959680(&v43, &__dst);
        sub_7E854(&__dst, 1u);
        goto LABEL_77;
      }

      return result;
    }

    if (*(a1 + 20) != *(a2 + 20))
    {
      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v43);
        v6 = sub_4A5C(&v43, "The given public transport journey legs have different arrival stop indices: ", 77);
        std::ostream::operator<<();
        sub_4A5C(v6, " != ", 4);
        std::ostream::operator<<();
        sub_1959680(&v43, &__dst);
        sub_7E854(&__dst, 1u);
LABEL_77:
        if (v42 < 0)
        {
          operator delete(__dst);
        }

        sub_1959728(&v43);
        return 0;
      }

      return result;
    }
  }

LABEL_24:
  v12 = sub_50360C(a1);
  if (v12 != sub_50360C(a2))
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v43);
    v14 = sub_4A5C(&v43, "The given journey legs have different static departure times: ", 62);
    __dst = sub_50360C(a1);
    LOWORD(v41) = v15;
    v16 = sub_258D4(v14);
    v17 = sub_4A5C(v16, " != ", 4);
    sub_50360C(a2);
    sub_258D4(v17);
    if ((v53 & 0x10) != 0)
    {
      v28 = v52;
      if (v52 < v49)
      {
        v52 = v49;
        v28 = v49;
      }

      v29 = &v48;
    }

    else
    {
      if ((v53 & 8) == 0)
      {
        v7 = 0;
        v42 = 0;
        goto LABEL_111;
      }

      v29 = v46;
      v28 = v47;
    }

    v19 = *v29;
    v7 = v28 - *v29;
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v42 = v28 - *v29;
    if (!v7)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  v13 = sub_503828(a1);
  if (v13 == sub_503828(a2))
  {
    return 1;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v43);
    v21 = sub_4A5C(&v43, "The given journey legs have different static arrival times: ", 60);
    __dst = sub_503828(a1);
    LOWORD(v41) = v22;
    v23 = sub_258D4(v21);
    v24 = sub_4A5C(v23, " != ", 4);
    sub_503828(a2);
    sub_258D4(v24);
    if ((v53 & 0x10) != 0)
    {
      v35 = v52;
      if (v52 < v49)
      {
        v52 = v49;
        v35 = v49;
      }

      v36 = &v48;
    }

    else
    {
      if ((v53 & 8) == 0)
      {
        v7 = 0;
        v42 = 0;
        goto LABEL_111;
      }

      v36 = v46;
      v35 = v47;
    }

    v19 = *v36;
    v7 = v35 - *v36;
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v42 = v35 - *v36;
    if (!v7)
    {
      goto LABEL_111;
    }

LABEL_110:
    memmove(&__dst, v19, v7);
    goto LABEL_111;
  }

  return result;
}

void sub_501AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

_DWORD *sub_501CF0(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3AFB1C(*a1);
  v7 = sub_3AFC64(*a1);
  v8 = *(a3 + 16);
  *(a3 + 16) = v8 | 0x10;
  *(a3 + 56) = 0;
  *(a3 + 60) = *a2;
  *(a3 + 16) = v8 | 0x31;
  v9 = *(a3 + 24);
  if (!v9)
  {
    v10 = *(a3 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_120834C(v11);
    v9 = v12;
    *(a3 + 24) = v12;
  }

  v13 = *(a2 + 16);
  v14 = *(v9 + 16);
  *(v9 + 16) = v14 | 0x20;
  *(v9 + 64) = v13;
  *(v9 + 68) = *(a2 + 20);
  *(v9 + 16) = v14 | 0x64;
  v15 = *(v9 + 40);
  if (!v15)
  {
    v16 = *(v9 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v15 = sub_12096B8(v17);
    *(v9 + 40) = v15;
  }

  v18 = *(a2 + 24);
  v19 = v15[4];
  v15[4] = v19 | 1;
  v15[6] = v18;
  v15[7] = *(a2 + 28);
  v15[8] = *(a2 + 32);
  v20 = *(a2 + 33);
  v15[4] = v19 | 0xF;
  v15[9] = v20;
  *(v9 + 16) |= 8u;
  v21 = *(v9 + 48);
  if (!v21)
  {
    v22 = *(v9 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_12096B8(v23);
    *(v9 + 48) = v21;
  }

  v24 = *(a2 + 36);
  v25 = v21[4];
  v21[4] = v25 | 1;
  v21[6] = v24;
  v21[7] = *(a2 + 40);
  v21[8] = *(a2 + 44);
  v26 = *(a2 + 45);
  v21[4] = v25 | 0xF;
  v21[9] = v26;
  v27 = *(a2 + 4);
  v28 = *(a2 + 8) | (v27 << 32);
  v29 = sub_3A25A8(v7, v28, 0, "trip");
  v30 = (v29 - *v29);
  if (*v30 >= 5u && (v31 = v30[2]) != 0)
  {
    v32 = *(v29 + v31);
    v33 = sub_2C939C(v7, 1u, 0);
    if (!v33)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v32 = 0;
    v33 = sub_2C939C(v7, 1u, 0);
    if (!v33)
    {
      goto LABEL_58;
    }
  }

  v34 = &v33[-*v33];
  if (*v34 < 0xDu || (v35 = *(v34 + 6)) == 0)
  {
LABEL_58:
    exception = __cxa_allocate_exception(0x40uLL);
    v80 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v36 = &v33[v35 + *&v33[v35]];
  v37 = &v36[-*v36];
  if (*v37 >= 0xBu)
  {
    v38 = *(v37 + 5);
    if (v38)
    {
      if (v36[v38])
      {
        v32 = nullsub_1(v32);
      }
    }
  }

  v39 = nullsub_1(v32);
  *(v9 + 16) |= 0x10u;
  *(v9 + 56) = v39;
  v40 = *(a2 + 16);
  v41 = sub_3A231C(v7, v28, 0);
  v42 = &v41[-*v41];
  if (*v42 < 5u)
  {
    v43 = 0;
  }

  else
  {
    v43 = *(v42 + 2);
    if (*(v42 + 2))
    {
      v43 += &v41[*&v41[v43]];
    }
  }

  v44 = 4 * v27;
  v45 = (v43 + 4 * v27 + 4 + *(v43 + 4 * v27 + 4));
  v46 = (v45 - *v45);
  if (*v46 >= 0xDu && (v47 = v46[6]) != 0)
  {
    v48 = *(v45 + v47);
  }

  else
  {
    v48 = -1;
  }

  v81 = *&v41[24 * (v48 + v40) + 4 + *(v42 + 3) + *&v41[*(v42 + 3)]];
  v49 = sub_502230(v6, &v81);
  v50 = nullsub_1(v49);
  *(v9 + 16) |= 0x200u;
  *(v9 + 80) = v50;
  v51 = *(a2 + 20);
  v52 = sub_3A231C(v7, v28, 0);
  v53 = &v52[-*v52];
  if (*v53 < 5u)
  {
    v54 = 0;
  }

  else
  {
    v54 = *(v53 + 2);
    if (*(v53 + 2))
    {
      v54 += &v52[*&v52[v54]];
    }
  }

  v55 = (v54 + v44 + 4 + *(v54 + v44 + 4));
  v56 = (v55 - *v55);
  if (*v56 >= 0xDu && (v57 = v56[6]) != 0)
  {
    v58 = *(v55 + v57);
  }

  else
  {
    v58 = -1;
  }

  v81 = *&v52[24 * (v58 + v51) + 4 + *(v53 + 3) + *&v52[*(v53 + 3)]];
  v59 = sub_502230(v6, &v81);
  v60 = nullsub_1(v59);
  *(v9 + 16) |= 0x400u;
  *(v9 + 88) = v60;
  v61 = *(a2 + 12);
  v62 = sub_3A231C(v7, v28, 0);
  v63 = &v62[-*v62];
  v64 = *v63;
  if (v64 <= 4)
  {
    v67 = 0;
    v66 = (v44 + 4 + *(v44 + 4));
    goto LABEL_48;
  }

  v65 = *(v63 + 2);
  if (*(v63 + 2))
  {
    v65 += &v62[*&v62[v65]];
  }

  v66 = (v65 + v44 + 4 + *(v65 + v44 + 4));
  if (v64 < 0xD)
  {
    v67 = 0;
    v68 = (v66 - *v66);
    if (*v68 < 0x15u)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v67 = *(v63 + 6);
  if (!v67)
  {
LABEL_48:
    v68 = (v66 - *v66);
    if (*v68 < 0x15u)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v67 += &v62[*&v62[v67]];
  v68 = (v66 - *v66);
  if (*v68 < 0x15u)
  {
    goto LABEL_52;
  }

LABEL_49:
  v69 = v68[10];
  if (v69)
  {
    v70 = *(v66 + v69);
    goto LABEL_53;
  }

LABEL_52:
  v70 = -1;
LABEL_53:
  v71 = v67 + 8 * (v70 + v61);
  v72 = *(v71 + 4);
  v73 = *(v71 + 6);
  v74 = *(v71 + 7);
  *(v9 + 16) |= 1u;
  result = *(v9 + 24);
  if (!result)
  {
    v76 = *(v9 + 8);
    v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
    if (v76)
    {
      v77 = *v77;
    }

    result = sub_1208254(v77);
    *(v9 + 24) = result;
  }

  v78 = result[4];
  result[6] = v72;
  result[7] = v73;
  result[4] = v78 | 7;
  result[8] = v74;
  return result;
}

uint64_t sub_502230(uint64_t a1, unint64_t *a2)
{
  v3 = sub_502FF8(a1, *a2, 0, "stop");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(v3 + v5);
    v7 = sub_2C939C(a1, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    v7 = sub_2C939C(a1, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v8 = &v7[-*v7];
  if (*v8 < 0xDu || (v9 = *(v8 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v15 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v10 = &v7[v9 + *&v7[v9]];
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    return v6;
  }

  v12 = *(v11 + 5);
  if (!v12 || !v10[v12])
  {
    return v6;
  }

  return nullsub_1(v6);
}

uint64_t sub_502358(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(a3 + 16) = v5 | 0x10;
  *(a3 + 56) = 2;
  *(a3 + 60) = *a2;
  *(a3 + 16) = v5 | 0x32;
  v6 = *(a3 + 32);
  if (!v6)
  {
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    sub_12083D0(v9);
    v6 = v10;
    *(a3 + 32) = v10;
  }

  v11 = sub_502440(a1, a2 + 4);
  v12 = nullsub_1(v11);
  *(v6 + 16) |= 1u;
  *(v6 + 24) = v12;
  v13 = sub_502440(a1, a2 + 16);
  result = nullsub_1(v13);
  v15 = *(v6 + 16);
  *(v6 + 16) = v15 | 2;
  *(v6 + 32) = result;
  v16 = *(a2 + 28);
  *(v6 + 16) = v15 | 6;
  *(v6 + 40) = v16;
  *(v6 + 44) = *(a2 + 32);
  LOBYTE(v16) = *(a2 + 72);
  *(v6 + 16) = v15 | 0x1E;
  *(v6 + 48) = v16;
  return result;
}

uint64_t sub_502440(void **a1, uint64_t a2)
{
  v3 = sub_3AFB1C(*a1);
  v4 = *a2;
  if (*a2 == 4)
  {
    v25.__r_.__value_.__l.__data_ = vrev64_s32(*(a2 + 4));
    return sub_502764(v3, &v25);
  }

  else if (v4 == 3)
  {
    v6 = *(a2 + 8) | (*(a2 + 4) << 32);
    v7 = v3;
    v8 = sub_503310(v3, v6, 0, "access point");
    v9 = (v8 - *v8);
    if (*v9 >= 5u && (v10 = v9[2]) != 0)
    {
      v11 = *(v8 + v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_2C939C(v7, 1u, 0);
    if (!v12 || (v13 = &v12[-*v12], *v13 < 0xDu) || (v14 = *(v13 + 6)) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v19 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v15 = &v12[v14 + *&v12[v14]];
    v16 = &v15[-*v15];
    result = v11;
    if (*v16 >= 0xBu)
    {
      v17 = *(v16 + 5);
      if (v17)
      {
        if (v15[v17])
        {

          return nullsub_1(v11);
        }
      }
    }
  }

  else
  {
    if (v4)
    {
      v20 = __cxa_allocate_exception(0x40uLL);
      std::to_string(&v24, *a2);
      sub_23E08("Cannot handle street walking leg terminal type ", &v24, &v25);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v25;
      }

      else
      {
        v21 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      v23 = sub_2D390(v20, v21, size);
    }

    v25.__r_.__value_.__l.__data_ = vrev64_s32(*(a2 + 4));
    return sub_502230(v3, &v25);
  }

  return result;
}

void sub_50262C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_502684(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3AFB1C(*a1);
  v6 = *(a3 + 16);
  *(a3 + 16) = v6 | 0x10;
  *(a3 + 56) = 3;
  *(a3 + 60) = *a2;
  *(a3 + 16) = v6 | 0x34;
  v7 = *(a3 + 40);
  if (!v7)
  {
    v8 = v5;
    v9 = *(a3 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v7 = sub_1208450(v10);
    *(a3 + 40) = v7;
    v5 = v8;
  }

  v11 = *(a2 + 4);
  v12 = *(v7 + 4);
  *(v7 + 4) = v12 | 1;
  *(v7 + 6) = v11;
  v13 = *(a2 + 8);
  *(v7 + 4) = v12 | 3;
  *(v7 + 7) = v13;
  v16 = vrev64_s32(*(a2 + 12));
  v14 = sub_502764(v5, &v16);
  result = nullsub_1(v14);
  *(v7 + 4) |= 4u;
  v7[4] = result;
  return result;
}

uint64_t sub_502764(uint64_t a1, unint64_t *a2)
{
  v3 = sub_503184(a1, *a2, 0, "road access point");
  v4 = (v3 - *v3);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(v3 + v5);
    v7 = sub_2C939C(a1, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    v7 = sub_2C939C(a1, 1u, 0);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v8 = &v7[-*v7];
  if (*v8 < 0xDu || (v9 = *(v8 + 6)) == 0)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x40uLL);
    v15 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v10 = &v7[v9 + *&v7[v9]];
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    return v6;
  }

  v12 = *(v11 + 5);
  if (!v12 || !v10[v12])
  {
    return v6;
  }

  return nullsub_1(v6);
}

uint64_t sub_50288C(void **a1, _DWORD *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(a3 + 16) = v5 | 0x10;
  *(a3 + 56) = 4;
  *(a3 + 60) = *a2;
  *(a3 + 16) = v5 | 0x38;
  v6 = *(a3 + 48);
  if (!v6)
  {
    v8 = *(a3 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    sub_12084CC(v9);
    v6 = v10;
    *(a3 + 48) = v10;
  }

  v11 = *sub_3CF22C((a2 + 8));
  *(v6 + 16) |= 4u;
  *(v6 + 40) = v11;
  v12 = *(sub_3CF22C((a2 + 8)) + 4);
  *(v6 + 16) |= 8u;
  *(v6 + 44) = v12;
  result = sub_4D1DB8((a2 + 8));
  *(v6 + 16) |= 0x10u;
  *(v6 + 48) = result;
  if (a2[2] != -1 && a2[3])
  {
    v14 = sub_502440(a1, (a2 + 1));
    result = nullsub_1(v14);
    *(v6 + 16) |= 1u;
    *(v6 + 24) = result;
  }

  if (a2[5] != -1)
  {
    if (a2[6])
    {
      v15 = sub_502440(a1, (a2 + 4));
      result = nullsub_1(v15);
      *(v6 + 16) |= 2u;
      *(v6 + 32) = result;
    }
  }

  return result;
}

uint64_t sub_5029C0(uint64_t result, int *a2, void *a3, uint64_t a4)
{
  v6 = result;
  v7 = *a2;
  if (*a2 <= 1)
  {
    *(a4 + 16) |= 1u;
    *(a4 + 48) = v7;
  }

  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  while (v8 != v9)
  {
    v12 = v8[282];
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v22 = *(a4 + 40);
        if (v22 && (v23 = *(a4 + 32), v23 < *v22))
        {
          *(a4 + 32) = v23 + 1;
          v24 = *&v22[2 * v23 + 2];
        }

        else
        {
          sub_120854C(*(a4 + 24));
          v24 = sub_19593CC(a4 + 24, v30);
        }

        result = sub_502684(v6, v8, v24);
        v8 += 284;
        continue;
      }

      if (v12 == 3)
      {
        v16 = *(a4 + 40);
        if (v16 && (v17 = *(a4 + 32), v17 < *v16))
        {
          *(a4 + 32) = v17 + 1;
          v11 = *&v16[2 * v17 + 2];
        }

        else
        {
          sub_120854C(*(a4 + 24));
          v11 = sub_19593CC(a4 + 24, v10);
        }

        result = sub_50288C(v6, v8, v11);
      }

LABEL_6:
      v8 += 284;
      continue;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        v13 = *(a4 + 40);
        if (v13 && (v14 = *(a4 + 32), v14 < *v13))
        {
          *(a4 + 32) = v14 + 1;
          v15 = *&v13[2 * v14 + 2];
        }

        else
        {
          sub_120854C(*(a4 + 24));
          v15 = sub_19593CC(a4 + 24, v25);
        }

        result = sub_502358(v6, v8, v15);
        v8 += 284;
        continue;
      }

      goto LABEL_6;
    }

    v18 = *(a4 + 40);
    if (v18 && (v19 = *(a4 + 32), v19 < *v18))
    {
      *(a4 + 32) = v19 + 1;
      v20 = *&v18[2 * v19 + 2];
      result = sub_501CF0(v6, v8, v20);
      v21 = a3[1];
      if (!*&v21)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_120854C(*(a4 + 24));
      v20 = sub_19593CC(a4 + 24, v26);
      result = sub_501CF0(v6, v8, v20);
      v21 = a3[1];
      if (!*&v21)
      {
        goto LABEL_6;
      }
    }

    v27 = *v8;
    v28 = vcnt_s8(v21);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      v29 = *v8;
      if (*&v21 <= v27)
      {
        v29 = v27 % v21.i32[0];
      }
    }

    else
    {
      v29 = (v21.i32[0] - 1) & v27;
    }

    v31 = *(*a3 + 8 * v29);
    if (!v31)
    {
      goto LABEL_6;
    }

    v32 = *v31;
    if (!*v31)
    {
      goto LABEL_6;
    }

    if (v28.u32[0] < 2uLL)
    {
      v33 = *&v21 - 1;
      while (1)
      {
        v35 = v32[1];
        if (v35 == v27)
        {
          if (*(v32 + 4) == v27)
          {
            goto LABEL_51;
          }
        }

        else if ((v35 & v33) != v29)
        {
          goto LABEL_6;
        }

        v32 = *v32;
        if (!v32)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
      v34 = v32[1];
      if (v34 == v27)
      {
        break;
      }

      if (v34 >= *&v21)
      {
        v34 %= *&v21;
      }

      if (v34 != v29)
      {
        goto LABEL_6;
      }

LABEL_40:
      v32 = *v32;
      if (!v32)
      {
        goto LABEL_6;
      }
    }

    if (*(v32 + 4) != v27)
    {
      goto LABEL_40;
    }

LABEL_51:
    *(v20 + 16) |= 1u;
    v36 = *(v20 + 24);
    if (v36)
    {
      *(v36 + 16) |= 2u;
      result = *(v36 + 32);
      if (!result)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v37 = *(v20 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      sub_120834C(v38);
      v36 = v39;
      *(v20 + 24) = v39;
      *(v39 + 16) |= 2u;
      result = *(v39 + 32);
      if (!result)
      {
LABEL_57:
        v40 = *(v36 + 8);
        v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v41 = *v41;
        }

        result = sub_12082D0(v41);
        *(v36 + 32) = result;
      }
    }

    v42 = *(v32 + 5);
    if ((v42 - 1) >= 5)
    {
      v42 = 0;
    }

    *(result + 16) |= 1u;
    *(result + 24) = v42;
    v8 += 284;
  }

  return result;
}

_DWORD *sub_502D3C(uint64_t a1, int *a2, void *a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  *(a4 + 92) = 1;
  *(a4 + 16) = v8 | 0x81;
  v9 = *(a4 + 48);
  if (!v9)
  {
    v10 = *(a4 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v9 = sub_12096B8(v11);
    *(a4 + 48) = v9;
  }

  v12 = *a2;
  v13 = v9[4];
  v9[4] = v13 | 1;
  v9[6] = v12;
  v14 = *(a2 + 8);
  v9[7] = a2[1];
  v9[8] = v14;
  v15 = *(a2 + 9);
  v9[4] = v13 | 0xF;
  v9[9] = v15;
  *(a4 + 16) |= 2u;
  v16 = *(a4 + 56);
  if (!v16)
  {
    v17 = *(a4 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v16 = sub_12096B8(v18);
    *(a4 + 56) = v16;
  }

  v19 = a2[3];
  v20 = v16[4];
  v16[4] = v20 | 1;
  v16[6] = v19;
  v21 = *(a2 + 20);
  v16[7] = a2[4];
  v16[8] = v21;
  v22 = *(a2 + 21);
  v16[4] = v20 | 0xF;
  v16[9] = v22;
  *(a4 + 16) |= 4u;
  v23 = *(a4 + 64);
  if (!v23)
  {
    v24 = *(a4 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v23 = sub_12096B8(v25);
    *(a4 + 64) = v23;
  }

  v26 = a2[6];
  v27 = v23[4];
  v23[4] = v27 | 1;
  v23[6] = v26;
  v28 = *(a2 + 32);
  v23[7] = a2[7];
  v23[8] = v28;
  v29 = *(a2 + 33);
  v23[4] = v27 | 0xF;
  v23[9] = v29;
  *(a4 + 16) |= 8u;
  result = *(a4 + 72);
  if (!result)
  {
    v31 = *(a4 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    result = sub_12096B8(v32);
    *(a4 + 72) = result;
  }

  v33 = a2[9];
  v34 = result[4];
  result[4] = v34 | 1;
  result[6] = v33;
  v35 = *(a2 + 44);
  result[7] = a2[10];
  result[8] = v35;
  v36 = *(a2 + 45);
  result[4] = v34 | 0xF;
  result[9] = v36;
  v37 = a2[39];
  v38 = a2[40];
  if (v37 >= 3)
  {
    v37 = 0;
  }

  v39 = *(a4 + 16);
  *(a4 + 88) = v37;
  if (v38 >= 3)
  {
    v40 = 0;
  }

  else
  {
    v40 = v38;
  }

  *(a4 + 16) = v39 | 0x140;
  *(a4 + 96) = v40;
  v41 = *(a2 + 6);
  v42 = *(a2 + 7);
  while (v41 != v42)
  {
    v43 = *(a4 + 40);
    if (v43 && (v44 = *(a4 + 32), v44 < *v43))
    {
      *(a4 + 32) = v44 + 1;
      v45 = *&v43[2 * v44 + 2];
    }

    else
    {
      v46 = sub_1208674(*(a4 + 24));
      result = sub_19593CC(a4 + 24, v46);
      v45 = result;
    }

    v47 = *v41;
    v48 = v41[1];
    while (v47 != v48)
    {
      v51 = *(v45 + 4);
      if (v51 && (v52 = v45[6], v52 < *v51))
      {
        v45[6] = v52 + 1;
        v50 = *&v51[2 * v52 + 2];
      }

      else
      {
        v49 = sub_12085CC(*(v45 + 2));
        v50 = sub_19593CC((v45 + 4), v49);
      }

      result = sub_5029C0(a1, v47, a3, v50);
      v47 += 36;
    }

    v41 += 8;
  }

  return result;
}

uint64_t sub_502FF8(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x1Du)
  {
    v9 = *(v8 + 14);
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

void sub_503154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_503184(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x15u)
  {
    v9 = *(v8 + 10);
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

void sub_5032E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_503310(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 5u)
  {
    v9 = *(v8 + 2);
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

void sub_50346C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_50349C(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  if (result != v1)
  {
    while (*result)
    {
      result += 36;
      if (result == v1)
      {
        goto LABEL_4;
      }
    }
  }

  if (result == v1)
  {
LABEL_4:
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_2D390(exception, "Journey has a segment bundle without a main segment", 0x33uLL);
  }

  return result;
}

uint64_t sub_503514(_DWORD *a1, int a2)
{
  v2 = a1[282];
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = a1[6];
      v4 = a1[7];
      v5 = a2 == 2;
      if (v4 != 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

      return v3;
    }

    if (v2 != 1)
    {
      return 0x7FFFFFFFLL;
    }

    v3 = a1[7];
LABEL_10:
    v4 = v3;
    v5 = a2 == 2;
    if (v3 == 0x7FFFFFFF)
    {
      return v3;
    }

    goto LABEL_13;
  }

  if (v2 == 2)
  {
    v3 = a1[1];
    goto LABEL_10;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      v3 = a1[3];
      goto LABEL_10;
    }

    return 0x7FFFFFFFLL;
  }

  v3 = *sub_3CF22C((a1 + 8));
  v4 = v3;
  v5 = a2 == 2;
  if (v3 == 0x7FFFFFFF)
  {
    return v3;
  }

LABEL_13:
  if (v5)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_50360C(unsigned int *a1)
{
  v1 = a1[282];
  LODWORD(v2) = 0x7FFFFFFF;
  if (v1 <= 1)
  {
    if (v1)
    {
      v3 = 0x7FFFFFFFLL;
      if (v1 == 1)
      {
        v2 = a1[7];
        goto LABEL_10;
      }

      return v2 | (v3 << 32);
    }

    return a1[6] | (a1[7] << 32);
  }

  else
  {
    if (v1 == 2)
    {
      v2 = a1[1];
      goto LABEL_10;
    }

    if (v1 != 3)
    {
      v3 = 0x7FFFFFFFLL;
      if (v1 == 4)
      {
        v2 = a1[3];
LABEL_10:
        v3 = v2;
        return v2 | (v3 << 32);
      }

      return v2 | (v3 << 32);
    }

    v5 = sub_3CF22C((a1 + 8));
    return *v5 | (*v5 << 32);
  }
}

uint64_t sub_5036C4(_DWORD *a1, int a2)
{
  v2 = a1[282];
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = a1[9];
      v4 = a1[10];
      v5 = a2 == 2;
      if (v4 == 0x7FFFFFFF)
      {
        return v3;
      }

      goto LABEL_16;
    }

    if (v2 != 1)
    {
      return 0x7FFFFFFFLL;
    }

    v3 = a1[8];
LABEL_10:
    v4 = v3;
    v5 = a2 == 2;
    if (v3 == 0x7FFFFFFF)
    {
      return v3;
    }

    goto LABEL_16;
  }

  if (v2 == 2)
  {
    v3 = a1[2];
    goto LABEL_10;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      v3 = a1[4];
      goto LABEL_10;
    }

    return 0x7FFFFFFFLL;
  }

  v8 = sub_3CF22C((a1 + 8));
  v9 = *(sub_3CF22C((a1 + 8)) + 4);
  v10 = v9 / 10;
  v11 = v9 % 10;
  if (v9 < 0)
  {
    v12 = -5;
  }

  else
  {
    v12 = 5;
  }

  v3 = v10 + *v8 + (((103 * (v12 + v11)) >> 15) & 1) + ((103 * (v12 + v11)) >> 10);
  v4 = v3;
  v5 = a2 == 2;
  if (v3 == 0x7FFFFFFF)
  {
    return v3;
  }

LABEL_16:
  if (v5)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_503828(unsigned int *a1)
{
  v1 = a1[282];
  LODWORD(v2) = 0x7FFFFFFF;
  if (v1 <= 1)
  {
    if (v1)
    {
      v3 = 0x7FFFFFFFLL;
      if (v1 == 1)
      {
        v2 = a1[8];
        goto LABEL_10;
      }

      return v2 | (v3 << 32);
    }

    return a1[9] | (a1[10] << 32);
  }

  else
  {
    if (v1 == 2)
    {
      v2 = a1[2];
      goto LABEL_10;
    }

    if (v1 != 3)
    {
      v3 = 0x7FFFFFFFLL;
      if (v1 == 4)
      {
        v2 = a1[4];
LABEL_10:
        v3 = v2;
        return v2 | (v3 << 32);
      }

      return v2 | (v3 << 32);
    }

    v6 = sub_3CF22C((a1 + 8));
    v7 = *(sub_3CF22C((a1 + 8)) + 4);
    v8 = v7 / 10;
    v9 = v7 % 10;
    if (v7 < 0)
    {
      v10 = -5;
    }

    else
    {
      v10 = 5;
    }

    v11 = v8 + *v6 + (((103 * (v10 + v9)) >> 15) & 1) + ((103 * (v10 + v9)) >> 10);
    return v11 | (v11 << 32);
  }
}

uint64_t sub_50394C(uint64_t a1, int a2)
{
  v2 = 4 * (*(a1 + 28) != 0x7FFFFFFF);
  if (a2 != 2)
  {
    v2 = 0;
  }

  return *(a1 + v2 + 24);
}

uint64_t sub_503974(uint64_t a1, int a2)
{
  v2 = 4 * (*(a1 + 40) != 0x7FFFFFFF);
  if (a2 != 2)
  {
    v2 = 0;
  }

  return *(a1 + v2 + 36);
}

uint64_t sub_50399C(uint64_t a1)
{
  if (*(a1 + 156) == 2)
  {
    v1 = 4 * (*(a1 + 4) != 0x7FFFFFFF);
  }

  else
  {
    v1 = 0;
  }

  return *(a1 + v1);
}

uint64_t sub_5039D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16) | (*(a1 + 12) << 32);
  v4 = sub_503184(a2, v3, 0, "road access point");
  v5 = (v4 + *(v4 - *v4 + 8));
  if (v5[1] >= 0xFFFFFFFE)
  {
    v6 = -2;
  }

  else
  {
    v6 = v5[1];
  }

  v30 = *v5;
  v7 = sub_503184(a2, v3, 0, "road access point");
  v8 = sub_503310(a2, *(v7 + *(v7 - *v7 + 6)), 0, "access point");
  v9 = (v8 + *(v8 - *v8 + 14));
  LODWORD(v10) = v30;
  HIDWORD(v10) = *v9;
  v31 = v10;
  v11 = v9[1];
  if (v11 >= 0xFFFFFFFE)
  {
    v12 = -2;
  }

  else
  {
    v12 = v11;
  }

  v13 = exp(3.14159265 - v6 * 6.28318531 / 4294967300.0);
  v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
  v15 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
  v16 = atan((v15 - 1.0 / v15) * 0.5) * 57.2957795 * 0.0174532925;
  v17.i64[0] = v31;
  v17.i64[1] = HIDWORD(v31);
  v18 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v17), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v32 = vsubq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0];
  v19 = sin((v14 - v16) * 0.5);
  v20 = v19 * v19;
  v21 = cos(v14);
  v22 = v21 * cos(v16);
  v23 = sin(0.5 * v32);
  v24 = atan2(sqrt(v23 * v23 * v22 + v20), sqrt(1.0 - (v23 * v23 * v22 + v20)));
  v25 = (v24 + v24) * 6372797.56 * 100.0;
  if (v25 >= 0.0)
  {
    v26 = v25;
    if (v25 >= 4.50359963e15)
    {
      goto LABEL_13;
    }

    v27 = (v25 + v25) + 1;
  }

  else
  {
    v26 = v25;
    if (v25 <= -4.50359963e15)
    {
      goto LABEL_13;
    }

    v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
  }

  v26 = (v27 >> 1);
LABEL_13:
  if (v26 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v25 >= 0.0)
  {
    if (v25 < 4.50359963e15)
    {
      v28 = (v25 + v25) + 1;
      return (v28 >> 1);
    }
  }

  else if (v25 > -4.50359963e15)
  {
    v28 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    return (v28 >> 1);
  }

  return v25;
}

uint64_t sub_503CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_504BC8(a2, *(*(a1 + 48) + 4) | (**(a1 + 48) << 32), 0, "transfer");
  v29 = *(v4 + *(v4 - *v4 + 6));
  v5 = sub_504BC8(a2, *(*(a1 + 56) - 4) | (*(*(a1 + 56) - 8) << 32), 0, "transfer");
  v28 = *(v5 + *(v5 - *v5 + 8));
  v6 = sub_504030(a2, &v29);
  v7 = sub_504030(a2, &v28);
  if (v6 == -1 && HIDWORD(v6) == 0xFFFFFFFF || v7 == -1 && HIDWORD(v7) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = HIDWORD(v7);
  v10 = v7;
  v11 = exp(3.14159265 - HIDWORD(v6) * 6.28318531 / 4294967300.0);
  v12 = atan((v11 - 1.0 / v11) * 0.5) * 57.2957795 * 0.0174532925;
  v13.i64[0] = v6;
  v13.i64[1] = v10;
  v14 = exp(3.14159265 - v9 * 6.28318531 / 4294967300.0);
  v15 = atan((v14 - 1.0 / v14) * 0.5) * 57.2957795 * 0.0174532925;
  v16 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v13), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v27 = vsubq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0];
  v17 = sin((v12 - v15) * 0.5);
  v18 = v17 * v17;
  v19 = cos(v12);
  v20 = v19 * cos(v15);
  v21 = sin(0.5 * v27);
  v22 = atan2(sqrt(v21 * v21 * v20 + v18), sqrt(1.0 - (v21 * v21 * v20 + v18)));
  v23 = (v22 + v22) * 6372797.56 * 100.0;
  if (v23 >= 0.0)
  {
    v24 = v23;
    if (v23 >= 4.50359963e15)
    {
      goto LABEL_12;
    }

    v25 = (v23 + v23) + 1;
  }

  else
  {
    v24 = v23;
    if (v23 <= -4.50359963e15)
    {
      goto LABEL_12;
    }

    v25 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
  }

  v24 = (v25 >> 1);
LABEL_12:
  if (v24 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v23 >= 0.0)
  {
    if (v23 < 4.50359963e15)
    {
      v26 = (v23 + v23) + 1;
      return (v26 >> 1);
    }
  }

  else if (v23 > -4.50359963e15)
  {
    v26 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
    return (v26 >> 1);
  }

  return v23;
}

uint64_t sub_504030(uint64_t a1, unint64_t *a2)
{
  v4 = sub_504D54(a1, *a2, 0, "transfer node");
  v5 = (v4 - *v4);
  if (*v5 < 7u)
  {
    return -1;
  }

  v6 = v5[3];
  if (!v6)
  {
    return -1;
  }

  v7 = *(v4 + v6);
  if (v7 == 2)
  {
    v15 = sub_504D54(a1, *a2, 0, "transfer node");
    v16 = (v15 - *v15);
    if (*v16 >= 7u)
    {
      v17 = v16[3];
      if (!v17)
      {
LABEL_18:
        v20 = 0xFFFFFFFF00000000;
        goto LABEL_19;
      }

      if (*(v15 + v17) == 2)
      {
        v18 = sub_504D54(a1, *a2, 0, "transfer node");
        v19 = (v18 + *(v18 - *v18 + 8));
        v17 = *v19;
        v20 = v19[1] << 32;
LABEL_19:
        v21 = sub_503310(a1, v17 | v20, 0, "access point");
        v22 = 14;
        goto LABEL_20;
      }
    }

    v17 = 0;
    goto LABEL_18;
  }

  if (v7 != 3)
  {
    return -1;
  }

  v8 = sub_504D54(a1, *a2, 0, "transfer node");
  v9 = (v8 - *v8);
  if (*v9 < 7u)
  {
    goto LABEL_14;
  }

  v10 = v9[3];
  if (!v10)
  {
LABEL_15:
    v13 = 0xFFFFFFFF00000000;
    goto LABEL_16;
  }

  if (*(v8 + v10) != 3)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v11 = sub_504D54(a1, *a2, 0, "transfer node");
  v12 = (v11 + *(v11 - *v11 + 8));
  v10 = *v12;
  v13 = v12[1] << 32;
LABEL_16:
  v21 = sub_502FF8(a1, v10 | v13, 0, "stop");
  v22 = 6;
LABEL_20:
  v24 = v21 + *(v21 + v22 - *v21);
  v23 = *v24;
  LODWORD(v24) = *(v24 + 4);
  if (v24 >= 0xFFFFFFFE)
  {
    v24 = 4294967294;
  }

  else
  {
    v24 = v24;
  }

  return (v24 << 32) | v23;
}

uint64_t sub_504214(unsigned int *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3 <= v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = a1[4];
  }

  if (v3 < v2)
  {
    v7 = 0;
    v42 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v43 = vdupq_n_s64(0x4076800000000000uLL);
    v40 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v41 = vdupq_n_s64(0xC066800000000000);
    while (1)
    {
      v9 = a1[1];
      v10 = sub_3A231C(a2, a1[2] | (v9 << 32), 0);
      v11 = &v10[-*v10];
      if (*v11 < 5u)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(v11 + 2);
        if (*(v11 + 2))
        {
          v12 += &v10[*&v10[v12]];
        }
      }

      v13 = (v12 + 4 * v9 + 4 + *(v12 + 4 * v9 + 4));
      v14 = (v13 - *v13);
      if (*v14 >= 0x1Fu && (v15 = v14[15]) != 0)
      {
        v16 = *(v13 + v15);
      }

      else
      {
        v16 = -1;
      }

      v48 = *&v10[8 * v16 + 4 + 8 * v3 + *(v11 + 8) + *&v10[*(v11 + 8)]];
      sub_504EE0(a2, &v48, &v46);
      v17 = v46;
      v18 = v47;
      v19 = 0.0;
      if (v46 == v47)
      {
        break;
      }

      v20 = v46 + 3;
      if (v46 + 3 == v47)
      {
        break;
      }

      v21 = 0.0;
      do
      {
        LODWORD(v19) = *(v20 - 2);
        v22 = exp(3.14159265 - *&v19 * 6.28318531 / 4294967300.0);
        *&v23 = atan((v22 - 1.0 / v22) * 0.5) * 57.2957795;
        LODWORD(v24) = *(v20 - 3);
        HIDWORD(v24) = *v20;
        v44 = v24;
        v25 = *&v23 * 0.0174532925;
        LODWORD(v23) = v20[1];
        v26 = exp(3.14159265 - v23 * 6.28318531 / 4294967300.0);
        v27 = atan((v26 - 1.0 / v26) * 0.5) * 57.2957795 * 0.0174532925;
        v28.i64[0] = v44;
        v28.i64[1] = HIDWORD(v44);
        v29 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v28), v43), v42), v41), v40);
        v45 = vsubq_f64(v29, vdupq_laneq_s64(v29, 1)).f64[0];
        v30 = sin((v25 - v27) * 0.5);
        v31 = v30 * v30;
        v32 = cos(v25);
        v33 = v32 * cos(v27);
        v34 = sin(0.5 * v45);
        v35 = atan2(sqrt(v34 * v34 * v33 + v31), sqrt(1.0 - (v34 * v34 * v33 + v31)));
        v19 = (v35 + v35) * 6372797.56;
        v21 = v21 + v19;
        v20 += 3;
      }

      while (v20 != v18);
      v19 = v21 * 100.0;
      if (v21 * 100.0 >= 0.0)
      {
        if (v19 < 4.50359963e15)
        {
          break;
        }

        v37 = 0;
        v36 = v21 * 100.0;
      }

      else if (v19 <= -4.50359963e15)
      {
        v37 = 1;
        v36 = v21 * 100.0;
      }

      else
      {
        v36 = (((v19 + v19) - 1) / 2);
        v37 = 1;
      }

LABEL_26:
      if (v36 < 9.22337204e18)
      {
        if (v37)
        {
          if (v19 > -4.50359963e15)
          {
            v38 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
            goto LABEL_32;
          }
        }

        else if (v19 < 4.50359963e15)
        {
          v38 = (v19 + v19) + 1;
LABEL_32:
          v19 = (v38 >> 1);
        }

        v8 = v19;
        if (!v17)
        {
          goto LABEL_8;
        }

LABEL_7:
        v47 = v17;
        operator delete(v17);
        goto LABEL_8;
      }

      v8 = 0x7FFFFFFFFFFFFFFELL;
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_8:
      v7 += v8;
      if (++v3 == v4)
      {
        return v7;
      }
    }

    v37 = 0;
    v36 = (((v19 + v19) + 1) >> 1);
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_50461C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3 != v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = v3[1];
      v9 = *v3;
      if (*v3 != v8)
      {
        while (*v9)
        {
          v9 += 144;
          if (v9 == v8)
          {
            goto LABEL_24;
          }
        }
      }

      if (v9 == v8)
      {
LABEL_24:
        exception = __cxa_allocate_exception(0x40uLL);
        v16 = sub_2D390(exception, "Journey has a segment bundle without a main segment", 0x33uLL);
      }

      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      while (v10 != v11)
      {
        v13 = v10[282];
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v12 = sub_5039D4(v10, a2);
            goto LABEL_11;
          }

          if (v13 == 3)
          {
            v12 = sub_4D1DB8((v10 + 8));
            goto LABEL_11;
          }
        }

        else
        {
          if (!v13)
          {
            v12 = sub_504214(v10, a3);
LABEL_11:
            v7 += v12;
            goto LABEL_12;
          }

          if (v13 == 1)
          {
            v12 = sub_503CF0(v10, a2);
            goto LABEL_11;
          }
        }

LABEL_12:
        v10 += 284;
      }

      v3 += 8;
      if (v3 == v4)
      {
        return v7;
      }
    }
  }

  return 0;
}

BOOL sub_504760(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 56) - v1 != 64)
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  if (v2 != v3)
  {
    while (*v2)
    {
      v2 += 144;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_5:
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_2D390(exception, "Journey has a segment bundle without a main segment", 0x33uLL);
  }

  v8 = *(v2 + 8);
  v7 = *(v2 + 16);
  if (v8 == v7)
  {
    return 1;
  }

  v9 = v8 + 1136;
  do
  {
    v10 = *(v9 - 8);
    result = v10 != 0;
    if (v10)
    {
      v11 = v9 == v7;
    }

    else
    {
      v11 = 1;
    }

    v9 += 1136;
  }

  while (!v11);
  return result;
}

uint64_t sub_504834(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    v3 = *v1;
    v4 = v1[1];
    while (v3 != v4)
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      while (v5 != v6)
      {
        v7 = *(v5 + 1128);
        if (v7 == 3)
        {
          sub_3CF22C(v5 + 32);
          v7 = *(v5 + 1128);
        }

        else if (!v7)
        {
          LOBYTE(v7) = *(v5 + 32) == 1;
          goto LABEL_15;
        }

        if (v7)
        {
          if (v7 == 3)
          {
            sub_3CF22C(v5 + 32);
            sub_3CF22C(v5 + 32);
          }

          goto LABEL_6;
        }

LABEL_15:
        result = 1;
        if ((v7 & 1) != 0 || *(v5 + 44) == 1)
        {
          return result;
        }

LABEL_6:
        v5 += 1136;
      }

      v3 += 144;
    }

    v1 += 8;
  }

  while (v1 != v2);
  return 0;
}

uint64_t sub_504908(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v1 != v2)
  {
    while (2)
    {
      for (i = *v1; i != v1[1]; i += 144)
      {
        v4 = *(i + 80);
        v5 = *(i + 88);
        if (v4 != v5)
        {
          while (*(v4 + 24) != 1)
          {
            v4 += 28;
            if (v4 == v5)
            {
              goto LABEL_3;
            }
          }

          return 1;
        }

LABEL_3:
        ;
      }

      v1 += 8;
      if (v1 != v2)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t sub_50496C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 != v3)
  {
    while (1)
    {
      v5 = *v2;
      v6 = v2[1];
LABEL_6:
      if (v5 != v6)
      {
        break;
      }

      v2 += 8;
      if (v2 == v3)
      {
        return 0;
      }
    }

    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    while (1)
    {
      if (v7 == v8)
      {
        v5 += 144;
        goto LABEL_6;
      }

      if (!v7[282])
      {
        v11 = **(a2 + 3896);
        if (v11)
        {
          v12 = v7[3];
          v13 = v7[2] | (v7[1] << 32);
          if (v12 == -1)
          {
            if (!sub_3A7F20(v11, v13, *(a2 + 3904)))
            {
              goto LABEL_15;
            }
          }

          else if (!sub_3A7E8C(v11, v13, v12, *(a2 + 3904)))
          {
            goto LABEL_15;
          }

          v14 = v7[3];
          v15 = v7[2] | (v7[1] << 32);
          v16 = **(a2 + 3896);
          if (v14 == -1)
          {
            v9 = sub_3A7F20(v16, v15, *(a2 + 3904))[4];
            if (v9 < 0xFFFFFFFF00000000 || v9 != 0xFFFFFFFFLL)
            {
              return 1;
            }
          }

          else
          {
            v17 = sub_3A7E8C(v16, v15, v14, *(a2 + 3904))[4];
            if (v17 < 0xFFFFFFFF00000000 || v17 != 0xFFFFFFFFLL)
            {
              return 1;
            }
          }
        }
      }

LABEL_15:
      v7 += 284;
    }
  }

  return 0;
}

uint64_t sub_504AA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 != v3)
  {
    while (1)
    {
      v5 = *v2;
      v6 = v2[1];
LABEL_6:
      if (v5 != v6)
      {
        break;
      }

      v2 += 8;
      if (v2 == v3)
      {
        return 0;
      }
    }

    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    while (1)
    {
      if (v7 == v8)
      {
        v5 += 144;
        goto LABEL_6;
      }

      if (!v7[282])
      {
        v9 = **(a2 + 3896);
        if (v9)
        {
          v10 = v7[3];
          v11 = v7[2] | (v7[1] << 32);
          if (v10 == -1)
          {
            if (!sub_3A7F20(v9, v11, *(a2 + 3904)))
            {
              goto LABEL_12;
            }
          }

          else if (!sub_3A7E8C(v9, v11, v10, *(a2 + 3904)))
          {
            goto LABEL_12;
          }

          v12 = v7[3];
          v13 = v7[2] | (v7[1] << 32);
          v14 = **(a2 + 3896);
          if (v12 == -1)
          {
            if (*(sub_3A7F20(v14, v13, *(a2 + 3904)) + 64))
            {
              return 1;
            }
          }

          else if (*(sub_3A7E8C(v14, v13, v12, *(a2 + 3904)) + 64))
          {
            return 1;
          }
        }
      }

LABEL_12:
      v7 += 284;
    }
  }

  return 0;
}

uint64_t sub_504BC8(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x23u)
  {
    v9 = *(v8 + 17);
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

void sub_504D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_504D54(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x29u)
  {
    v9 = *(v8 + 20);
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

void sub_504EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_504EE0(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_505224(a1, *a2, 0, "link");
  if (v4)
  {
    v31 = a3;
    v5 = (v4 + *(v4 - *v4 + 8));
    v6 = (v5 + *v5);
    if (*v6)
    {
      v7 = 0;
      v8 = 0;
      v32 = &v6[3 * *v6 + 1];
      v9 = v6 + 1;
      while (1)
      {
        v10 = sub_5053B0(a1, *v9, 0, "segment");
        v11 = (v10 - *v10);
        if (*v11 < 5u)
        {
          v12 = 0;
          v13 = (&loc_1120530 + 1);
          if (*(&loc_1120530 + 1) < 5u)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v12 = v11[2];
          if (v12)
          {
            v12 = (v12 + v10 + *(v12 + v10));
          }

          v13 = (v12 - *v12);
          if (*v13 < 5u)
          {
LABEL_13:
            v15 = 0;
            v16 = -17958193;
            v34 = v9;
            goto LABEL_15;
          }
        }

        v14 = v13[2];
        if (!v14)
        {
          v15 = 0;
          v16 = -17958193;
          v34 = v9;
LABEL_15:
          v17 = 0;
          v18 = *(v9 + 8);
          v19 = v15 + 1;
          v20 = -1;
          v35 = v15;
          do
          {
            v21 = v17;
            if (v18 == 1)
            {
              v21 = v20 + *v15;
            }

            v22 = &v19[2 * v21];
            v23 = *v22;
            LODWORD(v22) = *(v22 + 4);
            if (v22 >= 0xFFFFFFFE)
            {
              v22 = 4294967294;
            }

            else
            {
              v22 = v22;
            }

            v24 = v23 | (v22 << 32);
            v25 = v8 - v7;
            v26 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 2);
            v27 = v26 + 1;
            if (v26 + 1 > 0x1555555555555555)
            {
              sub_1794();
            }

            if (0x5555555555555556 * (-v7 >> 2) > v27)
            {
              v27 = 0x5555555555555556 * (-v7 >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v7 >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v28 = 0x1555555555555555;
            }

            else
            {
              v28 = v27;
            }

            if (v28)
            {
              if (v28 <= 0x1555555555555555)
              {
                operator new();
              }

              sub_1808();
            }

            v29 = 12 * v26;
            *v29 = v24;
            *(v29 + 8) = 0x7FFFFFFF;
            v8 = 12 * v26 + 12;
            v30 = (v29 + 12 * (v25 / -12));
            memcpy(v30, v7, v25);
            if (v7)
            {
              operator delete(v7);
            }

            v7 = v30;
            v15 = v35;
            ++v17;
            --v20;
          }

          while (v16 + v20 != -1);
          goto LABEL_4;
        }

        v15 = (v12 + v14 + *(v12 + v14));
        v16 = *v15;
        v34 = v9;
        if (*v15)
        {
          goto LABEL_15;
        }

LABEL_4:
        v9 = v34 + 3;
        if (v34 + 3 == v32)
        {
          goto LABEL_36;
        }
      }
    }

    v8 = 0;
    v7 = 0;
LABEL_36:
    *v31 = v7;
    v31[1] = v8;
    v31[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_505204(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_505224(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x11u)
  {
    v9 = *(v8 + 8);
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

void sub_505380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5053B0(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x17u)
  {
    v9 = *(v8 + 11);
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

void sub_50550C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_50553C(void *a1)
{
  if (*a1)
  {
    return 1;
  }

  if (a1[4])
  {
    return 1;
  }

  return a1[8] != 0;
}

void sub_50556C(void *a1)
{
  v1 = a1[5];
  a1[4] = 0;
  a1[5] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = a1[7];
    a1[6] = 0;
    a1[7] = 0;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = a1[7];
    a1[6] = 0;
    a1[7] = 0;
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_50564C(uint64_t a1)
{
  v1 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

double sub_5056CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 136) = 850045863;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 850045863;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  return result;
}

void sub_505724(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return;
  }

  std::mutex::lock((a1 + 200));
  std::mutex::lock((a1 + 136));
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  *&v34 = v5;
  *(&v34 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 80);
  v35 = *(a1 + 72);
  v36 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 96);
  v37 = *(a1 + 88);
  v38 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 112);
  v39 = *(a1 + 104);
  v40 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 128);
  v41 = *(a1 + 120);
  v42 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 136));
  v10 = *a2;
  if (v5)
  {
    v11 = *(v10 + 56) != *(v5 + 56);
    v12 = v37 != 0;
    v13 = a2[1];
    if (!v13)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = 1;
  v12 = v37 != 0;
  v13 = a2[1];
  if (v13)
  {
LABEL_14:
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_15:
  v14 = *(&v34 + 1);
  *&v34 = v10;
  *(&v34 + 1) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (v11)
    {
LABEL_18:
      sub_505B50();
    }
  }

  else if (v11)
  {
    goto LABEL_18;
  }

  if (v12 && v11)
  {
    sub_CB3064();
  }

  v25 = v34;
  if (*(&v34 + 1))
  {
    atomic_fetch_add_explicit((*(&v34 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v26 = v35;
  v27 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = v37;
  v29 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  v30 = v39;
  v31 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = v41;
  v33 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::lock((a1 + 136));
  sub_3ADC80(a1 + 56, &v25);
  std::mutex::unlock((a1 + 136));
  sub_3B889C(&v25);
  if (*(a1 + 24))
  {
    v16 = v34;
    if (*(&v34 + 1))
    {
      atomic_fetch_add_explicit((*(&v34 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v17 = v35;
    v18 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = v37;
    v20 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = v39;
    v22 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = v41;
    v24 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(a1 + 24);
    if (!v15)
    {
      sub_2B7420();
    }

    (*(*v15 + 48))(v15, &v16);
    sub_3B889C(&v16);
  }

  sub_3B889C(&v34);
  std::mutex::unlock((a1 + 200));
}

void sub_505A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3B889C(va);
  sub_3B889C((v12 - 128));
  std::mutex::unlock((v11 + 200));
  _Unwind_Resume(a1);
}

void sub_505A98(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::mutex::lock((a1 + 136));
  v4 = *(a1 + 64);
  *a2 = *(a1 + 56);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 80);
  a2[2] = *(a1 + 72);
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 96);
  a2[4] = *(a1 + 88);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 112);
  a2[6] = *(a1 + 104);
  a2[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 128);
  a2[8] = *(a1 + 120);
  a2[9] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 136));
}

void sub_505B50()
{
  v0 = __chkstk_darwin();
  v2 = *(v0 + 48);
  v5[0] = *(v0 + 40);
  v5[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = v1[1];
  v4[0] = *v1;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_C9F86C(v6, v5, v4);
}

void sub_505E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  sub_50644C(&a13);
  sub_1F1A8(&a9);
  sub_1F1A8(&a11);
  _Unwind_Resume(a1);
}

void sub_505E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1F1A8(&a9);
  sub_1F1A8(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_505E60(uint64_t result, uint64_t *a2)
{
  if (*a2)
  {
    v3 = result;
    std::mutex::lock((result + 200));
    std::mutex::lock((v3 + 136));
    v4 = *(v3 + 64);
    v12 = *(v3 + 56);
    v13 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(v3 + 80);
    v14 = *(v3 + 72);
    v15 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(v3 + 96);
    v16 = *(v3 + 88);
    v17 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(v3 + 112);
    v18 = *(v3 + 104);
    v19 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(v3 + 128);
    v20 = *(v3 + 120);
    v21 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    std::mutex::unlock((v3 + 136));
    v10 = *a2;
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v17;
    v16 = v10;
    v17 = v9;
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }

    sub_CB3064();
  }

  return result;
}

void sub_50610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3B889C(va);
  sub_3B889C((v12 - 112));
  std::mutex::unlock((v11 + 200));
  _Unwind_Resume(a1);
}

void sub_50616C(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    std::mutex::lock((a1 + 200));
    std::mutex::lock((a1 + 136));
    v4 = *(a1 + 64);
    *&v30 = *(a1 + 56);
    *(&v30 + 1) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 80);
    v31 = *(a1 + 72);
    v32 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 96);
    v33 = *(a1 + 88);
    v34 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 112);
    v35 = *(a1 + 104);
    v36 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 128);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::mutex::unlock((a1 + 136));
    v10 = *a2;
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = v10;
    v38 = v9;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v21 = v30;
    if (*(&v30 + 1))
    {
      atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v22 = v31;
    v23 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = v33;
    v25 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = v35;
    v27 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = v37;
    v29 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    std::mutex::lock((a1 + 136));
    sub_3ADC80(a1 + 56, &v21);
    std::mutex::unlock((a1 + 136));
    sub_3B889C(&v21);
    if (*(a1 + 24))
    {
      v12 = v30;
      if (*(&v30 + 1))
      {
        atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v13 = v31;
      v14 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = v33;
      v16 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v35;
      v18 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = v37;
      v20 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(a1 + 24);
      if (!v11)
      {
        sub_2B7420();
      }

      (*(*v11 + 48))(v11, &v12);
      sub_3B889C(&v12);
    }

    sub_3B889C(&v30);
    std::mutex::unlock((a1 + 200));
  }
}

void sub_506408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3B889C(va);
  sub_3B889C((v12 - 128));
  std::mutex::unlock((v11 + 200));
  _Unwind_Resume(a1);
}

void *sub_50644C(void *a1)
{
  sub_3BB4D4(a1 + 529);
  sub_506524(a1 + 4);
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1];
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void *sub_506524(void *a1)
{
  sub_3B889C(a1 + 491);
  v2 = a1[490];
  a1[490] = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v5 = v3[13];
        v3[13] = 0;
        if (v5)
        {
          v6 = *v5;
          if (*v5)
          {
            *(v5 + 8) = v6;
            operator delete(v6);
          }

          operator delete();
        }

        v7 = v3[10];
        if (v7)
        {
          v3[11] = v7;
          operator delete(v7);
        }

        v8 = v3[7];
        if (v8)
        {
          v3[8] = v8;
          operator delete(v8);
        }

        v9 = v3[4];
        if (v9)
        {
          v3[5] = v9;
          operator delete(v9);
        }

        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v10 = *v2;
    *v2 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    operator delete();
  }

  v11 = a1[4];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a1[1];
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  return a1;
}

void *sub_5066C8(void *a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v2 = 4;
      v7 = 4;
      LODWORD(__p[0]) = 1347376211;
      goto LABEL_13;
    }

    if (a2 == 1)
    {
      v2 = 4;
      v7 = 4;
      LODWORD(__p[0]) = 1280065864;
      goto LABEL_13;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v2 = 7;
        v7 = 7;
        qmemcpy(__p, "STATION", 7);
        goto LABEL_13;
      case 3:
        v2 = 12;
        v7 = 12;
        LODWORD(__p[1]) = 1414416719;
        __p[0] = *"ACCESS_POINT";
        goto LABEL_13;
      case 4:
        v2 = 17;
        v7 = 17;
        v6 = 84;
        *__p = *"ROAD_ACCESS_POINT";
        goto LABEL_13;
    }
  }

  v2 = 0;
  v7 = 0;
LABEL_13:
  *(__p + v2) = 0;
  result = sub_4A5C(a1, __p, v2);
  if (v7 < 0)
  {
    v4 = result;
    operator delete(__p[0]);
    return v4;
  }

  return result;
}

void sub_5067FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_506818(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 28);
  sub_5068C0(*(a1 + 24), __p);
  *a2 = v3;
  v4 = (a2 + 8);
  if (SHIBYTE(v7) < 0)
  {
    sub_325C(v4, __p[0], __p[1]);
    v5 = SHIBYTE(v7);
    *(a2 + 32) = 100;
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v4 = *__p;
    *(a2 + 24) = v7;
    *(a2 + 32) = 100;
  }
}

void sub_5068A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_5068C0@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v2 = "";
  switch(a1)
  {
    case 8:
      v2 = "ALL";
      break;
    case 12:
      v2 = "DZD";
      break;
    case 32:
      v2 = "ARS";
      break;
    case 36:
      v2 = "AUD";
      break;
    case 44:
      v2 = "BSD";
      break;
    case 48:
      v2 = "BHD";
      break;
    case 50:
      v2 = "BDT";
      break;
    case 51:
      v2 = "AMD";
      break;
    case 52:
      v2 = "BBD";
      break;
    case 60:
      v2 = "BMD";
      break;
    case 64:
      v2 = "BTN";
      break;
    case 68:
      v2 = "BOB";
      break;
    case 72:
      v2 = "BWP";
      break;
    case 84:
      v2 = "BZD";
      break;
    case 90:
      v2 = "SBD";
      break;
    case 96:
      v2 = "BND";
      break;
    case 104:
      v2 = "MMK";
      break;
    case 108:
      v2 = "BIF";
      break;
    case 116:
      v2 = "KHR";
      break;
    case 124:
      v2 = "CAD";
      break;
    case 132:
      v2 = "CVE";
      break;
    case 136:
      v2 = "KYD";
      break;
    case 144:
      v2 = "LKR";
      break;
    case 152:
      v2 = "CLP";
      break;
    case 156:
      v2 = "CNY";
      break;
    case 170:
      v2 = "COP";
      break;
    case 174:
      v2 = "KMF";
      break;
    case 188:
      v2 = "CRC";
      break;
    case 191:
      v2 = "HRK";
      break;
    case 192:
      v2 = "CUP";
      break;
    case 203:
      v2 = "CZK";
      break;
    case 208:
      v2 = "DKK";
      break;
    case 214:
      v2 = "DOP";
      break;
    case 222:
      v2 = "SVC";
      break;
    case 230:
      v2 = "ETB";
      break;
    case 232:
      v2 = "ERN";
      break;
    case 238:
      v2 = "FKP";
      break;
    case 242:
      v2 = "FJD";
      break;
    case 262:
      v2 = "DJF";
      break;
    case 270:
      v2 = "GMD";
      break;
    case 292:
      v2 = "GIP";
      break;
    case 320:
      v2 = "GTQ";
      break;
    case 324:
      v2 = "GNF";
      break;
    case 328:
      v2 = "GYD";
      break;
    case 332:
      v2 = "HTG";
      break;
    case 340:
      v2 = "HNL";
      break;
    case 344:
      v2 = "HKD";
      break;
    case 348:
      v2 = "HUF";
      break;
    case 352:
      v2 = "ISK";
      break;
    case 356:
      v2 = "INR";
      break;
    case 360:
      v2 = "IDR";
      break;
    case 364:
      v2 = "IRR";
      break;
    case 368:
      v2 = "IQD";
      break;
    case 376:
      v2 = "ILS";
      break;
    case 388:
      v2 = "JMD";
      break;
    case 392:
      v2 = "JPY";
      break;
    case 398:
      v2 = "KZT";
      break;
    case 400:
      v2 = "JOD";
      break;
    case 404:
      v2 = "KES";
      break;
    case 408:
      v2 = "KPW";
      break;
    case 410:
      v2 = "KRW";
      break;
    case 414:
      v2 = "KWD";
      break;
    case 417:
      v2 = "KGS";
      break;
    case 418:
      v2 = "LAK";
      break;
    case 422:
      v2 = "LBP";
      break;
    case 426:
      v2 = "LSL";
      break;
    case 430:
      v2 = "LRD";
      break;
    case 434:
      v2 = "LYD";
      break;
    case 446:
      v2 = "MOP";
      break;
    case 454:
      v2 = "MWK";
      break;
    case 458:
      v2 = "MYR";
      break;
    case 462:
      v2 = "MVR";
      break;
    case 478:
      v2 = "MRO";
      break;
    case 480:
      v2 = "MUR";
      break;
    case 484:
      v2 = "MXN";
      break;
    case 496:
      v2 = "MNT";
      break;
    case 498:
      v2 = "MDL";
      break;
    case 504:
      v2 = "MAD";
      break;
    case 512:
      v2 = "OMR";
      break;
    case 516:
      v2 = "NAD";
      break;
    case 524:
      v2 = "NPR";
      break;
    case 532:
      v2 = "ANG";
      break;
    case 533:
      v2 = "AWG";
      break;
    case 548:
      v2 = "VUV";
      break;
    case 554:
      v2 = "NZD";
      break;
    case 558:
      v2 = "NIO";
      break;
    case 566:
      v2 = "NGN";
      break;
    case 578:
      v2 = "NOK";
      break;
    case 586:
      v2 = "PKR";
      break;
    case 590:
      v2 = "PAB";
      break;
    case 598:
      v2 = "PGK";
      break;
    case 600:
      v2 = "PYG";
      break;
    case 604:
      v2 = "PEN";
      break;
    case 608:
      v2 = "PHP";
      break;
    case 634:
      v2 = "QAR";
      break;
    case 643:
      v2 = "RUB";
      break;
    case 646:
      v2 = "RWF";
      break;
    case 654:
      v2 = "SHP";
      break;
    case 678:
      v2 = "STD";
      break;
    case 682:
      v2 = "SAR";
      break;
    case 690:
      v2 = "SCR";
      break;
    case 694:
      v2 = "SLL";
      break;
    case 702:
      v2 = "SGD";
      break;
    case 704:
      v2 = "VND";
      break;
    case 706:
      v2 = "SOS";
      break;
    case 710:
      v2 = "ZAR";
      break;
    case 728:
      v2 = "SSP";
      break;
    case 748:
      v2 = "SZL";
      break;
    case 752:
      v2 = "SEK";
      break;
    case 756:
      v2 = "CHF";
      break;
    case 760:
      v2 = "SYP";
      break;
    case 764:
      v2 = "THB";
      break;
    case 776:
      v2 = "TOP";
      break;
    case 780:
      v2 = "TTD";
      break;
    case 784:
      v2 = "AED";
      break;
    case 788:
      v2 = "TND";
      break;
    case 800:
      v2 = "UGX";
      break;
    case 807:
      v2 = "MKD";
      break;
    case 818:
      v2 = "EGP";
      break;
    case 826:
      v2 = "GBP";
      break;
    case 834:
      v2 = "TZS";
      break;
    case 840:
      v2 = "USD";
      break;
    case 858:
      v2 = "UYU";
      break;
    case 860:
      v2 = "UZS";
      break;
    case 882:
      v2 = "WST";
      break;
    case 886:
      v2 = "YER";
      break;
    case 901:
      v2 = "TWD";
      break;
    case 931:
      v2 = "CUC";
      break;
    case 932:
      v2 = "ZWL";
      break;
    case 934:
      v2 = "TMT";
      break;
    case 936:
      v2 = "GHS";
      break;
    case 937:
      v2 = "VEF";
      break;
    case 938:
      v2 = "SDG";
      break;
    case 940:
      v2 = "UYI";
      break;
    case 941:
      v2 = "RSD";
      break;
    case 943:
      v2 = "MZN";
      break;
    case 944:
      v2 = "AZN";
      break;
    case 946:
      v2 = "RON";
      break;
    case 947:
      v2 = "CHE";
      break;
    case 948:
      v2 = "CHW";
      break;
    case 949:
      v2 = "TRY";
      break;
    case 950:
      v2 = "XAF";
      break;
    case 951:
      v2 = "XCD";
      break;
    case 952:
      v2 = "XOF";
      break;
    case 953:
      v2 = "XPF";
      break;
    case 955:
      v2 = "XBA";
      break;
    case 956:
      v2 = "XBB";
      break;
    case 957:
      v2 = "XBC";
      break;
    case 958:
      v2 = "XBD";
      break;
    case 959:
      v2 = "XAU";
      break;
    case 960:
      v2 = "XDR";
      break;
    case 961:
      v2 = "XAG";
      break;
    case 962:
      v2 = "XPT";
      break;
    case 963:
      v2 = "XTS";
      break;
    case 964:
      v2 = "XPD";
      break;
    case 965:
      v2 = "XUA";
      break;
    case 967:
      v2 = "ZMW";
      break;
    case 968:
      v2 = "SRD";
      break;
    case 969:
      v2 = "MGA";
      break;
    case 970:
      v2 = "COU";
      break;
    case 971:
      v2 = "AFN";
      break;
    case 972:
      v2 = "TJS";
      break;
    case 973:
      v2 = "AOA";
      break;
    case 974:
      v2 = "BYR";
      break;
    case 975:
      v2 = "BGN";
      break;
    case 976:
      v2 = "CDF";
      break;
    case 977:
      v2 = "BAM";
      break;
    case 978:
      v2 = "EUR";
      break;
    case 979:
      v2 = "MXV";
      break;
    case 980:
      v2 = "UAH";
      break;
    case 981:
      v2 = "GEL";
      break;
    case 984:
      v2 = "BOV";
      break;
    case 985:
      v2 = "PLN";
      break;
    case 986:
      v2 = "BRL";
      break;
    case 990:
      v2 = "CLF";
      break;
    case 994:
      v2 = "XSU";
      break;
    case 997:
      v2 = "USN";
      break;
    case 999:
      v2 = "XXX";
      break;
    default:
      return sub_3608D0(a2, v2);
  }

  return sub_3608D0(a2, v2);
}

uint64_t sub_5080D4(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

int *sub_5080E4@<X0>(int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0x7FFFFFFF;
  *(a4 + 8) = 0;
  v5 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 100;
  *(a4 + 40) = 0;
  *(a4 + 44) = 1;
  *(a4 + 48) = 0;
  v42 = (a4 + 48);
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  if ((result[4] & 1) == 0)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 7);
  v9 = *(v8 + 28);
  sub_5068C0(*(v8 + 24), &__dst);
  LODWORD(v43) = v9;
  if (SHIBYTE(v55) < 0)
  {
    sub_325C(&v44, __dst, *(&__dst + 1));
    v46 = 100;
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    v44 = __dst;
    v45 = v55;
    v46 = 100;
  }

  v10 = v46;
  *a4 = v43;
  v11 = *(v7 + 6);
  v12 = v7[10];
  v13 = *(v7 + 8);
  v15 = v7[19];
  v14 = v7[20];
  *v5 = v44;
  *(v5 + 16) = v45;
  *(a4 + 32) = v10;
  *(a4 + 44) = v15;
  v16 = &off_2779900;
  if (v13)
  {
    v16 = v13;
  }

  *(a4 + 40) = *(v16 + 6) == 1;
  if (v14 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  *(a4 + 73) = v17;
  if (!v12)
  {
    return a3;
  }

  v18 = 8 * v12;
  do
  {
    v20 = *v11;
    v43 = -1;
    LODWORD(v44) = 0x7FFFFFFF;
    v21 = sub_2C7CD8(a2, v20, &v43);
    if (v21 <= 0xFFFFFFFEFFFFFFFFLL && v21 != 0)
    {
      v26 = *(a4 + 56);
      v25 = *(a4 + 64);
      if (v26 < v25)
      {
        *v26 = v21;
        v19 = v26 + 1;
      }

      else
      {
        v27 = *v42;
        v28 = v26 - *v42;
        v29 = (v28 >> 3) + 1;
        if (v29 >> 61)
        {
          sub_1794();
        }

        v30 = v25 - v27;
        if (v30 >> 2 > v29)
        {
          v29 = v30 >> 2;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          if (!(v31 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v34 = (8 * (v28 >> 3));
        *v34 = v21;
        v19 = v34 + 1;
        memcpy(0, v27, v28);
        *(a4 + 48) = 0;
        *(a4 + 64) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      *(a4 + 56) = v19;
      goto LABEL_15;
    }

    if (!sub_7E7E4(1u))
    {
      goto LABEL_15;
    }

    sub_19594F8(&v43);
    sub_4A5C(&v43, "Payment method muid (", 21);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, ") not found.", 12);
    if ((v53 & 0x10) != 0)
    {
      v32 = v52;
      v33 = &v48;
      if (v52 < v49)
      {
        v52 = v49;
        v32 = v49;
        v33 = &v48;
      }

      goto LABEL_40;
    }

    if ((v53 & 8) != 0)
    {
      v32 = v47;
      v33 = &v45;
LABEL_40:
      v35 = *v33;
      v24 = v32 - *v33;
      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v24 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v55) = v32 - *v33;
      if (v24)
      {
        memmove(&__dst, v35, v24);
      }

      goto LABEL_46;
    }

    v24 = 0;
    HIBYTE(v55) = 0;
LABEL_46:
    *(&__dst + v24) = 0;
    sub_7E854(&__dst, 1u);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__dst);
    }

    v43 = v41;
    *(&v43 + *(v41 - 3)) = v40;
    if (v51 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v44 + 1);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_15:
    ++v11;
    v18 -= 8;
  }

  while (v18);
  v36 = *(a4 + 48);
  result = a3;
  if (*(a4 + 56) - v36 == 8)
  {
    result = sub_2C9210(a3, *v36, 0, "payment_method");
    v37 = (result - *result);
    if (*v37 >= 9u)
    {
      v38 = v37[4];
      if (v38)
      {
        if (*(result + v38) == 3)
        {
          *(a4 + 72) = 1;
        }
      }
    }
  }

  return result;
}