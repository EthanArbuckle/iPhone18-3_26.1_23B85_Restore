uint64_t sub_12090A0(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12090D4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v39 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v39;
      v5 = *(v39 + 24);
      *v3 = 8;
      v3[1] = v5;
      if (v5 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v5;
      if (v5 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v5 | 0x80;
    v8 = v5 >> 7;
    v3[2] = v5 >> 7;
    v3 += 3;
    if (v5 >= 0x4000)
    {
      v9 = v5 >> 7;
      do
      {
        *(v3 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v3++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v3)
  {
    v40 = a1;
    v12 = v3;
    v13 = a3;
    v14 = sub_225EB68(a3, v12);
    a3 = v13;
    v3 = v14;
    a1 = v40;
    v11 = *(v40 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v3 += 2;
      goto LABEL_17;
    }
  }

  v3[1] = v11 | 0x80;
  v15 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v16 = v11 >> 7;
    do
    {
      *(v3 - 1) = v16 | 0x80;
      v16 = v15 >> 7;
      *v3++ = v15 >> 7;
      v17 = v15 >> 14;
      v15 >>= 7;
    }

    while (v17);
  }

LABEL_17:
  if ((v4 & 4) == 0)
  {
    goto LABEL_25;
  }

  if (*a3 <= v3)
  {
    v41 = a1;
    v19 = v3;
    v20 = a3;
    v21 = sub_225EB68(a3, v19);
    a3 = v20;
    v3 = v21;
    a1 = v41;
    v18 = *(v41 + 32);
    *v3 = 24;
    v3[1] = v18;
    if (v18 <= 0x7F)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *(a1 + 32);
    *v3 = 24;
    v3[1] = v18;
    if (v18 <= 0x7F)
    {
LABEL_20:
      v3 += 2;
      goto LABEL_25;
    }
  }

  v3[1] = v18 | 0x80;
  v22 = v18 >> 7;
  v3[2] = v18 >> 7;
  v3 += 3;
  if (v18 >= 0x4000)
  {
    v23 = v18 >> 7;
    do
    {
      *(v3 - 1) = v23 | 0x80;
      v23 = v22 >> 7;
      *v3++ = v22 >> 7;
      v24 = v22 >> 14;
      v22 >>= 7;
    }

    while (v24);
  }

LABEL_25:
  if ((v4 & 8) == 0)
  {
    goto LABEL_33;
  }

  if (*a3 <= v3)
  {
    v26 = a1;
    v27 = v3;
    v28 = a3;
    v29 = sub_225EB68(a3, v27);
    a3 = v28;
    v3 = v29;
    a1 = v26;
    v25 = *(v26 + 36);
    *v3 = 32;
    v3[1] = v25;
    if (v25 <= 0x7F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v25 = *(a1 + 36);
    *v3 = 32;
    v3[1] = v25;
    if (v25 <= 0x7F)
    {
LABEL_28:
      v3 += 2;
      goto LABEL_33;
    }
  }

  v3[1] = v25 | 0x80;
  v30 = v25 >> 7;
  v3[2] = v25 >> 7;
  v3 += 3;
  if (v25 >= 0x4000)
  {
    v31 = v25 >> 7;
    do
    {
      *(v3 - 1) = v31 | 0x80;
      v31 = v30 >> 7;
      *v3++ = v30 >> 7;
      v32 = v30 >> 14;
      v30 >>= 7;
    }

    while (v32);
  }

LABEL_33:
  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v3;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  v38 = v36;
  if (*a3 - v3 < v36)
  {

    return sub_1957130(a3, v37, v36, v3);
  }

  else
  {
    memcpy(v3, v37, v36);
    return &v3[v38];
  }
}

uint64_t sub_1209418(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24);
      if (v4 < 0)
      {
        v2 = 11;
        if ((v1 & 2) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v2 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v1 & 2) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v2 = 0;
      if ((v1 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    v5 = *(a1 + 28);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v6;
LABEL_15:
    if ((v1 & 4) == 0)
    {
      if ((v1 & 8) == 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      v9 = *(a1 + 36);
      if (v9 < 0)
      {
        v2 += 11;
        v3 = *(a1 + 8);
        if ((v3 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v2 += ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
        v3 = *(a1 + 8);
        if ((v3 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_27;
    }

    v8 = *(a1 + 32);
    if (v8 < 0)
    {
      v2 += 11;
      if ((v1 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v2 += ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_17:
    v3 = *(a1 + 8);
    if ((v3 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  v2 = 0;
  v3 = *(a1 + 8);
  if ((v3 & 1) == 0)
  {
LABEL_18:
    *(a1 + 20) = v2;
    return v2;
  }

LABEL_27:
  v10 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v11 < 0)
  {
    v11 = *(v10 + 16);
  }

  v12 = v11 + v2;
  *(a1 + 20) = v12;
  return v12;
}

std::string *sub_1209564(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_12095D8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12096B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2677B58;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_12097A4(_WORD *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a3;
  v6 = sub_3F80(a3);
  v7 = sub_3F80(a2);
  v20 = sub_120B448(v6, v7);
  v8 = sub_5AAC4(v3);
  v9 = sub_5AAC4(a2);
  v19 = sub_120B330(v8, v9);
  LODWORD(a2) = sub_5AAC4(a2);
  v10 = sub_5AAC4(v3);
  LODWORD(v3) = sub_120B2AC(a2, v10);
  v12 = sub_120B2B8(&v19, v11);
  v13 = sub_120B340(v3);
  v14 = v12 * v13;
  v15 = sub_120B3F8(&v20, v13);
  v16 = 1.57079633 - atan2(v14, v15);
  v17 = fmod(v16, 6.28318531);
  if (v16 < 0.0)
  {
    v17 = v17 + 6.28318531;
  }

  result = v17 * 65536.0 / 6.28318531;
  *a1 = result;
  return result;
}

_WORD *sub_12098CC(_WORD *a1, unsigned int *a2, unsigned int *a3)
{
  *a1 = 0;
  sub_12097A4(a1, a2, a3);
  return a1;
}

uint64_t sub_12098F8(long double a1)
{
  v2 = fmod(a1, 360.0);
  if (a1 < 0.0)
  {
    v2 = v2 + 360.0;
  }

  return (v2 * 65536.0 / 360.0);
}

double sub_1209988(_WORD *a1, unsigned __int16 a2, double a3)
{
  LOWORD(a3) = *a1;
  v3 = *&a3 * 6.28318531 * 0.0000152587891 - a2 * 6.28318531 * 0.0000152587891;
  if (v3 <= 3.14159265)
  {
    if (v3 < -3.14159265)
    {
      v3 = v3 + 6.28318531;
    }
  }

  else
  {
    v3 = v3 + -6.28318531;
  }

  return fabs(fmod(v3, 6.28318531));
}

double sub_1209A0C(_WORD *a1, unsigned __int16 a2, double a3)
{
  LOWORD(a3) = *a1;
  v3 = *&a3 * 6.28318531 * 0.0000152587891 - a2 * 6.28318531 * 0.0000152587891;
  if (v3 <= 3.14159265)
  {
    if (v3 < -3.14159265)
    {
      v3 = v3 + 6.28318531;
    }
  }

  else
  {
    v3 = v3 + -6.28318531;
  }

  return fabs(fmod(v3, 6.28318531)) * 360.0 / 6.28318531;
}

double sub_1209AB0(unsigned __int16 a1)
{
  v2 = (a1 + 0x4000);
  if ((a1 >> 14) > 2u)
  {
LABEL_4:

    return sin(v2 * 6.28318531 * 0.0000152587891);
  }

  if ((v2 & 0x80000000) == 0)
  {
    LOWORD(v2) = 0x4000 - a1;
    goto LABEL_4;
  }

  if ((a1 & 0x8000) != 0)
  {
    v4 = (-16384 - a1);
  }

  else
  {
    v4 = v2 & 0x7FFF;
  }

  return sin(v4 * -6.28318531 * 0.0000152587891);
}

uint64_t sub_1209B4C(uint64_t a1)
{
  *a1 = 1;
  sub_1209E80((a1 + 4));
  sub_120979C((a1 + 16));
  sub_B6D0((a1 + 20), 0);
  sub_B6D0((a1 + 24), 9);
  *(a1 + 28) = 0;
  return a1;
}

uint64_t sub_1209BA0(uint64_t a1, uint64_t *a2, __int16 a3)
{
  *a1 = 0;
  v4 = *a2;
  *(a1 + 12) = *(a2 + 2);
  *(a1 + 4) = v4;
  *(a1 + 16) = a3;
  sub_B6D0((a1 + 20), 0);
  sub_B6D0((a1 + 24), 9);
  *(a1 + 28) = 0;
  return a1;
}

uint64_t sub_1209BF8(uint64_t a1, uint64_t *a2)
{
  *a1 = 1;
  v3 = *a2;
  *(a1 + 12) = *(a2 + 2);
  *(a1 + 4) = v3;
  sub_120979C((a1 + 16));
  sub_B6D0((a1 + 20), 0);
  sub_B6D0((a1 + 24), 9);
  *(a1 + 28) = 0;
  return a1;
}

uint64_t sub_1209C68(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 12) = *(a2 + 2);
  *(result + 4) = v2;
  return result;
}

_DWORD *sub_1209C94@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  sub_1209E80((a1 + 4));
  sub_120979C((a1 + 16));
  sub_B6D0((a1 + 20), 0);
  result = sub_B6D0((a1 + 24), 9);
  *(a1 + 28) = 0;
  return result;
}

uint64_t sub_1209CE8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 1;
  }

  if (sub_1209F18((a1 + 4), (a2 + 4)))
  {
    return 1;
  }

  if (*a1 != 1)
  {
    v6 = sub_120994C((a1 + 16), v4);
    if (vabdd_f64(v6, sub_120994C((a2 + 16), v6)) >= 1.0 || sub_1209DC0((a1 + 20), *(a2 + 20)) || sub_1209DC0((a1 + 24), *(a2 + 24)))
    {
      return 1;
    }
  }

  return 0;
}

int *sub_1209DD0(int *result, unsigned int a2)
{
  if (a2 >= 9)
  {
    v2 = 9;
  }

  else
  {
    v2 = a2;
  }

  *result = v2;
  return result;
}

_DWORD *sub_1209DE4()
{
  if ((atomic_load_explicit(&qword_27C4140, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_27C4140))
  {
    return &dword_27C4148;
  }

  sub_120B218(&dword_27C4148);
  sub_120B218(&dword_27C414C);
  dword_27C4150 = 0x7FFFFFFF;
  __cxa_guard_release(&qword_27C4140);
  return &dword_27C4148;
}

_DWORD *sub_1209E80(_DWORD *a1)
{
  v2 = sub_120B218(a1);
  sub_120B218(v2 + 1);
  a1[2] = 0x7FFFFFFF;
  return a1;
}

_DWORD *sub_1209EB8(_DWORD *result, int a2, int a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0x7FFFFFFF;
  return result;
}

BOOL sub_1209EC8(_DWORD *a1, unsigned int *a2)
{
  result = sub_120B314(a1, *a2);
  if (result)
  {
    result = sub_120B314(a1 + 1, a2[1]);
    if (result)
    {
      return a1[2] == a2[2];
    }
  }

  return result;
}

size_t sub_1209F78@<X0>(_DWORD *a1@<X0>, _BYTE *a2@<X8>, double a3@<D0>)
{
  v5 = sub_120B2B8(a1 + 1, a3);
  v6 = sub_120B3F8(a1, v5);
  snprintf(__str, 0x400uLL, "LatLng(%f, %f, %d)", v5, v6, a1[2]);
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v8] = 0;
  return result;
}

uint64_t sub_120A090(unsigned int *a1, unsigned int *a2)
{
  v4 = sub_3F80(a1);
  v5 = v4 - sub_3F80(a2);
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  v7 = sub_3F80(a1 + 1);
  v8 = v7 - sub_3F80(a2 + 1);
  if (v8 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  v10 = sub_3F80(a2 + 1);
  v11 = nullsub_1((((v10 + (v9 >> 1)) >> 16) - 0x4000));
  v12 = sub_1209AB0(v11);
  return sqrt((((40008000 * v9) >> 32) * ((40008000 * v9) >> 32) + ((v12 * (40075160 * v6)) >> 32) * ((v12 * (40075160 * v6)) >> 32)));
}

uint64_t sub_120A15C(unsigned int *a1, unsigned int *a2)
{
  v29 = sub_3F80(a1 + 3);
  v5 = sub_120B3F8(&v29, v4);
  v28 = sub_3F80(a1);
  v7 = v5 - sub_120B3F8(&v28, v6);
  v29 = sub_5AAC4((a1 + 3));
  v9 = sub_120B2B8(&v29, v8);
  v28 = sub_5AAC4(a1);
  v11 = v9 - sub_120B2B8(&v28, v10);
  v29 = sub_3F80(a2);
  v13 = sub_120B3F8(&v29, v12);
  v28 = sub_3F80(a1);
  v15 = v13 - sub_120B3F8(&v28, v14);
  v29 = sub_5AAC4(a2);
  v17 = sub_120B2B8(&v29, v16);
  v28 = sub_5AAC4(a1);
  v19 = (v7 * v15 + v11 * (v17 - sub_120B2B8(&v28, v18))) / (v7 * v7 + v11 * v11);
  if (v19 <= 0.0)
  {
    v30 = *a1;
    v26 = a1[2];
LABEL_6:
    v31 = v26;
    return v30;
  }

  if (v19 >= 1.0)
  {
    v30 = *(a1 + 3);
    v26 = a1[5];
    goto LABEL_6;
  }

  v29 = sub_3F80(a1);
  v21 = v7 * v19 + sub_120B3F8(&v29, v20);
  v29 = sub_5AAC4(a1);
  v23 = v11 * v19 + sub_120B2B8(&v29, v22);
  v24 = sub_120B378(v21);
  v25 = sub_120B220(v23);
  sub_1209EB8(&v30, v24, v25);
  return v30;
}

uint64_t sub_120A310(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1209E80((a1 + 20));
  v3 = *a1;
  v4 = **a1;
  if (v4)
  {
    v5 = v4[1];
    if (v5 == *v4 || ((v6 = v5 - 3, *(v3 + 4) != 1) ? (v7 = *v4) : (v7 = v6), v8 = *v7, *(a1 + 28) = v7[2], *(a1 + 20) = v8, (v4 = *v3) != 0))
    {
      v9 = *v4;
      v10 = v4[1];
      v11 = v10 - *v4;
      if (0xAAAAAAAAAAAAAAABLL * (v11 >> 2) >= 2)
      {
        if (v10 == v9)
        {
          v13 = sub_1209DE4();
          v3 = *a1;
          v4 = **a1;
          if (!v4)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v12 = v9 + v11 - 12;
          if (*(v3 + 4) == 1)
          {
            v13 = v12;
          }

          else
          {
            v13 = *v4;
          }
        }

        v15 = v4;
        v14 = *v4;
        v16 = v15[1] - v14;
        if (0xAAAAAAAAAAAAAAABLL * (v16 >> 2) > 1)
        {
          if (*(v3 + 4) == 1)
          {
            v17 = (v14 + v16 - 24);
          }

          else
          {
            v17 = v14 + 3;
          }

          goto LABEL_18;
        }

LABEL_16:
        v17 = sub_1209DE4();
LABEL_18:
        *(a1 + 16) = sub_120A090(v13, v17);
      }
    }
  }

  return a1;
}

unint64_t sub_120A42C(uint64_t a1)
{
  if (*a1)
  {
    return 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 8) - **a1) >> 2);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_120A458(_DWORD *a1, unint64_t a2)
{
  if (!*a1)
  {
    return sub_1209DE4();
  }

  v2 = **a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 8) - v2) >> 2) <= a2)
  {
    return sub_1209DE4();
  }

  v3 = a1[4];
  v4 = v2 + 12 * a2;
  v5 = v4;
  if (v3)
  {
    v5 = v4;
  }

  if (v3 == 1)
  {
    return (*(*a1 + 8) + 12 * ~a2);
  }

  else
  {
    return v5;
  }
}

BOOL sub_120A4BC(uint64_t a1)
{
  v1 = **a1;
  if (v1)
  {
    v1 = 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 8) - *v1) >> 2);
  }

  return *(a1 + 8) + 1 >= v1;
}

uint64_t sub_120A500(_OWORD *a1)
{
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v16 = v2 >> 32;
  v17 = HIDWORD(v2);
  if (sub_120A6B8(&v18, 0x32u, *&v2, *&v18))
  {
    *&v11 = *(&v19 + 4);
    DWORD2(v11) = HIDWORD(v19);
    sub_12098CC(&v20, &v16, &v11);
    return v20;
  }

  v4 = *a1;
  v5 = *(*a1 + 8);
  v13 = **a1;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v4 + 16);
  v15 = v6;
  if (!v6)
  {
    v7 = 1;
    goto LABEL_10;
  }

  if (v6 == 1)
  {
    v7 = 0;
LABEL_10:
    v15 = v7;
  }

  sub_120A310(&v11, &v13);
  v18 = v11;
  v19 = v12;
  v16 = v12 >> 32;
  v17 = HIDWORD(v12);
  sub_120A6B8(&v18, 0x32u, *&v12, *&v11);
  *&v11 = *(&v19 + 4);
  DWORD2(v11) = HIDWORD(v19);
  sub_12098CC(&v10, &v16, &v11);
  v8 = sub_1209794();
  v20 = sub_120997C(&v10, v8);
  v9 = v14;
  if (!v14 || atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v20;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return v20;
}

void sub_120A67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_120A690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_120A6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

BOOL sub_120A6B8(unsigned int *a1, unsigned int a2, double a3, double a4)
{
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
    v8 = *(a1 + 1);
    v9 = *v6;
    v10 = *(**a1 + 8) - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
    for (i = v8 + 1; v8 + 1 < v11; i = v8 + 1)
    {
      v13 = a1[4];
      v14 = a2 >= v13;
      v15 = a2 - v13;
      if (!v14)
      {
        break;
      }

      a2 = v15;
      sub_120A8E4(a1);
      v5 = *a1;
      v16 = **a1;
      if (!v16)
      {
        return a2 == 0;
      }

      v8 = *(a1 + 1);
      v9 = *v16;
      v10 = *(**a1 + 8) - v9;
      v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 2);
    }

    if (i < v11 && a2)
    {
      LODWORD(a4) = a1[4];
      v17 = *&a4;
      v38 = *(a1 + 5);
      v39 = a1[7];
      v18 = *(v5 + 4);
      v19 = v9 + v10 + 12 * (-2 - v8);
      v20 = v9 + 12 * i;
      v21 = v20;
      if (v18)
      {
        v21 = v20;
      }

      if (v18 == 1)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      v23 = *v22;
      v24 = a2 / v17;
      v37 = *(v22 + 8);
      v36 = v23;
      v35 = sub_3F80(&v36);
      v25 = sub_3F80(&v35);
      v34 = sub_3F80(&v38);
      v26 = v25 - sub_3F80(&v34);
      v35 = sub_5AAC4(&v36);
      v27 = sub_3F80(&v35);
      v34 = sub_5AAC4(&v38);
      v28 = v27 - sub_3F80(&v34);
      v35 = sub_3F80(&v38);
      v29 = (v24 * v26 + sub_3F80(&v35));
      v35 = sub_5AAC4(&v38);
      v30 = (v24 * v28 + sub_3F80(&v35));
      LODWORD(v29) = nullsub_1(v29);
      v31 = nullsub_1(v30);
      sub_B6C0(a1 + 5, v29, v31);
      v32 = a1[4] - a2;
      a2 = 0;
      a1[4] = v32;
    }
  }

  return a2 == 0;
}

uint64_t sub_120A8E4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  *(a1 + 8) = v3 + 1;
  if (*v2 && (v5 = **v2, 0xAAAAAAAAAAAAAAABLL * ((*(*v2 + 8) - v5) >> 2) > v4))
  {
    if (v2[4] == 1)
    {
      v6 = (*(*v2 + 8) + 12 * (-2 - v3));
    }

    else
    {
      v6 = (v5 + 12 * v4);
    }
  }

  else
  {
    v6 = sub_1209DE4();
    v2 = *a1;
    v4 = *(a1 + 8);
  }

  v7 = v6[2];
  *(a1 + 20) = *v6;
  *(a1 + 28) = v7;
  if (*v2 && (v8 = v4 + 1, v9 = **v2, v10 = *(*v2 + 8) - v9, v4 + 1 < 0xAAAAAAAAAAAAAAABLL * (v10 >> 2)))
  {
    v11 = v2[4];
    v12 = v9 + v10 + 12 * (-2 - v4);
    v13 = (v9 + 12 * v8);
    v14 = v13;
    if (v11)
    {
      v14 = v13;
    }

    if (v11 == 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    result = sub_120A090((a1 + 20), v15);
    *(a1 + 16) = result;
  }

  else
  {
    result = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

BOOL sub_120AA04(uint64_t **a1, unsigned int *a2, unsigned __int16 *a3)
{
  v3 = **a1;
  if (!v3 || 0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 2) < 2)
  {
    return 0;
  }

  sub_1209E80(&v56);
  v7 = **a1;
  if (v7 && (v8 = *v7, (v9 = *(v7 + 8) - *v7) != 0))
  {
    if (*(*a1 + 4) == 1)
    {
      v8 = (v8 + v9 - 12);
    }
  }

  else
  {
    v8 = sub_1209DE4();
  }

  v10 = *v8;
  v55 = v8[2];
  v54 = v10;
  v11 = *a1;
  v12 = **a1;
  if (v12)
  {
    v13 = 0;
    v47 = -1;
    v14 = 1000000;
    v15 = -24;
    v16 = 1;
    v17 = 12;
    while (1)
    {
      if (v16 >= 0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 2))
      {
        goto LABEL_40;
      }

      v19 = v12;
      v18 = *v12;
      v20 = v19[1] - v18;
      if (0xAAAAAAAAAAAAAAABLL * (v20 >> 2) <= v16)
      {
        v25 = sub_1209DE4();
      }

      else
      {
        v21 = *(v11 + 4);
        v22 = v18 + v20 + v15;
        v23 = v18 + 12 * v16;
        v24 = v23;
        if (v21)
        {
          v24 = v23;
        }

        v25 = (v21 == 1 ? v22 : v24);
      }

      v26 = *v25;
      v53 = v25[2];
      v52 = v26;
      sub_4FACEC(v51, &v54, &v52);
      v49 = sub_120A15C(v51, a2);
      v50 = v27;
      v28 = sub_120A090(&v49, a2);
      if (v28 <= 9)
      {
        break;
      }

LABEL_12:
      v54 = v52;
      v55 = v53;
      ++v16;
      v11 = *a1;
      v12 = **a1;
      v15 -= 12;
      v17 += 12;
      if (!v12)
      {
        goto LABEL_40;
      }
    }

    v29 = v28;
    if (a3)
    {
      v58 = *a1;
      v30 = a1[2];
      *(&v58 + 1) = v16 - 1;
      v59[0] = v30;
      v59[3] = v50;
      *&v59[1] = v49;
      if (*v58 && (v31 = **v58, v16 < 0xAAAAAAAAAAAAAAABLL * ((*(*v58 + 8) - v31) >> 2)))
      {
        v32 = *(v58 + 16);
        v33 = (v31 + v17);
        v34 = (v31 + 12 * v16);
        if (v32)
        {
          v34 = v33;
        }

        if (v32 == 1)
        {
          v35 = (*(*v58 + 8) + 12 * ~v16);
        }

        else
        {
          v35 = v34;
        }

        v36 = sub_120A090(&v59[1], v35);
      }

      else
      {
        v36 = 0;
      }

      v59[0] = v36;
      LOWORD(v58) = sub_120A500(&v58);
      v38 = sub_1209988(&v58, *a3, v37) < 0.785398163;
      if (v14 > 0xA)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v38 = 0;
      if (v14 > 0xA)
      {
LABEL_11:
        v56 = v49;
        v57 = v50;
        v47 = v16 - !sub_1209EC8(&v49, &v52);
        v13 = v38;
        v14 = v29;
        goto LABEL_12;
      }
    }

    if ((v13 || !v38) && (((v13 ^ v38) & 1) != 0 || v29 >= v14))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v47 = -1;
LABEL_40:
  result = v47 != -1;
  if (v47 != -1)
  {
    *(a1 + 20) = v56;
    a1[1] = v47;
    *(a1 + 7) = v57;
    if (*v11 && (v39 = **v11, v40 = *(*v11 + 8) - v39, v47 + 1 < 0xAAAAAAAAAAAAAAABLL * (v40 >> 2)))
    {
      v41 = *(v11 + 4);
      v42 = v39 + v40 + 12 * (-2 - v47);
      v43 = (v39 + 12 * (v47 + 1));
      v44 = v43;
      if (v41)
      {
        v44 = v43;
      }

      if (v41 == 1)
      {
        v45 = v42;
      }

      else
      {
        v45 = v44;
      }

      v46 = sub_120A090(a1 + 5, v45);
      result = v47 != -1;
    }

    else
    {
      v46 = 0;
    }

    *(a1 + 4) = v46;
  }

  return result;
}

uint64_t sub_120ADC8(uint64_t result, void *a2, int a3)
{
  v3 = a2[1];
  *result = *a2;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a3;
  return result;
}

uint64_t sub_120ADE8(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void sub_120ADF4(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    *(a1 + 16) = a3;
  }

  else
  {
    *(a1 + 16) = a3;
  }
}

uint64_t sub_120AE9C(uint64_t **a1, unsigned int *a2, unsigned int *a3, unint64_t *a4)
{
  sub_1209E80(&v35);
  if (!*a1 || (v7 = **a1, v8 = (*a1)[1], v9 = v8 - v7, v8 == v7))
  {
    v10 = sub_1209DE4();
    v7 = **a1;
    v8 = (*a1)[1];
    v9 = v8 - v7;
  }

  else if (*(a1 + 4) == 1)
  {
    v10 = (v8 - 12);
  }

  else
  {
    v10 = **a1;
  }

  v11 = 40030230;
  v12 = *v10;
  v34 = v10[2];
  v33 = v12;
  if (0xAAAAAAAAAAAAAAABLL * (v9 >> 2) < 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = -24;
    v15 = 1;
    do
    {
      v16 = v8 - v7;
      if (0xAAAAAAAAAAAAAAABLL * (v16 >> 2) <= v15)
      {
        v21 = sub_1209DE4();
      }

      else
      {
        v17 = *(a1 + 4);
        v18 = (v7 + v16 + v14);
        v19 = (v7 + 12 * v15);
        v20 = v19;
        if (v17)
        {
          v20 = v19;
        }

        if (v17 == 1)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }
      }

      v22 = *v21;
      v32 = v21[2];
      v31 = v22;
      sub_4FACEC(v30, &v33, &v31);
      v28 = sub_120A15C(v30, a2);
      v29 = v23;
      v24 = sub_120A090(&v28, a2);
      if (v24 < v11)
      {
        v25 = v24;
        v35 = v28;
        v36 = v29;
        v13 = v15 - !sub_1209EC8(&v28, &v31);
        v11 = v25;
      }

      v33 = v31;
      v34 = v32;
      ++v15;
      v7 = **a1;
      v8 = (*a1)[1];
      v14 -= 12;
    }

    while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 2));
  }

  if (a3)
  {
    *a3 = v11;
  }

  if (a4)
  {
    *a4 = v13;
  }

  return v35;
}

uint64_t sub_120B0B4(uint64_t *a1)
{
  v1 = a1[1];
  v9 = *a1;
  v10 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = *(a1 + 4);
  v11 = v2;
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_8;
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v11 = v3;
LABEL_8:
  sub_120A310(v12, &v9);
  v8 = sub_120A500(v12);
  v4 = sub_1209794();
  result = sub_120997C(&v8, v4);
  v6 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  return result;
}

void sub_120B1A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_120B1B4(uint64_t a1, unsigned int *a2)
{
  sub_120A310(v4, a1);
  if (sub_120AA04(v4, a2, 0))
  {
    return sub_120A500(v4);
  }

  else
  {
    return sub_394BD0();
  }
}

uint64_t sub_120B220(double a1)
{
    ;
  }

    ;
  }

  return (i * 4294967300.0 / 360.0);
}

