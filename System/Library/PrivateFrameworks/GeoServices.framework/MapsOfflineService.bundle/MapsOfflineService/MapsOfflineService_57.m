void sub_3A6DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1959728(&a25);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a25);
  _Unwind_Resume(a1);
}

_BYTE *sub_3A716C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 1)
  {
    if (!*result)
    {
      a2[23] = 5;
      *a2 = 1162368079;
      a2[4] = 82;
      a2[5] = 0;
      return result;
    }

    if (v2 == 1)
    {
      a2[23] = 8;
      strcpy(a2, "PROVIDED");
      return result;
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        a2[23] = 11;
        strcpy(a2, "SYNTHESIZED");
        return result;
      case 3u:
        a2[23] = 6;
        strcpy(a2, "MERGED");
        return result;
      case 0xFFu:
        a2[23] = 6;
        strcpy(a2, "STATIC");
        return result;
    }
  }

  a2[23] = 0;
  *a2 = 0;
  return result;
}

_BYTE *sub_3A7264@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (*result == 1)
  {
    *(a2 + 23) = 9;
    strcpy(a2, "DROP_TRIP");
  }

  else
  {
    if (*result)
    {
      *(a2 + 23) = 0;
    }

    else
    {
      *(a2 + 23) = 10;
      *(a2 + 8) = 21317;
      *a2 = *"STOP_TIMES";
      a2 += 10;
    }

    *a2 = 0;
  }

  return result;
}

