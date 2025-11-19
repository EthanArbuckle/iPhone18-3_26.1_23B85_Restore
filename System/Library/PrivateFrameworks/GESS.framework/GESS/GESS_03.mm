unint64_t sub_24BCA9620(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  v6 = ((*a2 * *a1) >> 32) + v4 + v5;
  v7 = (*(a1 + 8) + *(a2 + 8) + 64);
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((v6 + 0x80000000) >> 32);
}

uint64_t sub_24BCA9680(uint64_t result, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int a10)
{
  v10 = a9 - a4;
  v11 = a9 - a6;
  v12 = -a10;
  v13 = 1 << -a10;
  v14 = a9 >> -a10;
  v15 = (v13 - 1) & a9;
  if (v14 <= 0x3B9AC9FF)
  {
    if (v14 <= 0x5F5E0FF)
    {
      if (v14 <= 0x98967F)
      {
        if (v14 <= 0xF423F)
        {
          v18 = v14 >> 5;
          v19 = v14 >> 4;
          if (v14 <= 9)
          {
            v20 = 1;
          }

          else
          {
            v20 = 10;
          }

          if (v14 <= 9)
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }

          if (v14 <= 0x63)
          {
            v22 = v20;
          }

          else
          {
            v22 = 100;
          }

          if (v14 <= 0x63)
          {
            v23 = v21;
          }

          else
          {
            v23 = 3;
          }

          if (v14 <= 0x3E7)
          {
            v24 = v22;
          }

          else
          {
            v24 = 1000;
          }

          if (v14 <= 0x3E7)
          {
            v25 = v23;
          }

          else
          {
            v25 = 4;
          }

          if (v19 <= 0x270)
          {
            v26 = v24;
          }

          else
          {
            v26 = 10000;
          }

          if (v19 <= 0x270)
          {
            v27 = v25;
          }

          else
          {
            v27 = 5;
          }

          v28 = v18 > 0xC34;
          if (v18 > 0xC34)
          {
            v16 = 100000;
          }

          else
          {
            v16 = v26;
          }

          if (v28)
          {
            v17 = 6;
          }

          else
          {
            v17 = v27;
          }
        }

        else
        {
          v16 = 1000000;
          v17 = 7;
        }
      }

      else
      {
        v16 = 10000000;
        v17 = 8;
      }
    }

    else
    {
      v16 = 100000000;
      v17 = 9;
    }
  }

  else
  {
    v16 = 1000000000;
    v17 = 10;
  }

  v29 = result - 1;
  v30 = a6 - a9;
  while (v17 > 0)
  {
    v31 = v14 / v16;
    v14 = v14 % v16;
    v32 = *a2;
    *a2 = v32 + 1;
    *(result + v32) = v31 + 48;
    --v17;
    v33 = (v14 << v12) + v15;
    if (v10 >= v33)
    {
      *a3 += v17;
      v34 = v16 << v12;
      v35 = v33 < v11 && v10 - v33 >= v34;
      if (!v35)
      {
        return result;
      }

      v36 = *a2;
      v37 = v11 - v33;
      v38 = v15 + (v14 << v12) + v34;
      v39 = v10 - v38;
      do
      {
        if (v38 >= v11 && v37 <= v30 + v38)
        {
          break;
        }

        --*(v29 + v36);
        if (v38 >= v11)
        {
          break;
        }

        v37 -= v34;
        v38 += v34;
        v35 = v39 >= v34;
        v39 -= v34;
      }

      while (v35);
    }

    else
    {
      v16 /= 0xAu;
    }

    if (v10 >= v33)
    {
      return result;
    }
  }

  v40 = 0;
  do
  {
    v41 = v10;
    v42 = v11;
    v43 = 5 * v15;
    v44 = *a2;
    *a2 = v44 + 1;
    *(result + v44) = ((2 * v43) >> v12) + 48;
    v10 = 10 * v41;
    v11 *= 10;
    --v40;
    v15 = (v13 - 1) & (2 * v43);
  }

  while (10 * v41 < v15);
  *a3 += v40;
  if (v15 < v11 && 10 * v41 - v15 >= v13)
  {
    v45 = *a2;
    v46 = 10 * v42 - v15;
    v47 = v13 + v15;
    v48 = 10 * v41 - v47;
    v49 = -10 * v42;
    do
    {
      if (v47 >= v11 && v46 <= v49 + v47)
      {
        break;
      }

      --*(v29 + v45);
      if (v47 >= v11)
      {
        break;
      }

      v46 -= v13;
      v47 += v13;
      v35 = v48 >= v13;
      v48 -= v13;
    }

    while (v35);
  }

  return result;
}

uint64_t sub_24BCA9944(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_24BC9EC78(v2);
  }

  return a1;
}

uint64_t sub_24BCA9984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int8 a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  sub_24BCA9E80(v11, a2);
  sub_24BCA9F00(a5, a1, v11, a3, a4);
  result = sub_24BCAFFAC(v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BCA9A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCAFFAC(va);
  _Unwind_Resume(a1);
}

void sub_24BCA9A28(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    sub_24BCA9FC0(v31, a1);
    sub_24BCAC850(&v32, a3, v31, *(a1 + 184));
    sub_24BCAFFAC(v31);
    sub_24BCAAD1C(a1, &v32);
    if (a2)
    {
      v6 = sub_24BCAA08C((a1 + 40));
      *(a1 + 32) = v6;
      if (v6 != 15)
      {
        v7 = *(a1 + 72);
        sub_24BCAB6AC(a1 + 40, &v30);
        v26 = *(a1 + 72);
        v27 = *(a1 + 88);
        sub_24BC836D4(v23, "value");
        sub_24BCABA24(a1, 0xFu, v23, &__p);
        sub_24BCAB790(101, &v26, &__p, &v28);
        sub_24BCAB650(&v32, v7, &v30, &v28);
        v28.__vftable = &unk_285F930C8;
        std::runtime_error::~runtime_error(&v29);
        std::exception::~exception(&v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v37 == 1)
    {
      v8 = *a3;
      *a3 = 9;
      v21 = v8;
      v9 = *(a3 + 1);
      *(a3 + 1) = 0;
      v22 = v9;
      v10 = &v22;
    }

    else
    {
      if (*a3 != 9)
      {
LABEL_27:
        sub_24BCAF044(&v32);
        goto LABEL_28;
      }

      *a3 = 0;
      v19 = 9;
      v16 = *(a3 + 1);
      *(a3 + 1) = 0;
      v20 = v16;
      v10 = &v20;
      v8 = 9;
    }

    sub_24BC9F18C(v10, v8);
    goto LABEL_27;
  }

  v11 = *(a1 + 184);
  v32 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v36 = v11;
  sub_24BCABE80(a1, &v32);
  if (a2)
  {
    v12 = sub_24BCAA08C((a1 + 40));
    *(a1 + 32) = v12;
    if (v12 != 15)
    {
      v13 = *(a1 + 72);
      sub_24BCAB6AC(a1 + 40, &v30);
      v26 = *(a1 + 72);
      v27 = *(a1 + 88);
      sub_24BC836D4(v23, "value");
      sub_24BCABA24(a1, 0xFu, v23, &__p);
      sub_24BCAB790(101, &v26, &__p, &v28);
      sub_24BCAC7F4(&v32, v13, &v30, &v28);
      v28.__vftable = &unk_285F930C8;
      std::runtime_error::~runtime_error(&v29);
      std::exception::~exception(&v28);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v35 == 1)
  {
    v14 = *a3;
    *a3 = 9;
    v15 = *(a3 + 1);
    *(a3 + 1) = 0;
    v18 = v15;
    sub_24BC9F18C(&v18, v14);
  }

  if (v33)
  {
    *(&v33 + 1) = v33;
    operator delete(v33);
  }

LABEL_28:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_24BCA9D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  sub_24BCABE2C(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  v43 = *(v41 - 200);
  if (v43)
  {
    *(v41 - 192) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BCA9E80(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BCA9F00(uint64_t a1, uint64_t a2, uint64_t a3, __int8 a4, char a5)
{
  v9 = sub_24BCA9FC0(a1, a3);
  *(v9 + 40) = *a2;
  v10 = (v9 + 40);
  *(v9 + 32) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v9 + 56) = a5;
  *(v9 + 60) = -1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0;
  *(v9 + 144) = &unk_24C0435AF;
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;
  *(v9 + 152) = 0;
  *(v9 + 176) = sub_24BCAA058();
  v10[9].i8[0] = a4;
  *(a1 + 32) = sub_24BCAA08C(v10);
  return a1;
}

void sub_24BCA9FA4(_Unwind_Exception *a1)
{
  sub_24BCAACC8(v2);
  sub_24BCAFFAC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCA9FC0(uint64_t a1, uint64_t a2)
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

uint64_t sub_24BCAA058()
{
  v0 = localeconv();
  if (v0->decimal_point)
  {
    return *v0->decimal_point;
  }

  else
  {
    return 46;
  }
}

uint64_t sub_24BCAA08C(int64x2_t *a1)
{
  if (a1[2].i64[0] || sub_24BCAA348(a1))
  {
    do
    {
      sub_24BFB8A38(a1);
      v2 = a1[1].i32[1];
    }

    while (v2 <= 0x20 && ((1 << v2) & 0x100002600) != 0);
    while (a1[1].i8[0] == 1)
    {
      if (v2 != 47)
      {
        break;
      }

      if (!sub_24BCAA3AC(a1))
      {
        return 14;
      }

      do
      {
        sub_24BFB8A38(a1);
        v2 = a1[1].i32[1];
      }

      while (v2 <= 0x20 && ((1 << v2) & 0x100002600) != 0);
    }

    if (v2 > 57)
    {
      if (v2 > 109)
      {
        if (v2 > 122)
        {
          if (v2 == 123)
          {
            return 9;
          }

          if (v2 == 125)
          {
            return 11;
          }
        }

        else if (v2 == 110)
        {
          v10 = 1819047278;
          v9 = 1;
          while (*(&v10 + v9) == sub_24BFB8A38(a1))
          {
            if (++v9 == 4)
            {
              return 3;
            }
          }
        }

        else if (v2 == 116)
        {
          v11 = 1702195828;
          v7 = 1;
          while (*(&v11 + v7) == sub_24BFB8A38(a1))
          {
            if (++v7 == 4)
            {
              return 1;
            }
          }
        }
      }

      else if (v2 > 92)
      {
        if (v2 == 93)
        {
          return 10;
        }

        if (v2 == 102)
        {
          v8 = 0;
          while (aFalse_1[v8 + 1] == sub_24BFB8A38(a1))
          {
            ++v8;
            result = 2;
            if (v8 == 4)
            {
              return result;
            }
          }
        }
      }

      else
      {
        if (v2 == 58)
        {
          return 12;
        }

        if (v2 == 91)
        {
          return 8;
        }
      }
    }

    else if (v2 <= 44)
    {
      if ((v2 + 1) < 2)
      {
        return 15;
      }

      if (v2 == 44)
      {
        return 13;
      }

      if (v2 == 34)
      {

        return sub_24BFB856C(a1);
      }
    }

    else if ((v2 - 48) < 0xA || v2 == 45)
    {

      return sub_24BCAA854(a1);
    }

    v6 = "invalid literal";
  }

  else
  {
    v6 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
  }

  a1[6].i64[1] = v6;
  return 14;
}

BOOL sub_24BCAA348(int64x2_t *a1)
{
  if (sub_24BFB8A38(a1) == 239)
  {
    return sub_24BFB8A38(a1) == 187 && sub_24BFB8A38(a1) == 191;
  }

  else
  {
    sub_24BFB8AC8(a1);
    return 1;
  }
}

uint64_t sub_24BCAA3AC(int64x2_t *a1)
{
  v2 = sub_24BFB8A38(a1);
  if (v2 == 47)
  {
    do
    {
      do
      {
        v4 = sub_24BFB8A38(a1) + 1;
      }

      while (v4 >= 0xF);
    }

    while (((0x4803u >> v4) & 1) == 0);
    return 1;
  }

  else
  {
    if (v2 == 42)
    {
      while (1)
      {
        v3 = sub_24BFB8A38(a1);
        if ((v3 + 1) < 2)
        {
          break;
        }

        if (v3 == 42)
        {
          if (sub_24BFB8A38(a1) == 47)
          {
            return 1;
          }

          sub_24BFB8AC8(a1);
        }
      }

      v6 = "invalid comment; missing closing '*/'";
    }

    else
    {
      v6 = "invalid comment; expecting '/' or '*' after '/'";
    }

    result = 0;
    a1[6].i64[1] = v6;
  }

  return result;
}

uint64_t sub_24BCAA854(uint64_t a1)
{
  sub_24BCAABD8(a1);
  v2 = *(a1 + 20);
  if ((v2 - 49) >= 9)
  {
    if (v2 == 48)
    {
      std::string::push_back((a1 + 80), 48);
      v3 = 5;
    }

    else
    {
      if (v2 == 45)
      {
        std::string::push_back((a1 + 80), 45);
      }

      v8 = sub_24BFB8A38(a1);
      if ((v8 - 49) < 9)
      {
        v2 = *(a1 + 20);
        v3 = 6;
        goto LABEL_3;
      }

      if (v8 != 48)
      {
        v7 = "invalid number; expected digit after '-'";
        goto LABEL_30;
      }

      std::string::push_back((a1 + 80), *(a1 + 20));
      v3 = 6;
    }

    v10 = sub_24BFB8A38(a1);
    if (v10 == 101 || v10 == 69)
    {
      v4 = (a1 + 80);
      goto LABEL_9;
    }

    if (v10 != 46)
    {
      goto LABEL_31;
    }

    v4 = (a1 + 80);
LABEL_28:
    std::string::push_back(v4, *(a1 + 136));
    if (sub_24BFB8A38(a1) - 48 > 9)
    {
      v7 = "invalid number; expected digit after '.'";
      goto LABEL_30;
    }

    v4 = (a1 + 80);
    do
    {
      std::string::push_back((a1 + 80), *(a1 + 20));
      v17 = sub_24BFB8A38(a1);
    }

    while ((v17 - 48) < 0xA);
    if (v17 != 101 && v17 != 69)
    {
LABEL_22:
      sub_24BFB8AC8(a1);
      __endptr = 0;
      *__error() = 0;
      goto LABEL_39;
    }

LABEL_9:
    std::string::push_back(v4, *(a1 + 20));
    v6 = sub_24BFB8A38(a1);
    if ((v6 - 48) < 0xA)
    {
      v9 = (a1 + 80);
    }

    else
    {
      if (v6 != 45 && v6 != 43)
      {
        v7 = "invalid number; expected '+', '-', or digit after exponent";
LABEL_30:
        *(a1 + 104) = v7;
        return 14;
      }

      v9 = (a1 + 80);
      std::string::push_back((a1 + 80), *(a1 + 20));
      if (sub_24BFB8A38(a1) - 48 >= 0xA)
      {
        v7 = "invalid number; expected digit after exponent sign";
        goto LABEL_30;
      }
    }

    std::string::push_back(v9, *(a1 + 20));
    if (sub_24BFB8A38(a1) - 48 <= 9)
    {
      do
      {
        std::string::push_back((a1 + 80), *(a1 + 20));
      }

      while (sub_24BFB8A38(a1) - 48 < 0xA);
    }

    goto LABEL_22;
  }

  v3 = 5;
LABEL_3:
  v4 = (a1 + 80);
  while (1)
  {
    std::string::push_back((a1 + 80), v2);
    v5 = sub_24BFB8A38(a1);
    if ((v5 - 48) >= 0xA)
    {
      break;
    }

    v2 = *(a1 + 20);
  }

  if (v5 == 46)
  {
    goto LABEL_28;
  }

  if (v5 == 69 || v5 == 101)
  {
    goto LABEL_9;
  }

LABEL_31:
  sub_24BFB8AC8(a1);
  __endptr = 0;
  *__error() = 0;
  v12 = (a1 + 80);
  v13 = *(a1 + 103);
  if (v3 == 5)
  {
    if (v13 < 0)
    {
      v12 = *v12;
    }

    v14 = strtoull(v12, &__endptr, 10);
    if (!*__error())
    {
      *(a1 + 120) = v14;
      return 5;
    }
  }

  else
  {
    if (v13 < 0)
    {
      v12 = *v12;
    }

    v15 = strtoll(v12, &__endptr, 10);
    if (!*__error())
    {
      *(a1 + 112) = v15;
      return 6;
    }
  }

LABEL_39:
  v16 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v16 = *v16;
  }

  *(a1 + 128) = strtod(v16, &__endptr);
  return 7;
}

uint64_t sub_24BCAAB5C(void *a1)
{
  v2 = a1[1];
  v3 = v2[3];
  if (v3 == v2[4])
  {
    result = (*(*v2 + 80))(v2);
    if (result == -1)
    {
      sub_24BFB8BF4(a1);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v2[3] = v3 + 1;
    return *v3;
  }

  return result;
}

void sub_24BCAABD8(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    **(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 103) = 0;
  }

  v2 = *(a1 + 56);
  v1 = a1 + 56;
  *(v1 + 8) = v2;
  v3 = *(v1 - 36);
  sub_24BC8E768(v1, &v3);
}

uint64_t sub_24BCAAC30(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  std::string::push_back((a1 + 80), *(a1 + 20));
  if (!a3)
  {
    return 1;
  }

  v6 = &a2[a3];
  while (1)
  {
    sub_24BFB8A38(a1);
    v7 = *(a1 + 20);
    if (*a2 > v7 || v7 > a2[1])
    {
      break;
    }

    std::string::push_back((a1 + 80), v7);
    a2 += 2;
    if (a2 == v6)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 104) = "invalid string: ill-formed UTF-8 byte";
  return result;
}

void *sub_24BCAACC8(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  return sub_24BCB002C(a1);
}

uint64_t sub_24BCAAD1C(uint64_t a1, unsigned __int8 **a2)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v31.__vftable = 0;
          sub_24BCAE710(a2, &v31, 0);
        }

        else if (v4 == 4)
        {
          sub_24BCAEA60(a2);
        }

        else
        {
          v31.__vftable = *(a1 + 160);
          sub_24BCAEC14(a2, &v31, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v31.__vftable) = 1;
        sub_24BCAE564(a2, &v31, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v31.__vftable) = 0;
        sub_24BCAE564(a2, &v31, 0);
        goto LABEL_28;
      }

      goto LABEL_51;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v31.__vftable = *(a1 + 152);
        sub_24BCAE8B4(a2, &v31, 0);
      }

      else
      {
        if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v22 = *(a1 + 72);
          sub_24BCAB6AC(a1 + 40, &v33);
          sub_24BCAB6AC(a1 + 40, &v27);
          v23 = std::string::insert(&v27, 0, "number overflow parsing '");
          v24 = *&v23->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v24;
          v23->__r_.__value_.__l.__size_ = 0;
          v23->__r_.__value_.__r.__words[2] = 0;
          v23->__r_.__value_.__r.__words[0] = 0;
          v25 = std::string::append(&__p, "'");
          v26 = *&v25->__r_.__value_.__l.__data_;
          v30 = v25->__r_.__value_.__r.__words[2];
          *v29 = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          sub_24BCAD454(406, v29, &v31);
          v13 = sub_24BCAD3F8(a2, v22, &v33, &v31);
          sub_24BCAD598(&v31);
          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }

          goto LABEL_53;
        }

        v31.__vftable = *(a1 + 168);
        sub_24BCAE3B8(a2, &v31, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!sub_24BCAD13C(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_59;
    }

    v7 = sub_24BCAA08C((a1 + 40));
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = sub_24BCAD2F0(a2);
      goto LABEL_24;
    }

    LOBYTE(v31.__vftable) = 1;
    sub_24BCAC930(&v34, &v31);
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v15 = *(a1 + 72);
      sub_24BCAB6AC(a1 + 40, &v33);
      *v29 = *(a1 + 72);
      v30 = *(a1 + 88);
      sub_24BC836D4(&v27, "value");
      sub_24BCABA24(a1, 0, &v27, &__p);
      sub_24BCAB790(101, v29, &__p, &v31);
      v16 = sub_24BCAB650(a2, v15, &v33, &v31);
LABEL_52:
      v13 = v16;
      v31.__vftable = &unk_285F930C8;
      std::runtime_error::~runtime_error(&v32);
      std::exception::~exception(&v31);
      goto LABEL_53;
    }

LABEL_51:
    v17 = *(a1 + 72);
    sub_24BCAB6AC(a1 + 40, &v33);
    *v29 = *(a1 + 72);
    v30 = *(a1 + 88);
    sub_24BC836D4(&v27, "value");
    sub_24BCABA24(a1, 0x10u, &v27, &__p);
    sub_24BCAB790(101, v29, &__p, &v31);
    v16 = sub_24BCAB650(a2, v17, &v33, &v31);
    goto LABEL_52;
  }

  if ((sub_24BCACC98(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_59;
  }

  v5 = sub_24BCAA08C((a1 + 40));
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      sub_24BCAD008();
    }

    goto LABEL_62;
  }

  v6 = sub_24BCACE4C(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_59:
    v13 = 0;
    goto LABEL_46;
  }

