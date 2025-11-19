void sub_169AF50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_16BE188((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_16BE214((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_16BE2A0((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_16BE2A0((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_16BE32C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 168);
  if (v29)
  {
    v30 = *(a1 + 168);
    sub_1958E5C((a1 + 168), v30 + v29);
    v31 = *(a1 + 176);
    *(a1 + 168) += *(a2 + 168);
    memcpy((v31 + 4 * v30), *(a2 + 176), 4 * *(a2 + 168));
  }

  v32 = *(a2 + 40);
  if ((v32 & 0x1F) != 0)
  {
    if (v32)
    {
      v34 = *(a2 + 184);
      *(a1 + 40) |= 1u;
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_194EA1C((a1 + 184), (v34 & 0xFFFFFFFFFFFFFFFELL), v36);
      if ((v32 & 2) == 0)
      {
LABEL_21:
        if ((v32 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }
    }

    else if ((v32 & 2) == 0)
    {
      goto LABEL_21;
    }

    *(a1 + 192) = *(a2 + 192);
    if ((v32 & 4) == 0)
    {
LABEL_22:
      if ((v32 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 196) = *(a2 + 196);
    if ((v32 & 8) == 0)
    {
LABEL_23:
      if ((v32 & 0x10) == 0)
      {
LABEL_25:
        *(a1 + 40) |= v32;
        goto LABEL_26;
      }

LABEL_24:
      *(a1 + 201) = *(a2 + 201);
      goto LABEL_25;
    }

LABEL_35:
    *(a1 + 200) = *(a2 + 200);
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_26:
  sub_225EA0C(a1 + 16, a2 + 16);
  v33 = *(a2 + 8);
  if (v33)
  {

    sub_1957EF4((a1 + 8), (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_169B25C(uint64_t a1)
{
  if (!sub_195228C(a1 + 16) || (*(a1 + 40) & 2) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_169240C(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  while (v5 >= 1)
  {
    v7 = v5 - 1;
    v8 = sub_169BE84(*(v6 + 8 * v5));
    v5 = v7;
    if (!v8)
    {
      return 0;
    }
  }

  if (!sub_169B31C(a1 + 96))
  {
    return 0;
  }

  return sub_169B31C(a1 + 120);
}

uint64_t sub_169B31C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 0x10) == 0 || (~*(*(*i + 56) + 16) & 3) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_169B384(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FD430;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_169B400(uint64_t a1)
{
  if (!a1)
  {

    sub_16BE3A8();
  }

  return sub_168CDC4(v3, a1, 0);
}

uint64_t sub_169B45C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FD530;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_169B4FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FD5B0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_169B588(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FD630;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = -1;
  return result;
}

uint64_t sub_169B608(uint64_t a1)
{
  if (!a1)
  {

    sub_16BE414();
  }

  return sub_1690350(v3, a1, 0);
}

uint64_t sub_169B664(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FD730;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_169B6E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FD7B0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0xC350000000000;
  *(result + 72) = 257;
  *(result + 76) = 1;
  return result;
}

double sub_169B7A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FD830;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 81) = 0u;
  *(v2 + 100) = 1;
  return result;
}

double sub_169B840(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FD8B0;
  result = 0.0;
  *(v2 + 16) = xmmword_23365C0;
  return result;
}

uint64_t sub_169B8C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FD930;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

void *sub_169B95C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FD9B0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_169B9D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FDA30;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_169BA54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FDAB0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_169BAF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FDB30;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_169BB68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FDBB0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 2;
  return result;
}

uint64_t sub_169BBEC(uint64_t a1)
{
  if (!a1)
  {

    sub_16BE480();
  }

  return sub_169887C(v3, a1, 0);
}

uint64_t sub_169BC48(uint64_t a1)
{
  if (!a1)
  {

    sub_16BE4EC();
  }

  return sub_1699B30(v3, a1, 0);
}

uint64_t sub_169BCA4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_168C3F0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    result = sub_1698850(*(v1 + 48));
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
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

std::string *sub_169BD40(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_16C01FC(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[2].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v13 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v13 = *v13;
        }

        sub_16BAE18(v13);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_277D468;
      }

      result = sub_15FB28C(data, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_169BE84(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  do
  {
    v1 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_168C68C(*(v3 + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v1;
}

void *sub_169BEE4(void *a1)
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

void sub_169BF58(void *a1)
{
  sub_169BEE4(a1);

  operator delete();
}

uint64_t sub_169BF90(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
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

char *sub_169BFB8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v35, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v35 + 1;
    v8 = *v35;
    if (*v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v35 + 2;
      }
    }

    v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 7)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_32;
      }

      v5 |= 1u;
      v19 = v7 + 1;
      v18 = *v7;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_26:
        v35 = v19;
        *(a1 + 24) = v18;
        goto LABEL_39;
      }

      v31 = sub_19587DC(v7, v18);
      v35 = v31;
      *(a1 + 24) = v32;
      if (!v31)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_32;
      }

      v5 |= 4u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_14:
        v35 = v13;
        *(a1 + 36) = v12 != 0;
        goto LABEL_39;
      }

      v27 = sub_19587DC(v7, v12);
      v35 = v27;
      *(a1 + 36) = v28 != 0;
      if (!v27)
      {
        goto LABEL_52;
      }
    }

LABEL_39:
    if (sub_195ADC0(a3, &v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 8)
  {
    if (v8 != 64)
    {
      goto LABEL_32;
    }

    v5 |= 8u;
    v21 = v7 + 1;
    v22 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v23 = *v21;
    v22 = v22 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_31:
      v35 = v21;
      *(a1 + 40) = v22;
      goto LABEL_39;
    }

    v33 = sub_1958770(v7, v22);
    v35 = v33;
    *(a1 + 40) = v34;
    if (!v33)
    {
      goto LABEL_52;
    }

    goto LABEL_39;
  }

  if (v11 == 2047 && v8 == 248)
  {
    v5 |= 2u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_21:
      v35 = v15;
      *(a1 + 32) = v16;
      goto LABEL_39;
    }

    v29 = sub_1958770(v7, v16);
    v35 = v29;
    *(a1 + 32) = v30;
    if (!v29)
    {
      goto LABEL_52;
    }

    goto LABEL_39;
  }

LABEL_32:
  if (v8)
  {
    v24 = (v8 & 7) == 4;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v7 = v35;
    }

    v35 = sub_1952690(v8, v26, v7, a3);
    if (!v35)
    {
      goto LABEL_52;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

char *sub_169C280(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 24;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
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
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 36);
    *v6 = 56;
    v6[1] = v11;
    v6 += 2;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 40);
    *v6 = 64;
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v6[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v6[2] = v13 >> 7;
      v12 = v6 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v12 - 1) = v6 | 0x80;
          LODWORD(v6) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v6 + 2;
    }
  }

  else
  {
    v12 = v6;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 32);
    *v12 = 32760;
    v12[2] = v17;
    if (v17 > 0x7F)
    {
      v12[2] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[3] = v17 >> 7;
      v16 = v12 + 4;
      if (v17 >= 0x4000)
      {
        LOBYTE(v12) = v12[3];
        do
        {
          *(v16 - 1) = v12 | 0x80;
          LODWORD(v12) = v18 >> 7;
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v12 + 3;
    }
  }

  else
  {
    v16 = v12;
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v16;
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

  if (*a3 - v16 >= v23)
  {
    v25 = v23;
    memcpy(v16, v24, v23);
    v16 += v25;
    return v16;
  }

  return sub_1957130(a3, v24, v23, v16);
}

unint64_t sub_169C4F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_8:
  v3 = v2 + ((v1 >> 1) & 2);
  if ((v1 & 8) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    v3 += v7;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_169C5D8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_277CF60)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_168F41C(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_168F41C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_169C6A8(uint64_t a1)
{
  sub_169C5D8(a1);

  operator delete();
}

uint64_t sub_169C6E0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_168D110(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_168D110(*(v1 + 32));
    }
  }

  if ((v2 & 0x3C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_169C760(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v41 + 1;
    v8 = *v41;
    if (*v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v41 + 2;
      }
    }

    v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 == 26)
      {
        *(a1 + 16) |= 1u;
        v18 = *(a1 + 24);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_169B4FC(v20);
          *(a1 + 24) = v18;
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_46;
      }

      v5 |= 4u;
      v25 = v7 + 1;
      v24 = *v7;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_38:
        v41 = v25;
        *(a1 + 40) = v24;
        goto LABEL_54;
      }

      v39 = sub_19587DC(v7, v24);
      v41 = v39;
      *(a1 + 40) = v40;
      if (!v39)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_46;
      }

      v5 |= 8u;
      v12 = v7 + 1;
      v13 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v12;
      v13 = v13 + (v14 << 7) - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v12 = v7 + 2;
LABEL_15:
        v41 = v12;
        *(a1 + 48) = v13;
        goto LABEL_54;
      }

      v35 = sub_1958770(v7, v13);
      v41 = v35;
      *(a1 + 48) = v36;
      if (!v35)
      {
        goto LABEL_67;
      }
    }

LABEL_54:
    if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_46;
    }

    v5 |= 0x10u;
    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_33:
      v41 = v22;
      *(a1 + 52) = v21 != 0;
      goto LABEL_54;
    }

    v33 = sub_19587DC(v7, v21);
    v41 = v33;
    *(a1 + 52) = v34 != 0;
    if (!v33)
    {
      goto LABEL_67;
    }

    goto LABEL_54;
  }

  if (v11 != 8)
  {
    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_46;
    }

    v5 |= 0x20u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_23:
      v41 = v15;
      *(a1 + 56) = v16;
      goto LABEL_54;
    }

    v37 = sub_1958770(v7, v16);
    v41 = v37;
    *(a1 + 56) = v38;
    if (!v37)
    {
      goto LABEL_67;
    }

    goto LABEL_54;
  }

  if (v8 == 66)
  {
    *(a1 + 16) |= 2u;
    v18 = *(a1 + 32);
    if (!v18)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v18 = sub_169B4FC(v28);
      *(a1 + 32) = v18;
LABEL_44:
      v7 = v41;
    }

LABEL_45:
    v29 = sub_2231A68(a3, v18, v7);
LABEL_53:
    v41 = v29;
    if (!v29)
    {
      goto LABEL_67;
    }

    goto LABEL_54;
  }

LABEL_46:
  if (v8)
  {
    v30 = (v8 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v7 = v41;
    }

    v29 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_53;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_67:
  v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_169CACC(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 26;
    v7 = *(v6 + 20);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_168F868(v6, v8, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 40);
    *__dst = 32;
    __dst[1] = v10;
    if (v10 > 0x7F)
    {
      __dst[1] = v10 | 0x80;
      v11 = v10 >> 7;
      __dst[2] = v10 >> 7;
      v9 = __dst + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = __dst[2];
        do
        {
          *(v9 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v9++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v9 = __dst + 2;
    }
  }

  else
  {
    v9 = __dst;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 48);
    *v9 = 40;
    v9[1] = v15;
    if (v15 > 0x7F)
    {
      v9[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v9[2] = v15 >> 7;
      v14 = v9 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v9) = v9[2];
        do
        {
          *(v14 - 1) = v9 | 0x80;
          LODWORD(v9) = v16 >> 7;
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v9 + 2;
    }
  }

  else
  {
    v14 = v9;
  }

  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v20 = *(a1 + 32);
    *v14 = 66;
    v21 = *(v20 + 20);
    v14[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v14 + 1);
    }

    else
    {
      v22 = v14 + 2;
    }

    v14 = sub_168F868(v20, v22, a3);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v19 = *(a1 + 52);
  *v14 = 48;
  v14[1] = v19;
  v14 += 2;
  if ((v5 & 2) != 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  if ((v5 & 0x20) == 0)
  {
LABEL_29:
    v18 = v14;
    goto LABEL_46;
  }

LABEL_39:
  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v23 = *(a1 + 56);
  *v14 = 32760;
  v14[2] = v23;
  if (v23 > 0x7F)
  {
    v14[2] = v23 | 0x80;
    v24 = v23 >> 7;
    v14[3] = v23 >> 7;
    v18 = v14 + 4;
    if (v23 >= 0x4000)
    {
      LOBYTE(v14) = v14[3];
      do
      {
        *(v18 - 1) = v14 | 0x80;
        LODWORD(v14) = v24 >> 7;
        *v18++ = v24 >> 7;
        v25 = v24 >> 14;
        v24 >>= 7;
      }

      while (v25);
    }
  }

  else
  {
    v18 = v14 + 3;
  }

LABEL_46:
  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v18;
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

  if (*a3 - v18 >= v29)
  {
    v31 = v29;
    memcpy(v18, v30, v29);
    v18 += v31;
    return v18;
  }

  return sub_1957130(a3, v30, v29, v18);
}

uint64_t sub_169CE0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v5 = sub_168FB0C(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_168FB0C(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  result = v3 + ((v2 >> 3) & 2);
  if ((v2 & 0x20) != 0)
  {
    result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_13:
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_169CF60(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
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

        data = sub_169B4FC(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277CA88;
      }

      result = sub_168ED34(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_30;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

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

      v10 = sub_169B4FC(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277CA88;
    }

    result = sub_168ED34(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    }

LABEL_30:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_32;
    }

LABEL_31:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
      goto LABEL_9;
    }

LABEL_32:
    v3[2].__r_.__value_.__s.__data_[4] = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_169D0C8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
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

  sub_169D14C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_169D14C(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  result = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_277CFA0)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_168F41C(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_168F41C(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_168F41C(v7);
      operator delete();
    }

    result = *(a1 + 72);
    if (result)
    {
      sub_168F41C(result);

      operator delete();
    }
  }

  return result;
}

void sub_169D238(void *a1)
{
  sub_169D0C8(a1);

  operator delete();
}

uint64_t sub_169D270(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_29:
    result = sub_168D110(*(v1 + 56));
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_30;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_28:
  result = sub_168D110(*(result + 48));
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_30:
  result = sub_168D110(*(v1 + 64));
  if ((v2 & 0x40) != 0)
  {
LABEL_9:
    result = sub_168D110(*(v1 + 72));
  }

LABEL_10:
  *(v1 + 80) = 0;
  if ((v2 & 0x1F00) != 0)
  {
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    *(v1 + 104) = -1;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_169D3BC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v64 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v64, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v64 + 1);
    v8 = **v64;
    if (**v64 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v64, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v64 + 2);
      }
    }

    *v64 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 8)
    {
      break;
    }

    if (v8 >> 3 <= 0xB)
    {
      if (v11 != 9)
      {
        if (v11 == 10)
        {
          if (v8 != 80)
          {
            goto LABEL_97;
          }

          v5 |= 0x100u;
          v36 = (v7 + 1);
          v37 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_71;
          }

          v38 = *v36;
          v37 = v37 + (v38 << 7) - 128;
          if ((v38 & 0x80000000) == 0)
          {
            v36 = (v7 + 2);
LABEL_71:
            *v64 = v36;
            *(a1 + 88) = v37;
            goto LABEL_95;
          }

          v58 = sub_1958770(v7, v37);
          *v64 = v58;
          *(a1 + 88) = v59;
          if (!v58)
          {
            goto LABEL_123;
          }

          goto LABEL_95;
        }

        if (v11 != 11 || v8 != 90)
        {
          goto LABEL_97;
        }

        *(a1 + 16) |= 2u;
        v19 = *(a1 + 8);
        v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_54;
      }

      if (v8 != 72)
      {
        goto LABEL_97;
      }

      v32 = (v7 + 1);
      v33 = *v7;
      if ((v33 & 0x8000000000000000) != 0)
      {
        v34 = *v32;
        v35 = (v34 << 7) + v33;
        v33 = (v35 - 128);
        if ((v34 & 0x80000000) == 0)
        {
          v32 = (v7 + 2);
          goto LABEL_64;
        }

        *v64 = sub_19587DC(v7, (v35 - 128));
        if (!*v64)
        {
          goto LABEL_123;
        }

        v33 = v53;
      }

      else
      {
LABEL_64:
        *v64 = v32;
      }

      if ((v33 + 2) > 9)
      {
        v62 = *(a1 + 8);
        if (v62)
        {
          v63 = ((v62 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        else
        {
          v63 = sub_11F1920((a1 + 8));
        }

        sub_19586BC(9, v33, v63);
      }

      else
      {
        *(a1 + 16) |= 0x1000u;
        *(a1 + 104) = v33;
      }

      goto LABEL_95;
    }

    if (v8 >> 3 <= 0xE)
    {
      if (v11 != 12)
      {
        if (v11 != 14 || v8 != 112)
        {
          goto LABEL_97;
        }

        v5 |= 0x200u;
        v12 = (v7 + 1);
        v13 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        v14 = *v12;
        v13 = v13 + (v14 << 7) - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_16:
          *v64 = v12;
          *(a1 + 92) = v13;
          goto LABEL_95;
        }

        v54 = sub_1958770(v7, v13);
        *v64 = v54;
        *(a1 + 92) = v55;
        if (!v54)
        {
          goto LABEL_123;
        }

        goto LABEL_95;
      }

      if (v8 != 98)
      {
        goto LABEL_97;
      }

      *(a1 + 16) |= 4u;
      v26 = *(a1 + 8);
      v17 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v17 = *v17;
      }

      v18 = (a1 + 40);
LABEL_54:
      v27 = sub_194DB04(v18, v17);
      v28 = sub_1958890(v27, *v64, a3);
      goto LABEL_94;
    }

    if (v11 == 15)
    {
      if (v8 != 120)
      {
        goto LABEL_97;
      }

      v5 |= 0x400u;
      v29 = (v7 + 1);
      v30 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      v31 = *v29;
      v30 = v30 + (v31 << 7) - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v29 = (v7 + 2);
LABEL_59:
        *v64 = v29;
        *(a1 + 96) = v30;
        goto LABEL_95;
      }

      v51 = sub_1958770(v7, v30);
      *v64 = v51;
      *(a1 + 96) = v52;
      if (!v51)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (v11 != 2047 || v8 != 248)
      {
        goto LABEL_97;
      }

      v5 |= 0x800u;
      v23 = (v7 + 1);
      v24 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      v25 = *v23;
      v24 = v24 + (v25 << 7) - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v23 = (v7 + 2);
LABEL_49:
        *v64 = v23;
        *(a1 + 100) = v24;
        goto LABEL_95;
      }

      v56 = sub_1958770(v7, v24);
      *v64 = v56;
      *(a1 + 100) = v57;
      if (!v56)
      {
        goto LABEL_123;
      }
    }

LABEL_95:
    if (sub_195ADC0(a3, v64, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 3)
  {
    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 8u;
        v39 = *(a1 + 48);
        if (!v39)
        {
          v40 = *(a1 + 8);
          v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          if (v40)
          {
            v41 = *v41;
          }

          v39 = sub_169B4FC(v41);
          *(a1 + 48) = v39;
          goto LABEL_92;
        }

        goto LABEL_93;
      }

      goto LABEL_97;
    }

    if (v11 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 0x10u;
        v39 = *(a1 + 56);
        if (!v39)
        {
          v44 = *(a1 + 8);
          v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
          if (v44)
          {
            v45 = *v45;
          }

          v39 = sub_169B4FC(v45);
          *(a1 + 56) = v39;
          goto LABEL_92;
        }

        goto LABEL_93;
      }

      goto LABEL_97;
    }

    if (v11 != 3 || v8 != 26)
    {
      goto LABEL_97;
    }

    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = (a1 + 24);
    goto LABEL_54;
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_97;
    }

    *(a1 + 16) |= 0x20u;
    v39 = *(a1 + 64);
    if (!v39)
    {
      v42 = *(a1 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      v39 = sub_169B4FC(v43);
      *(a1 + 64) = v39;
LABEL_92:
      v7 = *v64;
    }

LABEL_93:
    v28 = sub_2231A68(a3, v39, v7);
LABEL_94:
    *v64 = v28;
    if (!v28)
    {
      goto LABEL_123;
    }

    goto LABEL_95;
  }

  if (v11 != 5)
  {
    if (v11 != 7 || v8 != 56)
    {
      goto LABEL_97;
    }

    v5 |= 0x80u;
    v21 = (v7 + 1);
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = (v7 + 2);
LABEL_42:
      *v64 = v21;
      *(a1 + 80) = v20;
      goto LABEL_95;
    }

    v60 = sub_19587DC(v7, v20);
    *v64 = v60;
    *(a1 + 80) = v61;
    if (!v60)
    {
      goto LABEL_123;
    }

    goto LABEL_95;
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 0x40u;
    v39 = *(a1 + 72);
    if (!v39)
    {
      v46 = *(a1 + 8);
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      if (v46)
      {
        v47 = *v47;
      }

      v39 = sub_169B4FC(v47);
      *(a1 + 72) = v39;
      goto LABEL_92;
    }

    goto LABEL_93;
  }

