char *sub_190CC18(uint64_t a1, char *__dst, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v6;
    if (v6 > 0x7F)
    {
      __dst[1] = v6 | 0x80;
      v7 = v6 >> 7;
      __dst[2] = v6 >> 7;
      v5 = __dst + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = __dst[2];
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v5++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v5 = __dst + 2;
    }
  }

  else
  {
    v5 = __dst;
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v5;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 31);
  if (v13 < 0)
  {
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (v12 + 8);
  }

  if (*a3 - v5 >= v13)
  {
    v15 = v13;
    memcpy(v5, v14, v13);
    v5 += v15;
    return v5;
  }

  return sub_1957130(a3, v14, v13, v5);
}

uint64_t sub_190CD40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v1 += v5;
  }

  *(a1 + 20) = v1;
  return v1;
}

void *sub_190CDB8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_190CE2C(void *a1)
{
  sub_190CDB8(a1);

  operator delete();
}

uint64_t *sub_190CE64(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_190CE74(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_190CF08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_190CF34(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_190CF68(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_190CFDC(void *a1)
{
  sub_190CF68(a1);

  operator delete();
}

uint64_t *sub_190D014(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_190D024(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_190D0B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_190D0E4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_190D118(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_190D18C(void *a1)
{
  sub_190D118(a1);

  operator delete();
}

uint64_t *sub_190D1C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_190D1D4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_190D268(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_190D294(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_190D2C8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_190D33C(void *a1)
{
  sub_190D2C8(a1);

  operator delete();
}

uint64_t *sub_190D374(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_190D384(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_190D418(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_190D444(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_190D478(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_190D4EC(void *a1)
{
  sub_190D478(a1);

  operator delete();
}

uint64_t *sub_190D524(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_190D534(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_190D5C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_190D5F4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_190D628(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_190D69C(void *a1)
{
  sub_190D628(a1);

  operator delete();
}

uint64_t *sub_190D6D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_190D6E4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_190D778(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_190D7A4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_190D7D8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_190D85C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_190D85C(uint64_t (***result)(void)))(void)
{
  if (result != &off_278B610)
  {
    v1 = result;
    v2 = result[4];
    if (v2)
    {
      sub_19069A8(v2);
      operator delete();
    }

    v3 = v1[5];
    if (v3)
    {
      sub_1906B58(v3);
      operator delete();
    }

    v4 = v1[6];
    if (v4)
    {
      sub_1906D08(v4);
      operator delete();
    }

    v5 = v1[7];
    if (v5)
    {
      sub_19070E0(v5);
      operator delete();
    }

    v6 = v1[8];
    if (v6)
    {
      sub_1907290(v6);
      operator delete();
    }

    v7 = v1[9];
    if (v7)
    {
      sub_1907C10(v7);
      operator delete();
    }

    v8 = v1[10];
    if (v8)
    {
      sub_1907FE8(v8);
      operator delete();
    }

    v9 = v1[11];
    if (v9)
    {
      sub_1908360(v9);
      operator delete();
    }

    v10 = v1[12];
    if (v10)
    {
      sub_1908510(v10);
      operator delete();
    }

    v11 = v1[13];
    if (v11)
    {
      sub_19086C0(v11);
      operator delete();
    }

    v12 = v1[14];
    if (v12)
    {
      sub_1908A98(v12);
      operator delete();
    }

    v13 = v1[15];
    if (v13)
    {
      sub_1908FA8(v13);
      operator delete();
    }

    v14 = v1[16];
    if (v14)
    {
      sub_1909A68(v14);
      operator delete();
    }

    v15 = v1[17];
    if (v15)
    {
      sub_190A9C8(v15);
      operator delete();
    }

    v16 = v1[18];
    if (v16)
    {
      sub_190ADA0(v16);
      operator delete();
    }

    v17 = v1[19];
    if (v17)
    {
      sub_190B178(v17);
      operator delete();
    }

    v18 = v1[20];
    if (v18)
    {
      sub_190B328(v18);
      operator delete();
    }

    v19 = v1[21];
    if (v19)
    {
      sub_190B4D8(v19);
      operator delete();
    }

    v20 = v1[22];
    if (v20)
    {
      sub_190B688(v20);
      operator delete();
    }

    v21 = v1[23];
    if (v21)
    {
      sub_190B838(v21);
      operator delete();
    }

    v22 = v1[24];
    if (v22)
    {
      sub_190B9E8(v22);
      operator delete();
    }

    v23 = v1[25];
    if (v23)
    {
      sub_190C630(v23);
      operator delete();
    }

    v24 = v1[26];
    if (v24)
    {
      sub_190C9E0(v24);
      operator delete();
    }

    v25 = v1[27];
    if (v25)
    {
      sub_190CDB8(v25);
      operator delete();
    }

    v26 = v1[28];
    if (v26)
    {
      sub_1908C48(v26);
      operator delete();
    }

    v27 = v1[29];
    if (v27)
    {
      sub_1908DF8(v27);
      operator delete();
    }

    v28 = v1[30];
    if (v28)
    {
      sub_190BB98(v28);
      operator delete();
    }

    v29 = v1[31];
    if (v29)
    {
      sub_190BD48(v29);
      operator delete();
    }

    v30 = v1[32];
    if (v30)
    {
      sub_190BEF8(v30);
      operator delete();
    }

    v31 = v1[33];
    if (v31)
    {
      sub_190C480(v31);
      operator delete();
    }

    v32 = v1[34];
    if (v32)
    {
      sub_190C2D0(v32);
      operator delete();
    }

    v33 = v1[35];
    if (v33)
    {
      sub_190CF68(v33);
      operator delete();
    }

    v34 = v1[36];
    if (v34)
    {
      sub_190D118(v34);
      operator delete();
    }

    v35 = v1[37];
    if (v35)
    {
      sub_190D2C8(v35);
      operator delete();
    }

    v36 = v1[38];
    if (v36)
    {
      sub_190D478(v36);
      operator delete();
    }

    v37 = v1[39];
    if (v37)
    {
      sub_190D628(v37);
      operator delete();
    }

    result = v1[40];
    if (result)
    {
      sub_190D7D8();

      operator delete();
    }
  }

  return result;
}

void sub_190DC00(uint64_t a1)
{
  sub_190D7D8(a1);

  operator delete();
}

uint64_t sub_190DC38(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    if (v2)
    {
      v3 = *(result + 32);
      v4 = *(v3 + 8);
      result = v3 + 8;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(v1 + 40);
      v6 = *(v5 + 8);
      result = v5 + 8;
      if (v6)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 4) != 0)
    {
      v7 = *(v1 + 48);
      v8 = *(v7 + 8);
      result = v7 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v8)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 8) != 0)
    {
      v9 = *(v1 + 56);
      v10 = *(v9 + 8);
      result = v9 + 8;
      if (v10)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = sub_190734C(*(v1 + 64));
    }

    if ((v2 & 0x20) != 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v11 + 8);
      result = v11 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v12)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v13 = *(v1 + 80);
      v14 = *(v13 + 8);
      result = v13 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v14)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      v15 = *(v1 + 88);
      v16 = *(v15 + 8);
      result = v15 + 8;
      if (v16)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v17 = *(v1 + 96);
      v18 = *(v17 + 8);
      result = v17 + 8;
      if (v18)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v19 = *(v1 + 104);
      v20 = *(v19 + 8);
      result = v19 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v20)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      v21 = *(v1 + 112);
      v22 = *(v21 + 8);
      result = v21 + 8;
      if (v22)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      v23 = *(v1 + 120);
      v24 = *(v23 + 8);
      result = v23 + 8;
      if (v24)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x1000) != 0)
    {
      result = sub_1909B98(*(v1 + 128));
    }

    if ((v2 & 0x2000) != 0)
    {
      v25 = *(v1 + 136);
      v26 = *(v25 + 8);
      result = v25 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v26)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x4000) != 0)
    {
      v27 = *(v1 + 144);
      v28 = *(v27 + 8);
      result = v27 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v28)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      v29 = *(v1 + 152);
      v30 = *(v29 + 8);
      result = v29 + 8;
      if (v30)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v31 = *(v1 + 160);
      v32 = *(v31 + 8);
      result = v31 + 8;
      if (v32)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      v33 = *(v1 + 168);
      v34 = *(v33 + 8);
      result = v33 + 8;
      if (v34)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x40000) != 0)
    {
      v35 = *(v1 + 176);
      v36 = *(v35 + 8);
      result = v35 + 8;
      if (v36)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      v37 = *(v1 + 184);
      v38 = *(v37 + 8);
      result = v37 + 8;
      if (v38)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      v39 = *(v1 + 192);
      v40 = *(v39 + 8);
      result = v39 + 8;
      if (v40)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      result = sub_190C708(*(v1 + 200));
    }

    if ((v2 & 0x400000) != 0)
    {
      v41 = *(v1 + 208);
      v42 = *(v41 + 8);
      result = v41 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v42)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      v43 = *(v1 + 216);
      v44 = *(v43 + 8);
      result = v43 + 8;
      if (v44)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      v45 = *(v1 + 224);
      v46 = *(v45 + 8);
      result = v45 + 8;
      if (v46)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x2000000) != 0)
    {
      v47 = *(v1 + 232);
      v48 = *(v47 + 8);
      result = v47 + 8;
      if (v48)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x4000000) != 0)
    {
      v49 = *(v1 + 240);
      v50 = *(v49 + 8);
      result = v49 + 8;
      if (v50)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x8000000) != 0)
    {
      v51 = *(v1 + 248);
      v52 = *(v51 + 8);
      result = v51 + 8;
      if (v52)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x10000000) != 0)
    {
      v53 = *(v1 + 256);
      v54 = *(v53 + 8);
      result = v53 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v54)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x20000000) != 0)
    {
      v55 = *(v1 + 264);
      v56 = *(v55 + 8);
      result = v55 + 8;
      if (v56)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x40000000) != 0)
    {
      v57 = *(v1 + 272);
      v58 = *(v57 + 8);
      result = v57 + 8;
      if (v58)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 0x80000000) != 0)
    {
      v59 = *(v1 + 280);
      v60 = *(v59 + 8);
      result = v59 + 8;
      if (v60)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  v61 = *(v1 + 20);
  if ((v61 & 0x1F) != 0)
  {
    if (v61)
    {
      v62 = *(v1 + 288);
      v63 = *(v62 + 8);
      result = v62 + 8;
      if (v63)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v61 & 2) != 0)
    {
      v64 = *(v1 + 296);
      v65 = *(v64 + 8);
      result = v64 + 8;
      if (v65)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v61 & 4) != 0)
    {
      v66 = *(v1 + 304);
      v67 = *(v66 + 8);
      result = v66 + 8;
      if (v67)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v61 & 8) != 0)
    {
      v68 = *(v1 + 312);
      v69 = *(v68 + 8);
      result = v68 + 8;
      if (v69)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v61 & 0x10) != 0)
    {
      result = sub_190DC38(*(v1 + 320));
    }
  }

  if ((v61 & 0x60) != 0)
  {
    *(v1 + 328) = 0;
  }

  v71 = *(v1 + 8);
  v70 = (v1 + 8);
  v70[1] = 0;
  if (v71)
  {

    return sub_1957EA8(v70);
  }

  return result;
}