void sub_3A72D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 104);
  v30 = -1;
  v31 = 0x7FFFFFFF;
  v8 = sub_2C7D8C(a1, v7, &v30);
  v9 = v8;
  if (v8 > 0xFFFFFFFEFFFFFFFFLL || v8 == 0)
  {
    *a4 = -1;
    *(a4 + 8) = xmmword_2291330;
    *(a4 + 24) = 0x7FFFFFFF;
LABEL_14:
    *(a4 + 28) = 0;
    *(a4 + 32) = xmmword_2291340;
    *(a4 + 48) = -29536;
    *(a4 + 56) = 0xBFF0000000000000;
    *(a4 + 64) = 0;
    v18 = -1;
LABEL_15:
    *(a4 + 68) = v18;
    return;
  }

  v11 = *(a3 + 96);
  if (!v11)
  {
    v11 = &off_2779AC8;
  }

  v12 = *(v11 + 12);
  v13 = *(v11 + 13);
  v14 = *(v11 + 14);
  LOWORD(v30) = v12;
  BYTE2(v30) = v13;
  BYTE3(v30) = v14;
  v15 = sub_3A2090(a2, v8, &v30);
  if (v15 == -1)
  {
    *a4 = -1;
    *(a4 + 8) = xmmword_2291330;
    *(a4 + 24) = 0x7FFFFFFF;
    goto LABEL_14;
  }

  *(a4 + 20) = 0x8000000080000000;
  *(a4 + 28) = 0;
  *(a4 + 32) = xmmword_2291340;
  *(a4 + 48) = -29536;
  *(a4 + 56) = 0xBFF0000000000000;
  *(a4 + 64) = 0;
  *(a4 + 68) = -1;
  *(a4 + 16) = v15;
  *a4 = v7;
  *(a4 + 8) = v9;
  v16 = *(a3 + 120);
  if (v16 <= 0x1F3FFFFFC17)
  {
    if (v16 >= 0xFFFFFE0BFFFFFC19)
    {
      *(a4 + 20) = sub_3A2760(v16 / 1000);
      v17 = *(a3 + 128);
      if (v17 > 0x1F3FFFFFC17)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(a4 + 20) = 0x80000000;
      v17 = *(a3 + 128);
      if (v17 > 0x1F3FFFFFC17)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    *(a4 + 20) = 2147483646;
    v17 = *(a3 + 128);
    if (v17 > 0x1F3FFFFFC17)
    {
LABEL_23:
      *(a4 + 24) = 2147483646;
      *(a4 + 28) = *(a3 + 152);
      v19 = *(a3 + 16);
      if ((v19 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_26;
    }
  }

  if (v17 >= 0xFFFFFE0BFFFFFC19)
  {
    *(a4 + 24) = sub_3A2760(v17 / 1000);
    *(a4 + 28) = *(a3 + 152);
    v19 = *(a3 + 16);
    if ((v19 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *(a4 + 24) = 0x80000000;
    *(a4 + 28) = *(a3 + 152);
    v19 = *(a3 + 16);
    if ((v19 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_26:
  v20 = *(a3 + 48);
  v21 = *(v20 + 56);
  v22 = -1;
  if (v21 <= 180.0)
  {
    v23 = *(v20 + 48);
    if (fabs(v23) <= 85.0511288 && v21 >= -180.0)
    {
      v24 = sin(fmin(fmax(v23, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v25) = ((log((v24 + 1.0) / (1.0 - v24)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v25 >= 0xFFFFFFFE)
      {
        v25 = 4294967294;
      }

      else
      {
        v25 = v25;
      }

      v22 = ((v21 + 180.0) / 360.0 * 4294967300.0) | (v25 << 32);
    }
  }

  *(a4 + 32) = v22;
  *(a4 + 40) = 0x7FFFFFFF;
LABEL_34:
  if ((v19 & 0x100) != 0)
  {
    v26 = 1000 * *(a3 + 112);
    if (v26 <= 0x1F3FFFFFC17)
    {
      if (v26 >= 0xFFFFFE0BFFFFFC19)
      {
        v27 = sub_3A2760(v26 / 1000);
        v19 = *(a3 + 16);
      }

      else
      {
        v27 = 0x80000000;
      }
    }

    else
    {
      v27 = 2147483646;
    }

    *(a4 + 44) = v27;
    if ((v19 & 0x800) == 0)
    {
LABEL_36:
      if ((v19 & 0x1000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_49;
    }
  }

  else if ((v19 & 0x800) == 0)
  {
    goto LABEL_36;
  }

  v28 = llround(*(a3 + 136) * 100.0) % 36000;
  if (v28 > 0xFFFF735F)
  {
    LOWORD(v28) = v28 - 29536;
  }

  *(a4 + 48) = v28;
  if ((v19 & 0x1000) == 0)
  {
LABEL_37:
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

LABEL_50:
    v29 = *(a3 + 156);
    if (v29 >= 5)
    {
      LOBYTE(v29) = 0;
    }

    *(a4 + 64) = v29;
    if ((v19 & 0x10000) != 0)
    {
      goto LABEL_53;
    }

    return;
  }

LABEL_49:
  *(a4 + 56) = *(a3 + 140) * 3.6;
  if ((v19 & 0x8000) != 0)
  {
    goto LABEL_50;
  }

LABEL_38:
  if ((v19 & 0x10000) != 0)
  {
LABEL_53:
    v18 = *(a3 + 160);
    goto LABEL_15;
  }
}

BOOL sub_3A76F0(uint64_t a1, int a2)
{
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (*(a1 + 20) <= (std::chrono::system_clock::to_time_t(&__t) + 60) || !sub_7E7E4(1u))
  {
    goto LABEL_19;
  }

  sub_19594F8(&__t);
  sub_4A5C(&__t, "(Non-fatal) Vehicle position for muid ", 38);
  v4 = std::ostream::operator<<();
  v5 = sub_4A5C(v4, " has creation timestamp of ", 27);
  v6 = sub_258D4(v5);
  v7 = sub_4A5C(v6, " which is more than one minutes in the future (now: ", 52);
  __dst.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v24 = std::chrono::system_clock::to_time_t(&__dst);
  v8 = sub_258D4(v7);
  sub_4A5C(v8, ")", 1);
  if ((v35 & 0x10) != 0)
  {
    v10 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v10 = v31;
    }

    v11 = v30;
    v9 = v10 - v30;
    if (v10 - v30 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_28:
      sub_3244();
    }

LABEL_9:
    if (v9 >= 0x17)
    {
      operator new();
    }

    v23 = v9;
    if (v9)
    {
      memmove(&__dst, v11, v9);
    }

    goto LABEL_14;
  }

  if ((v35 & 8) != 0)
  {
    v11 = v28;
    v9 = v29 - v28;
    if ((v29 - v28) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_28;
    }

    goto LABEL_9;
  }

  v9 = 0;
  v23 = 0;
LABEL_14:
  *(&__dst.__d_.__rep_ + v9) = 0;
  sub_7E854(&__dst.__d_.__rep_, 1u);
  if (v23 < 0)
  {
    operator delete(__dst.__d_.__rep_);
  }

  if (v33 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v27);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_19:
  if (!a2)
  {
    return 1;
  }

  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v12 = std::chrono::system_clock::to_time_t(&__t) - 60;
  result = 1;
  if (*(a1 + 24) < v12)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&__t);
      sub_4A5C(&__t, "Vehicle position for muid ", 26);
      v14 = std::ostream::operator<<();
      v15 = sub_4A5C(v14, " has expiration timestamp of ", 29);
      v16 = sub_258D4(v15);
      v17 = sub_4A5C(v16, " which is more than one minute in the past (now: ", 49);
      __dst.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v24 = std::chrono::system_clock::to_time_t(&__dst);
      v18 = sub_258D4(v17);
      sub_4A5C(v18, ")", 1);
      if ((v35 & 0x10) != 0)
      {
        v20 = v34;
        if (v34 < v31)
        {
          v34 = v31;
          v20 = v31;
        }

        v21 = v30;
        v19 = v20 - v30;
        if (v20 - v30 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if ((v35 & 8) == 0)
        {
          v19 = 0;
          v23 = 0;
LABEL_37:
          *(&__dst.__d_.__rep_ + v19) = 0;
          sub_7E854(&__dst.__d_.__rep_, 1u);
          if (v23 < 0)
          {
            operator delete(__dst.__d_.__rep_);
          }

          if (v33 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v27);
          std::ostream::~ostream();
          std::ios::~ios();
          return 0;
        }

        v21 = v28;
        v19 = v29 - v28;
        if ((v29 - v28) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_43:
          sub_3244();
        }
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      v23 = v19;
      if (v19)
      {
        memmove(&__dst, v21, v19);
      }

      goto LABEL_37;
    }
  }

  return result;
}

void sub_3A7C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_3A7D2C(uint64_t a1)
{
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  *a1 = std::chrono::system_clock::to_time_t(&__t);
  *(a1 + 4) = 0x8000000080000000;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  return a1;
}

uint64_t sub_3A7D90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 20);
  if (v4 == 0x7FFFFFFF || v4 < v5)
  {
    *(a1 + 8) = v5;
  }

  v7 = *(a2 + 16);
  v15 = *(a2 + 8);
  v16 = v7;
  v8 = sub_3A7FEC((a1 + 16), &v15);
  if (v9)
  {
    v17 = &v15;
LABEL_11:
    v13 = sub_3A83DC((a1 + 56), &v15);
    *(v13 + 6) = v16;
    return 1;
  }

  if (*(v8 + 13) < *(a2 + 20))
  {
    *(v8 + 2) = *a2;
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 48);
    v8[12] = *(a2 + 64);
    *(v8 + 4) = v11;
    *(v8 + 5) = v12;
    *(v8 + 3) = v10;
    v17 = &v15;
    goto LABEL_11;
  }

  return 0;
}

uint64_t *sub_3A7E8C(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v9 = a2;
  v10 = a3;
  result = sub_3A045C((a1 + 16), &v9);
  if (result)
  {
    if ((a4 & 1) == 0)
    {
      v7 = sub_3A045C((a1 + 16), &v9);
      if (!v7)
      {
        goto LABEL_9;
      }

      if (*(v7 + 60))
      {
        return 0;
      }
    }

    v8 = sub_3A045C((a1 + 16), &v9);
    if (v8)
    {
      return v8 + 4;
    }

LABEL_9:
    sub_49EC("unordered_map::at: key not found");
  }

  return result;
}

uint64_t *sub_3A7F20(uint64_t a1, uint64_t a2, char a3)
{
  v11 = a2;
  result = sub_3A8760((a1 + 56), &v11);
  if (result)
  {
    v6 = v11;
    v7 = sub_3A8760((a1 + 56), &v11);
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = *(v7 + 6);
    v12 = v6;
    v13 = v8;
    result = sub_3A045C((a1 + 16), &v12);
    if (!result)
    {
      return result;
    }

    if ((a3 & 1) == 0)
    {
      v9 = sub_3A045C((a1 + 16), &v12);
      if (!v9)
      {
        goto LABEL_11;
      }

      if (*(v9 + 60))
      {
        return 0;
      }
    }

    v10 = sub_3A045C((a1 + 16), &v12);
    if (v10)
    {
      return v10 + 4;
    }

LABEL_11:
    sub_49EC("unordered_map::at: key not found");
  }

  return result;
}

uint64_t *sub_3A7FEC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = ((v4 ^ (v4 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v6 = *(a2 + 2);
  v7 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_25;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_25:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (*(v12 + 4) == v2 && *(v12 + 20) == __PAIR64__(v6, HIDWORD(v2)))
        {
          return v12;
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_25;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v14 = v12[1];
    if (v14 == v7)
    {
      break;
    }

    if (v14 >= *&v8)
    {
      v14 %= *&v8;
    }

    if (v14 != v10)
    {
      goto LABEL_25;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  if (*(v12 + 4) != v2 || *(v12 + 20) != __PAIR64__(v6, HIDWORD(v2)))
  {
    goto LABEL_18;
  }

  return v12;
}

uint64_t *sub_3A83DC(void *a1, void *a2)
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

uint64_t *sub_3A8760(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v13 = result[1];
        if (v6 == v13)
        {
          if (*(result + 4) == v3 && *(result + 5) == HIDWORD(v3))
          {
            return result;
          }
        }

        else if ((v13 & v11) != v8)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v15 = result[1];
      if (v6 == v15)
      {
        if (*(result + 4) == v3 && *(result + 5) == HIDWORD(v3))
        {
          return result;
        }
      }

      else
      {
        if (v15 >= *&v2)
        {
          v15 %= *&v2;
        }

        if (v15 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_3A887C()
{
  v0 = __chkstk_darwin();
  sub_7E9A4(v13);
  sub_2C795C(v12, v0);
  v2 = *v0;
  v1 = v0[1];
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = 0;
  v7[0] = v2;
  v7[1] = v1;
  do
  {
    v4 = &v7[v3];
    *(v4 + 4) = 0;
    *(v4 + 10) = 0;
    v4[3] = 0;
    v4[6] = 0;
    v3 += 6;
  }

  while (v3 != 480);
  v8 = 0u;
  v5 = *v0;
  v6 = v0[1];
  v9 = *v0;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *v0;
  }

  if (v5)
  {
    LOBYTE(v5) = sub_2D5658(v5);
  }

  v11 = v5;
  operator new();
}

void sub_3A8DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_1F1A8(v49);
  sub_3A0ED4(&a49);
  sub_1F1A8(v50 - 128);
  _Unwind_Resume(a1);
}

void sub_3A8EBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3A8F10(void *a1)
{
  v2 = a1[12];
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

  v4 = a1[10];
  a1[10] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[5];
  a1[5] = 0;
  if (v7)
  {

    operator delete(v7);
  }
}

void sub_3A8F9C(_DWORD *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_4C2C3C(a1);
  sub_73B5F8((v10 + 72), a2 + 968, &v17);
  v11 = sub_4C2C3C(a1);
  v12 = sub_4C2C84(a1);
  sub_658D94(a5, v11, &v17, v12);
  v13 = sub_4C2BEC(a1);
  v15[0] = sub_4C2BC4(a1);
  v15[1] = v14;
  sub_65623C(v15, *(v13 + 488), a2, v16);
  sub_657924(v16, 0, a2);
  sub_3A90DC(a5 + 744, v16);
  sub_3A92A0(a3, a4, a5);
  sub_3A98D4(v16);
  if (v18 < 0)
  {
    operator delete(v17);
  }
}

void sub_3A9098(_Unwind_Exception *a1)
{
  sub_3A9518(v1);
  if (*(v2 - 65) < 0)
  {
    operator delete(*(v2 - 88));
  }

  _Unwind_Resume(a1);
}

__n128 sub_3A90DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 360) == 1)
  {
    sub_3A971C(a1, a2);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = 0;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    v3 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v3;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    *(a1 + 136) = *(a2 + 136);
    v4 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v4;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    *(a1 + 176) = *(a2 + 176);
    v5 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v5;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    v6 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v6;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    v7 = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = v7;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a1 + 264) = *(a2 + 264);
    v8 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v8;
    *(a2 + 280) = 0;
    *(a2 + 288) = 0;
    *(a2 + 272) = 0;
    *(a1 + 296) = *(a2 + 296);
    v9 = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 304) = v9;
    *(a2 + 312) = 0;
    *(a2 + 320) = 0;
    *(a2 + 304) = 0;
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 344) = 0;
    *(a1 + 352) = 0;
    *(a1 + 336) = 0;
    result = *(a2 + 336);
    *(a1 + 336) = result;
    *(a1 + 352) = *(a2 + 352);
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    *(a2 + 352) = 0;
    *(a1 + 360) = 1;
  }

  return result;
}

void sub_3A92A0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_658AA4(a3 + 744))
  {
    strcpy(&__dst, "Wildfire_area_incident");
    *(&__dst.__r_.__value_.__s + 23) = 22;
    v6 = sub_9274F4(a2, &__dst);
    v7 = (a3 + 480);
    if ((a3 + 480) != v6)
    {
      v8 = *(v6 + 23);
      if (*(a3 + 503) < 0)
      {
        if (v8 >= 0)
        {
          v14 = v6;
        }

        else
        {
          v14 = *v6;
        }

        if (v8 >= 0)
        {
          v15 = *(v6 + 23);
        }

        else
        {
          v15 = v6[1];
        }

        sub_13B38(v7, v14, v15);
      }

      else if ((*(v6 + 23) & 0x80) != 0)
      {
        sub_13A68(v7, *v6, v6[1]);
      }

      else
      {
        v9 = *v6;
        *(a3 + 496) = v6[2];
        *v7 = v9;
      }
    }

LABEL_37:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (sub_6595D0(a3))
  {
    v10 = (a3 + 480);
    if (sub_3110((a3 + 480)) > a1)
    {
      memset(&__dst, 0, sizeof(__dst));
      if (*(a3 + 744) - 5 >= 3)
      {
        v12 = "Area_event_fallback_string";
        v13 = 26;
      }

      else
      {
        v11 = (*(a3 + 744) - 5);
        v12 = off_26696E8[v11];
        v13 = *&asc_22913B0[8 * v11];
      }

      sub_195A048(&__dst, v12, v13);
      v16 = sub_9274F4(a2, &__dst);
      if (*(v16 + 23) < 0)
      {
        sub_325C(__p, *v16, v16[1]);
      }

      else
      {
        v17 = *v16;
        v23 = v16[2];
        *__p = v17;
      }

      v18 = sub_3110((a3 + 480));
      v19 = sub_3110(__p);
      if (v10 != __p && v18 > v19)
      {
        if (*(a3 + 503) < 0)
        {
          if (SHIBYTE(v23) >= 0)
          {
            v20 = __p;
          }

          else
          {
            v20 = __p[0];
          }

          if (SHIBYTE(v23) >= 0)
          {
            v21 = HIBYTE(v23);
          }

          else
          {
            v21 = __p[1];
          }

          sub_13B38(a3 + 480, v20, v21);
        }

        else if ((HIBYTE(v23) & 0x80) != 0)
        {
          sub_13A68((a3 + 480), __p[0], __p[1]);
        }

        else
        {
          *v10 = *__p;
          *(a3 + 496) = v23;
        }
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_37;
    }
  }
}

void sub_3A94C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3A9518(uint64_t a1)
{
  if (*(a1 + 1104) == 1)
  {
    sub_3A98D4(a1 + 744);
    *(a1 + 704) = off_26696C8;
    if ((*(a1 + 735) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 655) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    *(a1 + 704) = off_26696C8;
    if ((*(a1 + 735) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(a1 + 712));
  if ((*(a1 + 655) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 623) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(a1 + 632));
  if ((*(a1 + 623) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 599) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(a1 + 600));
  if ((*(a1 + 599) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 559) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(a1 + 576));
  if ((*(a1 + 559) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a1 + 527) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(a1 + 536));
  if ((*(a1 + 527) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 503) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(a1 + 504));
  if ((*(a1 + 503) & 0x80000000) == 0)
  {
LABEL_9:
    v2 = a1;

    return sub_2C0F28(v2);
  }

LABEL_19:
  operator delete(*(a1 + 480));
  v2 = a1;

  return sub_2C0F28(v2);
}

void sub_3A9668(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4C2C3C(a1);
  sub_73B5F8((v6 + 72), a2 + 968, __p);
  v7 = sub_4C2C3C(a1);
  v8 = sub_4C2C84(a1);
  sub_658D94(a3, v7, __p, v8);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_3A9700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3A971C(uint64_t a1, uint64_t a2)
{
  sub_33CE04(a1, a2);
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v4 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v4;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v5 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v5;
  *(a2 + 239) = 0;
  *(a2 + 216) = 0;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v6 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 240) = v6;
  *(a2 + 263) = 0;
  *(a2 + 240) = 0;
  *(a1 + 264) = *(a2 + 264);
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v7 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v7;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  v8 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v8;
  *(a2 + 327) = 0;
  *(a2 + 304) = 0;
  *(a1 + 328) = *(a2 + 328);
  v9 = *(a1 + 336);
  if (v9)
  {
    v10 = *(a1 + 344);
    v11 = *(a1 + 336);
    if (v10 == v9)
    {
LABEL_23:
      *(a1 + 344) = v9;
      operator delete(v11);
      *(a1 + 336) = 0;
      *(a1 + 344) = 0;
      *(a1 + 352) = 0;
      goto LABEL_24;
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 24));
        if ((*(v10 - 25) & 0x80000000) == 0)
        {
LABEL_17:
          if (*(v10 - 49) < 0)
          {
            goto LABEL_21;
          }

          goto LABEL_14;
        }
      }

      else if ((*(v10 - 25) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      operator delete(*(v10 - 48));
      if (*(v10 - 49) < 0)
      {
LABEL_21:
        operator delete(*(v10 - 72));
      }

LABEL_14:
      v10 -= 248;
      sub_33D5A0(v10);
      if (v10 == v9)
      {
        v11 = *(a1 + 336);
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  return a1;
}

uint64_t sub_3A98D4(uint64_t a1)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    v3 = *(a1 + 344);
    v4 = *(a1 + 336);
    if (v3 == v2)
    {
LABEL_13:
      *(a1 + 344) = v2;
      operator delete(v4);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
        if ((*(v3 - 25) & 0x80000000) == 0)
        {
LABEL_7:
          if (*(v3 - 49) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_4;
        }
      }

      else if ((*(v3 - 25) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 48));
      if (*(v3 - 49) < 0)
      {
LABEL_11:
        operator delete(*(v3 - 72));
      }

LABEL_4:
      v3 -= 248;
      sub_33D5A0(v3);
      if (v3 == v2)
      {
        v4 = *(a1 + 336);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
    if ((*(a1 + 295) & 0x80000000) == 0)
    {
LABEL_16:
      if ((*(a1 + 263) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a1 + 295) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*(a1 + 272));
  if ((*(a1 + 263) & 0x80000000) == 0)
  {
LABEL_17:
    if ((*(a1 + 239) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(*(a1 + 240));
  if ((*(a1 + 239) & 0x80000000) == 0)
  {
LABEL_18:
    if ((*(a1 + 215) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*(a1 + 216));
  if ((*(a1 + 215) & 0x80000000) == 0)
  {
LABEL_19:
    v5 = a1;

    return sub_33D080(v5);
  }

LABEL_26:
  operator delete(*(a1 + 192));
  v5 = a1;

  return sub_33D080(v5);
}

uint64_t **sub_3A9A34(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v24, a2, v5);
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
    operator new();
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

void sub_3A9E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_3A9E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_3A9E64()
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
  xmmword_278F308 = 0u;
  unk_278F318 = 0u;
  dword_278F328 = 1065353216;
  sub_3A9A34(&xmmword_278F308, v0);
  sub_3A9A34(&xmmword_278F308, v3);
  sub_3A9A34(&xmmword_278F308, __p);
  sub_3A9A34(&xmmword_278F308, v9);
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
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_3AA034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_278F308);
  if (a36 < 0)
  {
    operator delete(__p);
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
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_3AA0AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  *a1 = *a2;
  v10 = (a1 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*a3)
  {
    v11 = a3[1];
    *(a1 + 16) = *a3;
    *(a1 + 24) = v11;
    *a3 = 0;
    a3[1] = 0;
    v12 = sub_74700();
    v13 = sub_73F04(v12);
    if (v13 && *sub_74254(v12))
    {
      v14 = sub_74254(v12);
      v15 = v14[1];
      *(a1 + 32) = *v14;
      *(a1 + 40) = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      sub_3CD37C(*a1, (a1 + 32));
    }

    *(a1 + 74) = 0;
    *(a1 + 64) = 0x3E4CCCCD3F000000;
    *(a1 + 76) = 0;
    *(a1 + 80) = 0;
    *(a1 + 84) = -1;
    *(a1 + 88) = 255;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 32;
    *(a1 + 120) = 0xFFFFFFFF00000000;
    *(a1 + 128) = 255;
    *(a1 + 132) = 0x7FFFFFFF;
    *(a1 + 136) = 0;
    *(a1 + 48) = xmmword_2267060;
    *(a1 + 72) = 0;
    if (sub_50553C(a8))
    {
      v16 = a8[1];
      *(a1 + 144) = *a8;
      *(a1 + 152) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = a8[3];
      *(a1 + 160) = a8[2];
      *(a1 + 168) = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = a8[5];
      *(a1 + 176) = a8[4];
      *(a1 + 184) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = a8[7];
      *(a1 + 192) = a8[6];
      *(a1 + 200) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = a8[9];
      *(a1 + 208) = a8[8];
      *(a1 + 216) = v20;
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      sub_3CD3AC(*a1, (a1 + 144));
    }

    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 576) = 0;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *(a1 + 512) = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    sub_50A81C(a1, v10, (a1 + 584));
  }

  operator new();
}

void sub_3AA3DC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_3AA410(_Unwind_Exception *a1, uint64_t a2, uint64_t *a3, void **a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 792) = v6;
  sub_2C1A58(va);
  sub_3B857C(v5 + 584);
  sub_3AA7C4((v5 + 576));
  sub_1F1A8(v5 + 560);
  sub_1F1A8(v5 + 544);
  sub_1F1A8(v5 + 528);
  sub_3AA818((v5 + 520));
  sub_3AA8A0((v5 + 512));
  v8 = *(v5 + 504);
  *(v5 + 504) = 0;
  if (v8)
  {
    sub_3BB914(v5 + 504, v8);
  }

  sub_3AA980((v5 + 496));
  sub_3AAA28((v5 + 488));
  sub_3AA8A0((v5 + 480));
  sub_3AAB08((v5 + 472));
  sub_3AAB08((v5 + 464));
  v9 = *(v5 + 456);
  *(v5 + 456) = 0;
  if (v9)
  {
    sub_3BB7F0(v5 + 456, v9);
  }

  sub_3AA8A0((v5 + 448));
  sub_3AA980((v5 + 440));
  sub_3AABB0((v5 + 432));
  sub_3AABB0((v5 + 424));
  sub_3AA980((v5 + 416));
  sub_3BB700((v5 + 408), 0);
  sub_3AAC58((v5 + 400));
  sub_3AAD00((v5 + 392));
  sub_3AADA8((v5 + 384));
  sub_3AAE88((v5 + 376));
  sub_3AAE88((v5 + 368));
  sub_3AAE88((v5 + 360));
  sub_3AAF30((v5 + 352));
  sub_3AA980((v5 + 344));
  sub_3AAFD8((v5 + 336));
  sub_3AB080((v5 + 328));
  sub_3AB160((v5 + 320));
  v10 = *(v5 + 312);
  *(v5 + 312) = 0;
  if (v10)
  {
    sub_3BB3B0(v5 + 312, v10);
  }

  sub_3AB080((v5 + 304));
  v11 = *(v5 + 296);
  *(v5 + 296) = 0;
  if (v11)
  {
    sub_3BB3B0(v5 + 296, v11);
  }

  sub_3AB208((v5 + 288));
  sub_3AB25C((v5 + 280));
  v12 = *(v5 + 272);
  *(v5 + 272) = 0;
  if (v12)
  {
    sub_3BB3B0(v5 + 272, v12);
  }

  sub_3AB25C((v5 + 264));
  sub_3AB25C((v5 + 256));
  v13 = *(v5 + 248);
  *(v5 + 248) = 0;
  if (v13)
  {
    sub_3BB27C(v5 + 248, v13);
  }

  sub_3AA980(a3);
  sub_3AA980((v5 + 232));
  sub_3AB33C(a4);
  sub_3B889C((v5 + 144));
  v14 = *(v5 + 136);
  if (v14)
  {
    free(v14);
  }

  sub_1F1A8(v5 + 32);
  sub_1F1A8(a5);
  sub_1F1A8(v5);
  _Unwind_Resume(a1);
}

void sub_3AA648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1F1A8(a12);
  sub_1F1A8(v12);
  _Unwind_Resume(a1);
}

void *sub_3AA664(uint64_t a1)
{
  *(a1 + 120) = 0xFFFFFFFF00000000;
  v2 = a1 + 120;
  v3 = a1 + 48;
  *(a1 + 73) = 1;
  *(a1 + 128) = 255;
  *(a1 + 132) = 0x7FFFFFFF;
  v4 = malloc_type_malloc(16 * *(a1 + 112), 0x100004003A0DE81uLL);
  *(v2 + 16) = v4;
  v5 = *(v2 - 8);
  if (v5)
  {
    v6 = 16 * v5;
    do
    {
      *v4++ = *v2;
      v6 -= 16;
    }

    while (v6);
  }

  if ((atomic_load_explicit(&qword_2732E58, memory_order_acquire) & 1) == 0)
  {
    sub_21E13C0();
  }

  v11 = qword_2732E50;
  v12 = 255;
  sub_361114(v3, &v11);
  v7 = sub_74700();
  result = sub_74254(v7);
  if (!*result)
  {
    v9 = sub_74700();
    sub_7425C(v9, (a1 + 32));
    v10 = sub_74700();
    return sub_742F8(v10, *(a1 + 884));
  }

  return result;
}

uint64_t *sub_3AA770(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_11C6E5C();
    operator delete();
  }

  return a1;
}

uint64_t *sub_3AA7C4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_3BBA38(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_3AA818(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    *(v1 + 40) = 0;
    if (v2)
    {
      (*(v1 + 48))();
    }

    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      (*(v1 + 32))();
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_3AA8A0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_3AA980(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AAA28(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 3880);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_3AAB08(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AABB0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AAC58(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return a1;
}

void *sub_3AAD00(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      v1[4] = v2;
      operator delete(v2);
    }

    v3 = v1[1];
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_3AADA8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_3AAE88(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AAF30(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AAFD8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AB080(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 3880);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_3AB160(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return a1;
}

void **sub_3AB208(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_3BB4D4(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_3AB25C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 3880);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete();
  }

  return result;
}

void **sub_3AB33C(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_360B9C(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_3AB398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = *(a2 + 40);
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v11 = sub_74700();
  if (sub_73F04(v11) && *sub_74254(v11))
  {
    v12 = sub_74254(v11);
    v10 = v12[1];
    *(a1 + 32) = *v12;
    *(a1 + 40) = v10;
    if (v10)
    {
LABEL_8:
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_3CD37C(*a1, (a1 + 32));
  }

LABEL_15:
  *(a1 + 74) = 0;
  *(a1 + 64) = 0x3E4CCCCD3F000000;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = -1;
  *(a1 + 88) = 255;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 32;
  *(a1 + 120) = 0xFFFFFFFF00000000;
  *(a1 + 128) = 255;
  *(a1 + 132) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 48) = xmmword_2267060;
  *(a1 + 72) = 0;
  if (sub_50553C((a2 + 144)))
  {
    v13 = *(a2 + 152);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 + 168);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(a2 + 184);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(a2 + 200);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_3CD3AC(*a1, (a1 + 144));
  }

  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  sub_50C4A4((a2 + 584), a3, a1 + 584);
  v18 = *(a1 + 16);
  *(a1 + 784) = 0;
  *(a1 + 800) = 0;
  *(a1 + 792) = 0;
  v19 = v18[1];
  if (v19 != *v18)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - *v18) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 872) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  v20 = *(a2 + 880);
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 880) = v20;
  *(a1 + 892) = *(a2 + 892);
  sub_3AA664(a1);
  return a1;
}

void sub_3AB768(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_3AB79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, void **a19, uint64_t *a20, uint64_t *a21, void *a22)
{
  v22[99] = v25;
  sub_2C1A58((v27 - 96));
  sub_3B857C(v23 + 360);
  sub_3AA7C4((v23 + 352));
  sub_1F1A8(v23 + 336);
  sub_1F1A8(v23 + 320);
  sub_1F1A8(v23 + 304);
  sub_3AA818((v23 + 296));
  sub_3AA8A0((v23 + 288));
  v29 = *(v23 + 280);
  *(v23 + 280) = 0;
  if (v29)
  {
    sub_3BB914(v23 + 280, v29);
  }

  sub_3AA980((v23 + 272));
  sub_3AAA28((v23 + 264));
  sub_3AA8A0((v23 + 256));
  sub_3AAB08((v23 + 248));
  sub_3AAB08(v24);
  v30 = *(v23 + 232);
  *(v23 + 232) = 0;
  if (v30)
  {
    sub_3BB7F0(v23 + 232, v30);
  }

  sub_3AA8A0(v26);
  sub_3AA980((v23 + 216));
  sub_3AABB0(a10);
  sub_3AABB0((v23 + 200));
  sub_3AA980(a11);
  sub_3BB700((v23 + 184), 0);
  sub_3AAC58(a12);
  sub_3AAD00((v23 + 168));
  sub_3AADA8(a13);
  sub_3AAE88((v23 + 152));
  sub_3AAE88(a14);
  sub_3AAE88((v23 + 136));
  sub_3AAF30(a15);
  sub_3AA980((v23 + 120));
  sub_3AAFD8(a16);
  sub_3AB080((v23 + 104));
  sub_3AB160(a17);
  v31 = *(v23 + 88);
  *(v23 + 88) = 0;
  if (v31)
  {
    sub_3BB3B0(v23 + 88, v31);
  }

  sub_3AB080(a18);
  v32 = *(v23 + 72);
  *(v23 + 72) = 0;
  if (v32)
  {
    sub_3BB3B0(v23 + 72, v32);
  }

  sub_3AB208(a19);
  sub_3AB25C((v23 + 56));
  v33 = *a22;
  *a22 = 0;
  if (v33)
  {
    sub_3BB3B0(a22, v33);
  }

  sub_3AB25C((v23 + 40));
  sub_3AB25C(a20);
  v34 = *(v23 + 24);
  *(v23 + 24) = 0;
  if (v34)
  {
    sub_3BB27C(v23 + 24, v34);
  }

  sub_3AA980(a21);
  sub_3AA980((v23 + 8));
  sub_3AB33C(v23);
  sub_3B889C(v22 + 18);
  v35 = v22[17];
  if (v35)
  {
    free(v35);
  }

  sub_1F1A8((v22 + 4));
  sub_1F1A8((v22 + 2));
  sub_1F1A8(v22);
  _Unwind_Resume(a1);
}

void sub_3AB9F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *a1 = *a2;
  v13 = (a1 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*a4)
  {
    v14 = a4[1];
    *(a1 + 16) = *a4;
    *(a1 + 24) = v14;
    *a4 = 0;
    a4[1] = 0;
    *(a1 + 32) = *a3;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a1 + 74) = 0;
    *(a1 + 64) = 0x3E4CCCCD3F000000;
    *(a1 + 76) = 0;
    *(a1 + 80) = 0;
    *(a1 + 84) = -1;
    *(a1 + 88) = 255;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 32;
    *(a1 + 120) = 0xFFFFFFFF00000000;
    *(a1 + 128) = 255;
    *(a1 + 132) = 0x7FFFFFFF;
    *(a1 + 136) = 0;
    *(a1 + 48) = xmmword_2267060;
    *(a1 + 72) = 0;
    if (sub_50553C(a12))
    {
      v16 = a12[1];
      *(a1 + 144) = *a12;
      *(a1 + 152) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = a12[3];
      *(a1 + 160) = a12[2];
      *(a1 + 168) = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = a12[5];
      *(a1 + 176) = a12[4];
      *(a1 + 184) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = a12[7];
      *(a1 + 192) = a12[6];
      *(a1 + 200) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = a12[9];
      *(a1 + 208) = a12[8];
      *(a1 + 216) = v20;
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      sub_3CD3AC(*a1, (a1 + 144));
    }

    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 576) = 0;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *(a1 + 512) = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    sub_50A81C(a1, v13, (a1 + 584));
  }

  operator new();
}

void sub_3ABE6C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_3ABEA0(_Unwind_Exception *a1, uint64_t *a2, void **a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 792) = v7;
  sub_2C1A58(va);
  sub_3B857C(v5 + 584);
  sub_3AA7C4((v5 + 576));
  sub_1F1A8(v5 + 560);
  sub_1F1A8(v5 + 544);
  sub_1F1A8(v5 + 528);
  sub_3AA818((v5 + 520));
  sub_3AA8A0((v5 + 512));
  v9 = *(v5 + 504);
  *(v5 + 504) = 0;
  if (v9)
  {
    sub_3BB914(v5 + 504, v9);
  }

  sub_3AA980((v5 + 496));
  sub_3AAA28((v5 + 488));
  sub_3AA8A0((v5 + 480));
  sub_3AAB08((v5 + 472));
  sub_3AAB08((v5 + 464));
  v10 = *(v5 + 456);
  *(v5 + 456) = 0;
  if (v10)
  {
    sub_3BB7F0(v5 + 456, v10);
  }

  sub_3AA8A0((v5 + 448));
  sub_3AA980((v5 + 440));
  sub_3AABB0((v5 + 432));
  sub_3AABB0((v5 + 424));
  sub_3AA980((v5 + 416));
  sub_3BB700((v5 + 408), 0);
  sub_3AAC58((v5 + 400));
  sub_3AAD00((v5 + 392));
  sub_3AADA8((v5 + 384));
  sub_3AAE88((v5 + 376));
  sub_3AAE88((v5 + 368));
  sub_3AAE88((v5 + 360));
  sub_3AAF30((v5 + 352));
  sub_3AA980((v5 + 344));
  sub_3AAFD8((v5 + 336));
  sub_3AB080((v5 + 328));
  sub_3AB160((v5 + 320));
  v11 = *(v5 + 312);
  *(v5 + 312) = 0;
  if (v11)
  {
    sub_3BB3B0(v5 + 312, v11);
  }

  sub_3AB080((v5 + 304));
  v12 = *(v5 + 296);
  *(v5 + 296) = 0;
  if (v12)
  {
    sub_3BB3B0(v5 + 296, v12);
  }

  sub_3AB208((v5 + 288));
  sub_3AB25C((v5 + 280));
  v13 = *(v5 + 272);
  *(v5 + 272) = 0;
  if (v13)
  {
    sub_3BB3B0(v5 + 272, v13);
  }

  sub_3AB25C((v5 + 264));
  sub_3AB25C((v5 + 256));
  v14 = *(v5 + 248);
  *(v5 + 248) = 0;
  if (v14)
  {
    sub_3BB27C(v5 + 248, v14);
  }

  sub_3AA980(a2);
  sub_3AA980((v5 + 232));
  sub_3AB33C(a3);
  sub_3B889C((v6 + 112));
  v15 = *(v5 + 136);
  if (v15)
  {
    free(v15);
  }

  sub_1F1A8(v6);
  sub_1F1A8(a4);
  sub_1F1A8(v5);
  _Unwind_Resume(a1);
}

void sub_3AC104()
{
  if (!*(v0 + 136))
  {
    JUMPOUT(0x3AC0E4);
  }

  JUMPOUT(0x3AC0E0);
}

void sub_3AC13C()
{
  __t.__d_.__rep_ = 0;
  v0 = 0;
  operator new();
}

void sub_3AC310(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 864);
  sub_1F1A8(v1 + 848);
  sub_3AA770((v1 + 840));
  sub_1F1A8(v1 + 824);
  sub_1F1A8(v1 + 808);
  sub_1AA90((v1 + 784));
  sub_3B857C(v1 + 584);
  sub_3AA7C4((v1 + 576));
  sub_1F1A8(v1 + 560);
  sub_1F1A8(v1 + 544);
  sub_1F1A8(v1 + 528);
  sub_3AA818((v1 + 520));
  sub_3AA8A0((v1 + 512));
  v6 = *(v1 + 504);
  *(v1 + 504) = 0;
  if (v6)
  {
    sub_3BB914(v1 + 504, v6);
  }

  sub_3AA980((v1 + 496));
  sub_3AAA28((v1 + 488));
  sub_3AA8A0((v1 + 480));
  sub_3AAB08((v1 + 472));
  sub_3AAB08((v1 + 464));
  v7 = *(v1 + 456);
  *(v1 + 456) = 0;
  if (v7)
  {
    sub_3BB7F0(v1 + 456, v7);
  }

  sub_3AA8A0((v1 + 448));
  sub_3AA980((v1 + 440));
  sub_3AABB0((v1 + 432));
  sub_3AABB0((v1 + 424));
  sub_3AA980((v1 + 416));
  sub_3BB700((v1 + 408), 0);
  sub_3AAC58((v1 + 400));
  sub_3AAD00((v1 + 392));
  sub_3AADA8((v1 + 384));
  sub_3AAE88((v1 + 376));
  sub_3AAE88((v1 + 368));
  sub_3AAE88((v1 + 360));
  sub_3AAF30((v1 + 352));
  sub_3AA980((v1 + 344));
  sub_3AAFD8((v1 + 336));
  sub_3AB080((v1 + 328));
  sub_3AB160((v1 + 320));
  v8 = *(v1 + 312);
  *(v1 + 312) = 0;
  if (v8)
  {
    sub_3BB3B0(v1 + 312, v8);
  }

  sub_3AB080((v1 + 304));
  v9 = *(v1 + 296);
  *(v1 + 296) = 0;
  if (v9)
  {
    sub_3BB3B0(v1 + 296, v9);
  }

  sub_3AB208((v1 + 288));
  sub_3AB25C((v1 + 280));
  v10 = *(v1 + 272);
  *(v1 + 272) = 0;
  if (v10)
  {
    sub_3BB3B0(v1 + 272, v10);
  }

  sub_3AB25C((v1 + 264));
  sub_3AB25C((v1 + 256));
  v11 = *(v1 + 248);
  *(v1 + 248) = 0;
  if (v11)
  {
    sub_3BB27C(v1 + 248, v11);
  }

  sub_3AA980(v4);
  sub_3AA980((v1 + 232));
  sub_3AB33C(v3);
  sub_3B889C((v1 + 144));
  v12 = *(v1 + 136);
  if (v12)
  {
    free(v12);
  }

  sub_1F1A8(v2);
  sub_1F1A8(v1 + 16);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_3AC52C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_3AC560(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_3AC57C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5F328(v8);
  sub_3AB398(a2, a1, v8);
  v4 = __p;
  if (__p)
  {
    do
    {
      v5 = *v4;
      v6 = *(v4 + 12);
      if (v6 != -1)
      {
        (off_2669700[v6])(&v10, v4 + 5);
      }

      *(v4 + 12) = -1;
      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v7 = v8[0];
  v8[0] = 0;
  if (v7)
  {
    operator delete(v7);
  }
}

void *sub_3AC660(void *a1)
{
  v2 = a1[109];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[107];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[105];
  a1[105] = 0;
  if (v4)
  {
    sub_11C6E5C();
    operator delete();
  }

  v5 = a1[104];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[102];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[98];
  if (v7)
  {
    v8 = a1[99];
    v9 = a1[98];
    if (v8 == v7)
    {
LABEL_25:
      a1[99] = v7;
      operator delete(v9);
      goto LABEL_26;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_23:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_23;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[98];
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  sub_3B857C((a1 + 73));
  v11 = a1[72];
  a1[72] = 0;
  if (v11)
  {
    sub_3BBA38(v11);
    operator delete();
  }

  v12 = a1[71];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = a1[69];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = a1[67];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = a1[65];
    a1[65] = 0;
    if (v15)
    {
LABEL_37:
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;
      if (v16)
      {
        (*(v15 + 48))();
      }

      v17 = *(v15 + 24);
      *(v15 + 24) = 0;
      if (v17)
      {
        (*(v15 + 32))();
      }

      if (*(v15 + 23) < 0)
      {
        operator delete(*v15);
      }

      operator delete();
    }
  }

  else
  {
    v15 = a1[65];
    a1[65] = 0;
    if (v15)
    {
      goto LABEL_37;
    }
  }

  v18 = a1[64];
  a1[64] = 0;
  if (v18)
  {
    v19 = *(v18 + 24);
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    v20 = *(v18 + 8);
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    operator delete();
  }

  v21 = a1[63];
  a1[63] = 0;
  if (v21)
  {
    sub_3BB914((a1 + 63), v21);
  }

  v22 = a1[62];
  a1[62] = 0;
  if (v22)
  {
    v23 = *(v22 + 8);
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    operator delete();
  }

  v24 = a1[61];
  a1[61] = 0;
  if (v24)
  {
    v25 = *(v24 + 3880);
    if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    v26 = *(v24 + 8);
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }

    operator delete();
  }

  v27 = a1[60];
  a1[60] = 0;
  if (v27)
  {
    v28 = *(v27 + 24);
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    v29 = *(v27 + 8);
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    operator delete();
  }

  v30 = a1[59];
  a1[59] = 0;
  if (v30)
  {
    v31 = *(v30 + 8);
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
    }

    operator delete();
  }

  v32 = a1[58];
  a1[58] = 0;
  if (v32)
  {
    v33 = *(v32 + 8);
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }

    operator delete();
  }

  v34 = a1[57];
  a1[57] = 0;
  if (v34)
  {
    sub_3BB7F0((a1 + 57), v34);
  }

  v35 = a1[56];
  a1[56] = 0;
  if (v35)
  {
    v36 = *(v35 + 24);
    if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }

    v37 = *(v35 + 8);
    if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }

    operator delete();
  }

  v38 = a1[55];
  a1[55] = 0;
  if (v38)
  {
    v39 = *(v38 + 8);
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }

    operator delete();
  }

  v40 = a1[54];
  a1[54] = 0;
  if (v40)
  {
    v41 = *(v40 + 8);
    if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }

    operator delete();
  }

  v42 = a1[53];
  a1[53] = 0;
  if (v42)
  {
    v43 = *(v42 + 8);
    if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v43->__on_zero_shared)(v43);
      std::__shared_weak_count::__release_weak(v43);
    }

    operator delete();
  }

  v44 = a1[52];
  a1[52] = 0;
  if (v44)
  {
    v45 = *(v44 + 8);
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    operator delete();
  }

  sub_3BB700(a1 + 51, 0);
  v46 = a1[50];
  a1[50] = 0;
  if (v46)
  {
    v47 = *(v46 + 8);
    if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }

    operator delete();
  }

  v48 = a1[49];
  a1[49] = 0;
  if (v48)
  {
    v49 = v48[3];
    if (v49)
    {
      v48[4] = v49;
      operator delete(v49);
    }

    v50 = v48[1];
    if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v50->__on_zero_shared)(v50);
      std::__shared_weak_count::__release_weak(v50);
    }

    operator delete();
  }

  v51 = a1[48];
  a1[48] = 0;
  if (v51)
  {
    v52 = *(v51 + 24);
    if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v52->__on_zero_shared)(v52);
      std::__shared_weak_count::__release_weak(v52);
    }

    v53 = *(v51 + 8);
    if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v53->__on_zero_shared)(v53);
      std::__shared_weak_count::__release_weak(v53);
    }

    operator delete();
  }

  v54 = a1[47];
  a1[47] = 0;
  if (v54)
  {
    v55 = *(v54 + 8);
    if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v55->__on_zero_shared)(v55);
      std::__shared_weak_count::__release_weak(v55);
    }

    operator delete();
  }

  v56 = a1[46];
  a1[46] = 0;
  if (v56)
  {
    v57 = *(v56 + 8);
    if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v57->__on_zero_shared)(v57);
      std::__shared_weak_count::__release_weak(v57);
    }

    operator delete();
  }

  v58 = a1[45];
  a1[45] = 0;
  if (v58)
  {
    v59 = *(v58 + 8);
    if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v59->__on_zero_shared)(v59);
      std::__shared_weak_count::__release_weak(v59);
    }

    operator delete();
  }

  v60 = a1[44];
  a1[44] = 0;
  if (v60)
  {
    v61 = *(v60 + 8);
    if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v61->__on_zero_shared)(v61);
      std::__shared_weak_count::__release_weak(v61);
    }

    operator delete();
  }

  v62 = a1[43];
  a1[43] = 0;
  if (v62)
  {
    v63 = *(v62 + 8);
    if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v63->__on_zero_shared)(v63);
      std::__shared_weak_count::__release_weak(v63);
    }

    operator delete();
  }

  v64 = a1[42];
  a1[42] = 0;
  if (v64)
  {
    v65 = *(v64 + 16);
    if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v65->__on_zero_shared)(v65);
      std::__shared_weak_count::__release_weak(v65);
    }

    operator delete();
  }

  v66 = a1[41];
  a1[41] = 0;
  if (v66)
  {
    v67 = *(v66 + 3880);
    if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v67->__on_zero_shared)(v67);
      std::__shared_weak_count::__release_weak(v67);
    }

    v68 = *(v66 + 8);
    if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v68->__on_zero_shared)(v68);
      std::__shared_weak_count::__release_weak(v68);
    }

    operator delete();
  }

  v69 = a1[40];
  a1[40] = 0;
  if (v69)
  {
    v70 = *(v69 + 8);
    if (v70 && !atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v70->__on_zero_shared)(v70);
      std::__shared_weak_count::__release_weak(v70);
    }

    operator delete();
  }

  v71 = a1[39];
  a1[39] = 0;
  if (v71)
  {
    sub_3BB3B0((a1 + 39), v71);
  }

  v72 = a1[38];
  a1[38] = 0;
  if (v72)
  {
    v73 = *(v72 + 3880);
    if (v73 && !atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v73->__on_zero_shared)(v73);
      std::__shared_weak_count::__release_weak(v73);
    }

    v74 = *(v72 + 8);
    if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v74->__on_zero_shared)(v74);
      std::__shared_weak_count::__release_weak(v74);
    }

    operator delete();
  }

  v75 = a1[37];
  a1[37] = 0;
  if (v75)
  {
    sub_3BB3B0((a1 + 37), v75);
  }

  v76 = a1[36];
  a1[36] = 0;
  if (v76)
  {
    sub_3BB4D4(v76);
    operator delete();
  }

  v77 = a1[35];
  a1[35] = 0;
  if (v77)
  {
    v78 = *(v77 + 3880);
    if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v78->__on_zero_shared)(v78);
      std::__shared_weak_count::__release_weak(v78);
    }

    v79 = *(v77 + 8);
    if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v79->__on_zero_shared)(v79);
      std::__shared_weak_count::__release_weak(v79);
    }

    operator delete();
  }

  v80 = a1[34];
  a1[34] = 0;
  if (v80)
  {
    sub_3BB3B0((a1 + 34), v80);
  }

  v81 = a1[33];
  a1[33] = 0;
  if (v81)
  {
    v82 = *(v81 + 3880);
    if (v82 && !atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v82->__on_zero_shared)(v82);
      std::__shared_weak_count::__release_weak(v82);
    }

    v83 = *(v81 + 8);
    if (v83 && !atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v83->__on_zero_shared)(v83);
      std::__shared_weak_count::__release_weak(v83);
    }

    operator delete();
  }

  v84 = a1[32];
  a1[32] = 0;
  if (v84)
  {
    v85 = *(v84 + 3880);
    if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v85->__on_zero_shared)(v85);
      std::__shared_weak_count::__release_weak(v85);
    }

    v86 = *(v84 + 8);
    if (v86 && !atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v86->__on_zero_shared)(v86);
      std::__shared_weak_count::__release_weak(v86);
    }

    operator delete();
  }

  v87 = a1[31];
  a1[31] = 0;
  if (v87)
  {
    sub_3BB27C((a1 + 31), v87);
  }

  v88 = a1[30];
  a1[30] = 0;
  if (v88)
  {
    v89 = *(v88 + 8);
    if (v89 && !atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v89->__on_zero_shared)(v89);
      std::__shared_weak_count::__release_weak(v89);
    }

    operator delete();
  }

  v90 = a1[29];
  a1[29] = 0;
  if (v90)
  {
    v91 = *(v90 + 8);
    if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v91->__on_zero_shared)(v91);
      std::__shared_weak_count::__release_weak(v91);
    }

    operator delete();
  }

  v92 = a1[28];
  a1[28] = 0;
  if (v92)
  {
    sub_360B9C(v92);
    operator delete();
  }

  sub_3B889C(a1 + 18);
  v93 = a1[17];
  if (v93)
  {
    free(v93);
  }

  v94 = a1[5];
  if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
  }

  v95 = a1[3];
  if (v95 && !atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v95->__on_zero_shared)(v95);
    std::__shared_weak_count::__release_weak(v95);
  }

  v96 = a1[1];
  if (!v96 || atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v96->__on_zero_shared)(v96);
  std::__shared_weak_count::__release_weak(v96);
  return a1;
}

