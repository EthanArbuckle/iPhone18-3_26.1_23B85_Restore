uint64_t sub_173295C(uint64_t a1)
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

  if (a1 != &off_2780320)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1732584(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_173321C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1732A34(uint64_t a1)
{
  sub_173295C(a1);

  operator delete();
}

uint64_t sub_1732A6C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1733324(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1733368(*(v1 + 32));
    }
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

char *sub_1732ADC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
  {
    return v28;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v28 + 1;
    v8 = *v28;
    if (*v28 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v28, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v28 + 2;
      }
    }

    v28 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 == 5)
    {
      if (v8 == 42)
      {
        *(a1 + 16) |= 2u;
        v24 = *(a1 + 48);
        if (!v24)
        {
          v25 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v6)
          {
            v25 = *v25;
          }

          v24 = sub_1735174(v25);
          *(a1 + 48) = v24;
          v7 = v28;
        }

        v23 = sub_2239934(a3, v24, v7);
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 != 3)
    {
      goto LABEL_42;
    }

    if (v8 == 24)
    {
      v13 = v7 - 1;
      while (1)
      {
        v28 = v13 + 1;
        v14 = v13[1];
        v15 = v13 + 2;
        if (v14 < 0)
        {
          v16 = *v15;
          v17 = (v16 << 7) + v14;
          LODWORD(v14) = v17 - 128;
          if (v16 < 0)
          {
            v28 = sub_19587DC((v13 + 1), (v17 - 128));
            if (!v28)
            {
              return 0;
            }

            LODWORD(v14) = v20;
            goto LABEL_17;
          }

          v15 = v13 + 3;
        }

        v28 = v15;
LABEL_17:
        if (v14 > 7)
        {
          sub_1313740();
        }

        else
        {
          v18 = *(a1 + 24);
          if (v18 == *(a1 + 28))
          {
            v19 = v18 + 1;
            sub_1958E5C((a1 + 24), v18 + 1);
            *(*(a1 + 32) + 4 * v18) = v14;
          }

          else
          {
            *(*(a1 + 32) + 4 * v18) = v14;
            v19 = v18 + 1;
          }

          *(a1 + 24) = v19;
        }

        v13 = v28;
        if (*a3 <= v28 || *v28 != 24)
        {
          goto LABEL_50;
        }
      }
    }

    if (v8 != 26)
    {
      goto LABEL_42;
    }

    *&v29 = a1 + 24;
    *(&v29 + 1) = sub_172A450;
    v30 = a1 + 8;
    v31 = 3;
    v23 = sub_1216588(a3, v7, &v29);
LABEL_49:
    v28 = v23;
    if (!v23)
    {
      return 0;
    }

LABEL_50:
    if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
    {
      return v28;
    }
  }

  if (v8 == 34)
  {
    *(a1 + 16) |= 1u;
    v21 = *(a1 + 40);
    if (!v21)
    {
      v22 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v6)
      {
        v22 = *v22;
      }

      v21 = sub_173505C(v22);
      *(a1 + 40) = v21;
      v7 = v28;
    }

    v23 = sub_22398A4(a3, v21, v7);
    goto LABEL_49;
  }

LABEL_42:
  if (v8)
  {
    v26 = (v8 & 7) == 4;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    if (*v6)
    {
      v27 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = v28;
    }

    v23 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_49;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return v28;
}

char *sub_1732DCC(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 24);
  if (v5 < 1)
  {
    v8 = a2;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v7 = *(*(a1 + 32) + 4 * i);
      *a2 = 24;
      a2[1] = v7;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v9 = v7 >> 7;
        a2[2] = v7 >> 7;
        v8 = a2 + 3;
        if (v7 >= 0x4000)
        {
          LOBYTE(v10) = a2[2];
          do
          {
            *(v8 - 1) = v10 | 0x80;
            v10 = v9 >> 7;
            *v8++ = v9 >> 7;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
        }
      }

      else
      {
        v8 = a2 + 2;
      }

      a2 = v8;
    }
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v13 = *(a1 + 40);
    *v8 = 34;
    v14 = *(v13 + 20);
    v8[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v8 + 1);
    }

    else
    {
      v15 = v8 + 2;
    }

    v8 = sub_17327BC(v13, v15, a3);
  }

  if ((v12 & 2) != 0)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v16 = *(a1 + 48);
    *v8 = 42;
    v17 = *(v16 + 20);
    v8[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v8 + 1);
    }

    else
    {
      v18 = v8 + 2;
    }

    v8 = sub_173356C(v16, v18, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v8;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if ((*a3 - v8) >= v22)
  {
    v24 = v22;
    memcpy(v8, v23, v22);
    v8 += v24;
    return v8;
  }

  return sub_1957130(a3, v23, v22, v8);
}

uint64_t sub_1732FE8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4 + v2;
  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = sub_17328E4(*(a1 + 40));
      v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_17336E8(*(a1 + 48));
      v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v7 += v14;
  }

  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_1733100(std::string *result, uint64_t a2)
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

        data = sub_17351F0(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2780380;
      }

      result = sub_132DE2C(data, v8);
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

        v9 = sub_1735274(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_27803A0;
      }

      result = sub_1645A7C(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_173321C(uint64_t a1)
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

  if (a1 != &off_2780358)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_17337D0(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1733B3C(v6);
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

void sub_17332EC(uint64_t a1)
{
  sub_173321C(a1);

  operator delete();
}

uint64_t sub_1733324(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1733368(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_17333C0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v21 + 1;
    v7 = *v21;
    if (*v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v21 + 2;
      }
    }

    v21 = v6;
    if (v7 >> 3 == 5)
    {
      if (v7 == 42)
      {
        *(a1 + 16) |= 2u;
        v14 = *(a1 + 32);
        if (!v14)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v14 = sub_1735274(v16);
          *(a1 + 32) = v14;
          v6 = v21;
        }

        v13 = sub_2239A54(a3, v14, v6);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 4 && v7 == 34)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_17351F0(v12);
        *(a1 + 24) = v10;
        v6 = v21;
      }

      v13 = sub_22399C4(a3, v10, v6);
      goto LABEL_28;
    }

    if (v7)
    {
      v17 = (v7 & 7) == 4;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v21;
      }

      return 0;
    }

    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v19 = sub_11F1920((a1 + 8));
      v6 = v21;
    }

    v13 = sub_1952690(v7, v19, v6, a3);
LABEL_28:
    v21 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v21;
}

char *sub_173356C(uint64_t a1, unint64_t __dst, unint64_t *a3)
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
    *v4 = 34;
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

    v4 = sub_17339E0(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 42;
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

    v4 = sub_1733E64(v10, v12, a3);
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

uint64_t sub_17336E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_1733AA8(*(a1 + 24));
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
    v5 = sub_1734040(*(a1 + 32));
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

uint64_t sub_17337D0(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1733870(uint64_t a1)
{
  sub_17337D0(a1);

  operator delete();
}

uint64_t sub_17338A8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v18 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v18, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v18 + 1);
    v7 = **v18;
    if (**v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v18 + 2);
      }
    }

    *v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v16 = sub_194DB04((a1 + 24), v15);
      v13 = sub_1958890(v16, *v18, a3);
    }

    else
    {
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return *v18;
        }

LABEL_24:
        *v18 = 0;
        return *v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = *v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    *v18 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  return *v18;
}

