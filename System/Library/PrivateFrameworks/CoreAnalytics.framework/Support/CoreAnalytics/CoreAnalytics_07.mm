void *sub_100078F70(void *a1, void *a2, void *a3)
{
  *a1 = a2;
  v6 = sub_100079008();
  v7 = 0;
  while (1)
  {
    v8 = atomic_load(&v6[v7]);
    if (v8)
    {
      v9 = v8;
      atomic_compare_exchange_strong(&v6[v7], &v9, 0);
      if (v9 == v8)
      {
        break;
      }
    }

    v7 += 8;
    if (v7 == 128)
    {
      v8 = operator new(0x1000uLL);
      break;
    }
  }

  *a2 = v8;
  *a3 = v8 + 1022;
  v8[1022] = 0;
  if (*a3 <= *a2)
  {
    sub_10011C878();
  }

  return a1;
}

void *sub_100079008()
{
  if ((atomic_load_explicit(&qword_100192378, memory_order_acquire) & 1) == 0)
  {
    sub_10011C8A4();
  }

  return &unk_1001922F8;
}

uint64_t sub_100079040(uint64_t a1)
{
  for (i = 0; i != 128; i += 8)
  {
    if (atomic_load((a1 + i)))
    {
      v4 = atomic_load((a1 + i));
      operator delete(v4);
    }
  }

  return a1;
}

unint64_t sub_100079088(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a2;
  if (a3)
  {
    v5 = a4;
    v8 = a1[1];
    v9 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) >= a3)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - a2) >> 3);
      v16 = a3;
      if (a3 <= v15)
      {
        goto LABEL_15;
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v8 - a2) >> 3);
      v17 = v8 + 24 * (a3 - v15);
      v18 = a1[1];
      do
      {
        *v18 = *a4;
        *(v18 + 16) = *(a4 + 16);
        v18 += 24;
      }

      while (v18 != v17);
      a1[1] = v17;
      if (v8 != a2)
      {
LABEL_15:
        sub_100079330(a1, a2, v8, a2 + 24 * a3);
        if (v4 <= v5)
        {
          if (a1[1] <= v5)
          {
            v19 = 0;
          }

          else
          {
            v19 = a3;
          }

          v5 += 24 * v19;
        }

        v20 = 0;
        v21 = *(v5 + 16);
        do
        {
          v22 = v20 + v4;
          *v22 = *v5;
          *(v22 + 8) = *(v5 + 8);
          *(v22 + 16) = v21;
          v20 += 24;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      *__p = 0u;
      v26 = 0u;
      v11 = a3 - 0x5555555555555555 * ((v8 - v10) >> 3);
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10002C63C();
      }

      v12 = a2 - v10;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
      if (2 * v13 > v11)
      {
        v11 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v11;
      }

      v27 = a1;
      if (v14)
      {
        sub_10004F9EC(a1, v14);
      }

      v23 = (8 * (v12 >> 3));
      __p[0] = 0;
      __p[1] = v23;
      *(&v26 + 1) = 0;
      do
      {
        *v23 = *a4;
        v23[16] = *(a4 + 16);
        v23 += 24;
      }

      while (v23 != (8 * (v12 >> 3) + 24 * a3));
      *&v26 = 8 * (v12 >> 3) + 24 * a3;
      v4 = sub_1000793B8(a1, __p, v4);
      if (v26 != __p[1])
      {
        *&v26 = __p[1] + (v26 - __p[1] - 24) % 0x18;
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }
  }

  return v4;
}

void sub_1000792E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100079330(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(result + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(result + 8);
    do
    {
      *v7 = *v6;
      *(v7 + 16) = *(v6 + 16);
      v6 += 24;
      v7 += 24;
    }

    while (v6 < a3);
  }

  *(result + 8) = v7;
  if (v4 != a4)
  {
    v8 = 0;
    do
    {
      v9 = v4 + v8;
      *(v9 - 24) = *(v5 + v8 - 24);
      *(v9 - 16) = *(v5 + v8 - 16);
      *(v9 - 8) = *(v5 + v8 - 8);
      v8 -= 24;
    }

    while (a4 - v4 != v8);
  }

  return result;
}

uint64_t sub_1000793B8(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v9 = a2[1];
    v8 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      *v6 = *v7;
      *(v6 + 16) = *(v7 + 16);
      v7 += 24;
      v6 += 24;
    }

    while (v7 != v4);
    v8 = a1[1];
    v9 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v8 - a3;
  a1[1] = a3;
  v10 = *a1;
  v11 = v9 + *a1 - a3;
  if (*a1 != a3)
  {
    v12 = v11;
    do
    {
      *v12 = *v10;
      *(v12 + 16) = *(v10 + 16);
      v10 += 24;
      v12 += 24;
    }

    while (v10 != a3);
    v10 = *a1;
  }

  a2[1] = v11;
  *a1 = v11;
  a1[1] = v10;
  a2[1] = v10;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
  return result;
}

char *sub_100079484(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_10004F9A0(a1, v11);
    }

    sub_10002C63C();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5 + 8);
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = a2 + v12 - result;
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = *(v5 + 8);
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
      v12 = a1[1];
    }

    v14 = v12;
    if (v13 != a3)
    {
      v14 = v12;
      v15 = v12;
      do
      {
        *v15 = *v13;
        v15[16] = *(v13 + 16);
        v13 += 24;
        v15 += 24;
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

void sub_10007962C(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100079688(exception, a1);
}

uint64_t sub_100079688(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_1001835E0;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1001846E0;
  *(a1 + 8) = off_100184710;
  *(a1 + 24) = off_100184738;
  return a1;
}

uint64_t sub_100079734(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));
  return a1;
}

void sub_100079968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_10005A594(va);
  sub_10005A594(va1);
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void sub_1000799D4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100079C44(exception, a1);
}

void sub_100079A30(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));

  operator delete();
}

void sub_100079AA4(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));

  std::logic_error::~logic_error(a1);
}

void sub_100079B00(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));
  std::logic_error::~logic_error(a1);

  operator delete();
}

void sub_100079B78(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);

  std::logic_error::~logic_error(v1);
}

void sub_100079BD0(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);
  std::logic_error::~logic_error(v1);

  operator delete();
}

uint64_t sub_100079C44(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1001835E0;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100183638;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1001846E0;
  *(a1 + 8) = off_100184710;
  *(a1 + 24) = off_100184738;
  return a1;
}

void *sub_100079D64(void *result, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3) <= 2)
  {
    sub_10011C90C();
  }

  *(*result + 32) = a2;
  v2 = *result;
  *(v2 + 40) = *(*result + 24) != a2;
  *(v2 + 48) = a2;
  v3 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3) >= 4)
  {
    v4 = 0;
    v5 = 3;
    do
    {
      v6 = v3 + v4;
      v7 = *(v3 + 8);
      *(v6 + 80) = v7;
      *(*result + v4 + 72) = v7;
      v3 = *result;
      v8 = result[1];
      *(*result + v4 + 88) = 0;
      ++v5;
      v4 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3));
  }

  return result;
}

uint64_t sub_100079E20(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 232) + 1;
  *(a1 + 232) = v3;
  if (v3 >= 0x51)
  {
    sub_10007C1A4(*(a1 + 80), 18);
  }

  v4 = (*(a1 + 216) - 8);
  if (v4 < *(a1 + 208))
  {
    a2 = sub_10007C2E0(a1);
    v4 = (*(a1 + 216) - 8);
  }

  *v4 = 2;
  *(a1 + 216) = v4;
  v5 = *(a1 + 88);
  do
  {
    while (v5)
    {
      v6 = off_100184748[2 * *v5];
      ++*(a1 + 104);
      if ((v6)(a1, a2))
      {
        v5 = *(a1 + 88);
      }

      else
      {
        if (*(a1 + 104) > *(a1 + 112))
        {
          sub_10007C1A4(*(a1 + 80), 18);
        }

        if ((*(a1 + 97) & 0x20) != 0)
        {
          v7 = *(a1 + 40);
          if (v7 == *(a1 + 32) && v7 != *(a1 + 56))
          {
            *(a1 + 121) = 1;
          }
        }

        *(a1 + 228) = 0;
        *(a1 + 230) = 0;
          ;
        }

        if ((*(a1 + 97) & 0x20) != 0)
        {
          v8 = *(a1 + 40);
          if (v8 == *(a1 + 32) && v8 != *(a1 + 56))
          {
            *(a1 + 121) = 1;
          }
        }

        v5 = *(a1 + 88);
        if (!v5)
        {
          goto LABEL_26;
        }
      }
    }

    *(a1 + 228) = 1;
    *(a1 + 230) = 0;
      ;
    }

    v5 = *(a1 + 88);
  }

  while (v5);
LABEL_26:
  result = *(a1 + 228);
  --*(a1 + 232);
  return result;
}

uint64_t sub_100079FD8(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a3)
  {
    *(result + 72) = a3;
  }

  v5 = a3 + 2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 8) - *result) >> 3) <= a3 + 2)
  {
    sub_10011C938();
  }

  v6 = 3 * v5;
  *(*result + 24 * v5 + 8) = a2;
  v7 = *result;
  *(*result + 8 * v6 + 16) = a4;
  if (!a3 && (a5 & 1) == 0)
  {
    *v7 = a2;
    *(*result + 16) = **result != *(*result + 8);
    *(result + 32) = a2;
    *(result + 40) = a2;
    *(result + 48) = 0;
    *(result + 76) = 0;
  }

  return result;
}

uint64_t sub_10007A05C(uint64_t a1, void *a2)
{
  if (*(a1 + 76))
  {
    goto LABEL_2;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) >= 3)
  {
    v5 = (*a1 + 48);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 3)
  {
    v6 = *a2 + 48;
  }

  else
  {
    v6 = a2[1];
  }

  v7 = sub_100078EF4(a1, -2)[1];
  if (*v5 == v7)
  {
    if (*(a1 + 76) == 1)
    {
      sub_10007D510();
    }

    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  result = sub_100078EF4(a1, v8);
  v9 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  if (v9 >= 2)
  {
    v10 = v9 - 2;
  }

  else
  {
    v10 = 0;
  }

  if (v9 >= 3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *result;
    v17 = (v6 + 16);
    v18 = v5 + 2;
    do
    {
      result = *(v18 - 2);
      v19 = *(v17 - 2);
      if (result == v7)
      {
        if (v19 != v7)
        {
          goto LABEL_2;
        }

        result = *v18;
        v20 = *v17;
        if (result)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v19 == v7)
        {
          return result;
        }

        v13 = result - v16;
        if (result - v16 < 0)
        {
          sub_10011C9E8();
        }

        v14 = v19 - v16;
        if (v19 - v16 < 0)
        {
          sub_10011C9BC();
        }

        if (v13 < v14)
        {
          return result;
        }

        if (v14 < v13)
        {
          goto LABEL_41;
        }

        v11 = *(v18 - 1) - result;
        if (v11 < 0)
        {
          sub_10011C990();
        }

        v12 = *(v17 - 1) - v19;
        if (v12 < 0)
        {
          sub_10011C964();
        }

        if (v11 != v12)
        {
LABEL_41:
          if (v10 == v15 || v14 >= v13 && v12 <= v11 && ((*v18 & 1) != 0 || *v17 != 1))
          {
            return result;
          }

LABEL_2:

          return sub_100078D8C(a1, a2);
        }

        v20 = *v17;
        if (*v18)
        {
          v12 = *(v18 - 1) - result;
LABEL_35:
          if (!v20)
          {
            return result;
          }

          goto LABEL_39;
        }

        v12 = *(v18 - 1) - result;
      }

      if (v20)
      {
        goto LABEL_41;
      }

LABEL_39:
      ++v15;
      v17 += 24;
      v18 += 24;
    }

    while (v15 < v10);
  }

  return result;
}

uint64_t sub_10007A26C(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 16);
  *(a1 + 120) = *(v3 + 20);
  if (v4 > -3)
  {
    if (v4 >= 0xFFFFFFFE)
    {
      v8 = *(*(*(v3 + 8) + 16) + 8);
      *(a1 + 88) = *(*(v3 + 8) + 8);
      v9 = *(a1 + 216) - 32;
      if (v9 < *(a1 + 208))
      {
        sub_10007C2E0(a1);
        v9 = *(a1 + 216) - 32;
      }

      v10 = *(a1 + 40);
      *v9 = 3;
      *(v9 + 8) = v8;
      *(v9 + 16) = v10;
      *(v9 + 24) = v4 == -1;
      *(a1 + 216) = v9;
      return 1;
    }

    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v4 != -5)
  {
    if (v4 == -4)
    {
      v17 = *(v3 + 8);
      if (*v17 != 17)
      {
        sub_10011CA14();
      }

      v18 = *(v17 + 8);
      *(a1 + 88) = v18;
      if (*v18 != 27)
      {
        if (*v18)
        {
          sub_10011CA40();
        }

        v19 = *(v18 + 16);
        v20 = *(a1 + 40);
        v21 = *(*(*(v18 + 8) + 16) + 8);
        *(a1 + 88) = *(*(v18 + 8) + 8);
        v22 = sub_100079E20(a1, a2);
        *(a1 + 40) = v20;
        if ((((v19 == -2) ^ v22) & 1) == 0)
        {
          v21 = *(v17 + 16);
        }

        *(a1 + 88) = v21;
        return 1;
      }

      if (sub_10007BC88(a1))
      {
        return 1;
      }

      v13 = *(v17 + 16);
LABEL_19:
      *(a1 + 88) = v13;
      return 1;
    }

    if (v4 == -3)
    {
      v5 = *(a1 + 123);
      *(a1 + 123) = 1;
      v6 = *(*(*(v3 + 8) + 16) + 8);
      *(a1 + 88) = *(*(v3 + 8) + 8);
      v7 = sub_100079E20(a1, a2);
      if (v7 & 1) != 0 || (*(a1 + 123))
      {
        *(a1 + 88) = v6;
        *(a1 + 123) = v5;
      }

      else if (**(a1 + 216))
      {
        do
        {
          *(a1 + 228) = 0;
          *(a1 + 230) = 0;
            ;
          }

          v7 = 0;
        }

        while (**(a1 + 216));
      }

      else
      {
        return 0;
      }

      return v7;
    }

LABEL_13:
    if (v4 <= 0)
    {
      sub_10011CA6C();
    }

    if ((*(a1 + 98) & 4) == 0)
    {
      v11 = sub_100078EF4(*(a1 + 16), v4);
      v12 = *(a1 + 216) - 40;
      if (v12 < *(a1 + 208))
      {
        sub_10007C2E0(a1);
        v12 = *(a1 + 216) - 40;
      }

      *v12 = 1;
      *(v12 + 8) = v4;
      *(v12 + 16) = *v11;
      *(v12 + 32) = *(v11 + 16);
      *(a1 + 216) = v12;
      sub_10007C264(*(a1 + 16), *(a1 + 40), v4, 0);
      v3 = *(a1 + 88);
    }

LABEL_18:
    v13 = *(v3 + 8);
    goto LABEL_19;
  }

  v15 = sub_100078EF4(*(a1 + 16), 0);
  v16 = *(a1 + 216) - 40;
  if (v16 < *(a1 + 208))
  {
    sub_10007C2E0(a1);
    v16 = *(a1 + 216) - 40;
  }

  v7 = 1;
  *v16 = 1;
  *(v16 + 8) = 0;
  *(v16 + 16) = *v15;
  *(v16 + 32) = *(v15 + 16);
  *(a1 + 216) = v16;
  sub_10007C264(*(a1 + 16), *(a1 + 40), 0, 1);
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return v7;
}

uint64_t sub_10007A61C(__n128 *a1)
{
  v2 = a1[5].n128_u64[1];
  v3 = *(v2 + 16);
  a1[7].n128_u8[8] = *(v2 + 20);
  if (v3 >= 1)
  {
    if ((a1[6].n128_u8[2] & 4) == 0)
    {
      sub_100079FD8(a1[1].n128_i64[0], a1[2].n128_i64[1], v3, 1, 0);
    }

    v4 = a1[12].n128_u64[0];
    if (a1[11].n128_u64[1] != v4 && v3 == *(v4 - 112))
    {
      a1[5].n128_u64[1] = *(v4 - 104);
      sub_100078D8C(a1[1].n128_i64[0], v4 - 96);
      v5 = a1[12].n128_u64[0];
      v6 = *(v5 - 112);
      v7 = *(v5 - 104);
      v8 = a1[1].n128_i64[0];
      v9 = v5 - 96;
      v10 = a1[13].n128_u64[1] - 184;
      if (v10 < a1[13].n128_u64[0])
      {
        sub_10007C2E0(a1);
        v10 = a1[13].n128_u64[1] - 184;
      }

      a1[13].n128_u64[1] = sub_10007C388(v10, v6, v7, v8, v9);
      v11 = a1[12].n128_u64[0];
      sub_10007E4A8(v11 - 96);
      v12 = v11 - 112;
      a1[12].n128_u64[0] = v11 - 112;
      v13 = -2 - v3;
      v14 = (a1[13].n128_u64[1] - 48);
      if (v14 < a1[13].n128_u64[0])
      {
        sub_10007C2E0(a1);
        v14 = (a1[13].n128_u64[1] - 48);
        v12 = a1[12].n128_u64[0];
      }

      v15 = a1[2].n128_i64[1];
      if (a1[11].n128_u64[1] == v12)
      {
        v16 = -2147483645;
      }

      else
      {
        v16 = *(v12 - 112);
      }

      *v14 = 5;
      sub_10007C518((v14 + 2), v13, &a1[8], v15, v16);
      a1[13].n128_u64[1] = v14;
    }

    goto LABEL_19;
  }

  if (v3)
  {
    v17 = v3 == -4;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
LABEL_19:
    v18 = *(a1[5].n128_u64[1] + 8);
    goto LABEL_20;
  }

  v18 = 0;
LABEL_20:
  a1[5].n128_u64[1] = v18;
  return 1;
}

BOOL sub_10007A798(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4 == *(a1 + 32))
    {
      return 0;
    }

    else
    {
      v5 = 0;
      v6 = (v2 + 24);
      v7 = 1;
      do
      {
        v8 = *v4;
        if (*(a1 + 120) == 1)
        {
          v9 = *(**(a1 + 80) + 8);
          LOBYTE(v8) = (*(*v9 + 40))(v9, v8);
        }

        if (*v6 != v8)
        {
          break;
        }

        v4 = (*(a1 + 40) + 1);
        *(a1 + 40) = v4;
        if (v3 == v7)
        {
          v2 = *(a1 + 88);
          goto LABEL_12;
        }

        v5 = v7++ >= v3;
        ++v6;
      }

      while (v4 != *(a1 + 32));
    }
  }

  else
  {
LABEL_12:
    *(a1 + 88) = *(v2 + 8);
    return 1;
  }

  return v5;
}