uint64_t sub_3AD9F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_361230(a1 + 48, a2 + 48, 0x20uLL);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = 0u;
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = 0u;
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0u;
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0u;
  *(a1 + 208) = *(a2 + 208);
  v4 = *(a2 + 224);
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a1 + 224) = v4;
  v5 = *(a2 + 240);
  *(a2 + 240) = 0u;
  *(a1 + 240) = v5;
  v6 = *(a2 + 256);
  *(a2 + 256) = 0u;
  *(a1 + 256) = v6;
  v7 = *(a2 + 272);
  *(a2 + 272) = 0u;
  *(a1 + 272) = v7;
  v8 = *(a2 + 288);
  *(a2 + 288) = 0u;
  *(a1 + 288) = v8;
  v9 = *(a2 + 304);
  *(a2 + 304) = 0u;
  *(a1 + 304) = v9;
  v10 = *(a2 + 320);
  *(a2 + 320) = 0u;
  *(a1 + 320) = v10;
  v11 = *(a2 + 336);
  *(a2 + 336) = 0u;
  *(a1 + 336) = v11;
  v12 = *(a2 + 352);
  *(a2 + 352) = 0u;
  *(a1 + 352) = v12;
  v13 = *(a2 + 368);
  *(a2 + 368) = 0u;
  *(a1 + 368) = v13;
  v14 = *(a2 + 384);
  *(a2 + 384) = 0u;
  *(a1 + 384) = v14;
  v15 = *(a2 + 400);
  *(a2 + 400) = 0u;
  *(a1 + 400) = v15;
  v16 = *(a2 + 416);
  *(a2 + 416) = 0u;
  *(a1 + 416) = v16;
  v17 = *(a2 + 432);
  *(a2 + 432) = 0u;
  *(a1 + 432) = v17;
  v18 = *(a2 + 448);
  *(a2 + 448) = 0u;
  *(a1 + 448) = v18;
  v19 = *(a2 + 464);
  *(a2 + 464) = 0u;
  *(a1 + 464) = v19;
  v20 = *(a2 + 480);
  *(a2 + 480) = 0u;
  *(a1 + 480) = v20;
  v21 = *(a2 + 496);
  *(a2 + 496) = 0u;
  *(a1 + 496) = v21;
  v22 = *(a2 + 512);
  *(a2 + 512) = 0u;
  *(a1 + 512) = v22;
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 528) = 0u;
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 544) = 0u;
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 560) = 0u;
  v23 = *(a2 + 576);
  *(a2 + 576) = 0;
  *(a1 + 576) = v23;
  sub_3B8A38(a1 + 584, a2 + 584);
  *(a1 + 800) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = *(a2 + 800);
  *(a2 + 800) = 0;
  *(a2 + 784) = 0u;
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 808) = 0u;
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 824) = 0u;
  v24 = *(a2 + 840);
  *(a2 + 840) = 0;
  *(a1 + 840) = v24;
  *(a1 + 856) = *(a2 + 856);
  *(a2 + 848) = 0u;
  *(a1 + 864) = *(a2 + 864);
  *(a2 + 864) = 0u;
  v25 = *(a2 + 880);
  *(a1 + 886) = *(a2 + 886);
  *(a1 + 880) = v25;
  return a1;
}