LABEL_97:
  if (v8)
  {
    v48 = (v8 & 7) == 4;
  }

  else
  {
    v48 = 1;
  }

  if (!v48)
  {
    v49 = *(a1 + 8);
    if (v49)
    {
      v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v50 = sub_11F1920((a1 + 8));
      v7 = *v64;
    }

    v28 = sub_1952690(v8, v50, v7, a3);
    goto LABEL_94;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_123:
  *v64 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v64;
}

char *sub_169D998(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 48);
    *v4 = 10;
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

    v4 = sub_168F868(v8, v10, a3);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 56);
  *v4 = 18;
  v12 = *(v11 + 20);
  v4[1] = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, v4 + 1);
  }

  else
  {
    v13 = v4 + 2;
  }

  v4 = sub_168F868(v11, v13, a3);
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_128AEEC(a3, 3, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v17 = *(a1 + 72);
    *v4 = 42;
    v18 = *(v17 + 20);
    v4[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v4 + 1);
    }

    else
    {
      v19 = v4 + 2;
    }

    v4 = sub_168F868(v17, v19, a3);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 64);
  *v4 = 34;
  v15 = *(v14 + 20);
  v4[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v4 + 1);
  }

  else
  {
    v16 = v4 + 2;
  }

  v4 = sub_168F868(v14, v16, a3);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  if ((v6 & 0x80) == 0)
  {
LABEL_7:
    v7 = v4;
    goto LABEL_40;
  }

