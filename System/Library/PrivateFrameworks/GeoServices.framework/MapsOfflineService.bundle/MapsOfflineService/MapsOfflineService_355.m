uint64_t sub_14973E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_1496BC8(*(a1 + 24));
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
    v5 = sub_1496BC8(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

std::string *sub_14974E0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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

        data = sub_14BDABC(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2772F58;
      }

      result = sub_1496C7C(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
        goto LABEL_6;
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

      v10 = sub_14BDABC(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2772F58;
    }

    result = sub_1496C7C(v10, v13);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1497618(uint64_t a1)
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
  if (a1 != &off_2772FB0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14976D0(uint64_t a1)
{
  sub_1497618(a1);

  operator delete();
}

uint64_t sub_1497708(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_144E5CC(*(result + 24));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
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

char *sub_1497770(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v27, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v27 + 1;
    v7 = *v27;
    if (*v27 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v27, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v27 + 2;
      }
    }

    v27 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 24)
      {
        v20 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v27 = sub_19587DC(v6, v19);
          if (!v27)
          {
            return 0;
          }
        }

        else
        {
          v20 = v6 + 2;
LABEL_31:
          v27 = v20;
        }

        if (v19 > 2)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 36) = v19;
        }

        continue;
      }

      goto LABEL_13;
    }

    if (v10 == 2)
    {
      if (v7 == 16)
      {
        v17 = v6 + 1;
        v16 = *v6;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          v27 = sub_19587DC(v6, v16);
          if (!v27)
          {
            return 0;
          }
        }

        else
        {
          v17 = v6 + 2;
LABEL_24:
          v27 = v17;
        }

        if (v16 > 2)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v16;
        }

        continue;
      }

LABEL_13:
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
          return v27;
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
        v6 = v27;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_39;
    }

    if (v10 != 1 || v7 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 24);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      sub_14BAE64(v24);
      v22 = v25;
      *(a1 + 24) = v25;
      v6 = v27;
    }

    v15 = sub_22095B8(a3, v22, v6);
LABEL_39:
    v27 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v27;
}

char *sub_14979B8(uint64_t a1, char *__dst, unint64_t *a3)
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

    __dst = sub_14589F4(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 36);
    *v9 = 24;
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
          v9 = (v16 >> 7);
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

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v14;
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

  if ((*a3 - v14) >= v21)
  {
    v23 = v21;
    memcpy(v14, v22, v21);
    v14 += v23;
    return v14;
  }

  return sub_1957130(a3, v22, v21, v14);
}

uint64_t sub_1497BCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_1458DB4(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 36);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

LABEL_16:
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

uint64_t sub_1497CC8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

double sub_1497D08(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26E6440;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = &qword_278E990;
  *(a1 + 176) = &qword_278E990;
  *(a1 + 184) = &qword_278E990;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 292) = 20;
  *(a1 + 296) = 257;
  *(a1 + 298) = 1;
  return result;
}

uint64_t sub_1497D98(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E6440;
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
    sub_1201B48(a1 + 24, v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48(a1 + 48, v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1201B48(a1 + 72, v17, (v16 + 8), v15, **(a1 + 88) - *(a1 + 80));
    v18 = *(a1 + 80) + v15;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_144A454((a1 + 96), v22, (v21 + 8), v20, **(a1 + 112) - *(a1 + 104));
    v23 = *(a1 + 104) + v20;
    *(a1 + 104) = v23;
    v24 = *(a1 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v25 = *(a2 + 128);
  if (v25)
  {
    v26 = *(a2 + 136);
    v27 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_144A454((a1 + 120), v27, (v26 + 8), v25, **(a1 + 136) - *(a1 + 128));
    v28 = *(a1 + 128) + v25;
    *(a1 + 128) = v28;
    v29 = *(a1 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v30 = *(a2 + 152);
  if (v30)
  {
    v31 = *(a2 + 160);
    v32 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1567220((a1 + 144), v32, (v31 + 8), v30, **(a1 + 160) - *(a1 + 152));
    v33 = *(a1 + 152) + v30;
    *(a1 + 152) = v33;
    v34 = *(a1 + 160);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 8);
  if (v35)
  {
    sub_1957EF4(v4, (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 168) = &qword_278E990;
  v36 = *(a2 + 16);
  if (v36)
  {
    v37 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v37 = *v37;
    }

    sub_194EA1C((a1 + 168), (*(a2 + 168) & 0xFFFFFFFFFFFFFFFELL), v37);
    v36 = *(a2 + 16);
  }

  *(a1 + 176) = &qword_278E990;
  if ((v36 & 2) != 0)
  {
    v38 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v38 = *v38;
    }

    sub_194EA1C((a1 + 176), (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v38);
    v36 = *(a2 + 16);
  }

  *(a1 + 184) = &qword_278E990;
  if ((v36 & 4) != 0)
  {
    v39 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v39 = *v39;
    }

    sub_194EA1C((a1 + 184), (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL), v39);
    v36 = *(a2 + 16);
  }

  if ((v36 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 192) = 0;
  if ((v36 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 200) = 0;
  if ((v36 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 208) = 0;
  if ((v36 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 216) = 0;
  if ((v36 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 224) = 0;
  if ((v36 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 232) = 0;
  v40 = *(a2 + 240);
  v41 = *(a2 + 256);
  v42 = *(a2 + 272);
  *(a1 + 283) = *(a2 + 283);
  *(a1 + 256) = v41;
  *(a1 + 272) = v42;
  *(a1 + 240) = v40;
  return a1;
}

void *sub_1498398(void *a1)
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

  sub_1498458(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_156540C(a1 + 18);
  sub_144A1C8(a1 + 15);
  sub_144A1C8(a1 + 12);
  sub_1956AFC(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1498458(uint64_t a1)
{
  v3 = *(a1 + 168);
  v2 = (a1 + 168);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C((a1 + 176));
  }

  result = (a1 + 184);
  if (*(a1 + 184) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2772FD8)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 200);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = *(a1 + 208);
    if (v7)
    {
      sub_1496E48(v7);
      operator delete();
    }

    v8 = *(a1 + 216);
    if (v8)
    {
      sub_1496E48(v8);
      operator delete();
    }

    v9 = *(a1 + 224);
    if (v9)
    {
      sub_14B64B0(v9);
      operator delete();
    }

    result = *(a1 + 232);
    if (result)
    {
      sub_1495DD0(result);

      operator delete();
    }
  }

  return result;
}

void sub_1498594(void *a1)
{
  sub_1498398(a1);

  operator delete();
}

uint64_t sub_14985CC(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  sub_12A41D0(a1 + 48);
  result = sub_12A41D0(a1 + 72);
  v3 = *(a1 + 104);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 112) + 8);
    do
    {
      v5 = *v4++;
      result = sub_144E5CC(v5);
      --v3;
    }

    while (v3);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 128);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 136) + 8);
    do
    {
      v8 = *v7++;
      result = sub_144E5CC(v8);
      --v6;
    }

    while (v6);
    *(a1 + 128) = 0;
  }

  v9 = *(a1 + 152);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 160) + 8);
    do
    {
      v11 = *v10++;
      result = sub_1497708(v11);
      --v9;
    }

    while (v9);
    *(a1 + 152) = 0;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_23;
  }

  if (v12)
  {
    v15 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v15 + 23) < 0)
    {
      **v15 = 0;
      *(v15 + 8) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v15 = 0;
      *(v15 + 23) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_16:
    if ((v12 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_43:
    v17 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v17 + 23) < 0)
    {
      **v17 = 0;
      *(v17 + 8) = 0;
      if ((v12 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *v17 = 0;
      *(v17 + 23) = 0;
      if ((v12 & 8) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_18:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_39:
  v16 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v16 + 23) < 0)
  {
    **v16 = 0;
    *(v16 + 8) = 0;
    if ((v12 & 4) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *v16 = 0;
    *(v16 + 23) = 0;
    if ((v12 & 4) != 0)
    {
      goto LABEL_43;
    }
  }

LABEL_17:
  if ((v12 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_47:
  result = sub_144E5CC(*(a1 + 192));
  if ((v12 & 0x10) == 0)
  {
LABEL_19:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_49:
    result = sub_1496F50(*(a1 + 208));
    if ((v12 & 0x40) == 0)
    {
LABEL_21:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_48:
  result = sub_144E5CC(*(a1 + 200));
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_20:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_50:
  result = sub_1496F50(*(a1 + 216));
  if ((v12 & 0x80) != 0)
  {
LABEL_22:
    result = sub_144E6A8(*(a1 + 224));
  }

LABEL_23:
  if ((v12 & 0x100) != 0)
  {
    result = sub_1495ECC(*(a1 + 232));
  }

  if ((v12 & 0xFE00) != 0)
  {
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 264) = 0;
    *(a1 + 256) = 0;
  }

  if ((v12 & 0xFF0000) != 0)
  {
    *(a1 + 276) = 0;
    *(a1 + 268) = 0;
    *(a1 + 282) = 0;
    *(a1 + 292) = 20;
  }

  if ((v12 & 0x7000000) != 0)
  {
    *(a1 + 296) = 257;
    *(a1 + 298) = 1;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_1498808(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v166 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v166, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v166 + 1);
    v8 = **v166;
    if (**v166 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v166, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v166 + 2);
      }
    }

    *v166 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_215;
        }

        v11 = (v7 - 1);
        while (1)
        {
          v12 = (v11 + 1);
          *v166 = v11 + 1;
          v13 = *(a1 + 40);
          if (v13 && (v14 = *(a1 + 32), v14 < *v13))
          {
            *(a1 + 32) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = *(a1 + 24);
            if (!v16)
            {
              operator new();
            }

            *v18 = v17;
            v18[1] = sub_195A650;
            *v17 = 0;
            v17[1] = 0;
            v17[2] = 0;
            v15 = sub_19593CC(a1 + 24, v17);
            v12 = *v166;
          }

          v11 = sub_1958890(v15, v12, a3);
          *v166 = v11;
          if (!v11)
          {
            goto LABEL_269;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_223;
          }
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_215;
        }

        v71 = (v7 - 1);
        while (1)
        {
          v72 = (v71 + 1);
          *v166 = v71 + 1;
          v73 = *(a1 + 64);
          if (v73 && (v74 = *(a1 + 56), v74 < *v73))
          {
            *(a1 + 56) = v74 + 1;
            v75 = *&v73[2 * v74 + 2];
          }

          else
          {
            v76 = *(a1 + 48);
            if (!v76)
            {
              operator new();
            }

            *v78 = v77;
            v78[1] = sub_195A650;
            *v77 = 0;
            v77[1] = 0;
            v77[2] = 0;
            v75 = sub_19593CC(a1 + 48, v77);
            v72 = *v166;
          }

          v71 = sub_1958890(v75, v72, a3);
          *v166 = v71;
          if (!v71)
          {
            goto LABEL_269;
          }

          if (*a3 <= v71 || *v71 != 18)
          {
            goto LABEL_223;
          }
        }

      case 3u:
        if (v8 != 26)
        {
          goto LABEL_215;
        }

        v52 = (v7 - 1);
        while (1)
        {
          v53 = (v52 + 1);
          *v166 = v52 + 1;
          v54 = *(a1 + 88);
          if (v54 && (v55 = *(a1 + 80), v55 < *v54))
          {
            *(a1 + 80) = v55 + 1;
            v56 = *&v54[2 * v55 + 2];
          }

          else
          {
            v57 = *(a1 + 72);
            if (!v57)
            {
              operator new();
            }

            *v59 = v58;
            v59[1] = sub_195A650;
            *v58 = 0;
            v58[1] = 0;
            v58[2] = 0;
            v56 = sub_19593CC(a1 + 72, v58);
            v53 = *v166;
          }

          v52 = sub_1958890(v56, v53, a3);
          *v166 = v52;
          if (!v52)
          {
            goto LABEL_269;
          }

          if (*a3 <= v52 || *v52 != 26)
          {
            goto LABEL_223;
          }
        }

      case 4u:
        if (v8 != 34)
        {
          goto LABEL_215;
        }

        v62 = v7 - 1;
        while (1)
        {
          v63 = v62 + 1;
          *v166 = v62 + 1;
          v64 = *(a1 + 112);
          if (v64 && (v65 = *(a1 + 104), v65 < *v64))
          {
            *(a1 + 104) = v65 + 1;
            v66 = *&v64[2 * v65 + 2];
          }

          else
          {
            sub_14BAE64(*(a1 + 96));
            v66 = sub_19593CC(a1 + 96, v67);
            v63 = *v166;
          }

          v62 = sub_22095B8(a3, v66, v63);
          *v166 = v62;
          if (!v62)
          {
            goto LABEL_269;
          }

          if (*a3 <= v62 || *v62 != 34)
          {
            goto LABEL_223;
          }
        }

      case 5u:
        if (v8 != 42)
        {
          goto LABEL_215;
        }

        v34 = v7 - 1;
        while (1)
        {
          v35 = v34 + 1;
          *v166 = v34 + 1;
          v36 = *(a1 + 136);
          if (v36 && (v37 = *(a1 + 128), v37 < *v36))
          {
            *(a1 + 128) = v37 + 1;
            v38 = *&v36[2 * v37 + 2];
          }

          else
          {
            sub_14BAE64(*(a1 + 120));
            v38 = sub_19593CC(a1 + 120, v39);
            v35 = *v166;
          }

          v34 = sub_22095B8(a3, v38, v35);
          *v166 = v34;
          if (!v34)
          {
            goto LABEL_269;
          }

          if (*a3 <= v34 || *v34 != 42)
          {
            goto LABEL_223;
          }
        }

      case 6u:
        if (v8 != 50)
        {
          goto LABEL_215;
        }

        *(a1 + 16) |= 8u;
        v89 = *(a1 + 192);
        if (v89)
        {
          goto LABEL_191;
        }

        v90 = *(a1 + 8);
        v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
        if (v90)
        {
          v91 = *v91;
        }

        sub_14BAE64(v91);
        v89 = v92;
        *(a1 + 192) = v92;
        goto LABEL_190;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_215;
        }

        v5 |= 0x200u;
        v99 = (v7 + 1);
        v100 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_153;
        }

        v101 = *v99;
        v100 = v100 + (v101 << 7) - 128;
        if (v101 < 0)
        {
          v154 = sub_1958770(v7, v100);
          *v166 = v154;
          *(a1 + 240) = v155;
          if (!v154)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v99 = (v7 + 2);
LABEL_153:
          *v166 = v99;
          *(a1 + 240) = v100;
        }

        goto LABEL_223;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_215;
        }

        v5 |= 0x400u;
        v68 = (v7 + 1);
        v69 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_106;
        }

        v70 = *v68;
        v69 = v69 + (v70 << 7) - 128;
        if (v70 < 0)
        {
          v146 = sub_1958770(v7, v69);
          *v166 = v146;
          *(a1 + 244) = v147;
          if (!v146)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v68 = (v7 + 2);
LABEL_106:
          *v166 = v68;
          *(a1 + 244) = v69;
        }

        goto LABEL_223;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_215;
        }

        v5 |= 0x800u;
        v108 = (v7 + 1);
        v109 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        v110 = *v108;
        v109 = v109 + (v110 << 7) - 128;
        if (v110 < 0)
        {
          v158 = sub_1958770(v7, v109);
          *v166 = v158;
          *(a1 + 248) = v159;
          if (!v158)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v108 = (v7 + 2);
LABEL_170:
          *v166 = v108;
          *(a1 + 248) = v109;
        }

        goto LABEL_223;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_215;
        }

        v5 |= 0x1000u;
        v43 = (v7 + 1);
        v44 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_66;
        }

        v45 = *v43;
        v44 = v44 + (v45 << 7) - 128;
        if (v45 < 0)
        {
          v140 = sub_1958770(v7, v44);
          *v166 = v140;
          *(a1 + 252) = v141;
          if (!v140)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v43 = (v7 + 2);
LABEL_66:
          *v166 = v43;
          *(a1 + 252) = v44;
        }

        goto LABEL_223;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_215;
        }

        v106 = (v7 + 1);
        v105 = *v7;
        if ((v105 & 0x8000000000000000) == 0)
        {
          goto LABEL_163;
        }

        v107 = *v106;
        v105 = (v107 << 7) + v105 - 128;
        if (v107 < 0)
        {
          *v166 = sub_19587DC(v7, v105);
          if (!*v166)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v106 = (v7 + 2);
LABEL_163:
          *v166 = v106;
        }

        if (v105 > 3)
        {
          sub_156E7E0();
        }

        else
        {
          *(a1 + 16) |= 0x2000u;
          *(a1 + 256) = v105;
        }

        goto LABEL_223;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_215;
        }

        v5 |= 0x1000000u;
        v32 = (v7 + 1);
        v31 = *v7;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if (v33 < 0)
        {
          v138 = sub_19587DC(v7, v31);
          *v166 = v138;
          *(a1 + 296) = v139 != 0;
          if (!v138)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v32 = (v7 + 2);
LABEL_44:
          *v166 = v32;
          *(a1 + 296) = v31 != 0;
        }

        goto LABEL_223;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_215;
        }

        v41 = (v7 + 1);
        v40 = *v7;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v42 = *v41;
        v40 = (v42 << 7) + v40 - 128;
        if (v42 < 0)
        {
          *v166 = sub_19587DC(v7, v40);
          if (!*v166)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v41 = (v7 + 2);
LABEL_59:
          *v166 = v41;
        }

        if (v40 > 8)
        {
          sub_144E0C4();
        }

        else
        {
          *(a1 + 16) |= 0x4000u;
          *(a1 + 260) = v40;
        }

        goto LABEL_223;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_215;
        }

        v5 |= 0x8000u;
        v96 = (v7 + 1);
        v97 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_148;
        }

        v98 = *v96;
        v97 = v97 + (v98 << 7) - 128;
        if (v98 < 0)
        {
          v152 = sub_1958770(v7, v97);
          *v166 = v152;
          *(a1 + 264) = v153;
          if (!v152)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v96 = (v7 + 2);
LABEL_148:
          *v166 = v96;
          *(a1 + 264) = v97;
        }

        goto LABEL_223;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_215;
        }

        v25 = (v7 - 1);
        while (1)
        {
          v26 = (v25 + 1);
          *v166 = v25 + 1;
          v27 = *(a1 + 160);
          if (v27 && (v28 = *(a1 + 152), v28 < *v27))
          {
            *(a1 + 152) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            v30 = sub_14BDBB8(*(a1 + 144));
            v29 = sub_19593CC(a1 + 144, v30);
            v26 = *v166;
          }

          v25 = sub_2211120(a3, v29, v26);
          *v166 = v25;
          if (!v25)
          {
            goto LABEL_269;
          }

          if (*a3 <= v25 || *v25 != 122)
          {
            goto LABEL_223;
          }
        }

      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_215;
        }

        v5 |= 0x10000u;
        LODWORD(v60) = *v7;
        if ((v60 & 0x80000000) == 0)
        {
          v61 = v7 + 1;
LABEL_227:
          *v166 = v61;
          *(a1 + 268) = v60;
          goto LABEL_223;
        }

        v60 = (v7[1] << 7) + v60 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v61 = v7 + 2;
          goto LABEL_227;
        }

        v144 = sub_19587DC(v7, v60);
        *v166 = v144;
        *(a1 + 268) = v145;
        if (!v144)
        {
          goto LABEL_269;
        }

        goto LABEL_223;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_215;
        }

        v5 |= 0x800000u;
        v22 = (v7 + 1);
        v23 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v24 = *v22;
        v23 = v23 + (v24 << 7) - 128;
        if (v24 < 0)
        {
          v136 = sub_1958770(v7, v23);
          *v166 = v136;
          *(a1 + 292) = v137;
          if (!v136)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v22 = (v7 + 2);
LABEL_29:
          *v166 = v22;
          *(a1 + 292) = v23;
        }

        goto LABEL_223;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_215;
        }

        v5 |= 0x4000000u;
        v84 = (v7 + 1);
        v83 = *v7;
        if ((v83 & 0x8000000000000000) == 0)
        {
          goto LABEL_129;
        }

        v85 = *v84;
        v83 = (v85 << 7) + v83 - 128;
        if (v85 < 0)
        {
          v148 = sub_19587DC(v7, v83);
          *v166 = v148;
          *(a1 + 298) = v149 != 0;
          if (!v148)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v84 = (v7 + 2);
LABEL_129:
          *v166 = v84;
          *(a1 + 298) = v83 != 0;
        }

        goto LABEL_223;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_215;
        }

        v5 |= 0x20000u;
        v102 = (v7 + 1);
        v103 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_158;
        }

        v104 = *v102;
        v103 = v103 + (v104 << 7) - 128;
        if (v104 < 0)
        {
          v156 = sub_1958770(v7, v103);
          *v166 = v156;
          *(a1 + 272) = v157;
          if (!v156)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v102 = (v7 + 2);
LABEL_158:
          *v166 = v102;
          *(a1 + 272) = v103;
        }

        goto LABEL_223;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_215;
        }

        *(a1 + 16) |= 0x10u;
        v89 = *(a1 + 200);
        if (v89)
        {
          goto LABEL_191;
        }

        v117 = *(a1 + 8);
        v118 = (v117 & 0xFFFFFFFFFFFFFFFCLL);
        if (v117)
        {
          v118 = *v118;
        }

        sub_14BAE64(v118);
        v89 = v119;
        *(a1 + 200) = v119;