char *sub_17339E0(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if (*a3 - v4 >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}

uint64_t sub_1733AA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v1 += v8;
  }

  *(a1 + 20) = v1;
  return v1;
}

void *sub_1733B3C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1733BB8(void *a1)
{
  sub_1733B3C(a1);

  operator delete();
}

uint64_t sub_1733BF0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  if (sub_195ADC0(a3, v25, a3[11].i32[1]))
  {
    return *v25;
  }

  while (1)
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
      if (v7 != 16)
      {
        goto LABEL_12;
      }

      v15 = v6 + 1;
      v14 = *v6;
      if (v14 < 0)
      {
        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          *v25 = sub_19587DC(v6, v14);
          if (!*v25)
          {
            goto LABEL_45;
          }

          goto LABEL_25;
        }

        v15 = v6 + 2;
      }

      *v25 = v15;
LABEL_25:
      if (v14 > 2)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v14;
      }

      goto LABEL_37;
    }

    if (v7 >> 3 == 1 && v7 == 10)
    {
      v17 = v6 - 1;
      while (1)
      {
        v18 = (v17 + 1);
        *v25 = v17 + 1;
        v19 = *(a1 + 40);
        if (v19 && (v20 = *(a1 + 32), v20 < *v19))
        {
          *(a1 + 32) = v20 + 1;
          v21 = *&v19[2 * v20 + 2];
        }

        else
        {
          v22 = *(a1 + 24);
          if (!v22)
          {
            operator new();
          }

          *v24 = v23;
          v24[1] = sub_195A650;
          *v23 = 0;
          v23[1] = 0;
          v23[2] = 0;
          v21 = sub_19593CC(a1 + 24, v23);
          v18 = *v25;
        }

        v17 = sub_1958890(v21, v18, a3);
        *v25 = v17;
        if (!v17)
        {
          goto LABEL_45;
        }

        if (*a3 <= v17 || *v17 != 10)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_12:
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
      v6 = *v25;
    }

    *v25 = sub_1952690(v7, v13, v6, a3);
    if (!*v25)
    {
      goto LABEL_45;
    }

LABEL_37:
    if (sub_195ADC0(a3, v25, a3[11].i32[1]))
    {
      return *v25;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v25;
  }

LABEL_45:
  *v25 = 0;
  return *v25;
}

char *sub_1733E64(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - __dst + 14 < v9)
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

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      __dst[1] = v12 | 0x80;
      v13 = v12 >> 7;
      __dst[2] = v12 >> 7;
      v11 = __dst + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v14) = __dst[2];
        do
        {
          *(v11 - 1) = v14 | 0x80;
          v14 = v13 >> 7;
          *v11++ = v13 >> 7;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v11 = __dst + 2;
    }
  }

  else
  {
    v11 = __dst;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v19)
  {
    v21 = v19;
    memcpy(v11, v20, v19);
    v11 += v21;
    return v11;
  }

  return sub_1957130(a3, v20, v19, v11);
}

uint64_t sub_1734040(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v2 = (*(a1 + 40) + 8);
    v3 = *(a1 + 32);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  if (*(a1 + 16))
  {
    v7 = *(a1 + 48);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v8;
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

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1734120(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1763358(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17341A0(void *a1)
{
  sub_1734120(a1);

  operator delete();
}

char *sub_17341D8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 4)
    {
      break;
    }

    if (v8 != 32)
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
      *(a1 + 52) = v19 != 0;
      goto LABEL_39;
    }

    v30 = sub_19587DC(v7, v19);
    v32 = v30;
    *(a1 + 52) = v31 != 0;
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

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 1u;
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
      v32 = v16;
      *(a1 + 48) = v17;
      goto LABEL_39;
    }

    v28 = sub_1958770(v7, v17);
    v32 = v28;
    *(a1 + 48) = v29;
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
        v27 = sub_1734890(*(a1 + 24));
        v26 = sub_19593CC(a1 + 24, v27);
        v23 = v32;
      }

      v22 = sub_2238EEC(a3, v26, v23);
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

char *sub_1734460(uint64_t a1, char *__dst, unint64_t *a3)
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
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_172B370(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 48);
    *__dst = 24;
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      __dst[1] = v13 | 0x80;
      v14 = v13 >> 7;
      __dst[2] = v13 >> 7;
      v12 = __dst + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v12 - 1) = __dst | 0x80;
          LODWORD(__dst) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = __dst + 2;
    }
  }

  else
  {
    v12 = __dst;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v16 = *(a1 + 52);
    *v12 = 32;
    v12[1] = v16;
    v12 += 2;
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v20)
  {
    v22 = v20;
    memcpy(v12, v21, v20);
    v12 += v22;
    return v12;
  }

  return sub_1957130(a3, v21, v20, v12);
}

uint64_t sub_1734658(uint64_t a1)
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
      v7 = sub_172B558(v6);
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
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8 & 2;
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

uint64_t sub_173474C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2704A08;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_17347F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2704A88;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1734890(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2704B08;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

double sub_1734938(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2704B88;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  return result;
}

void *sub_17349B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2704C08;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_1734A54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2704C88;
  *(result + 16) = 0;
  return result;
}

void *sub_1734ACC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2704D08;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[6] = 0;
  result[7] = 0;
  result[5] = 0;
  return result;
}

void *sub_1734B58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2704D88;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_1734BDC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2704E08;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1734C7C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2704E88;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

void *sub_1734D04(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2704F08;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = 0;
  result[9] = 0;
  return result;
}

void *sub_1734DAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2704F88;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_1734E34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2705008;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1734EB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2705088;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1734F2C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2705108;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_1734FD0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2705188;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

void *sub_173505C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2705208;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_17350D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2705288;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[5] = 0;
  result[6] = 0;
  result[4] = a1;
  return result;
}

void *sub_1735174(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2705308;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_17351F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2705388;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_1735274(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2705408;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_1735310(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2705488;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  *(result + 45) = 0;
  return result;
}

uint64_t sub_17353B8(uint64_t a1)
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

  sub_173543C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_173543C(uint64_t (***result)()))()
{
  if (result != &off_2780410)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_1737FB8(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_1738604(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_1736A40(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_1736280(result);

      operator delete();
    }
  }

  return result;
}

void sub_1735508(uint64_t a1)
{
  sub_17353B8(a1);

  operator delete();
}

uint64_t sub_1735540(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1736FB8(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1737A08(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_17355B4(uint64_t result)
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
  result = sub_1736FB8(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_16E4E44(*(v1 + 40));
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 48) = 0x100000000;
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

uint64_t sub_1735674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_17356F0(uint64_t a1)
{
  *(a1 + 24) = 0;
  if ((*(a1 + 16) & 7) != 0)
  {
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

char *sub_1735718(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v26 = v6 + 1;
          v25 = *v6;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v32 = sub_19587DC(v6, v25);
            if (!v32)
            {
              return 0;
            }
          }

          else
          {
            v26 = v6 + 2;
LABEL_44:
            v32 = v26;
          }

          if (v25 > 2)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 56) = v25;
          }

          continue;
        }

LABEL_47:
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

        v14 = sub_1952690(v7, v30, v6, a3);
        goto LABEL_54;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_47;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 24);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_1739120(v18);
        *(a1 + 24) = v16;
        v6 = v32;
      }

      v14 = sub_2239AE4(a3, v16, v6);
    }

    else if (v10 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_47;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 32);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_17391A0(v21);
        *(a1 + 32) = v19;
        v6 = v32;
      }

      v14 = sub_2239B74(a3, v19, v6);
    }

    else if (v10 == 4)
    {
      if (v7 != 34)
      {
        goto LABEL_47;
      }

      *(a1 + 16) |= 4u;
      v22 = *(a1 + 40);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_1738F80(v24);
        *(a1 + 40) = v22;
        v6 = v32;
      }

      v14 = sub_2239C04(a3, v22, v6);
    }

    else
    {
      if (v10 != 5 || v7 != 42)
      {
        goto LABEL_47;
      }

      *(a1 + 16) |= 8u;
      v11 = *(a1 + 48);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_1738EE8(v13);
        *(a1 + 48) = v11;
        v6 = v32;
      }

      v14 = sub_2239C94(a3, v11, v6);
    }