uint64_t sub_10007A88C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 96);
  if (v1 != *(a1 + 64))
  {
    if ((v2 & 0x100000) != 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if ((v2 & 0x100) != 0)
  {
LABEL_7:
    v3 = *(v1 - 1);
    if (*(a1 + 32) == v1)
    {
      if (v3 > 0xD || ((1 << v3) & 0x3400) == 0)
      {
        return 0;
      }
    }

    else
    {
      v4 = v3 == 10 || v3 == 12;
      if (!v4 && (v3 != 13 || *v1 == 10))
      {
        return 0;
      }
    }

    goto LABEL_19;
  }

  if (v2)
  {
    return 0;
  }

LABEL_19:
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10007A91C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 96);
  if (v1 != *(a1 + 32))
  {
    if ((v2 & 0x100000) == 0)
    {
      v3 = *v1;
      if (v3 <= 0xD && ((1 << v3) & 0x3400) != 0)
      {
        if ((v2 & 0x100) == 0 && v1 == *(a1 + 64))
        {
          goto LABEL_16;
        }

        if (*(v1 - 1) != 13 || v3 != 10)
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  if ((v2 & 2) != 0)
  {
    return 0;
  }

LABEL_16:
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10007A990(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  v2 = *v1;
  if ((v2 - 12) >= 2)
  {
    if (!*v1)
    {
      if ((*(a1 + 96) & 0x80) == 0)
      {
        goto LABEL_6;
      }

      return 0;
    }

    if (v2 != 10)
    {
LABEL_6:
      *(a1 + 88) = *(*(a1 + 88) + 8);
      *(a1 + 40) = v1 + 1;
      return 1;
    }
  }

  if ((*(*(a1 + 88) + 16) & *(a1 + 180)) != 0)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL sub_10007A9F8(__n128 *a1)
{
  v2 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] != v2)
  {
    if (*(v2 - 112))
    {
      sub_10011CA98();
    }

    v3 = *(v2 - 104);
    a1[5].n128_u64[1] = v3;
    v4 = a1[1].n128_i64[0];
    v5 = v2 - 96;
    v6 = a1[13].n128_u64[0];
    v7 = a1[13].n128_u64[1] - 184;
    if (v7 < v6)
    {
      sub_10007C2E0(a1);
      v7 = a1[13].n128_u64[1] - 184;
    }

    a1[13].n128_u64[1] = sub_10007C388(v7, 0, v3, v4, v5);
    sub_100078D8C(a1[1].n128_i64[0], a1[12].n128_u64[0] - 96);
    v8 = a1[12].n128_u64[0];
    sub_10007E4A8(v8 - 96);
    a1[12].n128_u64[0] = v8 - 112;
    return 1;
  }

  v10 = a1[6].n128_u32[0];
  if ((v10 & 0x800) != 0)
  {
    if (a1[2].n128_u64[1] == *sub_100078EF4(a1[1].n128_u64[0], 0))
    {
      return 0;
    }

    v10 = a1[6].n128_u32[0];
  }

  if ((v10 & 0x8000) != 0 && a1[2].n128_u64[1] != a1[2].n128_u64[0])
  {
    return 0;
  }

  if ((v10 & 0x4000) != 0)
  {
    v11 = a1[2].n128_i64[1];
    if (v11 == a1[3].n128_u64[1])
    {
      return 0;
    }
  }

  else
  {
    v11 = a1[2].n128_i64[1];
  }

  sub_10007C618(a1[1].n128_u64[0], v11);
  a1[5].n128_u64[1] = 0;
  a1[7].n128_u8[10] = 1;
  if ((a1[6].n128_u8[2] & 2) == 0)
  {
    return 1;
  }

  sub_10007A05C(a1->n128_u64[0], a1[1].n128_u64[0]);
  return (a1[6].n128_u8[1] & 4) != 0;
}

uint64_t sub_10007AB34(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == *(a1 + 32))
  {
    v3 = 0;
    result = 0;
    if ((*(a1 + 96) & 0x20) != 0)
    {
      return result;
    }
  }

  else
  {
    v3 = sub_10006B248(*(a1 + 80), *v2, *(a1 + 176));
    v2 = *(a1 + 40);
  }

  if (v2 != *(a1 + 64) || (*(a1 + 96) & 0x100) != 0)
  {
    *(a1 + 40) = v2 - 1;
    v5 = sub_10006B248(*(a1 + 80), *(v2 - 1), *(a1 + 176));
    ++*(a1 + 40);
    if (v3 == v5)
    {
      return 0;
    }
  }

  else if ((((*(a1 + 96) & 0x10) == 0) & v3) == 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10007ABF4(uint64_t a1)
{
  v2 = sub_10007AB34(a1);
  if ((v2 & 1) == 0)
  {
    *(a1 + 88) = *(*(a1 + 88) + 8);
  }

  return v2 ^ 1u;
}

BOOL sub_10007AC2C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  result = sub_10006B248(*(a1 + 80), *v1, *(a1 + 176));
  if (!result)
  {
    return result;
  }

  v4 = *(a1 + 40);
  if (v4 != *(a1 + 64) || (v5 = *(a1 + 96), (v5 & 0x100) != 0))
  {
    if (sub_10006B248(*(a1 + 80), *(v4 - 1), *(a1 + 176)))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

BOOL sub_10007ACC0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == *(a1 + 64) && (*(a1 + 97) & 1) == 0)
  {
    return 0;
  }

  result = sub_10006B248(*(a1 + 80), *(v2 - 1), *(a1 + 176));
  if (!result)
  {
    return result;
  }

  v4 = *(a1 + 40);
  if (v4 == *(a1 + 32))
  {
    if ((*(a1 + 96) & 0x20) != 0)
    {
      return 0;
    }
  }

  else if (sub_10006B248(*(a1 + 80), *v4, *(a1 + 176)))
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10007AD4C(uint64_t a1)
{
  if (*(a1 + 40) != *(a1 + 64) || (*(a1 + 96) & 4) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10007AD80(uint64_t a1)
{
  if (*(a1 + 40) != *(a1 + 32) || (*(a1 + 96) & 8) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10007ADB0(uint64_t a1)
{
  v2 = *(*(a1 + 88) + 16);
  if (v2 >= 0x40000000)
  {
    v3 = **(a1 + 72);
    if (!v3)
    {
      sub_10011C820();
    }

    v17[0] = 0;
    v17[1] = v2;
    v4 = sub_10007C680(*v3, v3[1], v17);
    if (v4 == v5)
    {
      sub_10011CAC4();
    }

    v6 = v5;
    v7 = v4 + 8;
    do
    {
      v2 = *(v7 - 8);
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_100078EF4(*(a1 + 16), *(v7 - 8));
      v7 += 8;
    }

    while (!*(v8 + 16));
  }

  if ((*(a1 + 98) & 1) == 0 || *(sub_100078EF4(*(a1 + 16), v2) + 16) == 1)
  {
    v9 = *sub_100078EF4(*(a1 + 16), v2);
    v10 = sub_100078EF4(*(a1 + 16), v2)[1];
    if (v9 == v10)
    {
LABEL_18:
      *(a1 + 88) = *(*(a1 + 88) + 8);
      return 1;
    }

    v11 = *(a1 + 40);
    while (v11 != *(a1 + 32))
    {
      v12 = *v11;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        LOBYTE(v12) = (*(*v13 + 40))(v13, v12);
        v14 = *v9;
        if (*(a1 + 120))
        {
          v15 = *(**(a1 + 80) + 8);
          LOBYTE(v14) = (*(*v15 + 40))(v15, v14);
        }
      }

      else
      {
        LOBYTE(v14) = *v9;
      }

      if (v12 != v14)
      {
        break;
      }

      ++v9;
      v11 = (*(a1 + 40) + 1);
      *(a1 + 40) = v11;
      if (v9 == v10)
      {
        goto LABEL_18;
      }
    }
  }

  return 0;
}

uint64_t sub_10007AFA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = **(a1 + 72);
  if (!v4)
  {
    sub_10011C820();
  }

  v5 = sub_10007C75C(v2, v3, *(a1 + 88), v4, *(a1 + 120));
  if (*(a1 + 40) == v5)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  *(a1 + 40) = v5;
  return 1;
}

uint64_t sub_10007B018(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 88) + 16;
  v4 = *v1;
  if (*(a1 + 120) == 1)
  {
    v5 = *(**(a1 + 80) + 8);
    LOBYTE(v4) = (*(*v5 + 40))(v5, v4);
  }

  if (!*(v3 + v4))
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  ++*(a1 + 40);
  return 1;
}

uint64_t sub_10007B0E0(__n128 *a1)
{
  v2 = a1[5].n128_u64[1];
  v3 = a1[2].n128_u64[1];
  if (v3 == a1[2].n128_u64[0])
  {
    v4 = *(v2 + 280);
  }

  else
  {
    v4 = *(v2 + *v3 + 24);
  }

  v5 = (v4 >> 1) & 1;
  if (v4)
  {
    if (v5)
    {
      v7 = *(v2 + 16);
      v8 = a1[13].n128_u64[1] - 24;
      if (v8 < a1[13].n128_u64[0])
      {
        sub_10007C2E0(a1);
        v8 = a1[13].n128_u64[1] - 24;
        v3 = a1[2].n128_u64[1];
      }

      *v8 = 4;
      *(v8 + 8) = v7;
      *(v8 + 16) = v3;
      a1[13].n128_u64[1] = v8;
      v2 = a1[5].n128_u64[1];
    }

    v6 = (v2 + 8);
    goto LABEL_12;
  }

  if (v5)
  {
    v6 = (v2 + 16);
LABEL_12:
    a1[5].n128_u64[1] = *v6;
    return 1;
  }

  return 0;
}

uint64_t sub_10007B190(__n128 *a1)
{
  v2 = a1[5].n128_u64[1];
  v3 = a1[2].n128_u64[1];
  if (v3 == a1[2].n128_u64[0])
  {
    v5 = *(v2 + 280);
    v6 = (v5 >> 1) & 1;
  }

  else
  {
    v4 = *(v2 + *v3 + 24);
    LOBYTE(v5) = v4 & 1;
    v6 = (v4 >> 1) & 1;
  }

  v7 = a1[13].n128_u64[1];
  if (*v7 == 5)
  {
    v8 = v7[6];
    v9 = *(v2 + 304);
    if (v8 == v9)
    {
      v10 = a1[8].n128_u64[0];
      v9 = v7[6];
      if (*(v10 + 16) == v8)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v9 = *(v2 + 304);
  }

  v11 = v7 - 12;
  if ((v7 - 12) < a1[13].n128_u64[0])
  {
    sub_10007C2E0(a1);
    v11 = (a1[13].n128_u64[1] - 48);
    v3 = a1[2].n128_u64[1];
  }

  v12 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] == v12)
  {
    v13 = -2147483645;
  }

  else
  {
    v13 = *(v12 - 112);
  }

  *v11 = 5;
  sub_10007C518((v11 + 2), v9, &a1[8], v3, v13);
  a1[13].n128_u64[1] = v11;
  v10 = a1[8].n128_u64[0];
LABEL_15:
  v14 = *(v2 + 296);
  if (*(v10 + 24))
  {
    v15 = a1[2].n128_u64[1];
    if (v15 == *(v10 + 32))
    {
      *(v10 + 24) = v14;
      v16 = v14;
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a1[2].n128_u64[1];
  }

  *(v10 + 32) = v15;
  v10 = a1[8].n128_u64[0];
  v16 = *(v10 + 24);
LABEL_20:
  if (v16 < *(v2 + 288))
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_37;
  }

  if (*(v2 + 309) == 1 && ((a1[6].n128_u8[1] & 4) == 0 || a1[7].n128_u8[11] == 1))
  {
    if (((v16 < v14) & v5) == 1)
    {
      if (v6)
      {
        v17 = *(v2 + 16);
        v18 = a1[13].n128_u64[1] - 24;
        if (v18 < a1[13].n128_u64[0])
        {
          sub_10007C2E0(a1);
          v18 = a1[13].n128_u64[1] - 24;
        }

        v19 = a1[2].n128_u64[1];
        *v18 = 4;
        *(v18 + 8) = v17;
        *(v18 + 16) = v19;
        a1[13].n128_u64[1] = v18;
        v10 = a1[8].n128_u64[0];
        v16 = *(v10 + 24);
      }

      goto LABEL_37;
    }

    if (v6)
    {
LABEL_39:
      v24 = 16;
      goto LABEL_40;
    }
  }

  else
  {
    v20 = (v16 < v14) & v5;
    if (v6)
    {
      if (v20)
      {
        v21 = *(v2 + 8);
        v22 = a1[13].n128_u64[1] - 24;
        if (v22 < a1[13].n128_u64[0])
        {
          sub_10007C2E0(a1);
          v22 = a1[13].n128_u64[1] - 24;
        }

        v23 = a1[2].n128_u64[1];
        *v22 = 13;
        *(v22 + 8) = v21;
        *(v22 + 16) = v23;
        a1[13].n128_u64[1] = v22;
      }

      goto LABEL_39;
    }

    if (v20)
    {
LABEL_37:
      *(v10 + 24) = v16 + 1;
      v24 = 8;
LABEL_40:
      a1[5].n128_u64[1] = *(v2 + v24);
      return 1;
    }
  }

  return 0;
}

BOOL sub_10007B3D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 != v2)
  {
    if (*(a1 + 120) == 1)
    {
      v4 = *(**(a1 + 80) + 8);
      (*(*v4 + 40))(v4, *v1);
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
    }

    else
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
    }

    v7 = (v5 + 1);
    *(a1 + 40) = v7;
    if (v7 != v6 && *(a1 + 120) == 1)
    {
      v8 = *(**(a1 + 80) + 8);
      (*(*v8 + 40))(v8, *v7);
    }

    *(a1 + 88) = *(*(a1 + 88) + 8);
  }

  return v1 != v2;
}

uint64_t sub_10007B4B8(uint64_t a1)
{
  if ((*(a1 + 96) & 8) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  if (*(a1 + 32) != v2)
  {
    while (1)
    {
      v3 = *v2;
      if (*(a1 + 120) == 1)
      {
        v4 = *(**(a1 + 80) + 8);
        LODWORD(v3) = (*(*v4 + 40))(v4, v3);
      }

      if (v3 > 0xD || ((1 << v3) & 0x3400) == 0)
      {
        break;
      }

      if (++v2 == *(a1 + 32))
      {
        goto LABEL_10;
      }
    }

    if (v2 != *(a1 + 32))
    {
      return 0;
    }
  }

LABEL_10:
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

BOOL sub_10007B598(void *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  if (v1 == v2)
  {
    a1[11] = *(a1[11] + 8);
  }

  return v1 == v2;
}

uint64_t sub_10007B5C4(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 8);
  if (*(v2 + 16) != 1)
  {
    sub_10011CAF0();
  }

  if ((*(v1 + 309) & 1) == 0)
  {
    v6 = 0;
    v4 = (v1 + 296);
    v5 = (v1 + 288);
    goto LABEL_6;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v4 = (v1 + 296);
    v5 = (v1 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_8;
    }

    v6 = 0;
LABEL_6:
    v7 = v5;
    goto LABEL_9;
  }

  v4 = (v1 + 296);
  v5 = (v1 + 288);
LABEL_8:
  v6 = 1;
  v7 = v4;
LABEL_9:
  v8 = *v7;
  v9 = *(a1 + 40);
  if (v8 == -1)
  {
    v10 = *(a1 + 32);
  }

  else if (v8 >= *(a1 + 32) - v9)
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = &v9[v8];
  }

  if (v10 == v9)
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v11 = *(v2 + 24);
    v12 = *(a1 + 40);
    do
    {
      v13 = *v12;
      if (*(a1 + 120) == 1)
      {
        v14 = *(**(a1 + 80) + 8);
        LOBYTE(v13) = (*(*v14 + 40))(v14, v13);
        v12 = *(a1 + 40);
      }

      if (v11 != v13)
      {
        break;
      }

      *(a1 + 40) = ++v12;
    }

    while (v12 != v10);
  }

  v15 = (v12 - v9);
  v16 = *v5;
  if (v15 < *v5)
  {
    return 0;
  }

  if (v6)
  {
    if (*(v1 + 308) == 1 && v15 < *v4)
    {
      *(a1 + 48) = v12;
    }

    if (v15 != v16)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_10007C2E0(a1);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 7;
      *(v18 + 8) = v15;
      *(v18 + 16) = v1;
      *(v18 + 24) = v12;
      *(a1 + 216) = v18;
    }

    *(a1 + 88) = *(v1 + 16);
    return 1;
  }

  else
  {
    if (v15 < *v4)
    {
      v19 = *(a1 + 216) - 32;
      if (v19 < *(a1 + 208))
      {
        sub_10007C2E0(a1);
        v19 = *(a1 + 216) - 32;
      }

      *v19 = 10;
      *(v19 + 8) = v15;
      *(v19 + 16) = v1;
      *(v19 + 24) = v12;
      *(a1 + 216) = v19;
      v12 = *(a1 + 40);
    }

    *(a1 + 88) = *(v1 + 16);
    if (v12 == *(a1 + 32))
    {
      v20 = *(v1 + 280);
    }

    else
    {
      v20 = *(v1 + *v12 + 24);
    }

    return (v20 >> 1) & 1;
  }
}

uint64_t sub_10007B808(uint64_t a1)
{
  v2 = *(a1 + 88);
  if ((*(v2 + 309) & 1) == 0)
  {
    v5 = 0;
    v3 = (v2 + 296);
    v4 = (v2 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v3 = (v2 + 296);
    v4 = (v2 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v5 = 0;
LABEL_5:
    v6 = v4;
    goto LABEL_8;
  }

  v3 = (v2 + 296);
  v4 = (v2 + 288);
LABEL_7:
  v5 = 1;
  v6 = v3;
LABEL_8:
  v7 = *v6;
  v8 = *(a1 + 40);
  if (v7 == -1)
  {
    v9 = *(a1 + 32);
  }

  else if (v7 >= *(a1 + 32) - v8)
  {
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = &v8[v7];
  }

  if (v9 == v8)
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v10 = *(v2 + 8) + 16;
    v11 = *(a1 + 40);
    do
    {
      v12 = *v11;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        LOBYTE(v12) = (*(*v13 + 40))(v13, v12);
        v11 = *(a1 + 40);
      }

      if (!*(v10 + v12))
      {
        break;
      }

      *(a1 + 40) = ++v11;
    }

    while (v11 != v9);
  }

  v14 = (v11 - v8);
  v15 = *v4;
  if (v14 < *v4)
  {
    return 0;
  }

  if (v5)
  {
    if (*(v2 + 308) == 1 && v14 < *v3)
    {
      *(a1 + 48) = v11;
    }

    if (v14 != v15)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_10007C2E0(a1);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 7;
      *(v17 + 8) = v14;
      *(v17 + 16) = v2;
      *(v17 + 24) = v11;
      *(a1 + 216) = v17;
    }

    *(a1 + 88) = *(v2 + 16);
    return 1;
  }

  else
  {
    if (v14 < *v3)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_10007C2E0(a1);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 11;
      *(v18 + 8) = v14;
      *(v18 + 16) = v2;
      *(v18 + 24) = v11;
      *(a1 + 216) = v18;
      v11 = *(a1 + 40);
    }

    *(a1 + 88) = *(v2 + 16);
    if (v11 == *(a1 + 32))
    {
      v19 = *(v2 + 280);
    }

    else
    {
      v19 = *(v2 + *v11 + 24);
    }

    return (v19 >> 1) & 1;
  }
}

uint64_t sub_10007BA40(uint64_t a1)
{
  v2 = *(a1 + 88);
  if ((*(v2 + 309) & 1) == 0)
  {
    v5 = 0;
    v3 = (v2 + 296);
    v4 = (v2 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v3 = (v2 + 296);
    v4 = (v2 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v5 = 0;
LABEL_5:
    v6 = v4;
    goto LABEL_8;
  }

  v3 = (v2 + 296);
  v4 = (v2 + 288);
LABEL_7:
  v5 = 1;
  v6 = v3;
LABEL_8:
  v7 = *v6;
  v8 = *(a1 + 40);
  if (v7 == -1)
  {
    v9 = *(a1 + 32);
  }

  else if (v7 >= *(a1 + 32) - v8)
  {
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = &v8[v7];
  }

  if (v9 == v8)
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v10 = *(v2 + 8);
    v11 = *(a1 + 40);
    do
    {
      v12 = **(a1 + 72);
      if (!v12)
      {
        sub_10011C820();
      }

      v13 = sub_10007C75C(v11, *(a1 + 32), v10, v12, *(a1 + 120));
      v11 = *(a1 + 40);
      if (v11 == v13)
      {
        break;
      }

      *(a1 + 40) = ++v11;
    }

    while (v11 != v9);
  }

  v14 = (v11 - v8);
  v15 = *v4;
  if (v14 < *v4)
  {
    return 0;
  }

  if (v5)
  {
    if (*(v2 + 308) == 1 && v14 < *v3)
    {
      *(a1 + 48) = v11;
    }

    if (v14 != v15)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_10007C2E0(a1);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 7;
      *(v17 + 8) = v14;
      *(v17 + 16) = v2;
      *(v17 + 24) = v11;
      *(a1 + 216) = v17;
    }

    *(a1 + 88) = *(v2 + 16);
    return 1;
  }

  else
  {
    if (v14 < *v3)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_10007C2E0(a1);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 12;
      *(v18 + 8) = v14;
      *(v18 + 16) = v2;
      *(v18 + 24) = v11;
      *(a1 + 216) = v18;
      v11 = *(a1 + 40);
    }

    *(a1 + 88) = *(v2 + 16);
    if (v11 == *(a1 + 32))
    {
      v19 = *(v2 + 280);
    }

    else
    {
      v19 = *(v2 + *v11 + 24);
    }

    return (v19 >> 1) & 1;
  }
}