char *sub_190DFC4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v134 = a2;
  if (sub_195ADC0(a3, &v134, a3[11].i32[1]))
  {
    return v134;
  }

  while (2)
  {
    v6 = v134 + 1;
    v7 = *v134;
    if (*v134 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v134, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v134 + 2;
      }
    }

    v134 = v6;
    v10 = v7 >> 3;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 8)
        {
          goto LABEL_242;
        }

        v12 = v6 + 1;
        v11 = *v6;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if (v13 < 0)
        {
          v134 = sub_19587DC(v6, v11);
          if (!v134)
          {
            return 0;
          }
        }

        else
        {
          v12 = v6 + 2;
LABEL_12:
          v134 = v12;
        }

        if (v11 > 0x24)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 20) |= 0x20u;
          *(a1 + 328) = v11;
        }

        goto LABEL_250;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 1u;
        v72 = *(a1 + 32);
        if (!v72)
        {
          v73 = *(a1 + 8);
          v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
          if (v73)
          {
            v74 = *v74;
          }

          v72 = sub_1914DB0(v74);
          *(a1 + 32) = v72;
          v6 = v134;
        }

        v18 = sub_225B674(a3, v72, v6);
        goto LABEL_249;
      case 3u:
        if (v7 != 26)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 2u;
        v60 = *(a1 + 40);
        if (!v60)
        {
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          v60 = sub_1914E28(v62);
          *(a1 + 40) = v60;
          v6 = v134;
        }

        v18 = sub_225B708(a3, v60, v6);
        goto LABEL_249;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 4u;
        v66 = *(a1 + 48);
        if (!v66)
        {
          v67 = *(a1 + 8);
          v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
          if (v67)
          {
            v68 = *v68;
          }

          v66 = sub_1914EA0(v68);
          *(a1 + 48) = v66;
          v6 = v134;
        }

        v18 = sub_225B79C(a3, v66, v6);
        goto LABEL_249;
      case 5u:
        if (v7 != 42)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 8u;
        v45 = *(a1 + 56);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_1914F18(v47);
          *(a1 + 56) = v45;
          v6 = v134;
        }

        v18 = sub_225B82C(a3, v45, v6);
        goto LABEL_249;
      case 6u:
        if (v7 != 50)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x10u;
        v84 = *(a1 + 64);
        if (!v84)
        {
          v85 = *(a1 + 8);
          v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
          if (v85)
          {
            v86 = *v86;
          }

          v84 = sub_1914F90(v86);
          *(a1 + 64) = v84;
          v6 = v134;
        }

        v18 = sub_225B8C0(a3, v84, v6);
        goto LABEL_249;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x20u;
        v93 = *(a1 + 72);
        if (!v93)
        {
          v94 = *(a1 + 8);
          v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
          if (v94)
          {
            v95 = *v95;
          }

          v93 = sub_1915034(v95);
          *(a1 + 72) = v93;
          v6 = v134;
        }

        v18 = sub_225B950(a3, v93, v6);
        goto LABEL_249;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x40u;
        v69 = *(a1 + 80);
        if (!v69)
        {
          v70 = *(a1 + 8);
          v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
          if (v70)
          {
            v71 = *v71;
          }

          v69 = sub_19150B0(v71);
          *(a1 + 80) = v69;
          v6 = v134;
        }

        v18 = sub_225B9E0(a3, v69, v6);
        goto LABEL_249;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x80u;
        v102 = *(a1 + 88);
        if (!v102)
        {
          v103 = *(a1 + 8);
          v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
          if (v103)
          {
            v104 = *v104;
          }

          v102 = sub_191512C(v104);
          *(a1 + 88) = v102;
          v6 = v134;
        }

        v18 = sub_225BA70(a3, v102, v6);
        goto LABEL_249;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x100u;
        v51 = *(a1 + 96);
        if (!v51)
        {
          v52 = *(a1 + 8);
          v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v53 = *v53;
          }

          v51 = sub_19151A4(v53);
          *(a1 + 96) = v51;
          v6 = v134;
        }

        v18 = sub_225BB04(a3, v51, v6);
        goto LABEL_249;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x200u;
        v99 = *(a1 + 104);
        if (!v99)
        {
          v100 = *(a1 + 8);
          v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
          if (v100)
          {
            v101 = *v101;
          }

          v99 = sub_191521C(v101);
          *(a1 + 104) = v99;
          v6 = v134;
        }

        v18 = sub_225BB98(a3, v99, v6);
        goto LABEL_249;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x400u;
        v42 = *(a1 + 112);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_1915298(v44);
          *(a1 + 112) = v42;
          v6 = v134;
        }

        v18 = sub_225BC28(a3, v42, v6);
        goto LABEL_249;
      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x800u;
        v48 = *(a1 + 120);
        if (!v48)
        {
          v49 = *(a1 + 8);
          v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v50 = *v50;
          }

          v48 = sub_1915400(v50);
          *(a1 + 120) = v48;
          v6 = v134;
        }

        v18 = sub_225BCBC(a3, v48, v6);
        goto LABEL_249;
      case 0xEu:
        if (v7 != 114)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x1000u;
        v90 = *(a1 + 128);
        if (!v90)
        {
          v91 = *(a1 + 8);
          v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
          if (v91)
          {
            v92 = *v92;
          }

          v90 = sub_19154F8(v92);
          *(a1 + 128) = v90;
          v6 = v134;
        }

        v18 = sub_225BD50(a3, v90, v6);
        goto LABEL_249;
      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x2000u;
        v34 = *(a1 + 136);
        if (!v34)
        {
          v35 = *(a1 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_19155B4(v36);
          *(a1 + 136) = v34;
          v6 = v134;
        }

        v18 = sub_225BDE0(a3, v34, v6);
        goto LABEL_249;
      case 0x10u:
        if (v7 != 130)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x4000u;
        v63 = *(a1 + 144);
        if (!v63)
        {
          v64 = *(a1 + 8);
          v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v64)
          {
            v65 = *v65;
          }

          v63 = sub_1915630(v65);
          *(a1 + 144) = v63;
          v6 = v134;
        }

        v18 = sub_225BE70(a3, v63, v6);
        goto LABEL_249;
      case 0x11u:
        if (v7 != 138)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x8000u;
        v31 = *(a1 + 152);
        if (!v31)
        {
          v32 = *(a1 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_19156AC(v33);
          *(a1 + 152) = v31;
          v6 = v134;
        }

        v18 = sub_225BF00(a3, v31, v6);
        goto LABEL_249;
      case 0x12u:
        if (v7 != 146)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x10000u;
        v78 = *(a1 + 160);
        if (!v78)
        {
          v79 = *(a1 + 8);
          v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
          if (v79)
          {
            v80 = *v80;
          }

          v78 = sub_1915724(v80);
          *(a1 + 160) = v78;
          v6 = v134;
        }

        v18 = sub_225BF94(a3, v78, v6);
        goto LABEL_249;
      case 0x13u:
        if (v7 != 154)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x20000u;
        v96 = *(a1 + 168);
        if (!v96)
        {
          v97 = *(a1 + 8);
          v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
          if (v97)
          {
            v98 = *v98;
          }

          v96 = sub_191579C(v98);
          *(a1 + 168) = v96;
          v6 = v134;
        }

        v18 = sub_225C028(a3, v96, v6);
        goto LABEL_249;
      case 0x14u:
        if (v7 != 162)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x40000u;
        v114 = *(a1 + 176);
        if (!v114)
        {
          v115 = *(a1 + 8);
          v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
          if (v115)
          {
            v116 = *v116;
          }

          v114 = sub_1915814(v116);
          *(a1 + 176) = v114;
          v6 = v134;
        }

        v18 = sub_225C0BC(a3, v114, v6);
        goto LABEL_249;
      case 0x15u:
        if (v7 != 170)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x80000u;
        v81 = *(a1 + 184);
        if (!v81)
        {
          v82 = *(a1 + 8);
          v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
          if (v82)
          {
            v83 = *v83;
          }

          v81 = sub_191588C(v83);
          *(a1 + 184) = v81;
          v6 = v134;
        }

        v18 = sub_225C150(a3, v81, v6);
        goto LABEL_249;
      case 0x16u:
        if (v7 != 178)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x100000u;
        v87 = *(a1 + 192);
        if (!v87)
        {
          v88 = *(a1 + 8);
          v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
          if (v88)
          {
            v89 = *v89;
          }

          v87 = sub_1915904(v89);
          *(a1 + 192) = v87;
          v6 = v134;
        }

        v18 = sub_225C1E4(a3, v87, v6);
        goto LABEL_249;
      case 0x17u:
        if (v7 != 186)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x200000u;
        v111 = *(a1 + 200);
        if (!v111)
        {
          v112 = *(a1 + 8);
          v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
          if (v112)
          {
            v113 = *v113;
          }

          v111 = sub_1915BD8(v113);
          *(a1 + 200) = v111;
          v6 = v134;
        }

        v18 = sub_225C278(a3, v111, v6);
        goto LABEL_249;
      case 0x18u:
        if (v7 != 194)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x400000u;
        v117 = *(a1 + 208);
        if (!v117)
        {
          v118 = *(a1 + 8);
          v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
          if (v118)
          {
            v119 = *v119;
          }

          v117 = sub_1915C5C(v119);
          *(a1 + 208) = v117;
          v6 = v134;
        }

        v18 = sub_225C308(a3, v117, v6);
        goto LABEL_249;
      case 0x19u:
        if (v7 != 202)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x800000u;
        v57 = *(a1 + 216);
        if (!v57)
        {
          v58 = *(a1 + 8);
          v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
          if (v58)
          {
            v59 = *v59;
          }

          v57 = sub_1915CD8(v59);
          *(a1 + 216) = v57;
          v6 = v134;
        }

        v18 = sub_225C398(a3, v57, v6);
        goto LABEL_249;
      case 0x1Au:
        if (v7 != 210)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x1000000u;
        v54 = *(a1 + 224);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_1915310(v56);
          *(a1 + 224) = v54;
          v6 = v134;
        }

        v18 = sub_225C42C(a3, v54, v6);
        goto LABEL_249;
      case 0x1Bu:
        if (v7 != 218)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x2000000u;
        v126 = *(a1 + 232);
        if (!v126)
        {
          v127 = *(a1 + 8);
          v128 = (v127 & 0xFFFFFFFFFFFFFFFCLL);
          if (v127)
          {
            v128 = *v128;
          }

          v126 = sub_1915388(v128);
          *(a1 + 232) = v126;
          v6 = v134;
        }

        v18 = sub_225C4C0(a3, v126, v6);
        goto LABEL_249;
      case 0x1Cu:
        if (v7 != 226)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x4000000u;
        v25 = *(a1 + 240);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_191597C(v27);
          *(a1 + 240) = v25;
          v6 = v134;
        }

        v18 = sub_225C554(a3, v25, v6);
        goto LABEL_249;
      case 0x1Du:
        if (v7 != 234)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x8000000u;
        v120 = *(a1 + 248);
        if (!v120)
        {
          v121 = *(a1 + 8);
          v122 = (v121 & 0xFFFFFFFFFFFFFFFCLL);
          if (v121)
          {
            v122 = *v122;
          }

          v120 = sub_19159F4(v122);
          *(a1 + 248) = v120;
          v6 = v134;
        }

        v18 = sub_225C5E8(a3, v120, v6);
        goto LABEL_249;
      case 0x1Eu:
        if (v7 != 242)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x10000000u;
        v123 = *(a1 + 256);
        if (!v123)
        {
          v124 = *(a1 + 8);
          v125 = (v124 & 0xFFFFFFFFFFFFFFFCLL);
          if (v124)
          {
            v125 = *v125;
          }

          v123 = sub_1915A6C(v125);
          *(a1 + 256) = v123;
          v6 = v134;
        }

        v18 = sub_225C67C(a3, v123, v6);
        goto LABEL_249;
      case 0x1Fu:
        if (v7 != 250)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x20000000u;
        v105 = *(a1 + 264);
        if (!v105)
        {
          v106 = *(a1 + 8);
          v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
          if (v106)
          {
            v107 = *v107;
          }

          v105 = sub_1915B60(v107);
          *(a1 + 264) = v105;
          v6 = v134;
        }

        v18 = sub_225C70C(a3, v105, v6);
        goto LABEL_249;
      case 0x20u:
        if (v7 != 2)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x40000000u;
        v75 = *(a1 + 272);
        if (!v75)
        {
          v76 = *(a1 + 8);
          v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
          if (v76)
          {
            v77 = *v77;
          }

          v75 = sub_1915AE8(v77);
          *(a1 + 272) = v75;
          v6 = v134;
        }

        v18 = sub_225C7A0(a3, v75, v6);
        goto LABEL_249;
      case 0x21u:
        if (v7 != 10)
        {
          goto LABEL_242;
        }

        *(a1 + 16) |= 0x80000000;
        v108 = *(a1 + 280);
        if (!v108)
        {
          v109 = *(a1 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          v108 = sub_1915D50(v110);
          *(a1 + 280) = v108;
          v6 = v134;
        }

        v18 = sub_225C834(a3, v108, v6);
        goto LABEL_249;
      case 0x22u:
        if (v7 != 18)
        {
          goto LABEL_242;
        }

        *(a1 + 20) |= 1u;
        v37 = *(a1 + 288);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          v37 = sub_1915DC8(v39);
          *(a1 + 288) = v37;
          v6 = v134;
        }

        v18 = sub_225C8C8(a3, v37, v6);
        goto LABEL_249;
      case 0x23u:
        if (v7 != 26)
        {
          goto LABEL_242;
        }

        *(a1 + 20) |= 2u;
        v28 = *(a1 + 296);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_1915E40(v30);
          *(a1 + 296) = v28;
          v6 = v134;
        }

        v18 = sub_225C95C(a3, v28, v6);
        goto LABEL_249;
      case 0x24u:
        if (v7 != 34)
        {
          goto LABEL_242;
        }

        *(a1 + 20) |= 4u;
        v19 = *(a1 + 304);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_1915EB8(v21);
          *(a1 + 304) = v19;
          v6 = v134;
        }

        v18 = sub_225C9F0(a3, v19, v6);
        goto LABEL_249;
      case 0x25u:
        if (v7 != 42)
        {
          goto LABEL_242;
        }

        *(a1 + 20) |= 8u;
        v22 = *(a1 + 312);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_1915F30(v24);
          *(a1 + 312) = v22;
          v6 = v134;
        }

        v18 = sub_225CA84(a3, v22, v6);
        goto LABEL_249;
      default:
        if (v10 == 101)
        {
          if (v7 != 40)
          {
            goto LABEL_242;
          }

          *(a1 + 20) |= 0x40u;
          LODWORD(v40) = *v6;
          if ((v40 & 0x80000000) == 0)
          {
            v41 = v6 + 1;
LABEL_254:
            v134 = v41;
            *(a1 + 332) = v40;
            goto LABEL_250;
          }

          v40 = (v6[1] << 7) + v40 - 128;
          if ((v6[1] & 0x80000000) == 0)
          {
            v41 = v6 + 2;
            goto LABEL_254;
          }

          v132 = sub_19587DC(v6, v40);
          v134 = v132;
          *(a1 + 332) = v133;
          if (!v132)
          {
            return 0;
          }

LABEL_250:
          if (sub_195ADC0(a3, &v134, a3[11].i32[1]))
          {
            return v134;
          }

          continue;
        }

        if (v10 == 102 && v7 == 50)
        {
          *(a1 + 20) |= 0x10u;
          v14 = *(a1 + 320);
          if (!v14)
          {
            v15 = *(a1 + 8);
            v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
            if (v15)
            {
              v16 = *v16;
            }

            sub_1915FA8(v16);
            v14 = v17;
            *(a1 + 320) = v17;
          }

          v18 = sub_225CB18(a3, v14);
LABEL_249:
          v134 = v18;
          if (!v18)
          {
            return 0;
          }

          goto LABEL_250;
        }