double sub_120B2B8(_DWORD *a1, double a2)
{
  LODWORD(a2) = *a1;
  result = *&a2 * 360.0 * 2.32830644e-10 + -90.0;
  if (result >= 180.0)
  {
    return result + -360.0;
  }

  return result;
}

BOOL sub_120B314(_DWORD *a1, unsigned int a2)
{
  v2 = *a1 - a2;
  if (*a1 < a2)
  {
    v2 = a2 - *a1;
  }

  return v2 < 2;
}

double sub_120B340(int a1)
{
  v1 = nullsub_1((a1 - 0x40000000) >> 16);

  return sub_1209AB0(v1);
}

uint64_t sub_120B378(double a1)
{
    ;
  }

    ;
  }

  return (a1 * 4294967300.0 / 360.0);
}

double sub_120B3F8(_DWORD *a1, double a2)
{
  LODWORD(a2) = *a1;
  result = *&a2 * 360.0 / 4294967300.0;
  if (result >= 180.0)
  {
    return result + -360.0;
  }

  return result;
}

uint64_t sub_120B498(void ***a1, uint64_t a2)
{
  v4 = **a1;
  if ((*a1)[1] != v4)
  {
    (*a1)[1] = v4;
  }

  v5 = sub_120D1BC(a2, 8);
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      v6 = a1;
      v7 = a2;
      v8 = 1;

      return sub_120C85C(v6, v7, v8);
    }

    if (v5 != 64)
    {
      return 2;
    }
  }

  else if (v5 != 2)
  {
    if (v5 == 3)
    {
      v6 = a1;
      v7 = a2;
      v8 = 0;

      return sub_120C85C(v6, v7, v8);
    }

    return 2;
  }

  return sub_120C3D0(a1, a2);
}

void sub_120B5A4(uint64_t *a1, _OWORD *a2)
{
  sub_1209C94(v18);
  if (sub_1209CE8(a2, v18))
  {
    v4 = *a1;
    v5 = *(*a1 + 8);
    v6 = *(*a1 + 16);
    if (v5 >= v6)
    {
      v9 = *v4;
      v10 = v5 - *v4;
      v11 = v10 >> 5;
      v12 = (v10 >> 5) + 1;
      if (v12 >> 59)
      {
        sub_1794();
      }

      v13 = v6 - v9;
      if (v13 >> 4 > v12)
      {
        v12 = v13 >> 4;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFE0)
      {
        v14 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (!(v14 >> 59))
        {
          operator new();
        }

        sub_1808();
      }

      v15 = (32 * v11);
      v16 = a2[1];
      *v15 = *a2;
      v15[1] = v16;
      v8 = 32 * v11 + 32;
      v17 = &v15[-2 * (v10 >> 5)];
      memcpy(v17, v9, v10);
      *v4 = v17;
      *(v4 + 8) = v8;
      *(v4 + 16) = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      v7 = a2[1];
      *v5 = *a2;
      v5[1] = v7;
      v8 = (v5 + 2);
    }

    *(v4 + 8) = v8;
  }
}

void sub_120B6D0(uint64_t **a1, uint64_t *a2, int a3)
{
  switch(a3)
  {
    case 4:
      sub_120D648(a2, 0);
      sub_120D6FC(a2, 4u, 8);
      v6 = a1;
      v7 = a2;
      v8 = 1;

      goto LABEL_9;
    case 3:
      sub_120D648(a2, 0);
      sub_120D6FC(a2, 3u, 8);
      v6 = a1;
      v7 = a2;
      v8 = 0;

LABEL_9:
      sub_120BAF8(v6, v7, v8);
      return;
    case 2:
      sub_120D648(a2, 1);
      sub_120D6FC(a2, 2u, 8);

      sub_120B7DC(a1, a2);
      break;
  }
}

void sub_120B7DC(uint64_t **a1, uint64_t *a2)
{
  v4 = (*a1)[1] - **a1;
  sub_120D6FC(a2, v4 >> 5, 32);
  sub_120D6FC(a2, 0, 1);
  v5 = sub_B718(**a1);
  v33 = sub_3F80(v5);
  v6 = sub_3F80(&v33);
  v7 = sub_B718(**a1);
  v33 = sub_5AAC4(v7);
  v8 = sub_3F80(&v33);
  sub_120D6FC(a2, v6, 32);
  sub_120D6FC(a2, v8, 32);
  LOWORD(v33) = sub_1209C58(**a1);
  v9 = sub_1209974(&v33);
  sub_120D6FC(a2, v9, 16);
  v33 = sub_4F96D8(**a1);
  v10 = sub_3F80(&v33);
  sub_120D6FC(a2, v10, 5);
  v31 = a1;
  v33 = sub_1209C60(**a1);
  v11 = sub_3F80(&v33);
  sub_120D6FC(a2, v11, 4);
  if ((v4 >> 5) >= 2)
  {
    v12 = (v4 >> 5) - 1;
    v13 = 32;
    do
    {
      v14 = sub_B718(**v31 + v13);
      v33 = sub_3F80(v14);
      v15 = sub_3F80(&v33);
      v16 = sub_B718(**v31 + v13);
      v33 = sub_5AAC4(v16);
      v17 = sub_3F80(&v33);
      v32 = v17;
      v18 = v15 < v6;
      if (v15 >= v6)
      {
        v19 = v15 - v6;
      }

      else
      {
        v19 = v6 - v15;
      }

      v20 = v8 - v17;
      v21 = v17 >= v8;
      v22 = v17 - v8;
      v23 = v17 < v8;
      if (v21)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      sub_120D654(a2, v18);
      if (HIWORD(v19))
      {
        v25 = 24;
      }

      else
      {
        v25 = 16;
      }

      sub_120D654(a2, HIWORD(v19) != 0);
      sub_120D6FC(a2, v19, v25);
      sub_120D654(a2, v23);
      if (HIWORD(v24))
      {
        v26 = 24;
      }

      else
      {
        v26 = 16;
      }

      sub_120D654(a2, HIWORD(v24) != 0);
      sub_120D6FC(a2, v24, v26);
      v27 = sub_3F80((**v31 + v13));
      sub_120D6FC(a2, v27, 2);
      if (sub_3F80((**v31 + v13)) != 1)
      {
        LOWORD(v33) = sub_1209C58(**v31 + v13);
        v28 = sub_1209974(&v33);
        sub_120D6FC(a2, v28, 16);
        v33 = sub_4F96D8(**v31 + v13);
        v29 = sub_3F80(&v33);
        sub_120D6FC(a2, v29, 5);
        v33 = sub_1209C60(**v31 + v13);
        v30 = sub_3F80(&v33);
        sub_120D6FC(a2, v30, 4);
      }

      v13 += 32;
      v8 = v32;
      v6 = v15;
      --v12;
    }

    while (v12);
  }
}

void sub_120BAF8(uint64_t **a1, uint64_t *a2, int a3)
{
  sub_120D7F0(a2, ((*a1)[1] - **a1) >> 5);
  v5 = sub_B718(**a1);
  v11 = sub_3F80(v5);
  sub_3F80(&v11);
  v6 = sub_B718(**a1);
  v11 = sub_5AAC4(v6);
  sub_3F80(&v11);
  if (a3)
  {
    v7 = sub_B718(**a1);
    sub_4566A4(v7);
  }

  v8 = sub_B718(**a1 + 32);
  v11 = sub_3F80(v8);
  sub_3F80(&v11);
  v9 = sub_B718(**a1 + 32);
  v11 = sub_5AAC4(v9);
  sub_3F80(&v11);
  if (a3)
  {
    v10 = sub_B718(**a1 + 32);
    sub_4566A4(v10);
  }

  operator new();
}

void sub_120C328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
    v22 = a14;
    if (!a14)
    {
LABEL_3:
      if (!v20)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v22 = a14;
    if (!a14)
    {
      goto LABEL_3;
    }
  }

  operator delete(v22);
  if (!v20)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v20);
  _Unwind_Resume(exception_object);
}

uint64_t sub_120C3D0(void ***a1, uint64_t a2)
{
  sub_F9223C(a2, 1);
  v4 = sub_120D1BC(a2, 32);
  sub_120D1BC(a2, 1);
  sub_1209B4C(&v58);
  v5 = sub_120D1BC(a2, 32);
  v6 = sub_120D1BC(a2, 32);
  sub_B6D0(&v58, 0);
  v7 = nullsub_1(v5);
  v8 = nullsub_1(v6);
  sub_1209EB8(&v57, v7, v8);
  sub_1209C68(&v58, &v57);
  v9 = sub_120D1BC(a2, 16);
  v10 = nullsub_1(v9);
  sub_1209C7C(&v58, v10);
  v11 = sub_120D1BC(a2, 5);
  sub_B6D0(&v57, v11);
  sub_1209C84(&v58, v57);
  v12 = sub_120D1BC(a2, 4);
  sub_1209DD0(&v57, v12);
  sub_1209C8C(&v58, v57);
  v13 = *a1;
  v14 = (*a1)[1];
  v15 = (*a1)[2];
  v56 = a1;
  if (v14 < v15)
  {
    v16 = v59;
    *v14 = v58;
    *(v14 + 1) = v16;
    v13[1] = v14 + 32;
    if (v4 < 2)
    {
      goto LABEL_46;
    }

    goto LABEL_16;
  }

  v17 = *v13;
  v18 = v14 - *v13;
  v19 = v18 >> 5;
  v20 = (v18 >> 5) + 1;
  if (v20 >> 59)
  {
LABEL_49:
    sub_1794();
  }

  v21 = v15 - v17;
  if (v21 >> 4 > v20)
  {
    v20 = v21 >> 4;
  }

  if (v21 >= 0x7FFFFFFFFFFFFFE0)
  {
    v22 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = v20;
  }

  if (v22)
  {
    if (!(v22 >> 59))
    {
      operator new();
    }

    goto LABEL_50;
  }

  v23 = (32 * v19);
  v24 = v59;
  *v23 = v58;
  v23[1] = v24;
  v25 = 32 * v19 + 32;
  memcpy(0, v17, v18);
  *v13 = 0;
  v13[1] = v25;
  v13[2] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  a1 = v56;
  v13[1] = v25;
  if (v4 >= 2)
  {
LABEL_16:
    v26 = v4 - 1;
    while (1)
    {
      while (1)
      {
        if (*(a2 + 36) == 1)
        {
          goto LABEL_46;
        }

        v28 = sub_120D1BC(a2, 1);
        if (sub_120D1BC(a2, 1))
        {
          v29 = 24;
        }

        else
        {
          v29 = 16;
        }

        v30 = sub_120D1BC(a2, v29);
        if (v28)
        {
          v31 = -v30;
        }

        else
        {
          v31 = v30;
        }

        v5 = (v31 + v5);
        v32 = sub_120D1BC(a2, 1);
        if (sub_120D1BC(a2, 1))
        {
          v33 = 24;
        }

        else
        {
          v33 = 16;
        }

        v34 = sub_120D1BC(a2, v33);
        if (v32)
        {
          v35 = -v34;
        }

        else
        {
          v35 = v34;
        }

        v6 = (v35 + v6);
        v36 = nullsub_1(v5);
        v37 = nullsub_1(v6);
        sub_1209EB8(&v57, v36, v37);
        sub_1209C68(&v58, &v57);
        v38 = sub_120D1BC(a2, 2);
        sub_B6D0(&v58, v38);
        if (!sub_570C5C(&v58))
        {
          v39 = sub_120D1BC(a2, 16);
          v40 = nullsub_1(v39);
          sub_1209C7C(&v58, v40);
          v41 = sub_120D1BC(a2, 5);
          sub_B6D0(&v57, v41);
          sub_1209C84(&v58, v57);
          v42 = sub_120D1BC(a2, 4);
          sub_1209DD0(&v57, v42);
          sub_1209C8C(&v58, v57);
        }

        v43 = *a1;
        v44 = (*a1)[1];
        v45 = (*a1)[2];
        if (v44 >= v45)
        {
          break;
        }

        v27 = v59;
        *v44 = v58;
        *(v44 + 1) = v27;
        v43[1] = v44 + 32;
        if (!--v26)
        {
          goto LABEL_46;
        }
      }

      v46 = *v43;
      v47 = v44 - *v43;
      v48 = v47 >> 5;
      v49 = (v47 >> 5) + 1;
      if (v49 >> 59)
      {
        goto LABEL_49;
      }

      v50 = v45 - v46;
      if (v50 >> 4 > v49)
      {
        v49 = v50 >> 4;
      }

      v51 = v50 >= 0x7FFFFFFFFFFFFFE0 ? 0x7FFFFFFFFFFFFFFLL : v49;
      if (v51)
      {
        break;
      }

      v52 = (32 * v48);
      v53 = v59;
      *v52 = v58;
      v52[1] = v53;
      v54 = 32 * v48 + 32;
      memcpy(0, v46, v47);
      *v43 = 0;
      v43[1] = v54;
      v43[2] = 0;
      if (v46)
      {
        operator delete(v46);
      }

      a1 = v56;
      v43[1] = v54;
      if (!--v26)
      {
        goto LABEL_46;
      }
    }

    if (!(v51 >> 59))
    {
      operator new();
    }

LABEL_50:
    sub_1808();
  }

LABEL_46:
  if ((*(a2 + 36) & 1) == 0)
  {
    return 0;
  }

  (*a1)[1] = **a1;
  return 1;
}