BOOL sub_10007BC50(void *a1)
{
  v1 = a1[5];
  v2 = v1 - a1[8];
  v3 = a1[11];
  v4 = *(v3 + 16);
  if (v2 >= v4)
  {
    a1[5] = v1 - v4;
    a1[11] = *(v3 + 8);
  }

  return v2 >= v4;
}

uint64_t sub_10007BC88(uint64_t a1)
{
  v1 = *(*(a1 + 88) + 16);
  if (v1 != 9999)
  {
    if (v1 < 1)
    {
      if (v1 > -1073741825)
      {
        v14 = *(a1 + 192);
        if (*(a1 + 184) != v14)
        {
          v15 = *(v14 - 112);
          if (v1)
          {
            v16 = v15 == ~v1;
          }

          else
          {
            v16 = 1;
          }

          v2 = v16;
          goto LABEL_33;
        }
      }

      else
      {
        v9 = **(a1 + 72);
        if (!v9)
        {
          sub_10011C820();
        }

        v20 = 0;
        v21 = ~v1;
        v10 = sub_10007C680(*v9, v9[1], &v20);
        v12 = *(a1 + 192);
        if (*(a1 + 184) == v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = *(v12 - 112);
        }

        if (v10 != v11)
        {
          v17 = v10 + 8;
          do
          {
            v2 = v13 == *(v17 - 8);
            v18 = v13 == *(v17 - 8) || v17 == v11;
            v17 += 8;
          }

          while (!v18);
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!(v1 >> 30))
      {
        v2 = *(sub_100078EF4(*(a1 + 16), v1) + 16);
LABEL_33:
        *(a1 + 88) = *(*(a1 + 88) + 8);
        return v2 & 1;
      }

      v4 = **(a1 + 72);
      if (!v4)
      {
        sub_10011C820();
      }

      v20 = 0;
      v21 = v1;
      v5 = sub_10007C680(*v4, v4[1], &v20);
      if (v5 != v6)
      {
        v7 = v6;
        v8 = v5 + 8;
        do
        {
          v2 = *(sub_100078EF4(*(a1 + 16), *(v8 - 8)) + 16);
          if (v2)
          {
            break;
          }

          v16 = v8 == v7;
          v8 += 8;
        }

        while (!v16);
        goto LABEL_33;
      }
    }

    v2 = 0;
    goto LABEL_33;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t sub_10007BE2C(__n128 *a1)
{
  v2 = a1[7].n128_u8[8];
  v3 = a1[13].n128_u64[1] - 16;
  if (v3 < a1[13].n128_u64[0])
  {
    sub_10007C2E0(a1);
    v3 = a1[13].n128_u64[1] - 16;
  }

  *v3 = 18;
  *(v3 + 8) = v2;
  a1[13].n128_u64[1] = v3;
  v4 = a1[5].n128_u64[1];
  a1[7].n128_u8[8] = *(v4 + 16);
  a1[5].n128_u64[1] = *(v4 + 8);
  return 1;
}

uint64_t sub_10007BE98(__n128 *a1)
{
  v1 = a1[5].n128_u64[1];
  if (*v1 != 29)
  {
    sub_10011CB1C();
  }

  v3 = a1[12].n128_u64[0];
  v4 = &a1[11].n128_i64[1];
  while (v3 != a1[11].n128_u64[1])
  {
    v5 = *(v3 - 112);
    v3 -= 112;
    if (v5 == *(*(v1 + 16) + 16))
    {
      if (*(v3 + 104) == a1[2].n128_u64[1])
      {
        return 0;
      }

      break;
    }
  }

  v6 = (a1[13].n128_u64[1] - 8);
  if (v6 < a1[13].n128_u64[0])
  {
    sub_10007C2E0(a1);
    v6 = (a1[13].n128_u64[1] - 8);
  }

  *v6 = 15;
  a1[13].n128_u64[1] = v6;
  if (a1[12].n128_u64[1] == a1[11].n128_u64[1])
  {
    sub_10007CF6C(v4, 0x32uLL);
  }

  v19 = 0;
  v20 = 0;
  v18 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  BYTE12(v18) = 1;
  sub_10007D080(v4, &v16);
  sub_10007E4A8(v17);
  v7 = a1[12].n128_u64[0];
  *(v7 - 104) = *(a1[5].n128_u64[1] + 8);
  sub_100078D8C(v7 - 96, a1[1].n128_i64[0]);
  v8 = *(a1[5].n128_u64[1] + 16);
  a1[5].n128_u64[1] = v8;
  v9 = a1[12].n128_u64[0];
  *(v9 - 112) = *(v8 + 16);
  v10 = a1[2].n128_i64[1];
  *(v9 - 8) = v10;
  v11 = *(a1[5].n128_u64[1] + 16);
  v12 = (a1[13].n128_u64[1] - 48);
  if (v12 < a1[13].n128_u64[0])
  {
    sub_10007C2E0(a1);
    v12 = (a1[13].n128_u64[1] - 48);
    v10 = a1[2].n128_i64[1];
  }

  v13 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] == v13)
  {
    v14 = -2147483645;
  }

  else
  {
    v14 = *(v13 - 112);
  }

  *v12 = 5;
  sub_10007C518((v12 + 2), -2 - v11, &a1[8], v10, v14);
  a1[13].n128_u64[1] = v12;
  return 1;
}

uint64_t sub_10007C094(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (*(a1 + 184) == v1)
  {
    v2 = 0x7FFFFFFF;
  }

  else
  {
    v2 = *(v1 - 112);
  }

  return sub_10007D3EC(a1, v2, 1);
}

uint64_t sub_10007C0B4(__n128 *a1)
{
  v2 = *(a1[5].n128_u64[1] + 16);
  if (v2 == 1)
  {
    v4 = a1[2].n128_u64[1];
    if (a1[1].n128_u64[1] == v4)
    {
      goto LABEL_7;
    }

    v3 = v4 - 1;
  }

  else
  {
    if (v2 != 2)
    {
      goto LABEL_7;
    }

    v3 = a1[2].n128_u64[0];
  }

  a1[3].n128_u64[0] = v3;
LABEL_7:
  v5 = (a1[13].n128_u64[1] - 8);
  if (v5 < a1[13].n128_u64[0])
  {
    sub_10007C2E0(a1);
    v5 = (a1[13].n128_u64[1] - 8);
  }

  *v5 = 16;
  a1[13].n128_u64[1] = v5;
  a1[5].n128_u64[1] = *(a1[5].n128_u64[1] + 8);
  return 1;
}

uint64_t sub_10007C148(__n128 *a1)
{
  v2 = (a1[13].n128_u64[1] - 8);
  if (v2 < a1[13].n128_u64[0])
  {
    sub_10007C2E0(a1);
    v2 = (a1[13].n128_u64[1] - 8);
  }

  *v2 = 17;
  a1[13].n128_u64[1] = v2;
  a1[5].n128_u64[1] = *(a1[5].n128_u64[1] + 8);
  return 1;
}

void sub_10007C1A4(_BYTE **a1, int a2)
{
  v3.__vftable = 0xAAAAAAAAAAAAAAAALL;
  v3.__imp_.__imp_ = 0xAAAAAAAAAAAAAAAALL;
  v5 = v3;
  v6 = v3;
  sub_100064CA4(*a1, a2, &v4);
  std::runtime_error::runtime_error(&v5, &v4);
  v5.__vftable = &off_100183F08;
  LODWORD(v6.__vftable) = a2;
  v6.__imp_.__imp_ = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  sub_10006D364(&v5);
}

void *sub_10007C264(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a3 + 2 >= 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3))
  {
    sub_10011CB48();
  }

  if (a3 || a4)
  {
    *(*result + 24 * (a3 + 2)) = a2;
    if (a4)
    {
      *(*result + 32) = a2;
      *(*result + 40) = *(*result + 24) != *(*result + 32);
    }
  }

  else
  {

    return sub_100079D64(result, a2);
  }

  return result;
}

__n128 sub_10007C2E0(__n128 *a1)
{
  v2 = a1[14].n128_u32[0];
  if (!v2)
  {
    v8 = a1[5].n128_u64[0];

    sub_10007C1A4(v8, 19);
  }

  a1[14].n128_u32[0] = v2 - 1;
  v3 = sub_100079008();
  v4 = 0;
  while (1)
  {
    v5 = atomic_load(&v3[v4]);
    if (v5)
    {
      v6 = v5;
      atomic_compare_exchange_strong(&v3[v4], &v6, 0);
      if (v6 == v5)
      {
        break;
      }
    }

    v4 += 8;
    if (v4 == 128)
    {
      v5 = operator new(0x1000uLL);
      break;
    }
  }

  result = a1[13];
  v5[254].n128_u32[2] = 6;
  v5[255] = result;
  a1[13].n128_u64[0] = v5;
  a1[13].n128_u64[1] = &v5[254].n128_u64[1];
  return result;
}

uint64_t sub_10007C388(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 14;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  sub_10007C3EC(a1 + 24, a4);
  sub_10007C3EC(a1 + 104, a5);
  return a1;
}

uint64_t sub_10007C3EC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10007C494(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 76);
  *(a1 + 76) = v5;
  if ((v5 & 1) == 0)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

uint64_t sub_10007C494(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004F9A0(result, a4);
  }

  return result;
}

void sub_10007C4FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007C518(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, int a5)
{
  *(a1 + 32) = a4;
  *(a1 + 16) = a2;
  *a1 = a3;
  *(a1 + 8) = *a3;
  *a3 = a1;
  v6 = *(a1 + 8);
  v7 = *(v6 + 16);
  if ((v7 >= a2 || v7 < 0) && (v8 = sub_10007C588(a1, a2, v6, a5)) != 0)
  {
    *(a1 + 24) = *(v8 + 24);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10007C588(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v6 = -2 - a4;
    while (1)
    {
      v7 = *(a3 + 16);
      if (v7 == a2)
      {
        break;
      }

      if (v6 == v7)
      {
        return 0;
      }

      a3 = *(a3 + 8);
      if (!a3)
      {
        return a3;
      }

      if ((*(a3 + 16) & 0x80000000) != 0)
      {
        v8 = sub_10007C588(a1);
        if (!v8)
        {
          return 0;
        }

        a3 = *(v8 + 8);
        if (!a3)
        {
          return a3;
        }
      }
    }
  }

  return a3;
}

void *sub_10007C618(void *result, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3) <= 2)
  {
    sub_10011CB74();
  }

  *(*result + 56) = a2;
  v2 = *result;
  *(v2 + 64) = 1;
  *v2 = a2;
  *(*result + 16) = **result != *(*result + 8);
  result[4] = a2;
  result[5] = a2;
  *(result + 48) = 0;
  *(result + 76) = 0;
  return result;
}

uint64_t sub_10007C680(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == result)
  {
    return result;
  }

  v3 = a2;
  v4 = (a2 - result) >> 3;
  v5 = *(a3 + 4);
  v6 = result;
  while (1)
  {
    v7 = v4 >> 1;
    v8 = v6 + 8 * (v4 >> 1);
    v9 = *(v8 + 4);
    if (v9 >= v5)
    {
      break;
    }

    v6 = v8 + 8;
    v7 = v4 + ~v7;
LABEL_8:
    v4 = v7;
    if (!v7)
    {
      return v6;
    }
  }

  if (v5 < v9)
  {
    v3 = v6 + 8 * (v4 >> 1);
    goto LABEL_8;
  }

  result = v6 + 8 * (v4 >> 1);
  if (v4 != 1)
  {
    do
    {
      v10 = v7 >> 1;
      v11 = v6 + 8 * (v7 >> 1);
      v12 = *(v11 + 4);
      v13 = v11 + 8;
      v7 += ~(v7 >> 1);
      if (v12 < v5)
      {
        v6 = v13;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v7);
    result = v6;
  }

  v14 = v8 + 8;
  v15 = v3 - (v8 + 8);
  if (v15)
  {
    v16 = v15 >> 3;
    do
    {
      v17 = v16 >> 1;
      v18 = v14 + 8 * (v16 >> 1);
      v19 = *(v18 + 4);
      v20 = v18 + 8;
      v16 += ~(v16 >> 1);
      if (v5 < v19)
      {
        v16 = v17;
      }

      else
      {
        v14 = v20;
      }
    }

    while (v16);
  }

  return result;
}

char *sub_10007C75C(char *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  if (a1 == a2)
  {
    return v5;
  }

  v9 = (a3 + 40);
  v10 = *(a4 + 24);
  if (*(a3 + 16))
  {
    v12 = 0;
    do
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = v5;
        do
        {
          v15 = *v14;
          if (a5)
          {
            LOBYTE(v15) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v15);
            v13 = *v9;
          }

          if (v15 != v13)
          {
            break;
          }

          v16 = *++v9;
          v13 = v16;
          ++v14;
        }

        while (v16 && v14 != a2);
        if (!v13)
        {
          if (v14 == v5)
          {
            v36 = v5 + 1;
          }

          else
          {
            v36 = v14;
          }

          if ((*(a3 + 36) & 1) == 0)
          {
            return v36;
          }

          return v5;
        }

          ;
        }
      }

      else
      {
        v19 = *v5;
        if (a5)
        {
          LODWORD(v19) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v19);
        }

        if (!v19)
        {
          goto LABEL_93;
        }

        ++v9;
      }

      ++v12;
    }

    while (v12 < *(a3 + 16));
  }

  v20 = *v5;
  if (a5)
  {
    v20 = (*(**(*v10 + 8) + 40))(*(*v10 + 8), *v5);
  }

  if (!*(a3 + 20))
  {
    if (!*(a3 + 24))
    {
      goto LABEL_89;
    }

    memset(&v39, 0, sizeof(v39));
    goto LABEL_64;
  }

  memset(&v39, 0, sizeof(v39));
  if ((*(a4 + 42) & 0x20) != 0)
  {
    v40 = v20;
    v41 = 0;
    sub_100061E44(*v10, &v41, &v38);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v39 = v38;
  }

  else
  {
    std::string::assign(&v39, 1uLL, v20);
  }

  if (!*(a3 + 20))
  {
LABEL_64:
    if (!*(a3 + 24))
    {
      goto LABEL_83;
    }

    v40 = v20;
    v41 = 0;
    sub_10006AE58(*v10, &v40, &v41, &v38);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v39 = v38;
    if (!*(a3 + 24))
    {
LABEL_83:
      v33 = 1;
      goto LABEL_85;
    }

    v29 = 0;
    while (1)
    {
      if (!*v9)
      {
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v30 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
          if (HIBYTE(v39.__r_.__value_.__r.__words[2]) == 1)
          {
            v31 = &v39;
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        if (v39.__r_.__value_.__l.__size_ == 1)
        {
          v31 = v39.__r_.__value_.__r.__words[0];
LABEL_77:
          v30 = v31->__r_.__value_.__s.__data_[0];
LABEL_78:
          if (!v30)
          {
            goto LABEL_84;
          }

          goto LABEL_79;
        }

        if (!v39.__r_.__value_.__l.__size_)
        {
          goto LABEL_84;
        }
      }

LABEL_79:
      if (!std::string::compare(&v39, v9))
      {
        goto LABEL_84;
      }

      ++v9;
        ;
      }

      if (++v29 >= *(a3 + 24))
      {
        goto LABEL_83;
      }
    }
  }

  v21 = 0;
  while (1)
  {
    if (!*v9)
    {
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v39.__r_.__value_.__l.__size_)
        {
          goto LABEL_36;
        }

        if (v39.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_35;
        }

        v26 = v39.__r_.__value_.__r.__words[0];
        goto LABEL_52;
      }

      if (!*(&v39.__r_.__value_.__s + 23))
      {
        goto LABEL_36;
      }

      if (HIBYTE(v39.__r_.__value_.__r.__words[2]) == 1)
      {
        v26 = &v39;
LABEL_52:
        if (!v26->__r_.__value_.__s.__data_[0])
        {
          goto LABEL_36;
        }
      }
    }

LABEL_35:
    if (std::string::compare(&v39, v9) < 0)
    {
      v22 = v9 + 1;
        ;
      }

      goto LABEL_61;
    }

LABEL_36:
    v22 = v9 + 1;
      ;
    }

    if (*v22)
    {
      goto LABEL_60;
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v39.__r_.__value_.__l.__size_ != 1)
      {
        if (!v39.__r_.__value_.__l.__size_)
        {
          break;
        }

        goto LABEL_60;
      }

      v25 = v39.__r_.__value_.__r.__words[0];
    }

    else
    {
      v24 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      if (HIBYTE(v39.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_59;
      }

      v25 = &v39;
    }

    v24 = v25->__r_.__value_.__s.__data_[0];
LABEL_59:
    if (!v24)
    {
      break;
    }

LABEL_60:
    if (std::string::compare(&v39, v22) <= 0)
    {
      break;
    }

LABEL_61:
    v9 = v22 + 1;
      ;
    }

    if (++v21 >= *(a3 + 20))
    {
      goto LABEL_64;
    }
  }

LABEL_84:
  v33 = 0;
  v5 += *(a3 + 36) ^ 1;
LABEL_85:
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
    if (v33)
    {
      goto LABEL_89;
    }
  }

  else
  {
    if ((v33 & 1) == 0)
    {
      return v5;
    }

LABEL_89:
    if (!sub_10006B248(v10, v20, *(a3 + 28)))
    {
      v34 = *(a3 + 32);
      if (!v34 || sub_10006B248(v10, v20, v34))
      {
        v35 = *(a3 + 36);
        goto LABEL_94;
      }
    }

LABEL_93:
    v35 = *(a3 + 36) ^ 1;
LABEL_94:
    v5 += v35;
  }

  return v5;
}