LABEL_54:
    v32 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v32;
}

char *sub_17359F4(uint64_t a1, char *__dst, unint64_t *a3)
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_17382F4(v11, v13, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
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

  v14 = *(a1 + 32);
  *v6 = 26;
  v15 = *(v14 + 20);
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v6 + 1);
  }

  else
  {
    v16 = v6 + 2;
  }

  v6 = sub_1738A30(v14, v16, a3);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

LABEL_27:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v17 = *(a1 + 40);
  *v6 = 34;
  v18 = *(v17 + 20);
  v6[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v6 + 1);
  }

  else
  {
    v19 = v6 + 2;
  }

  v6 = sub_1736CB0(v17, v19, a3);
  if ((v5 & 8) != 0)
  {
LABEL_33:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v20 = *(a1 + 48);
    *v6 = 42;
    v21 = *(v20 + 20);
    v6[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v6 + 1);
    }

    else
    {
      v22 = v6 + 2;
    }

    v6 = sub_17366FC(v20, v22, a3);
  }

LABEL_39:
  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v6;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = *(v25 + 31);
  if (v26 < 0)
  {
    v27 = *(v25 + 8);
    v26 = *(v25 + 16);
  }

  else
  {
    v27 = (v25 + 8);
  }

  if ((*a3 - v6) >= v26)
  {
    v28 = v26;
    memcpy(v6, v27, v26);
    v6 += v28;
    return v6;
  }

  return sub_1957130(a3, v27, v26, v6);
}