LABEL_242:
        if (v7)
        {
          v129 = (v7 & 7) == 4;
        }

        else
        {
          v129 = 1;
        }

        if (!v129)
        {
          v130 = *(a1 + 8);
          if (v130)
          {
            v131 = (v130 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v131 = sub_11F1920((a1 + 8));
            v6 = v134;
          }

          v18 = sub_1952690(v7, v131, v6, a3);
          goto LABEL_249;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return v134;
    }
  }
}

char *sub_190EE10(uint64_t a1, char *a2, _DWORD *a3)
{
  if ((*(a1 + 20) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 328);
    *a2 = 8;
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      a2[2] = v6 >> 7;
      v5 = a2 + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = a2[2];
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v5++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v5 = a2 + 2;
    }
  }

  else
  {
    v5 = a2;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    if (*a3 <= v5)
    {
      v5 = sub_225EB68(a3, v5);
    }

    v11 = *(a1 + 32);
    *v5 = 18;
    v12 = *(v11 + 16);
    v5[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v5 + 1);
    }

    else
    {
      v13 = v5 + 2;
    }

    v5 = sub_1906A64(v11, v13, a3);
    if ((v10 & 2) == 0)
    {
LABEL_12:
      if ((v10 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_55;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v14 = *(a1 + 40);
  *v5 = 26;
  v15 = *(v14 + 16);
  v5[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v5 + 1);
  }

  else
  {
    v16 = v5 + 2;
  }

  v5 = sub_1906C14(v14, v16, a3);
  if ((v10 & 4) == 0)
  {
LABEL_13:
    if ((v10 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_55:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v17 = *(a1 + 48);
  *v5 = 34;
  v18 = *(v17 + 20);
  v5[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v5 + 1);
  }

  else
  {
    v19 = v5 + 2;
  }

  v5 = sub_1906F40(v17, v19, a3);
  if ((v10 & 8) == 0)
  {
LABEL_14:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_61:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v20 = *(a1 + 56);
  *v5 = 42;
  v21 = *(v20 + 16);
  v5[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v5 + 1);
  }

  else
  {
    v22 = v5 + 2;
  }

  v5 = sub_190719C(v20, v22, a3);
  if ((v10 & 0x10) == 0)
  {
LABEL_15:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_73;
  }

LABEL_67:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v23 = *(a1 + 64);
  *v5 = 50;
  v24 = *(v23 + 20);
  v5[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v5 + 1);
  }

  else
  {
    v25 = v5 + 2;
  }

  v5 = sub_1907744(v23, v25, a3);
  if ((v10 & 0x20) == 0)
  {
LABEL_16:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_73:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v26 = *(a1 + 72);
  *v5 = 58;
  v27 = *(v26 + 20);
  v5[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v5 + 1);
  }

  else
  {
    v28 = v5 + 2;
  }

  v5 = sub_1907E3C(v26, v28, a3);
  if ((v10 & 0x40) == 0)
  {
LABEL_17:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_85;
  }

LABEL_79:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v29 = *(a1 + 80);
  *v5 = 66;
  v30 = *(v29 + 20);
  v5[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, v5 + 1);
  }

  else
  {
    v31 = v5 + 2;
  }

  v5 = sub_1908230(v29, v31, a3);
  if ((v10 & 0x80) == 0)
  {
LABEL_18:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_91;
  }

LABEL_85:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v32 = *(a1 + 88);
  *v5 = 74;
  v33 = *(v32 + 16);
  v5[1] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, v5 + 1);
  }

  else
  {
    v34 = v5 + 2;
  }

  v5 = sub_190841C(v32, v34, a3);
  if ((v10 & 0x100) == 0)
  {
LABEL_19:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_97;
  }

LABEL_91:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v35 = *(a1 + 96);
  *v5 = 82;
  v36 = *(v35 + 16);
  v5[1] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, v5 + 1);
  }

  else
  {
    v37 = v5 + 2;
  }

  v5 = sub_19085CC(v35, v37, a3);
  if ((v10 & 0x200) == 0)
  {
LABEL_20:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_103;
  }

LABEL_97:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v38 = *(a1 + 104);
  *v5 = 90;
  v39 = *(v38 + 20);
  v5[1] = v39;
  if (v39 > 0x7F)
  {
    v40 = sub_19575D0(v39, v5 + 1);
  }

  else
  {
    v40 = v5 + 2;
  }

  v5 = sub_19088F8(v38, v40, a3);
  if ((v10 & 0x400) == 0)
  {
LABEL_21:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_109;
  }

LABEL_103:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v41 = *(a1 + 112);
  *v5 = 98;
  v42 = *(v41 + 16);
  v5[1] = v42;
  if (v42 > 0x7F)
  {
    v43 = sub_19575D0(v42, v5 + 1);
  }

  else
  {
    v43 = v5 + 2;
  }

  v5 = sub_1908B54(v41, v43, a3);
  if ((v10 & 0x800) == 0)
  {
LABEL_22:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_115;
  }

LABEL_109:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v44 = *(a1 + 120);
  *v5 = 106;
  v45 = *(v44 + 16);
  v5[1] = v45;
  if (v45 > 0x7F)
  {
    v46 = sub_19575D0(v45, v5 + 1);
  }

  else
  {
    v46 = v5 + 2;
  }

  v5 = sub_1909064(v44, v46, a3);
  if ((v10 & 0x1000) == 0)
  {
LABEL_23:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_121;
  }

LABEL_115:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v47 = *(a1 + 128);
  *v5 = 114;
  v48 = *(v47 + 20);
  v5[1] = v48;
  if (v48 > 0x7F)
  {
    v49 = sub_19575D0(v48, v5 + 1);
  }

  else
  {
    v49 = v5 + 2;
  }

  v5 = sub_190A15C(v47, v49, a3);
  if ((v10 & 0x2000) == 0)
  {
LABEL_24:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_127;
  }

LABEL_121:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v50 = *(a1 + 136);
  *v5 = 122;
  v51 = *(v50 + 20);
  v5[1] = v51;
  if (v51 > 0x7F)
  {
    v52 = sub_19575D0(v51, v5 + 1);
  }

  else
  {
    v52 = v5 + 2;
  }

  v5 = sub_190AC00(v50, v52, a3);
  if ((v10 & 0x4000) == 0)
  {
LABEL_25:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_133;
  }

LABEL_127:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v53 = *(a1 + 144);
  *v5 = 386;
  v54 = *(v53 + 20);
  v5[2] = v54;
  if (v54 > 0x7F)
  {
    v55 = sub_19575D0(v54, v5 + 2);
  }

  else
  {
    v55 = v5 + 3;
  }

  v5 = sub_190AFCC(v53, v55, a3);
  if ((v10 & 0x8000) == 0)
  {
LABEL_26:
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_139;
  }

LABEL_133:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v56 = *(a1 + 152);
  *v5 = 394;
  v57 = *(v56 + 16);
  v5[2] = v57;
  if (v57 > 0x7F)
  {
    v58 = sub_19575D0(v57, v5 + 2);
  }

  else
  {
    v58 = v5 + 3;
  }

  v5 = sub_190B234(v56, v58, a3);
  if ((v10 & 0x10000) == 0)
  {
LABEL_27:
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_145;
  }

LABEL_139:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v59 = *(a1 + 160);
  *v5 = 402;
  v60 = *(v59 + 16);
  v5[2] = v60;
  if (v60 > 0x7F)
  {
    v61 = sub_19575D0(v60, v5 + 2);
  }

  else
  {
    v61 = v5 + 3;
  }

  v5 = sub_190B3E4(v59, v61, a3);
  if ((v10 & 0x20000) == 0)
  {
LABEL_28:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_151;
  }

LABEL_145:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v62 = *(a1 + 168);
  *v5 = 410;
  v63 = *(v62 + 16);
  v5[2] = v63;
  if (v63 > 0x7F)
  {
    v64 = sub_19575D0(v63, v5 + 2);
  }

  else
  {
    v64 = v5 + 3;
  }

  v5 = sub_190B594(v62, v64, a3);
  if ((v10 & 0x40000) == 0)
  {
LABEL_29:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_157;
  }

LABEL_151:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v65 = *(a1 + 176);
  *v5 = 418;
  v66 = *(v65 + 16);
  v5[2] = v66;
  if (v66 > 0x7F)
  {
    v67 = sub_19575D0(v66, v5 + 2);
  }

  else
  {
    v67 = v5 + 3;
  }

  v5 = sub_190B744(v65, v67, a3);
  if ((v10 & 0x80000) == 0)
  {
LABEL_30:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_163;
  }

LABEL_157:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v68 = *(a1 + 184);
  *v5 = 426;
  v69 = *(v68 + 16);
  v5[2] = v69;
  if (v69 > 0x7F)
  {
    v70 = sub_19575D0(v69, v5 + 2);
  }

  else
  {
    v70 = v5 + 3;
  }

  v5 = sub_190B8F4(v68, v70, a3);
  if ((v10 & 0x100000) == 0)
  {
LABEL_31:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_169;
  }