uint64_t sub_120C85C(uint64_t *a1, uint64_t a2, int a3)
{
  sub_F9223C(a2, 0);
  v62 = 0;
  result = sub_120D2BC(a2, &v62);
  if (!result)
  {
    v61 = 0;
    result = sub_120D2BC(a2, &v61);
    if (!result)
    {
      if (--v61 > 0x20)
      {
        return 1;
      }

      v60 = 0;
      result = sub_120D2BC(a2, &v60);
      if (!result)
      {
        if (--v60 > 0x20)
        {
          return 1;
        }

        v59 = 0;
        if (a3)
        {
          result = sub_120D2BC(a2, &v59);
          if (result)
          {
            return result;
          }

          if (--v59 > 0x20)
          {
            return 1;
          }
        }

        sub_1209B4C(v58);
        v7 = sub_120D1BC(a2, 32);
        v8 = sub_120D1BC(a2, 32);
        if (a3)
        {
          v9 = sub_120CD50(a2);
          v10 = sub_120D1BC(a2, 32);
          if (v9)
          {
            v11 = -v10;
          }

          else
          {
            v11 = v10;
          }

          sub_B6D0(v58, 0);
          v12 = nullsub_1(v7);
          v13 = nullsub_1(v8);
          sub_456538(&v56, v12, v13, v11);
        }

        else
        {
          sub_B6D0(v58, 0);
          v14 = nullsub_1(v7);
          v15 = nullsub_1(v8);
          sub_1209EB8(&v56, v14, v15);
          v11 = 0;
        }

        sub_1209C68(v58, &v56);
        v16 = sub_120D1BC(a2, 9);
        v17 = sub_12098F8(v16);
        sub_1209C7C(v58, v17);
        v18 = sub_120D1BC(a2, 5);
        sub_B6D0(&v56, v18);
        sub_1209C84(v58, v56);
        v19 = sub_120D1BC(a2, 4);
        sub_1209DD0(&v56, v19);
        sub_1209C8C(v58, v56);
        sub_120CDAC(*a1, v58);
        if (v62 >= 2)
        {
          v20 = 1;
          while (*(a2 + 36) != 1)
          {
            sub_1209B4C(&v56);
            v22 = sub_120D1BC(a2, 1);
            v23 = sub_120D440(a2, v61);
            if (v22)
            {
              v24 = -v23;
            }

            else
            {
              v24 = v23;
            }

            v7 = (v24 + v7);
            v25 = sub_120D1BC(a2, 1);
            v26 = sub_120D440(a2, v60);
            if (v25)
            {
              v27 = -v26;
            }

            else
            {
              v27 = v26;
            }

            v8 = (v27 + v8);
            if (a3)
            {
              v28 = sub_120D1BC(a2, 1);
              v29 = sub_120D440(a2, v59);
              if (v28)
              {
                v30 = -v29;
              }

              else
              {
                v30 = v29;
              }

              v11 += v30;
              v31 = nullsub_1(v7);
              v32 = nullsub_1(v8);
              sub_456538(&v55, v31, v32, v11);
            }

            else
            {
              v33 = nullsub_1(v7);
              v34 = nullsub_1(v8);
              sub_1209EB8(&v55, v33, v34);
              v11 = 0;
            }

            sub_1209C68(&v56, &v55);
            v35 = sub_120D1BC(a2, 2);
            sub_B6D0(&v56, v35);
            if (!sub_570C5C(&v56))
            {
              v36 = sub_120D1BC(a2, 9);
              v37 = sub_12098F8(v36);
              sub_1209C7C(&v56, v37);
              v38 = sub_120D1BC(a2, 5);
              sub_B6D0(&v55, v38);
              sub_1209C84(&v56, v55);
              v39 = sub_120D1BC(a2, 4);
              sub_1209DD0(&v55, v39);
              sub_1209C8C(&v56, v55);
            }

            v40 = *a1;
            v41 = *(*a1 + 8);
            v42 = *(*a1 + 16);
            if (v41 < v42)
            {
              v21 = v57;
              *v41 = v56;
              v41[1] = v21;
              *(v40 + 8) = v41 + 2;
              if (++v20 >= v62)
              {
                break;
              }
            }

            else
            {
              v43 = v7;
              v44 = v11;
              v45 = *v40;
              v46 = v41 - *v40;
              v47 = v46 >> 5;
              v48 = (v46 >> 5) + 1;
              if (v48 >> 59)
              {
                sub_1794();
              }

              v49 = v42 - v45;
              if (v49 >> 4 > v48)
              {
                v48 = v49 >> 4;
              }

              if (v49 >= 0x7FFFFFFFFFFFFFE0)
              {
                v50 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v50 = v48;
              }

              v54 = v43;
              if (v50)
              {
                if (!(v50 >> 59))
                {
                  operator new();
                }

                sub_1808();
              }

              v51 = (32 * v47);
              v52 = v57;
              *v51 = v56;
              v51[1] = v52;
              v53 = 32 * v47 + 32;
              memcpy(0, v45, v46);
              *v40 = 0;
              *(v40 + 8) = v53;
              *(v40 + 16) = 0;
              if (v45)
              {
                operator delete(v45);
              }

              v11 = v44;
              LODWORD(v7) = v54;
              *(v40 + 8) = v53;
              if (++v20 >= v62)
              {
                break;
              }
            }
          }
        }

        if (*(a2 + 36))
        {
          *(*a1 + 8) = **a1;
          return 1;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_120CD50(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= *(a1 + 8))
  {
    v3 = 0;
    *(a1 + 36) = 1;
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = (*(*a1 + 4 * v1) >> v2) & 1;
    *(a1 + 32) = v2 + 1;
    if (v2 >= 31)
    {
      *(a1 + 32) = 0;
      *(a1 + 24) = v1 + 1;
      return v3;
    }
  }

  return v3;
}

uint64_t sub_120CDAC(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      sub_1794();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
  return v6 - 32;
}

uint64_t sub_120CEBC(uint64_t result, int a2, uint64_t a3)
{
  *result = off_266AE50;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

std::string *sub_120CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 20;
  v3 = *"GeometryPathElement(";
  strcpy(a2, "GeometryPathElement(");
  v4 = *(a1 + 24);
  if (*(a1 + 32) != v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      sub_1209F78((v4 + v6), __p, v3);
      if ((v13 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v9 = v13;
      }

      else
      {
        v9 = __p[1];
      }

      std::string::append(a2, v8, v9);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      ++v7;
      v4 = *(a1 + 24);
      v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v4) >> 2);
      if (v7 < v10)
      {
        std::string::append(a2, ",", 1uLL);
        v4 = *(a1 + 24);
        v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v4) >> 2);
      }

      v6 += 12;
    }

    while (v7 < v10);
  }

  return std::string::append(a2, ")", 1uLL);
}

void sub_120D018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((*(v15 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

void *sub_120D06C(void *result)
{
  *result = off_2677BF0;
  v1 = result[3];
  if (v1)
  {
    result[4] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_120D0C4(void *a1)
{
  *a1 = off_2677BF0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

double sub_120D148(double *a1, double a2)
{
  result = a2 * *a1;
  *a1 = result;
  return result;
}

double sub_120D184(double *a1, double a2)
{
  v2 = *a1 - a2;
  v3 = a2 < *a1;
  result = 0.0;
  if (v3)
  {
    return v2;
  }

  return result;
}

uint64_t sub_120D19C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = (a3 + 3) >> 2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 36) = 0;
  return result;
}

uint64_t sub_120D1BC(uint64_t a1, int a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v3 = 0;
    if (a2)
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 24);
      v10 = a2 - 1;
      do
      {
        if (v9 >= v8)
        {
          v11 = 0;
          *(a1 + 36) = 1;
        }

        else
        {
          v12 = *(a1 + 32);
          v11 = (*(*a1 + 4 * v9) >> v12) & 1;
          *(a1 + 32) = v12 + 1;
          if (v12 >= 31)
          {
            *(a1 + 32) = 0;
            *(a1 + 24) = ++v9;
          }
        }

        v3 = (v11 << v10--) | v3;
      }

      while (v10 != -1);
    }

    return v3;
  }

  if (a2)
  {
    v2 = 0;
    LODWORD(v3) = 0;
    v4 = *(a1 + 8);
    v5 = *(a1 + 24);
    do
    {
      if (v5 >= v4)
      {
        v6 = 0;
        *(a1 + 36) = 1;
      }

      else
      {
        v7 = *(a1 + 32);
        v6 = (*(*a1 + 4 * v5) >> v7) & 1;
        *(a1 + 32) = v7 + 1;
        if (v7 >= 31)
        {
          *(a1 + 32) = 0;
          *(a1 + 24) = ++v5;
        }
      }

      v3 = (v6 << v2++) | v3;
    }

    while (a2 != v2);
    return v3;
  }

  return 0;
}

uint64_t sub_120D2BC(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 4;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = -1;
  do
  {
    if (v3 >= v2)
    {
      LOBYTE(v6) = 0;
      *(a1 + 36) = 1;
    }

    else
    {
      v5 = *(a1 + 32);
      v6 = (*(*a1 + 4 * v3) >> v5) & 1;
      *(a1 + 32) = v5 + 1;
      if (v5 >= 31)
      {
        *(a1 + 32) = 0;
        *(a1 + 24) = ++v3;
      }
    }

    v7 = ++v4;
  }

  while ((v6 & 1) == 0 && v7 < 0x20);
  v8 = 1;
  if (v7 > 0x1F)
  {
    return v8;
  }

  *a2 = 1 << v4;
  if (!v4)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v3 >= v2)
      {
        v11 = 0;
        *(a1 + 36) = 1;
      }

      else
      {
        v12 = *(a1 + 32);
        v11 = (*(*a1 + 4 * v3) >> v12) & 1;
        *(a1 + 32) = v12 + 1;
        if (v12 >= 31)
        {
          *(a1 + 32) = 0;
          *(a1 + 24) = ++v3;
        }
      }

      v10 |= v11 << v9++;
    }

    while (v4 != v9);
  }

  else
  {
    v10 = 0;
    v14 = v4 - 1;
    do
    {
      if (v3 >= v2)
      {
        v15 = 0;
        *(a1 + 36) = 1;
      }

      else
      {
        v16 = *(a1 + 32);
        v15 = (*(*a1 + 4 * v3) >> v16) & 1;
        *(a1 + 32) = v16 + 1;
        if (v16 >= 31)
        {
          *(a1 + 32) = 0;
          *(a1 + 24) = ++v3;
        }
      }

      v10 |= v15 << v14--;
    }

    while (v14 != -1);
  }

  *a2 |= v10;
  return 0;
}

uint64_t sub_120D440(uint64_t *a1, int a2)
{
  v2 = a1[1];
  v3 = a1[3];
  if (v3 < v2)
  {
    v4 = 0;
    v5 = *a1;
    v6 = *(a1 + 8);
    while (1)
    {
      v7 = (1 << v6) & *(v5 + 4 * v3);
      *(a1 + 8) = v6 + 1;
      if (v6 >= 31)
      {
        v6 = 0;
        *(a1 + 8) = 0;
        a1[3] = ++v3;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        ++v6;
        if (!v7)
        {
LABEL_7:
          if (a2)
          {
            goto LABEL_8;
          }

LABEL_17:
          v9 = 0;
          return (v9 + (v4 << a2));
        }
      }

      ++v4;
      if (v3 >= v2)
      {
        goto LABEL_16;
      }
    }
  }

  v4 = 0;
LABEL_16:
  *(a1 + 36) = 1;
  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (a1[2])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (v3 >= v2)
      {
        v10 = 0;
        *(a1 + 36) = 1;
      }

      else
      {
        v11 = *(a1 + 8);
        v10 = (*(*a1 + 4 * v3) >> v11) & 1;
        *(a1 + 8) = v11 + 1;
        if (v11 >= 31)
        {
          *(a1 + 8) = 0;
          a1[3] = ++v3;
        }
      }

      v9 |= v10 << v8++;
    }

    while (a2 != v8);
  }

  else
  {
    v9 = 0;
    v13 = a2 - 1;
    do
    {
      if (v3 >= v2)
      {
        v14 = 0;
        *(a1 + 36) = 1;
      }

      else
      {
        v15 = *(a1 + 8);
        v14 = (*(*a1 + 4 * v3) >> v15) & 1;
        *(a1 + 8) = v15 + 1;
        if (v15 >= 31)
        {
          *(a1 + 8) = 0;
          a1[3] = ++v3;
        }
      }

      v9 |= v14 << v13--;
    }

    while (v13 != -1);
  }

  return (v9 + (v4 << a2));
}

uint64_t *sub_120D5F0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

void sub_120D654(uint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 28) | (a2 << v4);
  *(v3 + 24) = v4 + 1;
  *(v3 + 28) = v5;
  if (v4 >= 31)
  {
    v6 = nullsub_1(v5);
    sub_DD38(v3, &v6);
    *(*a1 + 24) = 0;
  }
}

uint64_t sub_120D6B8(uint64_t *a1)
{
  result = *a1;
  if (*(result + 24) >= 1)
  {
    sub_DD38(result, (result + 28));
    result = *a1;
  }

  *(result + 32) = 1;
  return result;
}

void sub_120D6FC(uint64_t *a1, unsigned int a2, int a3)
{
  v3 = a3;
  v6 = *a1;
  if (*(*a1 + 33))
  {
    if (a3)
    {
      do
      {
        v7 = *(v6 + 24);
        v8 = *(v6 + 28) | ((a2 & 1) << v7);
        *(v6 + 24) = v7 + 1;
        *(v6 + 28) = v8;
        if (v7 >= 31)
        {
          v13 = nullsub_1(v8);
          sub_DD38(v6, &v13);
          v6 = *a1;
          *(*a1 + 24) = 0;
        }

        a2 >>= 1;
        --v3;
      }

      while (v3);
    }
  }

  else if (a3)
  {
    v9 = a3 - 1;
    do
    {
      v10 = *(v6 + 24);
      v11 = *(v6 + 28) | (((a2 >> v9) & 1) << v10);
      *(v6 + 24) = v10 + 1;
      *(v6 + 28) = v11;
      if (v10 >= 31)
      {
        v12 = nullsub_1(v11);
        sub_DD38(v6, &v12);
        v6 = *a1;
        *(*a1 + 24) = 0;
      }

      --v9;
    }

    while (v9 != -1);
  }
}

void sub_120D7F0(uint64_t *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 31;
  }

  else if (a2 >> 30)
  {
    v5 = 30;
  }

  else if (a2 >> 29)
  {
    v5 = 29;
  }

  else if (a2 >> 28)
  {
    v5 = 28;
  }

  else if (a2 >> 27)
  {
    v5 = 27;
  }

  else if (a2 >> 26)
  {
    v5 = 26;
  }

  else if (a2 >> 25)
  {
    v5 = 25;
  }

  else if (HIBYTE(a2))
  {
    v5 = 24;
  }

  else if (a2 >> 23)
  {
    v5 = 23;
  }

  else if (a2 >> 22)
  {
    v5 = 22;
  }

  else if (a2 >> 21)
  {
    v5 = 21;
  }

  else if (a2 >> 20)
  {
    v5 = 20;
  }

  else if (a2 >> 19)
  {
    v5 = 19;
  }

  else if (a2 >> 18)
  {
    v5 = 18;
  }

  else if (a2 >> 17)
  {
    v5 = 17;
  }

  else if (HIWORD(a2))
  {
    v5 = 16;
  }

  else if (a2 >> 15)
  {
    v5 = 15;
  }

  else if (a2 >> 14)
  {
    v5 = 14;
  }

  else if (a2 >> 13)
  {
    v5 = 13;
  }

  else if (a2 > 0xFFF)
  {
    v5 = 12;
  }

  else if (a2 > 0x7FF)
  {
    v5 = 11;
  }

  else if (a2 > 0x3FF)
  {
    v5 = 10;
  }

  else if (a2 > 0x1FF)
  {
    v5 = 9;
  }

  else if (a2 > 0xFF)
  {
    v5 = 8;
  }

  else if (a2 > 0x7F)
  {
    v5 = 7;
  }

  else if (a2 > 0x3F)
  {
    v5 = 6;
  }

  else if (a2 > 0x1F)
  {
    v5 = 5;
  }

  else if (a2 > 0xF)
  {
    v5 = 4;
  }

  else if (a2 > 7)
  {
    v5 = 3;
  }

  else if (a2 > 3)
  {
    v5 = 2;
  }

  else if (a2 > 1)
  {
    v5 = 1;
  }

  else
  {
    if (a2)
    {
      v4 = 1;
      goto LABEL_67;
    }

    v5 = -1;
  }

  sub_120D6FC(a1, 0, v5);
  v4 = v5 + 1;
LABEL_67:

  sub_120D6FC(a1, a2, v4);
}

void sub_120DA44(uint64_t *a1, unsigned int a2, int a3)
{
  v6 = a2 >> a3;
  v7 = *a1;
  if (a2 >> a3)
  {
    v8 = a2 >> a3;
    do
    {
      v9 = *(v7 + 24);
      v10 = *(v7 + 28) | (1 << v9);
      *(v7 + 24) = v9 + 1;
      *(v7 + 28) = v10;
      if (v9 >= 31)
      {
        v13 = nullsub_1(v10);
        sub_DD38(v7, &v13);
        v7 = *a1;
        *(*a1 + 24) = 0;
      }

      --v8;
    }

    while (v8);
  }

  v12 = *(v7 + 24);
  v11 = *(v7 + 28);
  *(v7 + 24) = v12 + 1;
  if (v12 >= 31)
  {
    v14 = nullsub_1(v11);
    sub_DD38(v7, &v14);
    *(*a1 + 24) = 0;
  }

  sub_120D6FC(a1, a2 - (v6 << a3), a3);
}

uint64_t sub_120DB48(_DWORD *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  v3 = -1;
  LODWORD(v4) = 31;
  do
  {
    v5 = (*a1 >> v2) + v2;
    v6 = 1;
    do
    {
      v7 = v6;
      if (a2 == v6)
      {
        break;
      }

      v8 = (a1[v6++] >> v2) + v2;
      v9 = __CFADD__(v5, v8);
      v5 += v8;
    }

    while (!v9);
    if (v7 >= a2 && v5 < v3)
    {
      v3 = v5;
      v4 = v2;
    }

    else
    {
      v4 = v4;
    }

    ++v2;
  }

  while (v2 != 32);
  return v4;
}