void sub_3ADC58(_Unwind_Exception *a1)
{
  sub_1F1A8(v3);
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3ADC80(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *(a1 + 24);
  *(a1 + 16) = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a2[2];
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v9 = *(a1 + 40);
  *(a1 + 32) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = a2[3];
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  v11 = *(a1 + 56);
  *(a1 + 48) = v10;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a2[4];
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  v13 = *(a1 + 72);
  *(a1 + 64) = v12;
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  return a1;
}

void **sub_3ADE68(void **result, void *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    sub_360B9C(v3);
    operator delete();
  }

  return result;
}

uint64_t *sub_3ADEBC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3ADF6C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = *(v3 + 3880);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v3 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return result;
}

void **sub_3AE054(void **result, void *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    sub_3BB4D4(v3);
    operator delete();
  }

  return result;
}

uint64_t *sub_3AE0A8(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = *(v3 + 3880);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v3 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_3AE190(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AE240(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AE2F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AE3A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AE450(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v3 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return result;
}

void *sub_3AE538(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = v3[3];
    if (v4)
    {
      v3[4] = v4;
      operator delete(v4);
    }

    v5 = v3[1];
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_3AE5E8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AE698(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AE748(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v3 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_3AE830(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_3AE8E0(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = *(v3 + 3880);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(v3 + 8);
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_3AE9C8(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
    if (v4)
    {
      (*(v3 + 48))();
    }

    v5 = *(v3 + 24);
    *(v3 + 24) = 0;
    if (v5)
    {
      (*(v3 + 32))();
    }

    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_3AEA58(uint64_t result)
{
  if (!*(result + 528))
  {
    v1 = result;
    v11 = 20;
    strcpy(__p, "CyclingCostFunctions");
    result = sub_50D02C((result + 584), __p);
    if (v11 < 0)
    {
      v2 = result;
      operator delete(*__p);
      result = v2;
      if (!v2)
      {
        return result;
      }
    }

    else if (!result)
    {
      return result;
    }

    v11 = 20;
    strcpy(__p, "CyclingCostFunctions");
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_50C6D4((v1 + 584), __p, &v7);
    v3 = v7;
    if (v7)
    {
      v4 = v8;
      v5 = v7;
      if (v8 != v7)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = v7;
      }

      v8 = v3;
      operator delete(v5);
    }

    if (v11 < 0)
    {
      operator delete(*__p);
    }

    sub_3D1690(*v1);
    sub_3CF1AC(*v1);
    operator new();
  }

  return result;
}

void sub_3AEC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_3AEC9C(uint64_t result)
{
  if (!*(result + 544))
  {
    v1 = result;
    v11 = 20;
    strcpy(__p, "DrivingCostFunctions");
    result = sub_50D02C((result + 584), __p);
    if (v11 < 0)
    {
      v2 = result;
      operator delete(*__p);
      result = v2;
      if (!v2)
      {
        return result;
      }
    }

    else if (!result)
    {
      return result;
    }

    v11 = 20;
    strcpy(__p, "DrivingCostFunctions");
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_50C6D4((v1 + 584), __p, &v7);
    v3 = v7;
    if (v7)
    {
      v4 = v8;
      v5 = v7;
      if (v8 != v7)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = v7;
      }

      v8 = v3;
      operator delete(v5);
    }

    if (v11 < 0)
    {
      operator delete(*__p);
    }

    sub_3D1918(*v1);
    sub_3CF1D4(*v1);
    operator new();
  }

  return result;
}

void sub_3AEE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_3AEED8(uint64_t result)
{
  if (!*(result + 560))
  {
    v1 = result;
    v11 = 20;
    strcpy(__p, "WalkingCostFunctions");
    result = sub_50D02C((result + 584), __p);
    if (v11 < 0)
    {
      v2 = result;
      operator delete(*__p);
      result = v2;
      if (!v2)
      {
        return result;
      }
    }

    else if (!result)
    {
      return result;
    }

    v11 = 20;
    strcpy(__p, "WalkingCostFunctions");
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_50C6D4((v1 + 584), __p, &v7);
    v3 = v7;
    if (v7)
    {
      v4 = v8;
      v5 = v7;
      if (v8 != v7)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = v7;
      }

      v8 = v3;
      operator delete(v5);
    }

    if (v11 < 0)
    {
      operator delete(*__p);
    }

    sub_3D1BA0(*v1);
    sub_3CF1FC(*v1);
    operator new();
  }

  return result;
}

void sub_3AF0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_3AF11C(void *a1)
{
  v1 = sub_3AF144(a1);

  return sub_2BC500(v1);
}

uint64_t sub_3AF144(void *a1)
{
  result = a1[48];
  if (!result)
  {
    v3 = a1;
    nullsub_1(*a1);
    sub_3608D0(__p, "Traffic");
    memset(v4, 0, sizeof(v4));
    sub_50C6D4(v3 + 73, __p, v4);
    sub_3B0D98();
  }

  return result;
}

void sub_3AF210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3AF23C(uint64_t *a1, uint64_t a2)
{
  sub_3AEA58(a1);
  v4 = a1[66];
  if (v4)
  {

    return sub_FC1AF0(v4, a2);
  }

  else
  {
    v6 = *a1;

    return sub_3CEB40(v6, a2);
  }
}

uint64_t sub_3AF2A4(uint64_t *a1, uint64_t a2)
{
  sub_3AEC9C(a1);
  v4 = a1[68];
  if (v4)
  {

    return sub_FC5328(v4, a2);
  }

  else
  {
    v6 = *a1;

    return sub_3CED64(v6, a2);
  }
}

uint64_t sub_3AF30C(uint64_t *a1, uint64_t a2)
{
  sub_3AEED8(a1);
  v4 = a1[70];
  if (v4)
  {

    return sub_FC87F0(v4, a2);
  }

  else
  {
    v6 = *a1;

    return sub_3CEF88(v6, a2);
  }
}

uint64_t sub_3AF374(uint64_t *a1)
{
  sub_3AEA58(a1);
  result = a1[66];
  if (!result)
  {
    v3 = *a1;

    return sub_3CEB78(v3);
  }

  return result;
}

uint64_t sub_3AF3C0(uint64_t *a1)
{
  sub_3AEC9C(a1);
  result = a1[68];
  if (!result)
  {
    v3 = *a1;

    return sub_3CED9C(v3);
  }

  return result;
}

uint64_t sub_3AF40C(uint64_t *a1)
{
  sub_3AEED8(a1);
  result = a1[70];
  if (!result)
  {
    v3 = *a1;

    return sub_3CEFC0(v3);
  }

  return result;
}

uint64_t sub_3AF460(uint64_t *a1)
{
  if (a1[103])
  {
    return a1[103];
  }

  else
  {
    return sub_3CF244(*a1);
  }
}

uint64_t sub_3AF480(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return v1 + 632;
  }

  else
  {
    return a1 + 48;
  }
}

uint64_t sub_3AF4A0(uint64_t *a1)
{
  if (a1[101])
  {
    return a1[101];
  }

  else
  {
    return sub_3CF23C(*a1);
  }
}

uint64_t sub_3AF4C8(uint64_t *a1)
{
  if (sub_3CEB38(*a1))
  {
    sub_3CEB38(*a1);
    operator new();
  }

  return 1;
}

void sub_3AF59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3AF5C0(uint64_t a1)
{
  if (!*(a1 + 864))
  {
    operator new();
  }

  return a1 + 864;
}

void sub_3AF69C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_3AF6B4(void *a1)
{
  if (!a1[28])
  {
    nullsub_1(*a1);
    sub_3AF72C();
  }

  return a1[28];
}

uint64_t sub_3AF824(void *a1)
{
  if (!a1[29])
  {
    nullsub_1(*a1);
    sub_3AF89C();
  }

  return a1[29];
}

uint64_t sub_3AF920(void *a1)
{
  if (!a1[30])
  {
    nullsub_1(*a1);
    sub_3AF89C();
  }

  return a1[30];
}

uint64_t sub_3AF998(uint64_t a1)
{
  if (!*(a1 + 248))
  {
    sub_21E1418(a1);
  }

  return *(a1 + 248);
}

uint64_t sub_3AFB1C(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3AFB80();
  }

  return result;
}

void sub_3AFC40()
{
  sub_1F1A8(v0 + 3872);
  sub_1F1A8(v0);
  operator delete();
}

uint64_t sub_3AFC64(void *a1)
{
  result = a1[33];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3AFCC8();
  }

  return result;
}

void sub_3AFD88()
{
  sub_1F1A8(v0 + 3872);
  sub_1F1A8(v0);
  operator delete();
}

uint64_t sub_3AFDAC(uint64_t a1)
{
  if (!*(a1 + 272))
  {
    sub_21E1470(a1);
  }

  return *(a1 + 272);
}

uint64_t sub_3AFEE8(void *a1)
{
  result = a1[35];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3AFF4C();
  }

  return result;
}

void sub_3B000C()
{
  sub_1F1A8(v0 + 3872);
  sub_1F1A8(v0);
  operator delete();
}

uint64_t sub_3B0030(void *a1)
{
  result = a1[36];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B0098();
  }

  return result;
}

uint64_t sub_3B01A4(uint64_t a1)
{
  if (!*(a1 + 296))
  {
    sub_21E14C8(a1);
  }

  return *(a1 + 296);
}

uint64_t sub_3B02E0(void *a1)
{
  result = a1[38];
  if (!result)
  {
    nullsub_1(*a1);
    sub_3B0354();
  }

  return result;
}

void sub_3B0430()
{
  sub_1F1A8(v0 + 3872);
  sub_1F1A8(v0);
  operator delete();
}

uint64_t sub_3B045C(void *a1)
{
  result = a1[40];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B04C0();
  }

  return result;
}

uint64_t sub_3B0530(void *a1)
{
  result = a1[41];
  if (!result)
  {
    nullsub_1(*a1);
    sub_3B05A4();
  }

  return result;
}

void sub_3B0680()
{
  sub_1F1A8(v0 + 3872);
  sub_1F1A8(v0);
  operator delete();
}

uint64_t sub_3B06A4(void *a1)
{
  result = a1[43];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3AF89C();
  }

  return result;
}

uint64_t sub_3B0708(void *a1)
{
  result = a1[44];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B076C();
  }

  return result;
}

uint64_t sub_3B0834(void *a1)
{
  result = a1[45];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B0898();
  }

  return result;
}

uint64_t sub_3B0A00(void *a1)
{
  result = a1[46];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B0A64();
  }

  return result;
}

uint64_t sub_3B0BCC(void *a1)
{
  result = a1[47];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B0C30();
  }

  return result;
}

void sub_3B0EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1F1A8(&a9);
  sub_1F1A8(&a11);
  operator delete();
}

uint64_t sub_3B0F14(void *a1)
{
  result = a1[49];
  if (!result)
  {
    sub_3AF6B4(a1);
    sub_3B0F84();
  }

  return result;
}

uint64_t sub_3B1090(void *a1)
{
  result = a1[50];
  if (!result)
  {
    v3 = a1;
    sub_3608D0(__p, "HSP");
    memset(v4, 0, sizeof(v4));
    sub_50C6D4(v3 + 73, __p, v4);
    sub_1A104(v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    nullsub_1(*v3);
    sub_3B116C();
  }

  return result;
}

void sub_3B1148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3B11EC(void *a1)
{
  result = a1[52];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B1250();
  }

  return result;
}

uint64_t sub_3B1348(void *a1)
{
  result = a1[53];
  if (!result)
  {
    sub_3608D0(v8, "HSP");
    memset(v7, 0, sizeof(v7));
    v3 = sub_50C6D4(a1 + 73, v8, v7);
    sub_21E1520(v7, v8);
    nullsub_1(*a1);
    sub_3608D0(v8, "free_flow_branch_id");
    v6 = sub_3B15EC(v3, v8);
    sub_3608D0(__p, "capacity_branch_id");
    v5 = sub_3B15EC(v3, __p);
    sub_3B14D8();
  }

  return result;
}

void sub_3B1464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if ((*(v18 - 33) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v18 - 56));
  _Unwind_Resume(exception_object);
}

uint64_t sub_3B15EC(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 20);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_3B1730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B1768(void *a1)
{
  result = a1[54];
  if (!result)
  {
    v3 = a1;
    sub_3608D0(__p, "HSP");
    memset(v6, 0, sizeof(v6));
    v4 = v3;
    v5 = sub_50C6D4(v3 + 73, __p, v6);
    sub_21E1520(v6, __p);
    nullsub_1(*v4);
    sub_3608D0(__p, "free_flow_cbr_branch_id");
    sub_3B15EC(v5, __p);
    sub_3B1884();
  }

  return result;
}

void sub_3B1858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B1994(void *a1)
{
  result = a1[55];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B19F8();
  }

  return result;
}

uint64_t sub_3B1AF0(void *a1)
{
  result = a1[51];
  if (!result)
  {
    v3 = a1;
    sub_3608D0(__p, "Pathlets");
    memset(v6, 0, sizeof(v6));
    v4 = v3;
    v5 = sub_50C6D4(v3 + 73, __p, v6);
    sub_21E1520(v6, __p);
    nullsub_1(*v4);
    sub_3608D0(__p, "branch_id");
    sub_352E94(v5, __p);
    sub_3B1C14();
  }

  return result;
}

void sub_3B1BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B1C94(void *a1)
{
  result = a1[56];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B1CF8();
  }

  return result;
}

uint64_t sub_3B1D8C(void *a1)
{
  result = a1[57];
  if (!result)
  {
    v3 = a1;
    sub_3608D0(__p, "LiveEVChargingStationFacade");
    memset(v4, 0, sizeof(v4));
    sub_50C6D4(v3 + 73, __p, v4);
    nullsub_1(*v3);
    sub_3B1E8C();
  }

  return result;
}

void sub_3B1E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3B1FA0(void *a1)
{
  result = a1[58];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B2004();
  }

  return result;
}

uint64_t sub_3B20FC(void *a1)
{
  result = a1[59];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B2160();
  }

  return result;
}

uint64_t sub_3B21D0(void *a1)
{
  result = a1[60];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B2234();
  }

  return result;
}

uint64_t sub_3B22A4(void *a1)
{
  result = a1[42];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B2308();
  }

  return result;
}

uint64_t sub_3B23FC(void *a1)
{
  result = a1[61];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B2460();
  }

  return result;
}

uint64_t sub_3B25D0(void *a1)
{
  result = a1[62];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B2634();
  }

  return result;
}

uint64_t sub_3B2794(uint64_t a1)
{
  if (!*(a1 + 504))
  {
    sub_21E1554(a1);
  }

  return *(a1 + 504);
}

uint64_t sub_3B2978(void *a1)
{
  result = a1[64];
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    nullsub_1(*a1);
    sub_3B1CF8();
  }

  return result;
}

uint64_t sub_3B29DC(uint64_t a1)
{
  if (!*(a1 + 520))
  {
    sub_21E15AC(a1);
  }

  return *(a1 + 520);
}

uint64_t sub_3B2A90(void *a1)
{
  result = a1[72];
  if (!result)
  {
    HIBYTE(v10[2]) = 16;
    strcpy(v10, "RegionClassifier");
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_50C6D4(a1 + 73, v10, &__p);
    v3 = __p;
    if (__p)
    {
      v4 = v8;
      v5 = __p;
      if (v8 != __p)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = __p;
      }

      v8 = v3;
      operator delete(v5);
    }

    if (SHIBYTE(v10[2]) < 0)
    {
      operator delete(v10[0]);
    }

    nullsub_1(*a1);
    operator new();
  }

  return result;
}