LABEL_163:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v71 = *(a1 + 192);
  *v5 = 434;
  v72 = *(v71 + 16);
  v5[2] = v72;
  if (v72 > 0x7F)
  {
    v73 = sub_19575D0(v72, v5 + 2);
  }

  else
  {
    v73 = v5 + 3;
  }

  v5 = sub_190BAA4(v71, v73, a3);
  if ((v10 & 0x200000) == 0)
  {
LABEL_32:
    if ((v10 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_175;
  }

LABEL_169:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v74 = *(a1 + 200);
  *v5 = 442;
  v75 = *(v74 + 20);
  v5[2] = v75;
  if (v75 > 0x7F)
  {
    v76 = sub_19575D0(v75, v5 + 2);
  }

  else
  {
    v76 = v5 + 3;
  }

  v5 = sub_190C884(v74, v76, a3);
  if ((v10 & 0x400000) == 0)
  {
LABEL_33:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_181;
  }

LABEL_175:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v77 = *(a1 + 208);
  *v5 = 450;
  v78 = *(v77 + 20);
  v5[2] = v78;
  if (v78 > 0x7F)
  {
    v79 = sub_19575D0(v78, v5 + 2);
  }

  else
  {
    v79 = v5 + 3;
  }

  v5 = sub_190CC18(v77, v79, a3);
  if ((v10 & 0x800000) == 0)
  {
LABEL_34:
    if ((v10 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_187;
  }

LABEL_181:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v80 = *(a1 + 216);
  *v5 = 458;
  v81 = *(v80 + 16);
  v5[2] = v81;
  if (v81 > 0x7F)
  {
    v82 = sub_19575D0(v81, v5 + 2);
  }

  else
  {
    v82 = v5 + 3;
  }

  v5 = sub_190CE74(v80, v82, a3);
  if ((v10 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v10 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_193;
  }

LABEL_187:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v83 = *(a1 + 224);
  *v5 = 466;
  v84 = *(v83 + 16);
  v5[2] = v84;
  if (v84 > 0x7F)
  {
    v85 = sub_19575D0(v84, v5 + 2);
  }

  else
  {
    v85 = v5 + 3;
  }

  v5 = sub_1908D04(v83, v85, a3);
  if ((v10 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v10 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_199;
  }

LABEL_193:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v86 = *(a1 + 232);
  *v5 = 474;
  v87 = *(v86 + 16);
  v5[2] = v87;
  if (v87 > 0x7F)
  {
    v88 = sub_19575D0(v87, v5 + 2);
  }

  else
  {
    v88 = v5 + 3;
  }

  v5 = sub_1908EB4(v86, v88, a3);
  if ((v10 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_205;
  }

LABEL_199:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v89 = *(a1 + 240);
  *v5 = 482;
  v90 = *(v89 + 16);
  v5[2] = v90;
  if (v90 > 0x7F)
  {
    v91 = sub_19575D0(v90, v5 + 2);
  }

  else
  {
    v91 = v5 + 3;
  }

  v5 = sub_190BC54(v89, v91, a3);
  if ((v10 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_211;
  }

LABEL_205:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v92 = *(a1 + 248);
  *v5 = 490;
  v93 = *(v92 + 16);
  v5[2] = v93;
  if (v93 > 0x7F)
  {
    v94 = sub_19575D0(v93, v5 + 2);
  }

  else
  {
    v94 = v5 + 3;
  }

  v5 = sub_190BE04(v92, v94, a3);
  if ((v10 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_217;
  }

LABEL_211:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v95 = *(a1 + 256);
  *v5 = 498;
  v96 = *(v95 + 20);
  v5[2] = v96;
  if (v96 > 0x7F)
  {
    v97 = sub_19575D0(v96, v5 + 2);
  }

  else
  {
    v97 = v5 + 3;
  }

  v5 = sub_190C130(v95, v97, a3);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_223;
  }

LABEL_217:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v98 = *(a1 + 264);
  *v5 = 506;
  v99 = *(v98 + 16);
  v5[2] = v99;
  if (v99 > 0x7F)
  {
    v100 = sub_19575D0(v99, v5 + 2);
  }

  else
  {
    v100 = v5 + 3;
  }

  v5 = sub_190C53C(v98, v100, a3);
  if ((v10 & 0x40000000) == 0)
  {
LABEL_41:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_229;
  }

LABEL_223:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v101 = *(a1 + 272);
  *v5 = 642;
  v102 = *(v101 + 16);
  v5[2] = v102;
  if (v102 > 0x7F)
  {
    v103 = sub_19575D0(v102, v5 + 2);
  }

  else
  {
    v103 = v5 + 3;
  }

  v5 = sub_190C38C(v101, v103, a3);
  if (v10 < 0)
  {
LABEL_229:
    if (*a3 <= v5)
    {
      v5 = sub_225EB68(a3, v5);
    }

    v104 = *(a1 + 280);
    *v5 = 650;
    v105 = *(v104 + 16);
    v5[2] = v105;
    if (v105 > 0x7F)
    {
      v106 = sub_19575D0(v105, v5 + 2);
    }

    else
    {
      v106 = v5 + 3;
    }

    v5 = sub_190D024(v104, v106, a3);
  }

LABEL_235:
  v107 = *(a1 + 20);
  if (v107)
  {
    if (*a3 <= v5)
    {
      v5 = sub_225EB68(a3, v5);
    }

    v109 = *(a1 + 288);
    *v5 = 658;
    v110 = *(v109 + 16);
    v5[2] = v110;
    if (v110 > 0x7F)
    {
      v111 = sub_19575D0(v110, v5 + 2);
    }

    else
    {
      v111 = v5 + 3;
    }

    v5 = sub_190D1D4(v109, v111, a3);
    if ((v107 & 2) == 0)
    {
LABEL_237:
      if ((v107 & 4) == 0)
      {
        goto LABEL_238;
      }

      goto LABEL_253;
    }
  }

  else if ((v107 & 2) == 0)
  {
    goto LABEL_237;
  }

  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v112 = *(a1 + 296);
  *v5 = 666;
  v113 = *(v112 + 16);
  v5[2] = v113;
  if (v113 > 0x7F)
  {
    v114 = sub_19575D0(v113, v5 + 2);
  }

  else
  {
    v114 = v5 + 3;
  }

  v5 = sub_190D384(v112, v114, a3);
  if ((v107 & 4) == 0)
  {
LABEL_238:
    if ((v107 & 8) == 0)
    {
      goto LABEL_239;
    }

LABEL_259:
    if (*a3 <= v5)
    {
      v5 = sub_225EB68(a3, v5);
    }

    v118 = *(a1 + 312);
    *v5 = 682;
    v119 = *(v118 + 16);
    v5[2] = v119;
    if (v119 > 0x7F)
    {
      v120 = sub_19575D0(v119, v5 + 2);
    }

    else
    {
      v120 = v5 + 3;
    }

    v5 = sub_190D6E4(v118, v120, a3);
    if ((v107 & 0x40) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_265;
  }

LABEL_253:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v115 = *(a1 + 304);
  *v5 = 674;
  v116 = *(v115 + 16);
  v5[2] = v116;
  if (v116 > 0x7F)
  {
    v117 = sub_19575D0(v116, v5 + 2);
  }

  else
  {
    v117 = v5 + 3;
  }

  v5 = sub_190D534(v115, v117, a3);
  if ((v107 & 8) != 0)
  {
    goto LABEL_259;
  }

LABEL_239:
  if ((v107 & 0x40) == 0)
  {
LABEL_240:
    v108 = v5;
    goto LABEL_272;
  }

LABEL_265:
  if (*a3 <= v5)
  {
    v5 = sub_225EB68(a3, v5);
  }

  v121 = *(a1 + 332);
  *v5 = 1704;
  v5[2] = v121;
  if (v121 > 0x7F)
  {
    v5[2] = v121 | 0x80;
    v122 = v121 >> 7;
    v5[3] = v121 >> 7;
    v108 = v5 + 4;
    if (v121 >= 0x4000)
    {
      LOBYTE(v5) = v5[3];
      do
      {
        *(v108 - 1) = v5 | 0x80;
        v5 = (v122 >> 7);
        *v108++ = v122 >> 7;
        v123 = v122 >> 14;
        v122 >>= 7;
      }

      while (v123);
    }
  }

  else
  {
    v108 = v5 + 3;
  }

LABEL_272:
  if ((v107 & 0x10) != 0)
  {
    if (*a3 <= v108)
    {
      v108 = sub_225EB68(a3, v108);
    }

    v124 = *(a1 + 320);
    *v108 = 1714;
    v125 = *(v124 + 24);
    v108[2] = v125;
    if (v125 > 0x7F)
    {
      v126 = sub_19575D0(v125, v108 + 2);
    }

    else
    {
      v126 = v108 + 3;
    }

    v108 = sub_190EE10(v124, v126, a3);
  }

  v127 = *(a1 + 8);
  if ((v127 & 1) == 0)
  {
    return v108;
  }

  v129 = v127 & 0xFFFFFFFFFFFFFFFCLL;
  v130 = *(v129 + 31);
  if (v130 < 0)
  {
    v131 = *(v129 + 8);
    v130 = *(v129 + 16);
  }

  else
  {
    v131 = (v129 + 8);
  }

  if (*a3 - v108 >= v130)
  {
    v132 = v130;
    memcpy(v108, v131, v130);
    v108 += v132;
    return v108;
  }

  return sub_1957130(a3, v131, v130, v108);
}

uint64_t sub_190FECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_30;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  if (v5)
  {
    v102 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v102 + 16);
    }
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 16) = v6;
  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 40);
    v8 = *(v7 + 8);
    if (v8)
    {
      v103 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v9 < 0)
      {
        v9 = *(v103 + 16);
      }
    }

    else
    {
      v9 = 0;
    }

    *(v7 + 16) = v9;
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v10 = sub_1907068(*(a1 + 48));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 56);
  v12 = *(v11 + 8);
  if (v12)
  {
    v104 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v104 + 16);
    }
  }

  else
  {
    v13 = 0;
  }

  *(v11 + 16) = v13;
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = sub_19079C4(*(a1 + 64));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = sub_1907F64(*(a1 + 72));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

LABEL_25:
  v16 = *(a1 + 80);
  v17 = 2 * (*(v16 + 16) & 1);
  v18 = *(v16 + 8);
  if (v18)
  {
    v105 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v106 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v106 < 0)
    {
      v106 = *(v105 + 16);
    }

    v17 += v106;
  }

  *(v16 + 20) = v17;
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_27:
    v19 = *(a1 + 88);
    v20 = *(v19 + 8);
    if (v20)
    {
      v107 = v20 & 0xFFFFFFFFFFFFFFFCLL;
      v21 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v21 < 0)
      {
        v21 = *(v107 + 16);
      }
    }

    else
    {
      v21 = 0;
    }

    *(v19 + 16) = v21;
    v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_30:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_56;
  }

  if ((v2 & 0x100) != 0)
  {
    v22 = *(a1 + 96);
    v23 = *(v22 + 8);
    if (v23)
    {
      v108 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v24 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v24 < 0)
      {
        v24 = *(v108 + 16);
      }
    }

    else
    {
      v24 = 0;
    }

    *(v22 + 16) = v24;
    v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_33:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_44;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_33;
  }

  v25 = sub_1908A20(*(a1 + 104));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_34:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_47;
  }

LABEL_44:
  v26 = *(a1 + 112);
  v27 = *(v26 + 8);
  if (v27)
  {
    v109 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v27 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v109 + 16);
    }
  }

  else
  {
    v28 = 0;
  }

  *(v26 + 16) = v28;
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) == 0)
  {
LABEL_35:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_50;
  }

LABEL_47:
  v29 = *(a1 + 120);
  v30 = *(v29 + 8);
  if (v30)
  {
    v110 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *((v30 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v31 < 0)
    {
      v31 = *(v110 + 16);
    }
  }

  else
  {
    v31 = 0;
  }

  *(v29 + 16) = v31;
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x1000) == 0)
  {
LABEL_36:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_51;
  }

LABEL_50:
  v32 = sub_190A468(*(a1 + 128));
  v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x2000) == 0)
  {
LABEL_37:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_52;
  }

LABEL_51:
  v33 = sub_190AD28(*(a1 + 136));
  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x4000) == 0)
  {
LABEL_38:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_52:
  v34 = sub_190B0F4(*(a1 + 144));
  v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) == 0)
  {
    goto LABEL_56;
  }

LABEL_53:
  v35 = *(a1 + 152);
  v36 = *(v35 + 8);
  if (v36)
  {
    v111 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *((v36 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v37 < 0)
    {
      v37 = *(v111 + 16);
    }
  }

  else
  {
    v37 = 0;
  }

  *(v35 + 16) = v37;
  v3 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_56:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_86;
  }

  if ((v2 & 0x10000) != 0)
  {
    v38 = *(a1 + 160);
    v39 = *(v38 + 8);
    if (v39)
    {
      v112 = v39 & 0xFFFFFFFFFFFFFFFCLL;
      v40 = *((v39 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v40 < 0)
      {
        v40 = *(v112 + 16);
      }
    }

    else
    {
      v40 = 0;
    }

    *(v38 + 16) = v40;
    v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_59:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_72;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_59;
  }

  v41 = *(a1 + 168);
  v42 = *(v41 + 8);
  if (v42)
  {
    v113 = v42 & 0xFFFFFFFFFFFFFFFCLL;
    v43 = *((v42 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v43 < 0)
    {
      v43 = *(v113 + 16);
    }
  }

  else
  {
    v43 = 0;
  }

  *(v41 + 16) = v43;
  v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_60:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_72:
  v44 = *(a1 + 176);
  v45 = *(v44 + 8);
  if (v45)
  {
    v114 = v45 & 0xFFFFFFFFFFFFFFFCLL;
    v46 = *((v45 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v46 < 0)
    {
      v46 = *(v114 + 16);
    }
  }

  else
  {
    v46 = 0;
  }

  *(v44 + 16) = v46;
  v3 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_61:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_78;
  }

LABEL_75:
  v47 = *(a1 + 184);
  v48 = *(v47 + 8);
  if (v48)
  {
    v115 = v48 & 0xFFFFFFFFFFFFFFFCLL;
    v49 = *((v48 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v49 < 0)
    {
      v49 = *(v115 + 16);
    }
  }

  else
  {
    v49 = 0;
  }

  *(v47 + 16) = v49;
  v3 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_62:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_81;
  }

LABEL_78:
  v50 = *(a1 + 192);
  v51 = *(v50 + 8);
  if (v51)
  {
    v116 = v51 & 0xFFFFFFFFFFFFFFFCLL;
    v52 = *((v51 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v52 < 0)
    {
      v52 = *(v116 + 16);
    }
  }

  else
  {
    v52 = 0;
  }

  *(v50 + 16) = v52;
  v3 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_63:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_82;
  }

LABEL_81:
  v53 = sub_190C94C(*(a1 + 200));
  v3 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_64:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_83;
  }

LABEL_82:
  v54 = sub_190CD40(*(a1 + 208));
  v3 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) == 0)
  {
    goto LABEL_86;
  }