uint64_t sub_120DBCC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    result = sub_12119FC();
    if (result)
    {
      sub_19594F8(&v278);
      sub_4A5C(&v278, "The input path leg already has a compressed path populated. Skipping compression.", 81);
      operator new();
    }

    return result;
  }

  sub_1215458(&v278, 0, 0);
  v4 = *(a2 + 32);
  v284 = v4;
  v280 |= 9u;
  v5 = v281;
  if (!v281)
  {
    v6 = (v279 & 0xFFFFFFFFFFFFFFFCLL);
    if (v279)
    {
      v6 = *v6;
    }

    sub_1215F40(v6);
    v5 = v7;
    v281 = v7;
    v4 = *(a2 + 32);
  }

  *(v5 + 16) |= 1u;
  v264 = (v5 + 16);
  v8 = *(v5 + 24);
  v273 = a2;
  if (!v8)
  {
    v9 = *(v5 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v8 = sub_1215DEC(v10);
    *(v5 + 24) = v8;
  }

  v11 = *(*(*(a2 + 40) + 8) + 32);
  if (!v11)
  {
    v11 = &off_2734B00;
  }

  v12 = *(v11 + 6);
  *(v8 + 16) |= 2u;
  *(v8 + 56) = v12;
  sub_194EC04((v8 + 48));
  *(v8 + 24) = 0;
  v13 = *(v8 + 16);
  v270 = (v8 + 24);
  *(v8 + 16) = v13 & 0xFFFFFFFE;
  v14 = v4 - 1;
  v15 = 0.0;
  if (v4 >= 2)
  {
    v16 = *(a2 + 40);
    v17 = v16 + 8;
    v18 = *(*(v16 + 8) + 32);
    if (v4 + 0x7FFFFFFF >= 0x80000002)
    {
      v22 = 0;
      v23 = 0;
      v20 = v14 | 1;
      v24 = v16 + 24;
      v25 = v14 & 0x7FFFFFFE;
      do
      {
        v26 = v18;
        v18 = *(*v24 + 32);
        if (*(*(v24 - 8) + 32))
        {
          v27 = *(*(v24 - 8) + 32);
        }

        else
        {
          v27 = &off_2734B00;
        }

        if (v18)
        {
          v28 = *(*v24 + 32);
        }

        else
        {
          v28 = &off_2734B00;
        }

        v29 = *(v27 + 6);
        v30 = *(v28 + 6);
        if (!v26)
        {
          v26 = &off_2734B00;
        }

        v31 = v29 - *(v26 + 6);
        v32 = v30 - v29;
        if (v31 < 0)
        {
          v31 = -v31;
        }

        if (v32 < 0)
        {
          v32 = -v32;
        }

        v22 += v31;
        v23 += v32;
        v24 += 16;
        v25 -= 2;
      }

      while (v25);
      v19 = v23 + v22;
      if (v14 == (v14 & 0x7FFFFFFE))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v19 = 0;
      v20 = 1;
    }

    do
    {
      v33 = *(*(v17 + 8 * v20) + 32);
      if (v33)
      {
        v34 = *(*(v17 + 8 * v20) + 32);
      }

      else
      {
        v34 = &off_2734B00;
      }

      v35 = *(v34 + 6);
      if (!v18)
      {
        v18 = &off_2734B00;
      }

      v36 = v35 - *(v18 + 6);
      if (v36 < 0)
      {
        v36 = -v36;
      }

      v19 += v36;
      ++v20;
      v18 = v33;
    }

    while (v4 != v20);
LABEL_40:
    v15 = v19;
  }

  v37 = v14;
  v38 = log2(fmax(v15 / v14 * *(a1 + 256), 2.0));
  *(v8 + 60) = 2;
  *(v8 + 16) = v13 | 5;
  v39 = *(v8 + 8);
  v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
  if (v39)
  {
    v40 = *v40;
  }

  v41 = sub_194DB04((v8 + 48), v40);
  sub_121100C(v274, v41);
  sub_1211014(v274, ((ceil(v38) + 2.0) * v37 * 0.125));
  v42 = vcvtad_u64_f64(v38);
  sub_1211100(v274, *(a1 + 252), v42);
  v266 = a1;
  v268 = v5;
  if (v4 >= 2)
  {
    v43 = 0;
    v44 = *(*(*(a2 + 40) + 8) + 32);
    if (!v44)
    {
      v44 = &off_2734B00;
    }

    v45 = *(v44 + 6) >> 31;
    for (i = 1; i != v4; ++i)
    {
      v47 = *(v273 + 40) + 8;
      v48 = *(*(v47 + 8 * i) + 32);
      if (!v48)
      {
        v48 = &off_2734B00;
      }

      v49 = *(v48 + 6);
      v50 = *(*(v47 + 8 * (i - 1)) + 32);
      if (!v50)
      {
        v50 = &off_2734B00;
      }

      v51 = *(v50 + 6);
      v52 = v49 - v51;
      if (((v45 ^ (v49 >= v51)) & 1) == 0)
      {
        v53 = i - v43;
        v54 = *(v8 + 24);
        if (v54 == *(v8 + 28))
        {
          v55 = v54 + 1;
          sub_1958E5C(v270, v54 + 1);
          *(*(v8 + 32) + 4 * v54) = v53;
        }

        else
        {
          *(*(v8 + 32) + 4 * v54) = v53;
          v55 = v54 + 1;
        }

        *v270 = v55;
        v45 ^= 1u;
        v43 = i;
      }

      if (v52 >= 0)
      {
        LODWORD(v56) = v52;
      }

      else
      {
        v56 = -v52;
      }

      sub_1211220(v274, v42, v56);
    }
  }

  sub_1211378(v274);
  *(v268 + 16) |= 1u;
  v57 = *(v268 + 24);
  v58 = v273;
  if (!v57)
  {
    v59 = *(v268 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    v57 = sub_1215DEC(v60);
    *(v268 + 24) = v57;
  }

  *(v57 + 60) = 0;
  *(v57 + 16) &= ~4u;
  v61 = *(v273 + 32);
  *(v268 + 16) |= 2u;
  v62 = *(v268 + 32);
  if (!v62)
  {
    v63 = *(v268 + 8);
    v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
    if (v63)
    {
      v64 = *v64;
    }

    v62 = sub_1215DEC(v64);
    *(v268 + 32) = v62;
    v58 = v273;
  }

  v65 = *(*(*(v58 + 40) + 8) + 32);
  if (!v65)
  {
    v65 = &off_2734B00;
  }

  v66 = *(v65 + 7);
  *(v62 + 16) |= 2u;
  *(v62 + 56) = v66;
  sub_194EC04((v62 + 48));
  *(v62 + 24) = 0;
  v67 = *(v62 + 16);
  v271 = (v62 + 24);
  *(v62 + 16) = v67 & 0xFFFFFFFE;
  v68 = v61 - 1;
  v69 = 0.0;
  if (v61 >= 2)
  {
    v70 = *(v273 + 40);
    v71 = v70 + 8;
    v72 = *(*(v70 + 8) + 32);
    if (v61 + 0x7FFFFFFF >= 0x80000002)
    {
      v75 = 0;
      v76 = 0;
      v74 = v68 | 1;
      v77 = v70 + 24;
      v78 = v68 & 0x7FFFFFFE;
      do
      {
        v79 = v72;
        v72 = *(*v77 + 32);
        if (*(*(v77 - 8) + 32))
        {
          v80 = *(*(v77 - 8) + 32);
        }

        else
        {
          v80 = &off_2734B00;
        }

        if (v72)
        {
          v81 = *(*v77 + 32);
        }

        else
        {
          v81 = &off_2734B00;
        }

        v82 = *(v80 + 7);
        v83 = *(v81 + 7);
        if (!v79)
        {
          v79 = &off_2734B00;
        }

        v84 = v82 - *(v79 + 7);
        v85 = v83 - v82;
        if (v84 < 0)
        {
          v84 = -v84;
        }

        if (v85 < 0)
        {
          v85 = -v85;
        }

        v75 += v84;
        v76 += v85;
        v77 += 16;
        v78 -= 2;
      }

      while (v78);
      v73 = v76 + v75;
      if (v68 == (v68 & 0x7FFFFFFE))
      {
        goto LABEL_96;
      }
    }

    else
    {
      v73 = 0;
      v74 = 1;
    }

    do
    {
      v86 = *(*(v71 + 8 * v74) + 32);
      if (v86)
      {
        v87 = *(*(v71 + 8 * v74) + 32);
      }

      else
      {
        v87 = &off_2734B00;
      }

      v88 = *(v87 + 7);
      if (!v72)
      {
        v72 = &off_2734B00;
      }

      v89 = v88 - *(v72 + 7);
      if (v89 < 0)
      {
        v89 = -v89;
      }

      v73 += v89;
      ++v74;
      v72 = v86;
    }

    while (v61 != v74);
LABEL_96:
    v69 = v73;
  }

  v90 = v68;
  v91 = log2(fmax(v69 / v68 * *(v266 + 256), 2.0));
  *(v62 + 60) = 2;
  *(v62 + 16) = v67 | 5;
  v92 = *(v62 + 8);
  v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
  if (v92)
  {
    v93 = *v93;
  }

  v94 = sub_194DB04((v62 + 48), v93);
  sub_121100C(v274, v94);
  sub_1211014(v274, ((ceil(v91) + 2.0) * v90 * 0.125));
  v95 = vcvtad_u64_f64(v91);
  sub_1211100(v274, *(v266 + 252), v95);
  if (v61 >= 2)
  {
    v96 = 0;
    v97 = *(*(*(v273 + 40) + 8) + 32);
    if (!v97)
    {
      v97 = &off_2734B00;
    }

    v98 = *(v97 + 7) >> 31;
    for (j = 1; j != v61; ++j)
    {
      v100 = *(v273 + 40) + 8;
      v101 = *(*(v100 + 8 * j) + 32);
      if (!v101)
      {
        v101 = &off_2734B00;
      }

      v102 = *(v101 + 7);
      v103 = *(*(v100 + 8 * (j - 1)) + 32);
      if (!v103)
      {
        v103 = &off_2734B00;
      }

      v104 = *(v103 + 7);
      v105 = v102 - v104;
      if (((v98 ^ (v102 >= v104)) & 1) == 0)
      {
        v106 = j - v96;
        v107 = *(v62 + 24);
        if (v107 == *(v62 + 28))
        {
          v108 = v107 + 1;
          sub_1958E5C(v271, v107 + 1);
          *(*(v62 + 32) + 4 * v107) = v106;
        }

        else
        {
          *(*(v62 + 32) + 4 * v107) = v106;
          v108 = v107 + 1;
        }

        *v271 = v108;
        v98 ^= 1u;
        v96 = j;
      }

      if (v105 >= 0)
      {
        LODWORD(v109) = v105;
      }

      else
      {
        v109 = -v105;
      }

      sub_1211220(v274, v95, v109);
    }
  }

  sub_1211378(v274);
  *(v268 + 16) |= 2u;
  v110 = *(v268 + 32);
  v111 = v273;
  if (!v110)
  {
    v112 = *(v268 + 8);
    v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
    if (v112)
    {
      v113 = *v113;
    }

    v110 = sub_1215DEC(v113);
    *(v268 + 32) = v110;
  }

  *(v110 + 60) = 0;
  *(v110 + 16) &= ~4u;
  v114 = *(*(v273 + 40) + 8);
  if ((*(v114 + 16) & 0x10) == 0)
  {
    v115 = *(v268 + 40);
    if (v115)
    {
      sub_1211D84(v115);
    }

    goto LABEL_155;
  }

  v116 = *(v273 + 32);
  *(v268 + 16) |= 4u;
  v117 = *(v268 + 40);
  if (!v117)
  {
    v118 = *(v268 + 8);
    v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
    if (v118)
    {
      v119 = *v119;
    }

    v117 = sub_1215DEC(v119);
    *(v268 + 40) = v117;
    v114 = *(*(v273 + 40) + 8);
  }

  v120 = *(v114 + 56);
  *(v117 + 16) |= 2u;
  *(v117 + 56) = v120;
  sub_194EC04((v117 + 48));
  v121 = *(v117 + 16);
  *(v117 + 16) = v121 & 0xFFFFFFFE;
  *(v117 + 24) = 0;
  v122 = v116 - 1;
  v123 = 0.0;
  if (v116 >= 2)
  {
    v124 = *(v273 + 40);
    v125 = v124 + 8;
    LODWORD(v126) = *(*(v124 + 8) + 56);
    if (v116 + 0x7FFFFFFF >= 0x80000002)
    {
      v129 = 0;
      v130 = 0;
      v128 = v122 | 1;
      v131 = v124 + 24;
      v132 = v122 & 0x7FFFFFFE;
      do
      {
        v133 = *(*(v131 - 8) + 56);
        v134 = v133 - v126;
        v126 = *(*v131 + 56);
        v135 = v126 - v133;
        if (v134 >= 0)
        {
          v136 = v134;
        }

        else
        {
          v136 = -v134;
        }

        if (v135 < 0)
        {
          v135 = -v135;
        }

        v129 += v136;
        v130 += v135;
        v131 += 16;
        v132 -= 2;
      }

      while (v132);
      v127 = v130 + v129;
      if (v122 == (v122 & 0x7FFFFFFE))
      {
        goto LABEL_141;
      }
    }

    else
    {
      v127 = 0;
      v128 = 1;
    }

    do
    {
      v137 = *(*(v125 + 8 * v128) + 56);
      v126 = v137 - v126;
      if (v126 < 0)
      {
        v126 = -v126;
      }

      v127 += v126;
      ++v128;
      LODWORD(v126) = v137;
    }

    while (v116 != v128);
LABEL_141:
    v123 = v127;
  }

  v138 = v122;
  v139 = log2(fmax(v123 / v122 * *(v266 + 256), 2.0));
  *(v117 + 60) = 1;
  *(v117 + 16) = v121 | 5;
  v140 = *(v117 + 8);
  v141 = (v140 & 0xFFFFFFFFFFFFFFFCLL);
  if (v140)
  {
    v141 = *v141;
  }

  v142 = sub_194DB04((v117 + 48), v141);
  v111 = v273;
  sub_121100C(v274, v142);
  sub_1211014(v274, ((ceil(v139) + 2.0 + 1.0) * v138 * 0.125));
  v143 = vcvtad_u64_f64(v139);
  sub_1211100(v274, *(v266 + 252), v143);
  if (v116 >= 2)
  {
    for (k = 1; k != v116; ++k)
    {
      v145 = *(*(*(v273 + 40) + 8 + 8 * k) + 56) - *(*(*(v273 + 40) + 8 + 8 * (k - 1)) + 56);
      sub_1211100(v274, 1u, *(*(*(v273 + 40) + 8 + 8 * k) + 56) < *(*(*(v273 + 40) + 8 + 8 * (k - 1)) + 56));
      if (v145 >= 0)
      {
        LODWORD(v146) = v145;
      }

      else
      {
        v146 = -v145;
      }

      sub_1211220(v274, v143, v146);
    }
  }

  sub_1211378(v274);
  *(v268 + 16) |= 4u;
  v147 = *(v268 + 40);
  if (!v147)
  {
    v148 = *(v268 + 8);
    v149 = (v148 & 0xFFFFFFFFFFFFFFFCLL);
    if (v148)
    {
      v149 = *v149;
    }

    v147 = sub_1215DEC(v149);
    *(v268 + 40) = v147;
  }

  *(v147 + 60) = 0;
  v264 = (v147 + 16);
LABEL_155:
  *v264 &= ~4u;
  v150 = v280 | 2;
  v280 |= 2u;
  v151 = v282;
  if (!v282)
  {
    v153 = (v279 & 0xFFFFFFFFFFFFFFFCLL);
    if (v279)
    {
      v153 = *v153;
    }

    sub_1215FBC(v153);
    v151 = v154;
    v282 = v154;
    v280 |= 4u;
    v152 = v283;
    if (v283)
    {
      goto LABEL_164;
    }

    goto LABEL_161;
  }

  v280 = v150 | 4;
  v152 = v283;
  if (!v283)
  {
LABEL_161:
    v155 = (v279 & 0xFFFFFFFFFFFFFFFCLL);
    if (v279)
    {
      v155 = *v155;
    }

    v152 = sub_1216124(v155);
    v283 = v152;
  }

LABEL_164:
  v275 = 0u;
  v276 = 0u;
  *v274 = 0u;
  v156 = *(v111 + 40);
  if (v156)
  {
    v157 = (v156 + 8);
  }

  else
  {
    v157 = 0;
  }

  v158 = *(v111 + 32);
  __dst = v274;
  if (!v158)
  {
    goto LABEL_198;
  }

  v159 = 8 * v158;
  do
  {
    sub_1210BE0(&__dst, *v157++);
    v159 -= 8;
  }

  while (v159);
  v160 = v276;
  v161 = v274[0];
  v162 = v274[1];
  if (*(&v275 + 1) == v276)
  {
    goto LABEL_197;
  }

  v163 = -1431655765 * ((v274[1] - v274[0]) >> 3);
  v164 = v276 - *(&v275 + 1) - 4;
  v165 = *(&v275 + 1);
  if (v164 < 0x1C)
  {
    do
    {
LABEL_194:
      if (*v165 == -1)
      {
        *v165 = v163;
      }

      ++v165;
    }

    while (v165 != v160);
    goto LABEL_197;
  }

  v166 = (v164 >> 2) + 1;
  v165 = (*(&v275 + 1) + 4 * (v166 & 0x7FFFFFFFFFFFFFF8));
  v167 = (*(&v275 + 1) + 16);
  v168.i64[0] = -1;
  v168.i64[1] = -1;
  v169 = v166 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v170 = vmovn_s32(vceqq_s32(v167[-1], v168));
    if (v170.i8[0])
    {
      v167[-1].i32[0] = v163;
      if ((v170.i8[2] & 1) == 0)
      {
LABEL_176:
        if ((v170.i8[4] & 1) == 0)
        {
          goto LABEL_177;
        }

        goto LABEL_185;
      }
    }

    else if ((v170.i8[2] & 1) == 0)
    {
      goto LABEL_176;
    }

    v167[-1].i32[1] = v163;
    if ((v170.i8[4] & 1) == 0)
    {
LABEL_177:
      if ((v170.i8[6] & 1) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_186;
    }

LABEL_185:
    v167[-1].i32[2] = v163;
    if ((v170.i8[6] & 1) == 0)
    {
LABEL_178:
      v171 = vmovn_s32(vceqq_s32(*v167, v168));
      if ((v171.i8[0] & 1) == 0)
      {
        goto LABEL_179;
      }

      goto LABEL_187;
    }

LABEL_186:
    v167[-1].i32[3] = v163;
    v171 = vmovn_s32(vceqq_s32(*v167, v168));
    if ((v171.i8[0] & 1) == 0)
    {
LABEL_179:
      if ((v171.i8[2] & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_188;
    }

LABEL_187:
    v167->i32[0] = v163;
    if ((v171.i8[2] & 1) == 0)
    {
LABEL_180:
      if (v171.i8[4])
      {
        goto LABEL_189;
      }

      goto LABEL_181;
    }

LABEL_188:
    v167->i32[1] = v163;
    if (v171.i8[4])
    {
LABEL_189:
      v167->i32[2] = v163;
      if ((v171.i8[6] & 1) == 0)
      {
        goto LABEL_173;
      }

      goto LABEL_190;
    }

LABEL_181:
    if ((v171.i8[6] & 1) == 0)
    {
      goto LABEL_173;
    }

LABEL_190:
    v167->i32[3] = v163;
LABEL_173:
    v167 += 2;
    v169 -= 8;
  }

  while (v169);
  if (v166 != (v166 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_194;
  }

LABEL_197:
  while (v161 != v162)
  {
    sub_120F614(v151, v161);
    v161 = (v161 + 24);
  }

LABEL_198:
  v172 = *(*(*(v111 + 40) + 8) + 48);
  v173 = *(v151 + 16);
  v260 = v172;
  if (v173 == *(v151 + 20))
  {
    v174 = v173 + 1;
    sub_1958E5C((v151 + 16), v173 + 1);
    *(*(v151 + 24) + 4 * v173) = 0;
    v111 = v273;
    v172 = v260;
    v176 = (v151 + 40);
    v175 = *(v151 + 40);
    *(v151 + 16) = v174;
    if (v175 != *(v151 + 44))
    {
      goto LABEL_200;
    }

LABEL_203:
    v182 = v175 + 1;
    sub_1959094(v176, v175 + 1);
    *(*(v151 + 48) + 8 * v175) = v260;
    v111 = v273;
    v179 = (v151 + 136);
    v178 = *(v151 + 136);
    *(v151 + 40) = v182;
    if (v178 != *(v151 + 140))
    {
      goto LABEL_204;
    }

LABEL_201:
    v180 = v178 + 1;
    sub_1958E5C(v179, v178 + 1);
    *(*(v151 + 144) + 4 * v178) = 0;
    v111 = v273;
  }

  else
  {
    *(*(v151 + 24) + 4 * v173) = 0;
    v181 = v173 + 1;
    v176 = (v151 + 40);
    v175 = *(v151 + 40);
    *(v151 + 16) = v181;
    if (v175 == *(v151 + 44))
    {
      goto LABEL_203;
    }

LABEL_200:
    *(*(v151 + 48) + 8 * v175) = v172;
    v177 = v175 + 1;
    v179 = (v151 + 136);
    v178 = *(v151 + 136);
    *(v151 + 40) = v177;
    if (v178 == *(v151 + 140))
    {
      goto LABEL_201;
    }

LABEL_204:
    *(*(v151 + 144) + 4 * v178) = 0;
    v180 = v178 + 1;
  }

  v183 = *(v151 + 64);
  *(v151 + 136) = v180;
  v184 = *(*(v111 + 40) + 8);
  v185 = *(v184 + 60);
  if (v183 == *(v151 + 68))
  {
    v186 = v183 + 1;
    sub_1958E5C((v151 + 64), v183 + 1);
    *(*(v151 + 72) + 4 * v183) = v185;
    v184 = *(*(v273 + 40) + 8);
  }

  else
  {
    *(*(v151 + 72) + 4 * v183) = v185;
    v186 = v183 + 1;
  }

  v187 = *(v151 + 88);
  *(v151 + 64) = v186;
  v188 = *(v184 + 64);
  if (v187 == *(v151 + 92))
  {
    v189 = v187 + 1;
    sub_1958E5C((v151 + 88), v187 + 1);
    *(*(v151 + 96) + 4 * v187) = v188;
    v184 = *(*(v273 + 40) + 8);
  }

  else
  {
    *(*(v151 + 96) + 4 * v187) = v188;
    v189 = v187 + 1;
  }

  v190 = (v151 + 112);
  v191 = *(v151 + 112);
  *(v151 + 88) = v189;
  v192 = *(v184 + 68);
  if (v191 == *(v151 + 116))
  {
    sub_1958E5C(v190, v191 + 1);
    *(*(v151 + 120) + 4 * v191) = v192;
    v184 = *(*(v273 + 40) + 8);
    *(v151 + 112) = v191 + 1;
    v269 = (v151 + 112);
    if (*(v184 + 76) != 1)
    {
LABEL_217:
      v195 = *(v184 + 80);
      if (!v195)
      {
        goto LABEL_226;
      }

LABEL_220:
      v196 = *(v151 + 232);
      if (v196 == *(v151 + 236))
      {
        sub_1958E5C((v151 + 232), v196 + 1);
        *(*(v151 + 240) + 4 * v196) = 0;
        *(v151 + 232) = v196 + 1;
        v197 = (v151 + 256);
        v198 = *(v151 + 256);
        if (v198 != *(v151 + 260))
        {
          goto LABEL_222;
        }

LABEL_224:
        v199 = v198 + 1;
        sub_1958E5C(v197, v198 + 1);
        *(*(v151 + 264) + 4 * v198) = v195;
      }

      else
      {
        *(*(v151 + 240) + 4 * v196) = 0;
        *(v151 + 232) = v196 + 1;
        v197 = (v151 + 256);
        v198 = *(v151 + 256);
        if (v198 == *(v151 + 260))
        {
          goto LABEL_224;
        }

LABEL_222:
        *(*(v151 + 264) + 4 * v198) = v195;
        v199 = v198 + 1;
      }

      *v197 = v199;
      goto LABEL_226;
    }
  }

  else
  {
    *(*(v151 + 120) + 4 * v191) = v192;
    *v190 = v191 + 1;
    v269 = (v151 + 112);
    if (*(v184 + 76) != 1)
    {
      goto LABEL_217;
    }
  }

  v194 = *(v151 + 160);
  v193 = (v151 + 160);
  if (v194 == *(v151 + 164))
  {
    sub_1958E5C((v151 + 160), v194 + 1);
    *(*(v151 + 168) + 4 * v194) = 0;
    v184 = *(*(v273 + 40) + 8);
    *v193 = v194 + 1;
    goto LABEL_217;
  }

  *(*(v151 + 168) + 4 * v194) = 0;
  *v193 = v194 + 1;
  v195 = *(v184 + 80);
  if (v195)
  {
    goto LABEL_220;
  }

LABEL_226:
  v200 = **(&v275 + 1);
  v201 = *(v151 + 208);
  v272 = (v151 + 208);
  if (v201 == *(v151 + 212))
  {
    v202 = v201 + 1;
    sub_1958E5C((v151 + 208), v201 + 1);
    *(*(v151 + 216) + 4 * v201) = v200;
    v203 = v273;
    *v272 = v202;
    if ((*(*(*(v273 + 40) + 8) + 16) & 4) == 0)
    {
      goto LABEL_241;
    }
  }

  else
  {
    *(*(v151 + 216) + 4 * v201) = v200;
    v204 = v201 + 1;
    v203 = v273;
    *v272 = v204;
    if ((*(*(*(v273 + 40) + 8) + 16) & 4) == 0)
    {
      goto LABEL_241;
    }
  }

  v205 = *(v152 + 16);
  if (v205 == *(v152 + 20))
  {
    sub_1958E5C((v152 + 16), v205 + 1);
    *(*(v152 + 24) + 4 * v205) = 0;
    *(v152 + 16) = v205 + 1;
    v206 = *(v152 + 56);
    if (!v206)
    {
LABEL_236:
      v209 = sub_1219678(*(v152 + 40));
      v208 = sub_19593CC(v152 + 40, v209);
      goto LABEL_237;
    }
  }

  else
  {
    *(*(v152 + 24) + 4 * v205) = 0;
    *(v152 + 16) = v205 + 1;
    v206 = *(v152 + 56);
    if (!v206)
    {
      goto LABEL_236;
    }
  }

  v207 = *(v152 + 48);
  if (v207 >= *v206)
  {
    goto LABEL_236;
  }

  *(v152 + 48) = v207 + 1;
  v208 = *&v206[2 * v207 + 2];
LABEL_237:
  if (*(*(*(v203 + 40) + 8) + 40))
  {
    v210 = *(*(*(v203 + 40) + 8) + 40);
  }

  else
  {
    v210 = &off_2734B20;
  }

  sub_1217268(v208, v210);
LABEL_241:
  v261 = v179;
  v262 = v176;
  v211 = v260;
  if (*(v203 + 32) >= 2)
  {
    v212 = 0;
    v265 = 0;
    v267 = 0;
    v213 = 0;
    v263 = (v151 + 256);
    do
    {
      v216 = *(v203 + 40);
      v217 = *(v216 + 8 * v212 + 16);
      if (*(v217 + 84) != 1)
      {
        v214 = v195;
        goto LABEL_244;
      }

      v218 = v212 + 1;
      v219 = v212 + 1 - v213;
      v220 = *(v151 + 16);
      if (v220 == *(v151 + 20))
      {
        sub_1958E5C((v151 + 16), v220 + 1);
        *(*(v151 + 24) + 4 * v220) = v219;
        v216 = *(v273 + 40);
        v217 = *(v216 + 8 * v212 + 16);
        *(v151 + 16) = v220 + 1;
        v221 = *(v217 + 48) - v211;
        v222 = *(v151 + 40);
        if (v222 != *(v151 + 44))
        {
          goto LABEL_248;
        }
      }

      else
      {
        *(*(v151 + 24) + 4 * v220) = v219;
        *(v151 + 16) = v220 + 1;
        v221 = *(v217 + 48) - v211;
        v222 = *(v151 + 40);
        if (v222 != *(v151 + 44))
        {
LABEL_248:
          *(*(v151 + 48) + 8 * v222) = v221;
          v223 = v222 + 1;
          goto LABEL_251;
        }
      }

      v223 = v222 + 1;
      sub_1959094(v262, v222 + 1);
      *(*(v151 + 48) + 8 * v222) = v221;
      v216 = *(v273 + 40);
      v217 = *(v216 + 8 * v212 + 16);
LABEL_251:
      *(v151 + 40) = v223;
      v224 = *(v217 + 72) - *(*(v216 + 8 * v213 + 8) + 72);
      v225 = *(v151 + 136);
      if (v225 == *(v151 + 140))
      {
        sub_1958E5C(v261, v225 + 1);
        *(*(v151 + 144) + 4 * v225) = v224;
        v217 = *(*(v273 + 40) + 8 * v212 + 16);
        *(v151 + 136) = v225 + 1;
        v226 = *(v217 + 60);
        v227 = *(v151 + 64);
        if (v227 != *(v151 + 68))
        {
          goto LABEL_253;
        }
      }

      else
      {
        *(*(v151 + 144) + 4 * v225) = v224;
        *(v151 + 136) = v225 + 1;
        v226 = *(v217 + 60);
        v227 = *(v151 + 64);
        if (v227 != *(v151 + 68))
        {
LABEL_253:
          *(*(v151 + 72) + 4 * v227) = v226;
          *(v151 + 64) = v227 + 1;
          v228 = *(v217 + 64);
          v229 = *(v151 + 88);
          if (v229 == *(v151 + 92))
          {
            goto LABEL_254;
          }

          goto LABEL_260;
        }
      }

      sub_1958E5C((v151 + 64), v227 + 1);
      *(*(v151 + 72) + 4 * v227) = v226;
      v217 = *(*(v273 + 40) + 8 * v212 + 16);
      *(v151 + 64) = v227 + 1;
      v228 = *(v217 + 64);
      v229 = *(v151 + 88);
      if (v229 == *(v151 + 92))
      {
LABEL_254:
        sub_1958E5C((v151 + 88), v229 + 1);
        *(*(v151 + 96) + 4 * v229) = v228;
        v217 = *(*(v273 + 40) + 8 * v212 + 16);
        *(v151 + 88) = v229 + 1;
        v230 = *(v217 + 68);
        v231 = *(v151 + 112);
        if (v231 != *(v151 + 116))
        {
          goto LABEL_255;
        }

        goto LABEL_261;
      }

LABEL_260:
      *(*(v151 + 96) + 4 * v229) = v228;
      *(v151 + 88) = v229 + 1;
      v230 = *(v217 + 68);
      v231 = *(v151 + 112);
      if (v231 != *(v151 + 116))
      {
LABEL_255:
        *(*(v151 + 120) + 4 * v231) = v230;
        *v269 = v231 + 1;
        if (*(v217 + 76) != 1)
        {
          goto LABEL_256;
        }

        goto LABEL_262;
      }

LABEL_261:
      sub_1958E5C(v269, v231 + 1);
      *(*(v151 + 120) + 4 * v231) = v230;
      v217 = *(*(v273 + 40) + 8 * v212 + 16);
      *v269 = v231 + 1;
      if (*(v217 + 76) != 1)
      {
LABEL_256:
        v214 = *(v217 + 80);
        if (v214 != v195)
        {
          goto LABEL_266;
        }

        goto LABEL_257;
      }

LABEL_262:
      v232 = *(v151 + 160);
      if (v232 == *(v151 + 164))
      {
        sub_1958E5C((v151 + 160), v232 + 1);
        *(*(v151 + 168) + 4 * v232) = v218;
        v233 = *(*(v273 + 40) + 8 * v212 + 16);
        *(v151 + 160) = v232 + 1;
        v214 = *(v233 + 80);
        if (v214 != v195)
        {
          goto LABEL_266;
        }
      }

      else
      {
        *(*(v151 + 168) + 4 * v232) = v218;
        *(v151 + 160) = v232 + 1;
        v214 = *(v217 + 80);
        if (v214 != v195)
        {
LABEL_266:
          v234 = v212 - v267 + 1;
          v235 = *(v151 + 232);
          if (v235 == *(v151 + 236))
          {
            sub_1958E5C((v151 + 232), v235 + 1);
            *(*(v151 + 240) + 4 * v235) = v234;
            *(v151 + 232) = v235 + 1;
            v236 = *(v151 + 256);
            if (v236 != *(v151 + 260))
            {
              goto LABEL_268;
            }

LABEL_270:
            v237 = v236 + 1;
            sub_1958E5C(v263, v236 + 1);
            *(*(v151 + 264) + 4 * v236) = v214;
          }

          else
          {
            *(*(v151 + 240) + 4 * v235) = v234;
            *(v151 + 232) = v235 + 1;
            v236 = *(v151 + 256);
            if (v236 == *(v151 + 260))
            {
              goto LABEL_270;
            }

LABEL_268:
            *(*(v151 + 264) + 4 * v236) = v214;
            v237 = v236 + 1;
          }

          *v263 = v237;
          v267 = v212 + 1;
          goto LABEL_272;
        }
      }

LABEL_257:
      v214 = v195;
LABEL_272:
      v238 = (v151 + 208);
      v239 = *(v151 + 208);
      v240 = v239;
      v241 = *(*(&v275 + 1) + 4 * v239) - *(*(&v275 + 1) + 4 * v239 - 4);
      if (v239 == *(v151 + 212))
      {
        v242 = v239 + 1;
        sub_1958E5C(v272, v239 + 1);
        *(*(v151 + 216) + 4 * v240) = v241;
        v238 = (v151 + 208);
      }

      else
      {
        *(*(v151 + 216) + 4 * v239) = v241;
        v242 = v239 + 1;
      }

      *v238 = v242;
      v203 = v273;
      v243 = *(*(v273 + 40) + 8 * v212 + 16);
      v211 = *(v243 + 48);
      if ((*(v243 + 16) & 4) != 0)
      {
        v244 = v212 - v265 + 1;
        v245 = *(v152 + 16);
        if (v245 == *(v152 + 20))
        {
          sub_1958E5C((v152 + 16), v245 + 1);
          *(*(v152 + 24) + 4 * v245) = v244;
          *(v152 + 16) = v245 + 1;
          v246 = *(v152 + 56);
          if (!v246)
          {
LABEL_283:
            v249 = sub_1219678(*(v152 + 40));
            v248 = sub_19593CC(v152 + 40, v249);
            goto LABEL_284;
          }
        }

        else
        {
          *(*(v152 + 24) + 4 * v245) = v244;
          *(v152 + 16) = v245 + 1;
          v246 = *(v152 + 56);
          if (!v246)
          {
            goto LABEL_283;
          }
        }

        v247 = *(v152 + 48);
        if (v247 >= *v246)
        {
          goto LABEL_283;
        }

        *(v152 + 48) = v247 + 1;
        v248 = *&v246[2 * v247 + 2];
LABEL_284:
        if (*(*(*(v273 + 40) + 8 * v212 + 16) + 40))
        {
          v250 = *(*(*(v273 + 40) + 8 * v212 + 16) + 40);
        }

        else
        {
          v250 = &off_2734B20;
        }

        sub_1217268(v248, v250);
        v213 = v212 + 1;
        v265 = v212 + 1;
        v203 = v273;
        goto LABEL_244;
      }

      v213 = v212 + 1;
LABEL_244:
      v215 = v212 + 2;
      ++v212;
      v195 = v214;
    }

    while (v215 < *(v203 + 32));
  }

  *(v203 + 16) |= 1u;
  v251 = *(v203 + 8);
  v252 = (v251 & 0xFFFFFFFFFFFFFFFCLL);
  if (v251)
  {
    v252 = *v252;
  }

  v253 = sub_194DB04((v203 + 48), v252);
  sub_194DAE0(&v278, v253);
  v254 = *(v203 + 32);
  if (v254 >= 1)
  {
    v255 = (*(v203 + 40) + 8);
    do
    {
      sub_1217688(*v255++);
      --v254;
    }

    while (v254);
    *(v203 + 32) = 0;
  }

  if (*(&v275 + 1))
  {
    *&v276 = *(&v275 + 1);
    operator delete(*(&v275 + 1));
  }

  v256 = v274[0];
  if (v274[0])
  {
    v257 = v274[1];
    v258 = v274[0];
    if (v274[1] != v274[0])
    {
      do
      {
        v259 = *(v257 - 1);
        v257 -= 3;
        if (v259 < 0)
        {
          operator delete(*v257);
        }
      }

      while (v257 != v256);
      v258 = v274[0];
    }

    v274[1] = v256;
    operator delete(v258);
  }

  return sub_12155AC(&v278);
}

void sub_120F4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      sub_1959728(&a37);
      _Unwind_Resume(a1);
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a21);
  sub_1959728(&a37);
  _Unwind_Resume(a1);
}

void sub_120F558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1210B5C(&a21);
  sub_12155AC(&a31);
  _Unwind_Resume(a1);
}

__int128 *sub_120F614(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 200);
  if (v4)
  {
    v5 = *(a1 + 192);
    if (v5 < *v4)
    {
      *(a1 + 192) = v5 + 1;
      result = *&v4[2 * v5 + 2];
      if (result == a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v7 = *(a1 + 184);
  if (!v7)
  {
    operator new();
  }

  *v9 = v8;
  v9[1] = sub_195A650;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_19593CC(a1 + 184, v8);
  if (result != a2)
  {
LABEL_9:
    v10 = *(a2 + 23);
    if (*(result + 23) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 1);
      }

      return sub_13B38(result, v12, v13);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v14 = *a2;
      v15 = *(a2 + 1);

      return sub_13A68(result, v14, v15);
    }

    else
    {
      v11 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v11;
    }
  }

  return result;
}

uint64_t sub_120F74C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) < 1)
  {
    sub_1215458(&v108, 0, 0);
    if ((sub_194DB28(&v108, *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
    {
      if (sub_1211B74())
      {
        sub_19594F8(&v115);
        sub_4A5C(&v115, "Could not parse the compressed_path bytes into a CompressedPath message.", 72);
        operator new();
      }

      return sub_12155AC(&v108);
    }

    v5 = v114;
    sub_1959254(a2 + 24, v114);
    if (v112)
    {
      v6 = v112;
    }

    else
    {
      v6 = &off_2734968;
    }

    if (v113)
    {
      v7 = v113;
    }

    else
    {
      v7 = &off_2734A80;
    }

    if (*(v6 + 4) < 2)
    {
      return sub_12155AC(&v108);
    }

    v8 = *v6[6];
    v9 = *v6[18];
    v10 = *(a2 + 40);
    if (v10 && (v11 = *(a2 + 32), v11 < *v10))
    {
      *(a2 + 32) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      sub_12196F4(*(a2 + 24));
      v12 = sub_19593CC(a2 + 24, v13);
    }

    v14 = *(v12 + 16);
    *(v12 + 16) = v14 | 8;
    *(v12 + 48) = v8;
    v15 = *v6[9];
    *(v12 + 16) = v14 | 0x28;
    *(v12 + 60) = v15;
    v16 = *v6[12];
    *(v12 + 16) = v14 | 0x68;
    *(v12 + 64) = v16;
    *(v12 + 68) = *v6[15];
    *(v12 + 72) = v9;
    v17 = v14 | 0x9E8;
    *(v12 + 16) = v14 | 0x9E8;
    *(v12 + 84) = 1;
    if (*(v6 + 40) < 1 || *v6[21])
    {
      v18 = 0;
      v100 = a1;
      if (*(v6 + 58) < 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = v14 | 0xBE8;
      *(v12 + 16) = v14 | 0xBE8;
      v18 = 1;
      *(v12 + 76) = 1;
      v100 = a1;
      if (*(v6 + 58) < 1)
      {
        goto LABEL_24;
      }
    }

    if (!*v6[30])
    {
      v19 = *v6[33];
      v20 = 1;
LABEL_26:
      *(v12 + 16) = v17 | 0x400;
      v103 = v19;
      *(v12 + 80) = v19;
      if (*(v6 + 52) < 1)
      {
        v21 = 0;
        v102 = v7;
        v99 = (a2 + 48);
        v105 = v18;
        if (*(v7 + 4) < 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v21 = *v6[27];
        if (v21 < *(v6 + 48))
        {
          v22 = v6[25][v21 + 1];
          *(v12 + 16) = v17 | 0x401;
          v23 = *(v12 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_194EA1C((v12 + 24), v22, v24);
        }

        v102 = v7;
        v99 = (a2 + 48);
        v105 = v18;
        if (*(v7 + 4) < 1)
        {
          goto LABEL_35;
        }
      }

      if (!*v7[3])
      {
        *(v12 + 16) |= 4u;
        v26 = *(v12 + 40);
        if (!v26)
        {
          v27 = *(v12 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          v26 = sub_1219678(v28);
          *(v12 + 40) = v26;
        }

        sub_1217268(v26, v7[7][1]);
        v25 = 1;
        if (v5 >= 2)
        {
          goto LABEL_42;
        }

LABEL_68:
        v110 |= 1u;
        v46 = v111;
        if (!v111)
        {
          v47 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v47 = *v47;
          }

          sub_1215F40(v47);
          v46 = v48;
          v111 = v48;
        }

        v106 = *(a2 + 32);
        if (*(v46 + 24))
        {
          v49 = *(v46 + 24);
        }

        else
        {
          v49 = &off_27348F8;
        }

        v50 = *(v49 + 14);
        v51 = *(*(a2 + 40) + 8);
        *(v51 + 16) |= 2u;
        v52 = *(v51 + 32);
        if (!v52)
        {
          v53 = *(v51 + 8);
          v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
          if (v53)
          {
            v54 = *v54;
          }

          v52 = sub_1219600(v54);
          *(v51 + 32) = v52;
        }

        *(v52 + 4) |= 1u;
        *(v52 + 6) = v50;
        sub_121100C(&v115, v49[6] & 0xFFFFFFFFFFFFFFFELL);
        v55 = sub_1211464(&v115, *(v100 + 252));
        v104 = v46;
        if (v106 >= 2)
        {
          v56 = v55;
          v57 = 0;
          v58 = 0;
          v59 = *(v49 + 14);
          v60 = v59 >> 31;
          for (i = 1; i != v106; ++i)
          {
            if (v57 < *(v49 + 6) && i - v58 == *(v49[4] + v57))
            {
              LOBYTE(v60) = v60 ^ 1;
              v58 = i;
              ++v57;
            }

            v63 = sub_1211840(&v115, v56);
            if (v60)
            {
              v64 = -v63;
            }

            else
            {
              v64 = v63;
            }

            v65 = *(*(a2 + 40) + 8 * i + 8);
            *(v65 + 16) |= 2u;
            v62 = *(v65 + 32);
            if (!v62)
            {
              v66 = *(v65 + 8);
              v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
              if (v66)
              {
                v67 = *v67;
              }

              v62 = sub_1219600(v67);
              *(v65 + 32) = v62;
            }

            v59 += v64;
            *(v62 + 4) |= 1u;
            *(v62 + 6) = v59;
          }
        }

        v107 = *(a2 + 32);
        if (*(v104 + 32))
        {
          v68 = *(v104 + 32);
        }

        else
        {
          v68 = &off_27348F8;
        }

        v69 = *(v68 + 14);
        v70 = *(*(a2 + 40) + 8);
        *(v70 + 16) |= 2u;
        v71 = *(v70 + 32);
        if (!v71)
        {
          v72 = *(v70 + 8);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          if (v72)
          {
            v73 = *v73;
          }

          v71 = sub_1219600(v73);
          *(v70 + 32) = v71;
        }

        *(v71 + 4) |= 2u;
        *(v71 + 7) = v69;
        sub_121100C(&v115, v68[6] & 0xFFFFFFFFFFFFFFFELL);
        v74 = sub_1211464(&v115, *(v100 + 252));
        if (v107 >= 2)
        {
          v75 = v74;
          v76 = 0;
          v77 = 0;
          v78 = *(v68 + 14);
          v79 = v78 >> 31;
          for (j = 1; j != v107; ++j)
          {
            if (v76 < *(v68 + 6) && j - v77 == *(v68[4] + v76))
            {
              LOBYTE(v79) = v79 ^ 1;
              v77 = j;
              ++v76;
            }

            v81 = sub_1211840(&v115, v75);
            if (v79)
            {
              v82 = -v81;
            }

            else
            {
              v82 = v81;
            }

            v83 = *(*(a2 + 40) + 8 * j + 8);
            *(v83 + 16) |= 2u;
            v84 = *(v83 + 32);
            if (!v84)
            {
              v85 = *(v83 + 8);
              v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
              if (v85)
              {
                v86 = *v86;
              }

              v84 = sub_1219600(v86);
              *(v83 + 32) = v84;
            }

            v78 += v82;
            *(v84 + 4) |= 2u;
            *(v84 + 7) = v78;
          }
        }

        if ((*(v104 + 16) & 4) != 0)
        {
          v87 = *(v104 + 40);
          v88 = *(a2 + 32);
          v89 = *(v87 + 56);
          v90 = *(*(a2 + 40) + 8);
          *(v90 + 16) |= 0x10u;
          *(v90 + 56) = v89;
          sub_121100C(&v115, *(v87 + 48) & 0xFFFFFFFFFFFFFFFELL);
          v91 = sub_1211464(&v115, *(v100 + 252));
          if (v88 >= 2)
          {
            v92 = v91;
            v93 = *(v87 + 56);
            for (k = 1; k != v88; ++k)
            {
              v95 = sub_1211464(&v115, 1u);
              v96 = sub_1211840(&v115, v92);
              if (v95)
              {
                v97 = -v96;
              }

              else
              {
                v97 = v96;
              }

              v93 += v97;
              v98 = *(*(a2 + 40) + 8 * k + 8);
              *(v98 + 16) |= 0x10u;
              *(v98 + 56) = v93;
            }
          }
        }

        sub_194EC04(v99);
        *(a2 + 16) &= ~1u;
        return sub_12155AC(&v108);
      }

LABEL_35:
      v25 = 0;
      if (v5 >= 2)
      {
LABEL_42:
        v101 = 0;
        v29 = 0;
        v30 = 1;
        v31 = 1;
        while (1)
        {
          while (1)
          {
            v32 = *(a2 + 40);
            if (v32)
            {
              v33 = *(a2 + 32);
              if (v33 < *v32)
              {
                break;
              }
            }

            sub_12196F4(*(a2 + 24));
            v34 = sub_19593CC(a2 + 24, v36);
            v35 = *(v34 + 16);
            if (v30 - v29 == *(v6[3] + v31))
            {
              goto LABEL_49;
            }

LABEL_43:
            *(v34 + 16) = v35 | 0x800;
            *(v34 + 84) = 2;
            if (v5 == ++v30)
            {
              goto LABEL_68;
            }
          }

          *(a2 + 32) = v33 + 1;
          v34 = *&v32[2 * v33 + 2];
          v35 = *(v34 + 16);
          if (v30 - v29 != *(v6[3] + v31))
          {
            goto LABEL_43;
          }

LABEL_49:
          *(v34 + 84) = 1;
          v37 = *(*(a2 + 40) + 8 * v29 + 8);
          v38 = v6[6][v31] + *(v37 + 48);
          *(v34 + 16) = v35 | 0x808;
          *(v34 + 48) = v38;
          LODWORD(v38) = *(v6[9] + v31);
          *(v34 + 16) = v35 | 0x828;
          *(v34 + 60) = v38;
          LODWORD(v38) = *(v6[12] + v31);
          *(v34 + 16) = v35 | 0x868;
          *(v34 + 64) = v38;
          LODWORD(v38) = *(v6[15] + v31);
          *(v34 + 16) = v35 | 0x8E8;
          *(v34 + 68) = v38;
          LODWORD(v38) = *(v6[18] + v31) + *(v37 + 72);
          v39 = v35 | 0x9E8;
          *(v34 + 16) = v35 | 0x9E8;
          *(v34 + 72) = v38;
          if (v105 < *(v6 + 40) && v30 == *(v6[21] + v105))
          {
            v39 = v35 | 0xBE8;
            *(v34 + 16) = v35 | 0xBE8;
            *(v34 + 76) = 1;
            ++v105;
          }

          if (v20 < *(v6 + 58) && v30 == *(v6[30] + v20) + HIDWORD(v101))
          {
            v103 = *(v6[33] + v20++);
            HIDWORD(v101) = v30;
          }

          *(v34 + 16) = v39 | 0x400;
          *(v34 + 80) = v103;
          if (v31 < *(v6 + 52))
          {
            v21 += *(v6[27] + v31);
            if (v21 < *(v6 + 48))
            {
              v40 = v6[25][v21 + 1];
              *(v34 + 16) = v39 | 0x401;
              v41 = *(v34 + 8);
              v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
              if (v41)
              {
                v42 = *v42;
              }

              sub_194EA1C((v34 + 24), v40, v42);
            }
          }

          ++v31;
          if (*(v102 + 4) > v25 && v30 == *(v102[3] + v25) + v101)
          {
            *(v34 + 16) |= 4u;
            v43 = *(v34 + 40);
            if (!v43)
            {
              v44 = *(v34 + 8);
              v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
              if (v44)
              {
                v45 = *v45;
              }

              v43 = sub_1219678(v45);
              *(v34 + 40) = v43;
            }

            sub_1217268(v43, v102[7][++v25]);
            LODWORD(v101) = v30;
          }

          v29 = v30++;
          if (v5 == v30)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_68;
    }

LABEL_24:
    v19 = 0;
    v20 = 0;
    goto LABEL_26;
  }

  result = sub_12119FC();
  if (result)
  {
    sub_19594F8(&v115);
    sub_4A5C(&v115, "The input path leg already has a decompressed point list. Skipping decompression.", 81);
    operator new();
  }

  return result;
}

void sub_12105C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_12105D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_12105E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  sub_1959728(&a35);
  sub_12155AC(&a22);
  _Unwind_Resume(a1);
}

void sub_1210678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_121068C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_12106A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_12106B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_12106C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_12106DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if (a24 < 0)
    {
LABEL_5:
      operator delete(a19);
      sub_1959728(&a35);
      _Unwind_Resume(a1);
    }
  }

  else if (a24 < 0)
  {
    goto LABEL_5;
  }

  sub_1959728(&a35);
  _Unwind_Resume(a1);
}

void sub_1210760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_1210774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_1210788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_121079C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

void sub_12107B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_12155AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_12107C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16))
  {
    if (sub_12119FC())
    {
      sub_19594F8(&v7);
      sub_4A5C(&v7, "The input path leg already has a compressed path populated. Skipping compression.", 81);
      operator new();
    }

    return sub_1218C88(a3, a2);
  }

  else
  {
    sub_1218C88(a3, a2);
    return sub_120DBCC(a1, a3);
  }
}

void sub_1210AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      sub_1959728(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void ***sub_1210B5C(void ***a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
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
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

void sub_1210BE0(uint64_t **a1, uint64_t a2)
{
  if (*(a2 + 84) != 1)
  {
    return;
  }

  v3 = *a1;
  if (*(a2 + 16))
  {
    v6 = *v3;
    v7 = v3[1];
    if (*v3 != v7)
    {
      v8 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = v9 >= 0 ? *(v8 + 23) : *(v8 + 8);
      v11 = v9 >= 0 ? (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL) : *v8;
      v12 = *v3;
      v13 = *v3;
      while (1)
      {
        v14 = *(v13 + 23);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(v13 + 8);
        }

        if (v14 == v10)
        {
          v16 = v15 >= 0 ? v13 : *v13;
          if (!memcmp(v16, v11, v10))
          {
            break;
          }
        }

        v13 += 24;
        v12 += 24;
        if (v13 == v7)
        {
          v12 = v7;
          break;
        }
      }

      if (v7 != v12)
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v6) >> 3);
        v25 = v3[4];
        v24 = v3[5];
        if (v25 < v24)
        {
          *v25 = v23;
          v26 = v25 + 4;
LABEL_61:
          v3[4] = v26;
          return;
        }

        v31 = v3[3];
        v32 = v25 - v31;
        v33 = (v25 - v31) >> 2;
        v34 = v33 + 1;
        if ((v33 + 1) >> 62)
        {
          goto LABEL_70;
        }

        v35 = v24 - v31;
        if (v35 >> 1 > v34)
        {
          v34 = v35 >> 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v36 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        if (!v36)
        {
          v47 = (v25 - v31) >> 2;
          v48 = (4 * v33);
          v49 = (4 * v33 - 4 * v47);
          *v48 = v23;
          v26 = v48 + 1;
          memcpy(v49, v31, v32);
          v3[3] = v49;
          v3[4] = v26;
          v3[5] = 0;
          if (v31)
          {
            operator delete(v31);
          }

          goto LABEL_61;
        }

        if (!(v36 >> 62))
        {
          operator new();
        }

LABEL_71:
        sub_1808();
      }
    }

    v27 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
    v29 = v3[4];
    v28 = v3[5];
    if (v29 >= v28)
    {
      v37 = v3[3];
      v38 = v29 - v37;
      v39 = (v29 - v37) >> 2;
      v40 = v39 + 1;
      if ((v39 + 1) >> 62)
      {
        goto LABEL_70;
      }

      v41 = v28 - v37;
      if (v41 >> 1 > v40)
      {
        v40 = v41 >> 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v42 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v40;
      }

      if (v42)
      {
        if (!(v42 >> 62))
        {
          operator new();
        }

        goto LABEL_71;
      }

      v50 = (v29 - v37) >> 2;
      v51 = (4 * v39);
      v52 = (4 * v39 - 4 * v50);
      *v51 = v27;
      v30 = v51 + 1;
      memcpy(v52, v37, v38);
      v3[3] = v52;
      v3[4] = v30;
      v3[5] = 0;
      if (v37)
      {
        operator delete(v37);
      }
    }

    else
    {
      *v29 = v27;
      v30 = v29 + 4;
    }

    v3[4] = v30;
    v53 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v54 = v3[1];
    if (v54 >= v3[2])
    {
      v3[1] = sub_1CEE8(v3, v53);
    }

    else
    {
      if (*(v53 + 23) < 0)
      {
        sub_325C(v3[1], *v53, *(v53 + 8));
      }

      else
      {
        v55 = *v53;
        *(v54 + 16) = *(v53 + 16);
        *v54 = v55;
      }

      v3[1] = v54 + 24;
      v3[1] = v54 + 24;
    }

    return;
  }

  v5 = v3[4];
  v4 = v3[5];
  if (v5 < v4)
  {
    *v5 = -1;
    v3[4] = (v5 + 4);
    return;
  }

  v17 = v3[3];
  v18 = v5 - v17;
  v19 = (v5 - v17) >> 2;
  v20 = v19 + 1;
  if ((v19 + 1) >> 62)
  {
LABEL_70:
    sub_1794();
  }

  v21 = v4 - v17;
  if (v21 >> 1 > v20)
  {
    v20 = v21 >> 1;
  }

  if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v22 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = v20;
  }

  if (v22)
  {
    if (!(v22 >> 62))
    {
      operator new();
    }

    goto LABEL_71;
  }

  v43 = (v5 - v17) >> 2;
  v44 = (4 * v19);
  v45 = (4 * v19 - 4 * v43);
  *v44 = -1;
  v46 = v44 + 1;
  memcpy(v45, v17, v18);
  v3[3] = v45;
  v3[4] = v46;
  v3[5] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  v3[4] = v46;
}