uint64_t sub_1735CC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (v2)
  {
    v4 = sub_17384F0(*(a1 + 24));
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
    v5 = sub_1738CD0(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_1736D98(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v7 = sub_1736950(*(a1 + 48));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v8 = *(a1 + 56);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v9;
LABEL_18:
  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1735E38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_1739004(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_27804A8;
      }

      sub_17376D0(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_17390A4(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_27804F0;
    }

    sub_1737E88(v10, v13);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1735F60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

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

      v9 = sub_1739004(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27804A8;
    }

    sub_17376D0(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }

LABEL_24:
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

      v13 = sub_16F5828(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_277E5E8;
    }

    sub_16E527C(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 52) = *(a2 + 52);
      goto LABEL_8;
    }

LABEL_32:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_17360D0(std::string *result, uint64_t a2)
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
    if (v8)
    {
      v3[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
LABEL_8:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[1].__r_.__value_.__s.__data_[17] = *(a2 + 41);
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17361BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1737874(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_1737F58(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1736208(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_1737874(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  v4 = *(a1 + 40);
  result = sub_195228C(v4 + 16);
  if (result)
  {
    return (~*(v4 + 40) & 3) == 0;
  }

  return result;
}

void *sub_1736280(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17362FC(void *a1)
{
  sub_1736280(a1);

  operator delete();
}

char *sub_1736334(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v41 + 1;
    v9 = *v41;
    if (*v41 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v41, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v41 + 2;
      }
    }

    v41 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 <= 2)
    {
      break;
    }

    if (v13 != 3)
    {
      if (v13 != 4 || v9 != 32)
      {
        goto LABEL_58;
      }

      v18 = v8 + 1;
      v19 = *v8;
      if (v19 < 0)
      {
        v20 = *v18;
        v21 = (v20 << 7) + v19;
        LODWORD(v19) = v21 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v18 = v8 + 2;
          goto LABEL_25;
        }

        v41 = sub_19587DC(v8, (v21 - 128));
        if (!v41)
        {
          goto LABEL_72;
        }

        LODWORD(v19) = v33;
      }

      else
      {
LABEL_25:
        v41 = v18;
      }

      if (sub_1470AE4(v19))
      {
        *(a1 + 16) |= 4u;
        *(a1 + 44) = v19;
      }

      else
      {
        sub_12E8500();
      }

      goto LABEL_66;
    }

    if (v9 != 24)
    {
      goto LABEL_58;
    }

    v5 |= 2u;
    v31 = v8 + 1;
    v30 = *v8;
    if (v30 < 0)
    {
      v32 = *v31;
      v30 = (v32 << 7) + v30 - 128;
      if (v32 < 0)
      {
        v36 = sub_19587DC(v8, v30);
        v41 = v36;
        *(a1 + 41) = v37 != 0;
        if (!v36)
        {
          goto LABEL_72;
        }

        goto LABEL_66;
      }

      v31 = v8 + 2;
    }

    v41 = v31;
    *(a1 + 41) = v30 != 0;
LABEL_66:
    if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 != 1)
  {
    if (v13 != 2 || v9 != 16)
    {
      goto LABEL_58;
    }

    v5 |= 1u;
    v16 = v8 + 1;
    v15 = *v8;
    if (v15 < 0)
    {
      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if (v17 < 0)
      {
        v34 = sub_19587DC(v8, v15);
        v41 = v34;
        *(a1 + 40) = v35 != 0;
        if (!v34)
        {
          goto LABEL_72;
        }

        goto LABEL_66;
      }

      v16 = v8 + 2;
    }

    v41 = v16;
    *(a1 + 40) = v15 != 0;
    goto LABEL_66;
  }

  if (v9 == 8)
  {
    v22 = v8 - 1;
    while (1)
    {
      v41 = v22 + 1;
      v23 = v22[1];
      v24 = v22 + 2;
      if (v23 < 0)
      {
        v25 = *v24;
        v26 = (v25 << 7) + v23;
        LODWORD(v23) = v26 - 128;
        if (v25 < 0)
        {
          v41 = sub_19587DC((v22 + 1), (v26 - 128));
          if (!v41)
          {
            goto LABEL_72;
          }

          LODWORD(v23) = v29;
          goto LABEL_34;
        }

        v24 = v22 + 3;
      }

      v41 = v24;
LABEL_34:
      if (v23 > 6)
      {
        sub_12E8450();
      }

      else
      {
        v27 = *(a1 + 24);
        if (v27 == *(a1 + 28))
        {
          v28 = v27 + 1;
          sub_1958E5C((a1 + 24), v27 + 1);
          *(*(a1 + 32) + 4 * v27) = v23;
        }

        else
        {
          *(*(a1 + 32) + 4 * v27) = v23;
          v28 = v27 + 1;
        }

        *(a1 + 24) = v28;
      }

      v22 = v41;
      if (*a3 <= v41 || *v41 != 8)
      {
        goto LABEL_66;
      }
    }
  }

  if (v9 == 10)
  {
    *&v42 = a1 + 24;
    *(&v42 + 1) = sub_17353AC;
    v43 = a1 + 8;
    v44 = 1;
    v38 = sub_1216588(a3, v8, &v42);
    goto LABEL_65;
  }

LABEL_58:
  if (v9)
  {
    v39 = (v9 & 7) == 4;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    if (*v7)
    {
      v40 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v40 = sub_11F1920((a1 + 8));
      v8 = v41;
    }

    v38 = sub_1952690(v9, v40, v8, a3);
LABEL_65:
    v41 = v38;
    if (!v38)
    {
      goto LABEL_72;
    }

    goto LABEL_66;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_72:
    v41 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_17366FC(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 24);
  if (v5 < 1)
  {
    v8 = a2;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v7 = *(*(a1 + 32) + 4 * i);
      *a2 = 8;
      a2[1] = v7;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v9 = v7 >> 7;
        a2[2] = v7 >> 7;
        v8 = a2 + 3;
        if (v7 >= 0x4000)
        {
          LOBYTE(v10) = a2[2];
          do
          {
            *(v8 - 1) = v10 | 0x80;
            v10 = v9 >> 7;
            *v8++ = v9 >> 7;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
        }
      }

      else
      {
        v8 = a2 + 2;
      }

      a2 = v8;
    }
  }

  v12 = *(a1 + 16);
  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v15 = *(a1 + 41);
    *v8 = 24;
    v8[1] = v15;
    v8 += 2;
    if ((v12 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (*a3 <= v8)
  {
    v8 = sub_225EB68(a3, v8);
  }

  v14 = *(a1 + 40);
  *v8 = 16;
  v8[1] = v14;
  v8 += 2;
  if ((v12 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((v12 & 4) == 0)
  {
LABEL_16:
    v13 = v8;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= v8)
  {
    v8 = sub_225EB68(a3, v8);
  }

  v16 = *(a1 + 44);
  *v8 = 32;
  v8[1] = v16;
  if (v16 > 0x7F)
  {
    v8[1] = v16 | 0x80;
    v17 = v16 >> 7;
    v8[2] = v16 >> 7;
    v13 = v8 + 3;
    if (v16 >= 0x4000)
    {
      LOBYTE(v8) = v8[2];
      do
      {
        *(v13 - 1) = v8 | 0x80;
        v8 = (v17 >> 7);
        *v13++ = v17 >> 7;
        v18 = v17 >> 14;
        v17 >>= 7;
      }

      while (v18);
    }
  }

  else
  {
    v13 = v8 + 2;
  }

LABEL_30:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v13;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if (*a3 - v13 >= v22)
  {
    v24 = v22;
    memcpy(v13, v23, v22);
    v13 += v24;
    return v13;
  }

  return sub_1957130(a3, v23, v22, v13);
}

uint64_t sub_1736950(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 32) + 4 * v2);
      if (v4 < 0)
      {
        v5 = 10;
      }

      else
      {
        v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v5;
      ++v2;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = 0;
  }

  v6 = v3 + v1;
  v7 = *(a1 + 16);
  if ((v7 & 7) != 0)
  {
    v6 += (v7 & 2) + 2 * (v7 & 1);
    if ((v7 & 4) != 0)
    {
      v8 = *(a1 + 44);
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v8 >= 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 11;
      }

      v6 += v10;
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

    v6 += v14;
  }

  *(a1 + 20) = v6;
  return v6;
}

uint64_t sub_1736A40(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1736AF8(uint64_t a1)
{
  sub_1736A40(a1);

  operator delete();
}

uint64_t sub_1736B30(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
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
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_1736CB0(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_1736D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
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

uint64_t sub_1736E84(uint64_t a1)
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

  if (a1 != &off_27804A8)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_16F66CC(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_16E82A0(v6);
      operator delete();
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      sub_16E82A0(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_140996C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1736F80(uint64_t a1)
{
  sub_1736E84(a1);

  operator delete();
}

uint64_t sub_1736FB8(uint64_t result)
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
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      result = sub_16F6778(*(v1 + 48));
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

    result = sub_16E48B0(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      result = sub_16E48B0(*(v1 + 64));
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

char *sub_1737074(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 64);
          if (!v12)
          {
            v25 = *(a1 + 8);
            v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v25)
            {
              v26 = *v26;
            }

            v12 = sub_16F5BD8(v26);
            *(a1 + 64) = v12;
LABEL_41:
            v6 = v31;
          }

LABEL_42:
          v24 = sub_21F7188(a3, v12, v6);
          goto LABEL_50;
        }
      }

      else if (v10 == 4 && v7 == 34)
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
            v20 = sub_16F5BD8(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = v31;
          }

          v15 = sub_21F7188(a3, v19, v16);
          v31 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 34)
          {
            goto LABEL_51;
          }
        }
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
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

          v21 = sub_16F9DC8(v23);
          *(a1 + 48) = v21;
          v6 = v31;
        }

        v24 = sub_2227FB4(a3, v21, v6);
        goto LABEL_50;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 56);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_16F5BD8(v14);
        *(a1 + 56) = v12;
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    if (v7)
    {
      v27 = (v7 & 7) == 4;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v31;
      }

      return 0;
    }

    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v29 = sub_11F1920((a1 + 8));
      v6 = v31;
    }

    v24 = sub_1952690(v7, v29, v6, a3);
LABEL_50:
    v31 = v24;
    if (!v24)
    {
      return 0;
    }

LABEL_51:
    ;
  }

  return v31;
}

char *sub_1737304(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_16F6980(v7, v9, a3);
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
  *v4 = 18;
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
  if ((v6 & 4) != 0)
  {
LABEL_17:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 64);
    *v4 = 26;
    v14 = *(v13 + 44);
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v4 + 1);
    }

    else
    {
      v15 = v4 + 2;
    }

    v4 = sub_16E886C(v13, v15, a3);
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
      *v4 = 34;
      v19 = *(v18 + 44);
      v4[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, v4 + 1);
      }

      else
      {
        v20 = v4 + 2;
      }

      v4 = sub_16E886C(v18, v20, a3);
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

  if (*a3 - v4 >= v24)
  {
    v26 = v24;
    memcpy(v4, v25, v24);
    v4 += v26;
    return v4;
  }

  return sub_1957130(a3, v25, v24, v4);
}

uint64_t sub_1737580(uint64_t a1)
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v12 = sub_16F6B30(*(a1 + 48));
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

    v13 = sub_16E8DA4(*(a1 + 56));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v9 = sub_16E8DA4(*(a1 + 64));
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