LABEL_83:
  v55 = *(a1 + 216);
  v56 = *(v55 + 8);
  if (v56)
  {
    v117 = v56 & 0xFFFFFFFFFFFFFFFCLL;
    v57 = *((v56 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v57 < 0)
    {
      v57 = *(v117 + 16);
    }
  }

  else
  {
    v57 = 0;
  }

  *(v55 + 16) = v57;
  v3 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_86:
  if (!HIBYTE(v2))
  {
    goto LABEL_118;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v58 = *(a1 + 224);
    v59 = *(v58 + 8);
    if (v59)
    {
      v122 = v59 & 0xFFFFFFFFFFFFFFFCLL;
      v60 = *((v59 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v60 < 0)
      {
        v60 = *(v122 + 16);
      }
    }

    else
    {
      v60 = 0;
    }

    *(v58 + 16) = v60;
    v3 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_89:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_102;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_89;
  }

  v61 = *(a1 + 232);
  v62 = *(v61 + 8);
  if (v62)
  {
    v123 = v62 & 0xFFFFFFFFFFFFFFFCLL;
    v63 = *((v62 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v63 < 0)
    {
      v63 = *(v123 + 16);
    }
  }

  else
  {
    v63 = 0;
  }

  *(v61 + 16) = v63;
  v3 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_90:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_105;
  }

LABEL_102:
  v64 = *(a1 + 240);
  v65 = *(v64 + 8);
  if (v65)
  {
    v124 = v65 & 0xFFFFFFFFFFFFFFFCLL;
    v66 = *((v65 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v66 < 0)
    {
      v66 = *(v124 + 16);
    }
  }

  else
  {
    v66 = 0;
  }

  *(v64 + 16) = v66;
  v3 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_91:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_108;
  }

LABEL_105:
  v67 = *(a1 + 248);
  v68 = *(v67 + 8);
  if (v68)
  {
    v125 = v68 & 0xFFFFFFFFFFFFFFFCLL;
    v69 = *((v68 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v69 < 0)
    {
      v69 = *(v125 + 16);
    }
  }

  else
  {
    v69 = 0;
  }

  *(v67 + 16) = v69;
  v3 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_92:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_109;
  }

LABEL_108:
  v70 = sub_190C258(*(a1 + 256));
  v3 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_93:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_112;
  }

LABEL_109:
  v71 = *(a1 + 264);
  v72 = *(v71 + 8);
  if (v72)
  {
    v126 = v72 & 0xFFFFFFFFFFFFFFFCLL;
    v73 = *((v72 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v73 < 0)
    {
      v73 = *(v126 + 16);
    }
  }

  else
  {
    v73 = 0;
  }

  *(v71 + 16) = v73;
  v3 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000000) == 0)
  {
LABEL_94:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_115;
  }