LABEL_33:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v20 = *(a1 + 80);
  *v4 = 56;
  v4[1] = v20;
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v21 = v20 >> 7;
    v4[2] = v20 >> 7;
    v7 = v4 + 3;
    if (v20 >= 0x4000)
    {
      LOBYTE(v22) = v4[2];
      do
      {
        *(v7 - 1) = v22 | 0x80;
        v22 = v21 >> 7;
        *v7++ = v21 >> 7;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_40:
  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v25 = *(a1 + 104);
    *v7 = 72;
    v7[1] = v25;
    if (v25 > 0x7F)
    {
      v7[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v7[2] = v25 >> 7;
      v24 = v7 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v27) = v7[2];
        do
        {
          *(v24 - 1) = v27 | 0x80;
          v27 = v26 >> 7;
          *v24++ = v26 >> 7;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v24 = v7 + 2;
    }
  }

  else
  {
    v24 = v7;
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v30 = *(a1 + 88);
    *v24 = 80;
    v24[1] = v30;
    if (v30 > 0x7F)
    {
      v24[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v24[2] = v30 >> 7;
      v29 = v24 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v24) = v24[2];
        do
        {
          *(v29 - 1) = v24 | 0x80;
          LODWORD(v24) = v31 >> 7;
          *v29++ = v31 >> 7;
          v32 = v31 >> 14;
          v31 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v29 = v24 + 2;
    }
  }

  else
  {
    v29 = v24;
  }

  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_60;
    }

LABEL_63:
    v29 = sub_128AEEC(a3, 12, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v29);
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_64;
  }

  v29 = sub_128AEEC(a3, 11, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v29);
  if ((v6 & 4) != 0)
  {
    goto LABEL_63;
  }

LABEL_60:
  if ((v6 & 0x200) == 0)
  {
LABEL_61:
    v33 = v29;
    goto LABEL_71;
  }

LABEL_64:
  if (*a3 <= v29)
  {
    v29 = sub_225EB68(a3, v29);
  }

  v34 = *(a1 + 92);
  *v29 = 112;
  v29[1] = v34;
  if (v34 > 0x7F)
  {
    v29[1] = v34 | 0x80;
    v35 = v34 >> 7;
    v29[2] = v34 >> 7;
    v33 = v29 + 3;
    if (v34 >= 0x4000)
    {
      LOBYTE(v36) = v29[2];
      do
      {
        *(v33 - 1) = v36 | 0x80;
        v36 = v35 >> 7;
        *v33++ = v35 >> 7;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
    }
  }

  else
  {
    v33 = v29 + 2;
  }

LABEL_71:
  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v39 = *(a1 + 96);
    *v33 = 120;
    v33[1] = v39;
    if (v39 > 0x7F)
    {
      v33[1] = v39 | 0x80;
      v40 = v39 >> 7;
      v33[2] = v39 >> 7;
      v38 = v33 + 3;
      if (v39 >= 0x4000)
      {
        LOBYTE(v41) = v33[2];
        do
        {
          *(v38 - 1) = v41 | 0x80;
          v41 = v40 >> 7;
          *v38++ = v40 >> 7;
          v42 = v40 >> 14;
          v40 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v38 = v33 + 2;
    }
  }

  else
  {
    v38 = v33;
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v38)
    {
      v38 = sub_225EB68(a3, v38);
    }

    v44 = *(a1 + 100);
    *v38 = 32760;
    v38[2] = v44;
    if (v44 > 0x7F)
    {
      v38[2] = v44 | 0x80;
      v45 = v44 >> 7;
      v38[3] = v44 >> 7;
      v43 = v38 + 4;
      if (v44 >= 0x4000)
      {
        LOBYTE(v38) = v38[3];
        do
        {
          *(v43 - 1) = v38 | 0x80;
          LODWORD(v38) = v45 >> 7;
          *v43++ = v45 >> 7;
          v46 = v45 >> 14;
          v45 >>= 7;
        }

        while (v46);
      }
    }

    else
    {
      v43 = v38 + 3;
    }
  }

  else
  {
    v43 = v38;
  }

  v47 = *(a1 + 8);
  if ((v47 & 1) == 0)
  {
    return v43;
  }

  v49 = v47 & 0xFFFFFFFFFFFFFFFCLL;
  v50 = *(v49 + 31);
  if (v50 < 0)
  {
    v51 = *(v49 + 8);
    v50 = *(v49 + 16);
  }

  else
  {
    v51 = (v49 + 8);
  }

  if ((*a3 - v43) >= v50)
  {
    v52 = v50;
    memcpy(v43, v51, v50);
    v43 += v52;
    return v43;
  }

  return sub_1957130(a3, v51, v50, v43);
}

uint64_t sub_169DF68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
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

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v10 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = sub_168FB0C(*(a1 + 48));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = sub_168FB0C(*(a1 + 56));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = sub_168FB0C(*(a1 + 64));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_32:
  v16 = sub_168FB0C(*(a1 + 72));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0x1F00) == 0)
  {
    goto LABEL_42;
  }

  if ((v2 & 0x100) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_22:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v3 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_23:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_36:
  v3 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) == 0)
  {
LABEL_24:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_37:
  v3 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v17 = *(a1 + 104);
  if (v17 < 0)
  {
    v18 = 11;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v18;
LABEL_42:
  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v3 += v22;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_169E290(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v7 = *v7;
      }

      result = sub_194EA1C(&result[1], (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v8 = *(a2 + 32);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v9 = v3->__r_.__value_.__l.__size_;
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
    if ((v4 & 4) == 0)
    {
LABEL_15:
      if ((v4 & 8) != 0)
      {
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
        data = v3[2].__r_.__value_.__l.__data_;
        if (!data)
        {
          v16 = v3->__r_.__value_.__l.__size_;
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          data = sub_169B4FC(v17);
          v3[2].__r_.__value_.__r.__words[0] = data;
        }

        if (*(a2 + 48))
        {
          v18 = *(a2 + 48);
        }

        else
        {
          v18 = &off_277CA88;
        }

        result = sub_168ED34(data, v18);
        if ((v4 & 0x10) == 0)
        {
LABEL_17:
          if ((v4 & 0x20) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_50;
        }
      }

      else if ((v4 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
      v19 = v3[2].__r_.__value_.__l.__size_;
      if (!v19)
      {
        v20 = v3->__r_.__value_.__l.__size_;
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_169B4FC(v21);
        v3[2].__r_.__value_.__l.__size_ = v19;
      }

      if (*(a2 + 56))
      {
        v22 = *(a2 + 56);
      }

      else
      {
        v22 = &off_277CA88;
      }

      result = sub_168ED34(v19, v22);
      if ((v4 & 0x20) == 0)
      {
LABEL_18:
        if ((v4 & 0x40) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_58;
      }

LABEL_50:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
      v23 = v3[2].__r_.__value_.__r.__words[2];
      if (!v23)
      {
        v24 = v3->__r_.__value_.__l.__size_;
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_169B4FC(v25);
        v3[2].__r_.__value_.__r.__words[2] = v23;
      }

      if (*(a2 + 64))
      {
        v26 = *(a2 + 64);
      }

      else
      {
        v26 = &off_277CA88;
      }

      result = sub_168ED34(v23, v26);
      if ((v4 & 0x40) == 0)
      {
LABEL_19:
        if ((v4 & 0x80) == 0)
        {
LABEL_21:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
          goto LABEL_22;
        }

LABEL_20:
        v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
        goto LABEL_21;
      }

LABEL_58:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
      v27 = v3[3].__r_.__value_.__l.__data_;
      if (!v27)
      {
        v28 = v3->__r_.__value_.__l.__size_;
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        v27 = sub_169B4FC(v29);
        v3[3].__r_.__value_.__r.__words[0] = v27;
      }

      if (*(a2 + 72))
      {
        v30 = *(a2 + 72);
      }

      else
      {
        v30 = &off_277CA88;
      }

      result = sub_168ED34(v27, v30);
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_12:
    v11 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v12 = v3->__r_.__value_.__l.__size_;
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
    goto LABEL_15;
  }

LABEL_22:
  if ((v4 & 0x1F00) == 0)
  {
    goto LABEL_30;
  }

  if ((v4 & 0x100) != 0)
  {
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
    if ((v4 & 0x200) == 0)
    {
LABEL_25:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_69;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_25;
  }

  HIDWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_26:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_27;
    }

LABEL_70:
    HIDWORD(v3[4].__r_.__value_.__r.__words[0]) = *(a2 + 100);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_69:
  LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_70;
  }

LABEL_27:
  if ((v4 & 0x1000) != 0)
  {
LABEL_28:
    LODWORD(v3[4].__r_.__value_.__r.__words[1]) = *(a2 + 104);
  }

LABEL_29:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
LABEL_30:
  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_169E564(void *a1)
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

void sub_169E5D8(void *a1)
{
  sub_169E564(a1);

  operator delete();
}

uint64_t sub_169E610(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_169E628(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = v19 + 1;
    v7 = *v19;
    if (*v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v19 + 2;
      }
    }

    v19 = v6;
    if (v7 != 8)
    {
      break;
    }

    v13 = v6 + 1;
    v14 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v6 + 2;
LABEL_18:
      v19 = v13;
      *(a1 + 24) = v14;
      v5 = 1;
      goto LABEL_19;
    }

    v16 = sub_1958770(v6, v14);
    v19 = v16;
    *(a1 + 24) = v17;
    v5 = 1;
    if (!v16)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
    {
      goto LABEL_26;
    }
  }

  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v19;
    }

    v19 = sub_1952690(v7, v12, v6, a3);
    if (!v19)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_26;
  }

LABEL_27:
  v19 = 0;
LABEL_26:
  *(a1 + 16) |= v5;
  return v19;
}

char *sub_169E79C(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_169E8C4(uint64_t a1)
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

uint64_t sub_169E93C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_277D030)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_169D0C8(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_168F41C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_169EA0C(uint64_t a1)
{
  sub_169E93C(a1);

  operator delete();
}

uint64_t sub_169EA44(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_169D270(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_168D110(*(v1 + 32));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 40) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_169EAC4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v34 + 1;
    v8 = *v34;
    if (*v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v34 + 2;
      }
    }

    v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v20 = *(a1 + 24);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          sub_16AA45C(v22);
          v20 = v23;
          *(a1 + 24) = v23;
          v7 = v34;
        }

        v19 = sub_2232488(a3, v20, v7);
        goto LABEL_44;
      }

      goto LABEL_37;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      v34 = v14;
      *(a1 + 40) = v13;
      goto LABEL_45;
    }

    v30 = sub_19587DC(v7, v13);
    v34 = v30;
    *(a1 + 40) = v31;
    if (!v30)
    {
      goto LABEL_54;
    }

LABEL_45:
    if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_37;
    }

    v5 |= 8u;
    v25 = v7 + 1;
    v24 = *v7;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    v26 = *v25;
    v24 = (v26 << 7) + v24 - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_36:
      v34 = v25;
      *(a1 + 48) = v24 != 0;
      goto LABEL_45;
    }

    v32 = sub_19587DC(v7, v24);
    v34 = v32;
    *(a1 + 48) = v33 != 0;
    if (!v32)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 2u;
    v16 = *(a1 + 32);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_169B4FC(v18);
      *(a1 + 32) = v16;
      v7 = v34;
    }

    v19 = sub_2231A68(a3, v16, v7);