void sub_17376D0(uint64_t a1, uint64_t a2)
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

        v10 = sub_16F9DC8(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277EC20;
      }

      sub_13BB240(v10, v13);
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

    if ((v9 & 4) != 0)
    {
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

        v18 = sub_16F5BD8(v20);
        *(a1 + 64) = v18;
      }

      if (*(a2 + 64))
      {
        v21 = *(a2 + 64);
      }

      else
      {
        v21 = &off_277E738;
      }

      sub_16E4964(v18, v21);
    }
  }

  v22 = *(a2 + 8);
  if (v22)
  {

    sub_1957EF4((a1 + 8), (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1737874(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E4B4C(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 16);
  if ((v5 & 1) != 0 && (~*(*(a1 + 48) + 16) & 3) != 0)
  {
    return 0;
  }

  if ((v5 & 2) != 0)
  {
    result = sub_16E4B4C(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v5 = *(a1 + 16);
  }

  if ((v5 & 4) == 0)
  {
    return 1;
  }

  result = sub_16E4B4C(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1737918(uint64_t a1)
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
  if (a1 != &off_27804F0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16E4D90(v6);
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

void sub_17379D0(uint64_t a1)
{
  sub_1737918(a1);

  operator delete();
}

unsigned __int8 *sub_1737A08(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_16E4E44(*(result + 3));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_1737A68(uint64_t a1, char *a2, int32x2_t *a3)
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

      v19 = sub_16F5828(v21);
      *(a1 + 24) = v19;
      v7 = v24;
    }

    v15 = sub_21F4D60(a3, v19, v7);
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

char *sub_1737C40(uint64_t a1, char *__dst, _DWORD *a3)
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

    __dst = sub_16E5070(v6, v8, a3);
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

  if (*a3 - v9 >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_1737DCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
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

void sub_1737E88(uint64_t a1, uint64_t a2)
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

        v5 = sub_16F5828(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277E5E8;
      }

      sub_16E527C(v5, v8);
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

uint64_t sub_1737F58(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 24);
  result = sub_195228C(v2 + 16);
  if (result)
  {
    return (~*(v2 + 40) & 3) == 0;
  }

  return result;
}

uint64_t sub_1737FB8(uint64_t a1)
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

  if (a1 != &off_2780518)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1736E84(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1737918(v6);
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

void sub_1738088(uint64_t a1)
{
  sub_1737FB8(a1);

  operator delete();
}

char *sub_17380C0(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 32);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_17390A4(v21);
        *(a1 + 32) = v19;
        v6 = v28;
      }

      v15 = sub_2239D24(a3, v19, v6);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 1 && v7 == 8)
        {
          v22 = v6 + 1;
          v23 = *v6;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v24 = *v22;
          v25 = (v24 << 7) + v23;
          LODWORD(v23) = v25 - 128;
          if (v24 < 0)
          {
            v28 = sub_19587DC(v6, (v25 - 128));
            if (!v28)
            {
              return 0;
            }

            LODWORD(v23) = v26;
          }

          else
          {
            v22 = v6 + 2;
LABEL_37:
            v28 = v22;
          }

          if (sub_140BCAC(v23))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v23;
          }

          else
          {
            sub_12E8450();
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
        goto LABEL_32;
      }

      if (v7 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 24);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_1739004(v18);
        *(a1 + 24) = v16;
        v6 = v28;
      }

      v15 = sub_22314C8(a3, v16, v6);
    }

LABEL_32:
    v28 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v28;
}

char *sub_17382F4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_1737304(v11, v13, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 32);
    *v6 = 26;
    v15 = *(v14 + 20);
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v6 + 1);
    }

    else
    {
      v16 = v6 + 2;
    }

    v6 = sub_1737C40(v14, v16, a3);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v20)
  {
    v22 = v20;
    memcpy(v6, v21, v20);
    v6 += v22;
    return v6;
  }

  return sub_1957130(a3, v21, v20, v6);
}

uint64_t sub_17384F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_1737580(*(a1 + 24));
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
    v5 = sub_1737DCC(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = *(a1 + 40);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_1738604(uint64_t a1)
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

  if (a1 != &off_2780548)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1736E84(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_16E4D90(v7);
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

void sub_17386F0(uint64_t a1)
{
  sub_1738604(a1);

  operator delete();
}

uint64_t sub_1738728(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v34 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v34, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v34 + 1);
    v7 = **v34;
    if (**v34 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v34, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v34 + 2);
      }
    }

    *v34 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_46;
        }

        *(a1 + 16) |= 2u;
        v26 = *(a1 + 32);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          v26 = sub_1739004(v28);
          *(a1 + 32) = v26;
          v6 = *v34;
        }

        v14 = sub_22314C8(a3, v26, v6);
      }

      else
      {
        if (v10 != 2 || v7 != 18)
        {
          goto LABEL_46;
        }

        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = sub_194DB04((a1 + 24), v17);
        v14 = sub_1958890(v18, *v34, a3);
      }
    }

    else
    {
      if (v10 == 3)
      {
        if (v7 == 24)
        {
          v20 = (v6 + 1);
          v19 = *v6;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            *v34 = sub_19587DC(v6, v19);
            if (!*v34)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v20 = (v6 + 2);
LABEL_30:
            *v34 = v20;
          }

          if ((v19 - 1) > 3)
          {
            sub_1313740();
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 52) = v19;
          }

          continue;
        }

        goto LABEL_46;
      }

      if (v10 == 4)
      {
        if (v7 == 32)
        {
          v22 = (v6 + 1);
          v23 = *v6;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v24 = *v22;
          v25 = (v24 << 7) + v23;
          LODWORD(v23) = v25 - 128;
          if (v24 < 0)
          {
            *v34 = sub_19587DC(v6, (v25 - 128));
            if (!*v34)
            {
              goto LABEL_65;
            }

            LODWORD(v23) = v32;
          }

          else
          {
            v22 = (v6 + 2);
LABEL_37:
            *v34 = v22;
          }

          if (sub_140BCAC(v23))
          {
            *(a1 + 16) |= 8u;
            *(a1 + 48) = v23;
          }

          else
          {
            sub_12E8500();
          }

          continue;
        }

LABEL_46:
        if (v7)
        {
          v29 = (v7 & 7) == 4;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v34;
          }

LABEL_65:
          *v34 = 0;
          return *v34;
        }

        v30 = *(a1 + 8);
        if (v30)
        {
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v31 = sub_11F1920((a1 + 8));
          v6 = *v34;
        }

        v14 = sub_1952690(v7, v31, v6, a3);
        goto LABEL_53;
      }

      if (v10 != 5 || v7 != 42)
      {
        goto LABEL_46;
      }

      *(a1 + 16) |= 4u;
      v11 = *(a1 + 40);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_16F5828(v13);
        *(a1 + 40) = v11;
        v6 = *v34;
      }

      v14 = sub_21F4D60(a3, v11, v6);
    }

LABEL_53:
    *v34 = v14;
    if (!v14)
    {
      goto LABEL_65;
    }
  }

  return *v34;
}

char *sub_1738A30(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 32);
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

  v4 = sub_1737304(v8, v10, a3);
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_19;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 52);
  *v4 = 24;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
      do
      {
        *(v7 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v7++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_19:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 48);
    *v7 = 32;
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v7[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v7[2] = v16 >> 7;
      v15 = v7 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v7[2];
        do
        {
          *(v15 - 1) = v18 | 0x80;
          v18 = v17 >> 7;
          *v15++ = v17 >> 7;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v15 = v7 + 2;
    }
  }

  else
  {
    v15 = v7;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 40);
    *v15 = 42;
    v21 = *(v20 + 44);
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v15 + 1);
    }

    else
    {
      v22 = v15 + 2;
    }

    v15 = sub_16E5070(v20, v22, a3);
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v15;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = *(v25 + 31);
  if (v26 < 0)
  {
    v27 = *(v25 + 8);
    v26 = *(v25 + 16);
  }

  else
  {
    v27 = (v25 + 8);
  }

  if ((*a3 - v15) >= v26)
  {
    v28 = v26;
    memcpy(v15, v27, v26);
    v15 += v28;
    return v15;
  }

  return sub_1957130(a3, v27, v26, v15);
}