LABEL_28:
  v8 = v35;
  if (!v35)
  {
LABEL_45:
    v13 = 1;
    goto LABEL_46;
  }

  while (2)
  {
    if ((*&v34[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = sub_24BCAA08C((a1 + 40));
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = sub_24BCAA08C((a1 + 40));
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v18 = *(a1 + 72);
        sub_24BCAB6AC(a1 + 40, &v33);
        *v29 = *(a1 + 72);
        v30 = *(a1 + 88);
        sub_24BC836D4(&v27, "array");
        sub_24BCABA24(a1, 0xAu, &v27, &__p);
        sub_24BCAB790(101, v29, &__p, &v31);
        v19 = sub_24BCAB650(a2, v18, &v33, &v31);
        goto LABEL_63;
      }

      v10 = sub_24BCAD2F0(a2);
LABEL_36:
      if ((v10 & 1) == 0)
      {
        goto LABEL_59;
      }

      v8 = v35 - 1;
      v35 = v8;
      if (!v8)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  v11 = sub_24BCAA08C((a1 + 40));
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v20 = *(a1 + 72);
      sub_24BCAB6AC(a1 + 40, &v33);
      *v29 = *(a1 + 72);
      v30 = *(a1 + 88);
      sub_24BC836D4(&v27, "object");
      sub_24BCABA24(a1, 0xBu, &v27, &__p);
      sub_24BCAB790(101, v29, &__p, &v31);
      v19 = sub_24BCAB650(a2, v20, &v33, &v31);
      goto LABEL_63;
    }

    v10 = sub_24BCACE4C(a2);
    goto LABEL_36;
  }

  v12 = sub_24BCAA08C((a1 + 40));
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    sub_24BCAD008();
  }

LABEL_62:
  v21 = *(a1 + 72);
  sub_24BCAB6AC(a1 + 40, &v33);
  *v29 = *(a1 + 72);
  v30 = *(a1 + 88);
  sub_24BC836D4(&v27, "object key");
  sub_24BCABA24(a1, 4u, &v27, &__p);
  sub_24BCAB790(101, v29, &__p, &v31);
  v19 = sub_24BCAB650(a2, v21, &v33, &v31);
LABEL_63:
  v13 = v19;
  sub_24BCABE2C(&v31);
LABEL_53:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (v34)
  {
    operator delete(v34);
  }

  return v13;
}

void sub_24BCAB508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::runtime_error a29)
{
  sub_24BCABE2C(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  v31 = *(v29 - 56);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BCAB650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = sub_24BCAEDC0(exception, a4);
    __cxa_throw(v7, &unk_285F93208, sub_24BCABE2C);
  }

  return 0;
}