LABEL_190:
        v7 = *v166;
LABEL_191:
        v82 = sub_22095B8(a3, v89, v7);
        goto LABEL_222;
      case 0x15u:
        if (v8 != 170)
        {
          goto LABEL_215;
        }

        *(a1 + 16) |= 1u;
        v86 = *(a1 + 8);
        v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
        if (v86)
        {
          v87 = *v87;
        }

        v88 = (a1 + 168);
        goto LABEL_184;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_215;
        }

        v5 |= 0x2000000u;
        v94 = (v7 + 1);
        v93 = *v7;
        if ((v93 & 0x8000000000000000) == 0)
        {
          goto LABEL_143;
        }

        v95 = *v94;
        v93 = (v95 << 7) + v93 - 128;
        if (v95 < 0)
        {
          v150 = sub_19587DC(v7, v93);
          *v166 = v150;
          *(a1 + 297) = v151 != 0;
          if (!v150)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v94 = (v7 + 2);
LABEL_143:
          *v166 = v94;
          *(a1 + 297) = v93 != 0;
        }

        goto LABEL_223;
      case 0x17u:
        if (v8 != 186)
        {
          goto LABEL_215;
        }

        *(a1 + 16) |= 2u;
        v115 = *(a1 + 8);
        v87 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
        if (v115)
        {
          v87 = *v87;
        }

        v88 = (a1 + 176);
        goto LABEL_184;
      case 0x18u:
        if (v8 != 194)
        {
          goto LABEL_215;
        }

        *(a1 + 16) |= 0x20u;
        v49 = *(a1 + 208);
        if (v49)
        {
          goto LABEL_198;
        }

        v120 = *(a1 + 8);
        v121 = (v120 & 0xFFFFFFFFFFFFFFFCLL);
        if (v120)
        {
          v121 = *v121;
        }

        v49 = sub_14BDB38(v121);
        *(a1 + 208) = v49;
        goto LABEL_197;
      case 0x19u:
        if (v8 != 202)
        {
          goto LABEL_215;
        }

        *(a1 + 16) |= 0x40u;
        v49 = *(a1 + 216);
        if (v49)
        {
          goto LABEL_198;
        }

        v50 = *(a1 + 8);
        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if (v50)
        {
          v51 = *v51;
        }

        v49 = sub_14BDB38(v51);
        *(a1 + 216) = v49;
LABEL_197:
        v7 = *v166;