void sub_3B2C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1F1A8(va);
  operator delete();
}

void sub_3B2C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_3B2C6C(uint64_t a1, char *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v3 = __len;
  v4 = __src;
  if (__len > 0x16)
  {
    operator new();
  }

  v21 = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
    *(__dst + v3) = 0;
    if (v21 >= 0)
    {
      v6 = __dst;
    }

    else
    {
      v6 = __dst[0];
    }

    do
    {
      *v6 = __tolower(*v4);
      v6 = (v6 + 1);
      ++v4;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(__dst[0]) = 0;
  }

  v7 = *(a1 + 792);
  v8 = *(a1 + 784);
  v9 = v21;
  if (v8 != v7)
  {
    if (v21 >= 0)
    {
      v10 = v21;
    }

    else
    {
      v10 = __dst[1];
    }

    if (v21 < 0)
    {
      v15 = __dst[0];
      v11 = &unk_22913F0;
      while (1)
      {
        v16 = *(v8 + 23);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v8 + 8);
        }

        if (v16 == v10)
        {
          v18 = v17 >= 0 ? v8 : *v8;
          if (!memcmp(v18, v15, v10))
          {
            break;
          }
        }

        v8 += 48;
        if (v8 == v7)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v11 = &unk_22913F0;
      while (1)
      {
        v12 = *(v8 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v8 + 8);
        }

        if (v12 == v10)
        {
          v14 = v13 >= 0 ? v8 : *v8;
          if (!memcmp(v14, __dst, v10))
          {
            break;
          }
        }

        v8 += 48;
        if (v8 == v7)
        {
          goto LABEL_38;
        }
      }
    }
  }

  if (v8 == v7)
  {
    v11 = &unk_22913F0;
  }

  else
  {
    v11 = (v8 + 24);
  }

LABEL_38:
  if (v9 < 0)
  {
    operator delete(__dst[0]);
  }

  return v11;
}

void sub_3B2E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3B2E78(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *(a2 + 32) = 0u;
  *a2 = *"RoutingDataContext";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 18;
  *(a2 + 16) = 29816;
  v4 = sub_3CF234(*a1);
  sub_3B5304(v4, &v418);
  v5 = sub_3CF244(*a1);
  sub_3B5304(v5, &v416);
  v6 = sub_3CF254(*a1);
  sub_3B55AC(v6, &v414);
  v7 = sub_3CF22C(*a1);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v8 == v9)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      std::mutex::lock((v8 + 24));
      v12 = *(v8 + 184);
      v13 = *(v8 + 192);
      std::mutex::unlock((v8 + 24));
      v11 += v12;
      v10 += v13;
      v8 += 272;
    }

    while (v8 != v9);
  }

  v14 = sub_3CF23C(*a1);
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  if (v15 == v16)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      std::mutex::lock((v15 + 24));
      v19 = *(v15 + 184);
      v20 = *(v15 + 192);
      std::mutex::unlock((v15 + 24));
      v18 += v19;
      v17 += v20;
      v15 += 272;
    }

    while (v15 != v16);
  }

  v21 = sub_3CF24C(*a1);
  v404 = v17;
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  if (v22 != v23)
  {
    v406 = 0;
    v24 = 0;
    do
    {
      std::mutex::lock((v22 + 24));
      v25 = *(v22 + 184);
      v26 = *(v22 + 192);
      std::mutex::unlock((v22 + 24));
      v24 += v25;
      v406 += v26;
      v22 += 272;
    }

    while (v22 != v23);
    v411.__r_.__value_.__s.__data_[0] = 5;
    v28 = v418;
    v27 = v419;
    if (v418 != v419)
    {
      goto LABEL_15;
    }

LABEL_18:
    v30 = 0;
    v32 = 0;
    goto LABEL_33;
  }

  v406 = 0;
  v24 = 0;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v28 = v418;
  v27 = v419;
  if (v418 == v419)
  {
    goto LABEL_18;
  }

LABEL_15:
  v29 = v27 - v28 - 24;
  if (v29 > 0xBF)
  {
    v33 = v29 / 0x18 + 1;
    v34 = v33 & 7;
    if ((v33 & 7) == 0)
    {
      v34 = 8;
    }

    v35 = v33 - v34;
    v31 = &v28[24 * v35];
    v36 = (v28 + 104);
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v39 = v36 - 12;
      v40 = vld3q_f64(v39);
      v41 = v36 - 6;
      v42 = vld3q_f64(v41);
      v43 = v36 + 24;
      v45 = vld3q_f64(v36);
      v44 = v36 + 6;
      v46 = vld3q_f64(v44);
      v37 = vaddq_s32(v37, vuzp1q_s32(v40, v42));
      v38 = vaddq_s32(v38, vuzp1q_s32(v45, v46));
      v36 = v43;
      v35 -= 8;
    }

    while (v35);
    v30 = vaddvq_s32(vaddq_s32(v38, v37));
  }

  else
  {
    v30 = 0;
    v31 = v28;
  }

  do
  {
    v30 += *(v31 + 2);
    v31 += 24;
  }

  while (v31 != v27);
  if (v29 >= 0xC0)
  {
    v47 = v29 / 0x18 + 1;
    v48 = v47 & 7;
    if ((v47 & 7) == 0)
    {
      v48 = 8;
    }

    v49 = v47 - v48;
    v50 = &v28[24 * v49];
    v51 = (v28 + 112);
    v52 = 0uLL;
    v53 = 0uLL;
    do
    {
      v54 = v51 - 12;
      v55 = vld3q_f64(v54);
      v56 = v51 - 6;
      v57 = vld3q_f64(v56);
      v58 = v51 + 24;
      v60 = vld3q_f64(v51);
      v59 = v51 + 6;
      v61 = vld3q_f64(v59);
      v52 = vaddq_s32(v52, vuzp1q_s32(v55, v57));
      v53 = vaddq_s32(v53, vuzp1q_s32(v60, v61));
      v51 = v58;
      v49 -= 8;
    }

    while (v49);
    v32 = vaddvq_s32(vaddq_s32(v53, v52));
    v28 = v50;
  }

  else
  {
    v32 = 0;
  }

  do
  {
    v32 += *(v28 + 4);
    v28 += 24;
  }

  while (v28 != v27);
LABEL_33:
  if (v32 + v30)
  {
    v412[0] = vcvtad_u64_f64(v30 * 1000.0 / (v32 + v30));
    v62 = v3[4];
    if (v62 < v3[5])
    {
LABEL_35:
      sub_3B8F10(v62, "CyclingShortcutCache.Hitrate", &v411, v412);
      v63 = v62 + 48;
      goto LABEL_38;
    }
  }

  else
  {
    v412[0] = &stru_3D8 + 16;
    v62 = v3[4];
    if (v62 < v3[5])
    {
      goto LABEL_35;
    }
  }

  v63 = sub_3B8D5C(v3 + 3, "CyclingShortcutCache.Hitrate", &v411, v412);
LABEL_38:
  v3[4] = v63;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v64 = sub_3CF234(*a1);
  v66 = *(v64 + 16);
  v65 = *(v64 + 24);
  if (v66 == v65)
  {
    v68 = 0;
  }

  else
  {
    v67 = v65 - v66 - 272;
    if (v67 >= 0x110)
    {
      v70 = 0;
      v71 = 0;
      v72 = v67 / 0x110 + 1;
      v69 = v66 + 272 * (v72 & 0x1FFFFFFFFFFFFFELL);
      v73 = v72 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v70 += *(v66 + 160);
        v71 += *(v66 + 432);
        v66 += 544;
        v73 -= 2;
      }

      while (v73);
      v68 = (v71 + v70);
      if (v72 == (v72 & 0x1FFFFFFFFFFFFFELL))
      {
        goto LABEL_46;
      }
    }

    else
    {
      v68 = 0;
      v69 = *(v64 + 16);
    }

    do
    {
      v68 += *(v69 + 160);
      v69 += 272;
    }

    while (v69 != v65);
  }

LABEL_46:
  v412[0] = v68;
  v74 = v3[4];
  if (v74 >= v3[5])
  {
    v75 = sub_3B9060(v3 + 3, "CyclingShortcutCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3B9214(v3[4], "CyclingShortcutCache.CurrentSize", &v411, v412);
    v75 = v74 + 48;
  }

  v3[4] = v75;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v76 = sub_3CF234(*a1);
  v77 = v76[1];
  if (v77)
  {
    v79 = v76[2];
    v78 = v76[3];
    if (v79 == v78)
    {
      v83 = 0.0;
      goto LABEL_59;
    }

    v80 = v78 - v79 - 272;
    if (v80 >= 0x110)
    {
      v84 = 0;
      v85 = 0;
      v86 = v80 / 0x110 + 1;
      v82 = v79 + 272 * (v86 & 0x1FFFFFFFFFFFFFELL);
      v87 = v86 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v84 += *(v79 + 160);
        v85 += *(v79 + 432);
        v79 += 544;
        v87 -= 2;
      }

      while (v87);
      v81 = v85 + v84;
      if (v86 == (v86 & 0x1FFFFFFFFFFFFFELL))
      {
LABEL_58:
        v83 = v81 * 1000.0;
        if (v83 >= 4.50359963e15)
        {
LABEL_60:
          v77 = vcvtad_u64_f64(v83 / v77);
          goto LABEL_61;
        }

LABEL_59:
        v83 = (((v83 + v83) + 1) >> 1);
        goto LABEL_60;
      }
    }

    else
    {
      v81 = 0;
      v82 = v76[2];
    }

    do
    {
      v81 += *(v82 + 160);
      v82 += 272;
    }

    while (v82 != v78);
    goto LABEL_58;
  }