LABEL_112:
  v74 = *(a1 + 272);
  v75 = *(v74 + 8);
  if (v75)
  {
    v127 = v75 & 0xFFFFFFFFFFFFFFFCLL;
    v76 = *((v75 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v76 < 0)
    {
      v76 = *(v127 + 16);
    }
  }

  else
  {
    v76 = 0;
  }

  *(v74 + 16) = v76;
  v3 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_115:
    v77 = *(a1 + 280);
    v78 = *(v77 + 8);
    if (v78)
    {
      v128 = v78 & 0xFFFFFFFFFFFFFFFCLL;
      v79 = *((v78 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v79 < 0)
      {
        v79 = *(v128 + 16);
      }
    }

    else
    {
      v79 = 0;
    }

    *(v77 + 16) = v79;
    v3 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_118:
  v80 = *(a1 + 20);
  if ((v80 & 0x7F) == 0)
  {
    goto LABEL_148;
  }

  if (v80)
  {
    v81 = *(a1 + 288);
    v82 = *(v81 + 8);
    if (v82)
    {
      v118 = v82 & 0xFFFFFFFFFFFFFFFCLL;
      v83 = *((v82 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v83 < 0)
      {
        v83 = *(v118 + 16);
      }
    }

    else
    {
      v83 = 0;
    }

    *(v81 + 16) = v83;
    v3 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v80 & 2) == 0)
    {
LABEL_121:
      if ((v80 & 4) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_133;
    }
  }

  else if ((v80 & 2) == 0)
  {
    goto LABEL_121;
  }

  v84 = *(a1 + 296);
  v85 = *(v84 + 8);
  if (v85)
  {
    v119 = v85 & 0xFFFFFFFFFFFFFFFCLL;
    v86 = *((v85 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v86 < 0)
    {
      v86 = *(v119 + 16);
    }
  }

  else
  {
    v86 = 0;
  }

  *(v84 + 16) = v86;
  v3 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v80 & 4) == 0)
  {
LABEL_122:
    if ((v80 & 8) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_136;
  }

LABEL_133:
  v87 = *(a1 + 304);
  v88 = *(v87 + 8);
  if (v88)
  {
    v120 = v88 & 0xFFFFFFFFFFFFFFFCLL;
    v89 = *((v88 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v89 < 0)
    {
      v89 = *(v120 + 16);
    }
  }

  else
  {
    v89 = 0;
  }

  *(v87 + 16) = v89;
  v3 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v80 & 8) == 0)
  {
LABEL_123:
    if ((v80 & 0x10) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_139;
  }

LABEL_136:
  v90 = *(a1 + 312);
  v91 = *(v90 + 8);
  if (v91)
  {
    v121 = v91 & 0xFFFFFFFFFFFFFFFCLL;
    v92 = *((v91 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v92 < 0)
    {
      v92 = *(v121 + 16);
    }
  }

  else
  {
    v92 = 0;
  }

  *(v90 + 16) = v92;
  v3 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v80 & 0x10) == 0)
  {
LABEL_124:
    if ((v80 & 0x20) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_140;
  }

LABEL_139:
  v93 = sub_190FECC(*(a1 + 320));
  v3 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v80 & 0x20) == 0)
  {
LABEL_125:
    if ((v80 & 0x40) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_144;
  }

LABEL_140:
  v94 = *(a1 + 328);
  if (v94 < 0)
  {
    v95 = 11;
  }

  else
  {
    v95 = ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v95;
  if ((v80 & 0x40) != 0)
  {
LABEL_144:
    v96 = *(a1 + 332);
    if (v96 < 0)
    {
      v97 = 12;
    }

    else
    {
      v97 = ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v97;
  }

LABEL_148:
  v98 = *(a1 + 8);
  if (v98)
  {
    v100 = v98 & 0xFFFFFFFFFFFFFFFCLL;
    v101 = *((v98 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v101 < 0)
    {
      v101 = *(v100 + 16);
    }

    v3 += v101;
  }

  *(a1 + 24) = v3;
  return v3;
}

void sub_1910A94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_75;
  }

  if (v4)
  {
    *(a1 + 16) |= 1u;
    v5 = *(a1 + 32);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_1914DB0(v7);
      *(a1 + 32) = v5;
    }

    v8 = *(a2 + 32);
    if (!v8)
    {
      v8 = &off_278B1B0;
    }

    v9 = v8[1];
    if (v9)
    {
      sub_1957EF4((v5 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 40);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_1914E28(v12);
      *(a1 + 40) = v10;
    }

    v13 = *(a2 + 40);
    if (!v13)
    {
      v13 = &off_278B1C8;
    }

    v14 = v13[1];
    if (v14)
    {
      sub_1957EF4((v10 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 16) |= 4u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_1914EA0(v17);
      *(a1 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_278B1E0;
    }

    sub_12A7358(v15, v18);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 16) |= 8u;
    v19 = *(a1 + 56);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_1914F18(v21);
      *(a1 + 56) = v19;
    }

    v22 = *(a2 + 56);
    if (!v22)
    {
      v22 = &off_278B200;
    }

    v23 = v22[1];
    if (v23)
    {
      sub_1957EF4((v19 + 8), (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x10) != 0)
  {
    *(a1 + 16) |= 0x10u;
    v24 = *(a1 + 64);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_1914F90(v26);
      *(a1 + 64) = v24;
    }

    if (*(a2 + 64))
    {
      v27 = *(a2 + 64);
    }

    else
    {
      v27 = &off_278B218;
    }

    sub_1907ADC(v24, v27);
    if ((v4 & 0x20) == 0)
    {
LABEL_40:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_59;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_40;
  }

  *(a1 + 16) |= 0x20u;
  v28 = *(a1 + 72);
  if (!v28)
  {
    v29 = *(a1 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    v28 = sub_1915034(v30);
    *(a1 + 72) = v28;
  }

  if (*(a2 + 72))
  {
    v31 = *(a2 + 72);
  }

  else
  {
    v31 = &off_278B260;
  }

  sub_12B9D50(v28, v31);
  if ((v4 & 0x40) == 0)
  {
LABEL_41:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

LABEL_59:
  *(a1 + 16) |= 0x40u;
  v32 = *(a1 + 80);
  if (!v32)
  {
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    v32 = sub_19150B0(v34);
    *(a1 + 80) = v32;
  }

  if (*(a2 + 80))
  {
    v35 = *(a2 + 80);
  }

  else
  {
    v35 = &off_278B280;
  }

  sub_140C624(v32, v35);
  if ((v4 & 0x80) != 0)
  {
LABEL_67:
    *(a1 + 16) |= 0x80u;
    v36 = *(a1 + 88);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_191512C(v38);
      *(a1 + 88) = v36;
    }

    v39 = *(a2 + 88);
    if (!v39)
    {
      v39 = &off_278B2A0;
    }

    v40 = v39[1];
    if (v40)
    {
      sub_1957EF4((v36 + 8), (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_75:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_149;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v41 = *(a1 + 96);
    if (!v41)
    {
      v42 = *(a1 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      v41 = sub_19151A4(v43);
      *(a1 + 96) = v41;
    }

    v44 = *(a2 + 96);
    if (!v44)
    {
      v44 = &off_278B2B8;
    }

    v45 = v44[1];
    if (v45)
    {
      sub_1957EF4((v41 + 8), (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x200) != 0)
  {
    *(a1 + 16) |= 0x200u;
    v46 = *(a1 + 104);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      v46 = sub_191521C(v48);
      *(a1 + 104) = v46;
    }

    if (*(a2 + 104))
    {
      v49 = *(a2 + 104);
    }

    else
    {
      v49 = &off_278B2D0;
    }

    sub_12B9D50(v46, v49);
  }

  if ((v4 & 0x400) != 0)
  {
    *(a1 + 16) |= 0x400u;
    v50 = *(a1 + 112);
    if (!v50)
    {
      v51 = *(a1 + 8);
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51)
      {
        v52 = *v52;
      }

      v50 = sub_1915298(v52);
      *(a1 + 112) = v50;
    }

    v53 = *(a2 + 112);
    if (!v53)
    {
      v53 = &off_278B2F0;
    }

    v54 = v53[1];
    if (v54)
    {
      sub_1957EF4((v50 + 8), (v54 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x800) != 0)
  {
    *(a1 + 16) |= 0x800u;
    v55 = *(a1 + 120);
    if (!v55)
    {
      v56 = *(a1 + 8);
      v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
      if (v56)
      {
        v57 = *v57;
      }

      v55 = sub_1915400(v57);
      *(a1 + 120) = v55;
    }

    v58 = *(a2 + 120);
    if (!v58)
    {
      v58 = &off_278B338;
    }

    v59 = v58[1];
    if (v59)
    {
      sub_1957EF4((v55 + 8), (v59 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x1000) != 0)
  {
    *(a1 + 16) |= 0x1000u;
    v60 = *(a1 + 128);
    if (!v60)
    {
      v61 = *(a1 + 8);
      v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
      if (v61)
      {
        v62 = *v62;
      }

      v60 = sub_19154F8(v62);
      *(a1 + 128) = v60;
    }

    if (*(a2 + 128))
    {
      v63 = *(a2 + 128);
    }

    else
    {
      v63 = &off_278B380;
    }

    sub_190A6C4(v60, v63);
    if ((v4 & 0x2000) == 0)
    {
LABEL_114:
      if ((v4 & 0x4000) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_133;
    }
  }

  else if ((v4 & 0x2000) == 0)
  {
    goto LABEL_114;
  }

  *(a1 + 16) |= 0x2000u;
  v64 = *(a1 + 136);
  if (!v64)
  {
    v65 = *(a1 + 8);
    v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
    if (v65)
    {
      v66 = *v66;
    }

    v64 = sub_19155B4(v66);
    *(a1 + 136) = v64;
  }

  if (*(a2 + 136))
  {
    v67 = *(a2 + 136);
  }

  else
  {
    v67 = &off_278B3F0;
  }

  sub_12B9D50(v64, v67);
  if ((v4 & 0x4000) == 0)
  {
LABEL_115:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_141;
  }

LABEL_133:
  *(a1 + 16) |= 0x4000u;
  v68 = *(a1 + 144);
  if (!v68)
  {
    v69 = *(a1 + 8);
    v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (v69)
    {
      v70 = *v70;
    }

    v68 = sub_1915630(v70);
    *(a1 + 144) = v68;
  }

  if (*(a2 + 144))
  {
    v71 = *(a2 + 144);
  }

  else
  {
    v71 = &off_278B410;
  }

  sub_12B9D50(v68, v71);
  if ((v4 & 0x8000) != 0)
  {
LABEL_141:
    *(a1 + 16) |= 0x8000u;
    v72 = *(a1 + 152);
    if (!v72)
    {
      v73 = *(a1 + 8);
      v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
      if (v73)
      {
        v74 = *v74;
      }

      v72 = sub_19156AC(v74);
      *(a1 + 152) = v72;
    }

    v75 = *(a2 + 152);
    if (!v75)
    {
      v75 = &off_278B430;
    }

    v76 = v75[1];
    if (v76)
    {
      sub_1957EF4((v72 + 8), (v76 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_149:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_223;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v77 = *(a1 + 160);
    if (!v77)
    {
      v78 = *(a1 + 8);
      v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
      if (v78)
      {
        v79 = *v79;
      }

      v77 = sub_1915724(v79);
      *(a1 + 160) = v77;
    }

    v80 = *(a2 + 160);
    if (!v80)
    {
      v80 = &off_278B448;
    }

    v81 = v80[1];
    if (v81)
    {
      sub_1957EF4((v77 + 8), (v81 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x20000) != 0)
  {
    *(a1 + 16) |= 0x20000u;
    v82 = *(a1 + 168);
    if (!v82)
    {
      v83 = *(a1 + 8);
      v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
      if (v83)
      {
        v84 = *v84;
      }

      v82 = sub_191579C(v84);
      *(a1 + 168) = v82;
    }

    v85 = *(a2 + 168);
    if (!v85)
    {
      v85 = &off_278B460;
    }

    v86 = v85[1];
    if (v86)
    {
      sub_1957EF4((v82 + 8), (v86 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x40000) != 0)
  {
    *(a1 + 16) |= 0x40000u;
    v87 = *(a1 + 176);
    if (!v87)
    {
      v88 = *(a1 + 8);
      v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
      if (v88)
      {
        v89 = *v89;
      }

      v87 = sub_1915814(v89);
      *(a1 + 176) = v87;
    }

    v90 = *(a2 + 176);
    if (!v90)
    {
      v90 = &off_278B478;
    }

    v91 = v90[1];
    if (v91)
    {
      sub_1957EF4((v87 + 8), (v91 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x80000) != 0)
  {
    *(a1 + 16) |= 0x80000u;
    v92 = *(a1 + 184);
    if (!v92)
    {
      v93 = *(a1 + 8);
      v94 = (v93 & 0xFFFFFFFFFFFFFFFCLL);
      if (v93)
      {
        v94 = *v94;
      }

      v92 = sub_191588C(v94);
      *(a1 + 184) = v92;
    }

    v95 = *(a2 + 184);
    if (!v95)
    {
      v95 = &off_278B490;
    }

    v96 = v95[1];
    if (v96)
    {
      sub_1957EF4((v92 + 8), (v96 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x100000) != 0)
  {
    *(a1 + 16) |= 0x100000u;
    v97 = *(a1 + 192);
    if (!v97)
    {
      v98 = *(a1 + 8);
      v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
      if (v98)
      {
        v99 = *v99;
      }

      v97 = sub_1915904(v99);
      *(a1 + 192) = v97;
    }

    v100 = *(a2 + 192);
    if (!v100)
    {
      v100 = &off_278B4A8;
    }

    v101 = v100[1];
    if (v101)
    {
      sub_1957EF4((v97 + 8), (v101 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x200000) != 0)
  {
    *(a1 + 16) |= 0x200000u;
    v102 = *(a1 + 200);
    if (!v102)
    {
      v103 = *(a1 + 8);
      v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
      if (v103)
      {
        v104 = *v104;
      }

      v102 = sub_1915BD8(v104);
      *(a1 + 200) = v102;
    }

    if (*(a2 + 200))
    {
      v105 = *(a2 + 200);
    }

    else
    {
      v105 = &off_278B540;
    }

    sub_132DE2C(v102, v105);
    if ((v4 & 0x400000) == 0)
    {
LABEL_197:
      if ((v4 & 0x800000) == 0)
      {
        goto LABEL_223;
      }

      goto LABEL_215;
    }
  }

  else if ((v4 & 0x400000) == 0)
  {
    goto LABEL_197;
  }

  *(a1 + 16) |= 0x400000u;
  v106 = *(a1 + 208);
  if (!v106)
  {
    v107 = *(a1 + 8);
    v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL);
    if (v107)
    {
      v108 = *v108;
    }

    v106 = sub_1915C5C(v108);
    *(a1 + 208) = v106;
  }

  if (*(a2 + 208))
  {
    v109 = *(a2 + 208);
  }

  else
  {
    v109 = &off_278B560;
  }

  sub_12B9D50(v106, v109);
  if ((v4 & 0x800000) != 0)
  {
LABEL_215:
    *(a1 + 16) |= 0x800000u;
    v110 = *(a1 + 216);
    if (!v110)
    {
      v111 = *(a1 + 8);
      v112 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
      if (v111)
      {
        v112 = *v112;
      }

      v110 = sub_1915CD8(v112);
      *(a1 + 216) = v110;
    }

    v113 = *(a2 + 216);
    if (!v113)
    {
      v113 = &off_278B580;
    }

    v114 = v113[1];
    if (v114)
    {
      sub_1957EF4((v110 + 8), (v114 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_223:
  if (HIBYTE(v4))
  {
    if ((v4 & 0x1000000) != 0)
    {
      *(a1 + 16) |= 0x1000000u;
      v115 = *(a1 + 224);
      if (!v115)
      {
        v116 = *(a1 + 8);
        v117 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
        if (v116)
        {
          v117 = *v117;
        }

        v115 = sub_1915310(v117);
        *(a1 + 224) = v115;
      }

      v118 = *(a2 + 224);
      if (!v118)
      {
        v118 = &off_278B308;
      }

      v119 = v118[1];
      if (v119)
      {
        sub_1957EF4((v115 + 8), (v119 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x2000000) != 0)
    {
      *(a1 + 16) |= 0x2000000u;
      v120 = *(a1 + 232);
      if (!v120)
      {
        v121 = *(a1 + 8);
        v122 = (v121 & 0xFFFFFFFFFFFFFFFCLL);
        if (v121)
        {
          v122 = *v122;
        }

        v120 = sub_1915388(v122);
        *(a1 + 232) = v120;
      }

      v123 = *(a2 + 232);
      if (!v123)
      {
        v123 = &off_278B320;
      }

      v124 = v123[1];
      if (v124)
      {
        sub_1957EF4((v120 + 8), (v124 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x4000000) != 0)
    {
      *(a1 + 16) |= 0x4000000u;
      v125 = *(a1 + 240);
      if (!v125)
      {
        v126 = *(a1 + 8);
        v127 = (v126 & 0xFFFFFFFFFFFFFFFCLL);
        if (v126)
        {
          v127 = *v127;
        }

        v125 = sub_191597C(v127);
        *(a1 + 240) = v125;
      }

      v128 = *(a2 + 240);
      if (!v128)
      {
        v128 = &off_278B4C0;
      }

      v129 = v128[1];
      if (v129)
      {
        sub_1957EF4((v125 + 8), (v129 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x8000000) != 0)
    {
      *(a1 + 16) |= 0x8000000u;
      v130 = *(a1 + 248);
      if (!v130)
      {
        v131 = *(a1 + 8);
        v132 = (v131 & 0xFFFFFFFFFFFFFFFCLL);
        if (v131)
        {
          v132 = *v132;
        }

        v130 = sub_19159F4(v132);
        *(a1 + 248) = v130;
      }

      v133 = *(a2 + 248);
      if (!v133)
      {
        v133 = &off_278B4D8;
      }

      v134 = v133[1];
      if (v134)
      {
        sub_1957EF4((v130 + 8), (v134 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x10000000) != 0)
    {
      *(a1 + 16) |= 0x10000000u;
      v135 = *(a1 + 256);
      if (!v135)
      {
        v136 = *(a1 + 8);
        v137 = (v136 & 0xFFFFFFFFFFFFFFFCLL);
        if (v136)
        {
          v137 = *v137;
        }

        v135 = sub_1915A6C(v137);
        *(a1 + 256) = v135;
      }

      if (*(a2 + 256))
      {
        v138 = *(a2 + 256);
      }

      else
      {
        v138 = &off_278B4F0;
      }

      sub_12B9D50(v135, v138);
    }

    if ((v4 & 0x20000000) != 0)
    {
      *(a1 + 16) |= 0x20000000u;
      v139 = *(a1 + 264);
      if (!v139)
      {
        v140 = *(a1 + 8);
        v141 = (v140 & 0xFFFFFFFFFFFFFFFCLL);
        if (v140)
        {
          v141 = *v141;
        }

        v139 = sub_1915B60(v141);
        *(a1 + 264) = v139;
      }

      v142 = *(a2 + 264);
      if (!v142)
      {
        v142 = &off_278B528;
      }

      v143 = v142[1];
      if (v143)
      {
        sub_1957EF4((v139 + 8), (v143 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x40000000) != 0)
    {
      *(a1 + 16) |= 0x40000000u;
      v144 = *(a1 + 272);
      if (!v144)
      {
        v145 = *(a1 + 8);
        v146 = (v145 & 0xFFFFFFFFFFFFFFFCLL);
        if (v145)
        {
          v146 = *v146;
        }

        v144 = sub_1915AE8(v146);
        *(a1 + 272) = v144;
      }

      v147 = *(a2 + 272);
      if (!v147)
      {
        v147 = &off_278B510;
      }

      v148 = v147[1];
      if (v148)
      {
        sub_1957EF4((v144 + 8), (v148 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x80000000) != 0)
    {
      *(a1 + 16) |= 0x80000000;
      v149 = *(a1 + 280);
      if (!v149)
      {
        v150 = *(a1 + 8);
        v151 = (v150 & 0xFFFFFFFFFFFFFFFCLL);
        if (v150)
        {
          v151 = *v151;
        }

        v149 = sub_1915D50(v151);
        *(a1 + 280) = v149;
      }

      v152 = *(a2 + 280);
      if (!v152)
      {
        v152 = &off_278B598;
      }

      v153 = v152[1];
      if (v153)
      {
        sub_1957EF4((v149 + 8), (v153 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }
  }

  v154 = *(a2 + 20);
  if ((v154 & 0x7F) != 0)
  {
    if (v154)
    {
      *(a1 + 20) |= 1u;
      v155 = *(a1 + 288);
      if (!v155)
      {
        v156 = *(a1 + 8);
        v157 = (v156 & 0xFFFFFFFFFFFFFFFCLL);
        if (v156)
        {
          v157 = *v157;
        }

        v155 = sub_1915DC8(v157);
        *(a1 + 288) = v155;
      }

      v158 = *(a2 + 288);
      if (!v158)
      {
        v158 = &off_278B5B0;
      }

      v159 = v158[1];
      if (v159)
      {
        sub_1957EF4((v155 + 8), (v159 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v154 & 2) != 0)
    {
      *(a1 + 20) |= 2u;
      v160 = *(a1 + 296);
      if (!v160)
      {
        v161 = *(a1 + 8);
        v162 = (v161 & 0xFFFFFFFFFFFFFFFCLL);
        if (v161)
        {
          v162 = *v162;
        }

        v160 = sub_1915E40(v162);
        *(a1 + 296) = v160;
      }

      v163 = *(a2 + 296);
      if (!v163)
      {
        v163 = &off_278B5C8;
      }

      v164 = v163[1];
      if (v164)
      {
        sub_1957EF4((v160 + 8), (v164 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v154 & 4) != 0)
    {
      *(a1 + 20) |= 4u;
      v165 = *(a1 + 304);
      if (!v165)
      {
        v166 = *(a1 + 8);
        v167 = (v166 & 0xFFFFFFFFFFFFFFFCLL);
        if (v166)
        {
          v167 = *v167;
        }

        v165 = sub_1915EB8(v167);
        *(a1 + 304) = v165;
      }

      v168 = *(a2 + 304);
      if (!v168)
      {
        v168 = &off_278B5E0;
      }

      v169 = v168[1];
      if (v169)
      {
        sub_1957EF4((v165 + 8), (v169 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v154 & 8) != 0)
    {
      *(a1 + 20) |= 8u;
      v170 = *(a1 + 312);
      if (!v170)
      {
        v171 = *(a1 + 8);
        v172 = (v171 & 0xFFFFFFFFFFFFFFFCLL);
        if (v171)
        {
          v172 = *v172;
        }

        v170 = sub_1915F30(v172);
        *(a1 + 312) = v170;
      }

      v173 = *(a2 + 312);
      if (!v173)
      {
        v173 = &off_278B5F8;
      }

      v174 = v173[1];
      if (v174)
      {
        sub_1957EF4((v170 + 8), (v174 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v154 & 0x10) != 0)
    {
      *(a1 + 20) |= 0x10u;
      if (!*(a1 + 320))
      {
        v176 = *(a1 + 8);
        v177 = (v176 & 0xFFFFFFFFFFFFFFFCLL);
        if (v176)
        {
          v177 = *v177;
        }

        sub_1915FA8(v177);
        *(a1 + 320) = v178;
      }

      sub_1910A94();
      if ((v154 & 0x20) == 0)
      {
LABEL_335:
        if ((v154 & 0x40) == 0)
        {
LABEL_337:
          *(a1 + 20) |= v154;
          goto LABEL_338;
        }

LABEL_336:
        *(a1 + 332) = *(a2 + 332);
        goto LABEL_337;
      }
    }

    else if ((v154 & 0x20) == 0)
    {
      goto LABEL_335;
    }

    *(a1 + 328) = *(a2 + 328);
    if ((v154 & 0x40) == 0)
    {
      goto LABEL_337;
    }

    goto LABEL_336;
  }

LABEL_338:
  v175 = *(a2 + 8);
  if (v175)
  {

    sub_1957EF4((a1 + 8), (v175 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1911870(uint64_t a1)
{
  if ((*(a1 + 17) & 0x10) == 0 || (result = sub_190A8F4(*(a1 + 128)), result))
  {
    if ((*(a1 + 20) & 0x10) == 0)
    {
      return 1;
    }

    result = sub_1911870(*(a1 + 320));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_19118CC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1946B08(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_191194C(void *a1)
{
  sub_19118CC(a1);

  operator delete();
}

uint64_t sub_1911984(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_190DC38(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1911A08(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v32 + 1;
    v8 = *v32;
    if (*v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v32 + 2;
      }
    }

    v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v32 = v20;
      *(a1 + 49) = v19 != 0;
      goto LABEL_39;
    }

    v30 = sub_19587DC(v7, v19);
    v32 = v30;
    *(a1 + 49) = v31 != 0;
    if (!v30)
    {
      goto LABEL_48;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 1u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v32 = v17;
      *(a1 + 48) = v16 != 0;
      goto LABEL_39;
    }

    v28 = sub_19587DC(v7, v16);
    v32 = v28;
    *(a1 + 48) = v29 != 0;
    if (!v28)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v11 == 1 && v8 == 10)
  {
    v22 = v7 - 1;
    while (1)
    {
      v23 = (v22 + 1);
      v32 = v22 + 1;
      v24 = *(a1 + 40);
      if (v24 && (v25 = *(a1 + 32), v25 < *v24))
      {
        *(a1 + 32) = v25 + 1;
        v26 = *&v24[2 * v25 + 2];
      }

      else
      {
        sub_1915FA8(*(a1 + 24));
        v26 = sub_19593CC(a1 + 24, v27);
        v23 = v32;
      }

      v22 = sub_225CB18(a3, v26, v23);
      v32 = v22;
      if (!v22)
      {
        goto LABEL_48;
      }

      if (*a3 <= v22 || *v22 != 10)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v32;
    }

    v32 = sub_1952690(v8, v15, v7, a3);
    if (!v32)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_1911CA0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 24);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_190EE10(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v12;
    __dst += 2;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 49);
    *__dst = 24;
    __dst[1] = v13;
    __dst += 2;
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - __dst >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_1957130(a3, v18, v17, __dst);
}

uint64_t sub_1911E54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_190FECC(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if ((*(a1 + 16) & 3) != 0)
  {
    result = v2 + 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2);
  }

  else
  {
    result = v2;
  }

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
  }

  *(a1 + 20) = result;
  return result;
}

void sub_1911F14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1946F38((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 48) = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 49) = *(a2 + 49);
    }

    *(a1 + 16) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1912000(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1911870(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1912068(uint64_t a1)
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
  sub_1946B8C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1912114(uint64_t a1)
{
  sub_1912068(a1);

  operator delete();
}

uint64_t sub_191214C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1912848(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_19121FC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v25, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v25 + 1);
    v7 = **v25;
    if (**v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v25 + 2);
      }
    }

    *v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          *v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_1916190(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = *v25;
          }

          v15 = sub_225CBA8(a3, v19, v16);
          *v25 = v15;
          if (!v15)
          {
            break;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        *v25 = 0;
        return *v25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = sub_194DB04((a1 + 48), v22);
      v14 = sub_1958890(v23, *v25, a3);
      goto LABEL_32;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v25;
      }

      goto LABEL_38;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_32:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_19123D4(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v9 = *(v8 + 20);
      v4[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, v4 + 1);
      }

      else
      {
        v10 = v4 + 2;
      }

      v4 = sub_1912CA4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  if (*a3 - v4 >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_1912538(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_1912F98(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_1912628(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1946FC4((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_191271C(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1913244(*(*(a1 + 40) + 8 * v2) + 24);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_1912788(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 6));
  sub_1946C10(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1912810(void *a1)
{
  sub_1912788(a1);

  operator delete();
}

uint64_t sub_1912848(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1911984(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 64) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_19128DC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
  {
    return v37;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v37 + 1;
    v8 = *v37;
    if (*v37 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v37, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v37 + 2;
      }
    }

    v37 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v12 != 3)
      {
        if (v12 == 4)
        {
          if (v8 == 32)
          {
            v20 = v7 - 1;
            while (1)
            {
              v37 = v20 + 1;
              v21 = v20[1];
              v22 = v20 + 2;
              if (v21 < 0)
              {
                v23 = *v22;
                v24 = (v23 << 7) + v21;
                LODWORD(v21) = v24 - 128;
                if (v23 < 0)
                {
                  v37 = sub_19587DC((v20 + 1), (v24 - 128));
                  if (!v37)
                  {
                    return 0;
                  }

                  LODWORD(v21) = v27;
                  goto LABEL_32;
                }

                v22 = v20 + 3;
              }

              v37 = v22;
LABEL_32:
              if (v21 > 0xB)
              {
                sub_12E8500();
              }

              else
              {
                v25 = *(a1 + 48);
                if (v25 == *(a1 + 52))
                {
                  v26 = v25 + 1;
                  sub_1958E5C((a1 + 48), v25 + 1);
                  *(*(a1 + 56) + 4 * v25) = v21;
                }

                else
                {
                  *(*(a1 + 56) + 4 * v25) = v21;
                  v26 = v25 + 1;
                }

                *(a1 + 48) = v26;
              }

              v20 = v37;
              if (*a3 <= v37 || *v37 != 32)
              {
                goto LABEL_71;
              }
            }
          }

          if (v8 == 34)
          {
            *&v38 = a1 + 48;
            *(&v38 + 1) = sub_190699C;
            v39 = a1 + 8;
            v40 = 4;
            v34 = sub_1216588(a3, v7, &v38);
LABEL_70:
            v37 = v34;
            if (!v34)
            {
              return 0;
            }

            goto LABEL_71;
          }
        }

LABEL_63:
        if (v8)
        {
          v35 = (v8 & 7) == 4;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          if (!v7)
          {
            return 0;
          }

          a3[10].i32[0] = v8 - 1;
          return v37;
        }

        if (*v6)
        {
          v36 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v36 = sub_11F1920((a1 + 8));
          v7 = v37;
        }

        v34 = sub_1952690(v8, v36, v7, a3);
        goto LABEL_70;
      }

      if (v8 != 24)
      {
        goto LABEL_63;
      }

      v32 = v7 + 1;
      v31 = *v7;
      if (v31 < 0)
      {
        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if (v33 < 0)
        {
          v37 = sub_19587DC(v7, v31);
          if (!v37)
          {
            return 0;
          }

          goto LABEL_55;
        }

        v32 = v7 + 2;
      }

      v37 = v32;
LABEL_55:
      if (v31 > 0xB)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 68) = v31;
      }

      goto LABEL_71;
    }

    if (v12 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_63;
    }

    v29 = v7 + 1;
    v28 = *v7;
    if (v28 < 0)
    {
      v30 = *v29;
      v28 = (v30 << 7) + v28 - 128;
      if (v30 < 0)
      {
        v37 = sub_19587DC(v7, v28);
        if (!v37)
        {
          return 0;
        }

        goto LABEL_48;
      }

      v29 = v7 + 2;
    }

    v37 = v29;
LABEL_48:
    if (v28 > 3)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 1u;
      *(a1 + 64) = v28;
    }

LABEL_71:
    if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
    {
      return v37;
    }
  }

  if (v12 != 2 || v8 != 18)
  {
    goto LABEL_63;
  }

  v14 = v7 - 1;
  while (1)
  {
    v15 = (v14 + 1);
    v37 = v14 + 1;
    v16 = *(a1 + 40);
    if (v16 && (v17 = *(a1 + 32), v17 < *v16))
    {
      *(a1 + 32) = v17 + 1;
      v18 = *&v16[2 * v17 + 2];
    }

    else
    {
      v19 = sub_1916050(*(a1 + 24));
      v18 = sub_19593CC(a1 + 24, v19);
      v15 = v37;
    }

    v14 = sub_225CC38(a3, v18, v15);
    v37 = v14;
    if (!v14)
    {
      return 0;
    }

    if (*a3 <= v14 || *v14 != 18)
    {
      goto LABEL_71;
    }
  }
}

char *sub_1912CA4(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 64);
    *a2 = 8;
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      a2[2] = v7 >> 7;
      v6 = a2 + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = a2[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = a2 + 2;
    }
  }

  else
  {
    v6 = a2;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 20);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_1911CA0(v13, v15, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 68);
    *v6 = 24;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v16 - 1) = v6 | 0x80;
          v6 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v6 + 2;
    }
  }

  else
  {
    v16 = v6;
  }

  v20 = *(a1 + 48);
  if (v20 < 1)
  {
    v23 = v16;
  }

  else
  {
    for (j = 0; j != v20; ++j)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v22 = *(*(a1 + 56) + 4 * j);
      *v16 = 32;
      v16[1] = v22;
      if (v22 > 0x7F)
      {
        v16[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v16[2] = v22 >> 7;
        v23 = v16 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v16) = v16[2];
          do
          {
            *(v23 - 1) = v16 | 0x80;
            v16 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v16 + 2;
      }

      v16 = v23;
    }
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v23;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if (*a3 - v23 >= v29)
  {
    v31 = v29;
    memcpy(v23, v30, v29);
    v23 += v31;
    return v23;
  }

  return sub_1957130(a3, v30, v29, v23);
}

uint64_t sub_1912F98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_1911E54(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v9);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v10 += v12;
      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0;
  }

  result = v2 + v8 + v10;
  v14 = *(a1 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      v15 = *(a1 + 64);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v16;
    }

    if ((v14 & 2) != 0)
    {
      v17 = *(a1 + 68);
      if (v17 < 0)
      {
        v18 = 11;
      }

      else
      {
        v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v18;
    }
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    result += v21;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_191310C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1947050((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 4 * v10), *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 16);
  if ((v12 & 3) != 0)
  {
    if (v12)
    {
      *(a1 + 64) = *(a2 + 64);
    }

    if ((v12 & 2) != 0)
    {
      *(a1 + 68) = *(a2 + 68);
    }

    *(a1 + 16) |= v12;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1913244(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 32);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_1911870(*(*(v4 + 40) + 8 * v5));
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

uint64_t sub_19132E0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_278B798)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_1912068(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 48);
  sub_13B5A00((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_19133AC(uint64_t a1)
{
  sub_19132E0(a1);

  operator delete();
}

uint64_t sub_19133E4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17A82BC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  if (*(v1 + 16))
  {
    result = sub_191214C(*(v1 + 64));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1913478(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
  {
    return v33;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v33 + 1;
    v8 = *v33;
    if (*v33 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v33, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v33 + 2;
      }
    }

    v33 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        if (v8 == 26)
        {
          *&v34 = a1 + 48;
          *(&v34 + 1) = sub_1796880;
          v35 = a1 + 8;
          v36 = 3;
          v16 = sub_1216588(a3, v7, &v34);
          goto LABEL_27;
        }

        goto LABEL_14;
      }

      v19 = v7 - 1;
      while (1)
      {
        v33 = v19 + 1;
        v20 = v19[1];
        v21 = v19 + 2;
        if (v20 < 0)
        {
          v22 = *v21;
          v23 = (v22 << 7) + v20;
          LODWORD(v20) = v23 - 128;
          if (v22 < 0)
          {
            v33 = sub_19587DC((v19 + 1), (v23 - 128));
            if (!v33)
            {
              return 0;
            }

            LODWORD(v20) = v26;
            goto LABEL_35;
          }

          v21 = v19 + 3;
        }

        v33 = v21;
LABEL_35:
        if (sub_1796880(v20))
        {
          v24 = *(a1 + 48);
          if (v24 == *(a1 + 52))
          {
            v25 = v24 + 1;
            sub_1958E5C((a1 + 48), v24 + 1);
            *(*(a1 + 56) + 4 * v24) = v20;
          }

          else
          {
            *(*(a1 + 56) + 4 * v24) = v20;
            v25 = v24 + 1;
          }

          *(a1 + 48) = v25;
        }

        else
        {
          sub_1313740();
        }

        v19 = v33;
        if (*a3 <= v33 || *v33 != 24)
        {
          goto LABEL_54;
        }
      }
    }

    if (v12 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v17 = *(a1 + 64);
        if (!v17)
        {
          v18 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v6)
          {
            v18 = *v18;
          }

          v17 = sub_19160EC(v18);
          *(a1 + 64) = v17;
          v7 = v33;
        }

        v16 = sub_225CCC8(a3, v17, v7);
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v12 == 1 && v8 == 10)
    {
      break;
    }

LABEL_14:
    if (v8)
    {
      v14 = (v8 & 7) == 4;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (!v7)
      {
        return 0;
      }

      a3[10].i32[0] = v8 - 1;
      return v33;
    }

    if (*v6)
    {
      v15 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v33;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
LABEL_27:
    v33 = v16;
    if (!v16)
    {
      return 0;
    }

LABEL_54:
    if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
    {
      return v33;
    }
  }

  v27 = v7 - 1;
  while (1)
  {
    v28 = (v27 + 1);
    v33 = v27 + 1;
    v29 = *(a1 + 40);
    if (v29 && (v30 = *(a1 + 32), v30 < *v29))
    {
      *(a1 + 32) = v30 + 1;
      v31 = *&v29[2 * v30 + 2];
    }

    else
    {
      v32 = sub_191BA60(*(a1 + 24));
      v31 = sub_19593CC(a1 + 24, v32);
      v28 = v33;
    }

    v27 = sub_2201310(a3, v31, v28);
    v33 = v27;
    if (!v27)
    {
      return 0;
    }

    if (*a3 <= v27 || *v27 != 10)
    {
      goto LABEL_54;
    }
  }
}

char *sub_19137A0(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 44);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_1917694(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v11 = *(a1 + 64);
    *a2 = 18;
    v12 = *(v11 + 20);
    a2[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, a2 + 1);
    }

    else
    {
      v13 = a2 + 2;
    }

    a2 = sub_19123D4(v11, v13, a3);
  }

  v14 = *(a1 + 48);
  if (v14 < 1)
  {
    v17 = a2;
  }

  else
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v16 = *(*(a1 + 56) + 4 * j);
      *a2 = 24;
      a2[1] = v16;
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v18 = v16 >> 7;
        a2[2] = v16 >> 7;
        v17 = a2 + 3;
        if (v16 >= 0x4000)
        {
          LOBYTE(a2) = a2[2];
          do
          {
            *(v17 - 1) = a2 | 0x80;
            a2 = (v18 >> 7);
            *v17++ = v18 >> 7;
            v19 = v18 >> 14;
            v18 >>= 7;
          }

          while (v19);
        }
      }

      else
      {
        v17 = a2 + 2;
      }

      a2 = v17;
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v17;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  if (*a3 - v17 >= v23)
  {
    v25 = v23;
    memcpy(v17, v24, v23);
    v17 += v25;
    return v17;
  }

  return sub_1957130(a3, v24, v23, v17);
}

uint64_t sub_19139E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_1917844(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v9);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v10 += v12;
      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = v2 + v8 + v10;
  if (*(a1 + 16))
  {
    v14 = sub_1912538(*(a1 + 64));
    v13 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v13 += v18;
  }

  *(a1 + 20) = v13;
  return v13;
}

void sub_1913B1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B6038((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 4 * v10), *(a2 + 56), 4 * *(a2 + 48));
  }

  if (*(a2 + 16))
  {
    v12 = *(a2 + 64);
    *(a1 + 16) |= 1u;
    v13 = *(a1 + 64);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_19160EC(v15);
      *(a1 + 64) = v13;
      v12 = *(a2 + 64);
    }

    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = &off_278B760;
    }

    sub_1912628(v13, v16);
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1913C70(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17A8EF8(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v6 = *(a1 + 64);
  v7 = *(v6 + 32);
  do
  {
    v5 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = sub_1913244(*(*(v6 + 40) + 8 * v7) + 24);
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  return v5;
}

void *sub_1913D18(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1946C94(a1 + 5);
  sub_13B5A00(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1913DA4(void *a1)
{
  sub_1913D18(a1);

  operator delete();
}

uint64_t sub_1913DDC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17A82BC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1909B98(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_1913E80(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  if ((sub_195ADC0(a3, &v26, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v26 + 1;
      v7 = *v26;
      if (*v26 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(v26, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = v26 + 2;
        }
      }

      v26 = v6;
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v14 = v6 - 1;
          while (1)
          {
            v15 = (v14 + 1);
            v26 = v14 + 1;
            v16 = *(a1 + 56);
            if (v16 && (v17 = *(a1 + 48), v17 < *v16))
            {
              *(a1 + 48) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = sub_19154F8(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_225BD50(a3, v18, v15);
            v26 = v14;
            if (!v14)
            {
              return 0;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = (v20 + 1);
          v26 = v20 + 1;
          v22 = *(a1 + 32);
          if (v22 && (v23 = *(a1 + 24), v23 < *v22))
          {
            *(a1 + 24) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_191BA60(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_2201310(a3, v24, v21);
          v26 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_38;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = v26;
      }

      v26 = sub_1952690(v7, v13, v6, a3);
      if (!v26)
      {
        return 0;
      }

LABEL_38:
      if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
      {
        return v26;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v26;
    }

    return 0;
  }

  return v26;
}

char *sub_19140B4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 44);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_1917694(v8, v10, a3);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 56) + 8 * j + 8);
      *__dst = 18;
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_190A15C(v13, v15, a3);
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return __dst;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - __dst >= v19)
  {
    v21 = v19;
    memcpy(__dst, v20, v19);
    __dst += v21;
    return __dst;
  }

  return sub_1957130(a3, v20, v19, __dst);
}

uint64_t sub_1914278(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_1917844(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  v9 = v2 + v8;
  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_190A468(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v9 += v18;
  }

  *(a1 + 64) = v9;
  return v9;
}

void sub_1914370(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13B6038((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_19470DC((a1 + 40), v11, (v10 + 8), v9, **(a1 + 56) - *(a1 + 48));
    v12 = *(a1 + 48) + v9;
    *(a1 + 48) = v12;
    v13 = *(a1 + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_1914488(uint64_t a1)
{
  v2 = *(a1 + 24);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17A8EF8(*(*(a1 + 32) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 48);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_190A8F4(*(*(a1 + 56) + 8 * v6));
    v6 = v7;
  }

  while (v8);
  return v5;
}

uint64_t sub_1914518(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_271CBD8;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1947168((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_19471F4((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    sub_1957EF4(v4, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_1914670(_Unwind_Exception *a1)
{
  sub_1946D9C(v3);
  sub_1946D18(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_19146C8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1946D9C(a1 + 6);
  sub_1946D18(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1914754(void *a1)
{
  sub_19146C8(a1);

  operator delete();
}

char *sub_191478C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v31, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v31 + 1;
    v7 = *v31;
    if (*v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v31 + 2;
      }
    }

    v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v21 = v6 - 1;
        while (1)
        {
          v22 = (v21 + 1);
          v31 = v21 + 1;
          v23 = *(a1 + 64);
          if (v23 && (v24 = *(a1 + 56), v24 < *v23))
          {
            *(a1 + 56) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = sub_19162D8(*(a1 + 48));
            v25 = sub_19593CC(a1 + 48, v26);
            v22 = v31;
          }

          v21 = sub_225CDE8(a3, v25, v22);
          v31 = v21;
          if (!v21)
          {
            return 0;
          }

          if (*a3 <= v21 || *v21 != 26)
          {
            goto LABEL_47;
          }
        }
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v31 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_1916234(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v31;
          }

          v15 = sub_225CD58(a3, v19, v16);
          v31 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_47;
          }
        }
      }
    }

    else if (v10 == 1 && v7 == 8)
    {
      v28 = v6 + 1;
      v27 = *v6;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_44;
      }

      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if (v29 < 0)
      {
        v31 = sub_19587DC(v6, v27);
        if (!v31)
        {
          return 0;
        }
      }

      else
      {
        v28 = v6 + 2;
LABEL_44:
        v31 = v28;
      }

      if (v27 > 2)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 72) = v27;
      }

      continue;
    }

    if (v7)
    {
      v12 = (v7 & 7) == 4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v31;
      }

      return 0;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = v31;
    }

    v31 = sub_1952690(v7, v14, v6, a3);
    if (!v31)
    {
      return 0;
    }

LABEL_47:
    ;
  }

  return v31;
}

char *sub_1914A28(uint64_t a1, char *__dst, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 72);
    *__dst = 8;
    __dst[1] = v6;
    if (v6 > 0x7F)
    {
      __dst[1] = v6 | 0x80;
      v7 = v6 >> 7;
      __dst[2] = v6 >> 7;
      v5 = __dst + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = __dst[2];
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v5++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v5 = __dst + 2;
    }
  }

  else
  {
    v5 = __dst;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v5 = 18;
      v13 = *(v12 + 20);
      v5[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v5 + 1);
      }

      else
      {
        v14 = v5 + 2;
      }

      v5 = sub_19137A0(v12, v14, a3);
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v17 = *(*(a1 + 64) + 8 * j + 8);
      *v5 = 26;
      v18 = *(v17 + 64);
      v5[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v5 + 1);
      }

      else
      {
        v19 = v5 + 2;
      }

      v5 = sub_19140B4(v17, v19, a3);
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v5;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  if (*a3 - v5 >= v23)
  {
    v25 = v23;
    memcpy(v5, v24, v23);
    v5 += v25;
    return v5;
  }

  return sub_1957130(a3, v24, v23, v5);
}

uint64_t sub_1914C70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_19139E4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_1914278(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(a1 + 16))
  {
    v15 = *(a1 + 72);
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 11;
    }

    v9 += v17;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v9 += v21;
  }

  *(a1 + 20) = v9;
  return v9;
}

uint64_t sub_1914DB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271B658;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1914E28(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271B6D8;
  *(result + 16) = 0;
  return result;
}

void *sub_1914EA0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_271B758;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1914F18(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271B7D8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1914F90(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_271B858;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_1915034(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271B8D8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_19150B0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271B958;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_191512C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271B9D8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_19151A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BA58;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_191521C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BAD8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1915298(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BB58;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915310(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BBD8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915388(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BC58;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915400(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BCD8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915478(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BD58;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_19154F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_271BDD8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = &qword_278E990;
  *(result + 96) = &qword_278E990;
  *(result + 104) = 0;
  *(result + 108) = 0;
  return result;
}

uint64_t sub_19155B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BE58;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1915630(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BED8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_19156AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BF58;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915724(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271BFD8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_191579C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C058;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915814(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C0D8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_191588C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C158;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915904(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C1D8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_191597C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C258;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_19159F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C2D8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915A6C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C358;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1915AE8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C3D8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915B60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C458;
  *(result + 16) = 0;
  return result;
}

void *sub_1915BD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_271C4D8;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_1915C5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C558;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1915CD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C5D8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915D50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C658;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915DC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C6D8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915E40(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C758;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915EB8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C7D8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1915F30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271C858;
  *(result + 16) = 0;
  return result;
}

double sub_1915FA8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_271C8D8;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  return result;
}

uint64_t sub_1916050(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_271C958;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_19160EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_271C9D8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_1916190(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_271CA58;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = a1;
  result[8] = 0;
  return result;
}

void *sub_1916234(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_271CAD8;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = a1;
  result[8] = 0;
  return result;
}

uint64_t sub_19162D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_271CB58;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_191637C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_271CBD8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}