LABEL_44:
    v34 = v19;
    if (!v19)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

LABEL_37:
  if (v8)
  {
    v27 = (v8 & 7) == 4;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v29 = sub_11F1920((a1 + 8));
      v7 = v34;
    }

    v19 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

char *sub_169ED70(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 10;
    v7 = *(v6 + 20);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_169D998(v6, v8, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 40);
    *__dst = 16;
    __dst[1] = v10;
    if (v10 > 0x7F)
    {
      __dst[1] = v10 | 0x80;
      v11 = v10 >> 7;
      __dst[2] = v10 >> 7;
      v9 = __dst + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = __dst[2];
        do
        {
          *(v9 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v9++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v9 = __dst + 2;
    }
  }

  else
  {
    v9 = __dst;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v14 = *(a1 + 48);
    *v9 = 32;
    v9[1] = v14;
    v9 += 2;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 32);
    *v9 = 42;
    v16 = *(v15 + 20);
    v9[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v9 + 1);
    }

    else
    {
      v17 = v9 + 2;
    }

    v9 = sub_168F868(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v9;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if ((*a3 - v9) >= v21)
  {
    v23 = v21;
    memcpy(v9, v22, v21);
    v9 += v23;
    return v9;
  }

  return sub_1957130(a3, v22, v21, v9);
}

uint64_t sub_169EF98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = sub_169DF68(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_168FB0C(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 2) & 2);
LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_169F094(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
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

        sub_16AA45C(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277CFA0;
      }

      result = sub_169E290(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_28;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

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

      v10 = sub_169B4FC(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277CA88;
    }

    result = sub_168ED34(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      v3[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_28:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_169F1E4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_277D068)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_169E564(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_169E93C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_169F2B4(uint64_t a1)
{
  sub_169F1E4(a1);

  operator delete();
}

uint64_t sub_169F2EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v3 = *(result + 24);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = sub_169EA44(*(v1 + 32));
    }
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

char *sub_169F36C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v23, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v23 + 1;
    v7 = *v23;
    if (*v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v23 + 2;
      }
    }

    v23 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_16AA574(v17);
          v15 = v18;
          *(a1 + 32) = v18;
          v6 = v23;
        }

        v14 = sub_22325A8(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 24);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_16AA4F8(v21);
        *(a1 + 24) = v19;
        v6 = v23;
      }

      v14 = sub_2232518(a3, v19, v6);
      goto LABEL_30;
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
        return v23;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v23;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

char *sub_169F514(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 10;
    v8 = *(v7 + 20);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_169E79C(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_169ED70(v10, v12, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_169F690(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_169E8C4(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_169EF98(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_169F760(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v7 = *v7;
        }

        data = sub_16AA4F8(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277D010;
      }

      result = sub_12B9D50(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v9 = v3[1].__r_.__value_.__l.__size_;
      if (!v9)
      {
        v10 = v3->__r_.__value_.__l.__size_;
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        sub_16AA574(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277D030;
      }

      result = sub_169F094(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_169F87C(uint64_t a1)
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
  if (a1 != &off_277D090)
  {
    v6 = *(a1 + 88);
    if (v6)
    {
      sub_16A0874(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_16BE5DC((a1 + 64));
  sub_1956ABC(a1 + 48);
  sub_16BE558((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_169F954(uint64_t a1)
{
  sub_169F87C(a1);

  operator delete();
}

uint64_t sub_169F98C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_169F2EC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v5 = *(v1 + 72);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 80) + 8);
    do
    {
      v7 = *v6++;
      result = sub_16A50C4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 72) = 0;
  }

  v8 = *(v1 + 16);
  if (v8)
  {
    result = sub_169FA54(*(v1 + 88));
  }

  if ((v8 & 6) != 0)
  {
    *(v1 + 96) = 0;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_169FA54(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1693C2C(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_168D110(*(v1 + 32));
    }
  }

  if ((v2 & 0x7C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_169FADC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v48 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v48, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v48 + 1;
    v8 = *v48;
    if (*v48 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v48, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v48 + 2;
      }
    }

    v48 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_70;
      }

      v5 |= 2u;
      v24 = v7 + 1;
      v25 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v26 = *v24;
      v25 = v25 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_38:
        v48 = v24;
        *(a1 + 96) = v25;
        goto LABEL_78;
      }

      v41 = sub_1958770(v7, v25);
      v48 = v41;
      *(a1 + 96) = v42;
      if (!v41)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v11 != 3)
      {
        if (v11 == 4 && v8 == 34)
        {
          v12 = v7 - 1;
          while (1)
          {
            v13 = (v12 + 1);
            v48 = v12 + 1;
            v14 = *(a1 + 40);
            if (v14 && (v15 = *(a1 + 32), v15 < *v14))
            {
              *(a1 + 32) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              v17 = sub_16AA5F4(*(a1 + 24));
              v16 = sub_19593CC(a1 + 24, v17);
              v13 = v48;
            }

            v12 = sub_2232638(a3, v16, v13);
            v48 = v12;
            if (!v12)
            {
              goto LABEL_83;
            }

            if (*a3 <= v12 || *v12 != 34)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_70;
      }

      if (v8 != 24)
      {
        goto LABEL_70;
      }

      v5 |= 4u;
      v32 = v7 + 1;
      v33 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      v34 = *v32;
      v33 = v33 + (v34 << 7) - 128;
      if ((v34 & 0x80000000) == 0)
      {
        v32 = v7 + 2;
LABEL_49:
        v48 = v32;
        *(a1 + 100) = v33;
        goto LABEL_78;
      }

      v43 = sub_1958770(v7, v33);
      v48 = v43;
      *(a1 + 100) = v44;
      if (!v43)
      {
        goto LABEL_83;
      }
    }

LABEL_78:
    if (sub_195ADC0(a3, &v48, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 5)
  {
    if (v8 != 42)
    {
      goto LABEL_70;
    }

    *(a1 + 16) |= 1u;
    v27 = *(a1 + 88);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      sub_16AA728(v29);
      v27 = v30;
      *(a1 + 88) = v30;
      v7 = v48;
    }

    v31 = sub_22326C8(a3, v27, v7);
LABEL_77:
    v48 = v31;
    if (!v31)
    {
      goto LABEL_83;
    }

    goto LABEL_78;
  }

  if (v11 == 6)
  {
    if (v8 == 48)
    {
      v35 = v7 - 1;
      while (1)
      {
        v48 = v35 + 1;
        v36 = v35[1];
        if (v35[1] < 0)
        {
          v37 = v36 + (v35[2] << 7);
          v36 = v37 - 128;
          if (v35[2] < 0)
          {
            v35 = sub_1958770((v35 + 1), v37 - 128);
            v36 = v38;
          }

          else
          {
            v35 += 3;
          }
        }

        else
        {
          v35 += 2;
        }

        v48 = v35;
        v39 = *(a1 + 48);
        if (v39 == *(a1 + 52))
        {
          v40 = v39 + 1;
          sub_1958E5C((a1 + 48), v39 + 1);
          *(*(a1 + 56) + 4 * v39) = v36;
          v35 = v48;
        }

        else
        {
          *(*(a1 + 56) + 4 * v39) = v36;
          v40 = v39 + 1;
        }

        *(a1 + 48) = v40;
        if (!v35)
        {
          goto LABEL_83;
        }

        if (*a3 <= v35 || *v35 != 48)
        {
          goto LABEL_78;
        }
      }
    }

    if (v8 == 50)
    {
      v31 = sub_1958918((a1 + 48), v7, a3);
      goto LABEL_77;
    }
  }

  else if (v11 == 7 && v8 == 58)
  {
    v18 = v7 - 1;
    while (1)
    {
      v19 = (v18 + 1);
      v48 = v18 + 1;
      v20 = *(a1 + 80);
      if (v20 && (v21 = *(a1 + 72), v21 < *v20))
      {
        *(a1 + 72) = v21 + 1;
        v22 = *&v20[2 * v21 + 2];
      }

      else
      {
        v23 = sub_16AAACC(*(a1 + 64));
        v22 = sub_19593CC(a1 + 64, v23);
        v19 = v48;
      }

      v18 = sub_2232758(a3, v22, v19);
      v48 = v18;
      if (!v18)
      {
        goto LABEL_83;
      }

      if (*a3 <= v18 || *v18 != 58)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_70:
  if (v8)
  {
    v45 = (v8 & 7) == 4;
  }

  else
  {
    v45 = 1;
  }

  if (!v45)
  {
    v46 = *(a1 + 8);
    if (v46)
    {
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v47 = sub_11F1920((a1 + 8));
      v7 = v48;
    }

    v31 = sub_1952690(v8, v47, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  v48 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v48;
}

char *sub_169FF34(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 96);
    *a2 = 16;
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 100);
    *v6 = 24;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 34;
      v18 = *(v17 + 20);
      v11[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v11 + 1);
      }

      else
      {
        v19 = v11 + 2;
      }

      v11 = sub_169F514(v17, v19, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v20 = *(a1 + 88);
    *v11 = 42;
    v21 = *(v20 + 20);
    v11[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v11 + 1);
    }

    else
    {
      v22 = v11 + 2;
    }

    v11 = sub_16A0D7C(v20, v22, a3);
  }

  v23 = *(a1 + 48);
  if (v23 < 1)
  {
    v26 = v11;
  }

  else
  {
    for (j = 0; j != v23; ++j)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v25 = *(*(a1 + 56) + 4 * j);
      *v11 = 48;
      v11[1] = v25;
      if (v25 > 0x7F)
      {
        v11[1] = v25 | 0x80;
        v27 = v25 >> 7;
        v11[2] = v25 >> 7;
        v26 = v11 + 3;
        if (v25 >= 0x4000)
        {
          LOBYTE(v11) = v11[2];
          do
          {
            *(v26 - 1) = v11 | 0x80;
            LODWORD(v11) = v27 >> 7;
            *v26++ = v27 >> 7;
            v28 = v27 >> 14;
            v27 >>= 7;
          }

          while (v28);
        }
      }

      else
      {
        v26 = v11 + 2;
      }

      v11 = v26;
    }
  }

  v29 = *(a1 + 72);
  if (v29)
  {
    for (k = 0; k != v29; ++k)
    {
      if (*a3 <= v26)
      {
        v26 = sub_225EB68(a3, v26);
      }

      v31 = *(*(a1 + 80) + 8 * k + 8);
      *v26 = 58;
      v32 = *(v31 + 20);
      v26[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v26 + 1);
      }

      else
      {
        v33 = v26 + 2;
      }

      v26 = sub_16A5740(v31, v33, a3);
    }
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v26;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 31);
  if (v37 < 0)
  {
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
  }

  else
  {
    v38 = (v36 + 8);
  }

  if ((*a3 - v26) >= v37)
  {
    v39 = v37;
    memcpy(v26, v38, v37);
    v26 += v39;
    return v26;
  }

  return sub_1957130(a3, v38, v37, v26);
}

uint64_t sub_16A0310(uint64_t a1)
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
      v7 = sub_169F690(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = sub_1959E5C((a1 + 48));
  v9 = *(a1 + 72);
  v10 = v8 + v2 + *(a1 + 48) + v9;
  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = sub_16A5C9C(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 16);
  if ((v16 & 7) != 0)
  {
    if (v16)
    {
      v19 = sub_16A1144(*(a1 + 88));
      v10 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v16 & 2) == 0)
      {
LABEL_18:
        if ((v16 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if ((v16 & 2) == 0)
    {
      goto LABEL_18;
    }

    v10 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 4) != 0)
    {
LABEL_19:
      v10 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_20:
  v17 = *(a1 + 8);
  if (v17)
  {
    v20 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v10 += v21;
  }

  *(a1 + 20) = v10;
  return v10;
}

void sub_16A04B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_16BEC90((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = *(a2 + 80);
    v14 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_16BED1C((a1 + 64), v14, (v13 + 8), v12, **(a1 + 80) - *(a1 + 72));
    v15 = *(a1 + 72) + v12;
    *(a1 + 72) = v15;
    v16 = *(a1 + 80);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 16);
  if ((v17 & 7) != 0)
  {
    if (v17)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 88);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        sub_16AA728(v21);
        *(a1 + 88) = v19;
      }

      if (*(a2 + 88))
      {
        v22 = *(a2 + 88);
      }

      else
      {
        v22 = &off_277D0F8;
      }

      sub_16A0698(v19, v22);
      if ((v17 & 2) == 0)
      {
LABEL_12:
        if ((v17 & 4) == 0)
        {
LABEL_14:
          *(a1 + 16) |= v17;
          goto LABEL_15;
        }

LABEL_13:
        *(a1 + 100) = *(a2 + 100);
        goto LABEL_14;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(a1 + 96) = *(a2 + 96);
    if ((v17 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_16A0698(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) != 0)
  {
    if (v4)
    {
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

        data = sub_16BAD9C(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277D440;
      }

      result = sub_1336380(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_31;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

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

      v10 = sub_169B4FC(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277CA88;
    }

    result = sub_168ED34(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }

LABEL_31:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }

LABEL_32:
    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }

LABEL_33:
    v3[2].__r_.__value_.__s.__data_[8] = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
      goto LABEL_10;
    }

LABEL_34:
    HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_16A0800(uint64_t a1)
{
  result = 1;
  if (*(a1 + 16))
  {
    v1 = *(a1 + 88);
    if ((*(v1 + 16) & 1) != 0 && (~*(*(v1 + 24) + 16) & 3) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_16A0874(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_277D0F8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16AB258(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_168F41C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16A0944(uint64_t a1)
{
  sub_16A0874(a1);

  operator delete();
}

char *sub_16A097C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v45, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v45 + 1;
    v8 = *v45;
    if (*v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v45 + 2;
      }
    }

    v45 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_55;
        }

        *(a1 + 16) |= 1u;
        v31 = *(a1 + 24);
        if (!v31)
        {
          v32 = *(a1 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_16BAD9C(v33);
          *(a1 + 24) = v31;
          v7 = v45;
        }

        v18 = sub_2231CA8(a3, v31, v7);
      }

      else
      {
        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_55;
        }

        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_169B4FC(v17);
          *(a1 + 32) = v15;
          v7 = v45;
        }

        v18 = sub_2231A68(a3, v15, v7);
      }

LABEL_62:
      v45 = v18;
      if (!v18)
      {
        goto LABEL_79;
      }

      goto LABEL_63;
    }

    if (v8 != 24)
    {
      goto LABEL_55;
    }

    v5 |= 4u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_36:
      v45 = v23;
      *(a1 + 40) = v22;
      goto LABEL_63;
    }

    v37 = sub_19587DC(v7, v22);
    v45 = v37;
    *(a1 + 40) = v38;
    if (!v37)
    {
      goto LABEL_79;
    }

LABEL_63:
    if (sub_195ADC0(a3, &v45, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 7)
  {
    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_55;
      }

      v5 |= 0x10u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_41:
        v45 = v26;
        *(a1 + 56) = v25 != 0;
        goto LABEL_63;
      }

      v39 = sub_19587DC(v7, v25);
      v45 = v39;
      *(a1 + 56) = v40 != 0;
      if (!v39)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_55;
      }

      v5 |= 8u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_15:
        v45 = v13;
        *(a1 + 48) = v12;
        goto LABEL_63;
      }

      v41 = sub_19587DC(v7, v12);
      v45 = v41;
      *(a1 + 48) = v42;
      if (!v41)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_63;
  }

  if (v11 != 8)
  {
    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_55;
    }

    v5 |= 0x20u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_31:
      v45 = v19;
      *(a1 + 60) = v20;
      goto LABEL_63;
    }

    v43 = sub_1958770(v7, v20);
    v45 = v43;
    *(a1 + 60) = v44;
    if (!v43)
    {
      goto LABEL_79;
    }

    goto LABEL_63;
  }

  if (v8 == 64)
  {
    v29 = v7 + 1;
    v28 = *v7;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    v30 = *v29;
    v28 = (v30 << 7) + v28 - 128;
    if (v30 < 0)
    {
      v45 = sub_19587DC(v7, v28);
      if (!v45)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v29 = v7 + 2;
LABEL_46:
      v45 = v29;
    }

    if ((v28 - 1) > 2)
    {
      sub_12E85F0();
    }

    else
    {
      *(a1 + 16) |= 0x40u;
      *(a1 + 64) = v28;
    }

    goto LABEL_63;
  }

LABEL_55:
  if (v8)
  {
    v34 = (v8 & 7) == 4;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    v35 = *(a1 + 8);
    if (v35)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v7 = v45;
    }

    v18 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_79:
  v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v45;
}

char *sub_16A0D7C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
    *__dst = 24;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
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
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 24);
    *v6 = 34;
    v13 = *(v12 + 20);
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v6 + 1);
    }

    else
    {
      v14 = v6 + 2;
    }

    v6 = sub_16AB468(v12, v14, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_13;
      }

LABEL_27:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v18 = *(a1 + 56);
      *v6 = 48;
      v6[1] = v18;
      v6 += 2;
      if ((v5 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 32);
  *v6 = 42;
  v16 = *(v15 + 20);
  v6[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v6 + 1);
  }

  else
  {
    v17 = v6 + 2;
  }

  v6 = sub_168F868(v15, v17, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((v5 & 8) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_37;
  }

LABEL_30:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v19 = *(a1 + 48);
  *v6 = 56;
  v6[1] = v19;
  if (v19 > 0x7F)
  {
    v6[1] = v19 | 0x80;
    v20 = v19 >> 7;
    v6[2] = v19 >> 7;
    v11 = v6 + 3;
    if (v19 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        v6 = (v20 >> 7);
        *v11++ = v20 >> 7;
        v21 = v20 >> 14;
        v20 >>= 7;
      }

      while (v21);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_37:
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v23 = *(a1 + 64);
    *v11 = 64;
    v11[1] = v23;
    if (v23 > 0x7F)
    {
      v11[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v11[2] = v23 >> 7;
      v22 = v11 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v22 - 1) = v11 | 0x80;
          v11 = (v24 >> 7);
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v11 + 2;
    }
  }

  else
  {
    v22 = v11;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 60);
    *v22 = 32760;
    v22[2] = v27;
    if (v27 > 0x7F)
    {
      v22[2] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[3] = v27 >> 7;
      v26 = v22 + 4;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v22[3];
        do
        {
          *(v26 - 1) = v29 | 0x80;
          v29 = v28 >> 7;
          *v26++ = v28 >> 7;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v26 = v22 + 3;
    }
  }

  else
  {
    v26 = v22;
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v26;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if (*a3 - v26 >= v34)
  {
    v36 = v34;
    memcpy(v26, v35, v34);
    v26 += v36;
    return v26;
  }

  return sub_1957130(a3, v35, v34, v26);
}

uint64_t sub_16A1144(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    result = 0;
    goto LABEL_18;
  }

  if (v2)
  {
    v5 = sub_16AB580(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_168FB0C(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v2 & 8) != 0)
  {
LABEL_10:
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_11:
  result = v3 + ((v2 >> 3) & 2);
  if ((v2 & 0x20) != 0)
  {
    result += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v2 & 0x40) != 0)
  {
    v7 = *(a1 + 64);
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 11;
    }

    result += v9;
  }

LABEL_18:
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_16A12D8(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277D140)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_168F41C(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_168F41C(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16A13C4(uint64_t a1)
{
  sub_16A12D8(a1);

  operator delete();
}

uint64_t sub_16A13FC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = sub_168D110(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_168D110(*(v1 + 40));
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_16A14B8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v34, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v34 + 1);
    v8 = **v34;
    if (**v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v34 + 2);
      }
    }

    *v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 2u;
        v18 = *(a1 + 32);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_169B4FC(v20);
          *(a1 + 32) = v18;
          goto LABEL_33;
        }
      }

      else
      {
        if (v11 != 6)
        {
          if (v11 != 2047 || v8 != 248)
          {
            goto LABEL_39;
          }

          v5 |= 0x10u;
          v12 = (v7 + 1);
          v13 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          v14 = *v12;
          v13 = v13 + (v14 << 7) - 128;
          if ((v14 & 0x80000000) == 0)
          {
            v12 = (v7 + 2);
LABEL_15:
            *v34 = v12;
            *(a1 + 56) = v13;
            goto LABEL_47;
          }

          v30 = sub_1958770(v7, v13);
          *v34 = v30;
          *(a1 + 56) = v31;
          if (!v30)
          {
            goto LABEL_56;
          }

          goto LABEL_47;
        }

        if (v8 != 50)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v18 = *(a1 + 40);
        if (!v18)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v18 = sub_169B4FC(v22);
          *(a1 + 40) = v18;
LABEL_33:
          v7 = *v34;
        }
      }

      v23 = sub_2231A68(a3, v18, v7);
      goto LABEL_46;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_39;
    }

    v5 |= 8u;
    v16 = (v7 + 1);
    v15 = *v7;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    v17 = *v16;
    v15 = (v17 << 7) + v15 - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = (v7 + 2);