LABEL_61:
  v412[0] = v77;
  v88 = v3[4];
  if (v88 >= v3[5])
  {
    v89 = sub_3B9364(v3 + 3, "CyclingShortcutCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3B9518(v3[4], "CyclingShortcutCache.CurrentSize", &v411, v412);
    v89 = v88 + 48;
  }

  v3[4] = v89;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v90 = sub_3CF234(*a1);
  v91 = *(v90 + 16);
  v92 = *(v90 + 24);
  if (v91 == v92)
  {
    v93 = 0;
  }

  else
  {
    v93 = 0;
    do
    {
      v95 = *(v91 + 200);
      if (v95)
      {
        v96 = v95[7];
        if (v96)
        {
          v94 = 0;
          do
          {
            v94 += v96[2];
            v96 = *v96;
          }

          while (v96);
        }

        else
        {
          v94 = 0;
        }

        v95 = (v94 + v95[2] * v95[6]);
      }

      v93 = &v93[v95];
      v91 += 272;
    }

    while (v91 != v92);
  }

  v412[0] = v93;
  v97 = v3[4];
  if (v97 >= v3[5])
  {
    v98 = sub_3B9668(v3 + 3, "CyclingShortcutCache.ArenaAllocatedSize", &v411, v412);
    v3[4] = v98;
    v411.__r_.__value_.__s.__data_[0] = 5;
    v100 = v416;
    v99 = v417;
    if (v416 != v417)
    {
      goto LABEL_77;
    }

LABEL_80:
    v102 = 0;
    v104 = 0;
    goto LABEL_95;
  }

  sub_3B981C(v3[4], "CyclingShortcutCache.ArenaAllocatedSize", &v411, v412);
  v98 = v97 + 48;
  v3[4] = v98;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v100 = v416;
  v99 = v417;
  if (v416 == v417)
  {
    goto LABEL_80;
  }

LABEL_77:
  v101 = v99 - v100 - 24;
  if (v101 > 0xBF)
  {
    v105 = v101 / 0x18 + 1;
    v106 = v105 & 7;
    if ((v105 & 7) == 0)
    {
      v106 = 8;
    }

    v107 = v105 - v106;
    v103 = &v100[24 * v107];
    v108 = (v100 + 104);
    v109 = 0uLL;
    v110 = 0uLL;
    do
    {
      v111 = v108 - 12;
      v112 = vld3q_f64(v111);
      v113 = v108 - 6;
      v114 = vld3q_f64(v113);
      v115 = v108 + 24;
      v117 = vld3q_f64(v108);
      v116 = v108 + 6;
      v118 = vld3q_f64(v116);
      v109 = vaddq_s32(v109, vuzp1q_s32(v112, v114));
      v110 = vaddq_s32(v110, vuzp1q_s32(v117, v118));
      v108 = v115;
      v107 -= 8;
    }

    while (v107);
    v102 = vaddvq_s32(vaddq_s32(v110, v109));
  }

  else
  {
    v102 = 0;
    v103 = v100;
  }

  do
  {
    v102 += *(v103 + 2);
    v103 += 24;
  }

  while (v103 != v99);
  if (v101 >= 0xC0)
  {
    v119 = v101 / 0x18 + 1;
    v120 = v119 & 7;
    if ((v119 & 7) == 0)
    {
      v120 = 8;
    }

    v121 = v119 - v120;
    v122 = &v100[24 * v121];
    v123 = (v100 + 112);
    v124 = 0uLL;
    v125 = 0uLL;
    do
    {
      v126 = v123 - 12;
      v127 = vld3q_f64(v126);
      v128 = v123 - 6;
      v129 = vld3q_f64(v128);
      v130 = v123 + 24;
      v132 = vld3q_f64(v123);
      v131 = v123 + 6;
      v133 = vld3q_f64(v131);
      v124 = vaddq_s32(v124, vuzp1q_s32(v127, v129));
      v125 = vaddq_s32(v125, vuzp1q_s32(v132, v133));
      v123 = v130;
      v121 -= 8;
    }

    while (v121);
    v104 = vaddvq_s32(vaddq_s32(v125, v124));
    v100 = v122;
  }

  else
  {
    v104 = 0;
  }

  do
  {
    v104 += *(v100 + 4);
    v100 += 24;
  }

  while (v100 != v99);
LABEL_95:
  if (v104 + v102)
  {
    v412[0] = vcvtad_u64_f64(v102 * 1000.0 / (v104 + v102));
    if (v98 < v3[5])
    {
LABEL_97:
      sub_3B8F10(v98, "DrivingShortcutCache.Hitrate", &v411, v412);
      v134 = v98 + 48;
      goto LABEL_100;
    }
  }

  else
  {
    v412[0] = &stru_3D8 + 16;
    if (v98 < v3[5])
    {
      goto LABEL_97;
    }
  }

  v134 = sub_3B8D5C(v3 + 3, "DrivingShortcutCache.Hitrate", &v411, v412);
LABEL_100:
  v3[4] = v134;
  sub_3AEC9C(a1);
  v135 = a1[68];
  if (!v135)
  {
    v135 = sub_3CED9C(*a1);
  }

  v136 = sub_681D54(v135);
  v137 = sub_681D5C(v135);
  v405 = v3;
  while (v136 != v137)
  {
    if ((v136[44] & 1) == 0 && (*(v136 + 177) & 1) == 0 && !v136[286] && !v136[287] && !*(v136 + 144))
    {
      goto LABEL_107;
    }

    if (*(v136 + 31) >= 0)
    {
      v144 = *(v136 + 31);
    }

    else
    {
      v144 = *(v136 + 2);
    }

    if (v144 + 21 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v144 + 21 >= 0x17)
    {
      operator new();
    }

    HIDWORD(v411.__r_.__value_.__r.__words[2]) = 0;
    *(&v411.__r_.__value_.__s + 23) = v144 + 21;
    qmemcpy(&v411, "DrivingShortcutCache.", 21);
    if (v144)
    {
      if (*(v136 + 31) >= 0)
      {
        v145 = v136 + 2;
      }

      else
      {
        v145 = *(v136 + 1);
      }

      memmove(&v411.__r_.__value_.__r.__words[2] + 5, v145, v144);
    }

    *(&v411.__r_.__value_.__r.__words[2] + v144 + 5) = 0;
    v3 = v405;
    v146 = std::string::append(&v411, ".Hitrate", 8uLL);
    v147 = *&v146->__r_.__value_.__l.__data_;
    v413 = v146->__r_.__value_.__r.__words[2];
    *v412 = v147;
    v146->__r_.__value_.__l.__size_ = 0;
    v146->__r_.__value_.__r.__words[2] = 0;
    v146->__r_.__value_.__r.__words[0] = 0;
    v410 = 5;
    v148 = sub_3CF244(*a1);
    sub_3B5304(v148, &__p);
    v149 = *v136;
    if (0xAAAAAAAAAAAAAAABLL * ((v408 - __p) >> 3) <= v149)
    {
      v153 = 0;
      v409 = 0;
      v154 = v405[4];
      if (v154 >= v405[5])
      {
        goto LABEL_132;
      }
    }

    else
    {
      v150 = __p + 24 * v149;
      v151 = *(v150 + 1);
      v152 = *(v150 + 2) + v151;
      if (v152)
      {
        v153 = vcvtad_u64_f64(v151 * 1000.0 / v152);
        v409 = v153;
        v154 = v405[4];
        if (v154 >= v405[5])
        {
          goto LABEL_132;
        }
      }

      else
      {
        v153 = 1000;
        v409 = 1000;
        v154 = v405[4];
        if (v154 >= v405[5])
        {
LABEL_132:
          v405[4] = sub_3B996C(v405 + 3, v412, &v410, &v409);
          v157 = __p;
          if (!__p)
          {
            goto LABEL_134;
          }

LABEL_133:
          v408 = v157;
          operator delete(v157);
          goto LABEL_134;
        }
      }
    }

    v155 = v410;
    if (SHIBYTE(v413) < 0)
    {
      sub_325C(v154, v412[0], v412[1]);
    }

    else
    {
      v156 = *v412;
      *(v154 + 16) = v413;
      *v154 = v156;
    }

    *(v154 + 24) = v155;
    *(v154 + 32) = v153;
    *(v154 + 40) = 1;
    v3 = v405;
    v405[4] = v154 + 48;
    v157 = __p;
    if (__p)
    {
      goto LABEL_133;
    }

LABEL_134:
    if (SHIBYTE(v413) < 0)
    {
      operator delete(v412[0]);
      if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_138:
        operator delete(v411.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v411.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_138;
    }

LABEL_107:
    v136 += 340;
  }

  v411.__r_.__value_.__s.__data_[0] = 2;
  v138 = sub_3CF244(*a1);
  v140 = *(v138 + 16);
  v139 = *(v138 + 24);
  if (v140 == v139)
  {
    v142 = 0;
  }

  else
  {
    v141 = v139 - v140 - 272;
    if (v141 >= 0x110)
    {
      v158 = 0;
      v159 = 0;
      v160 = v141 / 0x110 + 1;
      v143 = v140 + 272 * (v160 & 0x1FFFFFFFFFFFFFELL);
      v161 = v160 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v158 += *(v140 + 160);
        v159 += *(v140 + 432);
        v140 += 544;
        v161 -= 2;
      }

      while (v161);
      v142 = (v159 + v158);
      if (v160 == (v160 & 0x1FFFFFFFFFFFFFELL))
      {
        goto LABEL_147;
      }
    }

    else
    {
      v142 = 0;
      v143 = *(v138 + 16);
    }

    do
    {
      v142 += *(v143 + 160);
      v143 += 272;
    }

    while (v143 != v139);
  }

LABEL_147:
  v412[0] = v142;
  v162 = v3[4];
  if (v162 >= v3[5])
  {
    v163 = sub_3B9060(v3 + 3, "DrivingShortcutCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3B9214(v3[4], "DrivingShortcutCache.CurrentSize", &v411, v412);
    v163 = v162 + 48;
  }

  v3[4] = v163;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v164 = sub_3CF244(*a1);
  v165 = v164[1];
  if (v165)
  {
    v167 = v164[2];
    v166 = v164[3];
    if (v167 == v166)
    {
      v171 = 0.0;
      goto LABEL_160;
    }

    v168 = v166 - v167 - 272;
    if (v168 >= 0x110)
    {
      v172 = 0;
      v173 = 0;
      v174 = v168 / 0x110 + 1;
      v170 = v167 + 272 * (v174 & 0x1FFFFFFFFFFFFFELL);
      v175 = v174 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v172 += *(v167 + 160);
        v173 += *(v167 + 432);
        v167 += 544;
        v175 -= 2;
      }

      while (v175);
      v169 = v173 + v172;
      if (v174 == (v174 & 0x1FFFFFFFFFFFFFELL))
      {
LABEL_159:
        v171 = v169 * 1000.0;
        if (v171 >= 4.50359963e15)
        {
LABEL_161:
          v165 = vcvtad_u64_f64(v171 / v165);
          goto LABEL_162;
        }

LABEL_160:
        v171 = (((v171 + v171) + 1) >> 1);
        goto LABEL_161;
      }
    }

    else
    {
      v169 = 0;
      v170 = v164[2];
    }

    do
    {
      v169 += *(v170 + 160);
      v170 += 272;
    }

    while (v170 != v166);
    goto LABEL_159;
  }

LABEL_162:
  v412[0] = v165;
  v176 = v3[4];
  if (v176 >= v3[5])
  {
    v177 = sub_3B9364(v3 + 3, "DrivingShortcutCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3B9518(v3[4], "DrivingShortcutCache.CurrentSize", &v411, v412);
    v177 = v176 + 48;
  }

  v3[4] = v177;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v178 = sub_3CF244(*a1);
  v179 = *(v178 + 16);
  v180 = *(v178 + 24);
  if (v179 == v180)
  {
    v181 = 0;
  }

  else
  {
    v181 = 0;
    do
    {
      v183 = *(v179 + 200);
      if (v183)
      {
        v184 = v183[7];
        if (v184)
        {
          v182 = 0;
          do
          {
            v182 += v184[2];
            v184 = *v184;
          }

          while (v184);
        }

        else
        {
          v182 = 0;
        }

        v183 = (v182 + v183[2] * v183[6]);
      }

      v181 = &v181[v183];
      v179 += 272;
    }

    while (v179 != v180);
  }

  v412[0] = v181;
  v185 = v3[4];
  if (v185 >= v3[5])
  {
    v186 = sub_3B9668(v3 + 3, "DrivingShortcutCache.ArenaAllocatedSize", &v411, v412);
    v3[4] = v186;
    v411.__r_.__value_.__s.__data_[0] = 5;
    v188 = v414;
    v187 = v415;
    if (v414 != v415)
    {
      goto LABEL_178;
    }

LABEL_181:
    v190 = 0;
    v192 = 0;
    goto LABEL_196;
  }

  sub_3B981C(v3[4], "DrivingShortcutCache.ArenaAllocatedSize", &v411, v412);
  v186 = v185 + 48;
  v3[4] = v186;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v188 = v414;
  v187 = v415;
  if (v414 == v415)
  {
    goto LABEL_181;
  }

LABEL_178:
  v189 = v187 - v188 - 24;
  if (v189 > 0xBF)
  {
    v193 = v189 / 0x18 + 1;
    v194 = v193 & 7;
    if ((v193 & 7) == 0)
    {
      v194 = 8;
    }

    v195 = v193 - v194;
    v191 = &v188[24 * v195];
    v196 = (v188 + 104);
    v197 = 0uLL;
    v198 = 0uLL;
    do
    {
      v199 = v196 - 12;
      v200 = vld3q_f64(v199);
      v201 = v196 - 6;
      v202 = vld3q_f64(v201);
      v203 = v196 + 24;
      v205 = vld3q_f64(v196);
      v204 = v196 + 6;
      v206 = vld3q_f64(v204);
      v197 = vaddq_s32(v197, vuzp1q_s32(v200, v202));
      v198 = vaddq_s32(v198, vuzp1q_s32(v205, v206));
      v196 = v203;
      v195 -= 8;
    }

    while (v195);
    v190 = vaddvq_s32(vaddq_s32(v198, v197));
  }

  else
  {
    v190 = 0;
    v191 = v188;
  }

  do
  {
    v190 += *(v191 + 2);
    v191 += 24;
  }

  while (v191 != v187);
  if (v189 >= 0xC0)
  {
    v207 = v189 / 0x18 + 1;
    v208 = v207 & 7;
    if ((v207 & 7) == 0)
    {
      v208 = 8;
    }

    v209 = v207 - v208;
    v210 = &v188[24 * v209];
    v211 = (v188 + 112);
    v212 = 0uLL;
    v213 = 0uLL;
    do
    {
      v214 = v211 - 12;
      v215 = vld3q_f64(v214);
      v216 = v211 - 6;
      v217 = vld3q_f64(v216);
      v218 = v211 + 24;
      v220 = vld3q_f64(v211);
      v219 = v211 + 6;
      v221 = vld3q_f64(v219);
      v212 = vaddq_s32(v212, vuzp1q_s32(v215, v217));
      v213 = vaddq_s32(v213, vuzp1q_s32(v220, v221));
      v211 = v218;
      v209 -= 8;
    }

    while (v209);
    v192 = vaddvq_s32(vaddq_s32(v213, v212));
    v188 = v210;
  }

  else
  {
    v192 = 0;
  }

  do
  {
    v192 += *(v188 + 4);
    v188 += 24;
  }

  while (v188 != v187);
LABEL_196:
  if (v192 + v190)
  {
    v412[0] = vcvtad_u64_f64(v190 * 1000.0 / (v192 + v190));
    if (v186 < v3[5])
    {
LABEL_198:
      sub_3B8F10(v186, "WalkingShortcutCache.Hitrate", &v411, v412);
      v222 = v186 + 48;
      goto LABEL_201;
    }
  }

  else
  {
    v412[0] = &stru_3D8 + 16;
    if (v186 < v3[5])
    {
      goto LABEL_198;
    }
  }

  v222 = sub_3B8D5C(v3 + 3, "WalkingShortcutCache.Hitrate", &v411, v412);
LABEL_201:
  v3[4] = v222;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v223 = sub_3CF254(*a1);
  v225 = *(v223 + 16);
  v224 = *(v223 + 24);
  if (v225 == v224)
  {
    v227 = 0;
  }

  else
  {
    v226 = v224 - v225 - 272;
    if (v226 >= 0x110)
    {
      v229 = 0;
      v230 = 0;
      v231 = v226 / 0x110 + 1;
      v228 = v225 + 272 * (v231 & 0x1FFFFFFFFFFFFFELL);
      v232 = v231 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v229 += *(v225 + 160);
        v230 += *(v225 + 432);
        v225 += 544;
        v232 -= 2;
      }

      while (v232);
      v227 = (v230 + v229);
      if (v231 == (v231 & 0x1FFFFFFFFFFFFFELL))
      {
        goto LABEL_209;
      }
    }

    else
    {
      v227 = 0;
      v228 = *(v223 + 16);
    }

    do
    {
      v227 += *(v228 + 160);
      v228 += 272;
    }

    while (v228 != v224);
  }

LABEL_209:
  v412[0] = v227;
  v233 = v3[4];
  if (v233 >= v3[5])
  {
    v234 = sub_3B9060(v3 + 3, "WalkingShortcutCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3B9214(v3[4], "WalkingShortcutCache.CurrentSize", &v411, v412);
    v234 = v233 + 48;
  }

  v3[4] = v234;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v235 = sub_3CF254(*a1);
  v236 = v235[1];
  if (v236)
  {
    v238 = v235[2];
    v237 = v235[3];
    if (v238 == v237)
    {
      v242 = 0.0;
      goto LABEL_222;
    }

    v239 = v237 - v238 - 272;
    if (v239 >= 0x110)
    {
      v243 = 0;
      v244 = 0;
      v245 = v239 / 0x110 + 1;
      v241 = v238 + 272 * (v245 & 0x1FFFFFFFFFFFFFELL);
      v246 = v245 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v243 += *(v238 + 160);
        v244 += *(v238 + 432);
        v238 += 544;
        v246 -= 2;
      }

      while (v246);
      v240 = v244 + v243;
      if (v245 == (v245 & 0x1FFFFFFFFFFFFFELL))
      {
LABEL_221:
        v242 = v240 * 1000.0;
        if (v242 >= 4.50359963e15)
        {
LABEL_223:
          v236 = vcvtad_u64_f64(v242 / v236);
          goto LABEL_224;
        }

LABEL_222:
        v242 = (((v242 + v242) + 1) >> 1);
        goto LABEL_223;
      }
    }

    else
    {
      v240 = 0;
      v241 = v235[2];
    }

    do
    {
      v240 += *(v241 + 160);
      v241 += 272;
    }

    while (v241 != v237);
    goto LABEL_221;
  }

LABEL_224:
  v412[0] = v236;
  v247 = v3[4];
  if (v247 >= v3[5])
  {
    v248 = sub_3B9364(v3 + 3, "WalkingShortcutCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3B9518(v3[4], "WalkingShortcutCache.CurrentSize", &v411, v412);
    v248 = v247 + 48;
  }

  v3[4] = v248;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v249 = sub_3CF254(*a1);
  v250 = *(v249 + 16);
  v251 = *(v249 + 24);
  if (v250 == v251)
  {
    v252 = 0;
  }

  else
  {
    v252 = 0;
    do
    {
      v254 = *(v250 + 200);
      if (v254)
      {
        v255 = v254[7];
        if (v255)
        {
          v253 = 0;
          do
          {
            v253 += v255[2];
            v255 = *v255;
          }

          while (v255);
        }

        else
        {
          v253 = 0;
        }

        v254 = (v253 + v254[2] * v254[6]);
      }

      v252 = &v252[v254];
      v250 += 272;
    }

    while (v250 != v251);
  }

  v412[0] = v252;
  v256 = v3[4];
  if (v256 < v3[5])
  {
    sub_3B981C(v3[4], "WalkingShortcutCache.ArenaAllocatedSize", &v411, v412);
    v257 = v256 + 48;
    v3[4] = v257;
    v411.__r_.__value_.__s.__data_[0] = 5;
    v258 = v11 + v10;
    if (v11 + v10)
    {
      goto LABEL_240;
    }

LABEL_243:
    v412[0] = &stru_3D8 + 16;
    if (v257 < v3[5])
    {
      goto LABEL_241;
    }

    goto LABEL_244;
  }

  v257 = sub_3B9668(v3 + 3, "WalkingShortcutCache.ArenaAllocatedSize", &v411, v412);
  v3[4] = v257;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v258 = v11 + v10;
  if (!(v11 + v10))
  {
    goto LABEL_243;
  }

LABEL_240:
  v412[0] = vcvtad_u64_f64(v11 * 1000.0 / v258);
  if (v257 < v3[5])
  {
LABEL_241:
    sub_3B9D04(v257, "CyclingUnwindingCache.Hitrate", &v411, v412);
    v259 = v257 + 48;
    goto LABEL_245;
  }

LABEL_244:
  v259 = sub_3B9B50(v3 + 3, "CyclingUnwindingCache.Hitrate", &v411, v412);
LABEL_245:
  v3[4] = v259;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v260 = sub_3CF22C(*a1);
  v262 = *(v260 + 16);
  v261 = *(v260 + 24);
  if (v262 == v261)
  {
    v264 = 0;
  }

  else
  {
    v263 = v261 - v262 - 272;
    if (v263 >= 0x110)
    {
      v266 = 0;
      v267 = 0;
      v268 = v263 / 0x110 + 1;
      v265 = v262 + 272 * (v268 & 0x1FFFFFFFFFFFFFELL);
      v269 = v268 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v266 += *(v262 + 160);
        v267 += *(v262 + 432);
        v262 += 544;
        v269 -= 2;
      }

      while (v269);
      v264 = (v267 + v266);
      if (v268 == (v268 & 0x1FFFFFFFFFFFFFELL))
      {
        goto LABEL_253;
      }
    }

    else
    {
      v264 = 0;
      v265 = *(v260 + 16);
    }

    do
    {
      v264 += *(v265 + 160);
      v265 += 272;
    }

    while (v265 != v261);
  }

LABEL_253:
  v412[0] = v264;
  v270 = v3[4];
  if (v270 >= v3[5])
  {
    v271 = sub_3B9E54(v3 + 3, "CyclingUnwindingCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3BA008(v3[4], "CyclingUnwindingCache.CurrentSize", &v411, v412);
    v271 = v270 + 48;
  }

  v3[4] = v271;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v272 = sub_3CF22C(*a1);
  v273 = v272[1];
  if (v273)
  {
    v275 = v272[2];
    v274 = v272[3];
    if (v275 == v274)
    {
      v279 = 0.0;
      goto LABEL_266;
    }

    v276 = v274 - v275 - 272;
    if (v276 >= 0x110)
    {
      v280 = 0;
      v281 = 0;
      v282 = v276 / 0x110 + 1;
      v278 = v275 + 272 * (v282 & 0x1FFFFFFFFFFFFFELL);
      v283 = v282 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v280 += *(v275 + 160);
        v281 += *(v275 + 432);
        v275 += 544;
        v283 -= 2;
      }

      while (v283);
      v277 = v281 + v280;
      if (v282 == (v282 & 0x1FFFFFFFFFFFFFELL))
      {
LABEL_265:
        v279 = v277 * 1000.0;
        if (v279 >= 4.50359963e15)
        {
LABEL_267:
          v273 = vcvtad_u64_f64(v279 / v273);
          goto LABEL_268;
        }

LABEL_266:
        v279 = (((v279 + v279) + 1) >> 1);
        goto LABEL_267;
      }
    }

    else
    {
      v277 = 0;
      v278 = v272[2];
    }

    do
    {
      v277 += *(v278 + 160);
      v278 += 272;
    }

    while (v278 != v274);
    goto LABEL_265;
  }

LABEL_268:
  v412[0] = v273;
  v284 = v3[4];
  if (v284 >= v3[5])
  {
    v285 = sub_3BA158(v3 + 3, "CyclingUnwindingCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3BA30C(v3[4], "CyclingUnwindingCache.CurrentSize", &v411, v412);
    v285 = v284 + 48;
  }

  v3[4] = v285;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v286 = sub_3CF22C(*a1);
  v287 = *(v286 + 16);
  v288 = *(v286 + 24);
  if (v287 == v288)
  {
    v289 = 0;
  }

  else
  {
    v289 = 0;
    do
    {
      v291 = *(v287 + 200);
      if (v291)
      {
        v292 = v291[7];
        if (v292)
        {
          v290 = 0;
          do
          {
            v290 += v292[2];
            v292 = *v292;
          }

          while (v292);
        }

        else
        {
          v290 = 0;
        }

        v291 = (v290 + v291[2] * v291[6]);
      }

      v289 = &v289[v291];
      v287 += 272;
    }

    while (v287 != v288);
  }

  v412[0] = v289;
  v293 = v3[4];
  if (v293 < v3[5])
  {
    sub_3BA610(v3[4], "CyclingUnwindingCache.ArenaAllocatedSize", &v411, v412);
    v294 = v293 + 48;
    v3[4] = v294;
    v411.__r_.__value_.__s.__data_[0] = 5;
    v295 = v18 + v404;
    if (v18 + v404)
    {
      goto LABEL_284;
    }

LABEL_287:
    v412[0] = &stru_3D8 + 16;
    if (v294 < v3[5])
    {
      goto LABEL_285;
    }

    goto LABEL_288;
  }

  v294 = sub_3BA45C(v3 + 3, "CyclingUnwindingCache.ArenaAllocatedSize", &v411, v412);
  v3[4] = v294;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v295 = v18 + v404;
  if (!(v18 + v404))
  {
    goto LABEL_287;
  }

LABEL_284:
  v412[0] = vcvtad_u64_f64(v18 * 1000.0 / v295);
  if (v294 < v3[5])
  {
LABEL_285:
    sub_3B9D04(v294, "DrivingUnwindingCache.Hitrate", &v411, v412);
    v296 = v294 + 48;
    goto LABEL_289;
  }

LABEL_288:
  v296 = sub_3B9B50(v3 + 3, "DrivingUnwindingCache.Hitrate", &v411, v412);
LABEL_289:
  v3[4] = v296;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v297 = sub_3CF23C(*a1);
  v299 = *(v297 + 16);
  v298 = *(v297 + 24);
  if (v299 == v298)
  {
    v301 = 0;
  }

  else
  {
    v300 = v298 - v299 - 272;
    if (v300 >= 0x110)
    {
      v303 = 0;
      v304 = 0;
      v305 = v300 / 0x110 + 1;
      v302 = v299 + 272 * (v305 & 0x1FFFFFFFFFFFFFELL);
      v306 = v305 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v303 += *(v299 + 160);
        v304 += *(v299 + 432);
        v299 += 544;
        v306 -= 2;
      }

      while (v306);
      v301 = (v304 + v303);
      if (v305 == (v305 & 0x1FFFFFFFFFFFFFELL))
      {
        goto LABEL_297;
      }
    }

    else
    {
      v301 = 0;
      v302 = *(v297 + 16);
    }

    do
    {
      v301 += *(v302 + 160);
      v302 += 272;
    }

    while (v302 != v298);
  }

LABEL_297:
  v412[0] = v301;
  v307 = v3[4];
  if (v307 >= v3[5])
  {
    v308 = sub_3B9E54(v3 + 3, "DrivingUnwindingCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3BA008(v3[4], "DrivingUnwindingCache.CurrentSize", &v411, v412);
    v308 = v307 + 48;
  }

  v3[4] = v308;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v309 = sub_3CF23C(*a1);
  v310 = v309[1];
  if (v310)
  {
    v312 = v309[2];
    v311 = v309[3];
    if (v312 == v311)
    {
      v316 = 0.0;
      goto LABEL_310;
    }

    v313 = v311 - v312 - 272;
    if (v313 >= 0x110)
    {
      v317 = 0;
      v318 = 0;
      v319 = v313 / 0x110 + 1;
      v315 = v312 + 272 * (v319 & 0x1FFFFFFFFFFFFFELL);
      v320 = v319 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v317 += *(v312 + 160);
        v318 += *(v312 + 432);
        v312 += 544;
        v320 -= 2;
      }

      while (v320);
      v314 = v318 + v317;
      if (v319 == (v319 & 0x1FFFFFFFFFFFFFELL))
      {
LABEL_309:
        v316 = v314 * 1000.0;
        if (v316 >= 4.50359963e15)
        {
LABEL_311:
          v310 = vcvtad_u64_f64(v316 / v310);
          goto LABEL_312;
        }

LABEL_310:
        v316 = (((v316 + v316) + 1) >> 1);
        goto LABEL_311;
      }
    }

    else
    {
      v314 = 0;
      v315 = v309[2];
    }

    do
    {
      v314 += *(v315 + 160);
      v315 += 272;
    }

    while (v315 != v311);
    goto LABEL_309;
  }

LABEL_312:
  v412[0] = v310;
  v321 = v3[4];
  if (v321 >= v3[5])
  {
    v322 = sub_3BA158(v3 + 3, "DrivingUnwindingCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3BA30C(v3[4], "DrivingUnwindingCache.CurrentSize", &v411, v412);
    v322 = v321 + 48;
  }

  v3[4] = v322;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v323 = sub_3CF23C(*a1);
  v324 = *(v323 + 16);
  v325 = *(v323 + 24);
  if (v324 == v325)
  {
    v326 = 0;
  }

  else
  {
    v326 = 0;
    do
    {
      v328 = *(v324 + 200);
      if (v328)
      {
        v329 = v328[7];
        if (v329)
        {
          v327 = 0;
          do
          {
            v327 += v329[2];
            v329 = *v329;
          }

          while (v329);
        }

        else
        {
          v327 = 0;
        }

        v328 = (v327 + v328[2] * v328[6]);
      }

      v326 = &v326[v328];
      v324 += 272;
    }

    while (v324 != v325);
  }

  v412[0] = v326;
  v330 = v3[4];
  if (v330 < v3[5])
  {
    sub_3BA610(v3[4], "DrivingUnwindingCache.ArenaAllocatedSize", &v411, v412);
    v331 = v330 + 48;
    v3[4] = v331;
    v411.__r_.__value_.__s.__data_[0] = 5;
    v332 = v24 + v406;
    if (v24 + v406)
    {
      goto LABEL_328;
    }

LABEL_331:
    v412[0] = &stru_3D8 + 16;
    if (v331 < v3[5])
    {
      goto LABEL_329;
    }

    goto LABEL_332;
  }

  v331 = sub_3BA45C(v3 + 3, "DrivingUnwindingCache.ArenaAllocatedSize", &v411, v412);
  v3[4] = v331;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v332 = v24 + v406;
  if (!(v24 + v406))
  {
    goto LABEL_331;
  }

LABEL_328:
  v412[0] = vcvtad_u64_f64(v24 * 1000.0 / v332);
  if (v331 < v3[5])
  {
LABEL_329:
    sub_3B9D04(v331, "WalkingUnwindingCache.Hitrate", &v411, v412);
    v333 = v331 + 48;
    goto LABEL_333;
  }

LABEL_332:
  v333 = sub_3B9B50(v3 + 3, "WalkingUnwindingCache.Hitrate", &v411, v412);
LABEL_333:
  v3[4] = v333;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v334 = sub_3CF24C(*a1);
  v336 = *(v334 + 16);
  v335 = *(v334 + 24);
  if (v336 == v335)
  {
    v338 = 0;
  }

  else
  {
    v337 = v335 - v336 - 272;
    if (v337 >= 0x110)
    {
      v340 = 0;
      v341 = 0;
      v342 = v337 / 0x110 + 1;
      v339 = v336 + 272 * (v342 & 0x1FFFFFFFFFFFFFELL);
      v343 = v342 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v340 += *(v336 + 160);
        v341 += *(v336 + 432);
        v336 += 544;
        v343 -= 2;
      }

      while (v343);
      v338 = (v341 + v340);
      if (v342 == (v342 & 0x1FFFFFFFFFFFFFELL))
      {
        goto LABEL_341;
      }
    }

    else
    {
      v338 = 0;
      v339 = *(v334 + 16);
    }

    do
    {
      v338 += *(v339 + 160);
      v339 += 272;
    }

    while (v339 != v335);
  }

LABEL_341:
  v412[0] = v338;
  v344 = v3[4];
  if (v344 >= v3[5])
  {
    v345 = sub_3B9E54(v3 + 3, "WalkingUnwindingCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3BA008(v3[4], "WalkingUnwindingCache.CurrentSize", &v411, v412);
    v345 = v344 + 48;
  }

  v3[4] = v345;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v346 = sub_3CF24C(*a1);
  v347 = v346[1];
  if (v347)
  {
    v349 = v346[2];
    v348 = v346[3];
    if (v349 == v348)
    {
      v353 = 0.0;
      goto LABEL_354;
    }

    v350 = v348 - v349 - 272;
    if (v350 >= 0x110)
    {
      v354 = 0;
      v355 = 0;
      v356 = v350 / 0x110 + 1;
      v352 = v349 + 272 * (v356 & 0x1FFFFFFFFFFFFFELL);
      v357 = v356 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v354 += *(v349 + 160);
        v355 += *(v349 + 432);
        v349 += 544;
        v357 -= 2;
      }

      while (v357);
      v351 = v355 + v354;
      if (v356 == (v356 & 0x1FFFFFFFFFFFFFELL))
      {
LABEL_353:
        v353 = v351 * 1000.0;
        if (v353 >= 4.50359963e15)
        {
LABEL_355:
          v347 = vcvtad_u64_f64(v353 / v347);
          goto LABEL_356;
        }

LABEL_354:
        v353 = (((v353 + v353) + 1) >> 1);
        goto LABEL_355;
      }
    }

    else
    {
      v351 = 0;
      v352 = v346[2];
    }

    do
    {
      v351 += *(v352 + 160);
      v352 += 272;
    }

    while (v352 != v348);
    goto LABEL_353;
  }

LABEL_356:
  v412[0] = v347;
  v358 = v3[4];
  if (v358 >= v3[5])
  {
    v359 = sub_3BA158(v3 + 3, "WalkingUnwindingCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3BA30C(v3[4], "WalkingUnwindingCache.CurrentSize", &v411, v412);
    v359 = v358 + 48;
  }

  v3[4] = v359;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v360 = sub_3CF24C(*a1);
  v361 = *(v360 + 16);
  v362 = *(v360 + 24);
  if (v361 == v362)
  {
    v363 = 0;
  }

  else
  {
    v363 = 0;
    do
    {
      v365 = *(v361 + 200);
      if (v365)
      {
        v366 = v365[7];
        if (v366)
        {
          v364 = 0;
          do
          {
            v364 += v366[2];
            v366 = *v366;
          }

          while (v366);
        }

        else
        {
          v364 = 0;
        }

        v365 = (v364 + v365[2] * v365[6]);
      }

      v363 = &v363[v365];
      v361 += 272;
    }

    while (v361 != v362);
  }

  v412[0] = v363;
  v367 = v3[4];
  if (v367 >= v3[5])
  {
    v368 = sub_3BA45C(v3 + 3, "WalkingUnwindingCache.ArenaAllocatedSize", &v411, v412);
  }

  else
  {
    sub_3BA610(v3[4], "WalkingUnwindingCache.ArenaAllocatedSize", &v411, v412);
    v368 = v367 + 48;
  }

  v3[4] = v368;
  v369 = sub_3CF25C(*a1);
  v370 = *(v369 + 16);
  v371 = *(v369 + 24);
  if (v370 == v371)
  {
    v411.__r_.__value_.__s.__data_[0] = 5;
    goto LABEL_380;
  }

  v372 = 0;
  v373 = 0;
  do
  {
    std::mutex::lock((v370 + 24));
    v374 = *(v370 + 184);
    v375 = *(v370 + 192);
    std::mutex::unlock((v370 + 24));
    v372 += v374;
    v373 += v375;
    v370 += 272;
  }

  while (v370 != v371);
  v411.__r_.__value_.__s.__data_[0] = 5;
  if (!(v373 + v372))
  {
LABEL_380:
    v412[0] = &stru_3D8 + 16;
    v376 = v3[4];
    if (v376 < v3[5])
    {
      goto LABEL_378;
    }

    goto LABEL_381;
  }

  v412[0] = vcvtad_u64_f64(v372 * 1000.0 / (v373 + v372));
  v376 = v3[4];
  if (v376 < v3[5])
  {
LABEL_378:
    sub_3BA914(v376, "ManeuverCache.Hitrate", &v411, v412);
    v377 = v376 + 48;
    goto LABEL_382;
  }

LABEL_381:
  v377 = sub_3BA760(v3 + 3, "ManeuverCache.Hitrate", &v411, v412);
LABEL_382:
  v3[4] = v377;
  v411.__r_.__value_.__s.__data_[0] = 2;
  v378 = sub_3CF25C(*a1);
  v380 = *(v378 + 16);
  v379 = *(v378 + 24);
  if (v380 == v379)
  {
    v382 = 0;
  }

  else
  {
    v381 = v379 - v380 - 272;
    if (v381 >= 0x110)
    {
      v384 = 0;
      v385 = 0;
      v386 = v381 / 0x110 + 1;
      v383 = v380 + 272 * (v386 & 0x1FFFFFFFFFFFFFELL);
      v387 = v386 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v384 += *(v380 + 160);
        v385 += *(v380 + 432);
        v380 += 544;
        v387 -= 2;
      }

      while (v387);
      v382 = (v385 + v384);
      if (v386 == (v386 & 0x1FFFFFFFFFFFFFELL))
      {
        goto LABEL_390;
      }
    }

    else
    {
      v382 = 0;
      v383 = *(v378 + 16);
    }

    do
    {
      v382 += *(v383 + 160);
      v383 += 272;
    }

    while (v383 != v379);
  }

LABEL_390:
  v412[0] = v382;
  v388 = v3[4];
  if (v388 >= v3[5])
  {
    v389 = sub_3BAA64(v3 + 3, "ManeuverCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3BAC18(v3[4], "ManeuverCache.CurrentSize", &v411, v412);
    v389 = v388 + 48;
  }

  v3[4] = v389;
  v411.__r_.__value_.__s.__data_[0] = 5;
  v390 = sub_3CF25C(*a1);
  v391 = v390[1];
  if (v391)
  {
    v393 = v390[2];
    v392 = v390[3];
    if (v393 == v392)
    {
      v397 = 0.0;
      goto LABEL_403;
    }

    v394 = v392 - v393 - 272;
    if (v394 >= 0x110)
    {
      v398 = 0;
      v399 = 0;
      v400 = v394 / 0x110 + 1;
      v396 = v393 + 272 * (v400 & 0x1FFFFFFFFFFFFFELL);
      v401 = v400 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v398 += *(v393 + 160);
        v399 += *(v393 + 432);
        v393 += 544;
        v401 -= 2;
      }

      while (v401);
      v395 = v399 + v398;
      if (v400 == (v400 & 0x1FFFFFFFFFFFFFELL))
      {
LABEL_402:
        v397 = v395 * 1000.0;
        if (v397 >= 4.50359963e15)
        {
LABEL_404:
          v391 = vcvtad_u64_f64(v397 / v391);
          goto LABEL_405;
        }

LABEL_403:
        v397 = (((v397 + v397) + 1) >> 1);
        goto LABEL_404;
      }
    }

    else
    {
      v395 = 0;
      v396 = v390[2];
    }

    do
    {
      v395 += *(v396 + 160);
      v396 += 272;
    }

    while (v396 != v392);
    goto LABEL_402;
  }

LABEL_405:
  v412[0] = v391;
  v402 = v3[4];
  if (v402 >= v3[5])
  {
    v403 = sub_3BAD68(v3 + 3, "ManeuverCache.CurrentSize", &v411, v412);
  }

  else
  {
    sub_3BAF1C(v3[4], "ManeuverCache.CurrentSize", &v411, v412);
    v403 = v402 + 48;
  }

  v3[4] = v403;
  if (v414)
  {
    v415 = v414;
    operator delete(v414);
  }

  if (v416)
  {
    v417 = v416;
    operator delete(v416);
  }

  if (v418)
  {
    v419 = v418;
    operator delete(v418);
  }
}