void sub_10007CBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007CBF8(__n128 *a1)
{
  v2 = a1[6].n128_u32[0];
  if ((v2 & 0x80) != 0 || (v3 = a1[5].n128_u64[1], (a1[11].n128_u8[4] & *(*(v3 + 8) + 16)) == 0))
  {

    return sub_10007CDE4(a1);
  }

  else
  {
    if (*(v3 + 309) == 1)
    {
      if ((v2 & 0x400) == 0)
      {
        v4 = &a1[2].n128_u64[1];
        v5 = a1[2].n128_u64[1];
        v6 = a1[2].n128_u64[0];
        v7 = &v6[-v5];
        v8 = (v3 + 296);
        v9 = (v3 + 288);
        goto LABEL_18;
      }

      v4 = &a1[2].n128_u64[1];
      v5 = a1[2].n128_u64[1];
      v6 = a1[2].n128_u64[0];
      v7 = &v6[-v5];
      v8 = (v3 + 296);
      v9 = (v3 + 288);
      if (a1[7].n128_u8[11] == 1)
      {
LABEL_18:
        if (*v8 >= v7)
        {
          v15 = v7;
        }

        else
        {
          v15 = *v8;
        }

        v16 = *v9;
        if (*v9 <= v15)
        {
          v17 = &v15[v5];
          *v4 = &v15[v5];
          if (*(v3 + 308) == 1 && v15 < *v8)
          {
            a1[3].n128_u64[0] = v17;
          }

          if (v15 != v16)
          {
            v18 = a1[13].n128_u64[1] - 32;
            if (v18 < a1[13].n128_u64[0])
            {
              sub_10007C2E0(a1);
              v18 = a1[13].n128_u64[1] - 32;
            }

            *v18 = 7;
            *(v18 + 8) = v15;
            *(v18 + 16) = v3;
            *(v18 + 24) = v17;
            a1[13].n128_u64[1] = v18;
          }

          a1[5].n128_u64[1] = *(v3 + 16);
          return 1;
        }

LABEL_31:
        result = 0;
        *v4 = v6;
        return result;
      }

      v11 = *v9;
      if (v7 < *v9)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v4 = &a1[2].n128_u64[1];
      v5 = a1[2].n128_u64[1];
      v6 = a1[2].n128_u64[0];
      v11 = *(v3 + 288);
      if (&v6[-v5] < v11)
      {
        goto LABEL_31;
      }

      v8 = (v3 + 296);
    }

    v12 = (v5 + v11);
    *v4 = v5 + v11;
    if (v11 < *v8)
    {
      v13 = a1[13].n128_u64[1] - 32;
      if (v13 < a1[13].n128_u64[0])
      {
        sub_10007C2E0(a1);
        v13 = a1[13].n128_u64[1] - 32;
      }

      *v13 = 9;
      *(v13 + 8) = v11;
      *(v13 + 16) = v3;
      *(v13 + 24) = v12;
      a1[13].n128_u64[1] = v13;
      v6 = a1[2].n128_u64[0];
      v12 = a1[2].n128_u64[1];
    }

    a1[5].n128_u64[1] = *(v3 + 16);
    if (v12 == v6)
    {
      v14 = *(v3 + 280);
    }

    else
    {
      v14 = *(v3 + *v12 + 24);
    }

    return (v14 >> 1) & 1;
  }
}

uint64_t sub_10007CDE4(__n128 *a1)
{
  v2 = a1[5].n128_u64[1];
  v3 = *(v2 + 8);
  if (*(v2 + 288))
  {
    v4 = 0;
    while (1)
    {
      a1[5].n128_u64[1] = v3;
      result = sub_10007A990(a1);
      if (!result)
      {
        break;
      }

      if (++v4 >= *(v2 + 288))
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v4 = 0;
LABEL_7:
    if (*(v2 + 309) == 1 && ((a1[6].n128_u8[1] & 4) == 0 || a1[7].n128_u8[11] == 1))
    {
      while (v4 < *(v2 + 296))
      {
        a1[5].n128_u64[1] = v3;
        if (!sub_10007A990(a1))
        {
          break;
        }

        ++v4;
      }

      if (*(v2 + 308) == 1 && v4 < *(v2 + 296))
      {
        a1[3].n128_u64[0] = a1[2].n128_u64[1];
      }

      if (v4 != *(v2 + 288))
      {
        v10 = a1[2].n128_u64[1];
        v11 = a1[13].n128_u64[1] - 32;
        if (v11 < a1[13].n128_u64[0])
        {
          sub_10007C2E0(a1);
          v11 = a1[13].n128_u64[1] - 32;
        }

        *v11 = 7;
        *(v11 + 8) = v4;
        *(v11 + 16) = v2;
        *(v11 + 24) = v10;
        a1[13].n128_u64[1] = v11;
      }

      a1[5].n128_u64[1] = *(v2 + 16);
      return 1;
    }

    else
    {
      if (v4 < *(v2 + 296))
      {
        v6 = a1[2].n128_u64[1];
        v7 = a1[13].n128_u64[1] - 32;
        if (v7 < a1[13].n128_u64[0])
        {
          sub_10007C2E0(a1);
          v7 = a1[13].n128_u64[1] - 32;
        }

        *v7 = 8;
        *(v7 + 8) = v4;
        *(v7 + 16) = v2;
        *(v7 + 24) = v6;
        a1[13].n128_u64[1] = v7;
      }

      a1[5].n128_u64[1] = *(v2 + 16);
      v8 = a1[2].n128_u64[1];
      if (v8 == a1[2].n128_u64[0])
      {
        v9 = *(v2 + 280);
      }

      else
      {
        v9 = *(v2 + *v8 + 24);
      }

      return (v9 >> 1) & 1;
    }
  }

  return result;
}

void *sub_10007CF6C(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_10007D0F8(result, a2);
    }

    sub_10002C63C();
  }

  return result;
}

uint64_t sub_10007D080(uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_10007D260(a1, a2);
  }

  else
  {
    *v4 = *a2;
    sub_10007C3EC((v4 + 1), (a2 + 1));
    v4[6] = a2[6];
    result = (v4 + 7);
    a1[1] = (v4 + 7);
  }

  a1[1] = result;
  return result;
}

void sub_10007D0F8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_100025BBC();
}

uint64_t sub_10007D154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      result = sub_10007C3EC(a4 + v7 + 16, v6 + v7 + 16);
      *(a4 + v7 + 96) = *(v6 + v7 + 96);
      v7 += 112;
    }

    while (v8 + 112 != a3);
    while (v6 != a3)
    {
      result = sub_10007E4A8(v6 + 16);
      v6 += 112;
    }
  }

  return result;
}

void sub_10007D1E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 96;
    do
    {
      v5 = sub_10007E4A8(v5) - 112;
      v4 += 112;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007D20C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    sub_10007E4A8(i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10007D260(uint64_t *a1, _OWORD *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_10002C63C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_10007D0F8(a1, v6);
  }

  v7 = 112 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  sub_10007C3EC(v7 + 16, (a2 + 1));
  *(v7 + 96) = a2[6];
  *&v16 = v16 + 112;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_10007D154(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10007D20C(&v14);
  return v13;
}

void sub_10007D3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10007D20C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007D3EC(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    return 1;
  }

  while (1)
  {
    v7 = *v3;
    if (!*v3)
    {
      v9 = v3[4];
      *(a1 + 88) = *(v3 + 1);
      sub_10007D3EC(a1, v9, 0);
      v8 = *(a1 + 88);
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      break;
    }

    if (v7 == 6)
    {
      return 1;
    }

LABEL_5:
    v8 = *(v3 + 1);
    *(a1 + 88) = v8;
LABEL_13:
    v3 = v8;
    if (!v8)
    {
      return 1;
    }
  }

  if (v3[4] != a2)
  {
    sub_10007A61C(a1);
    v8 = *(a1 + 88);
    if (v8)
    {
      goto LABEL_13;
    }

    *(a1 + 228) = 1;
    *(a1 + 230) = 0;
      ;
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (!a3)
  {
    *(a1 + 88) = *(v3 + 1);
    return 1;
  }

  return sub_10007A61C(a1);
}

void sub_10007D510()
{
  v0.__vftable = 0xAAAAAAAAAAAAAAAALL;
  v0.__imp_.__imp_ = 0xAAAAAAAAAAAAAAAALL;
  std::logic_error::logic_error(&v0, "Attempt to access an uninitialized boost::match_results<> class.");
  sub_10007962C(&v0);
}

uint64_t sub_10007D580(uint64_t a1, char a2)
{
  v3 = *(a1 + 216);
  if ((a2 & 1) == 0)
  {
    sub_10007C264(*(a1 + 16), *(v3 + 16), *(v3 + 8), *(v3 + 8) == 0);
    sub_100079FD8(*(a1 + 16), *(v3 + 24), *(v3 + 8), *(v3 + 32), *(v3 + 8) == 0);
  }

  *(a1 + 216) = v3 + 40;
  return 1;
}

uint64_t sub_10007D5E8(uint64_t a1)
{
  *(a1 + 216) += 8;
  *(a1 + 88) = 0;
  return 0;
}

BOOL sub_10007D600(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  *(a1 + 88) = *(v2 + 8);
  *(a1 + 40) = *(v2 + 16);
  v3 = *(v2 + 24);
  *(a1 + 228) = v3 ^ a2 ^ 1;
  *(a1 + 216) = v2 + 32;
  *(a1 + 229) = 1;
  return v3 != a2;
}

uint64_t sub_10007D644(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 216);
  if ((a2 & 1) == 0)
  {
    *(a1 + 88) = *(v2 + 8);
    *(a1 + 40) = *(v2 + 16);
  }

  *(a1 + 216) = v2 + 24;
  *(a1 + 230) = a2 ^ 1;
  return a2;
}

uint64_t sub_10007D674(uint64_t a1)
{
  v1 = *(a1 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    **(v1 + 8) = v2;
  }

  *(a1 + 216) = v1 + 48;
  return 1;
}

uint64_t sub_10007D698(uint64_t a1)
{
  ++*(a1 + 224);
  v1 = *(a1 + 208);
  *(a1 + 208) = *(*(a1 + 216) + 8);
  v2 = sub_100079008();
  v3 = 0;
  while (1)
  {
    v4 = atomic_load(&v2[v3]);
    if (!v4)
    {
      atomic_compare_exchange_strong(&v2[v3], &v4, v1);
      if (!v4)
      {
        break;
      }
    }

    v3 += 8;
    if (v3 == 128)
    {
      operator delete(v1);
      return 1;
    }
  }

  return 1;
}

uint64_t sub_10007D704(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  if (a2)
  {
    *(a1 + 216) = v2 + 4;
    return 1;
  }

  else
  {
    v3 = v2[2];
    if (!v3[1])
    {
      sub_10011CBF8();
    }

    if (!v3[2])
    {
      sub_10011CBCC();
    }

    v4 = v2[1];
    v5 = v3[36];
    if ((*(a1 + 97) & 0x20) != 0 && *(a1 + 40) == *(a1 + 32))
    {
      *(a1 + 121) = 1;
    }

    if (v4 == v5)
    {
      sub_10011CBA0();
    }

    v6 = v2[3];
    v7 = v3 + 3;
    v8 = *(a1 + 104) + 1;
    v9 = (v6 - 1);
    v10 = v5 + 1;
    while (1)
    {
      *(a1 + 40) = v9;
      *(a1 + 104) = v8;
      if (v10 == v4)
      {
        break;
      }

      v11 = *v9--;
      ++v8;
      --v6;
      --v4;
      if ((*(v7 + v11) & 2) != 0)
      {
        v2[1] = v4;
        v2[3] = v6;
        goto LABEL_15;
      }
    }

    *(a1 + 216) = v2 + 4;
    if ((*(v7 + *v9) & 2) == 0)
    {
      return 1;
    }

LABEL_15:
    v12 = 0;
    *(a1 + 88) = v3[2];
  }

  return v12;
}

uint64_t sub_10007D7F0(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v6 = v3[2];
  if (*v6 != 22)
  {
    sub_10011CC24();
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    sub_10011CCD4();
  }

  if (!*(v6 + 16))
  {
    sub_10011CCA8();
  }

  if (*v7 != 5)
  {
    sub_10011CC50();
  }

  v8 = v3[1];
  if (v8 >= *(v6 + 296))
  {
    sub_10011CC7C();
  }

  *(a1 + 88) = v7;
  v9 = v3[3];
  *(a1 + 40) = v9;
  if (*(a1 + 32) == v9)
  {
LABEL_22:
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v9 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v6 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v10 = v6 + 24;
    v11 = v8 + 1;
    do
    {
      v12 = v11;
      if ((sub_10007A990(a1) & 1) == 0)
      {
        v4 = *(a1 + 216) + 32;
        goto LABEL_3;
      }

      ++*(a1 + 104);
      *(a1 + 88) = *(v6 + 8);
      v13 = *(v6 + 296);
      v9 = *(a1 + 32);
      v14 = *(a1 + 40);
      if (v12 >= v13 || v14 == v9)
      {
        break;
      }

      v11 = v12 + 1;
    }

    while ((*(v10 + *v14) & 2) == 0);
    if (v14 == v9)
    {
      goto LABEL_22;
    }

    if (v12 == v13)
    {
      *(a1 + 216) += 32;
      if ((*(v10 + *v14) & 2) == 0)
      {
        return 1;
      }
    }

    else
    {
      v3[1] = v12;
      v3[3] = v14;
    }
  }

  result = 0;
  *(a1 + 88) = *(v6 + 16);
  return result;
}

uint64_t sub_10007D970(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  if (!a2)
  {
    v5 = v2[1];
    v4 = v2[2];
    v6 = *(v4 + 296);
    if (v5 >= v6)
    {
      sub_10011CD00();
    }

    v7 = v2[3];
    *(a1 + 40) = v7;
    v8 = *(a1 + 32);
    if (v8 == v7)
    {
      v13 = v7;
    }

    else
    {
      v9 = *(a1 + 104) + 1;
      v10 = v7 + 1;
      v11 = v5 + 1;
      v12 = v7 + 1;
      do
      {
        v7 = v12;
        v13 = v10;
        v5 = v11;
        *(a1 + 40) = v10;
        *(a1 + 104) = v9;
        if (v11 >= v6)
        {
          break;
        }

        if (v10 == v8)
        {
          break;
        }

        ++v10;
        ++v9;
        ++v12;
        ++v11;
      }

      while ((*(v4 + 24 + *v13) & 2) == 0);
    }

    if (v5 < v6 && (*(v4 + 308) & 1) != 0)
    {
      *(a1 + 48) = v7;
    }

    if (v13 == v8)
    {
      *(a1 + 216) = v2 + 4;
      if ((*(a1 + 97) & 0x20) != 0 && v8 != *(a1 + 56))
      {
        *(a1 + 121) = 1;
      }

      if ((*(v4 + 280) & 2) == 0)
      {
        return 1;
      }
    }

    else if (v5 == v6)
    {
      *(a1 + 216) = v2 + 4;
      if ((*(v4 + *v13 + 24) & 2) == 0)
      {
        return 1;
      }
    }

    else
    {
      v2[1] = v5;
      v2[3] = v7;
    }

    v3 = 0;
    *(a1 + 88) = *(v4 + 16);
    return v3;
  }

  *(a1 + 216) = v2 + 4;
  return 1;
}

uint64_t sub_10007DAAC(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *(v6 + 8);
  *(a1 + 88) = v8;
  v9 = *(v8 + 24);
  v10 = v3[3];
  *(a1 + 40) = v10;
  if (*v6 != 23)
  {
    sub_10011CD2C();
  }

  v11 = *(v6 + 8);
  if (!v11)
  {
    sub_10011CDDC();
  }

  if (!*(v6 + 16))
  {
    sub_10011CDB0();
  }

  if (*v11 != 2)
  {
    sub_10011CD58();
  }

  v12 = *(v6 + 296);
  if (v7 >= v12)
  {
    sub_10011CD84();
  }

  if (*(a1 + 32) != v10)
  {
    LOBYTE(v13) = *v10;
    v14 = v7 + 1;
    while (1)
    {
      v7 = v14;
      if (*(a1 + 120) == 1)
      {
        LOBYTE(v13) = (*(**(**(a1 + 80) + 8) + 40))(*(**(a1 + 80) + 8), v13);
      }

      if (v9 != v13)
      {
        break;
      }

      v10 = (*(a1 + 40) + 1);
      *(a1 + 40) = v10;
      ++*(a1 + 104);
      *(a1 + 88) = *(v6 + 8);
      v12 = *(v6 + 296);
      if (v7 < v12 && v10 != *(a1 + 32))
      {
        v13 = *v10;
        v14 = v7 + 1;
        if ((*(v6 + 24 + v13) & 2) == 0)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v4 = *(a1 + 216) + 32;
    goto LABEL_3;
  }

LABEL_18:
  if (*(v6 + 308) == 1 && v7 < v12)
  {
    *(a1 + 48) = v10;
  }

  if (v10 == *(a1 + 32))
  {
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v10 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v6 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else if (v7 == v12)
  {
    *(a1 + 216) += 32;
    if ((*(v6 + *v10 + 24) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v3[1] = v7;
    v3[3] = v10;
  }

  result = 0;
  *(a1 + 88) = *(v6 + 16);
  return result;
}

uint64_t sub_10007DCA0(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *(v6 + 8);
  *(a1 + 88) = v8;
  v9 = v3[3];
  *(a1 + 40) = v9;
  if (*v6 != 24)
  {
    sub_10011CE08();
  }

  v10 = *(v6 + 8);
  if (!v10)
  {
    sub_10011CEB8();
  }

  if (!*(v6 + 16))
  {
    sub_10011CE8C();
  }

  if (*v10 != 15)
  {
    sub_10011CE34();
  }

  v11 = *(v6 + 296);
  if (v7 >= v11)
  {
    sub_10011CE60();
  }

  if (*(a1 + 32) != v9)
  {
    v12 = v8 + 16;
    LOBYTE(v13) = *v9;
    v14 = v7 + 1;
    while (1)
    {
      v7 = v14;
      if (*(a1 + 120) == 1)
      {
        LOBYTE(v13) = (*(**(**(a1 + 80) + 8) + 40))(*(**(a1 + 80) + 8), v13);
      }

      if (!*(v12 + v13))
      {
        break;
      }

      v9 = (*(a1 + 40) + 1);
      *(a1 + 40) = v9;
      ++*(a1 + 104);
      *(a1 + 88) = *(v6 + 8);
      v11 = *(v6 + 296);
      if (v7 < v11 && v9 != *(a1 + 32))
      {
        v13 = *v9;
        v14 = v7 + 1;
        if ((*(v6 + 24 + v13) & 2) == 0)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v4 = *(a1 + 216) + 32;
    goto LABEL_3;
  }

LABEL_18:
  if (*(v6 + 308) == 1 && v7 < v11)
  {
    *(a1 + 48) = v9;
  }

  if (v9 == *(a1 + 32))
  {
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v9 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v6 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else if (v7 == v11)
  {
    *(a1 + 216) += 32;
    if ((*(v6 + *v9 + 24) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v3[1] = v7;
    v3[3] = v9;
  }

  result = 0;
  *(a1 + 88) = *(v6 + 16);
  return result;
}

uint64_t sub_10007DE98(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *(v6 + 8);
  *(a1 + 88) = v8;
  v9 = v3[3];
  *(a1 + 40) = v9;
  if (*v6 != 25)
  {
    sub_10011CEE4();
  }

  v10 = *(v6 + 8);
  if (!v10)
  {
    sub_10011CF94();
  }

  if (!*(v6 + 16))
  {
    sub_10011CF68();
  }

  if (*v10 != 14)
  {
    sub_10011CF10();
  }

  v11 = *(v6 + 296);
  if (v7 >= v11)
  {
    sub_10011CF3C();
  }

  v12 = *(a1 + 32);
  if (v12 != v9)
  {
    v13 = v7 + 1;
    while (1)
    {
      v14 = **(a1 + 72);
      if (!v14)
      {
        sub_10011C820();
      }

      v7 = v13;
      v15 = sub_10007C75C(v9, v12, v8, v14, *(a1 + 120));
      v16 = *(a1 + 40);
      if (v16 == v15)
      {
        break;
      }

      v9 = v16 + 1;
      *(a1 + 40) = v16 + 1;
      ++*(a1 + 104);
      *(a1 + 88) = *(v6 + 8);
      v11 = *(v6 + 296);
      if (v7 < v11)
      {
        v12 = *(a1 + 32);
        if (v9 != v12)
        {
          v13 = v7 + 1;
          if ((*(v6 + 24 + *v9) & 2) == 0)
          {
            continue;
          }
        }
      }

      goto LABEL_17;
    }

    v4 = *(a1 + 216) + 32;
    goto LABEL_3;
  }

LABEL_17:
  if (*(v6 + 308) == 1 && v7 < v11)
  {
    *(a1 + 48) = v9;
  }

  if (v9 == *(a1 + 32))
  {
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v9 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v6 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else if (v7 == v11)
  {
    *(a1 + 216) += 32;
    if ((*(v6 + *v9 + 24) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v3[1] = v7;
    v3[3] = v9;
  }

  result = 0;
  *(a1 + 88) = *(v6 + 16);
  return result;
}

uint64_t sub_10007E060(void *a1, uint64_t a2)
{
  v2 = a1[27];
  if ((a2 & 1) == 0)
  {
    a1[5] = *(v2 + 16);
    a1[11] = *(v2 + 8);
    ++*(a1[16] + 24);
  }

  a1[27] = v2 + 24;
  return a2;
}

uint64_t sub_10007E098(uint64_t *a1, char a2)
{
  v3 = a1[27];
  if ((a2 & 1) == 0)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0u;
    v6 = 0u;
    memset(v7, 0, sizeof(v7));
    BYTE12(v8) = 1;
    sub_10007D080(a1 + 23, &v6);
    sub_10007E4A8(v7);
    v4 = a1[24];
    *(v4 - 112) = *(v3 + 8);
    *(v4 - 104) = *(v3 + 16);
    sub_100078D8C(v4 - 96, v3 + 104);
    *(a1[24] - 8) = a1[5];
    sub_100078D8C(a1[2], v3 + 24);
  }

  sub_10007E4A8(v3 + 104);
  sub_10007E4A8(v3 + 24);
  a1[27] = v3 + 184;
  return 1;
}

uint64_t sub_10007E1A4(uint64_t *a1, char a2)
{
  v3 = a1[27];
  if ((a2 & 1) == 0)
  {
    v4 = a1[24];
    if (a1[23] != v4)
    {
      sub_100078D8C(a1[2], v4 - 96);
      v5 = a1[24];
      v6 = v5 - 112;
      a1[5] = *(v5 - 8);
      sub_10007E4A8(v5 - 96);
      a1[24] = v6;
    }
  }

  a1[27] = v3 + 8;
  return 1;
}

uint64_t sub_10007E214(uint64_t a1, char a2)
{
  *(a1 + 216) += 8;
  while (1)
  {
    *(a1 + 228) = a2;
    *(a1 + 229) = 0;
      ;
    }

    if (!*(a1 + 88))
    {
      break;
    }

    if (*(a1 + 229) == 1)
    {
      *(a1 + 229) = 0;
      v4 = (*(a1 + 216) - 8);
      if (v4 < *(a1 + 208))
      {
        sub_10007C2E0(a1);
        v4 = (*(a1 + 216) - 8);
      }

      *v4 = 16;
      *(a1 + 216) = v4;
      break;
    }
  }

  *(a1 + 123) = 0;
  return 0;
}

uint64_t sub_10007E2CC(uint64_t a1, char a2)
{
  *(a1 + 216) += 8;
  *(a1 + 228) = a2;
  *(a1 + 229) = 0;
    ;
  }

  while (*(a1 + 88))
  {
    v4 = *(a1 + 230);
    *(a1 + 228) = a2;
    *(a1 + 229) = 0;
    if (v4)
    {
        ;
      }

      return 0;
    }

      ;
    }
  }

  return 0;
}

uint64_t sub_10007E3A0(uint64_t a1)
{
  v1 = *(a1 + 216);
  *(a1 + 120) = *(v1 + 8);
  *(a1 + 216) = v1 + 16;
  return 1;
}

void ***sub_10007E3BC(void ***a1)
{
  v2 = **a1;
  v3 = sub_100079008();
  v4 = 0;
  while (1)
  {
    v5 = atomic_load(&v3[v4]);
    if (!v5)
    {
      atomic_compare_exchange_strong(&v3[v4], &v5, v2);
      if (!v5)
      {
        break;
      }
    }

    v4 += 8;
    if (v4 == 128)
    {
      operator delete(v2);
      break;
    }
  }

  **a1 = 0;
  return a1;
}

uint64_t sub_10007E424(uint64_t a1)
{
  v4 = (a1 + 184);
  sub_100078940(&v4);
  v2 = *(a1 + 144);
  if (v2)
  {
    **(a1 + 136) = v2;
  }

  sub_1000781E0((a1 + 8), 0);
  return a1;
}

uint64_t sub_10007E4A8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10007E4E8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10007E5A0(result, a4);
  }

  return result;
}

void sub_10007E580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_1000131F8(va);
  _Unwind_Resume(a1);
}

void sub_10007E5A0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_10000BED4(a1, a2);
  }

  sub_10002C63C();
}

void *sub_10007E5DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v7 = a4;
  v8 = a4;
  v9[0] = a1;
  v9[1] = &v7;
  v9[2] = &v8;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v8 = v4;
  }

  LOBYTE(v10) = 1;
  sub_10007E690(v9);
  return v4;
}

uint64_t sub_10007E690(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10007E6C8(a1);
  }

  return a1;
}

void sub_10007E6C8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_10000786C(v3);
    }

    v1 -= 16;
  }
}