void sub_24BCAB6AC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 56);
  for (i = *(a1 + 64); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v8 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      std::string::append(a2, __str);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BCAB770(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCAB790(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_24BC836D4(&v24, "parse_error");
  sub_24BCA56C4(a1, &v26);
  v8 = std::string::append(&v26, "parse error");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_24BCAEEA4(a2, &__p);
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

  v12 = std::string::append(&v27, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ": ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = std::string::append(&v29, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v31 = v19->__r_.__value_.__r.__words[2];
  v30 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  v21 = *a2;
  if (v31 >= 0)
  {
    v22 = &v30;
  }

  else
  {
    v22 = v30;
  }

  sub_24BCA5848(a4, a1, v22);
  *a4 = &unk_285F93230;
  a4[4] = v21;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }
}

void sub_24BCAB97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCABA24(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  sub_24BC836D4(a4, "syntax error ");
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a4, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ");
  v13 = *(a1 + 32);
  if (v13 == 14)
  {
    sub_24BC836D4(&v36, *(a1 + 144));
    v14 = std::string::append(&v36, "; last read: '");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_24BCAB6AC(a1 + 40, &__p);
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

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a4, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }

LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v25 = sub_24BCAF020(v13);
  sub_24BC836D4(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a4, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_49:
  operator delete(v24);
  if (!a2)
  {
    return;
  }

LABEL_50:
  v30 = sub_24BCAF020(a2);
  sub_24BC836D4(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a4, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_24BCABD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCABE2C(std::runtime_error *a1)
{
  a1->__vftable = &unk_285F930C8;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_24BCABE80(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v4 = (a1 + 120);
  while (1)
  {
    v5 = *(a1 + 32);
    if (v5 <= 5)
    {
      break;
    }

    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        v36.__vftable = *(a1 + 152);
        sub_24BCAF94C(a2, &v36);
      }

      else
      {
        if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v27 = *(a1 + 72);
          sub_24BCAB6AC(a1 + 40, &v38);
          sub_24BCAB6AC(a1 + 40, &v32);
          v28 = std::string::insert(&v32, 0, "number overflow parsing '");
          v29 = *&v28->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v30 = std::string::append(&__p, "'");
          v31 = *&v30->__r_.__value_.__l.__data_;
          v35 = v30->__r_.__value_.__r.__words[2];
          *v34 = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          sub_24BCAD454(406, v34, &v36);
          v17 = sub_24BCAF0A4(a2, v27, &v38, &v36);
          sub_24BCAD598(&v36);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34[0]);
          }

          goto LABEL_49;
        }

        v36.__vftable = *(a1 + 168);
        sub_24BCAF344(a2, &v36);
      }

      goto LABEL_26;
    }

    switch(v5)
    {
      case 8:
        v38.__r_.__value_.__s.__data_[0] = 2;
        v36.__vftable = sub_24BCAF100(a2, &v38);
        sub_24BCAD7F8(a2 + 8, &v36);
        v10 = sub_24BCAA08C((a1 + 40));
        *(a1 + 32) = v10;
        if (v10 == 10)
        {
LABEL_23:
          *(a2 + 16) -= 8;
          goto LABEL_26;
        }

        LOBYTE(v36.__vftable) = 1;
        sub_24BCAC930(&v39, &v36);
        break;
      case 9:
        v38.__r_.__value_.__s.__data_[0] = 1;
        v36.__vftable = sub_24BCAF100(a2, &v38);
        sub_24BCAD7F8(a2 + 8, &v36);
        v6 = sub_24BCAA08C((a1 + 40));
        *(a1 + 32) = v6;
        if (v6 == 11)
        {
          goto LABEL_23;
        }

        if (v6 != 4)
        {
LABEL_56:
          v25 = *(a1 + 72);
          sub_24BCAB6AC(a1 + 40, &v38);
          *v34 = *(a1 + 72);
          v35 = *(a1 + 88);
          sub_24BC836D4(&v32, "object key");
          sub_24BCABA24(a1, 4u, &v32, &__p);
          sub_24BCAB790(101, v34, &__p, &v36);
          v23 = sub_24BCAC7F4(a2, v25, &v38, &v36);
          goto LABEL_58;
        }

        v7 = *(*(*(a2 + 16) - 8) + 8);
        v36.__vftable = v4;
        *(a2 + 32) = sub_24BCA73D4(v7, &v4->~runtime_error) + 56;
        v8 = sub_24BCAA08C((a1 + 40));
        *(a1 + 32) = v8;
        if (v8 != 12)
        {
          goto LABEL_57;
        }

        LOBYTE(v36.__vftable) = 0;
        sub_24BCAC930(&v39, &v36);
        v9 = sub_24BCAA08C((a1 + 40));
LABEL_39:
        *(a1 + 32) = v9;
        break;
      case 14:
        v19 = *(a1 + 72);
        sub_24BCAB6AC(a1 + 40, &v38);
        *v34 = *(a1 + 72);
        v35 = *(a1 + 88);
        sub_24BC836D4(&v32, "value");
        sub_24BCABA24(a1, 0, &v32, &__p);
        sub_24BCAB790(101, v34, &__p, &v36);
        v20 = sub_24BCAC7F4(a2, v19, &v38, &v36);
LABEL_48:
        v17 = v20;
        v36.__vftable = &unk_285F930C8;
        std::runtime_error::~runtime_error(&v37);
        std::exception::~exception(&v36);
        goto LABEL_49;
      default:
LABEL_47:
        v21 = *(a1 + 72);
        sub_24BCAB6AC(a1 + 40, &v38);
        *v34 = *(a1 + 72);
        v35 = *(a1 + 88);
        sub_24BC836D4(&v32, "value");
        sub_24BCABA24(a1, 0x10u, &v32, &__p);
        sub_24BCAB790(101, v34, &__p, &v36);
        v20 = sub_24BCAC7F4(a2, v21, &v38, &v36);
        goto LABEL_48;
    }
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v36.__vftable = 0;
      sub_24BCAF76C(a2);
    }

    else
    {
      if (v5 == 4)
      {
        sub_24BCAFB60(a2);
      }

      v36.__vftable = *(a1 + 160);
      sub_24BCAFD98(a2, &v36);
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    LOBYTE(v36.__vftable) = 1;
    sub_24BCAF558(a2, &v36);
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    goto LABEL_47;
  }

  LOBYTE(v36.__vftable) = 0;
  sub_24BCAF558(a2, &v36);
LABEL_26:
  v11 = v40;
  if (!v40)
  {
LABEL_41:
    v17 = 1;
    goto LABEL_42;
  }

  while (1)
  {
    if ((*&v39[((v11 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v11 - 1)))
    {
      v12 = sub_24BCAA08C((a1 + 40));
      *(a1 + 32) = v12;
      if (v12 == 13)
      {
        goto LABEL_38;
      }

      if (v12 != 10)
      {
        v22 = *(a1 + 72);
        sub_24BCAB6AC(a1 + 40, &v38);
        *v34 = *(a1 + 72);
        v35 = *(a1 + 88);
        sub_24BC836D4(&v32, "array");
        sub_24BCABA24(a1, 0xAu, &v32, &__p);
        sub_24BCAB790(101, v34, &__p, &v36);
        v23 = sub_24BCAC7F4(a2, v22, &v38, &v36);
        goto LABEL_58;
      }

      goto LABEL_33;
    }

    v13 = sub_24BCAA08C((a1 + 40));
    *(a1 + 32) = v13;
    if (v13 == 13)
    {
      break;
    }

    if (v13 != 11)
    {
      v24 = *(a1 + 72);
      sub_24BCAB6AC(a1 + 40, &v38);
      *v34 = *(a1 + 72);
      v35 = *(a1 + 88);
      sub_24BC836D4(&v32, "object");
      sub_24BCABA24(a1, 0xBu, &v32, &__p);
      sub_24BCAB790(101, v34, &__p, &v36);
      v23 = sub_24BCAC7F4(a2, v24, &v38, &v36);
      goto LABEL_58;
    }

LABEL_33:
    *(a2 + 16) -= 8;
    v11 = v40 - 1;
    v40 = v11;
    if (!v11)
    {
      goto LABEL_41;
    }
  }

  v14 = sub_24BCAA08C((a1 + 40));
  *(a1 + 32) = v14;
  if (v14 != 4)
  {
    goto LABEL_56;
  }

  v15 = *(*(*(a2 + 16) - 8) + 8);
  v36.__vftable = v4;
  *(a2 + 32) = sub_24BCA73D4(v15, &v4->~runtime_error) + 56;
  v16 = sub_24BCAA08C((a1 + 40));
  *(a1 + 32) = v16;
  if (v16 == 12)
  {
LABEL_38:
    v9 = sub_24BCAA08C((a1 + 40));
    goto LABEL_39;
  }

LABEL_57:
  v26 = *(a1 + 72);
  sub_24BCAB6AC(a1 + 40, &v38);
  *v34 = *(a1 + 72);
  v35 = *(a1 + 88);
  sub_24BC836D4(&v32, "object separator");
  sub_24BCABA24(a1, 0xCu, &v32, &__p);
  sub_24BCAB790(101, v34, &__p, &v36);
  v23 = sub_24BCAC7F4(a2, v26, &v38, &v36);
LABEL_58:
  v17 = v23;
  sub_24BCABE2C(&v36);
LABEL_49:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if (v39)
  {
    operator delete(v39);
  }

  return v17;
}

void sub_24BCAC6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::runtime_error a29)
{
  sub_24BCABE2C(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  v31 = *(v29 - 88);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BCAC7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = sub_24BCAEDC0(exception, a4);
    __cxa_throw(v7, &unk_285F93208, sub_24BCABE2C);
  }

  return 0;
}

uint64_t sub_24BCAC850(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 8) = 0u;
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  sub_24BCA9FC0(a1 + 96, a3);
  *(a1 + 144) = 0;
  *(a1 + 128) = a4;
  *(a1 + 136) = 9;
  v7 = 1;
  sub_24BCAC930(a1 + 32, &v7);
  return a1;
}

void sub_24BCAC8E0(_Unwind_Exception *a1)
{
  sub_24BC9F18C(v2, *(v1 + 136));
  sub_24BCAFFAC(v1 + 96);
  v5 = *(v1 + 56);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BCAC930(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_24BC8E01C();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_24BCAC9D8(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t sub_24BCAC9D8(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_24BC9FFD0(&v2, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BCACA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCACA94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_24BCACB38(&v18, &v16, &v14, &v13);
}

void sub_24BCACB38(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_24BCACBC8(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_24BCACBC8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t sub_24BCACC98(uint64_t a1, unint64_t a2)
{
  v4 = a1 + 8;
  v18 = sub_24BCAD5EC(a1 + 96, (*(a1 + 16) - *(a1 + 8)) >> 3, 0);
  sub_24BCAC930(a1 + 32, &v18);
  LOBYTE(v14) = 1;
  v16 = sub_24BCAD648(a1, &v14, 1);
  v17 = v5;
  sub_24BCAD7F8(v4, &v17);
  if (a2 != -1)
  {
    v6 = *(*(a1 + 16) - 8);
    if (v6)
    {
      v7 = *v6;
      if (v7 > 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = qword_24BFBD800[v7];
      }

      if (v8 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v13, a2);
        v11 = std::string::insert(&v13, 0, "excessive object size: ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v15 = v11->__r_.__value_.__r.__words[2];
        v14 = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        sub_24BCAD454(408, &v14, exception);
        __cxa_throw(exception, &unk_285F931C8, sub_24BCAD598);
      }
    }
  }

  return 1;
}

void sub_24BCACDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_24BCACE4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (sub_24BCAD5EC(a1 + 96, ((v2 - *(a1 + 8)) >> 3) - 1, 1) & 1) == 0)
  {
    sub_24BCA6218(v25, (a1 + 136));
    v3 = *(*(a1 + 16) - 8);
    v4 = *v3;
    *v3 = v25[0];
    v25[0] = v4;
    v5 = *(v3 + 1);
    *(v3 + 1) = v26;
    v26 = v5;
    sub_24BC9F18C(&v26, v4);
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = v6 - 8;
  *(a1 + 16) = v6 - 8;
  --*(a1 + 40);
  if (v7 != v6 - 8)
  {
    v9 = *(v6 - 16);
    if (v9)
    {
      v10 = *v9;
      if ((v10 - 1) <= 1)
      {
        v22 = v9;
        v23 = 0uLL;
        v24 = 0x8000000000000000;
        v11 = **(v9 + 1);
        v12 = v10 == 1;
        v13 = 2;
        if (v12)
        {
          v13 = 1;
        }

        (&v22)[v13] = v11;
        while (1)
        {
          v14 = *(v8 - 8);
          v20 = 0uLL;
          v19 = v14;
          v21 = 0x8000000000000000;
          v15 = *v14;
          if (v15 == 2)
          {
            *(&v20 + 1) = *(*(v14 + 1) + 8);
          }

          else if (v15 == 1)
          {
            *&v20 = *(v14 + 1) + 8;
          }

          else
          {
            v21 = 1;
          }

          if (sub_24BCADD08(&v22, &v19))
          {
            break;
          }

          if (*sub_24BCAD914(&v22) == 9)
          {
            v16 = *(*(a1 + 16) - 8);
            v19 = v22;
            v20 = v23;
            v21 = v24;
            sub_24BCADA08(v16, &v19, &v18);
            return 1;
          }

          sub_24BCA6F10(&v22);
          v8 = *(a1 + 16);
        }
      }
    }
  }

  return 1;
}

void sub_24BCAD10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  sub_24BC9F18C(&a11, a10);
  sub_24BC9F18C((v13 + 8), a13);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCAD13C(uint64_t a1, unint64_t a2)
{
  v4 = a1 + 8;
  v18 = sub_24BCAD5EC(a1 + 96, (*(a1 + 16) - *(a1 + 8)) >> 3, 2);
  sub_24BCAC930(a1 + 32, &v18);
  LOBYTE(v14) = 2;
  v16 = sub_24BCAD648(a1, &v14, 1);
  v17 = v5;
  sub_24BCAD7F8(v4, &v17);
  if (a2 != -1)
  {
    v6 = *(*(a1 + 16) - 8);
    if (v6)
    {
      v7 = *v6;
      if (v7 > 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = qword_24BFBD800[v7];
      }

      if (v8 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v13, a2);
        v11 = std::string::insert(&v13, 0, "excessive array size: ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v15 = v11->__r_.__value_.__r.__words[2];
        v14 = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        sub_24BCAD454(408, &v14, exception);
        __cxa_throw(exception, &unk_285F931C8, sub_24BCAD598);
      }
    }
  }

  return 1;
}

void sub_24BCAD290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_24BCAD2F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v2 - 8);
  v3 = v2 - 8;
  if (!v4)
  {
    *(a1 + 16) = v3;
    goto LABEL_5;
  }

  if (sub_24BCAD5EC(a1 + 96, ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1, 3))
  {
    *(a1 + 16) -= 8;
LABEL_5:
    --*(a1 + 40);
    return 1;
  }

  sub_24BCA6218(v15, (a1 + 136));
  v6 = *(*(a1 + 16) - 8);
  v7 = *v6;
  *v6 = v15[0];
  v15[0] = v7;
  v8 = *(v6 + 1);
  *(v6 + 1) = v16;
  v16 = v8;
  sub_24BC9F18C(&v16, v7);
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(a1 + 16) = v9 - 8;
  --*(a1 + 40);
  if (v10 != v9 - 8)
  {
    v11 = *(v9 - 16);
    if (*v11 == 2)
    {
      v12 = *(v11 + 8);
      v13 = *(v12 + 8);
      v14 = *(v13 - 16);
      v13 -= 16;
      sub_24BC9F18C((v13 + 8), v14);
      *(v12 + 8) = v13;
    }
  }

  return 1;
}

uint64_t sub_24BCAD3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_24BCAE2E0(exception, a4);
    __cxa_throw(v7, &unk_285F931C8, sub_24BCAD598);
  }

  return 0;
}

void sub_24BCAD454(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_24BC836D4(&__p, "out_of_range");
  sub_24BCA56C4(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  sub_24BCA5848(a3, a1, v11);
  *a3 = &unk_285F931F0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_24BCAD550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCAD598(std::runtime_error *a1)
{
  a1->__vftable = &unk_285F930C8;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_24BCAD5EC(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_24BCA1F3C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_24BCAD648(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v5 = *a2;
    v28[0] = v5;
    sub_24BCA5554(&v29, v5);
    if (a3 & 1) != 0 || (sub_24BCAD5EC((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v10 = v28[0];
        v11 = v29;
        v28[0] = 0;
        v29 = 0;
        v12 = *a1;
        v13 = **a1;
        *v12 = v10;
        v26 = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v11;
        v27 = v14;
        sub_24BC9F18C(&v27, v13);
        v15 = *a1;
        goto LABEL_12;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          sub_24BC9F590(*(v7 + 8), v28);
          v8 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v9 = 1;
LABEL_14:
          sub_24BC9F18C(&v29, v28[0]);
          return v9;
        }

        v16 = (a1[8] - 1);
        v17 = *&a1[7][(v16 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v16;
        if ((v17 >> v16))
        {
          v18 = v28[0];
          v19 = v29;
          v28[0] = 0;
          v29 = 0;
          v20 = a1[10];
          v21 = *v20;
          *v20 = v18;
          v22 = *(v20 + 1);
          *(v20 + 1) = v19;
          v25 = v22;
          sub_24BC9F18C(&v25, v21);
          v23 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  return 0;
}

void sub_24BCAD7F8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_24BC8E01C();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_24BCAD8CC(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_24BCAD8CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

unsigned __int8 *sub_24BCAD914(unsigned __int8 **a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 2)
  {
    return a1[2];
  }

  if (v3 == 1)
  {
    return a1[1] + 56;
  }

  if (a1[3])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_24BC836D4(v5, "cannot get value");
    sub_24BCA7088(214, v5, exception);
    __cxa_throw(exception, &unk_285F93120, sub_24BCA71CC);
  }

  return result;
}

void sub_24BCAD9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_24BCADA08(uint64_t ***a1@<X0>, uint64_t a2@<X1>, uint64_t ****a3@<X8>)
{
  if (*a2 != a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_24BC836D4(&v25, "iterator does not fit current value");
    sub_24BCA7088(202, &v25, exception);
    __cxa_throw(exception, &unk_285F93120, sub_24BCA71CC);
  }

  a3[1] = 0;
  *a3 = a1;
  a3[2] = 0;
  a3[3] = 0x8000000000000000;
  v5 = *a1;
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      a3[1] = sub_24BCADE10(a1[1], *(a2 + 8));
      return;
    }

    a3[3] = 1;
    if ((v5 - 3) > 5)
    {
      v20 = __cxa_allocate_exception(0x20uLL);
      v21 = sub_24BCA6188(a1);
      sub_24BC836D4(&v24, v21);
      v22 = std::string::insert(&v24, 0, "cannot use erase() with ");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v26 = v22->__r_.__value_.__r.__words[2];
      v25 = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      sub_24BCA5E44(307, &v25, v20);
      __cxa_throw(v20, &unk_285F930E0, sub_24BCA5F88);
    }

    if (*(a2 + 24))
    {
      v19 = __cxa_allocate_exception(0x20uLL);
      sub_24BC836D4(&v25, "iterator out of range");
      sub_24BCA7088(205, &v25, v19);
      __cxa_throw(v19, &unk_285F93120, sub_24BCA71CC);
    }

    if (v5 == 8)
    {
      v15 = (a1 + 1);
      v14 = a1[1];
      v17 = *v14;
      if (*v14)
      {
        v14[1] = v17;
        v16 = v17;
        goto LABEL_17;
      }
    }

    else
    {
      if (v5 != 3)
      {
LABEL_19:
        *a1 = 0;
        return;
      }

      v15 = (a1 + 1);
      v14 = a1[1];
      if (*(v14 + 23) < 0)
      {
        v16 = *v14;
LABEL_17:
        operator delete(v16);
        v14 = *v15;
      }
    }

    operator delete(v14);
    *v15 = 0;
    goto LABEL_19;
  }

  v6 = a1[1];
  v7 = v6[1];
  a3[2] = v7;
  v8 = *(a2 + 16);
  sub_24BCAE250(&v25, (v8 + 16), v7, v8);
  v10 = v9;
  v11 = v6[1];
  if (v11 != v9)
  {
    v12 = v11 - 1;
    do
    {
      v13 = v12 - 1;
      sub_24BC9F18C(v12, *(v12 - 8));
      v12 -= 2;
    }

    while (v13 != v10);
  }

  v6[1] = v10;
  a3[2] = v8;
}

void sub_24BCADC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BCADD08(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_24BC836D4(v7, "cannot compare iterators of different containers");
    sub_24BCA7088(212, v7, exception);
    __cxa_throw(exception, &unk_285F93120, sub_24BCA71CC);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_24BCADDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t *sub_24BCADE10(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_24BCADE5C(a1, a2);
  sub_24BC9F9D8(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t *sub_24BCADE5C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_24BCADED0(v6, a2);
  return v3;
}

uint64_t *sub_24BCADED0(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

char *sub_24BCAE250(uint64_t a1, char *a2, char *a3, unsigned __int8 *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      v8 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v9 = *a4;
      *a4 = v7;
      v10 = *(a4 + 1);
      *(a4 + 1) = v8;
      v12 = v10;
      sub_24BC9F18C(&v12, v9);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_24BCAE2E0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285F930C8;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x24C254110](a1 + 16, a2 + 16);
  *a1 = &unk_285F931F0;
  return a1;
}

void sub_24BCAE350(std::runtime_error *a1)
{
  a1->__vftable = &unk_285F930C8;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCAE3B8(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v27[0] = 7;
    v28 = v4;
    if (a3 & 1) != 0 || (sub_24BCAD5EC((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v9 = v27[0];
        v10 = v28;
        v27[0] = 0;
        v28 = 0;
        v11 = *a1;
        v12 = **a1;
        *v11 = v9;
        v25 = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v10;
        v26 = v13;
        sub_24BC9F18C(&v26, v12);
        v14 = *a1;
        goto LABEL_12;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          sub_24BC9F590(*(v6 + 8), v27);
          v7 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v8 = 1;
LABEL_14:
          sub_24BC9F18C(&v28, v27[0]);
          return v8;
        }

        v15 = (a1[8] - 1);
        v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v15;
        if ((v16 >> v15))
        {
          v17 = v27[0];
          v18 = v28;
          v27[0] = 0;
          v28 = 0;
          v19 = a1[10];
          v20 = *v19;
          *v19 = v17;
          v21 = *(v19 + 1);
          *(v19 + 1) = v18;
          v24 = v21;
          sub_24BC9F18C(&v24, v20);
          v22 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_24BCAE564(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v27[0] = 4;
    v28 = v4;
    if (a3 & 1) != 0 || (sub_24BCAD5EC((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v9 = v27[0];
        v10 = v28;
        v27[0] = 0;
        v28 = 0;
        v11 = *a1;
        v12 = **a1;
        *v11 = v9;
        v25 = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v10;
        v26 = v13;
        sub_24BC9F18C(&v26, v12);
        v14 = *a1;
        goto LABEL_12;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          sub_24BC9F590(*(v6 + 8), v27);
          v7 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v8 = 1;
LABEL_14:
          sub_24BC9F18C(&v28, v27[0]);
          return v8;
        }

        v15 = (a1[8] - 1);
        v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v15;
        if ((v16 >> v15))
        {
          v17 = v27[0];
          v18 = v28;
          v27[0] = 0;
          v28 = 0;
          v19 = a1[10];
          v20 = *v19;
          *v19 = v17;
          v21 = *(v19 + 1);
          *(v19 + 1) = v18;
          v24 = v21;
          sub_24BC9F18C(&v24, v20);
          v22 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_24BCAE710(unsigned __int8 **a1, uint64_t a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v26[0] = 0;
    v27 = 0;
    if (a3 & 1) != 0 || (sub_24BCAD5EC((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v4 = a1[2];
      if (a1[1] == v4)
      {
        v8 = v26[0];
        v9 = v27;
        v26[0] = 0;
        v27 = 0;
        v10 = *a1;
        v11 = **a1;
        *v10 = v8;
        v24 = v11;
        v12 = *(v10 + 8);
        *(v10 + 8) = v9;
        v25 = v12;
        sub_24BC9F18C(&v25, v11);
        v13 = *a1;
        goto LABEL_12;
      }

      v5 = *(v4 - 1);
      if (v5)
      {
        if (*v5 == 2)
        {
          sub_24BC9F590(*(v5 + 8), v26);
          v6 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v7 = 1;
LABEL_14:
          sub_24BC9F18C(&v27, v26[0]);
          return v7;
        }

        v14 = (a1[8] - 1);
        v15 = *&a1[7][(v14 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v14;
        if ((v15 >> v14))
        {
          v16 = v26[0];
          v17 = v27;
          v26[0] = 0;
          v27 = 0;
          v18 = a1[10];
          v19 = *v18;
          *v18 = v16;
          v20 = *(v18 + 1);
          *(v18 + 1) = v17;
          v23 = v20;
          sub_24BC9F18C(&v23, v19);
          v21 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_24BCAE8B4(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v27[0] = 5;
    v28 = v4;
    if (a3 & 1) != 0 || (sub_24BCAD5EC((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v9 = v27[0];
        v10 = v28;
        v27[0] = 0;
        v28 = 0;
        v11 = *a1;
        v12 = **a1;
        *v11 = v9;
        v25 = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v10;
        v26 = v13;
        sub_24BC9F18C(&v26, v12);
        v14 = *a1;
        goto LABEL_12;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          sub_24BC9F590(*(v6 + 8), v27);
          v7 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v8 = 1;
LABEL_14:
          sub_24BC9F18C(&v28, v27[0]);
          return v8;
        }

        v15 = (a1[8] - 1);
        v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v15;
        if ((v16 >> v15))
        {
          v17 = v27[0];
          v18 = v28;
          v27[0] = 0;
          v28 = 0;
          v19 = a1[10];
          v20 = *v19;
          *v19 = v17;
          v21 = *(v19 + 1);
          *(v19 + 1) = v18;
          v24 = v21;
          sub_24BC9F18C(&v24, v20);
          v22 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_24BCAEA60(uint64_t a1)
{
  if ((*(*(a1 + 32) + (((*(a1 + 40) - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 40) - 1)))
  {
    sub_24BCA6A78();
  }

  return 0;
}

uint64_t sub_24BCAEC14(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v27[0] = 6;
    v28 = v4;
    if (a3 & 1) != 0 || (sub_24BCAD5EC((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v9 = v27[0];
        v10 = v28;
        v27[0] = 0;
        v28 = 0;
        v11 = *a1;
        v12 = **a1;
        *v11 = v9;
        v25 = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v10;
        v26 = v13;
        sub_24BC9F18C(&v26, v12);
        v14 = *a1;
        goto LABEL_12;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          sub_24BC9F590(*(v6 + 8), v27);
          v7 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v8 = 1;
LABEL_14:
          sub_24BC9F18C(&v28, v27[0]);
          return v8;
        }

        v15 = (a1[8] - 1);
        v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v15;
        if ((v16 >> v15))
        {
          v17 = v27[0];
          v18 = v28;
          v27[0] = 0;
          v28 = 0;
          v19 = a1[10];
          v20 = *v19;
          *v19 = v17;
          v21 = *(v19 + 1);
          *(v19 + 1) = v18;
          v24 = v21;
          sub_24BC9F18C(&v24, v20);
          v22 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_24BCAEDC0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285F930C8;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x24C254110](a1 + 16, a2 + 16);
  *a1 = &unk_285F93230;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_24BCAEE3C(std::runtime_error *a1)
{
  a1->__vftable = &unk_285F930C8;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCAEEA4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v12, *(a1 + 16) + 1);
  v4 = std::string::insert(&v12, 0, " at line ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ", column ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(a1 + 8));
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

  v10 = std::string::append(&v14, p_p, size);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_24BCAEFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_24BCAF020(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown token";
  }

  else
  {
    return off_27916C390[a1];
  }
}

uint64_t sub_24BCAF044(uint64_t a1)
{
  sub_24BC9F18C((a1 + 144), *(a1 + 136));
  sub_24BCAFFAC(a1 + 96);
  v2 = *(a1 + 56);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_24BCAF0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_24BCAE2E0(exception, a4);
    __cxa_throw(v7, &unk_285F931C8, sub_24BCAD598);
  }

  return 0;
}

uint64_t sub_24BCAF100(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20 = v9;
    sub_24BCA5554(&v21, v9);
    v10 = *a1;
    v11 = **a1;
    *v10 = v20;
    v20 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21;
    v21 = v12;
    sub_24BC9F18C(&v21, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_24BCAF230(v5, a2);
      }

      else
      {
        v7 = *a2;
        *v6 = v7;
        sub_24BCA5554((v6 + 8), v7);
        v8 = v6 + 16;
        *(v5 + 8) = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v18 = v14;
      sub_24BCA5554(&v19, v14);
      v15 = a1[4];
      v16 = *v15;
      *v15 = v18;
      v17 = *(v15 + 1);
      *(v15 + 1) = v19;
      v19 = v17;
      sub_24BC9F18C(&v19, v16);
      return a1[4];
    }
  }
}

uint64_t sub_24BCAF230(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_24BC9F6D4(a1, v7);
  }

  v15 = 0;
  v16 = (16 * v2);
  v17 = (16 * v2);
  v8 = *a2;
  *v16 = v8;
  sub_24BCA5554((16 * v2 + 8), v8);
  *&v17 = v17 + 16;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_24BC9F71C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_24BC9F7FC(&v15);
  return v14;
}

void sub_24BCAF330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9F7FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCAF344(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 7;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_24BC9F18C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_24BCAF444(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 7;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 7;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_24BC9F18C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_24BCAF444(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_24BC9F6D4(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 7;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_24BC9F71C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_24BC9F7FC(&v16);
  return v15;
}

void sub_24BCAF544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9F7FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCAF558(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 4;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_24BC9F18C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_24BCAF658(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 4;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 4;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_24BC9F18C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_24BCAF658(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_24BC9F6D4(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 4;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_24BC9F71C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_24BC9F7FC(&v16);
  return v15;
}

void sub_24BCAF758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9F7FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCAF76C(unsigned __int8 **a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v7 = *a1;
    v8 = **a1;
    *v7 = 0;
    v15 = v8;
    v9 = *(v7 + 8);
    *(v7 + 8) = 0;
    v16 = v9;
    sub_24BC9F18C(&v16, v8);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 1);
    if (*v3 == 2)
    {
      v4 = *(v3 + 8);
      v5 = *(v4 + 8);
      if (v5 >= *(v4 + 16))
      {
        v6 = sub_24BCAF850(v4);
      }

      else
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v6 = v5 + 16;
      }

      *(v4 + 8) = v6;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v11 = a1[4];
      v12 = *v11;
      *v11 = 0;
      v13 = *(v11 + 1);
      *(v11 + 1) = 0;
      v14 = v13;
      sub_24BC9F18C(&v14, v12);
      return a1[4];
    }
  }
}

uint64_t sub_24BCAF850(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    sub_24BC9F6D4(a1, v5);
  }

  v6 = 16 * v1;
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *&v15 = 16 * v1 + 16;
  v7 = *(a1 + 8);
  v8 = 16 * v1 + *a1 - v7;
  sub_24BC9F71C(a1, *a1, v7, v6 + *a1 - v7);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_24BC9F7FC(&v13);
  return v12;
}

void sub_24BCAF938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9F7FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCAF94C(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 5;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_24BC9F18C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_24BCAFA4C(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 5;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 5;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_24BC9F18C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_24BCAFA4C(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_24BC9F6D4(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 5;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_24BC9F71C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_24BC9F7FC(&v16);
  return v15;
}

void sub_24BCAFB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9F7FC(va);
  _Unwind_Resume(a1);
}

void sub_24BCAFB60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) != v1)
  {
    v2 = *(v1 - 8);
    if (*v2 == 2)
    {
      v3 = *(v2 + 8);
      v4 = v3[1];
      if (v4 < v3[2])
      {
        *(v4 + 8) = 0;
        *v4 = 3;
        sub_24BCA6A78();
      }

      sub_24BCAFC80(v3);
    }

    sub_24BCA6A78();
  }

  sub_24BCA6A78();
}

void sub_24BCAFC80(void *a1)
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
      sub_24BC9F6D4(a1, v4);
    }

    v5 = 16 * v1;
    v6 = v5;
    v7 = v5;
    *(v5 + 8) = 0;
    *v5 = 3;
    sub_24BCA6A78();
  }

  sub_24BC8E01C();
}

void sub_24BCAFD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9F7FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCAFD98(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 6;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_24BC9F18C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_24BCAFE98(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 6;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 6;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_24BC9F18C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_24BCAFE98(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_24BC9F6D4(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 6;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_24BC9F71C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_24BC9F7FC(&v16);
  return v15;
}

void sub_24BCAFF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC9F7FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCAFFAC(uint64_t a1)
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

void *sub_24BCB002C(void *a1)
{
  if (*a1)
  {
    std::ios_base::clear((*a1 + *(**a1 - 24)), *(*a1 + *(**a1 - 24) + 32) & 2);
  }

  return a1;
}

uint64_t sub_24BCB0080(uint64_t a1, std::string::value_type *__s)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::string::compare((v3 + 32), __s);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || std::string::compare((v5 + 32), __s) >= 1)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_24BCB0100(uint64_t a1, const void **a2)
{
  v2 = *sub_24BCA6748(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_24BCB01B0(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    v7 = v3 == 5 && v4 == 7;
    if (v7)
    {
      v12 = *(a1 + 1);
    }

    else
    {
      if (v3 == 7 && v4 == 5)
      {
        v10 = *(a1 + 1);
        v11 = a2[1];
        return v10 == v11;
      }

      if (v3 != 6 || v4 != 7)
      {
        if (v3 != 7 || v4 != 6)
        {
          if (v3 == 6 && v4 == 5)
          {
            return *(a1 + 1) == a2[1];
          }

          result = 0;
          if (v3 == 5 && v4 == 6)
          {
            return *(a1 + 1) == a2[1];
          }

          return result;
        }

        v10 = *(a1 + 1);
        v11 = a2[1];
        return v10 == v11;
      }

      v12 = *(a1 + 1);
    }

    return *(a2 + 1) == v12;
  }

  if (*a1 > 3u)
  {
    if (*a1 <= 5u)
    {
      if (v3 == 4)
      {
        return a1[8] == *(a2 + 8);
      }
    }

    else if (v3 != 6)
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          v5 = a2[1];
          v44[0] = *(a1 + 1);
          v44[1] = v44[0] + 24;
          v44[2] = v44[0] + 25;
          v43[0] = v5;
          v43[1] = v5 + 24;
          v43[2] = v5 + 25;
          return sub_24BCB0510(&v45, v44, v43);
        }

        return 0;
      }

      v10 = *(a1 + 1);
      v11 = *(a2 + 1);
      return v10 == v11;
    }

    return *(a1 + 1) == a2[1];
  }

  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      return 1;
    }

    v14 = *(a1 + 1);
    v15 = a2[1];
    if (v14[2] == v15[2])
    {
      v18 = *v14;
      v16 = v14 + 1;
      v17 = v18;
      if (v18 != v16)
      {
        v19 = *v15;
        while (1)
        {
          v20 = *(v17 + 55);
          if (v20 >= 0)
          {
            v21 = *(v17 + 55);
          }

          else
          {
            v21 = v17[5];
          }

          v22 = *(v19 + 55);
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = v19[5];
          }

          if (v21 != v22)
          {
            break;
          }

          v24 = v20 >= 0 ? v17 + 4 : v17[4];
          v25 = v23 >= 0 ? v19 + 4 : v19[4];
          if (memcmp(v24, v25, v21))
          {
            break;
          }

          result = sub_24BCB01B0(v17 + 7, v19 + 7);
          if (result)
          {
            v26 = v17[1];
            v27 = v17;
            if (v26)
            {
              do
              {
                v17 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v17 = v27[2];
                v7 = *v17 == v27;
                v27 = v17;
              }

              while (!v7);
            }

            v28 = v19[1];
            if (v28)
            {
              do
              {
                v29 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = v19[2];
                v7 = *v29 == v19;
                v19 = v29;
              }

              while (!v7);
            }

            result = 1;
            v19 = v29;
            if (v17 != v16)
            {
              continue;
            }
          }

          return result;
        }

        return 0;
      }

      return 1;
    }

    return 0;
  }

  if (v3 != 2)
  {
    v30 = *(a1 + 1);
    v31 = a2[1];
    v32 = *(v30 + 23);
    if (v32 >= 0)
    {
      v33 = *(v30 + 23);
    }

    else
    {
      v33 = *(v30 + 8);
    }

    v34 = *(v31 + 23);
    v35 = v34;
    if ((v34 & 0x80u) != 0)
    {
      v34 = *(v31 + 8);
    }

    if (v33 == v34)
    {
      if (v32 >= 0)
      {
        v36 = *(a1 + 1);
      }

      else
      {
        v36 = *v30;
      }

      if (v35 >= 0)
      {
        v37 = a2[1];
      }

      else
      {
        v37 = *v31;
      }

      return memcmp(v36, v37, v33) == 0;
    }

    return 0;
  }

  v38 = *(a1 + 1);
  v39 = a2[1];
  v40 = *v38;
  v41 = v38[1];
  v42 = *v39;
  if (v41 - *v38 != v39[1] - *v39)
  {
    return 0;
  }

  if (v40 == v41)
  {
    return 1;
  }

  do
  {
    result = sub_24BCB01B0(v40, v42);
    if (!result)
    {
      break;
    }

    v40 += 16;
    v42 += 16;
  }

  while (v40 != v41);
  return result;
}

BOOL sub_24BCB0510(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = **a2;
  v7 = *(*a2 + 8) - v6;
  return v7 == *(v5 + 8) - *v5 && !memcmp(v6, *v5, v7) && **(a2 + 8) == *a3[1] && **(a2 + 16) == *a3[2];
}

unsigned __int8 *sub_24BCB0594(unsigned __int8 *result, float *a2, float a3)
{
  v3 = result;
  v4 = *result;
  if (v4 > 5)
  {
    if (v4 == 7)
    {
      v5 = *(result + 1);
      goto LABEL_10;
    }

    if (v4 == 6)
    {
      v5 = *(result + 1);
      goto LABEL_10;
    }

LABEL_11:
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_24BCA6188(v3);
    sub_24BC836D4(&v10, v7);
    v8 = std::string::insert(&v10, 0, "type must be number, but is ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(302, &v11, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  if (v4 == 4)
  {
    LOBYTE(a3) = result[8];
    v5 = LODWORD(a3);
    goto LABEL_10;
  }

  if (v4 != 5)
  {
    goto LABEL_11;
  }

  v5 = *(result + 1);
LABEL_10:
  *a2 = v5;
  return result;
}

void sub_24BCB06A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_24BCB0708(uint64_t **a1, const void **a2)
{
  v3 = sub_24BCB0750(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_24BCADE10(a1, v3);
  return 1;
}

uint64_t sub_24BCB0750(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_24BCA66DC(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_24BCA66DC(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

unsigned __int8 *sub_24BCB07E0(unsigned __int8 *result, unsigned int *a2)
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
    v6 = sub_24BCA6188(v2);
    sub_24BC836D4(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(302, &v10, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 2);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_24BCB08E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

unsigned __int8 *sub_24BCB0940(unsigned __int8 *result, _BYTE *a2)
{
  v2 = result;
  if (*result != 4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_24BCA6188(v2);
    sub_24BC836D4(&v7, v4);
    v5 = std::string::insert(&v7, 0, "type must be BOOLean, but is ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(302, &v8, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  *a2 = result[8];
  return result;
}

void sub_24BCB0A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

unsigned __int8 *sub_24BCB0BDC(unsigned __int8 *result, double *a2)
{
  v2 = result;
  v3 = *result;
  switch(v3)
  {
    case 5:
      v4 = *(result + 1);
      break;
    case 7:
      v4 = *(result + 1);
      break;
    case 6:
      v4 = *(result + 1);
      break;
    default:
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_24BCA6188(v2);
      sub_24BC836D4(&v9, v6);
      v7 = std::string::insert(&v9, 0, "type must be number, but is ");
      v8 = *&v7->__r_.__value_.__l.__data_;
      v11 = v7->__r_.__value_.__r.__words[2];
      v10 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      sub_24BCA5E44(302, &v10, exception);
      __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  *a2 = v4;
  return result;
}

void sub_24BCB0CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t *sub_24BCB0D30(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x24C2542D0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_24BCB0EB8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BCB0EF0(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x24C2542D0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_24BCB107C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x24C2547D0](v1);
  _Unwind_Resume(a1);
}

void sub_24BCB10F0(uint64_t a1)
{
  sub_24BCB36B8(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCB1128(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_24BCB3798(a1);
  sub_24BCB38F8(a1, (a2[1] - *a2) >> 4);
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = (*(a1 + 8) + 16 * *(a1 + 176));
      v13 = *v11;
      v12 = v11[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v12);
      }

      *(*(v13 + 40) + 16 * v9) = *(v8 + 16 * v9);
      v9 = v10;
      v8 = *a2;
      ++v10;
    }

    while (v9 < (a2[1] - *a2) >> 4);
  }

  sub_24BCB39C8(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) + ((a3[1] - *a3) >> 4));
  sub_24BCB3CFC(a1);
}

void sub_24BCB1398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCB13BC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_24BCB3798(a1);
  v7 = (a2[1] - *a2) >> 2;
  v8 = v7 / 3;
  if (v7 == 3 * (v7 / 3))
  {
    v9 = a4[1] - *a4;
    v10 = v8;
    sub_24BCB38F8(a1, v8);
    if (v10)
    {
      v12 = 0;
      v13 = 16 * v10;
      v14 = 2;
      do
      {
        LODWORD(v11) = *(*a2 + 4 * (v14 - 2));
        DWORD1(v11) = *(*a2 + 4 * (v14 - 1));
        DWORD2(v11) = *(*a2 + 4 * v14);
        v15 = (*(a1 + 8) + 16 * *(a1 + 176));
        v17 = *v15;
        v16 = v15[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = v11;
          sub_24BC9EC78(v16);
          v11 = v19;
        }

        *(*(v17 + 40) + v12) = v11;
        v12 += 16;
        v14 += 3;
      }

      while (v13 != v12);
    }

    sub_24BCB39C8(a1, v9);
    sub_24BCB3CFC(a1);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "in_positions length not divisible by 3");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BCB15E4(void *a1)
{
  v3 = a1[13];
  v4 = a1[14];
  v2 = a1 + 13;
  v5 = a1[20] - a1[19];
  v6 = (v5 >> 2);
  sub_24BCB2084(v13, v6);
  if ((v5 & 0x3FFFFFFFCLL) != 0)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      __p = 0;
      v11 = 0;
      v12 = 0;
      LODWORD(v9) = v8;
      sub_24BCB1A9C(a1, &v9, &__p);
      if ((v13[0] + v7) != &__p)
      {
        sub_24BCA2A30((v13[0] + v7), __p, v11, (v11 - __p) >> 2);
      }

      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      ++v8;
      v7 += 24;
    }

    while (v6 != v8);
  }

  sub_24BCB8C30(v2);
  sub_24BCB9404(v2, ((v4 - v3) >> 2));
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_24BCB944C(v2, v6);
  sub_24BCB3CFC(a1);
}

void sub_24BCB1A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char *__p, char *a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = &a16;
  sub_24BC8EE84(&__p);
  _Unwind_Resume(a1);
}

void sub_24BCB1A9C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = *sub_24BCB9038(a1 + 104, a2);
  v18 = v5;
  do
  {
    v18 = *(sub_24BCB9024(a1 + 104, &v18) + 8);
    v6 = sub_24BCB9024(a1 + 104, &v18);
    v8 = *(a3 + 8);
    v7 = *(a3 + 16);
    if (v8 >= v7)
    {
      v10 = (v8 - *a3) >> 2;
      if ((v10 + 1) >> 62)
      {
        sub_24BC8E01C();
      }

      v11 = v7 - *a3;
      v12 = v11 >> 1;
      if (v11 >> 1 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_24BC92E0C(a3, v13);
      }

      v14 = (4 * v10);
      *v14 = *(v6 + 12);
      v9 = 4 * v10 + 4;
      v15 = *(a3 + 8) - *a3;
      v16 = v14 - v15;
      memcpy(v14 - v15, *a3, v15);
      v17 = *a3;
      *a3 = v16;
      *(a3 + 8) = v9;
      *(a3 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v8 = *(v6 + 12);
      v9 = (v8 + 1);
    }

    *(a3 + 8) = v9;
  }

  while (v18 != v5);
}

void sub_24BCB1BC8(uint64_t a1, unsigned int a2, unsigned int a3, char a4)
{
  v4 = *(a1 + 8);
  if (v4 != *(a1 + 16))
  {
    v7 = a2;
    v8 = a3;
    while (1)
    {
      v9 = *v4;
      if (!*v4 || (a4 & 1) != 0)
      {
        break;
      }

      if (*(v9 + 31) < 0)
      {
        sub_24BC8DE9C(&__p, *(v9 + 8), *(v9 + 16));
      }

      else
      {
        v10 = *(v9 + 8);
        __p.__r_.__value_.__r.__words[2] = *(v9 + 24);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      std::string::basic_string(&v13, &__p, 0, 2uLL, &v14);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        v11 = v13.__r_.__value_.__l.__size_ != 2 || *v13.__r_.__value_.__l.__data_ != 14966;
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      else
      {
        v11 = SHIBYTE(v13.__r_.__value_.__r.__words[2]) != 2 || LOWORD(v13.__r_.__value_.__l.__data_) != 14966;
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v11)
        {
          goto LABEL_24;
        }

LABEL_22:
        v9 = *v4;
LABEL_23:
        (*(*v9 + 64))(v9, v7, v8);
        goto LABEL_24;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v11)
      {
        goto LABEL_22;
      }

LABEL_24:
      v4 += 2;
      if (v4 == *(a1 + 16))
      {
        return;
      }
    }

    if (!v9)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }
}

void sub_24BCB1D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCB1D48(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = *sub_24BCB9038(a1 + 104, a2);
  v17 = v5;
  do
  {
    v6 = *(sub_24BCB9024(a1 + 104, &v17) + 8);
    v17 = v6;
    v8 = *(a3 + 8);
    v7 = *(a3 + 16);
    if (v8 >= v7)
    {
      v10 = (v8 - *a3) >> 2;
      if ((v10 + 1) >> 62)
      {
        sub_24BC8E01C();
      }

      v11 = v7 - *a3;
      v12 = v11 >> 1;
      if (v11 >> 1 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v13 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_24BC92E0C(a3, v13);
      }

      *(4 * v10) = v6;
      v9 = 4 * v10 + 4;
      v14 = *(a3 + 8) - *a3;
      v15 = (4 * v10 - v14);
      memcpy(v15, *a3, v14);
      v16 = *a3;
      *a3 = v15;
      *(a3 + 8) = v9;
      *(a3 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v8 = v6;
      v9 = (v8 + 1);
    }

    *(a3 + 8) = v9;
  }

  while (v17 != v5);
}

uint64_t sub_24BCB1E60(uint64_t a1)
{
  v7 = -1;
  v2 = strlen(off_27F078FB8[0]);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  v6 = v2;
  if (v2)
  {
    memmove(&__p, off_27F078FB8[0], v2);
  }

  *(&__p + v3) = 0;
  sub_24BCB1F74(a1, &v7, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return sub_24BCB2BF0(a1, v7);
}

void sub_24BCB1F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BCB1F74(uint64_t a1, _DWORD *a2, const void **a3)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  v4 = sub_24BCB2128((a1 + 56), &__p, a3);
  *a2 = v4;
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return v4 != -1;
}

void sub_24BCB1FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCB2008(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(result, a2);
  }

  return result;
}

void sub_24BCB2068(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCB2084(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(result, a2);
  }

  return result;
}

uint64_t sub_24BCB2128(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BCB2250;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_24BCB2264(uint64_t a1)
{
  *a1 = &unk_285F932A8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_24BCB22BC(uint64_t a1, unsigned int a2)
{
  sub_24BC836D4(__p, off_27F078F78[0]);
  v75[0] = 0;
  v4 = sub_24BCB74D4((a1 + 80), v75, __p);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = 0;
  if (v4 == -1 || a2 == 0xFFFFFFFFLL)
  {
    return v5;
  }

  __p[0] = 0;
  __p[1] = 0;
  v77 = 0;
  memset(v75, 0, sizeof(v75));
  v6 = (*(a1 + 80) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v7);
  }

  v9 = (*(*v8 + 16))(v8);
  sub_24BCB29DC(__p, v9, 1);
  v10 = v4;
  v11 = (*(a1 + 80) + 16 * v4);
  v13 = *v11;
  v12 = v11[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v12);
  }

  v14 = (*(*v13 + 16))(v13);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  sub_24BCB2B48(v75, v14, &v72);
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  LODWORD(v72) = 0;
  if (*(a1 + 160) != *(a1 + 152))
  {
    v15 = 0;
    do
    {
      v16 = (*(a1 + 56) + 16 * a2);
      v18 = *v16;
      v17 = v16[1];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v17);
        v15 = v72;
      }

      v19 = 0;
      v20 = *(v18 + 40) + 12 * v15;
      do
      {
        v21 = *(v20 + v19);
        *(__p[0] + ((v21 >> 3) & 0x1FFFFFF8)) &= ~(1 << v21);
        sub_24BC97D60((v75[0] + 24 * v21), &v72);
        v19 += 4;
      }

      while (v19 != 12);
      LODWORD(v72) = v72 + 1;
      v15 = v72;
    }

    while (v72 < ((*(a1 + 160) - *(a1 + 152)) >> 2));
  }

  v22 = (*(a1 + 80) + 16 * v10);
  v24 = *v22;
  v23 = v22[1];
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v23);
  }

  v25 = (*(*v24 + 16))(v24);
  v26 = v25;
  if (!v25)
  {
    goto LABEL_78;
  }

  v70 = v25;
  v71 = v10;
  v27 = 0;
  v28 = 0;
  v29 = v25 - 1;
  while (1)
  {
    if (v29 > v28)
    {
      while (((*(__p[0] + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29) & 1) != 0)
      {
        if (--v29 <= v28)
        {
          v29 = v28;
          break;
        }
      }
    }

    if (v28 < v29)
    {
      v30 = v27;
      v31 = v28;
      while (((*(__p[0] + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        ++v31;
        ++v30;
        if (v29 == v31)
        {
          v27 = v29 + v27 - v28;
          goto LABEL_57;
        }
      }

      v28 = v31;
      v27 = v30;
    }

    if (v28 == v29)
    {
      break;
    }

    if ((*(__p[0] + (v28 >> 6)) & (1 << v28)) == 0 || (*(__p[0] + (v29 >> 6)) & (1 << v29)) != 0)
    {
      v68 = 0;
      v26 = v70;
      goto LABEL_79;
    }

    v32 = (v75[0] + 24 * v29);
    v34 = *v32;
    v33 = v32[1];
    while (v34 != v33)
    {
      v35 = *v34;
      v36 = (*(a1 + 56) + 16 * a2);
      v38 = *v36;
      v37 = v36[1];
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v37);
      }

      v39 = 0;
      v40 = *(v38 + 40) + 12 * v35;
      do
      {
        if (v29 == *(v40 + v39))
        {
          *(v40 + v39) = v28;
        }

        v39 += 4;
      }

      while (v39 != 12);
      ++v34;
    }

    v41 = (*(a1 + 80) + 16 * v71);
    v43 = *v41;
    v42 = v41[1];
    if (!v42)
    {
      v47 = *(*(v43 + 40) + 8 * v28);
LABEL_52:
      v56 = 1 << v28;
      v55 = v28 >> 6;
      v57 = 1 << v29;
      v50 = (*(v43 + 40) + 8 * v29);
      goto LABEL_53;
    }

    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v42);
    v44 = (*(a1 + 80) + 16 * v71);
    v46 = *v44;
    v45 = v44[1];
    v47 = *(*(v43 + 40) + 8 * v28);
    if (!v45)
    {
      v43 = *v44;
      goto LABEL_52;
    }

    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v45);
    v48 = (*(a1 + 80) + 16 * v71);
    v43 = *v48;
    v49 = v48[1];
    v50 = (*(v46 + 40) + 8 * v29);
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v49);
      v51 = (*(a1 + 80) + 16 * v71);
      v53 = *v51;
      v52 = v51[1];
      v54 = (*(v43 + 40) + 8 * v28);
      *v54 = *v50;
      v54[1] = v50[1];
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v52);
      }

      v56 = 1 << v28;
      v55 = v28 >> 6;
      v57 = 1 << v29;
      goto LABEL_54;
    }

    v56 = 1 << v28;
    v55 = v28 >> 6;
    v57 = 1 << v29;
LABEL_53:
    v58 = (*(v43 + 40) + 8 * v28);
    *v58 = *v50;
    v58[1] = v50[1];
    v53 = v43;
LABEL_54:
    *(*(v53 + 40) + 8 * v29) = v47;
    v59 = __p[0];
    *(__p[0] + v55) &= ~v56;
    v59[v29 >> 6] |= v57;
    ++v28;
    ++v27;
    if (v28 > v29)
    {
      goto LABEL_58;
    }
  }

LABEL_57:
  v59 = __p[0];
  v27 += (~*(__p[0] + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29) & 1;
LABEL_58:
  v26 = v70;
  if (v27 && ((*(v59 + (((v27 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v27 - 1)) & 1) != 0)
  {
    LOBYTE(v60) = 0;
  }

  else if (v27 == v70)
  {
    LOBYTE(v60) = 1;
  }

  else
  {
    v60 = (*(v59 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v27) & 1;
  }

  v61 = 0;
  while (2)
  {
    if (v61 >= v27)
    {
      if ((v60 & 1) == 0)
      {
        goto LABEL_70;
      }

      v60 = (*(__p[0] + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v61) & 1;
    }

    else
    {
      if (v60)
      {
        LOBYTE(v60) = ((*(__p[0] + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v61) & 1) == 0;
        goto LABEL_71;
      }

LABEL_70:
      LOBYTE(v60) = 0;
    }

LABEL_71:
    if (v70 != ++v61)
    {
      continue;
    }

    break;
  }

  if ((v60 & 1) == 0)
  {
LABEL_78:
    v68 = 0;
    goto LABEL_79;
  }

  v62 = (*(a1 + 80) + 16 * v71);
  v64 = *v62;
  v63 = v62[1];
  if (v63)
  {
    atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v63);
  }

  (*(*v64 + 32))(v64, v27);
  v65 = (*(a1 + 80) + 16 * v71);
  v67 = *v65;
  v66 = v65[1];
  if (v66)
  {
    atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v66);
  }

  v68 = (*(*v67 + 16))(v67) == v27;
LABEL_79:
  if (v26)
  {
    v5 = v68;
  }

  else
  {
    v5 = 1;
  }

  v72 = v75;
  sub_24BC8EE84(&v72);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_24BCB2954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  a16 = &a19;
  sub_24BC8EE84(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BCB29DC(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_24BC8E01C();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_24BCAC9D8(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    sub_24BCB7610(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    sub_24BCA0014(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  sub_24BCA00C8(&v20, v5);
}

void sub_24BCB2B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCB2B48(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    sub_24BCB7744(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

uint64_t sub_24BCB2BF0(uint64_t a1, unsigned int a2)
{
  sub_24BC836D4(__p, off_27F078F78[0]);
  v80[0] = 0;
  v4 = sub_24BCB74D4((a1 + 80), v80, __p);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = 0;
  if (v4 == -1 || a2 == 0xFFFFFFFFLL)
  {
    return v5;
  }

  __p[0] = 0;
  __p[1] = 0;
  v82 = 0;
  memset(v80, 0, sizeof(v80));
  v6 = (*(a1 + 80) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v7);
  }

  v9 = (*(*v8 + 16))(v8);
  sub_24BCB29DC(__p, v9, 1);
  v10 = v4;
  v11 = (*(a1 + 80) + 16 * v4);
  v13 = *v11;
  v12 = v11[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v12);
  }

  v14 = (*(*v13 + 16))(v13);
  v77 = 0;
  v78 = 0;
  v79 = 0;
  sub_24BCB2B48(v80, v14, &v77);
  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  LODWORD(v77) = 0;
  if (*(a1 + 160) != *(a1 + 152))
  {
    LODWORD(v15) = 0;
    do
    {
      v16 = (*(a1 + 56) + 16 * a2);
      v18 = *v16;
      v17 = v16[1];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v17);
        LODWORD(v15) = v77;
      }

      v19 = (*(v18 + 40) + 24 * v15);
      v20 = *v19;
      if (v19[1] != *v19)
      {
        v21 = 0;
        v22 = 1;
        do
        {
          v23 = *(v20 + 4 * v21);
          *(__p[0] + ((v23 >> 3) & 0x1FFFFFF8)) &= ~(1 << v23);
          sub_24BC97D60((v80[0] + 24 * v23), &v77);
          v21 = v22;
          v20 = *v19;
          ++v22;
        }

        while (v21 < (v19[1] - *v19) >> 2);
        LODWORD(v15) = v77;
      }

      v15 = (v15 + 1);
      LODWORD(v77) = v15;
    }

    while (v15 < (*(a1 + 160) - *(a1 + 152)) >> 2);
  }

  v24 = (*(a1 + 80) + 16 * v10);
  v26 = *v24;
  v25 = v24[1];
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v25);
  }

  v27 = (*(*v26 + 16))(v26);
  v28 = v27;
  if (!v27)
  {
    goto LABEL_81;
  }

  v29 = 0;
  v30 = 0;
  v75 = v27;
  v31 = v27 - 1;
  v76 = v10;
  while (1)
  {
    if (v31 > v30)
    {
      while (((*(__p[0] + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v31) & 1) != 0)
      {
        if (--v31 <= v30)
        {
          v31 = v30;
          break;
        }
      }
    }

    if (v30 < v31)
    {
      v32 = v29;
      v33 = v30;
      while (((*(__p[0] + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        ++v33;
        ++v32;
        if (v31 == v33)
        {
          v29 = v31 + v29 - v30;
          goto LABEL_60;
        }
      }

      v30 = v33;
      v29 = v32;
    }

    if (v30 == v31)
    {
      break;
    }

    if ((*(__p[0] + (v30 >> 6)) & (1 << v30)) == 0 || (*(__p[0] + (v31 >> 6)) & (1 << v31)) != 0)
    {
      v73 = 0;
      v28 = v75;
      goto LABEL_82;
    }

    v34 = (v80[0] + 24 * v31);
    v36 = *v34;
    v35 = v34[1];
    while (v36 != v35)
    {
      v37 = *v36;
      v38 = (*(a1 + 56) + 16 * a2);
      v40 = *v38;
      v39 = v38[1];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v39);
      }

      v41 = *(*(v40 + 40) + 24 * v37);
      v42 = *(*(v40 + 40) + 24 * v37 + 8) - v41;
      if (v42)
      {
        v43 = v42 >> 2;
        v44 = 1;
        do
        {
          if (v31 == *v41)
          {
            *v41 = v30;
          }

          ++v41;
        }

        while (v43 > v44++);
      }

      ++v36;
    }

    v46 = (*(a1 + 80) + 16 * v76);
    v48 = *v46;
    v47 = v46[1];
    if (!v47)
    {
      v52 = *(*(v48 + 40) + 8 * v30);
LABEL_55:
      v62 = 1 << v31;
      v61 = 1 << v30;
      v55 = (*(v48 + 40) + 8 * v31);
      v60 = v30 >> 6;
      goto LABEL_56;
    }

    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v47);
    v49 = (*(a1 + 80) + 16 * v76);
    v51 = *v49;
    v50 = v49[1];
    v52 = *(*(v48 + 40) + 8 * v30);
    if (!v50)
    {
      v48 = *v49;
      goto LABEL_55;
    }

    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v50);
    v53 = (*(a1 + 80) + 16 * v76);
    v48 = *v53;
    v54 = v53[1];
    v55 = (*(v51 + 40) + 8 * v31);
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v54);
      v56 = (*(a1 + 80) + 16 * v76);
      v58 = *v56;
      v57 = v56[1];
      v59 = (*(v48 + 40) + 8 * v30);
      *v59 = *v55;
      v59[1] = v55[1];
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v57);
      }

      v60 = v30 >> 6;
      v10 = v76;
      v62 = 1 << v31;
      v61 = 1 << v30;
      goto LABEL_57;
    }

    v61 = 1 << v30;
    v60 = v30 >> 6;
    v62 = 1 << v31;
LABEL_56:
    v63 = (*(v48 + 40) + 8 * v30);
    *v63 = *v55;
    v63[1] = v55[1];
    v58 = v48;
    v10 = v76;
LABEL_57:
    *(*(v58 + 40) + 8 * v31) = v52;
    v64 = __p[0];
    *(__p[0] + v60) &= ~v61;
    v64[v31 >> 6] |= v62;
    ++v30;
    ++v29;
    if (v30 > v31)
    {
      goto LABEL_61;
    }
  }

LABEL_60:
  v64 = __p[0];
  v29 += (~*(__p[0] + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v31) & 1;
LABEL_61:
  v28 = v75;
  if (v29 && ((*(v64 + (((v29 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v29 - 1)) & 1) != 0)
  {
    LOBYTE(v65) = 0;
  }

  else if (v29 == v75)
  {
    LOBYTE(v65) = 1;
  }

  else
  {
    v65 = (*(v64 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29) & 1;
  }

  v66 = 0;
  while (2)
  {
    if (v66 >= v29)
    {
      if ((v65 & 1) == 0)
      {
        goto LABEL_73;
      }

      v65 = (*(__p[0] + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66) & 1;
    }

    else
    {
      if (v65)
      {
        LOBYTE(v65) = ((*(__p[0] + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66) & 1) == 0;
        goto LABEL_74;
      }

LABEL_73:
      LOBYTE(v65) = 0;
    }

LABEL_74:
    if (v75 != ++v66)
    {
      continue;
    }

    break;
  }

  if ((v65 & 1) == 0)
  {
LABEL_81:
    v73 = 0;
    goto LABEL_82;
  }

  v67 = (*(a1 + 80) + 16 * v10);
  v69 = *v67;
  v68 = v67[1];
  if (v68)
  {
    atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v68);
  }

  (*(*v69 + 32))(v69, v29);
  v70 = (*(a1 + 80) + 16 * v10);
  v72 = *v70;
  v71 = v70[1];
  if (v71)
  {
    atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v71);
  }

  v73 = (*(*v72 + 16))(v72) == v29;
LABEL_82:
  if (v28)
  {
    v5 = v73;
  }

  else
  {
    v5 = 1;
  }

  v77 = v80;
  sub_24BC8EE84(&v77);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_24BCB32B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  a16 = &a19;
  sub_24BC8EE84(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BCB3340(uint64_t a1)
{
  *(a1 + 104) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *a1 = &unk_285F93318;
  *(a1 + 176) = -1;
  sub_24BC836D4(&__p, off_27F078F80[0]);
  sub_24BCB346C(a1);
}

void sub_24BCB3430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BCB79DC(v15);
  sub_24BCB3554(v16);
  _Unwind_Resume(a1);
}

void **sub_24BCB3554(void **a1)
{
  sub_24BCB8C30(a1);
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    a1[1] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_24BCB35B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *a1 = &unk_285F93318;
  *(a1 + 176) = -1;
  sub_24BCB3658(a1, a2);
  return a1;
}

void sub_24BCB363C(_Unwind_Exception *a1)
{
  sub_24BCB79DC(v2);
  sub_24BCB3554(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BCB3658(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    sub_24BCB3798(result);
    sub_24BCB8C4C(v3 + 13, (a2 + 104));
    result = sub_24BCB7AD0(v3, a2);
    *(v3 + 44) = *(a2 + 176);
    *(v3 + 45) = *(a2 + 180);
  }

  return result;
}

uint64_t sub_24BCB36B8(uint64_t a1)
{
  *a1 = &unk_285F93318;
  v2 = *(a1 + 176);
  if (v2 != -1)
  {
    v3 = (*(a1 + 8) + 16 * v2);
    v4 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    if (v4)
    {
      sub_24BC9EC78(v4);
    }
  }

  *(a1 + 176) = -1;
  v5 = *(a1 + 180);
  if (v5 != -1)
  {
    v6 = (*(a1 + 32) + 16 * v5);
    v7 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    if (v7)
    {
      sub_24BC9EC78(v7);
    }
  }

  *(a1 + 180) = -1;
  sub_24BCB79DC(a1);
  sub_24BCB3554((a1 + 104));
  return a1;
}

void sub_24BCB3760(uint64_t a1)
{
  sub_24BCB36B8(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCB3798(uint64_t a1)
{
  sub_24BCB8C30((a1 + 104));
  v2 = (*(*a1 + 16))(a1);
  sub_24BCB514C(*(a1 + 8), *(a1 + 16), v2);
  v3 = (*(*a1 + 24))(a1);
  sub_24BCB514C(*(a1 + 32), *(a1 + 40), v3);
  v4 = (*(*a1 + 32))(a1);
  result = sub_24BCB514C(*(a1 + 56), *(a1 + 64), v4);
  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  while (v7 != v6)
  {
    result = *v7;
    if (*v7)
    {
      result = (*(*result + 40))(result);
    }

    v7 += 2;
  }

  return result;
}

uint64_t sub_24BCB389C(void *a1)
{
  v2 = (*(*a1 + 32))(a1);
  v3 = a1[7];
  v4 = a1[8];

  return sub_24BCB514C(v3, v4, v2);
}

uint64_t sub_24BCB38F8(void *a1, unint64_t a2)
{
  sub_24BCB9404(a1 + 13, a2);
  v3 = (*(*a1 + 16))(a1);
  v4 = a1[1];
  v5 = a1[2];

  return sub_24BCB514C(v4, v5, v3);
}

uint64_t sub_24BCB3960(void *a1, unint64_t a2)
{
  sub_24BCB9408((a1 + 13), a2);
  v3 = (*(*a1 + 24))(a1);
  v4 = a1[4];
  v5 = a1[5];

  return sub_24BCB514C(v4, v5, v3);
}

uint64_t sub_24BCB39C8(void *a1, unint64_t a2)
{
  sub_24BCB944C((a1 + 13), a2);
  v3 = (*(*a1 + 32))(a1);
  v4 = a1[7];
  v5 = a1[8];

  return sub_24BCB514C(v4, v5, v3);
}

uint64_t sub_24BCB3A30(uint64_t a1)
{
  sub_24BC836D4(__p, off_27F078F98[0]);
  v15[0] = 0;
  v15[1] = 0;
  v2 = sub_24BCB6470((a1 + 8), v15, __p);
  v14 = v2;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2 == -1)
  {
    sub_24BC836D4(__p, off_27F078F98[0]);
    sub_24BCB346C(a1);
  }

  v3 = *(a1 + 112) - *(a1 + 104);
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 2;
    v6 = 1;
    do
    {
      v7 = (*(a1 + 8) + 16 * v14);
      v9 = *v7;
      v8 = v7[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v8);
      }

      sub_24BD3EDC4(a1, v4, (*(v9 + 40) + 16 * v4));
      v4 = v6;
    }

    while (v5 > v6++);
  }

  return 1;
}

void sub_24BCB3B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCB3B5C(uint64_t a1)
{
  sub_24BC836D4(__p, off_27F078FD0[0]);
  v15[0] = 0;
  v15[1] = 0;
  v2 = sub_24BCB6470((a1 + 56), v15, __p);
  v14 = v2;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2 == -1)
  {
    sub_24BC836D4(__p, off_27F078FD0[0]);
    sub_24BCB3C88(a1);
  }

  v3 = *(a1 + 160) - *(a1 + 152);
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 2;
    v6 = 1;
    do
    {
      v7 = (*(a1 + 56) + 16 * v14);
      v9 = *v7;
      v8 = v7[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v8);
      }

      sub_24BD3FAC8(a1, v4, (*(v9 + 40) + 16 * v4));
      v4 = v6;
    }

    while (v5 > v6++);
  }

  return 1;
}

void sub_24BCB3C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCB3CFC(uint64_t a1)
{
  v3 = -1;
  sub_24BC836D4(&__p, qword_27F078F88);
  sub_24BCB3D7C(a1);
}

void sub_24BCB3D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCB3E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCB3E20(uint64_t a1)
{
  v7 = -1;
  sub_24BC836D4(__p, qword_27F078F88);
  sub_24BCB3EC4(a1, &v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 != -1)
  {
    v2 = (*(a1 + 8) + 16 * v7);
    v3 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    if (v3)
    {
      sub_24BC9EC78(v3);
    }
  }

  return 1;
}

void sub_24BCB3EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BCB3EC4(uint64_t a1, _DWORD *a2, const void **a3)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  v4 = sub_24BCB7330((a1 + 8), &__p, a3);
  *a2 = v4;
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return v4 != -1;
}

void sub_24BCB3F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCB3F3C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = -1;
  sub_24BC836D4(__p, qword_27F078F88);
  sub_24BCB3EC4(a1, &v10, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (a4)
  {
    operator new();
  }

  sub_24BCB7458(__p, 0);
  sub_24BCB7458(v7, 0);
  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 1;
}

void sub_24BCB454C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v26)
  {
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCB45D0(uint64_t a1, int a2, __int128 *a3)
{
  v5 = sub_24BCB91FC((a1 + 104), a3);
  v6 = (*(*a1 + 24))(a1);
  sub_24BCB514C(*(a1 + 32), *(a1 + 40), v6);
  v7 = sub_24BC9ECE4(a1, *(a1 + 180), v5);
  if (a2)
  {
    v9 = *v7 | v8;
  }

  else
  {
    v9 = *v7 & ~v8;
  }

  *v7 = v9;
  return v5;
}

void sub_24BCB4670(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 2;
    if ((v7 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_24BC92E0C(a1, v10);
    }

    v11 = (4 * v7);
    *v11 = *a2;
    v6 = 4 * v7 + 4;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_24BCB4744(uint64_t a1, _DWORD *a2, int *a3, _DWORD *a4)
{
  v5 = 0;
  v68 = *MEMORY[0x277D85DE8];
  v67 = -1;
  v66 = -1;
  v65 = -1;
  v64 = -1;
  v6 = *a3;
  v63[0] = *a2;
  v63[1] = v6;
  v63[2] = *a4;
  v61 = 1;
  v60 = 257;
  *__p = 0u;
  v58 = 0u;
  v59 = 1065353216;
  v7 = 1;
  do
  {
    v8 = &v63[v5];
    sub_24BCB9454(&v54, (a1 + 104), v8);
    v9 = 0;
    v56 = -1;
    while (1)
    {
      v10 = sub_24BCB947C(&v54);
      v56 = v10;
      if (v10 == -1)
      {
        break;
      }

      v11 = sub_24BC9ECE4(a1, *(a1 + 180), v10);
      if ((*v11 & v12) == 0)
      {
        goto LABEL_22;
      }

      v13 = *v8;
      if (!__p[1])
      {
        goto LABEL_21;
      }

      v14 = vcnt_s8(__p[1]);
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] > 1uLL)
      {
        v15 = *v8;
        if (__p[1] <= v13)
        {
          v15 = v13 % LODWORD(__p[1]);
        }
      }

      else
      {
        v15 = (LODWORD(__p[1]) - 1) & v13;
      }

      v16 = *(__p[0] + v15);
      if (!v16 || (v17 = *v16) == 0)
      {
LABEL_21:
        operator new();
      }

      while (1)
      {
        v18 = v17[1];
        if (v18 == v13)
        {
          break;
        }

        if (v14.u32[0] > 1uLL)
        {
          if (v18 >= __p[1])
          {
            v18 %= __p[1];
          }
        }

        else
        {
          v18 &= __p[1] - 1;
        }

        if (v18 != v15)
        {
          goto LABEL_21;
        }

LABEL_20:
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      if (*(v17 + 4) != v13)
      {
        goto LABEL_20;
      }

      *(v17 + 5) = v56;
      v9 = 1;
LABEL_22:
      v19 = sub_24BCB9024(a1 + 104, &v56);
      if (*(sub_24BCB9024(a1 + 104, v19) + 12) == v63[v7])
      {
        v20 = sub_24BC9ECE4(a1, *(a1 + 180), v56);
        if ((*v20 & v21) == 0)
        {
          goto LABEL_78;
        }

        *(&v60 + v5) = 0;
        *(&v66 + v5) = v56;
      }
    }

    if ((v9 & 1) == 0)
    {
LABEL_78:
      v62 = -1;
      goto LABEL_79;
    }

    ++v5;
    if (v7 == 2)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }
  }

  while (v5 != 3);
  v62 = -1;
  LODWORD(v54) = -1;
  v22 = sub_24BCB9320((a1 + 104), &v54);
  sub_24BCB389C(a1);
  v62 = v22;
  v23 = &v60;
  v24 = &v66;
  v25 = 3;
  do
  {
    v26 = *v23;
    v23 = (v23 + 1);
    if ((v26 & 1) == 0)
    {
      v27 = sub_24BC9ECE4(a1, *(a1 + 180), *v24);
      *v27 &= ~v28;
      sub_24BCB90A0(a1 + 104, &v62, v24);
    }

    ++v24;
    --v25;
  }

  while (v25);
  v29 = 0;
  v30 = 1;
  v31 = &v66;
  v32 = &v64;
  v33 = v63;
  do
  {
    if (*(&v60 + v29) == 1)
    {
      *&v54 = -1;
      *(&v54 + 1) = -1;
      v55 = -1;
      *v31 = sub_24BCB45D0(a1, 0, &v54);
      v55 = -1;
      *&v54 = -1;
      *(&v54 + 1) = -1;
      *v32 = sub_24BCB45D0(a1, 1, &v54);
      sub_24BCB90C8((a1 + 104), v31, v33);
      sub_24BCB90C8((a1 + 104), v32, &v63[v30]);
      sub_24BCB9074(a1 + 104, v31, v32);
      sub_24BCB90A0(a1 + 104, &v62, v31);
    }

    ++v29;
    if (v30 == 2)
    {
      v30 = 0;
    }

    else
    {
      ++v30;
    }

    v31 = (v31 + 4);
    v32 = (v32 + 4);
    ++v33;
  }

  while (v29 != 3);
  v34 = 0;
  v53 = -1;
  LODWORD(v54) = -1;
  v56 = -1;
  v35 = 1;
  do
  {
    v36 = v35;
    if (*(&v60 + v35))
    {
      v37 = *(&v60 + v34) | 2;
    }

    else
    {
      v37 = *(&v60 + v34);
    }

    if (v37 <= 1)
    {
      if (v37)
      {
        v38 = &v66 + v36;
        LODWORD(v54) = *(sub_24BCB9024(a1 + 104, v38) + 4);
        sub_24BCB9048(a1 + 104, &v54, &v64 + v34);
        v39 = &v66 + 4 * v34;
        goto LABEL_72;
      }

      goto LABEL_73;
    }

    v39 = &v66 + 4 * v34;
    if (v37 == 2)
    {
      v56 = *(sub_24BCB9024(a1 + 104, &v66 + v34) + 8);
      sub_24BCB9048(a1 + 104, &v64 + v36, &v56);
      v38 = &v66 + v36;
      goto LABEL_72;
    }

    v40 = sub_24BCB9024(a1 + 104, &v66 + v34);
    if (!__p[1])
    {
      goto LABEL_80;
    }

    v41 = *(v40 + 12);
    v42 = vcnt_s8(__p[1]);
    v42.i16[0] = vaddlv_u8(v42);
    if (v42.u32[0] > 1uLL)
    {
      v43 = *(v40 + 12);
      if (__p[1] <= v41)
      {
        v43 = v41 % LODWORD(__p[1]);
      }
    }

    else
    {
      v43 = (LODWORD(__p[1]) - 1) & v41;
    }

    v44 = *(__p[0] + v43);
    if (!v44 || (v45 = *v44) == 0)
    {
LABEL_80:
      sub_24BC8E244("unordered_map::at: key not found");
    }

    while (1)
    {
      v46 = v45[1];
      if (v46 == v41)
      {
        break;
      }

      if (v42.u32[0] > 1uLL)
      {
        if (v46 >= __p[1])
        {
          v46 %= __p[1];
        }
      }

      else
      {
        v46 &= __p[1] - 1;
      }

      if (v46 != v43)
      {
        goto LABEL_80;
      }

LABEL_65:
      v45 = *v45;
      if (!v45)
      {
        goto LABEL_80;
      }
    }

    if (*(v45 + 4) != v41)
    {
      goto LABEL_65;
    }

    v47 = *(v45 + 5);
    v53 = v47;
    sub_24BCB9048(a1 + 104, &v66 + v34, &v66 + v36);
    while (1)
    {
      v48 = sub_24BCB9024(a1 + 104, &v53);
      v49 = sub_24BCB9024(a1 + 104, v48);
      v50 = sub_24BCB9024(a1 + 104, &v66 + v34);
      if (*(v49 + 12) == *(sub_24BCB9024(a1 + 104, v50) + 12))
      {
        break;
      }

      v53 = *(sub_24BCB9024(a1 + 104, &v53) + 8);
      if (v53 == v47)
      {
        goto LABEL_71;
      }
    }

    LODWORD(v54) = v53;
    v56 = *(sub_24BCB9024(a1 + 104, &v53) + 8);
LABEL_71:
    sub_24BCB9048(a1 + 104, &v54, &v64 + v34);
    v39 = &v64 + 4 * v36;
    v38 = &v56;
LABEL_72:
    sub_24BCB9048(a1 + 104, v39, v38);
LABEL_73:
    ++v34;
    if (v36 == 2)
    {
      v35 = 0;
    }

    else
    {
      v35 = v36 + 1;
    }
  }

  while (v34 != 3);
LABEL_79:
  sub_24BCA3B84(__p);
  result = v62;
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BCB5038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_24BCA3B84(va);
  _Unwind_Resume(a1);
}

unint64_t sub_24BCB5088(void *a1)
{
  v1 = a1[18] - a1[16];
  v2 = (a1[15] + a1[21] - (a1[13] + a1[19])) & 0xFFFFFFFFFFFFFFFCLL;
  return v1 + sub_24BCB7E1C(a1) + v2;
}

void *sub_24BCB50D4(void *result, unsigned int *a2, unsigned int *a3)
{
  v3 = result[1];
  for (i = result[2]; v3 != i; v3 += 2)
  {
    result = *v3;
    if (*v3)
    {
      result = (*(*result + 72))(result, *a2, *a3);
    }
  }

  return result;
}

uint64_t sub_24BCB514C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6)
      {
        (*(*v6 + 32))(v6, a3);
      }

      if (v7)
      {
        sub_24BC9EC78(v7);
      }

      v5 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_24BCB51E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BC9EC78(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCB5200(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BCB54B8();
}

void sub_24BCB52DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void **sub_24BCB52F4(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_24BC8E01C();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      sub_24BCB53E8(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_24BCB5430(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void sub_24BCB53E8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_24BC8DFE8();
}

void **sub_24BCB5430(void **a1)
{
  sub_24BCB5464(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BCB5464(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_24BC9EC78(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *sub_24BCB552C(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F93350;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F93388;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BCB55CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F93350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BCB5648(void *a1, __int128 *a2, void *a3)
{
  *a1 = &unk_285F932A8;
  v5 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5[2] = *(a2 + 2);
    *v5 = v6;
  }

  a1[4] = *a3;
  return a1;
}

void sub_24BCB56C0(void *a1)
{
  sub_24BCB584C(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCB5718(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

uint64_t sub_24BCB5734(uint64_t a1)
{
  v4 = 0uLL;
  v2 = *(a1 + 48);
  if (v2 >= *(a1 + 56))
  {
    result = sub_24BCB5984(a1 + 40, &v4);
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    result = (v2 + 2);
  }

  *(a1 + 48) = result;
  return result;
}

__n128 sub_24BCB5788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  result = *(v3 + 16 * a2);
  *(v3 + 16 * a2) = *(v3 + 16 * a3);
  *(*(a1 + 40) + 16 * a3) = result;
  return result;
}

__n128 sub_24BCB57A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  result = *(v3 + 16 * a2);
  *(v3 + 16 * a3) = result;
  return result;
}

uint64_t sub_24BCB584C(void *a1)
{
  *a1 = &unk_285F93388;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BCB58AC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BCA1868(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BCB594C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCB5984(uint64_t a1, _OWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_24BCA1868(a1, v7);
  }

  __p = 0;
  v11 = (16 * v2);
  v13 = 0;
  *v11 = *a2;
  v12 = 16 * v2 + 16;
  sub_24BCA20D0(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_24BCB5A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCB5AA4(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F93388;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BCA17B8((v4 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 4);
  return a1;
}

void *sub_24BCB5B18(void *a1, uint64_t a2)
{
  *a1 = &unk_285F932A8;
  v4 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_24BC8DE9C(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4[2] = *(a2 + 24);
    *v4 = v5;
  }

  a1[4] = *(a2 + 32);
  return a1;
}

void sub_24BCB5BF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCB5C0C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCB5C44(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24BCB5C8C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BCB5D80();
}

void sub_24BCB5D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCB5DF4(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F93430;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F93468;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BCB5E94(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F93430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCB5F14(void *a1)
{
  sub_24BCB6124(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BCB5F68(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

uint64_t sub_24BCB5FB0(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 40);
  v4 = (a2 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v5 = *(v3 + v4);
  v6 = a3 >> 6;
  v7 = 1 << a3;
  if ((*(v3 + 8 * (a3 >> 6)) & (1 << a3)) != 0)
  {
    v8 = v5 | (1 << a2);
  }

  else
  {
    v8 = v5 & ~(1 << a2);
  }

  *(v3 + v4) = v8;
  if ((v5 & (1 << a2)) != 0)
  {
    v9 = *(v3 + 8 * v6) | v7;
  }

  else
  {
    v9 = *(v3 + 8 * v6) & ~v7;
  }

  *(v3 + 8 * v6) = v9;
  return result;
}

uint64_t sub_24BCB600C(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 40);
  v4 = a3 >> 6;
  v5 = 1 << a3;
  if ((*(v3 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
  {
    v6 = *(v3 + 8 * v4) | v5;
  }

  else
  {
    v6 = *(v3 + 8 * v4) & ~v5;
  }

  *(v3 + 8 * v4) = v6;
  return result;
}

uint64_t sub_24BCB604C(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 40);
  v4 = (a2 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v5 = *(v3 + v4);
  v6 = v5 | (1 << a2);
  if ((((v5 & (1 << a2)) != 0) & (*(v3 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3)) == 0)
  {
    v6 = v5 & ~(1 << a2);
  }

  *(v3 + v4) = v6;
  return result;
}

uint64_t sub_24BCB6124(void *a1)
{
  *a1 = &unk_285F93468;
  v2 = a1[5];
  if (v2)
  {
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BCB6180(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F93468;
  sub_24BCB61E4(v4 + 5, a2 + 40);
  return a1;
}

void *sub_24BCB61E4(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    sub_24BC9FFD0(result, v2);
  }

  return result;
}

void sub_24BCB6240(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  sub_24BCB62C8(a2, a3, a4, a5, &v11, v13);
}

void sub_24BCB62C8(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void sub_24BCB63D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCB63F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCB6428(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_24BCB6470(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BCB5C78;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

void sub_24BCB6598(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BCB668C();
}

void sub_24BCB6674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCB6700(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F93510;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F93548;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BCB67A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F93510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCB681C(uint64_t a1)
{
  *a1 = &unk_285F93548;
  v3 = (a1 + 40);
  sub_24BC8EE84(&v3);
  return sub_24BCB2264(a1);
}

uint64_t sub_24BCB6878(uint64_t a1)
{
  *a1 = &unk_285F93548;
  v4 = (a1 + 40);
  sub_24BC8EE84(&v4);
  v2 = sub_24BCB2264(a1);
  return MEMORY[0x24C2548B0](v2, 0x10B3C402F26E7C1);
}

void sub_24BCB6914(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  v3 = &v1;
  sub_24BC8EE84(&v3);
}

void sub_24BCB6958(uint64_t a1)
{
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_24BCB6E2C(a1 + 40, &__p);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }
}

void sub_24BCB69A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCB69BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a1 + 40) + 24 * a2);
  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_24BCB6F6C(&__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  if (a2 != a3)
  {
    v7 = *(a1 + 40);
    sub_24BCA2A30((v7 + 24 * a2), *(v7 + 24 * a3), *(v7 + 24 * a3 + 8), (*(v7 + 24 * a3 + 8) - *(v7 + 24 * a3)) >> 2);
  }

  v8 = (*(a1 + 40) + 24 * a3);
  if (v8 != &__p)
  {
    sub_24BCA2A30(v8, __p, v10, (v10 - __p) >> 2);
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_24BCB6A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCB6A98(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v3 = result[5];
    return sub_24BCA2A30((v3 + 24 * a3), *(v3 + 24 * a2), *(v3 + 24 * a2 + 8), (*(v3 + 24 * a2 + 8) - *(v3 + 24 * a2)) >> 2);
  }

  return result;
}

void *sub_24BCB6B5C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BC8F4C8(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BCB6C18(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_24BCB6CC0(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_24BCB6CC0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_24BC8F4C8(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_24BC91E14(v18);
  }
}

uint64_t sub_24BCB6E2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v16[4] = result;
    if (v10)
    {
      sub_24BC8F4C8(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_24BC91E14(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

uint64_t sub_24BCB6F6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BCB6FCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BCB6FE8(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F93548;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BCB7068((v4 + 5), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  return a1;
}

uint64_t sub_24BCB7068(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC8F47C(result, a4);
  }

  return result;
}

void sub_24BCB70D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC8EE84(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BCB70F0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24BCB6F6C(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BCB71A4(v8);
  return v4;
}

uint64_t sub_24BCB71A4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BCB71DC(a1);
  }

  return a1;
}

void sub_24BCB71DC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_24BCB7294(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BCB72B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BCB72E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_24BCB7330(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BCB731C;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

void *sub_24BCB7458(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(result, a2);
  }

  return result;
}

void sub_24BCB74B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCB74D4(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BCB75FC;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

unint64_t *sub_24BCB7610@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

size_t *sub_24BCB7744(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = sub_24BCB7960(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
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

    v21 = result;
    if (v11)
    {
      sub_24BC91DBC(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    sub_24BCB78DC(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return sub_24BC91E14(&v18);
  }

  return result;
}

void sub_24BCB78BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BCB78DC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = sub_24BCB7960(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t sub_24BCB7960(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BCB79C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BCB79DC(uint64_t a1)
{
  *a1 = &unk_285F935F0;
  sub_24BCB7A44(a1);
  sub_24BCB7F80((a1 + 80));
  sub_24BCB7F80((a1 + 56));
  sub_24BCB7F80((a1 + 32));
  sub_24BCB7F80((a1 + 8));
  return a1;
}

void sub_24BCB7A44(uint64_t a1)
{
  sub_24BCB8068(*(a1 + 8), *(a1 + 16));
  sub_24BCB8068(*(a1 + 32), *(a1 + 40));
  sub_24BCB8068(*(a1 + 56), *(a1 + 64));
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);

  sub_24BCB8068(v2, v3);
}

void sub_24BCB7A98(uint64_t a1)
{
  sub_24BCB79DC(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t *sub_24BCB7AD0(uint64_t **a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = (a1 + 1);
  sub_24BCB80BC(a1[1], a1[2], (*(a2 + 16) - *(a2 + 8)) >> 4);
  sub_24BCB80BC(a1[4], a1[5], (*(a2 + 40) - *(a2 + 32)) >> 4);
  sub_24BCB80BC(a1[7], a1[8], (*(a2 + 64) - *(a2 + 56)) >> 4);
  sub_24BCB80BC(a1[10], a1[11], (*(a2 + 88) - *(a2 + 80)) >> 4);
  sub_24BCB7BC8(v5, v4);
  sub_24BCB7BC8(a1 + 4, (a2 + 32));
  sub_24BCB7BC8(a1 + 7, (a2 + 56));

  return sub_24BCB7BC8(a1 + 10, (a2 + 80));
}

uint64_t *sub_24BCB7BC8(uint64_t *a1, uint64_t **a2)
{
  __src = 0;
  v21 = 0;
  v22 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    while (1)
    {
      v5 = *v3;
      v6 = v3[1];
      if (!v6)
      {
        break;
      }

      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v5)
      {
        goto LABEL_6;
      }

      *&v19 = 0;
      *(&v19 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_7:
      v7 = v21;
      if (v21 >= v22)
      {
        v8 = __src;
        v9 = v21 - __src;
        v10 = (v21 - __src) >> 4;
        v11 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          sub_24BC8E01C();
        }

        v12 = v22 - __src;
        if ((v22 - __src) >> 3 > v11)
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

        v23[4] = &__src;
        if (v13)
        {
          sub_24BCB53E8(&__src, v13);
        }

        *(16 * v10) = v19;
        v19 = 0uLL;
        memcpy(0, v8, v9);
        v14 = __src;
        v15 = v22;
        __src = 0;
        v21 = (16 * v10 + 16);
        v22 = 0;
        v23[0] = v14;
        v23[2] = v14;
        v23[3] = v15;
        v23[1] = v14;
        sub_24BCB5430(v23);
        v21 = (16 * v10 + 16);
        if (*(&v19 + 1))
        {
          sub_24BC9EC78(*(&v19 + 1));
        }
      }

      else
      {
        *v21 = v19;
        v21 = v7 + 16;
      }

      if (v6)
      {
        sub_24BC9EC78(v6);
      }

      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_24;
      }
    }

    if (!v5)
    {
      v19 = 0uLL;
      goto LABEL_7;
    }

LABEL_6:
    (*(*v5 + 80))(&v19);
    goto LABEL_7;
  }

LABEL_24:
  sub_24BCB8068(*a1, a1[1]);
  sub_24BCB801C(a1);
  sub_24BCB8170(a1, (v21 - __src) >> 4);
  v16 = __src;
  v17 = v21;
  while (v16 != v17)
  {
    sub_24BCB820C(a1, v16++);
  }

  v23[0] = &__src;
  sub_24BCB7FC8(v23);
  return a1;
}