void sub_3B5040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34)
{
  *(v35 + 32) = v34;
  if (__p)
  {
    operator delete(__p);
    v38 = *(v36 - 136);
    if (!v38)
    {
LABEL_3:
      v39 = *(v36 - 112);
      if (!v39)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v38 = *(v36 - 136);
    if (!v38)
    {
      goto LABEL_3;
    }
  }

  *(v36 - 128) = v38;
  operator delete(v38);
  v39 = *(v36 - 112);
  if (!v39)
  {
LABEL_4:
    sub_9DA0(a12);
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v36 - 104) = v39;
  operator delete(v39);
  sub_9DA0(a12);
  _Unwind_Resume(a1);
}

void sub_3B5304(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 16);
  for (i = *(a1 + 24); v2 != i; v2 += 272)
  {
    std::mutex::lock((v2 + 24));
    sub_3C0F14(&__p, (v2 + 176));
    std::mutex::unlock((v2 + 24));
    v5 = __p;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v39 - __p) >> 3);
    v7 = *a2;
    v8 = a2[1];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
    if (v6 > v9)
    {
      sub_3C0FD0(a2, v6 - v9);
      v7 = *a2;
      v8 = a2[1];
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
      v5 = __p;
    }

    if (v8 != v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v5) >> 3);
      if (v9 - 1 >= v10)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v5) >> 3);
      }

      else
      {
        v11 = v9 - 1;
      }

      if (v11 + 1 >= 0xF)
      {
        v12 = 0;
        v13 = !is_mul_ok(v11, 0x18uLL);
        v14 = 24 * v11;
        v15 = v7 + 8;
        v16 = v7 + 16;
        v17 = v7 + 8 + 24 * v11 >= v7 + 8 && v7 + 24 * v11 >= v7;
        v18 = v17 && v7 + 16 + 24 * v11 >= v16;
        if (v18 && !v13)
        {
          v12 = 0;
          v19 = v15 + v14;
          v20 = &v5->i8[v14 + 8];
          v17 = v15 >= &v5[1].u64[v14 / 8];
          v21 = v7 + v14 + 24;
          v22 = &v5[1].u64[v14 / 8 + 1];
          v24 = !v17 && &v5->u64[1] < v16 + v14;
          v26 = v16 < v22 && &v5[1] < v21;
          v27 = v5 >= v19 || v7 >= v20;
          if (v27 && (v24 & 1) == 0 && !v26)
          {
            v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
            v28 = v11 & 0xFFFFFFFFFFFFFFFELL;
            v29 = v7;
            v30 = v5;
            do
            {
              v31 = vaddq_s64(v29[2], v30[2]);
              v32 = vaddq_s64(v29[1], v30[1]);
              *v29 = vaddq_s64(*v29, *v30);
              v29[1] = v32;
              v29[2] = v31;
              v30 += 3;
              v29 += 3;
              v28 -= 2;
            }

            while (v28);
          }
        }
      }

      else
      {
        v12 = 0;
      }

      v33 = v9 - v12;
      v34 = 24 * v12;
      v35 = v10 - v12;
      v36 = v5;
      while (v35)
      {
        v37 = (v7 + v34);
        *v37 = vaddq_s64(*(v7 + v34), *(v36 + v34));
        v37[1].i64[0] = *(v7 + v34 + 16) + v36[1].i64[v34 / 8];
        v7 += 24;
        v36 = (v36 + 24);
        --v35;
        if (!--v33)
        {
          goto LABEL_4;
        }
      }
    }

    if (v5)
    {
LABEL_4:
      v39 = v5;
      operator delete(v5);
    }
  }
}