uint64_t sub_10007E77C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100184AA8;
  a2[1] = v2;
  return result;
}

void sub_10007E7A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  memset(__dst, 170, 24);
  if (*(v3 + 55) < 0)
  {
    sub_1000078D8(__dst, *(v3 + 32), *(v3 + 40));
  }

  else
  {
    *__dst = *(v3 + 32);
    __dst[2] = *(v3 + 48);
  }

  memset(__p, 170, 24);
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  sub_1000336EC();
}

void sub_10007E998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007E9E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007EA2C(uint64_t a1, uint64_t *a2, NSObject **a3, __int128 *a4, void *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = a1 + 8;
  v10 = *a3;
  *(v9 + 16) = *a3;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *a2;
  *a1 = *a2;
  *(a1 + *(v11 - 88)) = a2[1];
  *(a1 + 32) = 0;
  if (*(a4 + 23) < 0)
  {
    sub_1000078D8((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v12;
  }

  v13 = a5[1];
  *(a1 + 64) = *a5;
  *(a1 + 72) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 24);
  v16 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10007FEB8;
  block[3] = &unk_100184B88;
  block[4] = v9;
  block[5] = &v16;
  dispatch_sync(v14, block);
  return a1;
}

void sub_10007EBDC(_Unwind_Exception *a1)
{
  sub_10007FE8C(v2, 0);
  sub_100044430(v1);
  _Unwind_Resume(a1);
}

BOOL sub_10007EBFC(uint64_t a1)
{
  if (sqlite3_exec(*(a1 + 32), "PRAGMA journal_mode=WAL", 0, 0, 0))
  {
    v2 = *(a1 + 32);
    v3 = qword_100192D80;
    v4 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      if (v4)
      {
        sub_100118F88((a1 + 40), __p);
        v5 = v21;
        v6 = __p[0];
        v7 = sqlite3_errmsg(*(a1 + 32));
        v8 = __p;
        if (v5 < 0)
        {
          v8 = v6;
        }

        *buf = 136446466;
        v23 = v8;
        v24 = 2080;
        v25 = v7;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[Sqlite Store %{public}s] Failed to set journaling mode; %s", buf, 0x16u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else if (v4)
    {
      sub_100118F88((a1 + 40), __p);
      sub_10011CFC8(__p);
    }

    return 0;
  }

  else
  {
    v19 = 0;
    v9 = sqlite3_db_config(*(a1 + 32), 1012, &v19, 0);
    v10 = v9 == 0;
    if (v9)
    {
      v11 = *(a1 + 32);
      v12 = qword_100192D80;
      v13 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        if (v13)
        {
          sub_100118F88((a1 + 40), __p);
          v14 = v21;
          v15 = __p[0];
          v16 = sqlite3_errmsg(*(a1 + 32));
          v17 = __p;
          if (v14 < 0)
          {
            v17 = v15;
          }

          *buf = 136446466;
          v23 = v17;
          v24 = 2080;
          v25 = v16;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[Sqlite Store %{public}s] Failed to disable legacy alter table; %s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else if (v13)
      {
        sub_100118F88((a1 + 40), __p);
        sub_10011D01C(__p);
      }
    }
  }

  return v10;
}

void sub_10007EE3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10007EE48(uint64_t a1)
{
  v5 = 0;
  v1 = a1 + 8;
  v4[0] = &v5 + 3;
  v4[1] = a1;
  v4[2] = &v5 + 1;
  v4[3] = &v5 + 2;
  v4[4] = &v5;
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100080030;
  block[3] = &unk_100184BA8;
  block[4] = v1;
  block[5] = v4;
  dispatch_sync(v2, block);
  return _byteswap_ulong(v5);
}

void sub_10007EF2C(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v7 = a2;
  v3 = a1 + 8;
  v6[0] = a1;
  v6[1] = &v7;
  v4 = *(a1 + 24);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1000804A0;
  v8[3] = &unk_100184BC8;
  v8[4] = v3;
  v8[5] = v6;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v5;
  a3[1] = v5;
  v9 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000804CC;
  block[3] = &unk_100184BE8;
  block[4] = a3;
  block[5] = &v9;
  dispatch_sync(v4, block);
}

void sub_10007F028(uint64_t a1)
{
  v1 = a1 + 8;
  v3 = a1;
  v2 = *(a1 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100080548;
  v4[3] = &unk_100184C08;
  v4[4] = v1;
  v4[5] = &v3;
  v7 = -86;
  v5 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008818;
  block[3] = &unk_100184C28;
  block[4] = &v7;
  block[5] = &v5;
  dispatch_sync(v2, block);
}

uint64_t sub_10007F120(uint64_t a1)
{
  v1 = a1 + 8;
  v4 = a1;
  v2 = *(a1 + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100080554;
  v5[3] = &unk_100184C48;
  v5[4] = v1;
  v5[5] = &v4;
  v8 = -86;
  v6 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100008818;
  block[3] = &unk_100184C28;
  block[4] = &v8;
  block[5] = &v6;
  dispatch_sync(v2, block);
  return v8;
}

uint64_t sub_10007F21C(uint64_t a1)
{
  v1 = a1 + 8;
  v4 = a1;
  v2 = *(a1 + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10008056C;
  v5[3] = &unk_100184C68;
  v5[4] = v1;
  v5[5] = &v4;
  v8 = -1431655766;
  v6 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100080578;
  block[3] = &unk_100184C88;
  block[4] = &v8;
  block[5] = &v6;
  dispatch_sync(v2, block);
  return v8;
}

uint64_t sub_10007F318(uint64_t a1)
{
  v2 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v3 = *v2;
  }

  v4 = _sqlite3_integrity_check();
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = qword_100192D80;
    v7 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      if (v7)
      {
        sub_100118F88(v2, buf);
        sub_10011D070(buf);
      }

      return 1;
    }

    if (!v7)
    {
      return 1;
    }

    sub_100118F88(v2, v21);
    v8 = v22;
    v9 = *v21;
    v10 = sqlite3_errmsg(*(a1 + 32));
    v11 = v21;
    *buf = 136446722;
    if (v8 < 0)
    {
      v11 = v9;
    }

    *&buf[4] = v11;
    v24 = 1026;
    v25 = v4;
    v26 = 2080;
    v27 = v10;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Sqlite Store %{public}s] State database is corrupted! DB Integrity check failed. Status = %{public}d; %s", buf, 0x1Cu);
LABEL_15:
    if (v22 < 0)
    {
      v17 = *v21;
LABEL_28:
      operator delete(v17);
    }

    return 1;
  }

  v12 = sub_10007F5F4(a1);
  v13 = (*(*(a1 + *(*a1 - 88)) + 56))(a1 + *(*a1 - 88));
  if (v12 > v13)
  {
    v14 = v13;
    v15 = qword_100192D80;
    if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_FAULT))
    {
      return 1;
    }

    sub_100118F88(v2, v21);
    if (v22 >= 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = *v21;
    }

    *buf = 136446722;
    *&buf[4] = v16;
    v24 = 1026;
    v25 = v12;
    v26 = 1026;
    LODWORD(v27) = v14;
    _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "[Sqlite Store %{public}s] Stored database version is greater than expected version (Stored Version: V%{public}d, Expected Version: V%{public}d)?!!", buf, 0x18u);
    goto LABEL_15;
  }

  if (!v12)
  {
    v19 = qword_100192D80;
    if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    sub_100118F88(v2, buf);
    v20 = SBYTE3(v27) >= 0 ? buf : *buf;
    *v21 = 136446210;
    *&v21[4] = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[State Store %{public}s] Stored config database version is not currently set", v21, 0xCu);
    if ((SBYTE3(v27) & 0x80000000) == 0)
    {
      return 1;
    }

    v17 = *buf;
    goto LABEL_28;
  }

  return 0;
}

void sub_10007F5E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10007F5F4(uint64_t a1)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  sub_10007F8D4(a1, "PRAGMA user_version;", 0, &v20);
  if (!v20)
  {
    v3 = *(a1 + 32);
    v4 = qword_100192D80;
    v5 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      if (v5)
      {
        sub_100118F88((a1 + 40), __p);
        sub_10011D120(__p);
      }

      goto LABEL_20;
    }

    if (v5)
    {
      sub_100118F88((a1 + 40), __p);
      v6 = v19;
      v7 = __p[0];
      v8 = sqlite3_errmsg(*(a1 + 32));
      v9 = __p;
      if (v6 < 0)
      {
        v9 = v7;
      }

      *buf = 136446466;
      v22 = v9;
      v23 = 2080;
      v24 = v8;
      v10 = "[Sqlite Store %{public}s] Error preparing database version query; %s";
      goto LABEL_14;
    }

LABEL_20:
    v2 = 0;
    goto LABEL_21;
  }

  if (sub_10000BE48(a1, &v20) != 100)
  {
    v11 = *(a1 + 32);
    v4 = qword_100192D80;
    v12 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v11)
    {
      if (v12)
      {
        sub_100118F88((a1 + 40), __p);
        sub_10011D0CC(__p);
      }

      goto LABEL_20;
    }

    if (v12)
    {
      sub_100118F88((a1 + 40), __p);
      v13 = v19;
      v14 = __p[0];
      v15 = sqlite3_errmsg(*(a1 + 32));
      v16 = __p;
      if (v13 < 0)
      {
        v16 = v14;
      }

      *buf = 136446466;
      v22 = v16;
      v23 = 2080;
      v24 = v15;
      v10 = "[Sqlite Store %{public}s] Failed to retrieve database version query; %s";
LABEL_14:
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v2 = sub_10007F898(a1, &v20, 0);
LABEL_21:
  sub_10007FC24(&v20, 0);
  return v2;
}

void sub_10007F820(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10007F858(int a1, sqlite3_stmt **a2, int a3, double *a4, void *a5)
{
  result = sqlite3_bind_double(*a2, a3, *a4);
  *a5 += 8;
  return result;
}

uint64_t sub_10007F898(uint64_t a1, sqlite3_stmt **a2, int iCol)
{
  result = sqlite3_column_int(*a2, iCol);
  *(a1 + 88) += 4;
  return result;
}

sqlite3_stmt **sub_10007F8D4@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, int a3@<W2>, sqlite3_stmt **a4@<X8>)
{
  *a4 = 0;
  result = *(a1 + 32);
  if (result)
  {
    v7 = 0;
    if (a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    result = sqlite3_prepare_v3(result, a2, -1, v6, &v7, 0);
    if (!result)
    {
      return sub_10007FC24(a4, v7);
    }
  }

  return result;
}

void sub_10007F964(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

BOOL sub_10007F970(uint64_t a1, int a2)
{
  v4 = qword_100192D80;
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
  {
    v5 = __p;
    sub_100118F88((a1 + 40), __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      v5 = __p[0];
    }

    v6 = sub_10007F5F4(a1);
    *buf = 136446722;
    *&buf[4] = v5;
    *&buf[12] = 1026;
    *&buf[14] = v6;
    *&buf[18] = 1026;
    *&buf[20] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Sqlite Store %{public}s] DATABASE MIGRATE VERSION: Version migration from schema version V%{public}d to V%{public}d", buf, 0x18u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  memset(__p, 170, 24);
  std::to_string(&v23, a2);
  v7 = std::string::insert(&v23, 0, "PRAGMA user_version = ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v7->__r_.__value_.__l + 2);
  *buf = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(buf, ";");
  v10 = *&v9->__r_.__value_.__l.__data_;
  __p[2] = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = sqlite3_exec(*(a1 + 32), v11, 0, 0, 0);
  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = qword_100192D80;
    v15 = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v15)
      {
        sub_100118F88((a1 + 40), &v23);
        v16 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
        v17 = v23.__r_.__value_.__r.__words[0];
        v18 = sqlite3_errmsg(*(a1 + 32));
        v19 = &v23;
        *buf = 136446722;
        if (v16 < 0)
        {
          v19 = v17;
        }

        *&buf[4] = v19;
        *&buf[12] = 1026;
        *&buf[14] = a2;
        *&buf[18] = 2080;
        *&buf[20] = v18;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[Sqlite Store %{public}s] Failed to update schema version to V%{public}d; %s", buf, 0x1Cu);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }
      }
    }

    else if (v15)
    {
      sub_100118F88((a1 + 40), buf);
      sub_10011D174(buf);
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  return v12 == 0;
}

void sub_10007FC18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

sqlite3_stmt **sub_10007FC24(sqlite3_stmt **result, sqlite3_stmt *a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_10005D06C(result, v3);
  }

  return result;
}

BOOL sub_10007FC50(uint64_t a1)
{
  if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
  {
    sub_100118F88((a1 + 40), v19);
    sub_10011D1D0(v19);
  }

  v2 = *(a1 + 32);
  if (_sqlite3_db_truncate())
  {
    v3 = *(a1 + 32);
    v4 = qword_100192D80;
    result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      if (!result)
      {
        return result;
      }

      sub_100118F88((a1 + 40), __p);
      sub_10011D224(__p);
      return 0;
    }

    if (!result)
    {
      return result;
    }

    sub_100118F88((a1 + 40), __p);
    v6 = v18;
    v7 = __p[0];
    v8 = sqlite3_errmsg(*(a1 + 32));
    v9 = __p;
    if (v6 < 0)
    {
      v9 = v7;
    }

    *buf = 136446466;
    v21 = v9;
    v22 = 2080;
    v23 = v8;
    v10 = "[Sqlite Store %{public}s] Failed to truncate database during clear; %s";
    goto LABEL_17;
  }

  if (*(a1 + 63) < 0)
  {
    v11 = *(a1 + 40);
  }

  if (!_sqlite3_integrity_check())
  {
    return sub_10007EBFC(a1);
  }

  v12 = *(a1 + 32);
  v4 = qword_100192D80;
  result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
  if (v12)
  {
    if (!result)
    {
      return result;
    }

    sub_100118F88((a1 + 40), __p);
    v13 = v18;
    v14 = __p[0];
    v15 = sqlite3_errmsg(*(a1 + 32));
    v16 = __p;
    if (v13 < 0)
    {
      v16 = v14;
    }

    *buf = 136446466;
    v21 = v16;
    v22 = 2080;
    v23 = v15;
    v10 = "[Sqlite Store %{public}s] Failed to check database integrity after database clear; %s";
LABEL_17:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  if (!result)
  {
    return result;
  }

  sub_100118F88((a1 + 40), __p);
  sub_10011D278(__p);
  return 0;
}

void sub_10007FE80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

sqlite3 **sub_10007FE8C(sqlite3 **result, sqlite3 *a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_10005D05C(result, v3);
  }

  return result;
}