uint64_t sub_1738CD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_23;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_1737580(*(a1 + 32));
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
    v8 = sub_16E51F0(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 48);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v10;
  if ((v2 & 0x10) != 0)
  {
LABEL_19:
    v11 = *(a1 + 52);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v12;
  }

LABEL_23:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v3 += v16;
  }

  *(a1 + 20) = v3;
  return v3;
}

double sub_1738E68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2705508;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 44) = 0u;
  return result;
}

void *sub_1738EE8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2705588;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = 0;
  return result;
}

void *sub_1738F80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2705608;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_1739004(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2705688;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_17390A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2705708;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1739120(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2705788;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_17391A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2705808;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0x100000000;
  return result;
}

uint64_t sub_173922C(uint64_t a1)
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

  if (a1 != &off_2780580)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16E5A8C(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16E4D90(v6);
      operator delete();
    }

    if (*(a1 + 40))
    {
      sub_191742C();
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

void sub_173931C(uint64_t a1)
{
  sub_173922C(a1);

  operator delete();
}

char *sub_1739354(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v30, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v30 + 1;
    v7 = *v30;
    if (*v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v30 + 2;
      }
    }

    v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_40;
        }

        *(a1 + 16) |= 2u;
        v23 = *(a1 + 32);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_16F5828(v25);
          *(a1 + 32) = v23;
          v6 = v30;
        }

        v16 = sub_21F4D60(a3, v23, v6);
      }

      else
      {
        if (v10 != 4 || v7 != 34)
        {
          goto LABEL_40;
        }

        *(a1 + 16) |= 4u;
        v17 = *(a1 + 40);
        if (!v17)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v17 = sub_191BA60(v19);
          *(a1 + 40) = v17;
          v6 = v30;
        }

        v16 = sub_2201310(a3, v17, v6);
      }
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v21 = v6 + 1;
          v20 = *v6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v30 = sub_19587DC(v6, v20);
            if (!v30)
            {
              return 0;
            }
          }

          else
          {
            v21 = v6 + 2;
LABEL_31:
            v30 = v21;
          }

          if (v20 > 9)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 48) = v20;
          }

          continue;
        }

LABEL_40:
        if (v7)
        {
          v26 = (v7 & 7) == 4;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return v30;
          }

          return 0;
        }

        v27 = *(a1 + 8);
        if (v27)
        {
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v28 = sub_11F1920((a1 + 8));
          v6 = v30;
        }

        v16 = sub_1952690(v7, v28, v6, a3);
        goto LABEL_47;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_40;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 24);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        sub_16F58FC(v14);
        v12 = v15;
        *(a1 + 24) = v15;
        v6 = v30;
      }

      v16 = sub_21F86E8(a3, v12, v6);
    }

LABEL_47:
    v30 = v16;
    if (!v16)
    {
      return 0;
    }
  }

  return v30;
}

char *sub_17395D8(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 24);
    *v6 = 18;
    v12 = *(v11 + 20);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_16E5FE0(v11, v13, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
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

  v14 = *(a1 + 32);
  *v6 = 26;
  v15 = *(v14 + 44);
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v6 + 1);
  }

  else
  {
    v16 = v6 + 2;
  }

  v6 = sub_16E5070(v14, v16, a3);
  if ((v5 & 4) != 0)
  {
LABEL_26:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 40);
    *v6 = 34;
    v18 = *(v17 + 44);
    v6[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v6 + 1);
    }

    else
    {
      v19 = v6 + 2;
    }

    v6 = sub_1917694(v17, v19, a3);
  }

LABEL_32:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v23)
  {
    v25 = v23;
    memcpy(v6, v24, v23);
    v6 += v25;
    return v6;
  }

  return sub_1957130(a3, v24, v23, v6);
}

uint64_t sub_1739844(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_16E62F4(*(a1 + 24));
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
    v5 = sub_16E51F0(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_1917844(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v7 = *(a1 + 48);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v8;
LABEL_16:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1739990(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1763898(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1739A10(void *a1)
{
  sub_1739990(a1);

  operator delete();
}

char *sub_1739A48(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  if ((sub_195ADC0(a3, &v19, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v19 + 1;
      v6 = *v19;
      if (*v19 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v19, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v19 + 2;
        }
      }

      v19 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          v19 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_173C9A4(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2239DB4(a3, v16, v13);
          v19 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_23;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v11 = sub_11F1920((a1 + 8));
        v5 = v19;
      }

      v19 = sub_1952690(v6, v11, v5, a3);
      if (!v19)
      {
        return 0;
      }

LABEL_23:
      if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
      {
        return v19;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v19;
    }

    return 0;
  }

  return v19;
}

char *sub_1739BD8(uint64_t a1, char *__dst, void *a3)
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
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_173AE28(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_1739D18(uint64_t a1)
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
      v7 = sub_173B134(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

uint64_t sub_1739DD8(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_27805E8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_173B3B0(v6);
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

void sub_1739EA4(uint64_t a1)
{
  sub_1739DD8(a1);

  operator delete();
}

uint64_t sub_1739EDC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_1739F80(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1739F80(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_173B4A0(*(result + 24));
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 52) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1739FF4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 == 26)
      {
        *(a1 + 16) |= 1u;
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v23 = sub_194DB04((a1 + 24), v22);
        v20 = sub_1958890(v23, *v37, a3);
        goto LABEL_50;
      }

      goto LABEL_43;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_43;
      }

      v5 |= 8u;
      v25 = (v7 + 1);
      v24 = *v7;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = (v7 + 2);
LABEL_35:
        *v37 = v25;
        *(a1 + 44) = v24 != 0;
        goto LABEL_51;
      }

      v33 = sub_19587DC(v7, v24);
      *v37 = v33;
      *(a1 + 44) = v34 != 0;
      if (!v33)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_43;
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
        *v37 = v12;
        *(a1 + 48) = v13;
        goto LABEL_51;
      }

      v35 = sub_1958770(v7, v13);
      *v37 = v35;
      *(a1 + 48) = v36;
      if (!v35)
      {
        goto LABEL_63;
      }
    }

LABEL_51:
    if (sub_195ADC0(a3, v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_43;
    }

    v28 = (v7 + 1);
    v27 = *v7;
    if (v27 < 0)
    {
      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if (v29 < 0)
      {
        *v37 = sub_19587DC(v7, v27);
        if (!*v37)
        {
          goto LABEL_63;
        }

        goto LABEL_41;
      }

      v28 = (v7 + 2);
    }

    *v37 = v28;
LABEL_41:
    if (v27 > 7)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 40) = v27;
    }

    goto LABEL_51;
  }

  if (v11 == 2 && v8 == 18)
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

      sub_173CA50(v18);
      v16 = v19;
      *(a1 + 32) = v19;
      v7 = *v37;
    }

    v20 = sub_2239E44(a3, v16, v7);
LABEL_50:
    *v37 = v20;
    if (!v20)
    {
      goto LABEL_63;
    }

    goto LABEL_51;
  }

LABEL_43:
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

    v20 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  *v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v37;
}