void sub_3B5544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    v13 = *v11;
    if (!*v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_3B55AC(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 16);
  for (i = *(a1 + 24); v2 != i; v2 += 272)
  {
    std::mutex::lock((v2 + 24));
    sub_3C0F14(&__p, (v2 + 176));
    std::mutex::unlock((v2 + 24));
    v5 = __p;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v39 - __p) >> 3);
    v7 = *a2;
    v8 = a2[1];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
    if (v6 > v9)
    {
      sub_3C0FD0(a2, v6 - v9);
      v7 = *a2;
      v8 = a2[1];
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
      v5 = __p;
    }

    if (v8 != v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v5) >> 3);
      if (v9 - 1 >= v10)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v5) >> 3);
      }

      else
      {
        v11 = v9 - 1;
      }

      if (v11 + 1 >= 0xF)
      {
        v12 = 0;
        v13 = !is_mul_ok(v11, 0x18uLL);
        v14 = 24 * v11;
        v15 = v7 + 8;
        v16 = v7 + 16;
        v17 = v7 + 8 + 24 * v11 >= v7 + 8 && v7 + 24 * v11 >= v7;
        v18 = v17 && v7 + 16 + 24 * v11 >= v16;
        if (v18 && !v13)
        {
          v12 = 0;
          v19 = v15 + v14;
          v20 = &v5->i8[v14 + 8];
          v17 = v15 >= &v5[1].u64[v14 / 8];
          v21 = v7 + v14 + 24;
          v22 = &v5[1].u64[v14 / 8 + 1];
          v24 = !v17 && &v5->u64[1] < v16 + v14;
          v26 = v16 < v22 && &v5[1] < v21;
          v27 = v5 >= v19 || v7 >= v20;
          if (v27 && (v24 & 1) == 0 && !v26)
          {
            v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
            v28 = v11 & 0xFFFFFFFFFFFFFFFELL;
            v29 = v7;
            v30 = v5;
            do
            {
              v31 = vaddq_s64(v29[2], v30[2]);
              v32 = vaddq_s64(v29[1], v30[1]);
              *v29 = vaddq_s64(*v29, *v30);
              v29[1] = v32;
              v29[2] = v31;
              v30 += 3;
              v29 += 3;
              v28 -= 2;
            }

            while (v28);
          }
        }
      }

      else
      {
        v12 = 0;
      }

      v33 = v9 - v12;
      v34 = 24 * v12;
      v35 = v10 - v12;
      v36 = v5;
      while (v35)
      {
        v37 = (v7 + v34);
        *v37 = vaddq_s64(*(v7 + v34), *(v36 + v34));
        v37[1].i64[0] = *(v7 + v34 + 16) + v36[1].i64[v34 / 8];
        v7 += 24;
        v36 = (v36 + 24);
        --v35;
        if (!--v33)
        {
          goto LABEL_4;
        }
      }
    }

    if (v5)
    {
LABEL_4:
      v39 = v5;
      operator delete(v5);
    }
  }
}

void sub_3B57EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    v13 = *v11;
    if (!*v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

uint64_t sub_3B5854(uint64_t a1)
{
  result = *(a1 + 840);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_3B5B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C13CC(va);
  _Unwind_Resume(a1);
}

void sub_3B5B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C13CC(va);
  _Unwind_Resume(a1);
}

void sub_3B5B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C13CC(va);
  _Unwind_Resume(a1);
}

void sub_3B5B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C13CC(va);
  _Unwind_Resume(a1);
}

void sub_3B5B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C13CC(va);
  _Unwind_Resume(a1);
}

void sub_3B5BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C13CC(va);
  _Unwind_Resume(a1);
}

void sub_3B5BBC(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1F1A8(va);
  operator delete();
}

void sub_3B5C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C13CC(va);
  _Unwind_Resume(a1);
}

void sub_3B5C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C13CC(va);
  _Unwind_Resume(a1);
}

void sub_3B5DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v26 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a15);
  if ((*(v26 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v26 - 56));
  _Unwind_Resume(exception_object);
}

void sub_3B5F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v26 - 17) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a15);
  if ((*(v26 - 17) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v26 - 40));
  _Unwind_Resume(exception_object);
}

void sub_3B60FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v26 - 17) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a15);
  if ((*(v26 - 17) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v26 - 40));
  _Unwind_Resume(exception_object);
}

void sub_3B6258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3B6360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3B6488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B64A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(result + 144))
  {
    sub_56BE4();
  }

  v3 = *(result + 152);
  *a2 = *(result + 144);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_3B67D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void *sub_3B681C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[2];
  v3 = *(v2 + 96);
  if (v3 == *(v2 + 104))
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else if (*(v3 + 23) < 0)
  {
    return sub_325C(a2, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(a2 + 16) = *(v3 + 2);
    *a2 = v4;
  }

  return result;
}

uint64_t sub_3B6860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(v1 + 121) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_3B68A0(uint64_t *a1)
{
  if (sub_3CEB38(*a1))
  {
    operator new();
  }

  return 1;
}

void sub_3B6968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_3B6984(uint64_t a1)
{
  v14 = 9;
  v12 = 0;
  strcpy(v13, "EVRouting");
  v10 = 0;
  v11 = 0;
  v1 = sub_50C6D4((a1 + 584), v13, &v10);
  v9 = 7;
  strcpy(__p, "enabled");
  v2 = sub_5F9D0(v1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v10;
  if (v10)
  {
    v4 = v11;
    v5 = v10;
    if (v11 != v10)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = v10;
    }

    v11 = v3;
    operator delete(v5);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return v2;
}

void sub_3B6A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

uint64_t sub_3B6AFC(uint64_t *a1)
{
  v2 = sub_3CEB38(*a1);
  v3 = v2;
  if (v2)
  {
    operator new();
  }

  v4 = sub_3B2C6C(a1, "disable_cycling", 0xFuLL);
  v5 = v4[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    v17 = *v6;
    v14 = __toupper(49);
    v15 = __toupper(v17);
  }

  else
  {
    if (v5 != 4 || (v7 = *v6, v8 = __toupper(116), v8 != __toupper(v7)) || (v9 = v6[1], v10 = __toupper(114), v10 != __toupper(v9)) || (v11 = v6[2], v12 = __toupper(117), v12 != __toupper(v11)))
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = v6[3];
    v14 = __toupper(101);
    v15 = __toupper(v13);
  }

  v16 = v14 == v15;
LABEL_17:
  v18 = sub_3B2C6C(a1, "disable_cycling", 0xFuLL);
  v19 = v18[23];
  if ((v19 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 1);
  }

  if (v19 == 1)
  {
    v34 = *v20;
    v30 = __toupper(48);
    v31 = __toupper(v34);
LABEL_32:
    v32 = v30 != v31;
    if (!v16)
    {
      return v32 & v3;
    }

    return 1;
  }

  if (v19 == 5)
  {
    v21 = *v20;
    v22 = __toupper(102);
    if (v22 == __toupper(v21))
    {
      v23 = v20[1];
      v24 = __toupper(97);
      if (v24 == __toupper(v23))
      {
        v25 = v20[2];
        v26 = __toupper(108);
        if (v26 == __toupper(v25))
        {
          v27 = v20[3];
          v28 = __toupper(115);
          if (v28 == __toupper(v27))
          {
            v29 = v20[4];
            v30 = __toupper(101);
            v31 = __toupper(v29);
            goto LABEL_32;
          }
        }
      }
    }
  }

  v32 = 1;
  if (v16)
  {
    return 1;
  }

  return v32 & v3;
}

void sub_3B6DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B6DDC(uint64_t *a1)
{
  v2 = sub_3CEB38(*a1);
  v3 = v2;
  if (v2)
  {
    operator new();
  }

  v4 = sub_3B2C6C(a1, "disable_driving", 0xFuLL);
  v5 = v4[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    v17 = *v6;
    v14 = __toupper(49);
    v15 = __toupper(v17);
  }

  else
  {
    if (v5 != 4 || (v7 = *v6, v8 = __toupper(116), v8 != __toupper(v7)) || (v9 = v6[1], v10 = __toupper(114), v10 != __toupper(v9)) || (v11 = v6[2], v12 = __toupper(117), v12 != __toupper(v11)))
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = v6[3];
    v14 = __toupper(101);
    v15 = __toupper(v13);
  }

  v16 = v14 == v15;
LABEL_17:
  v18 = sub_3B2C6C(a1, "disable_driving", 0xFuLL);
  v19 = v18[23];
  if ((v19 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 1);
  }

  if (v19 == 1)
  {
    v34 = *v20;
    v30 = __toupper(48);
    v31 = __toupper(v34);
LABEL_32:
    v32 = v30 != v31;
    if (!v16)
    {
      return v32 & v3;
    }

    return 1;
  }

  if (v19 == 5)
  {
    v21 = *v20;
    v22 = __toupper(102);
    if (v22 == __toupper(v21))
    {
      v23 = v20[1];
      v24 = __toupper(97);
      if (v24 == __toupper(v23))
      {
        v25 = v20[2];
        v26 = __toupper(108);
        if (v26 == __toupper(v25))
        {
          v27 = v20[3];
          v28 = __toupper(115);
          if (v28 == __toupper(v27))
          {
            v29 = v20[4];
            v30 = __toupper(101);
            v31 = __toupper(v29);
            goto LABEL_32;
          }
        }
      }
    }
  }

  v32 = 1;
  if (v16)
  {
    return 1;
  }

  return v32 & v3;
}

void sub_3B7090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B70BC(uint64_t *a1)
{
  v2 = sub_3CEB38(*a1);
  v3 = v2;
  if (v2)
  {
    operator new();
  }

  v4 = sub_3B2C6C(a1, "disable_transit", 0xFuLL);
  v5 = v4[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    v17 = *v6;
    v14 = __toupper(49);
    v15 = __toupper(v17);
  }

  else
  {
    if (v5 != 4 || (v7 = *v6, v8 = __toupper(116), v8 != __toupper(v7)) || (v9 = v6[1], v10 = __toupper(114), v10 != __toupper(v9)) || (v11 = v6[2], v12 = __toupper(117), v12 != __toupper(v11)))
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = v6[3];
    v14 = __toupper(101);
    v15 = __toupper(v13);
  }

  v16 = v14 == v15;
LABEL_17:
  v18 = sub_3B2C6C(a1, "disable_transit", 0xFuLL);
  v19 = v18[23];
  if ((v19 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 1);
  }

  if (v19 == 1)
  {
    v34 = *v20;
    v30 = __toupper(48);
    v31 = __toupper(v34);
LABEL_32:
    v32 = v30 != v31;
    if (!v16)
    {
      return v32 & v3;
    }

    return 1;
  }

  if (v19 == 5)
  {
    v21 = *v20;
    v22 = __toupper(102);
    if (v22 == __toupper(v21))
    {
      v23 = v20[1];
      v24 = __toupper(97);
      if (v24 == __toupper(v23))
      {
        v25 = v20[2];
        v26 = __toupper(108);
        if (v26 == __toupper(v25))
        {
          v27 = v20[3];
          v28 = __toupper(115);
          if (v28 == __toupper(v27))
          {
            v29 = v20[4];
            v30 = __toupper(101);
            v31 = __toupper(v29);
            goto LABEL_32;
          }
        }
      }
    }
  }

  v32 = 1;
  if (v16)
  {
    return 1;
  }

  return v32 & v3;
}

void sub_3B7370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B739C(uint64_t *a1)
{
  v2 = sub_3CEB38(*a1);
  v3 = v2;
  if (v2)
  {
    operator new();
  }

  v4 = sub_3B2C6C(a1, "disable_walking", 0xFuLL);
  v5 = v4[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    v17 = *v6;
    v14 = __toupper(49);
    v15 = __toupper(v17);
  }

  else
  {
    if (v5 != 4 || (v7 = *v6, v8 = __toupper(116), v8 != __toupper(v7)) || (v9 = v6[1], v10 = __toupper(114), v10 != __toupper(v9)) || (v11 = v6[2], v12 = __toupper(117), v12 != __toupper(v11)))
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = v6[3];
    v14 = __toupper(101);
    v15 = __toupper(v13);
  }

  v16 = v14 == v15;
LABEL_17:
  v18 = sub_3B2C6C(a1, "disable_walking", 0xFuLL);
  v19 = v18[23];
  if ((v19 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 1);
  }

  if (v19 == 1)
  {
    v34 = *v20;
    v30 = __toupper(48);
    v31 = __toupper(v34);
LABEL_32:
    v32 = v30 != v31;
    if (!v16)
    {
      return v32 & v3;
    }

    return 1;
  }

  if (v19 == 5)
  {
    v21 = *v20;
    v22 = __toupper(102);
    if (v22 == __toupper(v21))
    {
      v23 = v20[1];
      v24 = __toupper(97);
      if (v24 == __toupper(v23))
      {
        v25 = v20[2];
        v26 = __toupper(108);
        if (v26 == __toupper(v25))
        {
          v27 = v20[3];
          v28 = __toupper(115);
          if (v28 == __toupper(v27))
          {
            v29 = v20[4];
            v30 = __toupper(101);
            v31 = __toupper(v29);
            goto LABEL_32;
          }
        }
      }
    }
  }

  v32 = 1;
  if (v16)
  {
    return 1;
  }

  return v32 & v3;
}

void sub_3B7650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B767C(uint64_t *a1)
{
  v2 = sub_3CEB38(*a1);
  v3 = v2;
  if (v2)
  {
    operator new();
  }

  v4 = sub_3B2C6C(a1, "disable_routing_requests", 0x18uLL);
  v5 = v4[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    v17 = *v6;
    v14 = __toupper(49);
    v15 = __toupper(v17);
  }

  else
  {
    if (v5 != 4 || (v7 = *v6, v8 = __toupper(116), v8 != __toupper(v7)) || (v9 = v6[1], v10 = __toupper(114), v10 != __toupper(v9)) || (v11 = v6[2], v12 = __toupper(117), v12 != __toupper(v11)))
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = v6[3];
    v14 = __toupper(101);
    v15 = __toupper(v13);
  }

  v16 = v14 == v15;
LABEL_17:
  v18 = sub_3B2C6C(a1, "disable_routing_requests", 0x18uLL);
  v19 = v18[23];
  if ((v19 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 1);
  }

  if (v19 == 1)
  {
    v34 = *v20;
    v30 = __toupper(48);
    v31 = __toupper(v34);
LABEL_32:
    v32 = v30 != v31;
    if (!v16)
    {
      return v32 & v3;
    }

    return 1;
  }

  if (v19 == 5)
  {
    v21 = *v20;
    v22 = __toupper(102);
    if (v22 == __toupper(v21))
    {
      v23 = v20[1];
      v24 = __toupper(97);
      if (v24 == __toupper(v23))
      {
        v25 = v20[2];
        v26 = __toupper(108);
        if (v26 == __toupper(v25))
        {
          v27 = v20[3];
          v28 = __toupper(115);
          if (v28 == __toupper(v27))
          {
            v29 = v20[4];
            v30 = __toupper(101);
            v31 = __toupper(v29);
            goto LABEL_32;
          }
        }
      }
    }
  }

  v32 = 1;
  if (v16)
  {
    return 1;
  }

  return v32 & v3;
}

void sub_3B7930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B795C(uint64_t *a1)
{
  v2 = sub_3CEB38(*a1);
  v3 = v2;
  if (v2)
  {
    operator new();
  }

  v4 = sub_3B2C6C(a1, "disable_place_requests", 0x16uLL);
  v5 = v4[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    v17 = *v6;
    v14 = __toupper(49);
    v15 = __toupper(v17);
  }

  else
  {
    if (v5 != 4 || (v7 = *v6, v8 = __toupper(116), v8 != __toupper(v7)) || (v9 = v6[1], v10 = __toupper(114), v10 != __toupper(v9)) || (v11 = v6[2], v12 = __toupper(117), v12 != __toupper(v11)))
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = v6[3];
    v14 = __toupper(101);
    v15 = __toupper(v13);
  }

  v16 = v14 == v15;
LABEL_17:
  v18 = sub_3B2C6C(a1, "disable_place_requests", 0x16uLL);
  v19 = v18[23];
  if ((v19 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 1);
  }

  if (v19 == 1)
  {
    v34 = *v20;
    v30 = __toupper(48);
    v31 = __toupper(v34);
LABEL_32:
    v32 = v30 != v31;
    if (!v16)
    {
      return v32 & v3;
    }

    return 1;
  }

  if (v19 == 5)
  {
    v21 = *v20;
    v22 = __toupper(102);
    if (v22 == __toupper(v21))
    {
      v23 = v20[1];
      v24 = __toupper(97);
      if (v24 == __toupper(v23))
      {
        v25 = v20[2];
        v26 = __toupper(108);
        if (v26 == __toupper(v25))
        {
          v27 = v20[3];
          v28 = __toupper(115);
          if (v28 == __toupper(v27))
          {
            v29 = v20[4];
            v30 = __toupper(101);
            v31 = __toupper(v29);
            goto LABEL_32;
          }
        }
      }
    }
  }

  v32 = 1;
  if (v16)
  {
    return 1;
  }

  return v32 & v3;
}

void sub_3B7C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B7C3C(uint64_t *a1)
{
  v2 = sub_3CEB38(*a1);
  v3 = v2;
  if (v2)
  {
    operator new();
  }

  v4 = sub_3B2C6C(a1, "disable_transit_nearby_schedule_lookup_place_requests", 0x35uLL);
  v5 = v4[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    v17 = *v6;
    v14 = __toupper(49);
    v15 = __toupper(v17);
  }

  else
  {
    if (v5 != 4 || (v7 = *v6, v8 = __toupper(116), v8 != __toupper(v7)) || (v9 = v6[1], v10 = __toupper(114), v10 != __toupper(v9)) || (v11 = v6[2], v12 = __toupper(117), v12 != __toupper(v11)))
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = v6[3];
    v14 = __toupper(101);
    v15 = __toupper(v13);
  }

  v16 = v14 == v15;
LABEL_17:
  v18 = sub_3B2C6C(a1, "disable_transit_nearby_schedule_lookup_place_requests", 0x35uLL);
  v19 = v18[23];
  if ((v19 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 1);
  }

  if (v19 == 1)
  {
    v34 = *v20;
    v30 = __toupper(48);
    v31 = __toupper(v34);
LABEL_32:
    v32 = v30 != v31;
    if (!v16)
    {
      return v32 & v3;
    }

    return 1;
  }

  if (v19 == 5)
  {
    v21 = *v20;
    v22 = __toupper(102);
    if (v22 == __toupper(v21))
    {
      v23 = v20[1];
      v24 = __toupper(97);
      if (v24 == __toupper(v23))
      {
        v25 = v20[2];
        v26 = __toupper(108);
        if (v26 == __toupper(v25))
        {
          v27 = v20[3];
          v28 = __toupper(115);
          if (v28 == __toupper(v27))
          {
            v29 = v20[4];
            v30 = __toupper(101);
            v31 = __toupper(v29);
            goto LABEL_32;
          }
        }
      }
    }
  }

  v32 = 1;
  if (v16)
  {
    return 1;
  }

  return v32 & v3;
}