BOOL sub_10007FEB8(uint64_t a1)
{
  v1 = **(a1 + 40);
  ppDb = 0;
  v2 = (v1 + 40);
  if (*(v1 + 63) < 0)
  {
    v2 = *(v1 + 40);
  }

  v3 = sqlite3_open_v2(v2, &ppDb, 6, 0);
  sub_10007FE8C((v1 + 32), ppDb);
  if (v3)
  {
    v4 = qword_100192D80;
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
    {
      sub_100118F88((v1 + 40), __p);
      v6 = v11;
      v7 = __p[0];
      v8 = sqlite3_errstr(v3);
      v9 = __p;
      *buf = 136446722;
      if (v6 < 0)
      {
        v9 = v7;
      }

      v14 = v9;
      v15 = 1024;
      v16 = v3;
      v17 = 2082;
      v18 = v8;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[Sqlite Store %{public}s] Failed to open database; err=%d (%{public}s)", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return sub_10007EBFC(v1);
}

void sub_10008000C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100080030(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 8);
  v19 = 0xAAAAAAAAAAAAAAAALL;
  sub_10000BE98(&v19, "com.apple.analyticsd.database-migration");
  v3 = sub_10007F318(v2);
  **v1 = v3;
  if (v3)
  {
    v4 = qword_100192D80;
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
    {
      sub_100118F88((v2 + 40), __p);
      v5 = v26 >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Sqlite Store %{public}s] ## DATABASE WIPE: Attempting wipe", buf, 0xCu);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(*__p);
      }
    }

    v6 = sub_10007FC50(v2);
    **(v1 + 16) = v6;
    v7 = qword_100192D80;
    if (!v6)
    {
      if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        sub_100118F88((v2 + 40), __p);
        sub_10011D2CC(__p);
      }

      return sub_10001C368(&v19);
    }

    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
    {
      sub_100118F88((v2 + 40), __p);
      v8 = v26 >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Sqlite Store %{public}s] ## DATABASE WIPE: Wipe succeeded", buf, 0xCu);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v9 = sub_10007F5F4(v2);
  v10 = (*(*(v2 + *(*v2 - 88)) + 56))(v2 + *(*v2 - 88));
  **(v1 + 24) = v9 != v10;
  if (v9 != v10)
  {
    v11 = v10;
    v12 = qword_100192D80;
    if (os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
    {
      sub_100118F88((v2 + 40), buf);
      v13 = v21 >= 0 ? buf : *buf;
      *__p = 136446722;
      *&__p[4] = v13;
      v23 = 1026;
      v24 = v9;
      v25 = 1026;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Sqlite Store %{public}s] ## DATABASE MIGRATION: Attempting migration (Stored version: V%{public}d, Expected version: V%{public}d)", __p, 0x18u);
      if (v21 < 0)
      {
        operator delete(*buf);
      }
    }

    **(v1 + 32) = (*(*(v2 + *(*v2 - 88)) + 64))(v2 + *(*v2 - 88));
    v14 = sub_10007F5F4(v2);
    v15 = qword_100192D80;
    if (**(v1 + 32))
    {
      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_DEFAULT))
      {
        return sub_10001C368(&v19);
      }

      sub_100118F88((v2 + 40), buf);
      if (v21 >= 0)
      {
        v16 = buf;
      }

      else
      {
        v16 = *buf;
      }

      *__p = 136446722;
      *&__p[4] = v16;
      v23 = 1026;
      v24 = v14;
      v25 = 1026;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Sqlite Store %{public}s] ## DATABASE MIGRATION: Migration complete (Stored version: V%{public}d, Expected version: V%{public}d)", __p, 0x18u);
    }

    else
    {
      if (!os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR))
      {
        return sub_10001C368(&v19);
      }

      sub_100118F88((v2 + 40), buf);
      if (v21 >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      *__p = 136446722;
      *&__p[4] = v18;
      v23 = 1026;
      v24 = v14;
      v25 = 1026;
      v26 = v11;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[Sqlite Store %{public}s] ## DATABASE MIGRATION: Migration failed (Stored version: V%{public}d, Expected version: V%{public}d)", __p, 0x18u);
    }

    if (v21 < 0)
    {
      operator delete(*buf);
    }
  }

  return sub_10001C368(&v19);
}

void sub_100080470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001C368(va);
  _Unwind_Resume(a1);
}

double sub_1000804A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *v2;
  v4 = v2[1];
  v6 = *(v3 + 80);
  v7 = *(v3 + 96);
  v5 = (v3 + 80);
  *a2 = v6;
  *(a2 + 16) = vextq_s8(v7, v7, 8uLL);
  if (*v4 == 1)
  {
    *&v6 = 0;
    *v5 = 0u;
    v5[1] = 0u;
  }

  return *&v6;
}

double sub_1000804CC(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v5);
  v2 = *(a1 + 32);
  result = *v5;
  v4 = v5[1];
  *v2 = v5[0];
  v2[1] = v4;
  return result;
}

uint64_t sub_100080578(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void *sub_1000805B4(void *result, uint64_t a2, int a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  *a2 = a4;
  *(a2 + 4) = v5;
  *(a2 + 12) = 1026;
  *(a2 + 14) = a3;
  return result;
}

uint64_t sub_1000805F8(uint64_t a1)
{
  v2 = *a1;
  if (v2 != -1)
  {
    munmap(v2, *(a1 + 8));
    *a1 = -1;
  }

  return a1;
}

FILE *sub_100080640@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  result = fopen(a1, "rb");
  v4 = result;
  if (result)
  {
    v5 = fileno(result);
    if (v5 < 0)
    {
      goto LABEL_4;
    }

    v6 = v5;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v10.st_blksize = v7;
    *v10.st_qspare = v7;
    v10.st_birthtimespec = v7;
    *&v10.st_size = v7;
    v10.st_mtimespec = v7;
    v10.st_ctimespec = v7;
    *&v10.st_uid = v7;
    v10.st_atimespec = v7;
    *&v10.st_dev = v7;
    if (fstat(v5, &v10) || (st_size = v10.st_size, v9 = mmap(0, v10.st_size, 1, 1025, v6, 0), v9 == -1))
    {
LABEL_4:
      *a2 = -1;
      a2[1] = 0;
    }

    else
    {
      *a2 = v9;
      a2[1] = st_size;
    }

    return fclose(v4);
  }

  else
  {
    *a2 = -1;
    a2[1] = 0;
  }

  return result;
}

void sub_100080730(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void *sub_10008073C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = xpc_get_type(*a1);
  if (result != &_xpc_type_null && (result = xpc_get_type(*a1), result == &_xpc_type_shmem))
  {
    v7 = 0;
    result = xpc_shmem_map(*a1, &v7);
    v5 = v7;
    if (v7 != 0 && result != 0)
    {
      v6 = *(a1 + 8);
    }

    else
    {
      v5 = -1;
      v6 = 0;
    }

    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    *a2 = -1;
    a2[1] = 0;
  }

  return result;
}

void sub_100080808(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100080AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WiFiStateRelay;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *sub_100080AF8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8])
  {
    [result deregisterForCWEventTypes];
    [*(*(a1 + 32) + 64) invalidate];
    result = *(a1 + 32);
  }

  if (result[2])
  {

    return [result teardownSCDynamicStore];
  }

  return result;
}

id sub_100081004(uint64_t a1)
{
  [*(a1 + 32) refreshWiFiLQM];
  v2 = *(a1 + 32);

  return [v2 refreshWiFiRadioTech];
}

void sub_1000810C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_100081378(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_10008139C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if ([v3 type] - 1 < 3)
    {
      if (WeakRetained)
      {
        [WeakRetained getQueue];
        v5 = v9;
      }

      else
      {
        v5 = 0;
        v9 = 0;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000814E0;
      block[3] = &unk_100184CB0;
      v8 = WeakRetained;
      dispatch_async(v5, block);
      v6 = v9;
      v9 = 0;
    }
  }
}

id sub_1000814E0(uint64_t a1)
{
  [*(a1 + 32) refreshWiFiLQM];
  v2 = *(a1 + 32);

  return [v2 refreshWiFiRadioTech];
}

void sub_1000815D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000816F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100081734(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(__dst, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000078D8(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

std::string *sub_1000817A4(std::string *a1, std::string::value_type **a2)
{
  v3 = *a2;
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::assign(a1, v3);
  }

  else
  {
    sub_10000459C(a1, v3);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

void *sub_100081A48(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100081B7C(v6, v10);
    }

    sub_10002C63C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_100081B7C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100007BA0(a1, a2);
  }

  sub_10002C63C();
}

void sub_100081BB8()
{
  v0 = objc_autoreleasePoolPush();
  sub_10000459C(byte_100192B30, "wiFiRadioTech");
  __cxa_atexit(&std::string::~string, byte_100192B30, &_mh_execute_header);
  sub_10000459C(byte_100192B48, "wiFiLQM");
  __cxa_atexit(&std::string::~string, byte_100192B48, &_mh_execute_header);
  sub_10000459C(byte_100192B60, "OFF");
  __cxa_atexit(&std::string::~string, byte_100192B60, &_mh_execute_header);
  sub_10000459C(byte_100192B78, "DISCONNECTED");
  __cxa_atexit(&std::string::~string, byte_100192B78, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_100081DF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000786C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100081E20(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[KernelClient] Starting up kernel listener.", buf, 2u);
  }

  a1[1] = a2;
  if (a2)
  {
    v7 = *a3;
    v8 = a3[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = a1[40];
    a1[39] = v7;
    a1[40] = v8;
    if (v9)
    {
      sub_10000786C(v9);
      v7 = a1[39];
    }

    if (v7)
    {
      v10 = sub_10009BB20(a1, a1[1]);
      if (v10)
      {
        return 1;
      }

      sub_10011D490(&qword_100192DB8, v10);
    }

    else
    {
      sub_10011D520(&qword_100192DB8);
    }
  }

  else
  {
    sub_10011D59C(&qword_100192DB8);
  }

  v12 = qword_100192DB8;
  v13 = os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v13)
  {
    v14[0] = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[KernelClient] initWithCFRunLoop Failed", v14, 2u);
    return 0;
  }

  return result;
}

void sub_100081F90(uint64_t a1, io_service_t a2)
{
  v4 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[KernelClient] CoreAnalyticsClient::servicePublished", &v8, 2u);
  }

  if (a2)
  {
    v5 = sub_1000820B0(a1, a2);
  }

  else
  {
    sub_10011D618(&qword_100192DB8);
    v5 = v8;
  }

  v6 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
  {
    v7 = mach_error_string(v5);
    v8 = 136446210;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[KernelClient] CoreAnalyticsClient::servicePublished done %{public}s", &v8, 0xCu);
  }
}

uint64_t sub_1000820B0(uint64_t a1, io_service_t a2)
{
  v4 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[KernelClient] CoreAnalyticsClient::Start", v12, 2u);
  }

  if (a2)
  {
    *(a1 + 276) = a2;
    v5 = IOServiceOpen(a2, mach_task_self_, 0, (a1 + 272));
    if (v5)
    {
      sub_10011D6A0(&qword_100192DB8, v5);
    }

    else
    {
      v6 = sub_1000823F0(a1);
      if (!v6)
      {
        *(a1 + 304) = dispatch_semaphore_create(0);
        v7 = qword_100192DB8;
        if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[KernelClient] CoreAnalyticsClient::Start complete", v12, 2u);
        }

        return 0;
      }

      sub_10011D730(&qword_100192DB8, v6);
    }
  }

  else
  {
    sub_10011D7C0(&qword_100192DB8);
  }

  v8 = *v12;
  v10 = *(a1 + 272);
  if (v10)
  {
    IOServiceClose(v10);
    *(a1 + 272) = 0;
  }

  v11 = *(a1 + 304);
  if (v11)
  {
    dispatch_release(v11);
    *(a1 + 304) = 0;
  }

  return v8;
}

void sub_100082238(uint64_t a1)
{
  sub_1000822D4(a1);
  v1 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "[KernelClient] CoreAnalyticsClient::serviceTerminated completed", v2, 2u);
  }
}

uint64_t sub_1000822D4(uint64_t a1)
{
  v2 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[KernelClient] CoreAnalyticsClient::Stop", buf, 2u);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    mach_port_mod_refs(mach_task_self_, v3, 1u, -1);
    *(a1 + 88) = 0;
  }

  v4 = *(a1 + 304);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 304) = 0;
  }

  *(a1 + 276) = 0;
  v5 = qword_100192DB8;
  if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[KernelClient]  CoreAnalyticsClient::Stop complete", v7, 2u);
  }

  return 0;
}

uint64_t sub_1000823F0(uint64_t a1)
{
  ofSize = 0;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  NotificationPort = IODataQueueAllocateNotificationPort();
  *(a1 + 88) = NotificationPort;
  if (!NotificationPort)
  {
    sub_10011DA10();
LABEL_17:
    v6 = v15;
    goto LABEL_18;
  }

  v4 = dispatch_queue_create("ControllerResponseQueue", v2);
  *(a1 + 280) = v4;
  if (!v4)
  {
    sub_10011D988();
    goto LABEL_17;
  }

  v5 = IOConnectSetNotificationPort(*(a1 + 272), 0, *(a1 + 88), 0);
  if (v5)
  {
    sub_10011D854(v5);
    goto LABEL_17;
  }

  v6 = 3758097086;
  v7 = IONotificationPortCreate(kIOMainPortDefault);
  *(a1 + 96) = v7;
  if (v7)
  {
    v8 = dispatch_queue_create("ControllerNotificationQueue", v2);
    *(a1 + 288) = v8;
    if (v8)
    {
      IONotificationPortSetDispatchQueue(*(a1 + 96), v8);
      v9 = IOServiceAddInterestNotification(*(a1 + 96), *(a1 + 276), "IOGeneralInterest", sub_100082610, a1, (a1 + 104));
      if (v9)
      {
        v6 = v9;
        goto LABEL_18;
      }

      v10 = IOConnectMapMemory(*(a1 + 272), 0, mach_task_self_, (a1 + 72), &ofSize, 1u);
      if (v10)
      {
        sub_10011D854(v10);
      }

      else
      {
        v11 = dispatch_source_create(&_dispatch_source_type_mach_recv, *(a1 + 88), 0, *(a1 + 280));
        *(a1 + 296) = v11;
        if (v11)
        {
          dispatch_set_context(v11, a1);
          dispatch_source_set_event_handler_f(*(a1 + 296), sub_100011C7C);
          dispatch_source_set_cancel_handler_f(*(a1 + 296), sub_100082618);
          dispatch_resume(*(a1 + 296));
          return 0;
        }

        sub_10011D900();
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  v13 = *(a1 + 88);
  if (v13)
  {
    mach_port_mod_refs(mach_task_self_, v13, 1u, -1);
    *(a1 + 88) = 0;
  }

  return v6;
}

void sub_10008261C(uint64_t a1)
{
  v2 = *(a1 + 280);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 280) = 0;
  }

  v3 = *(a1 + 288);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 288) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    IOConnectUnmapMemory(*(a1 + 272), 0, mach_task_self_, v4);
    *(a1 + 72) = 0;
  }

  v5 = *(a1 + 272);
  if (v5)
  {
    if (*(a1 + 96))
    {
      IONotificationPortDestroy(*(a1 + 96));
      v5 = *(a1 + 272);
    }

    IOServiceClose(v5);
    *(a1 + 96) = 0;
    *(a1 + 272) = 0;
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    mach_port_mod_refs(mach_task_self_, v6, 1u, -1);
    *(a1 + 88) = 0;
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    IONotificationPortDestroy(v7);
  }

  *(a1 + 276) = 0;
}

void sub_1000826D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = qword_100192DB8;
    if (os_log_type_enabled(qword_100192DB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[KernelClient] Received notice of data availability.", buf, 2u);
    }

    v4 = *(a1 + 280);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000827C4;
    block[3] = &unk_100184D20;
    block[4] = a1;
    dispatch_sync(v4, block);
  }
}

void *sub_1000827CC(void *a1)
{
  *a1 = off_100184D50;
  v2 = a1[40];
  if (v2)
  {
    sub_10000786C(v2);
  }

  return sub_10009BA34(a1);
}

void sub_100082828(void *a1)
{
  *a1 = off_100184D50;
  v2 = a1[40];
  if (v2)
  {
    sub_10000786C(v2);
  }

  sub_10009BA34(a1);

  operator delete();
}

void sub_100082898(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL sub_1000828D4(NSObject **a1)
{
  v2 = *a1;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000828F0@<W0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 128);

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

BOOL sub_100082918(NSObject **a1)
{
  v2 = *a1;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void sub_1000829A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000829B4(uint64_t a1@<X0>, const char **a2@<X1>, __int128 *a3@<X8>)
{
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  sub_1000C1670((a1 + 32), a2, &v17);
  if (!v17)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    goto LABEL_21;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v17 + 16))(&v15);
  v26 = "parentUuid";
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v5;
  v24 = v5;
  sub_10000BD10(&v15, &v26, &v23);
  v18 = &v15;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0x8000000000000000;
  sub_10000DCFC(&v18);
  if (sub_10000DD7C(&v23, &v18))
  {
    v6 = sub_100016CD8();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = sub_10000DB44(&v23);
  }

  if (*v6 != 3 || !*(v6 + 8))
  {
LABEL_10:
    v26 = "builtOnDate";
    v25 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = v8;
    v24 = v8;
    sub_10000BD10(&v15, &v26, &v23);
    v18 = &v15;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0x8000000000000000;
    sub_10000DCFC(&v18);
    if (sub_10000DD7C(&v23, &v18))
    {
      v9 = sub_100016CD8();
      if (!v9)
      {
LABEL_18:
        v7 = "base config does not have builtOnDate?!";
        goto LABEL_19;
      }
    }

    else
    {
      v9 = sub_10000DB44(&v23);
    }

    if (*v9 != 3)
    {
      goto LABEL_18;
    }

    v10 = *(v9 + 8);
    if (!v10)
    {
      goto LABEL_18;
    }

    if (*(v10 + 23) < 0)
    {
      sub_1000078D8(&__p, *v10, *(v10 + 1));
    }

    else
    {
      v11 = *v10;
      __p.__r_.__value_.__r.__words[2] = *(v10 + 2);
      *&__p.__r_.__value_.__l.__data_ = v11;
    }

    sub_100009600(&__p);
    v13 = v12;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v13)
      {
        goto LABEL_27;
      }
    }

    else if (v12)
    {
LABEL_27:
      *a3 = v17;
      a3 = &v17;
      goto LABEL_20;
    }

    v7 = "base config builtOnDate could not be parsed";
    goto LABEL_19;
  }

  v7 = "parent config has a parentUuid but it should NOT!";
LABEL_19:
  *a2 = v7;
LABEL_20:
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_10000298C(&v15);
  sub_1000048FC(&v16, v15);
LABEL_21:
  if (*(&v17 + 1))
  {
    sub_10000786C(*(&v17 + 1));
  }
}

void sub_100082C10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100082C20(uint64_t a1)
{
  sub_100033CF4(a1);

  operator delete();
}

void *sub_100082CCC(void *a1, __int128 *a2, __n128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100184DD8;
  sub_1000337AC((a1 + 3), a2, a3);
  a1[3] = &off_100184D98;
  return a1;
}

void sub_100082D64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100184DD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100082DC4(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (os_variant_is_darwinos())
  {
    v2 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[AppUsage] WARNING: Ignoring AppUsage::iteratePayloads on darwinOS.", buf, 2u);
    }

    v3 = *(v10 + 24);
  }

  else
  {
    if (qword_100192B98 != -1)
    {
      sub_10011DAD8();
    }

    v4 = qword_100192B90;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100082FA0;
    v6[3] = &unk_100184E40;
    v8 = &v9;
    v7 = v1;
    dispatch_sync(v4, v6);
    v3 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);

  return v3 & 1;
}

void sub_100082F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_100082F60(id a1)
{
  qword_100192B90 = dispatch_queue_create("analyticsd.AppUsageQueue", 0);

  _objc_release_x1();
}