char *sub_173A310(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
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

    v6 = sub_173BAAC(v12, v14, a3);
    if ((v5 & 1) == 0)
    {
LABEL_12:
      if ((v5 & 8) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v15 = *(a1 + 44);
      *v6 = 32;
      v6[1] = v15;
      v6 += 2;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_32;
  }

LABEL_25:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v16 = *(a1 + 48);
  *v6 = 40;
  v6[1] = v16;
  if (v16 > 0x7F)
  {
    v6[1] = v16 | 0x80;
    v17 = v16 >> 7;
    v6[2] = v16 >> 7;
    v11 = v6 + 3;
    if (v16 >= 0x4000)
    {
      LOBYTE(v18) = v6[2];
      do
      {
        *(v11 - 1) = v18 | 0x80;
        v18 = v17 >> 7;
        *v11++ = v17 >> 7;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_32:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v23)
  {
    v25 = v23;
    memcpy(v11, v24, v23);
    v11 += v25;
    return v11;
  }

  return sub_1957130(a3, v24, v23, v11);
}

uint64_t sub_173A584(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_17;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = sub_173BFE4(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  if ((v2 & 4) != 0)
  {
    v9 = *(a1 + 40);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v10;
  }

  result = v3 + ((v2 >> 2) & 2);
  if ((v2 & 0x10) != 0)
  {
    result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    result += v13;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_173A6CC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v8 = *v8;
      }

      result = sub_194EA1C(&result[1], (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

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

      sub_173CA50(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2780620;
    }

    result = sub_173A7FC(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      goto LABEL_8;
    }

LABEL_25:
    v3[1].__r_.__value_.__s.__data_[20] = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_173A7FC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v9 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v9 = *v9;
        }

        data = sub_173CAD0(v9);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = &off_2780660;
      }

      result = sub_1371504(data, v10);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_27;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

LABEL_27:
    HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }

LABEL_28:
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
      goto LABEL_11;
    }

LABEL_31:
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 60);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_173A964(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_176391C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_173A9E4(void *a1)
{
  sub_173A964(a1);

  operator delete();
}

uint64_t sub_173AA1C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1739EDC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 0xF) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
    *(v1 + 60) = 1;
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

char *sub_173AAB8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v40 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v40, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v40 + 1;
    v8 = *v40;
    if (*v40 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v40, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v40 + 2;
      }
    }

    v40 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 == 26)
      {
        v19 = v7 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v40 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_173C91C(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = v40;
          }

          v19 = sub_2239ED4(a3, v23, v20);
          v40 = v19;
          if (!v19)
          {
            goto LABEL_69;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_48;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_48;
      }

      v5 |= 8u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_42:
        v40 = v26;
        *(a1 + 60) = v25 != 0;
        goto LABEL_55;
      }

      v34 = sub_19587DC(v7, v25);
      v40 = v34;
      *(a1 + 60) = v35 != 0;
      if (!v34)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_48;
      }

      v5 |= 4u;
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
        v40 = v12;
        *(a1 + 56) = v13;
        goto LABEL_55;
      }

      v38 = sub_1958770(v7, v13);
      v40 = v38;
      *(a1 + 56) = v39;
      if (!v38)
      {
        goto LABEL_69;
      }
    }

LABEL_55:
    if (sub_195ADC0(a3, &v40, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_48;
    }

    v5 |= 1u;
    v28 = v7 + 1;
    v29 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    v30 = *v28;
    v29 = v29 + (v30 << 7) - 128;
    if ((v30 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_47:
      v40 = v28;
      *(a1 + 48) = v29;
      goto LABEL_55;
    }

    v36 = sub_1958770(v7, v29);
    v40 = v36;
    *(a1 + 48) = v37;
    if (!v36)
    {
      goto LABEL_69;
    }

    goto LABEL_55;
  }

  if (v11 == 2 && v8 == 16)
  {
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if (v18 < 0)
    {
      v40 = sub_19587DC(v7, v16);
      if (!v40)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v17 = v7 + 2;
LABEL_25:
      v40 = v17;
    }

    if (v16 > 9)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 52) = v16;
    }

    goto LABEL_55;
  }

LABEL_48:
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
      v7 = v40;
    }

    v40 = sub_1952690(v8, v33, v7, a3);
    if (!v40)
    {
      goto LABEL_69;
    }

    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_69:
  v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

char *sub_173AE28(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
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

    v12 = *(a1 + 52);
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
          v6 = (v13 >> 7);
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
      *v11 = 26;
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

      v11 = sub_173A310(v17, v19, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v20 = *(a1 + 60);
    *v11 = 32;
    v11[1] = v20;
    v11 += 2;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v22 = *(a1 + 56);
    *v11 = 48;
    v11[1] = v22;
    if (v22 > 0x7F)
    {
      v11[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v11[2] = v22 >> 7;
      v21 = v11 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v21 - 1) = v11 | 0x80;
          LODWORD(v11) = v23 >> 7;
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v11 + 2;
    }
  }

  else
  {
    v21 = v11;
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v21;
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

  if (*a3 - v21 >= v28)
  {
    v30 = v28;
    memcpy(v21, v29, v28);
    v21 += v30;
    return v21;
  }

  return sub_1957130(a3, v29, v28, v21);
}

uint64_t sub_173B134(uint64_t a1)
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
      v7 = sub_173A584(v6);
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
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
LABEL_14:
          v2 += (v8 >> 2) & 2;
          goto LABEL_15;
        }