LABEL_22:
      *v34 = v16;
      *(a1 + 48) = v15;
      goto LABEL_47;
    }

    v32 = sub_19587DC(v7, v15);
    *v34 = v32;
    *(a1 + 48) = v33;
    if (!v32)
    {
      goto LABEL_56;
    }

LABEL_47:
    if (sub_195ADC0(a3, v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 1u;
    v24 = *(a1 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v26 = sub_194DB04((a1 + 24), v25);
    v23 = sub_1958890(v26, *v34, a3);
LABEL_46:
    *v34 = v23;
    if (!v23)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

LABEL_39:
  if (v8)
  {
    v27 = (v8 & 7) == 4;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v29 = sub_11F1920((a1 + 8));
      v7 = *v34;
    }

    v23 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_56:
  *v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v34;
}

char *sub_16A1798(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 3, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 48);
    *v4 = 32;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = v4[2];
        do
        {
          *(v7 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v7++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v7 = v4 + 2;
    }
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 40);
    *v7 = 50;
    v17 = *(v16 + 20);
    v7[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v7 + 1);
    }

    else
    {
      v18 = v7 + 2;
    }

    v7 = sub_168F868(v16, v18, a3);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v13 = *(a1 + 32);
  *v7 = 42;
  v14 = *(v13 + 20);
  v7[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v7 + 1);
  }

  else
  {
    v15 = v7 + 2;
  }

  v7 = sub_168F868(v13, v15, a3);
  if ((v6 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((v6 & 0x10) == 0)
  {
LABEL_15:
    v12 = v7;
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v19 = *(a1 + 56);
  *v7 = 32760;
  v7[2] = v19;
  if (v19 > 0x7F)
  {
    v7[2] = v19 | 0x80;
    v20 = v19 >> 7;
    v7[3] = v19 >> 7;
    v12 = v7 + 4;
    if (v19 >= 0x4000)
    {
      LOBYTE(v7) = v7[3];
      do
      {
        *(v12 - 1) = v7 | 0x80;
        LODWORD(v7) = v20 >> 7;
        *v12++ = v20 >> 7;
        v21 = v20 >> 14;
        v20 >>= 7;
      }

      while (v21);
    }
  }

  else
  {
    v12 = v7 + 3;
  }

LABEL_35:
  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v12;
  }

  v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
  v25 = *(v24 + 31);
  if (v25 < 0)
  {
    v26 = *(v24 + 8);
    v25 = *(v24 + 16);
  }

  else
  {
    v26 = (v24 + 8);
  }

  if (*a3 - v12 >= v25)
  {
    v27 = v25;
    memcpy(v12, v26, v25);
    v12 += v27;
    return v12;
  }

  return sub_1957130(a3, v26, v25, v12);
}

uint64_t sub_16A1A3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_168FB0C(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v10 = sub_168FB0C(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_13:
    v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_14:
  v8 = *(a1 + 8);
  if (v8)
  {
    v11 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_16A1BA8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      v5 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v7 = *v7;
      }

      result = sub_194EA1C(&result[1], (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v9 = v3[1].__r_.__value_.__l.__size_;
      if (!v9)
      {
        v10 = v3->__r_.__value_.__l.__size_;
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_169B4FC(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277CA88;
      }

      result = sub_168ED34(v9, v12);
      if ((v4 & 4) == 0)
      {
LABEL_8:
        if ((v4 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_32;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v13 = v3[1].__r_.__value_.__r.__words[2];
    if (!v13)
    {
      v14 = v3->__r_.__value_.__l.__size_;
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_169B4FC(v15);
      v3[1].__r_.__value_.__r.__words[2] = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_277CA88;
    }

    result = sub_168ED34(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
      goto LABEL_11;
    }

LABEL_32:
    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v8 = *(a2 + 8);
  if (v8)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_16A1D24(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277D180)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_168F41C(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_168F41C(v7);
      operator delete();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      sub_168F41C(v8);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16A1E24(uint64_t a1)
{
  sub_16A1D24(a1);

  operator delete();
}

uint64_t sub_16A1E5C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    result = sub_168D110(*(result + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_18:
  result = sub_168D110(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_168D110(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 56) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_16A1F28(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v37, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v37 + 1);
    v8 = **v37;
    if (**v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v37 + 2);
      }
    }

    *v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v13 = sub_169B4FC(v25);
          *(a1 + 32) = v13;
          goto LABEL_42;
        }
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 4u;
        v13 = *(a1 + 40);
        if (!v13)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_169B4FC(v15);
          *(a1 + 40) = v13;
LABEL_42:
          v7 = *v37;
        }
      }

LABEL_43:
      v26 = sub_2231A68(a3, v13, v7);
      goto LABEL_55;
    }

    if (v8 != 8)
    {
      goto LABEL_48;
    }

    v5 |= 0x10u;
    v20 = (v7 + 1);
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = (v7 + 2);
LABEL_31:
      *v37 = v20;
      *(a1 + 56) = v19;
      goto LABEL_56;
    }

    v33 = sub_19587DC(v7, v19);
    *v37 = v33;
    *(a1 + 56) = v34;
    if (!v33)
    {
      goto LABEL_65;
    }

LABEL_56:
    if (sub_195ADC0(a3, v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_48;
    }

    *(a1 + 16) |= 8u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v13 = sub_169B4FC(v23);
      *(a1 + 48) = v13;
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if (v11 != 5)
  {
    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_48;
    }

    v5 |= 0x20u;
    v16 = (v7 + 1);
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = (v7 + 2);
LABEL_26:
      *v37 = v16;
      *(a1 + 64) = v17;
      goto LABEL_56;
    }

    v35 = sub_1958770(v7, v17);
    *v37 = v35;
    *(a1 + 64) = v36;
    if (!v35)
    {
      goto LABEL_65;
    }

    goto LABEL_56;
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v29 = sub_194DB04((a1 + 24), v28);
    v26 = sub_1958890(v29, *v37, a3);
LABEL_55:
    *v37 = v26;
    if (!v26)
    {
      goto LABEL_65;
    }

    goto LABEL_56;
  }

LABEL_48:
  if (v8)
  {
    v30 = (v8 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v7 = *v37;
    }

    v26 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_65:
  *v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v37;
}

char *sub_16A2250(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
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
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 32);
    *v6 = 18;
    v13 = *(v12 + 20);
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v6 + 1);
    }

    else
    {
      v14 = v6 + 2;
    }

    v6 = sub_168F868(v12, v14, a3);
    if ((v5 & 4) == 0)
    {
LABEL_12:
      if ((v5 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 40);
  *v6 = 26;
  v16 = *(v15 + 20);
  v6[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v6 + 1);
  }

  else
  {
    v17 = v6 + 2;
  }

  v6 = sub_168F868(v15, v17, a3);
  if ((v5 & 8) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_34:
    v6 = sub_128AEEC(a3, 5, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 48);
  *v6 = 34;
  v19 = *(v18 + 20);
  v6[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v6 + 1);
  }

  else
  {
    v20 = v6 + 2;
  }

  v6 = sub_168F868(v18, v20, a3);
  if (v5)
  {
    goto LABEL_34;
  }

LABEL_14:
  if ((v5 & 0x20) == 0)
  {
LABEL_15:
    v11 = v6;
    goto LABEL_42;
  }

LABEL_35:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v21 = *(a1 + 64);
  *v6 = 32760;
  v6[2] = v21;
  if (v21 > 0x7F)
  {
    v6[2] = v21 | 0x80;
    v22 = v21 >> 7;
    v6[3] = v21 >> 7;
    v11 = v6 + 4;
    if (v21 >= 0x4000)
    {
      LOBYTE(v23) = v6[3];
      do
      {
        *(v11 - 1) = v23 | 0x80;
        v23 = v22 >> 7;
        *v11++ = v22 >> 7;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
    }
  }

  else
  {
    v11 = v6 + 3;
  }

LABEL_42:
  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v11;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  if (*a3 - v11 >= v28)
  {
    v30 = v28;
    memcpy(v11, v29, v28);
    v11 += v30;
    return v11;
  }

  return sub_1957130(a3, v29, v28, v11);
}

uint64_t sub_16A2558(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_168FB0C(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v10 = sub_168FB0C(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v11 = sub_168FB0C(*(a1 + 48));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_19:
  v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_14:
    v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_15:
  v8 = *(a1 + 8);
  if (v8)
  {
    v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_16A26F8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      v5 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v7 = *v7;
      }

      result = sub_194EA1C(&result[1], (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v9 = v3[1].__r_.__value_.__l.__size_;
      if (!v9)
      {
        v10 = v3->__r_.__value_.__l.__size_;
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_169B4FC(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277CA88;
      }

      result = sub_168ED34(v9, v12);
      if ((v4 & 4) == 0)
      {
LABEL_8:
        if ((v4 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_33;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v13 = v3[1].__r_.__value_.__r.__words[2];
    if (!v13)
    {
      v14 = v3->__r_.__value_.__l.__size_;
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_169B4FC(v15);
      v3[1].__r_.__value_.__r.__words[2] = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_277CA88;
    }

    result = sub_168ED34(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_41;
    }

LABEL_33:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    data = v3[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      v18 = v3->__r_.__value_.__l.__size_;
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      data = sub_169B4FC(v19);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_277CA88;
    }

    result = sub_168ED34(data, v20);
    if ((v4 & 0x10) == 0)
    {
LABEL_10:
      if ((v4 & 0x20) == 0)
      {
LABEL_12:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_13;
      }

LABEL_11:
      LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
      goto LABEL_12;
    }

LABEL_41:
    v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v8 = *(a2 + 8);
  if (v8)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16A28BC(void *a1)
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

void sub_16A2930(void *a1)
{
  sub_16A28BC(a1);

  operator delete();
}

uint64_t sub_16A2968(uint64_t a1)
{
  if ((*(a1 + 16) & 0x3F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 37) = 0;
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

char *sub_16A2990(uint64_t a1, char *a2, int32x2_t *a3)
{
  v46 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v46, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v46 + 1;
    v8 = *v46;
    if (*v46 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v46, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v46 + 2;
      }
    }

    v46 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_47;
      }

      v5 |= 8u;
      v22 = v7 + 1;
      v23 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v24 = *v22;
      v23 = v23 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_36:
        v46 = v22;
        *(a1 + 36) = v23;
        goto LABEL_54;
      }

      v36 = sub_1958770(v7, v23);
      v46 = v36;
      *(a1 + 36) = v37;
      if (!v36)
      {
        goto LABEL_71;
      }
    }

    else if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_47;
      }

      v5 |= 0x10u;
      v28 = v7 + 1;
      v29 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v30 = *v28;
      v29 = v29 + (v30 << 7) - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_46:
        v46 = v28;
        *(a1 + 40) = v29;
        goto LABEL_54;
      }

      v44 = sub_1958770(v7, v29);
      v46 = v44;
      *(a1 + 40) = v45;
      if (!v44)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_47;
      }

      v5 |= 0x20u;
      v17 = v7 + 1;
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_26:
        v46 = v17;
        *(a1 + 44) = v16 != 0;
        goto LABEL_54;
      }

      v38 = sub_19587DC(v7, v16);
      v46 = v38;
      *(a1 + 44) = v39 != 0;
      if (!v38)
      {
        goto LABEL_71;
      }
    }

LABEL_54:
    if (sub_195ADC0(a3, &v46, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_47;
    }

    v5 |= 1u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_31:
      v46 = v19;
      *(a1 + 24) = v20;
      goto LABEL_54;
    }

    v34 = sub_1958770(v7, v20);
    v46 = v34;
    *(a1 + 24) = v35;
    if (!v34)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_47;
    }

    v5 |= 2u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_41:
      v46 = v25;
      *(a1 + 28) = v26;
      goto LABEL_54;
    }

    v42 = sub_1958770(v7, v26);
    v46 = v42;
    *(a1 + 28) = v43;
    if (!v42)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v11 == 3 && v8 == 24)
  {
    v5 |= 4u;
    v13 = v7 + 1;
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_18:
      v46 = v13;
      *(a1 + 32) = v14;
      goto LABEL_54;
    }

    v40 = sub_1958770(v7, v14);
    v46 = v40;
    *(a1 + 32) = v41;
    if (!v40)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

LABEL_47:
  if (v8)
  {
    v31 = (v8 & 7) == 4;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v7 = v46;
    }

    v46 = sub_1952690(v8, v33, v7, a3);
    if (!v46)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  v46 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v46;
}

char *sub_16A2D1C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
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
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 36);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 40);
    *v19 = 40;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          LODWORD(v19) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v28 = *(a1 + 44);
    *v24 = 48;
    v24[1] = v28;
    v24 += 2;
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v24;
  }

  v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = *(v31 + 31);
  if (v32 < 0)
  {
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
  }

  else
  {
    v33 = (v31 + 8);
  }

  if (*a3 - v24 >= v32)
  {
    v34 = v32;
    memcpy(v24, v33, v32);
    v24 += v34;
    return v24;
  }

  return sub_1957130(a3, v33, v32, v24);
}