void sub_100082FA0(uint64_t a1)
{
  v1 = sub_1000D4950();
  if (v1 <= 0.0)
  {
    v16 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_ERROR))
    {
      sub_10011DB00(v16);
    }
  }

  else
  {
    v2 = v1;
    v54 = +[NSDate now];
    [v54 timeIntervalSince1970];
    v4 = v3;
    if (v3 - v2 > 86400.0)
    {
      v2 = v3 + -86400.0;
      v5 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_DEBUG))
      {
        sub_10011DB70(v5);
      }
    }

    v6 = [NSDate dateWithTimeIntervalSince1970:v2];
    v7 = *(a1 + 32);
    v55 = v6;
    v59 = v54;
    v58 = v7;
    if (objc_opt_class())
    {
      v56 = objc_opt_new();
      v8 = +[_DKSystemEventStreams appInFocusStream];
      v73 = v8;
      v9 = [NSArray arrayWithObjects:&v73 count:1];
      [v56 setEventStreams:v9];

      v10 = [_DKQuery predicateForEventsIntersectingDateRangeFrom:v55 to:v59];
      [v56 setPredicate:v10];

      v11 = [_DKQuery startDateSortDescriptorAscending:1];
      v72[0] = v11;
      v12 = [_DKQuery endDateSortDescriptorAscending:1];
      v72[1] = v12;
      v13 = [NSArray arrayWithObjects:v72 count:2];
      [v56 setSortDescriptors:v13];

      v14 = +[_DKKnowledgeStore knowledgeStore];
      v63 = 0;
      v51 = [v14 executeQuery:v56 error:&v63];
      v53 = v63;

      v52 = v53 == 0;
      if (v53)
      {
        obj = qword_100192D38;
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          v15 = [v53 description];
          sub_10011DBE0(v15, buf, obj);
        }
      }

      else
      {
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        obj = v51;
        v18 = [obj countByEnumeratingWithState:&v68 objects:buf count:16];
        if (v18)
        {
          v61 = *v69;
          *&v19 = 138412546;
          v50 = v19;
          while (2)
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v69 != v61)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v68 + 1) + 8 * i);
              v22 = [v21 startDate];
              if (!v22 || ([v21 endDate], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, v22, v24))
              {
                v29 = qword_100192D38;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  v31 = [v21 stringValue];
                  sub_10011DCA8(v31, v65, &v66, v29);
                }
              }

              else
              {
                v25 = [v21 endDate];
                v26 = [v21 startDate];
                [v25 timeIntervalSinceDate:v26];
                v28 = v27;

                if (v28 >= 0.0)
                {
                  v32 = [v21 endDate];
                  [v59 timeIntervalSinceDate:v32];
                  v34 = v33 < 0.0;

                  if (!v34)
                  {
                    v35 = [v21 stringValue];
                    v36 = [v35 copy];

                    if ([v36 containsString:@"/"])
                    {
                      [v36 lastPathComponent];
                      objc_claimAutoreleasedReturnValue();
                      v37 = 0;
                    }

                    else
                    {
                      v37 = v36;
                    }

                    v38 = [v21 metadata];
                    v39 = +[_DKApplicationMetadataKey dyldPlatform];
                    [v38 objectForKeyedSubscript:v39];
                    objc_claimAutoreleasedReturnValue();

                    v40 = [v21 metadata];
                    v41 = +[_DKApplicationMetadataKey isNativeArchitecture];
                    [v40 objectForKeyedSubscript:v41];
                    objc_claimAutoreleasedReturnValue();

                    v42 = [v21 metadata];
                    v43 = +[_DKApplicationMetadataKey shortVersionString];
                    [v42 objectForKeyedSubscript:v43];
                    objc_claimAutoreleasedReturnValue();

                    v44 = [v21 metadata];
                    v45 = +[_DKApplicationMetadataKey exactBundleVersion];
                    [v44 objectForKeyedSubscript:v45];
                    objc_claimAutoreleasedReturnValue();

                    *v64 = 0xAAAAAAAAAAAAAA00;
                    *&v64[8] = 0;
                    sub_10000298C(v64);
                    sub_10000298C(v64);
                    if (v37)
                    {
                      v46 = v37;
                      [v37 UTF8String];
                    }

                    sub_10001AAEC(v62);
                  }

                  v47 = qword_100192D38;
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                  {
                    v48 = [v21 stringValue];
                    v49 = [v21 endDate];
                    sub_10011DC38(v48, v49, v64, v47);
                  }

                  goto LABEL_39;
                }

                v29 = qword_100192D38;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  v30 = [v21 stringValue];
                  *v64 = v50;
                  *&v64[4] = v30;
                  *&v64[12] = 2048;
                  *&v64[14] = v28;
                  _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "[AppUsage] Skipping event for %@ with negative time interval of %f", v64, 0x16u);
                }
              }
            }

            v18 = [obj countByEnumeratingWithState:&v68 objects:buf count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }
      }

LABEL_39:
    }

    else
    {
      v17 = qword_100192D38;
      if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[AppUsage] WARNING: Failed to get _DKEventQuery class", buf, 2u);
      }

      v52 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v52;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      sub_1000D4A28(v4);
    }
  }
}

void sub_100083E74(int a1)
{
  if (os_variant_is_darwinos())
  {
    v2 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[AppUsage] WARNING: Ignoring AppUsage::initializeSyncTime on darwinOS.", buf, 2u);
    }
  }

  else if (a1 == 1 && sub_1000D4950() <= 0.0)
  {
    v3 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[AppUsage] Setting app usage sync time after an OS update", v4, 2u);
    }

    sub_100083F84();
  }
}

void sub_100083F84()
{
  if (os_variant_is_darwinos())
  {
    v0 = qword_100192D38;
    if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "[AppUsage] WARNING: Ignoring AppUsage::resetSyncTime on darwinOS.", buf, 2u);
    }
  }

  else
  {
    v2 = +[NSDate now];
    [v2 timeIntervalSince1970];
    sub_1000D4A28(v1);
  }
}

void sub_1000840A0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000840EC();
}

void sub_1000841C4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = 0uLL;
  if (sub_10001B7CC())
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    *&v1 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v1;
    v4 = v1;
    sub_10005D1DC();
  }

  v5 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v2;
  v4 = v2;
  sub_1000ACEDC();
}

void sub_1000848AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000848F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100184EC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_10008496C(int **a1)
{
  v1 = *a1;
  if (*a1 == -1)
  {
    v7 = qword_100192BA0;
    result = os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10011DE88(v7);
    return 0;
  }

  a1[2] = v1;
  v2 = *v1;
  if (*v1 != -258926936)
  {
    v8 = qword_100192BA0;
    result = os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_10011DD04(v2, v8);
    return 0;
  }

  if (v1[1] != 1)
  {
    v9 = qword_100192BA0;
    result = os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_10011DD7C(v9);
    return 0;
  }

  v3 = v1[5];
  v4 = a1[1];
  if (v4 < v3)
  {
    v5 = qword_100192BA0;
    result = os_log_type_enabled(qword_100192BA0, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_10011DE00(v3, v4, v5);
    return 0;
  }

  a1[3] = (v1 + v3 + 1);
  return 1;
}

uint64_t sub_100084BFC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10008063C(result);

    operator delete();
  }

  return result;
}

uint64_t *sub_100084C48(uint64_t *a1, const char *a2)
{
  *a1 = -1;
  a1[1] = 0;
  a1[3] = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  sub_100080640(a2, &v8);
  v3 = v8;
  v4 = v9;
  v8 = -1;
  v9 = 0;
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  v10[0] = v5;
  v10[1] = v6;
  sub_10008063C(v10);
  sub_10008063C(&v8);
  return a1;
}

void sub_100084CEC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100084D24(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_10008063C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100084D68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100084DA8(void *result, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *result = off_100184F70;
  result[1] = a2;
  v8 = a3[1];
  result[2] = *a3;
  result[3] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a4[1];
  result[4] = *a4;
  result[5] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  result[6] = *a5;
  result[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a6[1];
  result[8] = *a6;
  result[9] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a7[1];
  result[10] = *a7;
  result[11] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a8[1];
  result[12] = *a8;
  result[13] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100084E58(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((*a1)[2])(a1, a3))
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    memset(v10, 0, sizeof(v10));
    v11 = 0u;
    (*(*a1[10] + 120))(a1[10], a4, v10);
    v9 = v11;
    v6 = qword_100192D38;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10011DEF8(&v9, v6);
    }

    v8[0] = 0xAAAAAAAAAAAAAAAALL;
    v8[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_100085C54(v8);
  }

  v7 = qword_100192D90;
  if (os_log_type_enabled(qword_100192D90, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Sink] Will not write out log.", v10, 2u);
  }
}

void sub_100085A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  sub_10002C5F4(&a23);

  sub_10002C5F4(&a31);
  sub_1000885DC(&a47);
  _Unwind_Resume(a1);
}

void sub_100085C54(uint64_t a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 8) = 0;
  *a1 = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  sub_1000840A0(v2);
}

void sub_10008624C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002C5F4(va);
  sub_10002C5F4(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1000862FC(uint64_t result)
{
  v1 = *(result + 8);
  if (*v1 == 1)
  {
    v2 = result;
    v14 = "uuid";
    v13 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v3;
    *&__p[16] = v3;
    sub_10000BD10(v1, &v14, __p);
    v7 = v1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0x8000000000000000;
    sub_10000DCFC(&v7);
    if (sub_10000DD7C(__p, &v7))
    {
      sub_100016CD8();
    }

    else
    {
      sub_10000DB44(__p);
    }

    v4 = *(v2 + 8);
    v14 = "parentUuid";
    v13 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v5;
    *&__p[16] = v5;
    sub_10000BD10(v4, &v14, __p);
    v7 = v4;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0x8000000000000000;
    if (v4)
    {
      sub_10000DCFC(&v7);
      if (sub_10000DD7C(__p, &v7))
      {
        sub_100016CD8();
      }

      else
      {
        sub_10000DB44(__p);
      }

      memset(__p, 170, 24);
      v6 = *(v2 + 8);
      sub_100017DF0(__p);
    }

    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  return result;
}

void sub_100086588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10002C5F4(&a10);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1000865DC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 48;
  *(a1 + 48) = *(a2 + 48);
  v3 = (a1 + 48);
  *(a1 + 56) = *(a2 + 56);
  sub_10000298C((a2 + 48));
  *v2 = 0;
  *(v2 + 8) = 0;

  return sub_10000298C(v3);
}

void sub_100086634(uint64_t a1)
{
  sub_10000298C((a1 + 48));
  v2 = *(a1 + 48);

  sub_1000048FC((a1 + 56), v2);
}

void sub_100086674(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_1000867F8;
  v6[3] = &unk_100184FD0;
  v9 = v4;
  v5 = v3;
  v7 = v5;
  sub_10000FF70(v10, (a1 + 56));
  v13 = *(a1 + 96);
  v11[1] = *(a1 + 72);
  v12 = *(a1 + 80);
  v8 = *(a1 + 32);
  v15 = 0;
  v14[0] = off_1001850E8;
  v14[1] = objc_retainBlock(v6);
  v15 = v14;
  sub_10005D3F0(v14);
  sub_10000E910(v14);
  sub_10000298C(v10);
  sub_1000048FC(v11, v10[0]);
}

void sub_1000867C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  sub_10000E910(v16 - 72);
  sub_10002C5F4((v15 + 64));

  _Unwind_Resume(a1);
}

void sub_1000867F8(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) fileDescriptor];
  v4 = v3;
  sub_1000869D4(v3, a1 + 64, v3);
  v5 = *(a1 + 104);
  v6 = *(a1 + 80);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100086DA8;
  v11[3] = &unk_100184FA8;
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v13 = v2;
  v14 = v7;
  v15 = v4;
  v12 = *(a1 + 40);
  v18 = 0;
  v16 = off_100185058;
  v17 = objc_retainBlock(v11);
  v18 = &v16;
  sub_100086B04(v2, v5 & 1, v8, v6, &v16);
  sub_1000887C4(&v16);
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v10 = [NSException exceptionWithName:NSFileHandleOperationException reason:@"No messages" userInfo:&__NSDictionary0__struct];
    objc_exception_throw(v10);
  }

  v9 = sub_1000877B0(&v16);
  sub_1000869D4(v9, &v16, v4);
  sub_10000298C(&v16);
  sub_1000048FC(&v17, v16);
}

void sub_1000869A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000869D4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 0)
  {
    memset(__p, 170, sizeof(__p));
    sub_100017DF0(__p);
  }

  v3 = qword_100192D90;
  if (os_log_type_enabled(qword_100192D90, OS_LOG_TYPE_ERROR))
  {
    sub_10011E050(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return -1;
}

void sub_100086B04(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v9 = qword_100192D68;
  if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Sink] emitting messages for persisted xform states", buf, 2u);
  }

  v22[4] = a5;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v22[0] = &v24;
  v22[1] = &rep;
  v22[2] = a1;
  v22[3] = a4;
  v10 = *(a1 + 8);
  v26 = "uuid";
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v11;
  v28 = v11;
  sub_10000BD10(v10, &v26, buf);
  v25[0] = v10;
  memset(&v25[1], 0, 24);
  v25[4] = 0x8000000000000000;
  if (!v10)
  {
    __assert_rtn("iter_impl", "iter_impl.hpp", 88, "m_object != nullptr");
  }

  sub_10000DCFC(v25);
  if (sub_10000DD7C(buf, v25))
  {
    v12 = sub_100016CD8();
    v25[0] = v12;
    if (!v12)
    {
LABEL_11:
      v14 = qword_100192D68;
      if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_ERROR))
      {
        sub_10011E0B4(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      return;
    }
  }

  else
  {
    v12 = sub_10000DB44(buf);
    v25[0] = v12;
  }

  if (*v12 != 3)
  {
    goto LABEL_11;
  }

  v13 = *(a1 + 64);
  if ((a3 & 0x100000000) != 0)
  {
    operator new();
  }

  *buf = off_1001852F8;
  *&buf[8] = v22;
  *&v28 = v25;
  *(&v28 + 1) = buf;
  (*(*v13 + 128))(v13, a4, buf);
  sub_1000899A4(buf);
}

void sub_100086D9C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100086DA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 55);
  if (v4 >= 0)
  {
    v5 = (a2 + 32);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  v6 = *(a2 + 40);
  if (v4 >= 0)
  {
    v6 = *(a2 + 55);
  }

  if (v6 >= 36)
  {
    v7 = &v5[v6];
    v8 = v5;
    while (1)
    {
      v9 = memchr(v8, 98, v6 - 35);
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = v9;
      if (!memcmp(v9, "b5427173-7342-4a02-b223-56969d089ca1", 0x24uLL))
      {
        break;
      }

      v8 = v10 + 1;
      v6 = v7 - (v10 + 1);
      if (v6 < 36)
      {
        goto LABEL_17;
      }
    }

    if (v10 != v7 && v10 - v5 != -1)
    {
      sub_10000459C(__p, "Count");
      v16 = 0;
      v11 = sub_10004BCAC((a2 + 56), __p, &v16);
      v19[0] = 5;
      v20 = v11;
      sub_10000298C(v19);
      sub_10000298C(v19);
      v12 = sub_1000071E4(*(*(a1 + 32) + 8) + 48, "Total_CA_Heartbeats");
      sub_10000298C(v19);
      v13 = *v12;
      *v12 = v19[0];
      v19[0] = v13;
      v14 = *(v12 + 8);
      *(v12 + 8) = v20;
      v20 = v14;
      sub_10000298C(v12);
      sub_10000298C(v19);
      sub_1000048FC(&v20, v19[0]);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      sub_100024608(*(a1 + 56));
      sub_1000739F0(v15);
    }
  }

LABEL_17:
  sub_100087078(__p);
}

void sub_100087024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_10002C5F4(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100087078(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(a1, 0, 0, 0, 1);
}

void sub_1000876EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002C5F4(va);
  sub_10002C5F4(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_1000877B0@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  sub_10005900C("{_marker:<end-of-file>}", "", v2, 1, a1);
  return sub_100004FBC(v2);
}

void sub_100087824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004FBC(va);
  _Unwind_Resume(a1);
}

void sub_100087844(uint64_t a1)
{
  sub_10000298C((a1 + 64));
  v2 = *(a1 + 64);

  sub_1000048FC((a1 + 72), v2);
}

void sub_100087890(uint64_t a1)
{
  sub_10000298C((a1 + 56));
  v2 = *(a1 + 56);

  sub_1000048FC((a1 + 64), v2);
}

void sub_1000878D0(uint64_t a1, uint64_t a2)
{
  v3 = dispatch_get_global_queue(0, 0);
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v7 = *(a2 + 24);
  sub_10000FF70(v8, (a2 + 40));
  v4 = v3;
  operator new();
}

void sub_100087A9C(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 40);
  v3 = qword_100192D90;
  if (*(a2 + 40) == 1)
  {
    if (os_log_type_enabled(qword_100192D90, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[Sink] Sending debug heartbeat event to RTCReporting", __p, 2u);
    }

    sub_10000459C(__p, "analyticsd_hb");
    v4 = sub_10008BC38(v2);
    sub_1000D85A0(__p, 1001, 1002, v4);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (os_log_type_enabled(qword_100192D90, OS_LOG_TYPE_ERROR))
  {
    sub_10011E118(v3, v5, v6, v7, v8, v9, v10, v11);
  }
}

void sub_100087BCC(uint64_t a1)
{
  v4[0] = 0xAAAAAAAAAAAAAA00;
  v4[1] = 0;
  sub_10000298C(v4);
  sub_10000298C(v4);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v3[0] = v2;
  v3[1] = v2;
  sub_1000D9D84(v3, (a1 + 96), (a1 + 32));
  sub_1000D9DB8(v3, v4);
}

void sub_100087EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_100088654(&a9);
  sub_10002C5F4(&a13);
  _Unwind_Resume(a1);
}

BOOL sub_100087F2C(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v14 = sub_10002CB3C(a1);
    sub_10000459C(v23, v14);
    v15 = std::string::insert(v23, 0, "cannot use update() with ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    *&v26 = *(&v15->__r_.__value_.__l + 2);
    v25 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(312, &v25, exception);
  }

  if (*a2 != 1)
  {
    v17 = __cxa_allocate_exception(0x20uLL);
    v18 = sub_10002CB3C(a2);
    sub_10000459C(v23, v18);
    v19 = std::string::insert(v23, 0, "cannot use update() with ");
    v20 = *&v19->__r_.__value_.__l.__data_;
    *&v26 = *(&v19->__r_.__value_.__l + 2);
    v25 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(312, &v25, v17);
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v4;
  v26 = v4;
  sub_10000DEC4(&v25, a2);
  sub_10000DF14(&v25);
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v23 = v5;
  *&v23[16] = v5;
  sub_10000DEC4(v23, a2);
  sub_10000DCFC(v23);
  for (result = sub_10000DD7C(&v25, v23); !result; result = sub_10000DD7C(&v25, v23))
  {
    v7 = sub_10000DB44(&v25);
    sub_10000FF70(v21, v7);
    v8 = *(a1 + 8);
    *v23 = sub_100088A20(&v25);
    v9 = sub_100005F50(v8, *v23);
    sub_10000298C(v21);
    v10 = *(v9 + 56);
    v9 += 56;
    *v9 = v21[0];
    v21[0] = v10;
    v11 = *(v9 + 8);
    *(v9 + 8) = v22;
    v22 = v11;
    sub_10000298C(v9);
    sub_10000298C(v21);
    sub_1000048FC(&v22, v21[0]);
    sub_100012BFC(&v25);
    v24 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v23 = v12;
    *&v23[16] = v12;
    sub_10000DEC4(v23, a2);
    sub_10000DCFC(v23);
  }

  return result;
}

uint64_t sub_1000882F0(uint64_t a1, unsigned __int8 *a2)
{
  v16 = "skipLogWriting";
  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v3;
  v18 = v3;
  sub_10000BD10(a2, &v16, buf);
  v15[0] = a2;
  memset(&v15[1], 0, 24);
  v15[4] = 0x8000000000000000;
  sub_10000DCFC(v15);
  if (sub_10000DD7C(buf, v15))
  {
    v4 = sub_100016CD8();
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = sub_10000DB44(buf);
  }

  if (*v4 == 4 && (v4[8] & 1) != 0)
  {
    v5 = qword_100192D40;
    if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "[RolloverManager] Log writing: SKIP (rollover contains skipLogWriting flag";
      v7 = v5;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, buf, 2u);
    }

    return 0;
  }