LABEL_198:
        v82 = sub_22111B0(a3, v49, v7);
        goto LABEL_222;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_215;
        }

        v5 |= 0x40000u;
        v46 = (v7 + 1);
        v47 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_71;
        }

        v48 = *v46;
        v47 = v47 + (v48 << 7) - 128;
        if (v48 < 0)
        {
          v142 = sub_1958770(v7, v47);
          *v166 = v142;
          *(a1 + 276) = v143;
          if (!v142)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v46 = (v7 + 2);
LABEL_71:
          *v166 = v46;
          *(a1 + 276) = v47;
        }

        goto LABEL_223;
      case 0x1Bu:
        if (v8 != 216)
        {
          goto LABEL_215;
        }

        v5 |= 0x80000u;
        v128 = (v7 + 1);
        v129 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_214;
        }

        v130 = *v128;
        v129 = v129 + (v130 << 7) - 128;
        if (v130 < 0)
        {
          v164 = sub_1958770(v7, v129);
          *v166 = v164;
          *(a1 + 280) = v165;
          if (!v164)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v128 = (v7 + 2);
LABEL_214:
          *v166 = v128;
          *(a1 + 280) = v129;
        }

        goto LABEL_223;
      case 0x1Cu:
        if (v8 != 224)
        {
          goto LABEL_215;
        }

        v5 |= 0x100000u;
        v19 = (v7 + 1);
        v20 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v21 = *v19;
        v20 = v20 + (v21 << 7) - 128;
        if (v21 < 0)
        {
          v134 = sub_1958770(v7, v20);
          *v166 = v134;
          *(a1 + 284) = v135;
          if (!v134)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v19 = (v7 + 2);
LABEL_24:
          *v166 = v19;
          *(a1 + 284) = v20;
        }

        goto LABEL_223;
      case 0x1Du:
        if (v8 != 234)
        {
          goto LABEL_215;
        }

        *(a1 + 16) |= 0x80u;
        v122 = *(a1 + 224);
        if (!v122)
        {
          v123 = *(a1 + 8);
          v124 = (v123 & 0xFFFFFFFFFFFFFFFCLL);
          if (v123)
          {
            v124 = *v124;
          }

          v122 = sub_14BF484(v124);
          *(a1 + 224) = v122;
          v7 = *v166;
        }

        v82 = sub_2209138(a3, v122, v7);
        goto LABEL_222;
      case 0x1Eu:
        if (v8 != 240)
        {
          goto LABEL_215;
        }

        v5 |= 0x400000u;
        v126 = (v7 + 1);
        v125 = *v7;
        if ((v125 & 0x8000000000000000) == 0)
        {
          goto LABEL_209;
        }

        v127 = *v126;
        v125 = (v127 << 7) + v125 - 128;
        if (v127 < 0)
        {
          v162 = sub_19587DC(v7, v125);
          *v166 = v162;
          *(a1 + 289) = v163 != 0;
          if (!v162)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v126 = (v7 + 2);
LABEL_209:
          *v166 = v126;
          *(a1 + 289) = v125 != 0;
        }

        goto LABEL_223;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_215;
        }

        *(a1 + 16) |= 4u;
        v111 = *(a1 + 8);
        v87 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
        if (v111)
        {
          v87 = *v87;
        }

        v88 = (a1 + 184);
LABEL_184:
        v116 = sub_194DB04(v88, v87);
        v82 = sub_1958890(v116, *v166, a3);
        goto LABEL_222;
      case 0x20u:
        if (v8 != 2)
        {
          goto LABEL_215;
        }

        *(a1 + 16) |= 0x100u;
        v79 = *(a1 + 232);
        if (!v79)
        {
          v80 = *(a1 + 8);
          v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
          if (v80)
          {
            v81 = *v81;
          }

          v79 = sub_14BDA20(v81);
          *(a1 + 232) = v79;
          v7 = *v166;
        }

        v82 = sub_2211240(a3, v79, v7);
        goto LABEL_222;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_215;
        }

        v5 |= 0x200000u;
        v113 = (v7 + 1);
        v112 = *v7;
        if ((v112 & 0x8000000000000000) == 0)
        {
          goto LABEL_179;
        }

        v114 = *v113;
        v112 = (v114 << 7) + v112 - 128;
        if (v114 < 0)
        {
          v160 = sub_19587DC(v7, v112);
          *v166 = v160;
          *(a1 + 288) = v161 != 0;
          if (!v160)
          {
            goto LABEL_269;
          }
        }

        else
        {
          v113 = (v7 + 2);
LABEL_179:
          *v166 = v113;
          *(a1 + 288) = v112 != 0;
        }

        goto LABEL_223;
      default:
LABEL_215:
        if (v8)
        {
          v131 = (v8 & 7) == 4;
        }

        else
        {
          v131 = 1;
        }

        if (!v131)
        {
          v132 = *(a1 + 8);
          if (v132)
          {
            v133 = (v132 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v133 = sub_11F1920((a1 + 8));
            v7 = *v166;
          }

          v82 = sub_1952690(v8, v133, v7, a3);
LABEL_222:
          *v166 = v82;
          if (!v82)
          {
            goto LABEL_269;
          }

LABEL_223:
          if (sub_195ADC0(a3, v166, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_269:
          *v166 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v166;
    }
  }
}

char *sub_149975C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || (*a3 - __dst + 14) < v9)
      {
        __dst = sub_1957480(a3, 1, v8, __dst);
      }

      else
      {
        *__dst = 10;
        __dst[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = __dst + 2;
        memcpy(__dst + 2, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 56);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 64) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || (*a3 - __dst + 14) < v14)
      {
        __dst = sub_1957480(a3, 2, v13, __dst);
      }

      else
      {
        *__dst = 18;
        __dst[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = __dst + 2;
        memcpy(__dst + 2, v13, v14);
        __dst = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 80);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 88) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || (*a3 - __dst + 14) < v19)
      {
        __dst = sub_1957480(a3, 3, v18, __dst);
      }

      else
      {
        *__dst = 26;
        __dst[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = __dst + 2;
        memcpy(__dst + 2, v18, v19);
        __dst = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 104);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 112) + 8 * i + 8);
      *__dst = 34;
      v24 = *(v23 + 20);
      __dst[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, __dst + 1);
      }

      else
      {
        v25 = __dst + 2;
      }

      __dst = sub_14589F4(v23, v25, a3);
    }
  }

  v26 = *(a1 + 128);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v28 = *(*(a1 + 136) + 8 * j + 8);
      *__dst = 42;
      v29 = *(v28 + 20);
      __dst[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, __dst + 1);
      }

      else
      {
        v30 = __dst + 2;
      }

      __dst = sub_14589F4(v28, v30, a3);
    }
  }

  v31 = *(a1 + 16);
  if ((v31 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v32 = *(a1 + 192);
    *__dst = 50;
    v33 = *(v32 + 20);
    __dst[1] = v33;
    if (v33 > 0x7F)
    {
      v34 = sub_19575D0(v33, __dst + 1);
    }

    else
    {
      v34 = __dst + 2;
    }

    __dst = sub_14589F4(v32, v34, a3);
  }

  if ((v31 & 0x200) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v36 = *(a1 + 240);
    *__dst = 56;
    __dst[1] = v36;
    if (v36 > 0x7F)
    {
      __dst[1] = v36 | 0x80;
      v37 = v36 >> 7;
      __dst[2] = v36 >> 7;
      v35 = __dst + 3;
      if (v36 >= 0x4000)
      {
        LOBYTE(v38) = __dst[2];
        do
        {
          *(v35 - 1) = v38 | 0x80;
          v38 = v37 >> 7;
          *v35++ = v37 >> 7;
          v39 = v37 >> 14;
          v37 >>= 7;
        }

        while (v39);
      }
    }

    else
    {
      v35 = __dst + 2;
    }
  }

  else
  {
    v35 = __dst;
  }

  if ((v31 & 0x400) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v41 = *(a1 + 244);
    *v35 = 64;
    v35[1] = v41;
    if (v41 > 0x7F)
    {
      v35[1] = v41 | 0x80;
      v42 = v41 >> 7;
      v35[2] = v41 >> 7;
      v40 = v35 + 3;
      if (v41 >= 0x4000)
      {
        LOBYTE(v43) = v35[2];
        do
        {
          *(v40 - 1) = v43 | 0x80;
          v43 = v42 >> 7;
          *v40++ = v42 >> 7;
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
      }
    }

    else
    {
      v40 = v35 + 2;
    }
  }

  else
  {
    v40 = v35;
  }

  if ((v31 & 0x800) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v46 = *(a1 + 248);
    *v40 = 72;
    v40[1] = v46;
    if (v46 > 0x7F)
    {
      v40[1] = v46 | 0x80;
      v47 = v46 >> 7;
      v40[2] = v46 >> 7;
      v45 = v40 + 3;
      if (v46 >= 0x4000)
      {
        LOBYTE(v40) = v40[2];
        do
        {
          *(v45 - 1) = v40 | 0x80;
          LODWORD(v40) = v47 >> 7;
          *v45++ = v47 >> 7;
          v48 = v47 >> 14;
          v47 >>= 7;
        }

        while (v48);
      }
    }

    else
    {
      v45 = v40 + 2;
    }
  }

  else
  {
    v45 = v40;
  }

  if ((v31 & 0x1000) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v50 = *(a1 + 252);
    *v45 = 80;
    v45[1] = v50;
    if (v50 > 0x7F)
    {
      v45[1] = v50 | 0x80;
      v51 = v50 >> 7;
      v45[2] = v50 >> 7;
      v49 = v45 + 3;
      if (v50 >= 0x4000)
      {
        LOBYTE(v52) = v45[2];
        do
        {
          *(v49 - 1) = v52 | 0x80;
          v52 = v51 >> 7;
          *v49++ = v51 >> 7;
          v53 = v51 >> 14;
          v51 >>= 7;
        }

        while (v53);
      }
    }

    else
    {
      v49 = v45 + 2;
    }
  }

  else
  {
    v49 = v45;
  }

  if ((v31 & 0x2000) != 0)
  {
    if (*a3 <= v49)
    {
      v49 = sub_225EB68(a3, v49);
    }

    v55 = *(a1 + 256);
    *v49 = 88;
    v49[1] = v55;
    if (v55 > 0x7F)
    {
      v49[1] = v55 | 0x80;
      v56 = v55 >> 7;
      v49[2] = v55 >> 7;
      v54 = v49 + 3;
      if (v55 >= 0x4000)
      {
        LOBYTE(v49) = v49[2];
        do
        {
          *(v54 - 1) = v49 | 0x80;
          v49 = (v56 >> 7);
          *v54++ = v56 >> 7;
          v57 = v56 >> 14;
          v56 >>= 7;
        }

        while (v57);
      }
    }

    else
    {
      v54 = v49 + 2;
    }
  }

  else
  {
    v54 = v49;
  }

  if ((v31 & 0x1000000) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v58 = *(a1 + 296);
    *v54 = 96;
    v54[1] = v58;
    v54 += 2;
  }

  if ((v31 & 0x4000) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v60 = *(a1 + 260);
    *v54 = 104;
    v54[1] = v60;
    if (v60 > 0x7F)
    {
      v54[1] = v60 | 0x80;
      v61 = v60 >> 7;
      v54[2] = v60 >> 7;
      v59 = v54 + 3;
      if (v60 >= 0x4000)
      {
        LOBYTE(v62) = v54[2];
        do
        {
          *(v59 - 1) = v62 | 0x80;
          v62 = v61 >> 7;
          *v59++ = v61 >> 7;
          v63 = v61 >> 14;
          v61 >>= 7;
        }

        while (v63);
      }
    }

    else
    {
      v59 = v54 + 2;
    }
  }

  else
  {
    v59 = v54;
  }

  if ((v31 & 0x8000) != 0)
  {
    if (*a3 <= v59)
    {
      v59 = sub_225EB68(a3, v59);
    }

    v65 = *(a1 + 264);
    *v59 = 112;
    v59[1] = v65;
    if (v65 > 0x7F)
    {
      v59[1] = v65 | 0x80;
      v66 = v65 >> 7;
      v59[2] = v65 >> 7;
      v64 = v59 + 3;
      if (v65 >= 0x4000)
      {
        LOBYTE(v59) = v59[2];
        do
        {
          *(v64 - 1) = v59 | 0x80;
          LODWORD(v59) = v66 >> 7;
          *v64++ = v66 >> 7;
          v67 = v66 >> 14;
          v66 >>= 7;
        }

        while (v67);
      }
    }

    else
    {
      v64 = v59 + 2;
    }
  }

  else
  {
    v64 = v59;
  }

  v68 = *(a1 + 152);
  if (v68)
  {
    for (k = 0; k != v68; ++k)
    {
      if (*a3 <= v64)
      {
        v64 = sub_225EB68(a3, v64);
      }

      v70 = *(*(a1 + 160) + 8 * k + 8);
      *v64 = 122;
      v71 = *(v70 + 20);
      v64[1] = v71;
      if (v71 > 0x7F)
      {
        v72 = sub_19575D0(v71, v64 + 1);
      }

      else
      {
        v72 = v64 + 2;
      }

      v64 = sub_14979B8(v70, v72, a3);
    }
  }

  if ((v31 & 0x10000) != 0)
  {
    if (*a3 <= v64)
    {
      v64 = sub_225EB68(a3, v64);
    }

    v74 = *(a1 + 268);
    *v64 = 384;
    v64[2] = v74;
    if (v74 > 0x7F)
    {
      v64[2] = v74 | 0x80;
      v75 = v74 >> 7;
      v64[3] = v74 >> 7;
      v73 = v64 + 4;
      if (v74 >= 0x4000)
      {
        LOBYTE(v64) = v64[3];
        do
        {
          *(v73 - 1) = v64 | 0x80;
          v64 = (v75 >> 7);
          *v73++ = v75 >> 7;
          v76 = v75 >> 14;
          v75 >>= 7;
        }

        while (v76);
      }
    }

    else
    {
      v73 = v64 + 3;
    }
  }

  else
  {
    v73 = v64;
  }

  if ((v31 & 0x800000) != 0)
  {
    if (*a3 <= v73)
    {
      v73 = sub_225EB68(a3, v73);
    }

    v78 = *(a1 + 292);
    *v73 = 392;
    v73[2] = v78;
    if (v78 > 0x7F)
    {
      v73[2] = v78 | 0x80;
      v79 = v78 >> 7;
      v73[3] = v78 >> 7;
      v77 = v73 + 4;
      if (v78 >= 0x4000)
      {
        LOBYTE(v73) = v73[3];
        do
        {
          *(v77 - 1) = v73 | 0x80;
          LODWORD(v73) = v79 >> 7;
          *v77++ = v79 >> 7;
          v80 = v79 >> 14;
          v79 >>= 7;
        }

        while (v80);
      }
    }

    else
    {
      v77 = v73 + 3;
    }
  }

  else
  {
    v77 = v73;
  }

  if ((v31 & 0x4000000) != 0)
  {
    if (*a3 <= v77)
    {
      v77 = sub_225EB68(a3, v77);
    }

    v81 = *(a1 + 298);
    *v77 = 400;
    v77[2] = v81;
    v77 += 3;
  }

  if ((v31 & 0x20000) != 0)
  {
    if (*a3 <= v77)
    {
      v77 = sub_225EB68(a3, v77);
    }

    v83 = *(a1 + 272);
    *v77 = 408;
    v77[2] = v83;
    if (v83 > 0x7F)
    {
      v77[2] = v83 | 0x80;
      v84 = v83 >> 7;
      v77[3] = v83 >> 7;
      v82 = v77 + 4;
      if (v83 >= 0x4000)
      {
        LOBYTE(v85) = v77[3];
        do
        {
          *(v82 - 1) = v85 | 0x80;
          v85 = v84 >> 7;
          *v82++ = v84 >> 7;
          v86 = v84 >> 14;
          v84 >>= 7;
        }

        while (v86);
      }
    }

    else
    {
      v82 = v77 + 3;
    }
  }

  else
  {
    v82 = v77;
  }

  if ((v31 & 0x10) != 0)
  {
    if (*a3 <= v82)
    {
      v82 = sub_225EB68(a3, v82);
    }

    v88 = *(a1 + 200);
    *v82 = 418;
    v89 = *(v88 + 20);
    v82[2] = v89;
    if (v89 > 0x7F)
    {
      v90 = sub_19575D0(v89, v82 + 2);
    }

    else
    {
      v90 = v82 + 3;
    }

    v82 = sub_14589F4(v88, v90, a3);
    if ((v31 & 1) == 0)
    {
LABEL_165:
      if ((v31 & 0x2000000) == 0)
      {
        goto LABEL_166;
      }

      goto LABEL_178;
    }
  }

  else if ((v31 & 1) == 0)
  {
    goto LABEL_165;
  }

  v82 = sub_128AEEC(a3, 21, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, v82);
  if ((v31 & 0x2000000) == 0)
  {
LABEL_166:
    if ((v31 & 2) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_181;
  }

LABEL_178:
  if (*a3 <= v82)
  {
    v82 = sub_225EB68(a3, v82);
  }

  v91 = *(a1 + 297);
  *v82 = 432;
  v82[2] = v91;
  v82 += 3;
  if ((v31 & 2) == 0)
  {
LABEL_167:
    if ((v31 & 0x20) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_182;
  }

LABEL_181:
  v82 = sub_128AEEC(a3, 23, *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL, v82);
  if ((v31 & 0x20) == 0)
  {
LABEL_168:
    if ((v31 & 0x40) == 0)
    {
      goto LABEL_169;
    }

LABEL_188:
    if (*a3 <= v82)
    {
      v82 = sub_225EB68(a3, v82);
    }

    v95 = *(a1 + 216);
    *v82 = 458;
    v96 = *(v95 + 20);
    v82[2] = v96;
    if (v96 > 0x7F)
    {
      v97 = sub_19575D0(v96, v82 + 2);
    }

    else
    {
      v97 = v82 + 3;
    }

    v82 = sub_14971E8(v95, v97, a3);
    if ((v31 & 0x40000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_194;
  }

LABEL_182:
  if (*a3 <= v82)
  {
    v82 = sub_225EB68(a3, v82);
  }

  v92 = *(a1 + 208);
  *v82 = 450;
  v93 = *(v92 + 20);
  v82[2] = v93;
  if (v93 > 0x7F)
  {
    v94 = sub_19575D0(v93, v82 + 2);
  }

  else
  {
    v94 = v82 + 3;
  }

  v82 = sub_14971E8(v92, v94, a3);
  if ((v31 & 0x40) != 0)
  {
    goto LABEL_188;
  }

LABEL_169:
  if ((v31 & 0x40000) == 0)
  {
LABEL_170:
    v87 = v82;
    goto LABEL_201;
  }

LABEL_194:
  if (*a3 <= v82)
  {
    v82 = sub_225EB68(a3, v82);
  }

  v98 = *(a1 + 276);
  *v82 = 464;
  v82[2] = v98;
  if (v98 > 0x7F)
  {
    v82[2] = v98 | 0x80;
    v99 = v98 >> 7;
    v82[3] = v98 >> 7;
    v87 = v82 + 4;
    if (v98 >= 0x4000)
    {
      LOBYTE(v100) = v82[3];
      do
      {
        *(v87 - 1) = v100 | 0x80;
        v100 = v99 >> 7;
        *v87++ = v99 >> 7;
        v101 = v99 >> 14;
        v99 >>= 7;
      }

      while (v101);
    }
  }

  else
  {
    v87 = v82 + 3;
  }

LABEL_201:
  if ((v31 & 0x80000) != 0)
  {
    if (*a3 <= v87)
    {
      v87 = sub_225EB68(a3, v87);
    }

    v103 = *(a1 + 280);
    *v87 = 472;
    v87[2] = v103;
    if (v103 > 0x7F)
    {
      v87[2] = v103 | 0x80;
      v104 = v103 >> 7;
      v87[3] = v103 >> 7;
      v102 = v87 + 4;
      if (v103 >= 0x4000)
      {
        LOBYTE(v105) = v87[3];
        do
        {
          *(v102 - 1) = v105 | 0x80;
          v105 = v104 >> 7;
          *v102++ = v104 >> 7;
          v106 = v104 >> 14;
          v104 >>= 7;
        }

        while (v106);
      }
    }

    else
    {
      v102 = v87 + 3;
    }
  }

  else
  {
    v102 = v87;
  }

  if ((v31 & 0x100000) != 0)
  {
    if (*a3 <= v102)
    {
      v102 = sub_225EB68(a3, v102);
    }

    v108 = *(a1 + 284);
    *v102 = 480;
    v102[2] = v108;
    if (v108 > 0x7F)
    {
      v102[2] = v108 | 0x80;
      v109 = v108 >> 7;
      v102[3] = v108 >> 7;
      v107 = v102 + 4;
      if (v108 >= 0x4000)
      {
        LOBYTE(v102) = v102[3];
        do
        {
          *(v107 - 1) = v102 | 0x80;
          LODWORD(v102) = v109 >> 7;
          *v107++ = v109 >> 7;
          v110 = v109 >> 14;
          v109 >>= 7;
        }

        while (v110);
      }
    }

    else
    {
      v107 = v102 + 3;
    }
  }

  else
  {
    v107 = v102;
  }

  if ((v31 & 0x80) != 0)
  {
    if (*a3 <= v107)
    {
      v107 = sub_225EB68(a3, v107);
    }

    v111 = *(a1 + 224);
    *v107 = 490;
    v112 = *(v111 + 44);
    v107[2] = v112;
    if (v112 > 0x7F)
    {
      v113 = sub_19575D0(v112, v107 + 2);
    }

    else
    {
      v113 = v107 + 3;
    }

    v107 = sub_14B6D24(v111, v113, a3);
    if ((v31 & 0x400000) == 0)
    {
LABEL_221:
      if ((v31 & 4) == 0)
      {
        goto LABEL_222;
      }

      goto LABEL_234;
    }
  }

  else if ((v31 & 0x400000) == 0)
  {
    goto LABEL_221;
  }

  if (*a3 <= v107)
  {
    v107 = sub_225EB68(a3, v107);
  }

  v114 = *(a1 + 289);
  *v107 = 496;
  v107[2] = v114;
  v107 += 3;
  if ((v31 & 4) == 0)
  {
LABEL_222:
    if ((v31 & 0x100) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_235;
  }

LABEL_234:
  v107 = sub_128AEEC(a3, 31, *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL, v107);
  if ((v31 & 0x100) == 0)
  {
LABEL_223:
    if ((v31 & 0x200000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_241;
  }

LABEL_235:
  if (*a3 <= v107)
  {
    v107 = sub_225EB68(a3, v107);
  }

  v115 = *(a1 + 232);
  *v107 = 642;
  v116 = *(v115 + 20);
  v107[2] = v116;
  if (v116 > 0x7F)
  {
    v117 = sub_19575D0(v116, v107 + 2);
  }

  else
  {
    v117 = v107 + 3;
  }

  v107 = sub_1496140(v115, v117, a3);
  if ((v31 & 0x200000) != 0)
  {
LABEL_241:
    if (*a3 <= v107)
    {
      v107 = sub_225EB68(a3, v107);
    }

    v118 = *(a1 + 288);
    *v107 = 648;
    v107[2] = v118;
    v107 += 3;
  }

LABEL_244:
  v119 = *(a1 + 8);
  if ((v119 & 1) == 0)
  {
    return v107;
  }

  v121 = v119 & 0xFFFFFFFFFFFFFFFCLL;
  v122 = *(v121 + 31);
  if (v122 < 0)
  {
    v123 = *(v121 + 8);
    v122 = *(v121 + 16);
  }

  else
  {
    v123 = (v121 + 8);
  }

  if ((*a3 - v107) >= v122)
  {
    v124 = v122;
    memcpy(v107, v123, v122);
    v107 += v124;
    return v107;
  }

  return sub_1957130(a3, v123, v122, v107);
}

uint64_t sub_149A624(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 < 1)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v3 = (*(a1 + 40) + 8);
    v4 = *(a1 + 32);
    do
    {
      v5 = *v3++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = *(a1 + 56);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = (*(a1 + 64) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 80);
  v15 = v9 + v14;
  if (v14 >= 1)
  {
    v16 = (*(a1 + 88) + 8);
    do
    {
      v17 = *v16++;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v15 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      --v14;
    }

    while (v14);
  }

  v20 = *(a1 + 104);
  v21 = v15 + v20;
  v22 = *(a1 + 112);
  if (v22)
  {
    v23 = (v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = 8 * v20;
    do
    {
      v25 = *v23++;
      v26 = sub_1458DB4(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(a1 + 128);
  v28 = v21 + v27;
  v29 = *(a1 + 136);
  if (v29)
  {
    v30 = (v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  if (v27)
  {
    v31 = 8 * v27;
    do
    {
      v32 = *v30++;
      v33 = sub_1458DB4(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 152);
  v35 = v28 + v34;
  v36 = *(a1 + 160);
  if (v36)
  {
    v37 = (v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  if (v34)
  {
    v38 = 8 * v34;
    do
    {
      v39 = *v37++;
      v40 = sub_1497BCC(v39);
      v35 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6);
      v38 -= 8;
    }

    while (v38);
  }

  v41 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_46;
  }

  if (v41)
  {
    v47 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    v48 = *(v47 + 23);
    v49 = *(v47 + 8);
    if ((v48 & 0x80u) == 0)
    {
      v49 = v48;
    }

    v35 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v41 & 2) == 0)
    {
LABEL_39:
      if ((v41 & 4) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_85;
    }
  }

  else if ((v41 & 2) == 0)
  {
    goto LABEL_39;
  }

  v50 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v51 = *(v50 + 23);
  v52 = *(v50 + 8);
  if ((v51 & 0x80u) == 0)
  {
    v52 = v51;
  }

  v35 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 4) == 0)
  {
LABEL_40:
    if ((v41 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_85:
  v53 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v54 = *(v53 + 23);
  v55 = *(v53 + 8);
  if ((v54 & 0x80u) == 0)
  {
    v55 = v54;
  }

  v35 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 8) == 0)
  {
LABEL_41:
    if ((v41 & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  v56 = sub_1458DB4(*(a1 + 192));
  v35 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v41 & 0x10) == 0)
  {
LABEL_42:
    if ((v41 & 0x20) == 0)
    {
      goto LABEL_43;
    }

LABEL_90:
    v58 = sub_14973E8(*(a1 + 208));
    v35 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v41 & 0x40) == 0)
    {
LABEL_44:
      if ((v41 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    goto LABEL_91;
  }

LABEL_89:
  v57 = sub_1458DB4(*(a1 + 200));
  v35 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x20) != 0)
  {
    goto LABEL_90;
  }

LABEL_43:
  if ((v41 & 0x40) == 0)
  {
    goto LABEL_44;
  }

LABEL_91:
  v59 = sub_14973E8(*(a1 + 216));
  v35 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x80) != 0)
  {
LABEL_45:
    v42 = sub_14B71B8(*(a1 + 224));
    v35 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_46:
  if ((v41 & 0xFF00) == 0)
  {
    goto LABEL_56;
  }

  if ((v41 & 0x100) != 0)
  {
    v60 = sub_14962E8(*(a1 + 232));
    v35 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v41 & 0x200) == 0)
    {
LABEL_49:
      if ((v41 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_95;
    }
  }

  else if ((v41 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  v35 += ((9 * (__clz(*(a1 + 240) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v41 & 0x400) == 0)
  {
LABEL_50:
    if ((v41 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_96;
  }

LABEL_95:
  v35 += ((9 * (__clz(*(a1 + 244) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v41 & 0x800) == 0)
  {
LABEL_51:
    if ((v41 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_97;
  }

LABEL_96:
  v35 += ((9 * (__clz(*(a1 + 248) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v41 & 0x1000) == 0)
  {
LABEL_52:
    if ((v41 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_98;
  }

LABEL_97:
  v35 += ((9 * (__clz(*(a1 + 252) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v41 & 0x2000) == 0)
  {
LABEL_53:
    if ((v41 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_102;
  }

LABEL_98:
  v61 = *(a1 + 256);
  v62 = ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v61 >= 0)
  {
    v63 = v62;
  }

  else
  {
    v63 = 11;
  }

  v35 += v63;
  if ((v41 & 0x4000) == 0)
  {
LABEL_54:
    if ((v41 & 0x8000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_102:
  v64 = *(a1 + 260);
  v65 = ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v64 >= 0)
  {
    v66 = v65;
  }

  else
  {
    v66 = 11;
  }

  v35 += v66;
  if ((v41 & 0x8000) != 0)
  {
LABEL_55:
    v35 += ((9 * (__clz(*(a1 + 264) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_56:
  if ((v41 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v41 & 0x10000) != 0)
  {
    v67 = *(a1 + 268);
    v68 = ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v67 >= 0)
    {
      v69 = v68;
    }

    else
    {
      v69 = 12;
    }

    v35 += v69;
    if ((v41 & 0x20000) == 0)
    {
LABEL_59:
      if ((v41 & 0x40000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_112;
    }
  }

  else if ((v41 & 0x20000) == 0)
  {
    goto LABEL_59;
  }

  v35 += ((9 * (__clz(*(a1 + 272) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x40000) == 0)
  {
LABEL_60:
    if ((v41 & 0x80000) == 0)
    {
      goto LABEL_61;
    }

LABEL_113:
    v35 += ((9 * (__clz(*(a1 + 280) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v41 & 0x100000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_112:
  v35 += ((9 * (__clz(*(a1 + 276) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x80000) != 0)
  {
    goto LABEL_113;
  }

LABEL_61:
  if ((v41 & 0x100000) != 0)
  {
LABEL_62:
    v35 += ((9 * (__clz(*(a1 + 284) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_63:
  v43 = v35 + 3;
  if ((v41 & 0x200000) == 0)
  {
    v43 = v35;
  }

  if ((v41 & 0x400000) != 0)
  {
    v35 = v43 + 3;
  }

  else
  {
    v35 = v43;
  }

  if ((v41 & 0x800000) != 0)
  {
    v35 += ((9 * (__clz(*(a1 + 292) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_70:
  v44 = v35 + ((v41 >> 23) & 2);
  if ((v41 & 0x2000000) != 0)
  {
    v44 += 3;
  }

  if ((v41 & 0x4000000) != 0)
  {
    v44 += 3;
  }

  if ((v41 & 0x7000000) != 0)
  {
    result = v44;
  }

  else
  {
    result = v35;
  }

  v46 = *(a1 + 8);
  if (v46)
  {
    v70 = v46 & 0xFFFFFFFFFFFFFFFCLL;
    v71 = *((v46 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v71 < 0)
    {
      v71 = *(v70 + 16);
    }

    result += v71;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_149AD40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1201B48(a1 + 24, v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48(a1 + 48, v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1201B48(a1 + 72, v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_144A454((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_144A454((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 152);
  if (v29)
  {
    v30 = *(a2 + 160);
    v31 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1567220((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 16);
  if (!v34)
  {
    goto LABEL_79;
  }

  if ((v34 & 1) == 0)
  {
    if ((v34 & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_27:
    v38 = *(a2 + 176);
    *(a1 + 16) |= 2u;
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    sub_194EA1C((a1 + 176), (v38 & 0xFFFFFFFFFFFFFFFELL), v40);
    if ((v34 & 4) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v35 = *(a2 + 168);
  *(a1 + 16) |= 1u;
  v36 = *(a1 + 8);
  v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
  if (v36)
  {
    v37 = *v37;
  }

  sub_194EA1C((a1 + 168), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
  if ((v34 & 2) != 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((v34 & 4) != 0)
  {
LABEL_30:
    v41 = *(a2 + 184);
    *(a1 + 16) |= 4u;
    v42 = *(a1 + 8);
    v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
    if (v42)
    {
      v43 = *v43;
    }

    sub_194EA1C((a1 + 184), (v41 & 0xFFFFFFFFFFFFFFFELL), v43);
  }

LABEL_33:
  if ((v34 & 8) != 0)
  {
    *(a1 + 16) |= 8u;
    v44 = *(a1 + 192);
    if (!v44)
    {
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      sub_14BAE64(v46);
      *(a1 + 192) = v44;
    }

    if (*(a2 + 192))
    {
      v47 = *(a2 + 192);
    }

    else
    {
      v47 = &off_2771738;
    }

    sub_144EF20(v44, v47);
  }

  if ((v34 & 0x10) != 0)
  {
    *(a1 + 16) |= 0x10u;
    v48 = *(a1 + 200);
    if (!v48)
    {
      v49 = *(a1 + 8);
      v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
      if (v49)
      {
        v50 = *v50;
      }

      sub_14BAE64(v50);
      *(a1 + 200) = v48;
    }

    if (*(a2 + 200))
    {
      v51 = *(a2 + 200);
    }

    else
    {
      v51 = &off_2771738;
    }

    sub_144EF20(v48, v51);
  }

  if ((v34 & 0x20) != 0)
  {
    *(a1 + 16) |= 0x20u;
    v52 = *(a1 + 208);
    if (!v52)
    {
      v53 = *(a1 + 8);
      v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
      if (v53)
      {
        v54 = *v54;
      }

      v52 = sub_14BDB38(v54);
      *(a1 + 208) = v52;
    }

    if (*(a2 + 208))
    {
      v55 = *(a2 + 208);
    }

    else
    {
      v55 = &off_2772F80;
    }

    sub_14974E0(v52, v55);
    if ((v34 & 0x40) == 0)
    {
LABEL_53:
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_71;
    }
  }

  else if ((v34 & 0x40) == 0)
  {
    goto LABEL_53;
  }

  *(a1 + 16) |= 0x40u;
  v56 = *(a1 + 216);
  if (!v56)
  {
    v57 = *(a1 + 8);
    v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    if (v57)
    {
      v58 = *v58;
    }

    v56 = sub_14BDB38(v58);
    *(a1 + 216) = v56;
  }

  if (*(a2 + 216))
  {
    v59 = *(a2 + 216);
  }

  else
  {
    v59 = &off_2772F80;
  }

  sub_14974E0(v56, v59);
  if ((v34 & 0x80) != 0)
  {
LABEL_71:
    *(a1 + 16) |= 0x80u;
    v60 = *(a1 + 224);
    if (!v60)
    {
      v61 = *(a1 + 8);
      v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
      if (v61)
      {
        v62 = *v62;
      }

      v60 = sub_14BF484(v62);
      *(a1 + 224) = v60;
    }

    if (*(a2 + 224))
    {
      v63 = *(a2 + 224);
    }

    else
    {
      v63 = &off_2773AC8;
    }

    sub_144F194(v60, v63);
  }

LABEL_79:
  if ((v34 & 0xFF00) == 0)
  {
    goto LABEL_90;
  }

  if ((v34 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v65 = *(a1 + 232);
    if (!v65)
    {
      v66 = *(a1 + 8);
      v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
      if (v66)
      {
        v67 = *v67;
      }

      v65 = sub_14BDA20(v67);
      *(a1 + 232) = v65;
    }

    if (*(a2 + 232))
    {
      v68 = *(a2 + 232);
    }

    else
    {
      v68 = &off_2772F20;
    }

    sub_14963C4(v65, v68);
    if ((v34 & 0x200) == 0)
    {
LABEL_82:
      if ((v34 & 0x400) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_120;
    }
  }

  else if ((v34 & 0x200) == 0)
  {
    goto LABEL_82;
  }

  *(a1 + 240) = *(a2 + 240);
  if ((v34 & 0x400) == 0)
  {
LABEL_83:
    if ((v34 & 0x800) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_121;
  }

LABEL_120:
  *(a1 + 244) = *(a2 + 244);
  if ((v34 & 0x800) == 0)
  {
LABEL_84:
    if ((v34 & 0x1000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(a1 + 248) = *(a2 + 248);
  if ((v34 & 0x1000) == 0)
  {
LABEL_85:
    if ((v34 & 0x2000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(a1 + 252) = *(a2 + 252);
  if ((v34 & 0x2000) == 0)
  {
LABEL_86:
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_87;
    }

LABEL_124:
    *(a1 + 260) = *(a2 + 260);
    if ((v34 & 0x8000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_123:
  *(a1 + 256) = *(a2 + 256);
  if ((v34 & 0x4000) != 0)
  {
    goto LABEL_124;
  }

LABEL_87:
  if ((v34 & 0x8000) != 0)
  {
LABEL_88:
    *(a1 + 264) = *(a2 + 264);
  }

LABEL_89:
  *(a1 + 16) |= v34;
LABEL_90:
  if ((v34 & 0xFF0000) == 0)
  {
    goto LABEL_101;
  }

  if ((v34 & 0x10000) != 0)
  {
    *(a1 + 268) = *(a2 + 268);
    if ((v34 & 0x20000) == 0)
    {
LABEL_93:
      if ((v34 & 0x40000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_128;
    }
  }

  else if ((v34 & 0x20000) == 0)
  {
    goto LABEL_93;
  }

  *(a1 + 272) = *(a2 + 272);
  if ((v34 & 0x40000) == 0)
  {
LABEL_94:
    if ((v34 & 0x80000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_129;
  }

LABEL_128:
  *(a1 + 276) = *(a2 + 276);
  if ((v34 & 0x80000) == 0)
  {
LABEL_95:
    if ((v34 & 0x100000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_130;
  }

LABEL_129:
  *(a1 + 280) = *(a2 + 280);
  if ((v34 & 0x100000) == 0)
  {
LABEL_96:
    if ((v34 & 0x200000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(a1 + 284) = *(a2 + 284);
  if ((v34 & 0x200000) == 0)
  {
LABEL_97:
    if ((v34 & 0x400000) == 0)
    {
      goto LABEL_98;
    }

LABEL_132:
    *(a1 + 289) = *(a2 + 289);
    if ((v34 & 0x800000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

LABEL_131:
  *(a1 + 288) = *(a2 + 288);
  if ((v34 & 0x400000) != 0)
  {
    goto LABEL_132;
  }

LABEL_98:
  if ((v34 & 0x800000) != 0)
  {
LABEL_99:
    *(a1 + 292) = *(a2 + 292);
  }

LABEL_100:
  *(a1 + 16) |= v34;
LABEL_101:
  if ((v34 & 0x7000000) == 0)
  {
    goto LABEL_107;
  }

  if ((v34 & 0x1000000) == 0)
  {
    if ((v34 & 0x2000000) == 0)
    {
      goto LABEL_104;
    }

LABEL_135:
    *(a1 + 297) = *(a2 + 297);
    if ((v34 & 0x4000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  *(a1 + 296) = *(a2 + 296);
  if ((v34 & 0x2000000) != 0)
  {
    goto LABEL_135;
  }

LABEL_104:
  if ((v34 & 0x4000000) != 0)
  {
LABEL_105:
    *(a1 + 298) = *(a2 + 298);
  }

LABEL_106:
  *(a1 + 16) |= v34;
LABEL_107:
  v64 = *(a2 + 8);
  if (v64)
  {

    sub_1957EF4((a1 + 8), (v64 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_149B3A0(uint64_t a1)
{
  v2 = *(a1 + 104);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 112) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 128);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_144F560(*(*(a1 + 136) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_141E1DC(a1 + 144);
  if (result)
  {
    v9 = *(a1 + 16);
    if ((v9 & 8) != 0)
    {
      result = sub_144F560(*(a1 + 192));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 16);
    }

    if ((v9 & 0x10) != 0)
    {
      result = sub_144F560(*(a1 + 200));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 16);
    }

    if ((v9 & 0x80) != 0)
    {
      result = sub_144F5D0(*(a1 + 224));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 16);
    }

    if ((v9 & 0x100) == 0)
    {
      return 1;
    }

    result = sub_14964D4(*(a1 + 232));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_149B484(uint64_t a1)
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

  if (a1 != &off_2773108)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1458388(v7);
      operator delete();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      sub_1458388(v8);
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

void sub_149B584(uint64_t a1)
{
  sub_149B484(a1);

  operator delete();
}

uint64_t sub_149B5BC(uint64_t result)
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

LABEL_15:
    result = sub_144E5CC(*(result + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
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
      goto LABEL_15;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  result = sub_144E5CC(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_144E5CC(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_149B67C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v35, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v35 + 1);
    v8 = **v35;
    if (**v35 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v35, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v35 + 2);
      }
    }

    *v35 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_42;
        }

        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (v12)
        {
          goto LABEL_41;
        }

        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        sub_14BAE64(v28);
        v12 = v29;
        *(a1 + 32) = v29;
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_42;
        }

        *(a1 + 16) |= 4u;
        v12 = *(a1 + 40);
        if (v12)
        {
          goto LABEL_41;
        }

        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        sub_14BAE64(v18);
        v12 = v19;
        *(a1 + 40) = v19;
      }

LABEL_40:
      v7 = *v35;
      goto LABEL_41;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4)
    {
      if (v11 == 5 && v8 == 42)
      {
        *(a1 + 16) |= 8u;
        v12 = *(a1 + 48);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          sub_14BAE64(v14);
          v12 = v15;
          *(a1 + 48) = v15;
          goto LABEL_40;
        }

LABEL_41:
        v23 = sub_22095B8(a3, v12, v7);
LABEL_49:
        *v35 = v23;
        if (!v23)
        {
          goto LABEL_57;
        }

        goto LABEL_50;
      }

      goto LABEL_42;
    }

    if (v8 != 32)
    {
      goto LABEL_42;
    }

    v5 |= 0x10u;
    v25 = (v7 + 1);
    v24 = *v7;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v26 = *v25;
    v24 = (v26 << 7) + v24 - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v25 = (v7 + 2);
LABEL_34:
      *v35 = v25;
      *(a1 + 56) = v24 != 0;
      goto LABEL_50;
    }

    v33 = sub_19587DC(v7, v24);
    *v35 = v33;
    *(a1 + 56) = v34 != 0;
    if (!v33)
    {
      goto LABEL_57;
    }

LABEL_50:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v23 = sub_1958890(v22, *v35, a3);
    goto LABEL_49;
  }

LABEL_42:
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
      v7 = *v35;
    }

    v23 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_57:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_149B950(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
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

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 40);
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

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = sub_128AEEC(a3, 3, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 56);
  *v4 = 32;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_23:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v14 = *(a1 + 48);
    *v4 = 42;
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

    v4 = sub_14589F4(v14, v16, a3);
  }

LABEL_29:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v4;
  }

  v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *(v19 + 31);
  if (v20 < 0)
  {
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
  }

  else
  {
    v21 = (v19 + 8);
  }

  if ((*a3 - v4) >= v20)
  {
    v22 = v20;
    memcpy(v4, v21, v20);
    v4 += v22;
    return v4;
  }

  return sub_1957130(a3, v21, v20, v4);
}

uint64_t sub_149BB9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
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
    v8 = sub_1458DB4(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v11 = sub_1458DB4(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((v2 & 8) != 0)
  {
LABEL_12:
    v9 = sub_1458DB4(*(a1 + 48));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  result = v3 + ((v2 >> 3) & 2);
LABEL_14:
  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    result += v13;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_149BCF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      v5 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        sub_14BAE64(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_2771738;
      }

      sub_144EF20(v9, v12);
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

      sub_14BAE64(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2771738;
    }

    sub_144EF20(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_11;
    }

LABEL_32:
    *(a1 + 16) |= 8u;
    v17 = *(a1 + 48);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      sub_14BAE64(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_2771738;
    }

    sub_144EF20(v17, v20);
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

    sub_1957EF4((a1 + 8), (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_149BE8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_144F560(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_149BEFC(uint64_t a1)
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
  if (a1 != &off_2773148)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_149BFC0(uint64_t a1)
{
  sub_149BEFC(a1);

  operator delete();
}

uint64_t sub_149BFF8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_144E5CC(*(v1 + 48));
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

char *sub_149C088(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v26, i) & 1) == 0; i = a3[11].i32[1])
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
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v26 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            sub_14BAE64(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v26;
          }

          v15 = sub_22095B8(a3, v19, v16);
          v26 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 48);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        sub_14BAE64(v23);
        v21 = v24;
        *(a1 + 48) = v24;
        v6 = v26;
      }

      v14 = sub_22095B8(a3, v21, v6);
      goto LABEL_34;
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
        return v26;
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
      v6 = v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_34:
    v26 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v26;
}

char *sub_149C26C(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
    *v4 = 10;
    v7 = *(v6 + 20);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_14589F4(v6, v8, a3);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v11 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_14589F4(v11, v13, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

uint64_t sub_149C414(uint64_t a1)
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
      v7 = sub_1458DB4(v6);
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
    v8 = sub_1458DB4(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_149C4F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144A454((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    v10 = *(a1 + 48);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_14BAE64(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_2771738;
    }

    sub_144EF20(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_149C600(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 40) + 8 * v2));
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

  result = sub_144F560(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_149C674(uint64_t a1)
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

  if (a1 != &off_2773180)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_1458388(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_1458388(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1565490((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_149C764(uint64_t a1)
{
  sub_149C674(a1);

  operator delete();
}

uint64_t sub_149C79C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_149BFF8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      result = sub_144E5CC(*(v1 + 48));
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = sub_144E5CC(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      result = sub_144E5CC(*(v1 + 64));
    }
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_149C858(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v32, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v32 + 1;
    v7 = *v32;
    if (*v32 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v32, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v32 + 2;
      }
    }

    v32 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 4)
    {
      if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 4u;
          v11 = *(a1 + 64);
          if (v11)
          {
            goto LABEL_38;
          }

          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          sub_14BAE64(v25);
          v11 = v26;
          *(a1 + 64) = v26;
          goto LABEL_37;
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v32 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_14BDD20(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v32;
          }

          v15 = sub_22112D0(a3, v19, v16);
          v32 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 50)
          {
            goto LABEL_47;
          }
        }
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 1u;
        v11 = *(a1 + 48);
        if (v11)
        {
          goto LABEL_38;
        }

        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        sub_14BAE64(v22);
        v11 = v23;
        *(a1 + 48) = v23;
LABEL_37:
        v6 = v32;
        goto LABEL_38;
      }
    }

    else if (v10 == 4 && v7 == 34)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 56);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_14BAE64(v13);
        v11 = v14;
        *(a1 + 56) = v14;
        goto LABEL_37;
      }

LABEL_38:
      v27 = sub_22095B8(a3, v11, v6);
      goto LABEL_46;
    }

    if (v7)
    {
      v28 = (v7 & 7) == 4;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v32;
      }

      return 0;
    }

    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v6 = v32;
    }

    v27 = sub_1952690(v7, v30, v6, a3);
LABEL_46:
    v32 = v27;
    if (!v27)
    {
      return 0;
    }

LABEL_47:
    ;
  }

  return v32;
}

char *sub_149CAE0(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
    *v4 = 26;
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

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 56);
  *v4 = 34;
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

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) != 0)
  {
LABEL_17:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 64);
    *v4 = 42;
    v14 = *(v13 + 20);
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v4 + 1);
    }

    else
    {
      v15 = v4 + 2;
    }

    v4 = sub_14589F4(v13, v15, a3);
  }

LABEL_23:
  v16 = *(a1 + 32);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v18 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 50;
      v19 = *(v18 + 20);
      v4[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, v4 + 1);
      }

      else
      {
        v20 = v4 + 2;
      }

      v4 = sub_149C26C(v18, v20, a3);
    }
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v4;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if ((*a3 - v4) >= v24)
  {
    v26 = v24;
    memcpy(v4, v25, v24);
    v4 += v26;
    return v4;
  }

  return sub_1957130(a3, v25, v24, v4);
}

uint64_t sub_149CD5C(uint64_t a1)
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
      v7 = sub_149C414(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v12 = sub_1458DB4(*(a1 + 48));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v13 = sub_1458DB4(*(a1 + 56));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v9 = sub_1458DB4(*(a1 + 64));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v10 = *(a1 + 8);
  if (v10)
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_149CEAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156729C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 48);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_14BAE64(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_2771738;
      }

      sub_144EF20(v10, v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v14 = *(a1 + 56);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_14BAE64(v16);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &off_2771738;
    }

    sub_144EF20(v14, v17);
    if ((v9 & 4) != 0)
    {
LABEL_25:
      *(a1 + 16) |= 4u;
      v18 = *(a1 + 64);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        sub_14BAE64(v20);
        *(a1 + 64) = v18;
      }

      if (*(a2 + 64))
      {
        v21 = *(a2 + 64);
      }

      else
      {
        v21 = &off_2771738;
      }

      sub_144EF20(v18, v21);
    }
  }

LABEL_33:
  v22 = *(a2 + 8);
  if (v22)
  {

    sub_1957EF4((a1 + 8), (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_149D054(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_149C600(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_144F560(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_149D0F0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E6640;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = &qword_278E990;
  *(a1 + 88) = &qword_278E990;
  *(a1 + 96) = &qword_278E990;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 180) = 1;
  return a1;
}

void sub_149D194(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_149D1C4(void *a1)
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

  sub_149D258(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_149D258(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = (a1 + 72);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  result = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27731C8)
  {
    if (*(a1 + 104))
    {
      sub_16E4E08();
      operator delete();
    }

    v5 = *(a1 + 112);
    if (v5)
    {
      sub_149C674(v5);
      operator delete();
    }

    result = *(a1 + 120);
    if (result)
    {
      sub_14B64B0(result);

      operator delete();
    }
  }

  return result;
}

void sub_149D358(void *a1)
{
  sub_149D1C4(a1);

  operator delete();
}

uint64_t sub_149D390(uint64_t a1)
{
  sub_1951124((a1 + 16));
  result = sub_12A41D0(a1 + 48);
  v3 = *(a1 + 40);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_26:
    v8 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_34:
    result = sub_16E4E44(*(a1 + 104));
    if ((v3 & 0x20) == 0)
    {
LABEL_8:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_35;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_22:
  v7 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_30:
  v9 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

LABEL_7:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  result = sub_149C79C(*(a1 + 112));
  if ((v3 & 0x40) != 0)
  {
LABEL_9:
    result = sub_144E6A8(*(a1 + 120));
  }

LABEL_10:
  *(a1 + 128) = 0;
  if ((v3 & 0xFF00) != 0)
  {
    *(a1 + 168) = 0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
  }

  if ((v3 & 0x30000) != 0)
  {
    *(a1 + 176) = 1;
    *(a1 + 180) = 1;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_149D528(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v79 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v79, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v79 + 1);
    v8 = **v79;
    if (**v79 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v79, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v79 + 2);
      }
    }

    *v79 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 0x10u;
        v11 = *(a1 + 104);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v11 = sub_16F5828(v13);
          *(a1 + 104) = v11;
          v7 = *v79;
        }

        v14 = sub_21F4D60(a3, v11, v7);
        goto LABEL_86;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 1u;
        v48 = *(a1 + 8);
        v30 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v30 = *v30;
        }

        v31 = (a1 + 72);
        goto LABEL_85;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 2u;
        v38 = *(a1 + 8);
        v30 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v30 = *v30;
        }

        v31 = (a1 + 80);
        goto LABEL_85;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_112;
        }

        v42 = (v7 + 1);
        v43 = *v7;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_67;
        }

        v44 = *v42;
        v45 = (v44 << 7) + v43;
        LODWORD(v43) = v45 - 128;
        if (v44 < 0)
        {
          *v79 = sub_19587DC(v7, (v45 - 128));
          if (!*v79)
          {
            goto LABEL_143;
          }

          LODWORD(v43) = v74;
        }

        else
        {
          v42 = (v7 + 2);
LABEL_67:
          *v79 = v42;
        }

        if (sub_144E270(v43))
        {
          *(a1 + 40) |= 0x100u;
          *(a1 + 136) = v43;
        }

        else
        {
          sub_12E8500();
        }

        goto LABEL_110;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 4u;
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v31 = (a1 + 88);
        goto LABEL_85;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 8u;
        v52 = *(a1 + 8);
        v30 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v30 = *v30;
        }

        v31 = (a1 + 96);
LABEL_85:
        v53 = sub_194DB04(v31, v30);
        v14 = sub_1958890(v53, *v79, a3);
        goto LABEL_86;
      case 7u:
        if (v8 != 57)
        {
          goto LABEL_112;
        }

        v57 = *v7;
        v46 = v7 + 8;
        v5 |= 0x80u;
        *(a1 + 128) = v57;
        goto LABEL_109;
      case 8u:
        if (v8 != 65)
        {
          goto LABEL_112;
        }

        v47 = *v7;
        v46 = v7 + 8;
        v5 |= 0x400u;
        *(a1 + 144) = v47;
        goto LABEL_109;
      case 9u:
        if (v8 != 73)
        {
          goto LABEL_112;
        }

        v64 = *v7;
        v46 = v7 + 8;
        v5 |= 0x800u;
        *(a1 + 152) = v64;
LABEL_109:
        *v79 = v46;
        goto LABEL_110;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_112;
        }

        v36 = (v7 + 1);
        v35 = *v7;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if (v37 < 0)
        {
          *v79 = sub_19587DC(v7, v35);
          if (!*v79)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v36 = (v7 + 2);
LABEL_51:
          *v79 = v36;
        }

        if ((v35 - 1) > 8)
        {
          sub_156E728();
        }

        else
        {
          *(a1 + 40) |= 0x10000u;
          *(a1 + 176) = v35;
        }

        goto LABEL_110;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_112;
        }

        v5 |= 0x200u;
        v61 = (v7 + 1);
        v62 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_106;
        }

        v63 = *v61;
        v62 = v62 + (v63 << 7) - 128;
        if (v63 < 0)
        {
          v77 = sub_1958770(v7, v62);
          *v79 = v77;
          *(a1 + 140) = v78;
          if (!v77)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v61 = (v7 + 2);
LABEL_106:
          *v79 = v61;
          *(a1 + 140) = v62;
        }

        goto LABEL_110;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_112;
        }

        v5 |= 0x1000u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if (v28 < 0)
        {
          v70 = sub_19587DC(v7, v26);
          *v79 = v70;
          *(a1 + 160) = v71 != 0;
          if (!v70)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v27 = (v7 + 2);
LABEL_35:
          *v79 = v27;
          *(a1 + 160) = v26 != 0;
        }

        goto LABEL_110;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_112;
        }

        v33 = (v7 + 1);
        v32 = *v7;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          *v79 = sub_19587DC(v7, v32);
          if (!*v79)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v33 = (v7 + 2);
LABEL_44:
          *v79 = v33;
        }

        if (v32 > 5)
        {
          sub_144E0C4();
        }

        else
        {
          *(a1 + 40) |= 0x2000u;
          *(a1 + 164) = v32;
        }

        goto LABEL_110;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 0x20u;
        v54 = *(a1 + 112);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_14BDDBC(v56);
          *(a1 + 112) = v54;
          v7 = *v79;
        }

        v14 = sub_2211360(a3, v54, v7);
        goto LABEL_86;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_112;
        }

        v5 |= 0x4000u;
        v23 = (v7 + 1);
        v24 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if (v25 < 0)
        {
          v68 = sub_1958770(v7, v24);
          *v79 = v68;
          *(a1 + 168) = v69;
          if (!v68)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v23 = (v7 + 2);
LABEL_30:
          *v79 = v23;
          *(a1 + 168) = v24;
        }

        goto LABEL_110;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_112;
        }

        v5 |= 0x20000u;
        v40 = (v7 + 1);
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v72 = sub_19587DC(v7, v39);
          *v79 = v72;
          *(a1 + 180) = v73 != 0;
          if (!v72)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v40 = (v7 + 2);
LABEL_62:
          *v79 = v40;
          *(a1 + 180) = v39 != 0;
        }

        goto LABEL_110;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_112;
        }

        v15 = (v7 - 2);
        while (1)
        {
          v16 = (v15 + 2);
          *v79 = v15 + 2;
          v17 = *(a1 + 64);
          if (v17 && (v18 = *(a1 + 56), v18 < *v17))
          {
            *(a1 + 56) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = *(a1 + 48);
            if (!v20)
            {
              operator new();
            }

            *v22 = v21;
            v22[1] = sub_195A650;
            *v21 = 0;
            v21[1] = 0;
            v21[2] = 0;
            v19 = sub_19593CC(a1 + 48, v21);
            v16 = *v79;
          }

          v15 = sub_1958890(v19, v16, a3);
          *v79 = v15;
          if (!v15)
          {
            goto LABEL_143;
          }

          if (*a3 <= v15 || *v15 != 394)
          {
            goto LABEL_110;
          }
        }

      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_112;
        }

        v5 |= 0x8000u;
        v49 = (v7 + 1);
        v50 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_80;
        }

        v51 = *v49;
        v50 = v50 + (v51 << 7) - 128;
        if (v51 < 0)
        {
          v75 = sub_1958770(v7, v50);
          *v79 = v75;
          *(a1 + 172) = v76;
          if (!v75)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v49 = (v7 + 2);
LABEL_80:
          *v79 = v49;
          *(a1 + 172) = v50;
        }

        goto LABEL_110;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_112;
        }

        *(a1 + 40) |= 0x40u;
        v58 = *(a1 + 120);
        if (!v58)
        {
          v59 = *(a1 + 8);
          v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
          if (v59)
          {
            v60 = *v60;
          }

          v58 = sub_14BF484(v60);
          *(a1 + 120) = v58;
          v7 = *v79;
        }

        v14 = sub_2209138(a3, v58, v7);
        goto LABEL_86;
      default:
LABEL_112:
        if (v8)
        {
          v65 = (v8 & 7) == 4;
        }

        else
        {
          v65 = 1;
        }

        if (!v65)
        {
          if (v8 - 8000 > 0x647)
          {
            v66 = *(a1 + 8);
            if (v66)
            {
              v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v67 = sub_11F1920((a1 + 8));
              v7 = *v79;
            }

            v14 = sub_1952690(v8, v67, v7, a3);
          }

          else
          {
            v14 = sub_19525AC((a1 + 16), v8, v7, &off_27731C8, (a1 + 8), a3);
          }

LABEL_86:
          *v79 = v14;
          if (!v14)
          {
            goto LABEL_143;
          }

LABEL_110:
          if (sub_195ADC0(a3, v79, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_143:
          *v79 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v79;
    }
  }
}

char *sub_149DD64(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 104);
    *v4 = 10;
    v9 = *(v8 + 44);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_16E5070(v8, v10, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      v4 = sub_128AEEC(a3, 3, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v6 & 0x100) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 136);
  *v4 = 32;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v12 >> 7);
        *v7++ = v12 >> 7;
        v13 = v12 >> 14;
        v12 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_21:
  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 5, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v7);
    if ((v6 & 8) == 0)
    {
LABEL_23:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_23;
  }

  v7 = sub_128AEEC(a3, 6, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v7);
  if ((v6 & 0x80) == 0)
  {
LABEL_24:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v15 = *(a1 + 128);
  *v7 = 57;
  *(v7 + 1) = v15;
  v7 += 9;
  if ((v6 & 0x400) == 0)
  {
LABEL_25:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_26;
    }

LABEL_36:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 152);
    *v7 = 73;
    *(v7 + 1) = v17;
    v7 += 9;
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_33:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v16 = *(a1 + 144);
  *v7 = 65;
  *(v7 + 1) = v16;
  v7 += 9;
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_36;
  }

LABEL_26:
  if ((v6 & 0x10000) == 0)
  {
LABEL_27:
    v14 = v7;
    goto LABEL_46;
  }

LABEL_39:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v18 = *(a1 + 176);
  *v7 = 80;
  v7[1] = v18;
  if (v18 > 0x7F)
  {
    v7[1] = v18 | 0x80;
    v19 = v18 >> 7;
    v7[2] = v18 >> 7;
    v14 = v7 + 3;
    if (v18 >= 0x4000)
    {
      LOBYTE(v20) = v7[2];
      do
      {
        *(v14 - 1) = v20 | 0x80;
        v20 = v19 >> 7;
        *v14++ = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }
  }

  else
  {
    v14 = v7 + 2;
  }

LABEL_46:
  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v23 = *(a1 + 140);
    *v14 = 88;
    v14[1] = v23;
    if (v23 > 0x7F)
    {
      v14[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v14[2] = v23 >> 7;
      v22 = v14 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v14[2];
        do
        {
          *(v22 - 1) = v25 | 0x80;
          v25 = v24 >> 7;
          *v22++ = v24 >> 7;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v22 = v14 + 2;
    }
  }

  else
  {
    v22 = v14;
  }

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 160);
    *v22 = 96;
    v22[1] = v27;
    v22 += 2;
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v29 = *(a1 + 164);
    *v22 = 104;
    v22[1] = v29;
    if (v29 > 0x7F)
    {
      v22[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v22[2] = v29 >> 7;
      v28 = v22 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v22) = v22[2];
        do
        {
          *(v28 - 1) = v22 | 0x80;
          v22 = (v30 >> 7);
          *v28++ = v30 >> 7;
          v31 = v30 >> 14;
          v30 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v28 = v22 + 2;
    }
  }

  else
  {
    v28 = v22;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v32 = *(a1 + 112);
    *v28 = 114;
    v33 = *(v32 + 20);
    v28[1] = v33;
    if (v33 > 0x7F)
    {
      v34 = sub_19575D0(v33, v28 + 1);
    }

    else
    {
      v34 = v28 + 2;
    }

    v28 = sub_149CAE0(v32, v34, a3);
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v36 = *(a1 + 168);
    *v28 = 120;
    v28[1] = v36;
    if (v36 > 0x7F)
    {
      v28[1] = v36 | 0x80;
      v37 = v36 >> 7;
      v28[2] = v36 >> 7;
      v35 = v28 + 3;
      if (v36 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v35 - 1) = v28 | 0x80;
          LODWORD(v28) = v37 >> 7;
          *v35++ = v37 >> 7;
          v38 = v37 >> 14;
          v37 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v35 = v28 + 2;
    }
  }

  else
  {
    v35 = v28;
  }

  if ((v6 & 0x20000) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v39 = *(a1 + 180);
    *v35 = 384;
    v35[2] = v39;
    v35 += 3;
  }

  v40 = *(a1 + 56);
  if (v40 >= 1)
  {
    v41 = 8;
    do
    {
      v42 = *(*(a1 + 64) + v41);
      v43 = *(v42 + 23);
      if (v43 < 0 && (v43 = v42[1], v43 > 127) || (*a3 - v35 + 13) < v43)
      {
        v35 = sub_1957480(a3, 17, v42, v35);
      }

      else
      {
        *v35 = 394;
        v35[2] = v43;
        if (*(v42 + 23) < 0)
        {
          v42 = *v42;
        }

        v44 = v35 + 3;
        memcpy(v35 + 3, v42, v43);
        v35 = &v44[v43];
      }

      v41 += 8;
      --v40;
    }

    while (v40);
  }

  if ((v6 & 0x8000) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v46 = *(a1 + 172);
    *v35 = 400;
    v35[2] = v46;
    if (v46 > 0x7F)
    {
      v35[2] = v46 | 0x80;
      v47 = v46 >> 7;
      v35[3] = v46 >> 7;
      v45 = v35 + 4;
      if (v46 >= 0x4000)
      {
        LOBYTE(v48) = v35[3];
        do
        {
          *(v45 - 1) = v48 | 0x80;
          v48 = v47 >> 7;
          *v45++ = v47 >> 7;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
      }
    }

    else
    {
      v45 = v35 + 3;
    }
  }

  else
  {
    v45 = v35;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v50 = *(a1 + 120);
    *v45 = 410;
    v51 = *(v50 + 44);
    v45[2] = v51;
    if (v51 > 0x7F)
    {
      v52 = sub_19575D0(v51, v45 + 2);
    }

    else
    {
      v52 = v45 + 3;
    }

    v45 = sub_14B6D24(v50, v52, a3);
  }

  if (*(a1 + 26))
  {
    v45 = sub_1953428(a1 + 16, 1000, 1201, v45, a3);
  }

  v53 = *(a1 + 8);
  if ((v53 & 1) == 0)
  {
    return v45;
  }

  v55 = v53 & 0xFFFFFFFFFFFFFFFCLL;
  v56 = *(v55 + 31);
  if (v56 < 0)
  {
    v57 = *(v55 + 8);
    v56 = *(v55 + 16);
  }

  else
  {
    v57 = (v55 + 8);
  }

  if ((*a3 - v45) >= v56)
  {
    v58 = v56;
    memcpy(v45, v57, v56);
    v45 += v58;
    return v45;
  }

  return sub_1957130(a3, v57, v56, v45);
}

uint64_t sub_149E4E4(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + 2 * v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 64) + 8);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 40);
  if (*(a1 + 40))
  {
    if (v9)
    {
      v13 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v9 & 2) == 0)
      {
LABEL_9:
        if ((v9 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_27;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_9;
    }

    v16 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 4) == 0)
    {
LABEL_10:
      if ((v9 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_27:
    v19 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 8) == 0)
    {
LABEL_11:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }

LABEL_30:
    v22 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(v22 + 23);
    v24 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v24 = v23;
    }

    v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x10) == 0)
    {
LABEL_12:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_34;
    }

LABEL_33:
    v25 = sub_16E51F0(*(a1 + 104));
    v4 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x20) == 0)
    {
LABEL_13:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_34:
    v26 = sub_149CD5C(*(a1 + 112));
    v4 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x40) == 0)
    {
LABEL_15:
      if ((v9 & 0x80) != 0)
      {
        v4 += 9;
      }

      goto LABEL_17;
    }

LABEL_14:
    v10 = sub_14B71B8(*(a1 + 120));
    v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
    goto LABEL_15;
  }

LABEL_17:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v9 & 0x100) != 0)
  {
    v11 = *(a1 + 136);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v12;
  }

  if ((v9 & 0x200) != 0)
  {
    v4 += ((9 * (__clz(*(a1 + 140) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v27 = v4 + 9;
  if ((v9 & 0x400) == 0)
  {
    v27 = v4;
  }

  if ((v9 & 0x800) != 0)
  {
    v27 += 9;
  }

  v4 = v27 + ((v9 >> 11) & 2);
  if ((v9 & 0x2000) != 0)
  {
    v30 = *(a1 + 164);
    v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v30 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 11;
    }

    v4 += v32;
    if ((v9 & 0x4000) == 0)
    {
LABEL_46:
      if ((v9 & 0x8000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  else if ((v9 & 0x4000) == 0)
  {
    goto LABEL_46;
  }

  v4 += ((9 * (__clz(*(a1 + 168) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x8000) != 0)
  {
LABEL_47:
    v4 += ((9 * (__clz(*(a1 + 172) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_48:
  if ((v9 & 0x30000) != 0)
  {
    if ((v9 & 0x10000) != 0)
    {
      v28 = *(a1 + 176);
      if (v28 < 0)
      {
        v29 = 11;
      }

      else
      {
        v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v29;
    }

    if ((v9 & 0x20000) != 0)
    {
      v4 += 3;
    }
  }

  v33 = *(a1 + 8);
  if (v33)
  {
    v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v36 < 0)
    {
      v36 = *(v35 + 16);
    }

    v4 += v36;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_149E8CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48(a1 + 48, v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if (v9)
  {
    if (v9)
    {
      v11 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 72), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_42;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 80);
    *(a1 + 40) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 80), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }

LABEL_42:
    v17 = *(a2 + 88);
    *(a1 + 40) |= 4u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 88), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_48;
    }

LABEL_45:
    v20 = *(a2 + 96);
    *(a1 + 40) |= 8u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 96), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_56;
    }

LABEL_48:
    *(a1 + 40) |= 0x10u;
    v23 = *(a1 + 104);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5828(v25);
      *(a1 + 104) = v23;
    }

    if (*(a2 + 104))
    {
      v26 = *(a2 + 104);
    }

    else
    {
      v26 = &off_277E5E8;
    }

    sub_16E527C(v23, v26);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_64;
    }

LABEL_56:
    *(a1 + 40) |= 0x20u;
    v27 = *(a1 + 112);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_14BDDBC(v29);
      *(a1 + 112) = v27;
    }

    if (*(a2 + 112))
    {
      v30 = *(a2 + 112);
    }

    else
    {
      v30 = &off_2773180;
    }

    sub_149CEAC(v27, v30);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 40) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_14;
    }

LABEL_64:
    *(a1 + 40) |= 0x40u;
    v31 = *(a1 + 120);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_14BF484(v33);
      *(a1 + 120) = v31;
    }

    if (*(a2 + 120))
    {
      v34 = *(a2 + 120);
    }

    else
    {
      v34 = &off_2773AC8;
    }

    sub_144F194(v31, v34);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 136) = *(a2 + 136);
    if ((v9 & 0x200) == 0)
    {
LABEL_18:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_75;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  *(a1 + 140) = *(a2 + 140);
  if ((v9 & 0x400) == 0)
  {
LABEL_19:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a1 + 144) = *(a2 + 144);
  if ((v9 & 0x800) == 0)
  {
LABEL_20:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a1 + 152) = *(a2 + 152);
  if ((v9 & 0x1000) == 0)
  {
LABEL_21:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a1 + 160) = *(a2 + 160);
  if ((v9 & 0x2000) == 0)
  {
LABEL_22:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

LABEL_79:
    *(a1 + 168) = *(a2 + 168);
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_78:
  *(a1 + 164) = *(a2 + 164);
  if ((v9 & 0x4000) != 0)
  {
    goto LABEL_79;
  }

LABEL_23:
  if ((v9 & 0x8000) != 0)
  {
LABEL_24:
    *(a1 + 172) = *(a2 + 172);
  }

LABEL_25:
  *(a1 + 40) |= v9;
LABEL_26:
  if ((v9 & 0x30000) != 0)
  {
    if ((v9 & 0x10000) != 0)
    {
      *(a1 + 176) = *(a2 + 176);
    }

    if ((v9 & 0x20000) != 0)
    {
      *(a1 + 180) = *(a2 + 180);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_149EC4C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_149D390(a1);

    sub_149E8CC(a1, a2);
  }
}

uint64_t sub_149EC98(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 0x10) != 0)
    {
      result = sub_16E5370(*(a1 + 104));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20) != 0)
    {
      result = sub_149D054(*(a1 + 112));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) == 0)
    {
      return 1;
    }

    result = sub_144F5D0(*(a1 + 120));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_149ED14(uint64_t a1)
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
  if (a1 != &off_2773280)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_149D1C4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_149EDCC(uint64_t a1)
{
  sub_149ED14(a1);

  operator delete();
}

uint64_t sub_149EE04(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_149D390(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_149EE64(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v24 + 1;
    v8 = *v24;
    if (*v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v24 + 2;
      }
    }

    v24 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_23:
      v24 = v16;
      *(a1 + 32) = v17;
      goto LABEL_30;
    }

    v22 = sub_1958770(v7, v17);
    v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
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

      v19 = sub_14BDE5C(v21);
      *(a1 + 24) = v19;
      v7 = v24;
    }

    v15 = sub_21F6500(a3, v19, v7);
LABEL_29:
    v24 = v15;
    if (!v15)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

LABEL_12:
  if (v8)
  {
    v12 = (v8 & 7) == 4;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_29;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_37:
  v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

char *sub_149F03C(uint64_t a1, char *__dst, unint64_t *a3)
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
    v7 = *(v6 + 44);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_149DD64(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
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

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v9;
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

  if ((*a3 - v9) >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_149F1C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_149E4E4(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    result += v7;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_149F284(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v5 = *(a1 + 24);
      if (!v5)
      {
        v6 = *(a1 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = sub_14BDE5C(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_27731C8;
      }

      sub_149E8CC(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 16) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_149F354(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_149EC98(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_149F394(uint64_t a1)
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

  if (a1 != &off_27732A8)
  {
    if (*(a1 + 48))
    {
      sub_16E8374();
      operator delete();
    }

    if (*(a1 + 56))
    {
      sub_16E8374();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_140996C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_149F470(uint64_t a1)
{
  sub_149F394(a1);

  operator delete();
}

uint64_t sub_149F4A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E48B0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = sub_16E48B0(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_16E48B0(*(v1 + 56));
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

char *sub_149F54C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v28, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v28 + 1;
    v7 = *v28;
    if (*v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v28 + 2;
      }
    }

    v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 4)
    {
      if (v7 == 34)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v28 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_16F5BD8(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v28;
          }

          v19 = sub_21F7188(a3, v23, v20);
          v28 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 34)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 56);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_16F5BD8(v18);
          *(a1 + 56) = v16;
LABEL_39:
          v6 = v28;
        }

LABEL_40:
        v15 = sub_21F7188(a3, v16, v6);
        goto LABEL_41;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 48);
      if (!v16)
      {
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v16 = sub_16F5BD8(v26);
        *(a1 + 48) = v16;
        goto LABEL_39;
      }

      goto LABEL_40;
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
        return v28;
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
      v6 = v28;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_41:
    v28 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  return v28;
}

char *sub_149F77C(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
    *v4 = 18;
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_16E886C(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 56);
    *v4 = 26;
    v11 = *(v10 + 44);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_16E886C(v10, v12, a3);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 34;
      v16 = *(v15 + 44);
      v4[1] = v16;
      if (v16 > 0x7F)
      {
        v17 = sub_19575D0(v16, v4 + 1);
      }

      else
      {
        v17 = v4 + 2;
      }

      v4 = sub_16E886C(v15, v17, a3);
    }
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v21)
  {
    v23 = v21;
    memcpy(v4, v22, v21);
    v4 += v23;
    return v4;
  }

  return sub_1957130(a3, v22, v21, v4);
}

uint64_t sub_149F988(uint64_t a1)
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
      v7 = sub_16E8DA4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = sub_16E8DA4(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_16E8DA4(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

void sub_149FA9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1409AF8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 48);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_16F5BD8(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E738;
      }

      sub_16E4964(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v14 = *(a1 + 56);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_16F5BD8(v16);
        *(a1 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_277E738;
      }

      sub_16E4964(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}