uint64_t sub_16A3098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v1 & 0x10) != 0)
  {
LABEL_11:
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v3 = v2 + ((v1 >> 4) & 2);
LABEL_13:
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    v3 += v7;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_16A31C4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_10;
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

      goto LABEL_14;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result[1].__r_.__value_.__s.__data_[20] = *(a2 + 44);
  }

LABEL_9:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_10:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16A3270(void *a1)
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

void sub_16A32E4(void *a1)
{
  sub_16A3270(a1);

  operator delete();
}

uint64_t sub_16A331C(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1F) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
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

char *sub_16A3344(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v41 + 1;
    v8 = *v41;
    if (*v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v41 + 2;
      }
    }

    v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_41;
      }

      v5 |= 4u;
      v19 = v7 + 1;
      v20 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v21 = *v19;
      v20 = v20 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_30:
        v41 = v19;
        *(a1 + 32) = v20;
        goto LABEL_48;
      }

      v31 = sub_1958770(v7, v20);
      v41 = v31;
      *(a1 + 32) = v32;
      if (!v31)
      {
        goto LABEL_63;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_41;
      }

      v5 |= 8u;
      v22 = v7 + 1;
      v23 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v22;
      v23 = v23 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_35:
        v41 = v22;
        *(a1 + 36) = v23;
        goto LABEL_48;
      }

      v33 = sub_1958770(v7, v23);
      v41 = v33;
      *(a1 + 36) = v34;
      if (!v33)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_41;
      }

      v5 |= 0x10u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_15:
        v41 = v13;
        *(a1 + 40) = v12 != 0;
        goto LABEL_48;
      }

      v37 = sub_19587DC(v7, v12);
      v41 = v37;
      *(a1 + 40) = v38 != 0;
      if (!v37)
      {
        goto LABEL_63;
      }
    }