LABEL_13:
        v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_14;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v11 = *(a1 + 52);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v12;
    if ((v8 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v9 = *(a1 + 8);
  if (v9)
  {
    v13 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v2 += v14;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_173B284(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1763A2C(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0xF) != 0)
  {
    if (v9)
    {
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      v3[2].__r_.__value_.__s.__data_[12] = *(a2 + 60);
      goto LABEL_10;
    }

LABEL_17:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v9 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_173B3B0(uint64_t a1)
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
  if (a1 != &off_2780620)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_173C250(v6);
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

void sub_173B468(uint64_t a1)
{
  sub_173B3B0(a1);

  operator delete();
}

uint64_t sub_173B4A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 6) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 36) = 1;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_173B4F8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v55 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v55, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v55 + 1;
    v7 = *v55;
    if (*v55 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v55, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v55 + 2;
      }
    }

    v55 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 4)
    {
      if (v7 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v7 == 24)
          {
            v29 = v6 + 1;
            v30 = *v6;
            if ((v30 & 0x8000000000000000) == 0)
            {
              goto LABEL_60;
            }

            v31 = *v29;
            v32 = (v31 << 7) + v30;
            v30 = (v32 - 128);
            if (v31 < 0)
            {
              v55 = sub_19587DC(v6, (v32 - 128));
              if (!v55)
              {
                return 0;
              }

              v30 = v48;
            }

            else
            {
              v29 = v6 + 2;
LABEL_60:
              v55 = v29;
            }

            if ((v30 - 2) < 6 || v30 == 0)
            {
              *(a1 + 16) |= 8u;
              *(a1 + 40) = v30;
              continue;
            }

            v50 = *(a1 + 8);
            if (v50)
            {
              v51 = ((v50 & 0xFFFFFFFFFFFFFFFCLL) + 8);
            }

            else
            {
              v51 = sub_11F1920((a1 + 8));
            }

            v52 = 3;
            goto LABEL_123;
          }
        }

        else if (v10 == 4 && v7 == 32)
        {
          v20 = v6 + 1;
          v19 = *v6;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            v55 = sub_19587DC(v6, v19);
            if (!v55)
            {
              return 0;
            }
          }

          else
          {
            v20 = v6 + 2;
LABEL_37:
            v55 = v20;
          }

          if (v19 > 2)
          {
            sub_12E8500();
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 44) = v19;
          }

          continue;
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 8)
        {
          v27 = v6 + 1;
          v26 = *v6;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_53;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v55 = sub_19587DC(v6, v26);
            if (!v55)
            {
              return 0;
            }
          }

          else
          {
            v27 = v6 + 2;
LABEL_53:
            v55 = v27;
          }

          if (v26 > 9)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 32) = v26;
          }

          continue;
        }
      }

      else if (v10 == 2 && v7 == 16)
      {
        v17 = v6 + 1;
        v16 = *v6;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          v55 = sub_19587DC(v6, v16);
          if (!v55)
          {
            return 0;
          }
        }

        else
        {
          v17 = v6 + 2;
LABEL_28:
          v55 = v17;
        }

        if (v16 > 8)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 36) = v16;
        }

        continue;
      }

      goto LABEL_92;
    }

    if (v7 >> 3 <= 6)
    {
      if (v10 == 5)
      {
        if (v7 == 40)
        {
          v37 = v6 + 1;
          v30 = *v6;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_78;
          }

          v38 = *v37;
          v39 = (v38 << 7) + v30;
          v30 = (v39 - 128);
          if (v38 < 0)
          {
            v55 = sub_19587DC(v6, (v39 - 128));
            if (!v55)
            {
              return 0;
            }

            v30 = v49;
          }

          else
          {
            v37 = v6 + 2;
LABEL_78:
            v55 = v37;
          }

          if (v30 < 8 || v30 == 12)
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 48) = v30;
            continue;
          }

          v53 = *(a1 + 8);
          if (v53)
          {
            v51 = ((v53 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v51 = sub_11F1920((a1 + 8));
          }

          v52 = 5;
LABEL_123:
          sub_19586BC(v52, v30, v51);
          continue;
        }
      }

      else if (v10 == 6 && v7 == 48)
      {
        v22 = v6 + 1;
        v23 = *v6;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v24 = *v22;
        v25 = (v24 << 7) + v23;
        LODWORD(v23) = v25 - 128;
        if (v24 < 0)
        {
          v55 = sub_19587DC(v6, (v25 - 128));
          if (!v55)
          {
            return 0;
          }

          LODWORD(v23) = v47;
        }

        else
        {
          v22 = v6 + 2;
LABEL_46:
          v55 = v22;
        }

        if (sub_140BCAC(v23))
        {
          *(a1 + 16) |= 0x40u;
          *(a1 + 52) = v23;
        }

        else
        {
          sub_12E84C8();
        }

        continue;
      }

      goto LABEL_92;
    }

    if (v10 == 7)
    {
      if (v7 == 56)
      {
        v35 = v6 + 1;
        v34 = *v6;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_71;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if (v36 < 0)
        {
          v55 = sub_19587DC(v6, v34);
          if (!v55)
          {
            return 0;
          }
        }

        else
        {
          v35 = v6 + 2;
LABEL_71:
          v55 = v35;
        }

        if (v34 > 8)
        {
          sub_13137F8();
        }

        else
        {
          *(a1 + 16) |= 0x80u;
          *(a1 + 56) = v34;
        }

        continue;
      }

      goto LABEL_92;
    }

    if (v10 == 8)
    {
      if (v7 == 64)
      {
        v42 = v6 + 1;
        v41 = *v6;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_89;
        }

        v43 = *v42;
        v41 = (v43 << 7) + v41 - 128;
        if (v43 < 0)
        {
          v55 = sub_19587DC(v6, v41);
          if (!v55)
          {
            return 0;
          }
        }

        else
        {
          v42 = v6 + 2;
LABEL_89:
          v55 = v42;
        }

        if (v41 > 7)
        {
          sub_12E85F0();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 60) = v41;
        }

        continue;
      }

LABEL_92:
      if (v7)
      {
        v44 = (v7 & 7) == 4;
      }

      else
      {
        v44 = 1;
      }

      if (v44)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v55;
        }

        return 0;
      }

      v45 = *(a1 + 8);
      if (v45)
      {
        v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v46 = sub_11F1920((a1 + 8));
        v6 = v55;
      }

      v14 = sub_1952690(v7, v46, v6, a3);
      goto LABEL_99;
    }

    if (v10 != 9 || v7 != 74)
    {
      goto LABEL_92;
    }

    *(a1 + 16) |= 1u;
    v11 = *(a1 + 24);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_173CAD0(v13);
      *(a1 + 24) = v11;
      v6 = v55;
    }

    v14 = sub_22313A8(a3, v11, v6);
LABEL_99:
    v55 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v55;
}

char *sub_173BAAC(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 36);
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
          v6 = (v13 >> 7);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
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
          v11 = (v17 >> 7);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 44);
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 48);
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
          v19 = (v26 >> 7);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 52);
    *v24 = 48;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v24[2];
        do
        {
          *(v28 - 1) = v31 | 0x80;
          v31 = v30 >> 7;
          *v28++ = v30 >> 7;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
      }
    }

    else
    {
      v28 = v24 + 2;
    }
  }

  else
  {
    v28 = v24;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 56);
    *v28 = 56;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v33 - 1) = v28 | 0x80;
          v28 = (v35 >> 7);
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v28 + 2;
    }
  }

  else
  {
    v33 = v28;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 60);
    *v33 = 64;
    v33[1] = v38;
    if (v38 > 0x7F)
    {
      v33[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v33[2] = v38 >> 7;
      v37 = v33 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v40) = v33[2];
        do
        {
          *(v37 - 1) = v40 | 0x80;
          v40 = v39 >> 7;
          *v37++ = v39 >> 7;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v37 = v33 + 2;
    }
  }

  else
  {
    v37 = v33;
  }

  if (v5)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v42 = *(a1 + 24);
    *v37 = 74;
    v43 = *(v42 + 20);
    v37[1] = v43;
    if (v43 > 0x7F)
    {
      v44 = sub_19575D0(v43, v37 + 1);
    }

    else
    {
      v44 = v37 + 2;
    }

    v37 = sub_173C590(v42, v44, a3);
  }

  v45 = *(a1 + 8);
  if ((v45 & 1) == 0)
  {
    return v37;
  }

  v47 = v45 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = *(v47 + 31);
  if (v48 < 0)
  {
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
  }

  else
  {
    v49 = (v47 + 8);
  }

  if (*a3 - v37 >= v48)
  {
    v50 = v48;
    memcpy(v37, v49, v48);
    v37 += v50;
    return v37;
  }

  return sub_1957130(a3, v49, v48, v37);
}

uint64_t sub_173BFE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (v2)
  {
    v4 = sub_173C714(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
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
LABEL_12:
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
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v9 = *(a1 + 40);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v10;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_28:
  v11 = *(a1 + 44);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v12;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_32:
  v13 = *(a1 + 48);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v14;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_36:
  v15 = *(a1 + 52);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v16;
  if ((v2 & 0x80) == 0)
  {
LABEL_18:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

LABEL_40:
  v17 = *(a1 + 56);
  if (v17 < 0)
  {
    v18 = 11;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v18;
  if ((v2 & 0x100) != 0)
  {
LABEL_44:
    v19 = *(a1 + 60);
    if (v19 < 0)
    {
      v20 = 11;
    }

    else
    {
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v20;
  }

LABEL_48:
  v21 = *(a1 + 8);
  if (v21)
  {
    v22 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    result += v23;
  }

  *(a1 + 20) = result;
  return result;
}