__n128 sub_1210FF8(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  result = *(a2 + 24);
  *(a1 + 8) = result;
  return result;
}

void *sub_121100C(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  return result;
}

std::string *sub_1211014(std::string **a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  result = *a1;
  LODWORD(v5) = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v9 = result->__r_.__value_.__r.__words[2];
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v5 = HIBYTE(v9);
    if (v10 >= a2)
    {
      goto LABEL_10;
    }
  }

  else if (a2 <= 0x16)
  {
    goto LABEL_10;
  }

  v6 = a2 | 7;
  if ((a2 | 7) == 0x17)
  {
    v6 = 24;
  }

  if (a2 <= 0x16)
  {
    v7 = 22;
  }

  else
  {
    v7 = v6;
  }

  sub_269584(result, v7);
  result = *a1;
  LOBYTE(v5) = *(&(*a1)->__r_.__value_.__s + 23);
LABEL_10:
  if ((v5 & 0x80) != 0)
  {
    size = result->__r_.__value_.__l.__size_;
    if (size >= a2)
    {
      result = result->__r_.__value_.__r.__words[0];
      result->__r_.__value_.__s.__data_[size] = 0;
      return result;
    }
  }

  else
  {
    size = v5;
    if (v5 >= a2)
    {
      *(&result->__r_.__value_.__s + 23) = v5;
      result->__r_.__value_.__s.__data_[v5] = 0;
      return result;
    }
  }

  return std::string::append(result, a2 - size, 0);
}