LABEL_48:
    if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_41;
    }

    v5 |= 1u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_40:
      v41 = v25;
      *(a1 + 24) = v26;
      goto LABEL_48;
    }

    v35 = sub_1958770(v7, v26);
    v41 = v35;
    *(a1 + 24) = v36;
    if (!v35)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_25:
      v41 = v16;
      *(a1 + 28) = v17;
      goto LABEL_48;
    }

    v39 = sub_1958770(v7, v17);
    v41 = v39;
    *(a1 + 28) = v40;
    if (!v39)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

LABEL_41:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = v41;
    }

    v41 = sub_1952690(v8, v30, v7, a3);
    if (!v41)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_16A366C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
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
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 36);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v24 = *(a1 + 40);
    *v19 = 40;
    v19[1] = v24;
    v19 += 2;
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v19;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  if (*a3 - v19 >= v28)
  {
    v30 = v28;
    memcpy(v19, v29, v28);
    v19 += v30;
    return v19;
  }

  return sub_1957130(a3, v29, v28, v19);
}

uint64_t sub_16A3960(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v1 & 8) != 0)
  {
LABEL_10:
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  v3 = v2 + ((v1 >> 3) & 2);
LABEL_12:
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    v3 += v7;
  }

  *(a1 + 20) = v3;
  return v3;
}