LABEL_9:
  if (!os_variant_is_darwinos())
  {
    v11 = +[OSASystemConfiguration sharedInstance];
    v12 = [v11 optInApple];

    v8 = qword_100192D40;
    v13 = os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (!v13)
      {
        return 1;
      }

      *buf = 0;
      v10 = "[RolloverManager] Log writing: PROCEED (device IS opted in";
      v9 = 1;
      goto LABEL_15;
    }

    if (v13)
    {
      *buf = 0;
      v6 = "[RolloverManager] Log writing: SKIP (device IS NOT opted in)";
      v7 = v8;
      goto LABEL_18;
    }

    return 0;
  }

  v8 = qword_100192D40;
  v9 = 1;
  if (os_log_type_enabled(qword_100192D40, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v10 = "[RolloverManager] Log writing: SKIP (OS variant is darwinOS)";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v10, buf, 2u);
  }

  return v9;
}

unsigned __int8 *sub_100088514@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_10000298C(a1);

  return sub_10000298C(a1);
}

void sub_10008855C(void *a1)
{
  sub_100043FBC(a1);

  operator delete();
}

uint64_t sub_100088594(uint64_t a1)
{
  sub_10000298C((a1 + 40));
  sub_1000048FC((a1 + 48), *(a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000885DC(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_10002DE40(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100088654(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000786C(v3);
  }

  return a1;
}

void sub_1000886BC(uint64_t a1)
{

  operator delete();
}

id sub_100088710(uint64_t a1, void *a2)
{
  *a2 = off_100185058;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_100088758(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_100088778(uint64_t a1, uint64_t a2)
{
  if (sub_10002E128(a2, &off_1001850C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000887C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_100088870(uint64_t a1)
{

  operator delete();
}

id sub_1000888C4(uint64_t a1, void *a2)
{
  *a2 = off_1001850E8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_10008890C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_10008892C(uint64_t a1, uint64_t a2)
{
  if (sub_10002E128(a2, &off_100185158))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100088978(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_1000889C4();
}

uint64_t sub_100088A20(void *a1)
{
  if (!*a1)
  {
    sub_10011E1D4();
  }

  if (**a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_10000459C(v3, "cannot use key() for non-object iterators");
    sub_10002E87C(207, v3, exception);
  }

  return a1[1] + 32;
}

void sub_100088AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t *sub_100088B34(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000298C((v1 + 40));
    sub_1000048FC((v1 + 48), *(v1 + 40));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100088BA0(uint64_t a1)
{
  v1 = a1;
  v2 = (a1 + 40);
  v14 = a1;
  __p[0] = "Total_CA_Heartbeats";
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v3;
  v23 = v3;
  sub_10000BD10(a1 + 40, __p, &v22);
  v17 = v2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0x8000000000000000;
  sub_10000DCFC(&v17);
  if (sub_10000DD7C(&v22, &v17))
  {
    v4 = sub_100016CD8();
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = sub_10000DB44(&v22);
  }

  if (*v4 - 5 <= 2)
  {
    LODWORD(v22) = -1431655766;
    sub_100029A4C(v4, &v22);
    v5 = v22;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = *(v1 + 32);
  v17 = OSAStateMonitorEventCALogWrittenStartTimestampKey;
  sub_10005F764((v1 + 24));
  if (v16 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = [NSString stringWithUTF8String:v7];
  *&v22 = v8;
  v18 = OSAStateMonitorEventCALogWrittenTotalHeartbeatCountKey;
  v9 = [NSNumber numberWithLongLong:v5];
  *(&v22 + 1) = v9;
  v19 = OSAStateMonitorEventCALogWrittenEndTimestampKey;
  v10 = [NSDate dateWithTimeIntervalSince1970:(v6 / 1000000)];
  *&v23 = v10;
  v20 = OSAStateMonitorEventCALogWrittenLogPathKey;
  if (*(v1 + 23) < 0)
  {
    v1 = *v1;
  }

  v11 = [NSString stringWithUTF8String:v1];
  *(&v23 + 1) = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v17 count:4];
  [OSAStateMonitor recordEvent:OSAStateMonitorEventCALogWritten with:v12];

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_100088B34(&v14);
}

void sub_100088E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v21 = v17;

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100088B34(&a10);
  _Unwind_Resume(a1);
}

__n128 sub_100088EF8(uint64_t a1, uint64_t a2)
{
  *a2 = off_100185178;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100088F30(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  sub_100010390(**(a1 + 16), &__p);
  sub_10008903C(v6, a2, &__p, a3, *(a1 + 24));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100088FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100088FF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10008903C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 16);
  if ((**a1 & 1) != 0 || **(a1 + 8) >= *a5)
  {
    memset(__p, 170, 24);
    __p[3] = -1;
    (*(**(v7 + 48) + 240))(__p);
    v8 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) < 0)
    {
      v8 = __p[1];
    }

    if (v8)
    {
      v9 = qword_100192D68;
      if (os_log_type_enabled(qword_100192D68, OS_LOG_TYPE_DEBUG))
      {
        if (*(a2 + 23) >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        v14 = HIBYTE(__p[2]);
        if (SHIBYTE(__p[2]) < 0)
        {
          v14 = __p[1];
        }

        *buf = 136446466;
        *&buf[4] = v13;
        *&buf[12] = 2048;
        *&buf[14] = v14;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[Sink] Retrieved transform definition for %{public}s with %zu bytes", buf, 0x16u);
      }

      v15 = 0xAAAAAAAAAAAAAAAALL;
      v16 = 0xAAAAAAAAAAAAAAAALL;
      v20 = 0;
      sub_100020E24(__p, buf, 1, &v15);
      sub_100004FBC(buf);
      v10 = *(a1 + 24);
      sub_10000803C(*(v7 + 16), &v15, buf);
      v12 = *buf;
      v11 = *&buf[8];
      if (*buf)
      {
        sub_100089338(v18, *(a1 + 32));
        sub_1000893D0(buf, v18);
        (*(*v12 + 48))(v12, buf);
        sub_1000896F4(buf);
        sub_1000887C4(v18);
      }

      sub_10000298C(&v15);
      sub_1000048FC(&v16, v15);
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
LABEL_11:
        if (v11)
        {
          sub_10000786C(v11);
        }

        return;
      }
    }

    operator delete(__p[0]);
    goto LABEL_11;
  }
}

void sub_100089290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1000896F4(&a24);
  sub_1000887C4(&a20);
  sub_10002C5F4(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    sub_10000786C(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1000892EC(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_100004FBC(va1);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    LOBYTE(v5) = 0;
    v7 = 0;
    sub_10000298C(va);
    sub_10000298C(va);
    __cxa_end_catch();
    JUMPOUT(0x10008913CLL);
  }

  JUMPOUT(0x1000892C8);
}

uint64_t sub_100089338(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1000893D0(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return result;
}

void *sub_100089450(void *a1)
{
  *a1 = off_1001851F8;
  sub_1000887C4((a1 + 1));
  return a1;
}

void sub_100089494(void *a1)
{
  *a1 = off_1001851F8;
  sub_1000887C4((a1 + 1));

  operator delete();
}

void sub_1000895A4(void *a1)
{
  sub_1000887C4(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1000895E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_10002B200();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100089628(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100089674(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1000896F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100089774(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_100089868(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001852F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100089898(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 8);
  sub_100010390(**(a1 + 16), &__p);
  sub_10008903C(v7, a2, &__p, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100089934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100089958(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000899A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_100089A24(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

os_log_t sub_100089A40()
{
  qword_100192BA0 = os_log_create("com.apple.CoreAnalytics.Shared.critical", "config");
  qword_100192BA8 = os_log_create("com.apple.CoreAnalytics.Shared.critical", "evaluator");
  result = os_log_create("com.apple.CoreAnalytics.Shared.critical", "utils");
  qword_100192BB0 = result;
  return result;
}

uint64_t sub_100089AA8(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t *a6, double a7)
{
  v9 = sub_100015C48(a1, a2, a3, a4, a5, a7);
  *v9 = off_1001853A8;
  *(v9 + 144) = 0;
  *(v9 + 168) = 0;
  v11 = *a6;
  v10 = a6[1];
  *(v9 + 176) = 0;
  *(v9 + 184) = v11;
  *(v9 + 192) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 200) = sub_100089B98(a1);
  return a1;
}

void sub_100089B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v11 = *(v9 + 192);
  if (v11)
  {
    sub_10000786C(v11);
  }

  if (*(v9 + 168) == 1)
  {
    sub_100004E54(&a9);
  }

  sub_100024584(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100089B98(uint64_t a1)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v2;
  v14[1] = v2;
  sub_100015F0C(a1 + 56, "reservoirSize", v14);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v3;
  v12[1] = v3;
  sub_10000DEC4(v12, a1 + 56);
  sub_10000DCFC(v12);
  if (!sub_10000DD7C(v14, v12) && *sub_1000760D0(v14) - 5 <= 1)
  {
    v4 = sub_10000DB44(v14);
    v10[0] = 5;
    v11 = 0;
    sub_10000298C(v10);
    sub_10000298C(v10);
    if (sub_10001D7F8(v10, v4))
    {
      v5 = sub_10000DB44(v14);
      v8[0] = 5;
      v9 = 0xFFFFLL;
      sub_10000298C(v8);
      sub_10000298C(v8);
      LOBYTE(v5) = sub_10001D7F8(v5, v8);
      sub_10000298C(v8);
      sub_1000048FC(&v9, v8[0]);
      sub_10000298C(v10);
      sub_1000048FC(&v11, v10[0]);
      if (v5)
      {
        v6 = sub_10000DB44(v14);
        LOWORD(v12[0]) = -21846;
        sub_10008B074(v6, v12);
        return LOWORD(v12[0]);
      }
    }

    else
    {
      sub_10000298C(v10);
      sub_1000048FC(&v11, v10[0]);
    }
  }

  return 10;
}

void sub_100089D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

BOOL sub_100089D64(uint64_t a1)
{
  result = sub_1000151DC(a1);
  if (result)
  {
    v8 = "fields";
    v7 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v6[0] = v3;
    v6[1] = v3;
    sub_10000BD10(a1 + 56, &v8, v6);
    v5[0] = (a1 + 56);
    memset(&v5[1], 0, 24);
    v5[4] = 0x8000000000000000;
    sub_10000DCFC(v5);
    if (sub_10000DD7C(v6, v5))
    {
      v4 = sub_100016CD8();
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = sub_10000DB44(v6);
    }

    if (*v4 == 2)
    {
LABEL_8:
      *(a1 + 176) = v4;
      return v4 != 0;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  return result;
}

void sub_100089E48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100089E54(uint64_t a1)
{
  if (!(*(*a1 + 72))(a1))
  {
    return 1;
  }

  return sub_100089EC0(a1);
}

uint64_t sub_100089EC0(uint64_t a1)
{
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    __assert_rtn("persistToStore", "ReservoirTransform.cpp", 74, "initialized()");
  }

  v5 = 0;
  sub_10000459C(__p, "persist to store");
  v6[0] = off_100185480;
  v6[1] = a1;
  v6[2] = &v5;
  v6[3] = v6;
  sub_10000F46C(a1, __p, v6);
  sub_10000E910(v6);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_100089FC8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_100089FD4(uint64_t a1)
{
  if ((*(*a1 + 72))(a1))
  {
    v1[0] = 0xAAAAAAAAAAAAAAAALL;
    v1[1] = 0xAAAAAAAAAAAAAAAALL;
    sub_100013CA0(v1, 0, 0, 0, 2);
  }

  __assert_rtn("serialize", "ReservoirTransform.cpp", 89, "initialized()");
}

void sub_10008A10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002C628(exception_object);
}

uint64_t sub_10008A13C(uint64_t a1, __int128 *a2)
{
  (*(*a1 + 64))(a1);
  result = sub_100012C84(a1);
  if ((result & 1) == 0)
  {
    result = sub_1000140A4(a1, *(a1 + 24), a2);
    if ((result & 1) == 0)
    {
      (*(*a1 + 88))(a1);
      v5 = *(a1 + 136) == 1 && *(a1 + 132) > *(a1 + 200);
      if (!v5 || (result = (*(**(a1 + 184) + 16))(*(a1 + 184), 0), result < *(a1 + 200)))
      {

        sub_10008A24C(a1);
      }
    }
  }

  return result;
}

void sub_10008A24C(uint64_t *a1)
{
  if ((*(*a1 + 72))(a1))
  {
    memset(v3, 170, 24);
    sub_1000139C0(a1[22], v2);
    sub_1000149BC(v3);
  }

  sub_10011E200();
}

void sub_10008A464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100004E54(va);
  _Unwind_Resume(a1);
}

void sub_10008A484(uint64_t a1)
{
  if ((*(*a1 + 72))(a1))
  {
    sub_100017D9C(v1);
  }

  sub_10011E22C();
}

void sub_10008A594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002C5F4(va);
  _Unwind_Resume(a1);
}

void sub_10008A5B0(uint64_t a1)
{
  sub_1000C7DD4(a1);
  if (*(a1 + 168) == 1)
  {
    v2 = (a1 + 144);
    sub_100004E54(&v2);
    *(a1 + 168) = 0;
  }
}

void sub_10008A628(uint64_t a1)
{
  sub_10000F3B0(a1);
  sub_10000459C(__p, "initializing samples");
  v4[0] = off_100185500;
  v4[1] = a1;
  v4[3] = v4;
  sub_10000F46C(a1, __p, v4);
  sub_10000E910(v4);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10008A6DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10008A6E8(uint64_t a1)
{
  if (sub_10000E870(a1))
  {
    v2 = *(a1 + 168);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_10008A720(void *a1)
{
  (*(*a1 + 64))(a1);
  memset(v5, 170, sizeof(v5));
  sub_1000C9450(a1[22], v5);
  v2 = a1[18];
  for (i = a1[19]; v2 != i; v2 += 16)
  {
    if (*v2 == 2)
    {
      v4[0] = 0xAAAAAAAAAAAAAAAALL;
      v4[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_100013CA0(v4, 0, 0, 0, 1);
    }
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }
}

uint64_t sub_10008AA30(uint64_t a1)
{
  *a1 = off_1001853A8;
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_10000786C(v2);
  }

  if (*(a1 + 168) == 1)
  {
    v4 = (a1 + 144);
    sub_100004E54(&v4);
  }

  sub_100024584(a1);
  return a1;
}

void sub_10008AAD4(uint64_t a1)
{
  *a1 = off_1001853A8;
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_10000786C(v2);
  }

  if (*(a1 + 168) == 1)
  {
    v3 = (a1 + 144);
    sub_100004E54(&v3);
  }

  sub_100024584(a1);
  operator delete();
}

uint64_t sub_10008AB88(uint64_t a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_10000298C((a1 + 56));
  sub_1000048FC((a1 + 64), *(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_10008ABFC(void *a1, uint64_t a2, __int128 *a3, double *a4, void *a5, uint64_t a6, uint64_t *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100185430;
  v9 = -86;
  sub_10008AD50(&v9, (a1 + 3), a2, a3, a4, a5, a6, a7);
  return a1;
}

void sub_10008ACD4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100185430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10008AD50(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, double *a5, void *a6, uint64_t a7, uint64_t *a8)
{
  v8 = *a5;
  v9 = a8[1];
  v10[0] = *a8;
  v10[1] = v9;
  *a8 = 0;
  a8[1] = 0;
  sub_100089AA8(a2, a3, a4, a6, a7, v10, v8);
  if (v9)
  {

    sub_10000786C(v9);
  }
}

void sub_10008AE10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000786C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10008AE28(void *a1, void *a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    return 0;
  }

  v5 = a3;
  while (a1 != a2)
  {
    v7 = v5[4];
    v8 = *(v5 + 55);
    v9 = *(a1 + 55);
    v41 = v9;
    v45 = v9;
    v46 = a1[4];
    v42 = v5[5];
    v43 = a1[5];
    if ((v9 & 0x80u) == 0)
    {
      v10 = *(a1 + 55);
    }

    else
    {
      v10 = a1[5];
    }

    if ((v9 & 0x80u) == 0)
    {
      v11 = a1 + 4;
    }

    else
    {
      v11 = a1[4];
    }

    if ((v8 & 0x80u) == 0)
    {
      v12 = *(v5 + 55);
    }

    else
    {
      v12 = v5[5];
    }

    v44 = v5[4];
    if ((v8 & 0x80u) == 0)
    {
      v13 = v5 + 4;
    }

    else
    {
      v13 = v5[4];
    }

    if (v12 >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    v15 = memcmp(v11, v13, v14);
    v16 = v10 < v12;
    if (v15)
    {
      v16 = v15 < 0;
    }

    if (v16)
    {
      break;
    }

    v17 = memcmp(v13, v11, v14);
    v18 = v12 < v10;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (v18)
    {
      v20 = v45;
      v19 = v46;
      v22 = v43;
      v21 = v44;
      v23 = v42;
      v25 = v41;
      v24 = v8;
    }

    else
    {
      if (sub_10001D7F8(a1 + 7, v5 + 7))
      {
        return 1;
      }

      v20 = *(a1 + 55);
      v19 = a1[4];
      v22 = a1[5];
      v8 = *(v5 + 55);
      v21 = v5[4];
      v23 = v5[5];
      v24 = *(v5 + 55);
      v25 = *(a1 + 55);
    }

    if (v24 >= 0)
    {
      v26 = v5 + 4;
    }

    else
    {
      v8 = v23;
      v26 = v21;
    }

    if ((v25 & 0x80u) == 0)
    {
      v27 = v20;
    }

    else
    {
      v27 = v22;
    }

    if ((v25 & 0x80u) == 0)
    {
      v28 = a1 + 4;
    }

    else
    {
      v28 = v19;
    }

    if (v27 >= v8)
    {
      v29 = v8;
    }

    else
    {
      v29 = v27;
    }

    v30 = memcmp(v26, v28, v29);
    v31 = v8 < v27;
    if (v30)
    {
      v31 = v30 < 0;
    }

    if (!v31)
    {
      v32 = memcmp(v28, v26, v29);
      v33 = v27 < v8;
      if (v32)
      {
        v33 = v32 < 0;
      }

      if (v33 || (sub_10001D7F8(v5 + 7, a1 + 7) & 1) == 0)
      {
        v34 = a1[1];
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = a1[2];
            v36 = *v35 == a1;
            a1 = v35;
          }

          while (!v36);
        }

        v37 = v5[1];
        if (v37)
        {
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37);
        }

        else
        {
          do
          {
            v38 = v5[2];
            v36 = *v38 == v5;
            v5 = v38;
          }

          while (!v36);
        }

        a1 = v35;
        v5 = v38;
        if (v38 != a4)
        {
          continue;
        }
      }
    }

    return 0;
  }

  return 1;
}

unsigned __int8 *sub_10008B074(unsigned __int8 *result, _WORD *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_10002CB3C(v2);
    sub_10000459C(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(302, &v10, exception);
  }

  if (v3 == 4)
  {
    LOWORD(v4) = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  LOWORD(v4) = *(result + 4);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_10008B1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

__n128 sub_10008B274(uint64_t a1, uint64_t a2)
{
  *a2 = off_100185480;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10008B2A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_100016734(v1);
  memset(v2, 170, sizeof(v2));
  sub_100089FD4(v1);
}

void sub_10008B4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14)
{
  a11 = &a14;
  sub_100004E54(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10008B4DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10008B59C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *v1 = 0;
  *(v1 + 8) = 0;
  sub_10008B528(v1);
}

void sub_10008B5E8(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v8 = a1;
    if (v4)
    {
      sub_10000BC18(a1, v4);
    }

    v5 = 16 * v1;
    *(&v6 + 1) = v5;
    v7 = v5;
    *v5 = 0;
    *(v5 + 8) = 0;
    sub_10008B528(v5);
  }

  sub_10002C63C();
}

void sub_10008B728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000BC60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008B7AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100185500;
  a2[1] = v2;
  return result;
}