_DWORD *sub_1211100(_DWORD *result, unsigned int a2, int a3)
{
  v3 = result[3];
  v4 = v3 + 5;
  v5 = *result;
  v6 = *(*result + 23);
  if ((v6 & 0x80000000) != 0)
  {
    v8 = v5[1];
    if (v8 > v4)
    {
      goto LABEL_8;
    }

    v7 = (2 * v3 + 10);
    if (v8 >= v7)
    {
      v5[1] = v7;
      v5 = *v5;
LABEL_17:
      *(v5 + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (v4 < v6)
    {
      goto LABEL_8;
    }

    v7 = (2 * v3 + 10);
    v8 = *(*result + 23);
    if (v8 >= v7)
    {
      *(v5 + 23) = v7;
      goto LABEL_17;
    }
  }

  v9 = result;
  v10 = a2;
  v11 = a3;
  std::string::append(*result, v7 - v8, 0);
  a3 = v11;
  a2 = v10;
  result = v9;
LABEL_8:
  if (!a2)
  {
    return result;
  }

LABEL_9:
  v12 = 0;
  v13 = 1 << (a2 - 1);
  v14 = result[3];
  v15 = result[2] & 7;
  do
  {
    v17 = *result;
    if (*(*result + 23) < 0)
    {
      v17 = v17->__r_.__value_.__r.__words[0];
    }

    v17->__r_.__value_.__s.__data_[v14] |= ((v13 & a3) != 0) << v15;
    v16 = result[2] + 1;
    LOBYTE(v15) = v16 & 7;
    if ((v16 & 7) != 0)
    {
      v14 = result[3];
    }

    else
    {
      v14 = result[3] + 1;
    }

    result[2] = v16;
    result[3] = v14;
    v13 >>= 1;
    ++v12;
  }

  while (v12 < a2);
  return result;
}

_DWORD *sub_1211220(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = a3 >> a2;
  v7 = (a3 >> a2) + 31;
  if (v7 >= 0x20)
  {
    v14 = v7 >> 5;
    v15 = 32 - v6;
    v16 = 1;
    v17 = v7 >> 5;
    v18 = a3 >> a2;
    do
    {
      if (v16 >= v14)
      {
        v19 = 0xFFFFFFFF >> v15;
        v20 = v18;
        v21 = a1;
      }

      else
      {
        v21 = a1;
        v20 = 32;
        v19 = -1;
      }

      sub_1211100(v21, v20, v19);
      LOBYTE(v18) = v18 - 32;
      ++v16;
      v15 += 32;
      --v17;
    }

    while (v17);
  }

  v8 = a1[3];
  v9 = v8 + 5;
  v10 = *a1;
  v11 = *(*a1 + 23);
  if ((v11 & 0x80000000) != 0)
  {
    size = v10->__r_.__value_.__l.__size_;
    if (size > v9)
    {
      goto LABEL_16;
    }

    v12 = (2 * v8 + 10);
    if (size >= v12)
    {
      v10->__r_.__value_.__l.__size_ = v12;
      v10 = v10->__r_.__value_.__r.__words[0];
      goto LABEL_15;
    }

LABEL_13:
    std::string::append(v10, v12 - size, 0);
    goto LABEL_16;
  }

  if (v9 < v11)
  {
    goto LABEL_16;
  }

  v12 = (2 * v8 + 10);
  size = *(*a1 + 23);
  if (size < v12)
  {
    goto LABEL_13;
  }

  *(&v10->__r_.__value_.__s + 23) = v12;
LABEL_15:
  v10->__r_.__value_.__s.__data_[v12] = 0;
LABEL_16:
  v22 = a1[3];
  v23 = a1[2] + 1;
  if ((v23 & 7) == 0)
  {
    ++v22;
  }

  a1[2] = v23;
  a1[3] = v22;

  return sub_1211100(a1, a2, a3 - (v6 << a2));
}

void sub_1211378(_DWORD *a1)
{
  v2 = *a1;
  v3 = (a1[2] + 7);
  v4 = v3 >> 3;
  size = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    if (size >= v4)
    {
      *(&v2->__r_.__value_.__s + 23) = v3 >> 3;
      goto LABEL_14;
    }

LABEL_5:
    std::string::append(v2, v4 - size, 0);
    v6 = *a1;
    v7 = *(*a1 + 23);
    if (v7 < 0)
    {
      goto LABEL_15;
    }

LABEL_6:
    v8 = v7 | 7;
    if (v8 == 23)
    {
      v8 = 24;
    }

    if (v7 <= 0x16u)
    {
      v9 = 22;
    }

    else
    {
      v9 = v8;
    }

    if (v9 != 22)
    {
      goto LABEL_21;
    }

    return;
  }

  size = v2->__r_.__value_.__l.__size_;
  if (size < v4)
  {
    goto LABEL_5;
  }

  v2->__r_.__value_.__l.__size_ = v4;
  v2 = v2->__r_.__value_.__r.__words[0];
LABEL_14:
  v2->__r_.__value_.__s.__data_[v4] = 0;
  v6 = *a1;
  v7 = *(*a1 + 23);
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  v10 = *(v6 + 8);
  v11 = v10 | 7;
  if ((v10 | 7) == 0x17)
  {
    v11 = 24;
  }

  if (v10 <= 0x16)
  {
    v9 = 22;
  }

  else
  {
    v9 = v11;
  }

  if (v9 != (*(v6 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1)
  {
LABEL_21:
    sub_269584(v6, v9);
  }
}

uint64_t sub_1211464(_DWORD *a1, unsigned int a2)
{
  v2 = a1[2];
  v3 = (a2 + v2 - 1) >> 3;
  v4 = *a1;
  v5 = *(*a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5 > v3)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = a2;
    if (sub_1211B74())
    {
      sub_19594F8(&v17);
      v13 = sub_4A5C(&v17, "Prevented read past-the-end (num_bits=", 38);
      LOBYTE(v16) = v12;
      v14 = sub_4A5C(v13, &v16, 1);
      sub_4A5C(v14, "). Returning 0.", 15);
      operator new();
    }

    return 0;
  }

  if (v4[1] <= v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  v8 = v2 & 7;
  v9 = a1[3];
  v10 = v2 + 1;
  do
  {
    v11 = v4;
    if (*(v4 + 23) < 0)
    {
      v11 = *v4;
    }

    v7 = (*(v11 + v9) >> v8) & 1 | (2 * v7);
    v8 = v10 & 7;
    if ((v10 & 7) == 0)
    {
      ++v9;
    }

    a1[2] = v10;
    a1[3] = v9;
    ++v6;
    ++v10;
  }

  while (v6 < a2);
  return v7;
}

void sub_12117E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1211840(_DWORD *a1, unsigned int a2)
{
  v4 = -1;
  do
  {
    ++v4;
  }

  while (sub_1211464(a1, 1u));
  return sub_1211464(a1, a2) + (v4 << a2);
}

void sub_1211898(uint64_t a1, char a2)
{
  std::mutex::lock(&stru_27348B8);
  qword_278CB88 = a1;
  byte_27348B0 = a2;

  std::mutex::unlock(&stru_27348B8);
}

void sub_12118F8()
{
  std::mutex::lock(&stru_27348B8);
  qword_278CB88 = 0;

  std::mutex::unlock(&stru_27348B8);
}

void sub_1211954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock(&stru_27348B8);
  if (qword_278CB88)
  {
    (*(*qword_278CB88 + 24))(qword_278CB88, a1, a2, a3);
  }

  std::mutex::unlock(&stru_27348B8);
}

void sub_1211A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock(&stru_27348B8);
  if (qword_278CB88)
  {
    (*(*qword_278CB88 + 40))(qword_278CB88, a1, a2, a3);
  }

  std::mutex::unlock(&stru_27348B8);
}

void sub_1211ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock(&stru_27348B8);
  if (qword_278CB88)
  {
    (*(*qword_278CB88 + 72))(qword_278CB88, a1, a2, a3);
  }

  std::mutex::unlock(&stru_27348B8);
}

void sub_1211B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::mutex::lock(&stru_27348B8);
  if (qword_278CB88)
  {
    (*(*qword_278CB88 + 88))(qword_278CB88, a1, a2, a3);
  }

  std::mutex::unlock(&stru_27348B8);
}

uint64_t sub_1211C30(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_2677C30;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_1211C74(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  v6 = *(a1 + 8);
  if ((v6 & 2) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      if (*v7)
      {
LABEL_10:
        sub_194E188();
        operator delete();
      }
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  return a1;
}

void sub_1211D4C(uint64_t a1)
{
  sub_1211C74(a1);

  operator delete();
}

uint64_t sub_1211D84(uint64_t a1)
{
  *(a1 + 24) = 0;
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
LABEL_4:
    if ((v1 & 6) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_4;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 6) != 0)
  {
LABEL_5:
    *(a1 + 56) = 0;
  }

LABEL_6:
  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1211DF0(uint64_t *a1)
{
  v1 = *a1;
  v3 = (*a1 + 1);
  v2 = **a1;
  if (v2 < 0)
  {
    v5 = *v3;
    v6 = (v5 << 7) + v2 - 128;
    if (v5 < 0)
    {
      *a1 = sub_19587DC(v1, v6);
    }

    else
    {
      *a1 = v1 + 2;
    }

    return -(v6 & 1) ^ (v6 >> 1);
  }

  else
  {
    *a1 = v3;
    return -(v2 & 1) ^ (v2 >> 1);
  }
}

uint64_t sub_1211E88(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*a1 + 1);
  v3 = **a1;
  if (**a1 < 0)
  {
    v5 = *v2;
    v6 = v3 + (v5 << 7);
    if (v5 < 0)
    {
      *a1 = sub_1958770(v1, v6 - 128);
      return v7;
    }

    else
    {
      *a1 = v1 + 2;
      return (v6 - 128);
    }
  }

  else
  {
    *a1 = v2;
    return v3;
  }
}

char *sub_1211F08(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
    *v4 = 8;
    v8 = (2 * v7) ^ (v7 >> 31);
    v4[1] = (2 * v7) ^ (v7 >> 31);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v4 += 3;
      if (v8 >= 0x4000)
      {
        v10 = v8 >> 7;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v9 = v10 >> 7;
          *v4++ = v10 >> 7;
          v11 = v10 >> 14;
          v10 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  if ((v6 & 1) == 0)
  {
LABEL_17:
    v15 = *(a1 + 40);
    if (v15 >= 1)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  if ((v13 & 0x8000000000000000) == 0 || (v13 = *(v12 + 8), v13 <= 127))
  {
    if ((*a3 - v4 + 14) >= v13)
    {
      *v4 = 18;
      v4[1] = v13;
      if (*(v12 + 23) >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = *v12;
      }

      memcpy(v4 + 2, v14, v13);
      v4 += v13 + 2;
      goto LABEL_17;
    }
  }

  v4 = sub_19572D4(a3, 2, v12, v4);
  v15 = *(a1 + 40);
  if (v15 >= 1)
  {
LABEL_18:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 26;
      v16 = v4 + 1;
      if (v15 < 0x80)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v4 = 26;
      v16 = v4 + 1;
      if (v15 < 0x80)
      {
LABEL_20:
        v4 += 2;
        *v16 = v15;
        v17 = *(a1 + 32);
        v18 = &v17[*(a1 + 24)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v24 = *v17++;
            v19 = v24;
            *v4 = v24;
            if (v24 > 0x7F)
            {
LABEL_25:
              *v4 = v19 | 0x80;
              v21 = v19 >> 7;
              v4[1] = v19 >> 7;
              v4 += 2;
              if (v19 >= 0x4000)
              {
                v22 = v19 >> 7;
                do
                {
                  *(v4 - 1) = v21 | 0x80;
                  v21 = v22 >> 7;
                  *v4++ = v22 >> 7;
                  v23 = v22 >> 14;
                  v22 >>= 7;
                }

                while (v23);
              }

              goto LABEL_22;
            }
          }

          else
          {
            v20 = *v17++;
            v19 = v20;
            *v4 = v20;
            if (v20 > 0x7F)
            {
              goto LABEL_25;
            }
          }

          ++v4;
LABEL_22:
          if (v17 >= v18)
          {
            goto LABEL_32;
          }
        }
      }
    }

    do
    {
      *v16++ = v15 | 0x80;
      v26 = v15 >> 14;
      v15 = v15 >> 7;
    }

    while (v26);
    v4 = v16 - 1;
    goto LABEL_20;
  }

LABEL_32:
  if ((v6 & 4) == 0)
  {
    goto LABEL_43;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v25 = *(a1 + 60);
    *v4 = 32;
    v4[1] = v25;
    if (v25 <= 0x7F)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v25 = *(a1 + 60);
    *v4 = 32;
    v4[1] = v25;
    if (v25 <= 0x7F)
    {
LABEL_35:
      v4 += 2;
      goto LABEL_43;
    }
  }

  v4[1] = v25 | 0x80;
  v27 = v25 >> 7;
  v4[2] = v25 >> 7;
  v4 += 3;
  if (v25 >= 0x4000)
  {
    v28 = v25 >> 7;
    do
    {
      *(v4 - 1) = v28 | 0x80;
      v28 = v27 >> 7;
      *v4++ = v27 >> 7;
      v29 = v27 >> 14;
      v27 >>= 7;
    }

    while (v29);
  }

LABEL_43:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v4;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  v35 = v33;
  if ((*a3 - v4) < v33)
  {

    return sub_1957130(a3, v34, v33, v4);
  }

  else
  {
    memcpy(v4, v34, v33);
    return &v4[v35];
  }
}

uint64_t sub_1212280(uint64_t a1)
{
  result = sub_1959E5C((a1 + 24));
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
      *(a1 + 40) = result;
      result += 11;
      v3 = *(a1 + 16);
      if ((v3 & 7) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *(a1 + 40) = result;
      result += ((9 * (__clz(result | 1) ^ 0x1F) + 73) >> 6) + 1;
      v3 = *(a1 + 16);
      if ((v3 & 7) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    *(a1 + 40) = 0;
    v3 = *(a1 + 16);
    if ((v3 & 7) == 0)
    {
      goto LABEL_20;
    }
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    result += ((9 * (__clz((2 * *(a1 + 56)) ^ (*(a1 + 56) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_20;
    }

LABEL_16:
    v7 = *(a1 + 60);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
    goto LABEL_20;
  }

  v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v3 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
    *(a1 + 20) = result;
  }

  else
  {
    *(a1 + 20) = result;
  }

  return result;
}

std::string *sub_1212408(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1958E5C(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 4 * data_low), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 7) != 0)
  {
    if ((v8 & 1) == 0)
    {
      if ((v8 & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_15:
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
      if ((v8 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v10 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v11 = v3->__r_.__value_.__l.__size_;
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      result = sub_194EA1C(&v3[2], (v10 & 0xFFFFFFFFFFFFFFFELL), *v12);
      if ((v8 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = sub_194EA1C(&v3[2], (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v8 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_6:
    if ((v8 & 4) == 0)
    {
LABEL_8:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
      goto LABEL_9;
    }

LABEL_7:
    HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
    goto LABEL_8;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1212598(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_2677CB0;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_12125E0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  v6 = *(a1 + 8);
  if ((v6 & 2) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      if (*v7)
      {
LABEL_10:
        sub_194E188();
        operator delete();
      }
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  return a1;
}

void sub_12126B8(uint64_t a1)
{
  sub_12125E0(a1);

  operator delete();
}

uint64_t sub_12126F0(uint64_t a1)
{
  *(a1 + 24) = 0;
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
LABEL_4:
    if ((v1 & 6) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_4;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 6) != 0)
  {
LABEL_5:
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
  }

LABEL_6:
  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

unint64_t sub_1212760(uint64_t *a1)
{
  v1 = *a1;
  v3 = (*a1 + 1);
  v2 = **a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v5 = *v3;
    v6 = (v5 << 7) + v2 - 128;
    if (v5 < 0)
    {
      *a1 = sub_19587DC(v1, v6);
    }

    else
    {
      *a1 = v1 + 2;
    }

    return -(v6 & 1) ^ (v6 >> 1);
  }

  else
  {
    *a1 = v3;
    return -(v2 & 1) ^ (v2 >> 1);
  }
}

char *sub_12127F8(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
    *v4 = 8;
    v8 = (2 * v7) ^ (v7 >> 63);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v4 += 3;
      if (v8 >= 0x4000)
      {
        v10 = v8 >> 7;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v4++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  if ((v6 & 1) == 0)
  {
LABEL_17:
    v15 = *(a1 + 40);
    if (v15 >= 1)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  if ((v13 & 0x8000000000000000) == 0 || (v13 = *(v12 + 8), v13 <= 127))
  {
    if ((*a3 - v4 + 14) >= v13)
    {
      *v4 = 18;
      v4[1] = v13;
      if (*(v12 + 23) >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = *v12;
      }

      memcpy(v4 + 2, v14, v13);
      v4 += v13 + 2;
      goto LABEL_17;
    }
  }

  v4 = sub_19572D4(a3, 2, v12, v4);
  v15 = *(a1 + 40);
  if (v15 >= 1)
  {
LABEL_18:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 26;
      v16 = v4 + 1;
      if (v15 < 0x80)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v4 = 26;
      v16 = v4 + 1;
      if (v15 < 0x80)
      {
LABEL_20:
        v4 += 2;
        *v16 = v15;
        v17 = *(a1 + 32);
        v18 = &v17[*(a1 + 24)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v24 = *v17++;
            v19 = v24;
            *v4 = v24;
            if (v24 > 0x7F)
            {
LABEL_25:
              *v4 = v19 | 0x80;
              v21 = v19 >> 7;
              v4[1] = v19 >> 7;
              v4 += 2;
              if (v19 >= 0x4000)
              {
                v22 = v19 >> 7;
                do
                {
                  *(v4 - 1) = v21 | 0x80;
                  v21 = v22 >> 7;
                  *v4++ = v22 >> 7;
                  v23 = v22 >> 14;
                  v22 >>= 7;
                }

                while (v23);
              }

              goto LABEL_22;
            }
          }

          else
          {
            v20 = *v17++;
            v19 = v20;
            *v4 = v20;
            if (v20 > 0x7F)
            {
              goto LABEL_25;
            }
          }

          ++v4;
LABEL_22:
          if (v17 >= v18)
          {
            goto LABEL_32;
          }
        }
      }
    }

    do
    {
      *v16++ = v15 | 0x80;
      v26 = v15 >> 14;
      v15 = v15 >> 7;
    }

    while (v26);
    v4 = v16 - 1;
    goto LABEL_20;
  }

LABEL_32:
  if ((v6 & 4) == 0)
  {
    goto LABEL_43;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v25 = *(a1 + 64);
    *v4 = 32;
    v4[1] = v25;
    if (v25 <= 0x7F)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v25 = *(a1 + 64);
    *v4 = 32;
    v4[1] = v25;
    if (v25 <= 0x7F)
    {
LABEL_35:
      v4 += 2;
      goto LABEL_43;
    }
  }

  v4[1] = v25 | 0x80;
  v27 = v25 >> 7;
  v4[2] = v25 >> 7;
  v4 += 3;
  if (v25 >= 0x4000)
  {
    v28 = v25 >> 7;
    do
    {
      *(v4 - 1) = v28 | 0x80;
      v28 = v27 >> 7;
      *v4++ = v27 >> 7;
      v29 = v27 >> 14;
      v27 >>= 7;
    }

    while (v29);
  }

LABEL_43:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v4;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  v35 = v33;
  if ((*a3 - v4) < v33)
  {

    return sub_1957130(a3, v34, v33, v4);
  }

  else
  {
    memcpy(v4, v34, v33);
    return &v4[v35];
  }
}

uint64_t sub_1212B70(uint64_t a1)
{
  result = sub_1959E5C((a1 + 24));
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
      *(a1 + 40) = result;
      result += 11;
      v3 = *(a1 + 16);
      if ((v3 & 7) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *(a1 + 40) = result;
      result += ((9 * (__clz(result | 1) ^ 0x1F) + 73) >> 6) + 1;
      v3 = *(a1 + 16);
      if ((v3 & 7) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    *(a1 + 40) = 0;
    v3 = *(a1 + 16);
    if ((v3 & 7) == 0)
    {
      goto LABEL_20;
    }
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_15:
    result += ((9 * (__clz((2 * *(a1 + 56)) ^ (*(a1 + 56) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_20;
    }

LABEL_16:
    v7 = *(a1 + 64);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
    goto LABEL_20;
  }

  v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v3 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
    *(a1 + 20) = result;
  }

  else
  {
    *(a1 + 20) = result;
  }

  return result;
}

std::string *sub_1212CF4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1958E5C(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 4 * data_low), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 7) != 0)
  {
    if ((v8 & 1) == 0)
    {
      if ((v8 & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_15:
      v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
      if ((v8 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v10 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v11 = v3->__r_.__value_.__l.__size_;
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      result = sub_194EA1C(&v3[2], (v10 & 0xFFFFFFFFFFFFFFFELL), *v12);
      if ((v8 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = sub_194EA1C(&v3[2], (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v8 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_6:
    if ((v8 & 4) == 0)
    {
LABEL_8:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
      goto LABEL_9;
    }

LABEL_7:
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    goto LABEL_8;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1212E84(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_12;
  }

  if (a1 != &off_2734938)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1211C74(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1211C74(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1211C74(v7);
      operator delete();
    }
  }

  v2 = *v3;
  if (*v3)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_12:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v8 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v8)
      {
LABEL_15:
        sub_194E188();
        operator delete();
      }
    }

    else if (v8)
    {
      goto LABEL_15;
    }
  }

  return a1;
}

void sub_1212F98(uint64_t a1)
{
  sub_1212E84(a1);

  operator delete();
}

uint64_t sub_1212FD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_26;
  }

  if (v1)
  {
    v2 = *(a1 + 24);
    *(v2 + 24) = 0;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v2 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 6) == 0)
        {
LABEL_8:
          v6 = *(v2 + 8);
          v5 = v2 + 8;
          *(v5 + 8) = 0;
          if (v6)
          {
            v7 = a1;
            sub_1957EA8(v5);
            a1 = v7;
          }

          goto LABEL_10;
        }

LABEL_7:
        *(v2 + 56) = 0;
        goto LABEL_8;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 6) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_10:
  if ((v1 & 2) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(a1 + 32);
  *(v8 + 24) = 0;
  v9 = *(v8 + 16);
  if ((v9 & 1) == 0)
  {
LABEL_14:
    if ((v9 & 6) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v10 = *(v8 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v10 + 23) & 0x80000000) == 0)
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    goto LABEL_14;
  }

  **v10 = 0;
  *(v10 + 8) = 0;
  if ((v9 & 6) != 0)
  {
LABEL_15:
    *(v8 + 56) = 0;
  }

LABEL_16:
  v12 = *(v8 + 8);
  v11 = v8 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {
    v13 = a1;
    sub_1957EA8(v11);
    a1 = v13;
  }

LABEL_18:
  if ((v1 & 4) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(a1 + 40);
  *(v14 + 24) = 0;
  v15 = *(v14 + 16);
  if ((v15 & 1) == 0)
  {
LABEL_22:
    if ((v15 & 6) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v16 = *(v14 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v16 + 23) & 0x80000000) == 0)
  {
    *v16 = 0;
    *(v16 + 23) = 0;
    goto LABEL_22;
  }

  **v16 = 0;
  *(v16 + 8) = 0;
  if ((v15 & 6) != 0)
  {
LABEL_23:
    *(v14 + 56) = 0;
  }

LABEL_24:
  v18 = *(v14 + 8);
  v17 = v14 + 8;
  *(v17 + 8) = 0;
  if (v18)
  {
    v19 = a1;
    sub_1957EA8(v17);
    a1 = v19;
  }

LABEL_26:
  v21 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v21)
  {

    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1213164(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v9 = *(a1 + 24);
    *v4 = 10;
    v10 = *(v9 + 20);
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v11 = sub_19575D0(v10, v4 + 1);
      v4 = sub_1211F08(v9, v11, a3);
      if ((v6 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = sub_1211F08(v9, (v4 + 2), a3);
      if ((v6 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 40);
    *v4 = 26;
    v16 = *(v15 + 20);
    v4[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v4 + 1);
    }

    else
    {
      v17 = v4 + 2;
    }

    v4 = sub_1211F08(v15, v17, a3);
    v7 = *(a1 + 8);
    if ((v7 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_24;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 32);
  *v4 = 18;
  v13 = *(v12 + 20);
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v4 + 1);
    v4 = sub_1211F08(v12, v14, a3);
    if ((v6 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = sub_1211F08(v12, (v4 + 2), a3);
    if ((v6 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

LABEL_24:
  v18 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  v21 = v19;
  if ((*a3 - v4) < v19)
  {

    return sub_1957130(a3, v20, v19, v4);
  }

  else
  {
    memcpy(v4, v20, v19);
    return &v4[v21];
  }
}

uint64_t sub_1213390(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = sub_1212280(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
LABEL_9:
        if ((v2 & 4) != 0)
        {
          v8 = sub_1212280(*(a1 + 40));
          v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
          v4 = *(a1 + 8);
          if ((v4 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v4 = *(a1 + 8);
          if ((v4 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_13;
      }
    }

    v6 = sub_1212280(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_9;
  }

  v3 = 0;
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    *(a1 + 20) = v3;
    return v3;
  }

LABEL_13:
  v9 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v10 < 0)
  {
    v10 = *(v9 + 16);
  }

  v11 = v10 + v3;
  *(a1 + 20) = v11;
  return v11;
}

std::string *sub_12134B4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_5;
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
  data = result[1].__r_.__value_.__l.__data_;
  if (!data)
  {
    size = v3->__r_.__value_.__l.__size_;
    v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v8 = *v8;
    }

    data = sub_1215DEC(v8);
    v3[1].__r_.__value_.__r.__words[0] = data;
  }

  if (*(a2 + 24))
  {
    v9 = *(a2 + 24);
  }

  else
  {
    v9 = &off_27348F8;
  }

  result = sub_1212408(data, v9);
  if ((v4 & 2) != 0)
  {
LABEL_15:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3[1].__r_.__value_.__l.__size_;
    if (!v10)
    {
      v11 = v3->__r_.__value_.__l.__size_;
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_1215DEC(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_27348F8;
    }

    result = sub_1212408(v10, v13);
    if ((v4 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_5:
    v5 = *(a2 + 8);
    if ((v5 & 1) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v14 = v3[1].__r_.__value_.__r.__words[2];
  if (!v14)
  {
    v15 = v3->__r_.__value_.__l.__size_;
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v14 = sub_1215DEC(v16);
    v3[1].__r_.__value_.__r.__words[2] = v14;
  }

  if (*(a2 + 40))
  {
    v17 = *(a2 + 40);
  }

  else
  {
    v17 = &off_27348F8;
  }

  result = sub_1212408(v14, v17);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_31:

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1213674(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if ((v4 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(v2);
  }

  sub_1956ABC((a1 + 32));
  sub_1956ABC((a1 + 29));
  sub_1956ABC((a1 + 26));
  sub_1956AFC(a1 + 23);
  sub_1956ABC((a1 + 20));
  sub_1956ABC((a1 + 17));
  sub_1956ABC((a1 + 14));
  sub_1956ABC((a1 + 11));
  sub_1956ABC((a1 + 8));
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  v5 = a1[1];
  if ((v5 & 2) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      if (*v6)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v6)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_1213768(void *a1)
{
  sub_1213674(a1);

  operator delete();
}

uint64_t sub_12137A0(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  v1 = *(a1 + 192);
  if (v1 >= 1)
  {
    v2 = *(a1 + 200) + 8;
    do
    {
      while (1)
      {
        v3 = *v2;
        if (*(*v2 + 23) < 0)
        {
          break;
        }

        *v3 = 0;
        *(v3 + 23) = 0;
        v2 += 8;
        if (!--v1)
        {
          goto LABEL_6;
        }
      }

      **v3 = 0;
      *(v3 + 8) = 0;
      v2 += 8;
      --v1;
    }

    while (v1);
LABEL_6:
    *(a1 + 192) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 200) = 0;
  *(result + 224) = 0;
  *(result + 248) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1213858(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
      *v4 = 10;
      v7 = v4 + 1;
      if (v6 < 0x80)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *__dst = 10;
      v7 = __dst + 1;
      if (v6 < 0x80)
      {
LABEL_4:
        v4 += 2;
        *v7 = v6;
        v8 = *(a1 + 24);
        v9 = &v8[*(a1 + 16)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v15 = *v8++;
            v10 = v15;
            *v4 = v15;
            if (v15 > 0x7F)
            {
LABEL_9:
              *v4 = v10 | 0x80;
              v12 = v10 >> 7;
              v4[1] = v10 >> 7;
              v4 += 2;
              if (v10 >= 0x4000)
              {
                v13 = v10 >> 7;
                do
                {
                  *(v4 - 1) = v12 | 0x80;
                  v12 = v13 >> 7;
                  *v4++ = v13 >> 7;
                  v14 = v13 >> 14;
                  v13 >>= 7;
                }

                while (v14);
              }

              goto LABEL_6;
            }
          }

          else
          {
            v11 = *v8++;
            v10 = v11;
            *v4 = v11;
            if (v11 > 0x7F)
            {
              goto LABEL_9;
            }
          }

          ++v4;
LABEL_6:
          if (v8 >= v9)
          {
            goto LABEL_15;
          }
        }
      }
    }

    do
    {
      *v7++ = v6 | 0x80;
      v116 = v6 >> 14;
      v6 >>= 7;
    }

    while (v116);
    v4 = v7 - 1;
    goto LABEL_4;
  }

LABEL_15:
  v16 = *(a1 + 56);
  if (v16 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 18;
      v17 = v4 + 1;
      if (v16 < 0x80)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *v4 = 18;
      v17 = v4 + 1;
      if (v16 < 0x80)
      {
LABEL_18:
        v4 += 2;
        *v17 = v16;
        v18 = *(a1 + 48);
        v19 = &v18[*(a1 + 40)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v25 = *v18++;
            v21 = (2 * v25) ^ (v25 >> 63);
            *v4 = v21;
            if (v21 > 0x7F)
            {
LABEL_23:
              *v4 = v21 | 0x80;
              v22 = v21 >> 7;
              v4[1] = v21 >> 7;
              v4 += 2;
              if (v21 >= 0x4000)
              {
                v23 = v21 >> 7;
                do
                {
                  *(v4 - 1) = v23 | 0x80;
                  v23 = v22 >> 7;
                  *v4++ = v22 >> 7;
                  v24 = v22 >> 14;
                  v22 >>= 7;
                }

                while (v24);
              }

              goto LABEL_20;
            }
          }

          else
          {
            v20 = *v18++;
            v21 = (2 * v20) ^ (v20 >> 63);
            *v4 = v21;
            if (v21 > 0x7F)
            {
              goto LABEL_23;
            }
          }

          ++v4;
LABEL_20:
          if (v18 >= v19)
          {
            goto LABEL_29;
          }
        }
      }
    }

    do
    {
      *v17++ = v16 | 0x80;
      v117 = v16 >> 14;
      v16 >>= 7;
    }

    while (v117);
    v4 = v17 - 1;
    goto LABEL_18;
  }

LABEL_29:
  v26 = *(a1 + 80);
  if (v26 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 26;
      v27 = v4 + 1;
      if (v26 < 0x80)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v4 = 26;
      v27 = v4 + 1;
      if (v26 < 0x80)
      {
LABEL_32:
        v4 += 2;
        *v27 = v26;
        v28 = *(a1 + 72);
        v29 = &v28[*(a1 + 64)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v35 = *v28++;
            v30 = v35;
            *v4 = v35;
            if (v35 > 0x7F)
            {
LABEL_37:
              *v4 = v30 | 0x80;
              v32 = v30 >> 7;
              v4[1] = v30 >> 7;
              v4 += 2;
              if (v30 >= 0x4000)
              {
                v33 = v30 >> 7;
                do
                {
                  *(v4 - 1) = v32 | 0x80;
                  v32 = v33 >> 7;
                  *v4++ = v33 >> 7;
                  v34 = v33 >> 14;
                  v33 >>= 7;
                }

                while (v34);
              }

              goto LABEL_34;
            }
          }

          else
          {
            v31 = *v28++;
            v30 = v31;
            *v4 = v31;
            if (v31 > 0x7F)
            {
              goto LABEL_37;
            }
          }

          ++v4;
LABEL_34:
          if (v28 >= v29)
          {
            goto LABEL_43;
          }
        }
      }
    }

    do
    {
      *v27++ = v26 | 0x80;
      v118 = v26 >> 14;
      v26 >>= 7;
    }

    while (v118);
    v4 = v27 - 1;
    goto LABEL_32;
  }

LABEL_43:
  v36 = *(a1 + 104);
  if (v36 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 34;
      v37 = v4 + 1;
      if (v36 < 0x80)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v4 = 34;
      v37 = v4 + 1;
      if (v36 < 0x80)
      {
LABEL_46:
        v4 += 2;
        *v37 = v36;
        v38 = *(a1 + 96);
        v39 = &v38[*(a1 + 88)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v45 = *v38++;
            v40 = v45;
            *v4 = v45;
            if (v45 > 0x7F)
            {
LABEL_51:
              *v4 = v40 | 0x80;
              v42 = v40 >> 7;
              v4[1] = v40 >> 7;
              v4 += 2;
              if (v40 >= 0x4000)
              {
                v43 = v40 >> 7;
                do
                {
                  *(v4 - 1) = v42 | 0x80;
                  v42 = v43 >> 7;
                  *v4++ = v43 >> 7;
                  v44 = v43 >> 14;
                  v43 >>= 7;
                }

                while (v44);
              }

              goto LABEL_48;
            }
          }

          else
          {
            v41 = *v38++;
            v40 = v41;
            *v4 = v41;
            if (v41 > 0x7F)
            {
              goto LABEL_51;
            }
          }

          ++v4;
LABEL_48:
          if (v38 >= v39)
          {
            goto LABEL_57;
          }
        }
      }
    }

    do
    {
      *v37++ = v36 | 0x80;
      v119 = v36 >> 14;
      v36 >>= 7;
    }

    while (v119);
    v4 = v37 - 1;
    goto LABEL_46;
  }

LABEL_57:
  v46 = *(a1 + 128);
  if (v46 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 42;
      v47 = v4 + 1;
      if (v46 < 0x80)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = 42;
      v47 = v4 + 1;
      if (v46 < 0x80)
      {
LABEL_60:
        v4 += 2;
        *v47 = v46;
        v48 = *(a1 + 120);
        v49 = &v48[*(a1 + 112)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v55 = *v48++;
            v50 = v55;
            *v4 = v55;
            if (v55 > 0x7F)
            {
LABEL_65:
              *v4 = v50 | 0x80;
              v52 = v50 >> 7;
              v4[1] = v50 >> 7;
              v4 += 2;
              if (v50 >= 0x4000)
              {
                v53 = v50 >> 7;
                do
                {
                  *(v4 - 1) = v52 | 0x80;
                  v52 = v53 >> 7;
                  *v4++ = v53 >> 7;
                  v54 = v53 >> 14;
                  v53 >>= 7;
                }

                while (v54);
              }

              goto LABEL_62;
            }
          }

          else
          {
            v51 = *v48++;
            v50 = v51;
            *v4 = v51;
            if (v51 > 0x7F)
            {
              goto LABEL_65;
            }
          }

          ++v4;
LABEL_62:
          if (v48 >= v49)
          {
            goto LABEL_71;
          }
        }
      }
    }

    do
    {
      *v47++ = v46 | 0x80;
      v120 = v46 >> 14;
      v46 >>= 7;
    }

    while (v120);
    v4 = v47 - 1;
    goto LABEL_60;
  }

LABEL_71:
  v56 = *(a1 + 152);
  if (v56 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 50;
      v57 = v4 + 1;
      if (v56 < 0x80)
      {
        goto LABEL_74;
      }
    }

    else
    {
      *v4 = 50;
      v57 = v4 + 1;
      if (v56 < 0x80)
      {
LABEL_74:
        v4 += 2;
        *v57 = v56;
        v58 = *(a1 + 144);
        v59 = &v58[*(a1 + 136)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v65 = *v58++;
            v60 = v65;
            *v4 = v65;
            if (v65 > 0x7F)
            {
LABEL_79:
              *v4 = v60 | 0x80;
              v62 = v60 >> 7;
              v4[1] = v60 >> 7;
              v4 += 2;
              if (v60 >= 0x4000)
              {
                v63 = v60 >> 7;
                do
                {
                  *(v4 - 1) = v62 | 0x80;
                  v62 = v63 >> 7;
                  *v4++ = v63 >> 7;
                  v64 = v63 >> 14;
                  v63 >>= 7;
                }

                while (v64);
              }

              goto LABEL_76;
            }
          }

          else
          {
            v61 = *v58++;
            v60 = v61;
            *v4 = v61;
            if (v61 > 0x7F)
            {
              goto LABEL_79;
            }
          }

          ++v4;
LABEL_76:
          if (v58 >= v59)
          {
            goto LABEL_85;
          }
        }
      }
    }

    do
    {
      *v57++ = v56 | 0x80;
      v121 = v56 >> 14;
      v56 >>= 7;
    }

    while (v121);
    v4 = v57 - 1;
    goto LABEL_74;
  }

LABEL_85:
  v66 = *(a1 + 176);
  if (v66 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 58;
      v67 = v4 + 1;
      if (v66 < 0x80)
      {
        goto LABEL_88;
      }
    }

    else
    {
      *v4 = 58;
      v67 = v4 + 1;
      if (v66 < 0x80)
      {
LABEL_88:
        v4 += 2;
        *v67 = v66;
        v68 = *(a1 + 168);
        v69 = &v68[*(a1 + 160)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v75 = *v68++;
            v70 = v75;
            *v4 = v75;
            if (v75 > 0x7F)
            {
LABEL_93:
              *v4 = v70 | 0x80;
              v72 = v70 >> 7;
              v4[1] = v70 >> 7;
              v4 += 2;
              if (v70 >= 0x4000)
              {
                v73 = v70 >> 7;
                do
                {
                  *(v4 - 1) = v72 | 0x80;
                  v72 = v73 >> 7;
                  *v4++ = v73 >> 7;
                  v74 = v73 >> 14;
                  v73 >>= 7;
                }

                while (v74);
              }

              goto LABEL_90;
            }
          }

          else
          {
            v71 = *v68++;
            v70 = v71;
            *v4 = v71;
            if (v71 > 0x7F)
            {
              goto LABEL_93;
            }
          }

          ++v4;
LABEL_90:
          if (v68 >= v69)
          {
            goto LABEL_99;
          }
        }
      }
    }

    do
    {
      *v67++ = v66 | 0x80;
      v122 = v66 >> 14;
      v66 >>= 7;
    }

    while (v122);
    v4 = v67 - 1;
    goto LABEL_88;
  }

LABEL_99:
  v76 = *(a1 + 192);
  if (v76 >= 1)
  {
    v77 = 8;
    do
    {
      while (1)
      {
        v78 = *(*(a1 + 200) + v77);
        v79 = *(v78 + 23);
        if ((v79 & 0x8000000000000000) == 0 || (v79 = v78[1], v79 <= 127))
        {
          if (*a3 - v4 + 14 >= v79)
          {
            break;
          }
        }

        v4 = sub_1957480(a3, 8, v78, v4);
        v77 += 8;
        if (!--v76)
        {
          goto LABEL_109;
        }
      }

      *v4 = 66;
      v4[1] = v79;
      if (*(v78 + 23) < 0)
      {
        v78 = *v78;
      }

      v80 = v4 + 2;
      memcpy(v80, v78, v79);
      v4 = &v80[v79];
      v77 += 8;
      --v76;
    }

    while (v76);
  }

LABEL_109:
  v81 = *(a1 + 224);
  if (v81 > 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 74;
      v82 = v4 + 1;
      if (v81 < 0x80)
      {
        goto LABEL_112;
      }
    }

    else
    {
      *v4 = 74;
      v82 = v4 + 1;
      if (v81 < 0x80)
      {
LABEL_112:
        v4 += 2;
        *v82 = v81;
        v83 = *(a1 + 216);
        v84 = &v83[*(a1 + 208)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v90 = *v83++;
            v86 = (2 * v90) ^ (v90 >> 31);
            *v4 = (2 * v90) ^ (v90 >> 31);
            if (v86 > 0x7F)
            {
LABEL_117:
              *v4 = v86 | 0x80;
              v87 = v86 >> 7;
              v4[1] = v86 >> 7;
              v4 += 2;
              if (v86 >= 0x4000)
              {
                v88 = v86 >> 7;
                do
                {
                  *(v4 - 1) = v87 | 0x80;
                  v87 = v88 >> 7;
                  *v4++ = v88 >> 7;
                  v89 = v88 >> 14;
                  v88 >>= 7;
                }

                while (v89);
              }

              goto LABEL_114;
            }
          }

          else
          {
            v85 = *v83++;
            v86 = (2 * v85) ^ (v85 >> 31);
            *v4 = (2 * v85) ^ (v85 >> 31);
            if (v86 > 0x7F)
            {
              goto LABEL_117;
            }
          }

          ++v4;
LABEL_114:
          if (v83 >= v84)
          {
            goto LABEL_123;
          }
        }
      }
    }

    do
    {
      *v82++ = v81 | 0x80;
      v123 = v81 >> 14;
      v81 >>= 7;
    }

    while (v123);
    v4 = v82 - 1;
    goto LABEL_112;
  }

LABEL_123:
  v91 = *(a1 + 248);
  if (v91 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 82;
      v92 = v4 + 1;
      if (v91 < 0x80)
      {
        goto LABEL_126;
      }
    }

    else
    {
      *v4 = 82;
      v92 = v4 + 1;
      if (v91 < 0x80)
      {
LABEL_126:
        v4 += 2;
        *v92 = v91;
        v93 = *(a1 + 240);
        v94 = &v93[*(a1 + 232)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v100 = *v93++;
            v95 = v100;
            *v4 = v100;
            if (v100 > 0x7F)
            {
LABEL_131:
              *v4 = v95 | 0x80;
              v97 = v95 >> 7;
              v4[1] = v95 >> 7;
              v4 += 2;
              if (v95 >= 0x4000)
              {
                v98 = v95 >> 7;
                do
                {
                  *(v4 - 1) = v97 | 0x80;
                  v97 = v98 >> 7;
                  *v4++ = v98 >> 7;
                  v99 = v98 >> 14;
                  v98 >>= 7;
                }

                while (v99);
              }

              goto LABEL_128;
            }
          }

          else
          {
            v96 = *v93++;
            v95 = v96;
            *v4 = v96;
            if (v96 > 0x7F)
            {
              goto LABEL_131;
            }
          }

          ++v4;
LABEL_128:
          if (v93 >= v94)
          {
            goto LABEL_137;
          }
        }
      }
    }

    do
    {
      *v92++ = v91 | 0x80;
      v124 = v91 >> 14;
      v91 >>= 7;
    }

    while (v124);
    v4 = v92 - 1;
    goto LABEL_126;
  }

LABEL_137:
  v101 = *(a1 + 272);
  if (v101 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      *v4 = 90;
      v102 = v4 + 1;
      if (v101 < 0x80)
      {
        goto LABEL_140;
      }
    }

    else
    {
      *v4 = 90;
      v102 = v4 + 1;
      if (v101 < 0x80)
      {
LABEL_140:
        v4 += 2;
        *v102 = v101;
        v103 = *(a1 + 264);
        v104 = &v103[*(a1 + 256)];
        while (1)
        {
          if (*a3 <= v4)
          {
            v4 = sub_225EB68(a3, v4);
            v110 = *v103++;
            v105 = v110;
            *v4 = v110;
            if (v110 > 0x7F)
            {
LABEL_145:
              *v4 = v105 | 0x80;
              v107 = v105 >> 7;
              v4[1] = v105 >> 7;
              v4 += 2;
              if (v105 >= 0x4000)
              {
                v108 = v105 >> 7;
                do
                {
                  *(v4 - 1) = v108 | 0x80;
                  v108 = v107 >> 7;
                  *v4++ = v107 >> 7;
                  v109 = v107 >> 14;
                  v107 >>= 7;
                }

                while (v109);
              }

              goto LABEL_142;
            }
          }

          else
          {
            v106 = *v103++;
            v105 = v106;
            *v4 = v106;
            if (v106 > 0x7F)
            {
              goto LABEL_145;
            }
          }

          ++v4;
LABEL_142:
          if (v103 >= v104)
          {
            goto LABEL_151;
          }
        }
      }
    }

    do
    {
      *v102++ = v101 | 0x80;
      v125 = v101 >> 14;
      v101 >>= 7;
    }

    while (v125);
    v4 = v102 - 1;
    goto LABEL_140;
  }

LABEL_151:
  v111 = *(a1 + 8);
  if ((v111 & 1) == 0)
  {
    return v4;
  }

  v113 = v111 & 0xFFFFFFFFFFFFFFFCLL;
  v114 = *(v113 + 31);
  if (v114 < 0)
  {
    v115 = *(v113 + 8);
    v114 = *(v113 + 16);
  }

  else
  {
    v115 = (v113 + 8);
  }

  v126 = v114;
  if (*a3 - v4 >= v114)
  {
    memcpy(v4, v115, v114);
    v4 += v126;
    return v4;
  }

  return sub_1957130(a3, v115, v114, v4);
}

uint64_t sub_1214474(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 16));
  v3 = 11;
  v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v2 >= 0)
  {
    v3 = v4;
  }

  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  if (!v2)
  {
    v3 = 0;
  }

  *(a1 + 32) = v5;
  v6 = v3 + v2;
  v7 = sub_1959F64((a1 + 40));
  if (!v7)
  {
    *(a1 + 56) = 0;
    v9 = sub_1959E5C((a1 + 64));
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_12:
    *(a1 + 80) = 0;
    v10 = v6 + v9;
    v11 = sub_1959E5C((a1 + 88));
    if (v11)
    {
      goto LABEL_24;
    }

LABEL_13:
    *(a1 + 104) = 0;
    v12 = v10 + v11;
    v13 = sub_1959E5C((a1 + 112));
    if (v13)
    {
      goto LABEL_27;
    }

LABEL_14:
    *(a1 + 128) = 0;
    v14 = v12 + v13;
    v15 = sub_1959E5C((a1 + 136));
    if (v15)
    {
      goto LABEL_30;
    }

LABEL_15:
    *(a1 + 152) = 0;
    v16 = v14 + v15;
    v17 = sub_1959E5C((a1 + 160));
    if (v17)
    {
      goto LABEL_33;
    }

    goto LABEL_16;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  *(a1 + 56) = v7;
  v6 += v8 + v7;
  v9 = sub_1959E5C((a1 + 64));
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_20:
  if ((v9 & 0x80000000) != 0)
  {
    v20 = 11;
  }

  else
  {
    v20 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  *(a1 + 80) = v9;
  v10 = v20 + v6 + v9;
  v11 = sub_1959E5C((a1 + 88));
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_24:
  v21 = 11;
  v22 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v11 >= 0)
  {
    v21 = v22;
  }

  *(a1 + 104) = v11;
  v12 = v21 + v10 + v11;
  v13 = sub_1959E5C((a1 + 112));
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_27:
  v23 = 11;
  v24 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v13 >= 0)
  {
    v23 = v24;
  }

  *(a1 + 128) = v13;
  v14 = v23 + v12 + v13;
  v15 = sub_1959E5C((a1 + 136));
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_30:
  v25 = 11;
  v26 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v15 >= 0)
  {
    v25 = v26;
  }

  *(a1 + 152) = v15;
  v16 = v25 + v14 + v15;
  v17 = sub_1959E5C((a1 + 160));
  if (v17)
  {
LABEL_33:
    v27 = 11;
    v28 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v17 >= 0)
    {
      v27 = v28;
    }

    v29 = v27 + v16;
    *(a1 + 176) = v17;
    v18 = *(a1 + 192);
    v19 = v29 + v17 + v18;
    if (v18 < 1)
    {
      goto LABEL_49;
    }

    goto LABEL_36;
  }

LABEL_16:
  *(a1 + 176) = 0;
  v18 = *(a1 + 192);
  v19 = v16 + v17 + v18;
  if (v18 < 1)
  {
    goto LABEL_49;
  }

LABEL_36:
  v30 = *(a1 + 200);
  if (v18 == 1)
  {
    v31 = 0;
LABEL_45:
    v39 = (v30 + 8 * v31 + 8);
    v40 = v18 - v31;
    do
    {
      v41 = *v39++;
      v42 = *(v41 + 23);
      v43 = *(v41 + 8);
      if ((v42 & 0x80u) == 0)
      {
        v43 = v42;
      }

      v19 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      --v40;
    }

    while (v40);
    goto LABEL_49;
  }

  v32 = 0;
  v31 = v18 & 0x7FFFFFFE;
  v33 = v30 + 16;
  v34 = v31;
  do
  {
    v35 = *(v33 - 8);
    v36 = *(v35 + 23);
    v37 = *(v35 + 8);
    v38 = *(*v33 + 8);
    if ((v36 & 0x80u) == 0)
    {
      v37 = v36;
    }

    if (*(*v33 + 23) >= 0)
    {
      v38 = *(*v33 + 23);
    }

    v19 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
    v32 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6);
    v33 += 16;
    v34 -= 2;
  }

  while (v34);
  v19 += v32;
  if (v31 != v18)
  {
    goto LABEL_45;
  }

LABEL_49:
  v44 = sub_1959EA8((a1 + 208));
  v45 = 11;
  v46 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v44 >= 0)
  {
    v45 = v46;
  }

  v47 = v45 + v19;
  if (v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = 0;
  }

  if (!v44)
  {
    v47 = v19;
  }

  *(a1 + 224) = v48;
  v49 = v47 + v44;
  v50 = sub_1959E5C((a1 + 232));
  v51 = 11;
  v52 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v50 >= 0)
  {
    v51 = v52;
  }

  v53 = v51 + v49;
  if (v50)
  {
    v54 = v50;
  }

  else
  {
    v54 = 0;
  }

  if (!v50)
  {
    v53 = v49;
  }

  *(a1 + 248) = v54;
  v55 = v53 + v50;
  v56 = *(a1 + 256);
  if (v56)
  {
    v57 = *(a1 + 264);
    if ((v56 + 0x7FFFFFFF) > 0x80000002)
    {
      v58 = v56 & 0xFFFFFFFC;
      v60 = v57 + 1;
      v61 = 0uLL;
      v62 = v56 & 0xFFFFFFFC;
      v63 = 0uLL;
      do
      {
        v61 = vaddw_u32(v61, vbsl_s8(vcltz_s32(v60[-1]), 0xA0000000ALL, vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*&v60[-1] | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL)));
        v63 = vaddw_u32(v63, vbsl_s8(vcltz_s32(*v60), 0xA0000000ALL, vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*v60 | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL)));
        v60 += 2;
        v62 -= 4;
      }

      while (v62);
      v59 = vaddvq_s64(vaddq_s64(v63, v61));
      goto LABEL_74;
    }

    v58 = 0;
    v59 = 0;
    do
    {
      v64 = v57->i32[v58];
      if (v64 < 0)
      {
        v65 = 10;
      }

      else
      {
        v65 = (9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6;
      }

      v59 += v65;
      ++v58;
LABEL_74:
      ;
    }

    while (v56 != v58);
    if (v59)
    {
      if ((v59 & 0x80000000) != 0)
      {
        v66 = 11;
      }

      else
      {
        v66 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v55 += v66;
      v56 = v59;
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v59 = 0;
  }

  *(a1 + 272) = v56;
  result = v55 + v59;
  v68 = *(a1 + 8);
  if (v68)
  {
    v69 = v68 & 0xFFFFFFFFFFFFFFFCLL;
    v70 = *((v68 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v70 < 0)
    {
      v70 = *(v69 + 16);
    }

    result += v70;
    *(a1 + 276) = result;
  }

  else
  {
    *(a1 + 276) = result;
  }

  return result;
}