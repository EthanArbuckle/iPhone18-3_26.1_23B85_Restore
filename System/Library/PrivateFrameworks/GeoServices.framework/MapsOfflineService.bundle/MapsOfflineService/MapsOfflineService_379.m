std::string *sub_1585C94(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
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
      v8 = v3[1].__r_.__value_.__l.__size_;
      if (!v8)
      {
        v9 = v3->__r_.__value_.__l.__size_;
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_15B234C(v10);
        v3[1].__r_.__value_.__l.__size_ = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_27789A0;
      }

      result = sub_1581C8C(v8, v11);
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1585D80(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

uint64_t sub_1585DF4(uint64_t a1)
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

  if (a1 != &off_2777B60)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16E5B34(v5);
      operator delete();
    }

    if (*(a1 + 32))
    {
      sub_16E4E08();
      operator delete();
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      sub_16E5B34(v6);
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

void sub_1585EE4(uint64_t a1)
{
  sub_1585DF4(a1);

  operator delete();
}

unsigned __int8 *sub_1585F1C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_16E5B70(*(result + 3));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_16E4E44(*(v1 + 4));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_16E5B70(*(v1 + 5));
    }
  }

LABEL_6:
  if ((v2 & 0xF8) != 0)
  {
    *(v1 + 6) = 0;
    *(v1 + 7) = 0;
    *(v1 + 8) = 0;
  }

  v4 = v1[8];
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1585FB4(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 5)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v20 = *(a1 + 24);
            if (!v20)
            {
              v24 = *(a1 + 8);
              v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
              if (v24)
              {
                v25 = *v25;
              }

              sub_16F58FC(v25);
              v20 = v26;
              *(a1 + 24) = v26;
              goto LABEL_44;
            }

            goto LABEL_45;
          }
        }

        else if (v11 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v13 = *(a1 + 32);
          if (!v13)
          {
            v14 = *(a1 + 8);
            v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
            if (v14)
            {
              v15 = *v15;
            }

            v13 = sub_16F5828(v15);
            *(a1 + 32) = v13;
            v7 = v45;
          }

          v16 = sub_21F4D60(a3, v13, v7);
          goto LABEL_70;
        }

        goto LABEL_63;
      }

      if (v11 != 3)
      {
        if (v11 == 5 && v8 == 41)
        {
          v5 |= 8u;
          *(a1 + 48) = *v7;
          v45 = v7 + 8;
          goto LABEL_71;
        }

        goto LABEL_63;
      }

      if (v8 != 24)
      {
        goto LABEL_63;
      }

      v31 = v7 + 1;
      v30 = *v7;
      if (v30 < 0)
      {
        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          v45 = sub_19587DC(v7, v30);
          if (!v45)
          {
            goto LABEL_85;
          }

          goto LABEL_56;
        }

        v31 = v7 + 2;
      }

      v45 = v31;
LABEL_56:
      if (v30 > 3)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 56) = v30;
      }

      goto LABEL_71;
    }

    if (v8 >> 3 > 7)
    {
      break;
    }

    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_63;
      }

      v5 |= 0x20u;
      v28 = v7 + 1;
      v27 = *v7;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_50;
      }

      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_50:
        v45 = v28;
        *(a1 + 60) = v27 != 0;
        goto LABEL_71;
      }

      v39 = sub_19587DC(v7, v27);
      v45 = v39;
      *(a1 + 60) = v40 != 0;
      if (!v39)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_63;
      }

      v5 |= 0x80u;
      v18 = v7 + 1;
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = v7 + 2;
LABEL_27:
        v45 = v18;
        *(a1 + 64) = v17;
        goto LABEL_71;
      }

      v43 = sub_19587DC(v7, v17);
      v45 = v43;
      *(a1 + 64) = v44;
      if (!v43)
      {
        goto LABEL_85;
      }
    }

LABEL_71:
    if (sub_195ADC0(a3, &v45, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 8)
  {
    if (v8 != 64)
    {
      goto LABEL_63;
    }

    v5 |= 0x40u;
    v34 = v7 + 1;
    v33 = *v7;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_62;
    }

    v35 = *v34;
    v33 = (v35 << 7) + v33 - 128;
    if ((v35 & 0x80000000) == 0)
    {
      v34 = v7 + 2;
LABEL_62:
      v45 = v34;
      *(a1 + 61) = v33 != 0;
      goto LABEL_71;
    }

    v41 = sub_19587DC(v7, v33);
    v45 = v41;
    *(a1 + 61) = v42 != 0;
    if (!v41)
    {
      goto LABEL_85;
    }

    goto LABEL_71;
  }

  if (v11 == 9 && v8 == 74)
  {
    *(a1 + 16) |= 4u;
    v20 = *(a1 + 40);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_16F58FC(v22);
      v20 = v23;
      *(a1 + 40) = v23;
LABEL_44:
      v7 = v45;
    }

LABEL_45:
    v16 = sub_21F86E8(a3, v20, v7);
LABEL_70:
    v45 = v16;
    if (!v16)
    {
      goto LABEL_85;
    }

    goto LABEL_71;
  }

LABEL_63:
  if (v8)
  {
    v36 = (v8 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v37 = *(a1 + 8);
    if (v37)
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v7 = v45;
    }

    v16 = sub_1952690(v8, v38, v7, a3);
    goto LABEL_70;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_85:
  v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v45;
}

char *sub_15863D4(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 32);
    *v4 = 18;
    v12 = *(v11 + 44);
    v4[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v4 + 1);
    }

    else
    {
      v13 = v4 + 2;
    }

    v4 = sub_16E5070(v11, v13, a3);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 24);
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

  v4 = sub_16E5FE0(v8, v10, a3);
  if ((v6 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 56);
  *v4 = 24;
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v7 = v4 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v15 >> 7);
        *v7++ = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_24:
  if ((v6 & 8) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 60);
    *v7 = 48;
    v7[1] = v19;
    v7 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v18 = *(a1 + 48);
  *v7 = 41;
  *(v7 + 1) = v18;
  v7 += 9;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  if ((v6 & 0x80) == 0)
  {
LABEL_27:
    v17 = v7;
    goto LABEL_41;
  }

LABEL_34:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v20 = *(a1 + 64);
  *v7 = 56;
  v7[1] = v20;
  if (v20 > 0x7F)
  {
    v7[1] = v20 | 0x80;
    v21 = v20 >> 7;
    v7[2] = v20 >> 7;
    v17 = v7 + 3;
    if (v20 >= 0x4000)
    {
      LOBYTE(v22) = v7[2];
      do
      {
        *(v17 - 1) = v22 | 0x80;
        v22 = v21 >> 7;
        *v17++ = v21 >> 7;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
    }
  }

  else
  {
    v17 = v7 + 2;
  }

LABEL_41:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v24 = *(a1 + 61);
    *v17 = 64;
    v17[1] = v24;
    v17 += 2;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v25 = *(a1 + 40);
    *v17 = 74;
    v26 = *(v25 + 20);
    v17[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v17 + 1);
    }

    else
    {
      v27 = v17 + 2;
    }

    v17 = sub_16E5FE0(v25, v27, a3);
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v17;
  }

  v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
  v31 = *(v30 + 31);
  if (v31 < 0)
  {
    v32 = *(v30 + 8);
    v31 = *(v30 + 16);
  }

  else
  {
    v32 = (v30 + 8);
  }

  if (*a3 - v17 >= v31)
  {
    v33 = v31;
    memcpy(v17, v32, v31);
    v17 += v33;
    return v17;
  }

  return sub_1957130(a3, v32, v31, v17);
}

uint64_t sub_1586764(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_19;
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

  v5 = sub_16E62F4(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_16E51F0(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = sub_16E62F4(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v8 = v3 + 9;
  if ((v2 & 8) == 0)
  {
    v8 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v9 = *(a1 + 56);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    v8 += v11;
  }

  result = v8 + ((v2 >> 5) & 2) + ((v2 >> 4) & 2);
  if ((v2 & 0x80) != 0)
  {
    result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_19:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15868DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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

        sub_16F58FC(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E650;
      }

      sub_16E645C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
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

      v10 = sub_16F5828(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277E5E8;
    }

    sub_16E527C(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    }

LABEL_32:
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_16F58FC(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_277E650;
    }

    sub_16E645C(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 60) = *(a2 + 60);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_11;
    }

LABEL_43:
    *(a1 + 61) = *(a2 + 61);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1586A8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E6614(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_16E5370(*(a1 + 32));
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

  result = sub_16E6614(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1586AFC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_16;
    }
  }

  else if (v4)
  {
    goto LABEL_16;
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

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (a1 != &off_2777BA8)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15B1C80(v6);
      operator delete();
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      sub_15878A8(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1586C18(uint64_t a1)
{
  sub_1586AFC(a1);

  operator delete();
}

uint64_t sub_1586C50(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
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
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *v7 = 0;
  *(v7 + 23) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  result = sub_1580044(*(result + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1586D68(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 56) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1586D68(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1586D68(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_15879A4(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_1586DFC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v22 = (a1 + 24);
      }

      else
      {
        if (v11 != 2)
        {
          if (v11 == 3 && v8 == 26)
          {
            *(a1 + 16) |= 8u;
            v13 = *(a1 + 48);
            if (!v13)
            {
              v14 = *(a1 + 8);
              v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
              if (v14)
              {
                v15 = *v15;
              }

              v13 = sub_15B234C(v15);
              *(a1 + 48) = v13;
              v7 = *v34;
            }

            v16 = sub_221ECFC(a3, v13, v7);
            goto LABEL_54;
          }

          goto LABEL_47;
        }

        if (v8 != 18)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 2u;
        v24 = *(a1 + 8);
        v21 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v21 = *v21;
        }

        v22 = (a1 + 32);
      }

LABEL_41:
      v25 = sub_194DB04(v22, v21);
      v16 = sub_1958890(v25, *v34, a3);
      goto LABEL_54;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_47;
      }

      *(a1 + 16) |= 4u;
      v23 = *(a1 + 8);
      v21 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v21 = *v21;
      }

      v22 = (a1 + 40);
      goto LABEL_41;
    }

    if (v11 != 5)
    {
      break;
    }

    if (v8 != 40)
    {
      goto LABEL_47;
    }

    v5 |= 0x20u;
    v27 = (v7 + 1);
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = (v7 + 2);
LABEL_46:
      *v34 = v27;
      *(a1 + 64) = v26 != 0;
      goto LABEL_55;
    }

    v32 = sub_19587DC(v7, v26);
    *v34 = v32;
    *(a1 + 64) = v33 != 0;
    if (!v32)
    {
      goto LABEL_62;
    }

LABEL_55:
    if (sub_195ADC0(a3, v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 0x10u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_15AC8F4(v19);
      *(a1 + 56) = v17;
      v7 = *v34;
    }

    v16 = sub_221F05C(a3, v17, v7);
LABEL_54:
    *v34 = v16;
    if (!v16)
    {
      goto LABEL_62;
    }

    goto LABEL_55;
  }

LABEL_47:
  if (v8)
  {
    v29 = (v8 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v7 = *v34;
    }

    v16 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_62:
  *v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v34;
}

char *sub_1587108(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
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

  v4 = sub_15B1F3C(v7, v9, a3);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4 = sub_128AEEC(a3, 4, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 64);
  *v4 = 40;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_20:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 56);
    *v4 = 50;
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

    v4 = sub_1587D14(v11, v13, a3);
  }

LABEL_26:
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

  if (*a3 - v4 >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

uint64_t sub_1587334(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_17;
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
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    v16 = sub_15B20A0(*(a1 + 48));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((v2 & 0x10) != 0)
  {
LABEL_15:
    v11 = sub_1587F3C(*(a1 + 56));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  result = v3 + ((v2 >> 4) & 2);
LABEL_17:
  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    result += v18;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_15874E4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
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

        goto LABEL_20;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3->__r_.__value_.__l.__size_;
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_20:
    v12 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v13 = v3->__r_.__value_.__l.__size_;
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }

LABEL_23:
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

      data = sub_15B234C(v17);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_27789A0;
    }

    result = sub_1581C8C(data, v18);
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
      v3[2].__r_.__value_.__s.__data_[16] = *(a2 + 64);
      goto LABEL_9;
    }

LABEL_31:
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

      v19 = sub_15AC8F4(v21);
      v3[2].__r_.__value_.__l.__size_ = v19;
    }

    if (*(a2 + 56))
    {
      v22 = *(a2 + 56);
    }

    else
    {
      v22 = &off_2777BF0;
    }

    result = sub_15876B4(v19, v22);
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

std::string *sub_15876B4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15B5B58(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
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
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[2].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v12 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v12 = *v12;
        }

        data = sub_15AC998(v12);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_2777C30;
      }

      result = sub_1588054(data, v13);
    }

    if ((v9 & 2) != 0)
    {
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15877E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    v4 = *(a1 + 48);
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    while (v5 >= 1)
    {
      v7 = v5 - 1;
      v8 = sub_15B16F0(*(v6 + 8 * v5));
      v5 = v7;
      if (!v8)
      {
        return 0;
      }
    }
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_1587854(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1587854(uint64_t a1)
{
  result = sub_1588204(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_158825C(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_15878A8(uint64_t a1)
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
  if (a1 != &off_2777BF0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15882D0(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15B4CD0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_158796C(uint64_t a1)
{
  sub_15878A8(a1);

  operator delete();
}

uint64_t sub_15879A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
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

    goto LABEL_21;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_21;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_1580044(*(result + 48));
    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
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

char *sub_1587AB4(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v7 == 26)
      {
        v19 = v6 - 1;
        while (1)
        {
          v28 = v19 + 1;
          v20 = *(a1 + 40);
          if (v20 && (v21 = *(a1 + 32), v21 < *v20))
          {
            *(a1 + 32) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_15AC8F4(*(a1 + 24));
            v22 = sub_19593CC(a1 + 24, v23);
          }

          v19 = sub_221F05C(a3, v22);
          v28 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_43;
          }
        }
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
      goto LABEL_42;
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
          v28 = sub_19587DC(v6, v16);
          if (!v28)
          {
            return 0;
          }
        }

        else
        {
          v17 = v6 + 2;
LABEL_24:
          v28 = v17;
        }

        if (v16 > 2)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 56) = v16;
        }

        continue;
      }

      goto LABEL_13;
    }

    if (v10 != 1 || v7 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v24 = *(a1 + 48);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_15AC998(v26);
      *(a1 + 48) = v24;
      v6 = v28;
    }

    v15 = sub_221F0EC(a3, v24, v6);
LABEL_42:
    v28 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_43:
    ;
  }

  return v28;
}

char *sub_1587D14(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *a2 = 10;
    v7 = *(v6 + 20);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_158882C(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 56);
    *a2 = 16;
    a2[1] = v10;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      a2[2] = v10 >> 7;
      v9 = a2 + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = a2[2];
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
      v9 = a2 + 2;
    }
  }

  else
  {
    v9 = a2;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *v9 = 26;
      v17 = *(v16 + 20);
      v9[1] = v17;
      if (v17 > 0x7F)
      {
        v18 = sub_19575D0(v17, v9 + 1);
      }

      else
      {
        v18 = v9 + 2;
      }

      v9 = sub_1587D14(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v9;
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

  if (*a3 - v9 >= v22)
  {
    v24 = v22;
    memcpy(v9, v23, v22);
    v9 += v24;
    return v9;
  }

  return sub_1957130(a3, v23, v22, v9);
}

uint64_t sub_1587F3C(uint64_t a1)
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
      v7 = sub_1587F3C(v6);
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
      v9 = sub_1588AD4(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(a1 + 56);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v11;
    }
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_1588054(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
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

        goto LABEL_22;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3->__r_.__value_.__l.__size_;
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_22:
    v12 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v13 = v3->__r_.__value_.__l.__size_;
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_33;
    }

LABEL_25:
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

      data = sub_15B234C(v17);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_27789A0;
    }

    result = sub_1581C8C(data, v18);
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
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_34:
    v3[2].__r_.__value_.__s.__data_[9] = *(a2 + 57);
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
      HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
      goto LABEL_11;
    }

LABEL_35:
    v3[2].__r_.__value_.__s.__data_[10] = *(a2 + 58);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_1588204(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1587854(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_158825C(uint64_t a1)
{
  if ((*(a1 + 16) & 8) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

uint64_t sub_15882D0(uint64_t a1)
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

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (a1 != &off_2777C30)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15B1C80(v6);
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

void sub_15883CC(uint64_t a1)
{
  sub_15882D0(a1);

  operator delete();
}

uint64_t sub_1588404(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v44, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v44 + 1);
    v8 = **v44;
    if (**v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v44 + 2);
      }
    }

    *v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_62;
          }

          *(a1 + 16) |= 8u;
          v29 = *(a1 + 48);
          if (!v29)
          {
            v30 = *(a1 + 8);
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
            if (v30)
            {
              v31 = *v31;
            }

            v29 = sub_15B234C(v31);
            *(a1 + 48) = v29;
            v7 = *v44;
          }

          v25 = sub_221ECFC(a3, v29, v7);
LABEL_69:
          *v44 = v25;
          if (!v25)
          {
            goto LABEL_84;
          }

          goto LABEL_70;
        }

        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_62;
        }

        *(a1 + 16) |= 4u;
        v19 = *(a1 + 8);
        v14 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v14 = *v14;
        }

        v15 = (a1 + 40);
      }

      else if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_62;
        }

        *(a1 + 16) |= 1u;
        v23 = *(a1 + 8);
        v14 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v14 = *v14;
        }

        v15 = (a1 + 24);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_62;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
      }

      v24 = sub_194DB04(v15, v14);
      v25 = sub_1958890(v24, *v44, a3);
      goto LABEL_69;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 != 40)
        {
          goto LABEL_62;
        }

        v5 |= 0x10u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_48;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v7 + 2);
LABEL_48:
          *v44 = v27;
          *(a1 + 56) = v26 != 0;
          goto LABEL_70;
        }

        v38 = sub_19587DC(v7, v26);
        *v44 = v38;
        *(a1 + 56) = v39 != 0;
        if (!v38)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v11 != 6 || v8 != 48)
        {
          goto LABEL_62;
        }

        v5 |= 0x20u;
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_25:
          *v44 = v17;
          *(a1 + 57) = v16 != 0;
          goto LABEL_70;
        }

        v40 = sub_19587DC(v7, v16);
        *v44 = v40;
        *(a1 + 57) = v41 != 0;
        if (!v40)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_70;
    }

    if (v11 == 7)
    {
      break;
    }

    if (v11 != 8 || v8 != 64)
    {
      goto LABEL_62;
    }

    v5 |= 0x40u;
    v21 = (v7 + 1);
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = (v7 + 2);
LABEL_38:
      *v44 = v21;
      *(a1 + 58) = v20 != 0;
      goto LABEL_70;
    }

    v42 = sub_19587DC(v7, v20);
    *v44 = v42;
    *(a1 + 58) = v43 != 0;
    if (!v42)
    {
      goto LABEL_84;
    }

LABEL_70:
    if (sub_195ADC0(a3, v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 56)
  {
    v33 = (v7 + 1);
    v32 = *v7;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_59;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if (v34 < 0)
    {
      *v44 = sub_19587DC(v7, v32);
      if (!*v44)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v33 = (v7 + 2);
LABEL_59:
      *v44 = v33;
    }

    if (v32 > 7)
    {
      sub_13137F8();
    }

    else
    {
      *(a1 + 16) |= 0x80u;
      *(a1 + 60) = v32;
    }

    goto LABEL_70;
  }

LABEL_62:
  if (v8)
  {
    v35 = (v8 & 7) == 4;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = *v44;
    }

    v25 = sub_1952690(v8, v37, v7, a3);
    goto LABEL_69;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_84:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_158882C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 48);
  *v4 = 26;
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

  v4 = sub_15B1F3C(v8, v10, a3);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4 = sub_128AEEC(a3, 4, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 57);
    *v4 = 48;
    v4[1] = v12;
    v4 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 56);
  *v4 = 40;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    v7 = v4;
    goto LABEL_31;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 60);
  *v4 = 56;
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v4[1] = v13 | 0x80;
    v14 = v13 >> 7;
    v4[2] = v13 >> 7;
    v7 = v4 + 3;
    if (v13 >= 0x4000)
    {
      LOBYTE(v15) = v4[2];
      do
      {
        *(v7 - 1) = v15 | 0x80;
        v15 = v14 >> 7;
        *v7++ = v14 >> 7;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_31:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 58);
    *v7 = 64;
    v7[1] = v17;
    v7 += 2;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v21)
  {
    v23 = v21;
    memcpy(v7, v22, v21);
    v7 += v23;
    return v7;
  }

  return sub_1957130(a3, v22, v21, v7);
}

uint64_t sub_1588AD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_20;
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
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v16 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v11 = sub_15B20A0(*(a1 + 48));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_15:
  result = v3 + ((v2 >> 4) & 2) + ((v2 >> 3) & 2) + ((v2 >> 5) & 2);
  if ((v2 & 0x80) != 0)
  {
    v12 = *(a1 + 60);
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 11;
    }

    result += v14;
  }

LABEL_20:
  v15 = *(a1 + 8);
  if (v15)
  {
    v19 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    result += v20;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_1588CAC(uint64_t a1)
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

void sub_1588D4C(uint64_t a1)
{
  sub_1588CAC(a1);

  operator delete();
}

uint64_t sub_1588D84(uint64_t a1)
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
  *(result + 24) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1588DCC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v24, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v24 + 1);
    v7 = **v24;
    if (**v24 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v24, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v24 + 2);
      }
    }

    *v24 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v15 = v6 + 1;
        v16 = *v6;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v15;
        v18 = (v17 << 7) + v16;
        LODWORD(v16) = v18 - 128;
        if (v17 < 0)
        {
          *v24 = sub_19587DC(v6, (v18 - 128));
          if (!*v24)
          {
            goto LABEL_38;
          }

          LODWORD(v16) = v22;
        }

        else
        {
          v15 = v6 + 2;
LABEL_23:
          *v24 = v15;
        }

        if (sub_183A874(v16))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v16;
        }

        else
        {
          sub_12E8418();
        }

        continue;
      }

LABEL_12:
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
          return *v24;
        }

LABEL_38:
        *v24 = 0;
        return *v24;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v13 = sub_11F1920((a1 + 8));
        v6 = *v24;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_29;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v14 = sub_1958890(v21, *v24, a3);
LABEL_29:
    *v24 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }
  }

  return *v24;
}

char *sub_1588F9C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 16;
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

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v7;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if (*a3 - v7 >= v15)
  {
    v17 = v15;
    memcpy(v7, v16, v15);
    v7 += v17;
    return v7;
  }

  return sub_1957130(a3, v16, v15, v7);
}

uint64_t sub_15890E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
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
    v6 = *(a1 + 32);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
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

    v2 += v11;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_15891C4(void *a1)
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

  sub_1589248(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1589248(uint64_t a1)
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

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  result = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2777C98)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      sub_15B1C80(v5);
      operator delete();
    }

    if (*(a1 + 64))
    {
      sub_16E4E08();
      operator delete();
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      sub_16E5B34(v7);
      operator delete();
    }

    result = *(a1 + 88);
    if (result)
    {
      sub_16EB0C0();

      operator delete();
    }
  }

  return result;
}

void sub_1589380(void *a1)
{
  sub_15891C4(a1);

  operator delete();
}

uint64_t sub_15893B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_23:
    v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_31:
    v8 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_36:
    result = sub_16E4E44(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_37;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_27:
  v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_35:
  result = sub_1580044(*(result + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_37:
  result = sub_16E5B70(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_16E5B70(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    result = sub_16EB0FC(*(v1 + 88));
  }

  if ((v2 & 0x600) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 96) = 0;
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

uint64_t sub_158953C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v49 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v49, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v49 + 1);
    v8 = **v49;
    if (**v49 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v49, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v49 + 2);
      }
    }

    *v49 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 > 8)
      {
        if (v11 == 9)
        {
          if (v8 == 74)
          {
            *(a1 + 16) |= 8u;
            v40 = *(a1 + 8);
            v13 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
            if (v40)
            {
              v13 = *v13;
            }

            v14 = (a1 + 48);
            goto LABEL_78;
          }

          goto LABEL_82;
        }

        if (v11 == 10)
        {
          if (v8 != 82)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 0x80u;
          v27 = *(a1 + 80);
          if (v27)
          {
            goto LABEL_62;
          }

          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          sub_16F58FC(v32);
          v27 = v33;
          *(a1 + 80) = v33;
LABEL_61:
          v7 = *v49;
LABEL_62:
          v19 = sub_21F86E8(a3, v27, v7);
          goto LABEL_79;
        }

        if (v11 != 11 || v8 != 90)
        {
          goto LABEL_82;
        }

        *(a1 + 16) |= 0x100u;
        v16 = *(a1 + 88);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_16F5DB8(v18);
          *(a1 + 88) = v16;
          v7 = *v49;
        }

        v19 = sub_21F8D18(a3, v16, v7);
      }

      else
      {
        if (v11 != 6)
        {
          if (v11 != 7)
          {
            if (v11 == 8 && v8 == 66)
            {
              *(a1 + 16) |= 4u;
              v12 = *(a1 + 8);
              v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
              if (v12)
              {
                v13 = *v13;
              }

              v14 = (a1 + 40);
              goto LABEL_78;
            }

            goto LABEL_82;
          }

          if (v8 != 58)
          {
            goto LABEL_82;
          }

          *(a1 + 16) |= 0x40u;
          v27 = *(a1 + 72);
          if (v27)
          {
            goto LABEL_62;
          }

          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          sub_16F58FC(v29);
          v27 = v30;
          *(a1 + 72) = v30;
          goto LABEL_61;
        }

        if (v8 != 50)
        {
          goto LABEL_82;
        }

        *(a1 + 16) |= 0x20u;
        v37 = *(a1 + 64);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          v37 = sub_16F5828(v39);
          *(a1 + 64) = v37;
          v7 = *v49;
        }

        v19 = sub_21F4D60(a3, v37, v7);
      }

LABEL_79:
      *v49 = v19;
      if (!v19)
      {
        goto LABEL_99;
      }

      goto LABEL_80;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_82;
        }

        *(a1 + 16) |= 1u;
        v24 = *(a1 + 8);
        v13 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v13 = *v13;
        }

        v14 = (a1 + 24);
LABEL_78:
        v41 = sub_194DB04(v14, v13);
        v19 = sub_1958890(v41, *v49, a3);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_82;
        }

        *(a1 + 16) |= 0x10u;
        v21 = *(a1 + 56);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          v21 = sub_15B234C(v23);
          *(a1 + 56) = v21;
          v7 = *v49;
        }

        v19 = sub_221ECFC(a3, v21, v7);
      }

      goto LABEL_79;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_82;
      }

      v5 |= 0x200u;
      v35 = (v7 + 1);
      v34 = *v7;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_67;
      }

      v36 = *v35;
      v34 = (v36 << 7) + v34 - 128;
      if ((v36 & 0x80000000) == 0)
      {
        v35 = (v7 + 2);
LABEL_67:
        *v49 = v35;
        *(a1 + 96) = v34;
        goto LABEL_80;
      }

      v47 = sub_19587DC(v7, v34);
      *v49 = v47;
      *(a1 + 96) = v48;
      if (!v47)
      {
        goto LABEL_99;
      }

      goto LABEL_80;
    }

    if (v11 != 4)
    {
      break;
    }

    if (v8 != 32)
    {
      goto LABEL_82;
    }

    v5 |= 0x400u;
    LODWORD(v25) = *v7;
    if ((v25 & 0x80000000) == 0)
    {
      v26 = v7 + 1;
LABEL_91:
      *v49 = v26;
      *(a1 + 104) = v25;
      goto LABEL_80;
    }

    v25 = (v7[1] << 7) + v25 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v26 = v7 + 2;
      goto LABEL_91;
    }

    v45 = sub_19587DC(v7, v25);
    *v49 = v45;
    *(a1 + 104) = v46;
    if (!v45)
    {
      goto LABEL_99;
    }

LABEL_80:
    if (sub_195ADC0(a3, v49, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 8);
    v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v13 = *v13;
    }

    v14 = (a1 + 32);
    goto LABEL_78;
  }

LABEL_82:
  if (v8)
  {
    v42 = (v8 & 7) == 4;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    v43 = *(a1 + 8);
    if (v43)
    {
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v44 = sub_11F1920((a1 + 8));
      v7 = *v49;
    }

    v19 = sub_1952690(v8, v44, v7, a3);
    goto LABEL_79;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_99:
  *v49 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v49;
}

char *sub_15899E8(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 56);
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

    v4 = sub_15B1F3C(v8, v10, a3);
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x200) == 0)
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

  v11 = *(a1 + 96);
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
  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 104);
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

  if ((v6 & 2) != 0)
  {
    v15 = sub_128AEEC(a3, 5, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v15);
    if ((v6 & 0x20) == 0)
    {
LABEL_30:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_30;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v20 = *(a1 + 64);
  *v15 = 50;
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
  if ((v6 & 0x40) == 0)
  {
LABEL_31:
    if ((v6 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

LABEL_43:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v23 = *(a1 + 72);
  *v15 = 58;
  v24 = *(v23 + 20);
  v15[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v15 + 1);
  }

  else
  {
    v25 = v15 + 2;
  }

  v15 = sub_16E5FE0(v23, v25, a3);
  if ((v6 & 4) == 0)
  {
LABEL_32:
    if ((v6 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_50;
  }

LABEL_49:
  v15 = sub_128AEEC(a3, 8, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v15);
  if ((v6 & 8) == 0)
  {
LABEL_33:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_51;
  }

LABEL_50:
  v15 = sub_128AEEC(a3, 9, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v15);
  if ((v6 & 0x80) == 0)
  {
LABEL_34:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_57;
  }

LABEL_51:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v26 = *(a1 + 80);
  *v15 = 82;
  v27 = *(v26 + 20);
  v15[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v15 + 1);
  }

  else
  {
    v28 = v15 + 2;
  }

  v15 = sub_16E5FE0(v26, v28, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_57:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v29 = *(a1 + 88);
    *v15 = 90;
    v30 = *(v29 + 20);
    v15[1] = v30;
    if (v30 > 0x7F)
    {
      v31 = sub_19575D0(v30, v15 + 1);
    }

    else
    {
      v31 = v15 + 2;
    }

    v15 = sub_16EBD38(v29, v31, a3);
  }

LABEL_63:
  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return v15;
  }

  v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
  v35 = *(v34 + 31);
  if (v35 < 0)
  {
    v36 = *(v34 + 8);
    v35 = *(v34 + 16);
  }

  else
  {
    v36 = (v34 + 8);
  }

  if (*a3 - v15 >= v35)
  {
    v37 = v35;
    memcpy(v15, v36, v35);
    v15 += v37;
    return v15;
  }

  return sub_1957130(a3, v36, v35, v15);
}

uint64_t sub_1589E3C(uint64_t a1)
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
    v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  v17 = sub_15B20A0(*(a1 + 56));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  v18 = sub_16E51F0(*(a1 + 64));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  v19 = sub_16E62F4(*(a1 + 72));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = sub_16E62F4(*(a1 + 80));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_40;
  }

  if ((v2 & 0x100) != 0)
  {
    v20 = sub_16EC25C(*(a1 + 88));
    v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_22:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v3 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  v21 = *(a1 + 104);
  if (v21 < 0)
  {
    v22 = 11;
  }

  else
  {
    v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v22;
LABEL_40:
  v23 = *(a1 + 8);
  if (v23)
  {
    v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v3 += v26;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_158A130(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_55;
  }

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
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_15:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    *(a1 + 16) |= 0x10u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_15B234C(v19);
      *(a1 + 56) = v17;
    }

    if (*(a2 + 56))
    {
      v20 = *(a2 + 56);
    }

    else
    {
      v20 = &off_27789A0;
    }

    sub_1581C8C(v17, v20);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

LABEL_18:
  v14 = *(a2 + 48);
  *(a1 + 16) |= 8u;
  v15 = *(a1 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((v4 & 0x20) != 0)
  {
LABEL_29:
    *(a1 + 16) |= 0x20u;
    v21 = *(a1 + 64);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_16F5828(v23);
      *(a1 + 64) = v21;
    }

    if (*(a2 + 64))
    {
      v24 = *(a2 + 64);
    }

    else
    {
      v24 = &off_277E5E8;
    }

    sub_16E527C(v21, v24);
  }

LABEL_37:
  if ((v4 & 0x40) != 0)
  {
    *(a1 + 16) |= 0x40u;
    v25 = *(a1 + 72);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_16F58FC(v27);
      *(a1 + 72) = v25;
    }

    if (*(a2 + 72))
    {
      v28 = *(a2 + 72);
    }

    else
    {
      v28 = &off_277E650;
    }

    sub_16E645C(v25, v28);
  }

  if ((v4 & 0x80) != 0)
  {
    *(a1 + 16) |= 0x80u;
    v29 = *(a1 + 80);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      sub_16F58FC(v31);
      *(a1 + 80) = v29;
    }

    if (*(a2 + 80))
    {
      v32 = *(a2 + 80);
    }

    else
    {
      v32 = &off_277E650;
    }

    sub_16E645C(v29, v32);
  }

LABEL_55:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_61;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_58;
    }

LABEL_73:
    *(a1 + 96) = *(a2 + 96);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  *(a1 + 16) |= 0x100u;
  v34 = *(a1 + 88);
  if (!v34)
  {
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_16F5DB8(v36);
    *(a1 + 88) = v34;
  }

  if (*(a2 + 88))
  {
    v37 = *(a2 + 88);
  }

  else
  {
    v37 = &off_277E820;
  }

  sub_16EC8A0(v34, v37);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_73;
  }

LABEL_58:
  if ((v4 & 0x400) != 0)
  {
LABEL_59:
    *(a1 + 104) = *(a2 + 104);
  }

LABEL_60:
  *(a1 + 16) |= v4;
LABEL_61:
  v33 = *(a2 + 8);
  if (v33)
  {

    sub_1957EF4((a1 + 8), (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_158A430(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 56);
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    while (v5 >= 1)
    {
      v7 = v5 - 1;
      v8 = sub_15B16F0(*(v6 + 8 * v5));
      v5 = v7;
      if (!v8)
      {
        return 0;
      }
    }
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_16E5370(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_16E6614(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = sub_16E6614(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) == 0)
  {
    return 1;
  }

  result = sub_16ECE70(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_158A4F0(uint64_t a1)
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
  if (a1 != &off_2777D08)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_13878A4(v6);
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

void sub_158A5A8(uint64_t a1)
{
  sub_158A4F0(a1);

  operator delete();
}

uint64_t sub_158A5E0(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_13878E0(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_158A63C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v19, i) & 1) == 0; i = a3[11].i32[1])
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
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        sub_1392574(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_221F17C(a3, v14, v6);
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
          return v19;
        }

        return 0;
      }

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

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

char *sub_158A780(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
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

    v4 = sub_13880A4(v6, v8, a3);
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 31);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
  }

  else
  {
    v13 = (v11 + 8);
  }

  if (*a3 - v4 >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_158A88C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_138853C(*(a1 + 24));
    result = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    result = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    result += v6;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_158A90C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      sub_1392574(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_276D3A8;
    }

    sub_1388770(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_158A9B4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_1388C74(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_158A9F4(uint64_t a1)
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

  if (a1 != &off_2777D28 && *(a1 + 24))
  {
    sub_1839D0C();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_158AAAC(uint64_t a1)
{
  sub_158A9F4(a1);

  operator delete();
}

uint64_t sub_158AAE4(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_1839D48(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_158AB40(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v18, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v18 + 1;
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v18 + 2;
      }
    }

    v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_1864918(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2208718(a3, v14, v6);
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
          return v18;
        }

        return 0;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
}

char *sub_158AC84(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
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

    v4 = sub_183A034(v6, v8, a3);
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 31);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
  }

  else
  {
    v13 = (v11 + 8);
  }

  if ((*a3 - v4) >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_158AD90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_183A234(*(a1 + 24));
    result = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    result = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    result += v6;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_158AE28(uint64_t a1)
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

  if (a1 != &off_2777D48)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15B1C80(v6);
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

void sub_158AEF4(uint64_t a1)
{
  sub_158AE28(a1);

  operator delete();
}

uint64_t sub_158AF2C(uint64_t result)
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
      result = sub_1580044(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
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

uint64_t sub_158AFD0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v31 + 1);
    v8 = **v31;
    if (**v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v31 + 2);
      }
    }

    *v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_37;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v22 = sub_194DB04((a1 + 24), v21);
        v16 = sub_1958890(v22, *v31, a3);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_37;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_15B234C(v15);
          *(a1 + 32) = v13;
          v7 = *v31;
        }

        v16 = sub_221ECFC(a3, v13, v7);
      }

LABEL_44:
      *v31 = v16;
      if (!v16)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
    v24 = (v7 + 1);
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = (v7 + 2);
LABEL_36:
      *v31 = v24;
      *(a1 + 40) = v23;
      goto LABEL_45;
    }

    v29 = sub_19587DC(v7, v23);
    *v31 = v29;
    *(a1 + 40) = v30;
    if (!v29)
    {
      goto LABEL_55;
    }

LABEL_45:
    if (sub_195ADC0(a3, v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 32)
  {
    v18 = (v7 + 1);
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if (v19 < 0)
    {
      *v31 = sub_19587DC(v7, v17);
      if (!*v31)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v18 = (v7 + 2);
LABEL_25:
      *v31 = v18;
    }

    if (v17 > 2)
    {
      sub_12E8500();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 48) = v17;
    }

    goto LABEL_45;
  }

LABEL_37:
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
    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v28 = sub_11F1920((a1 + 8));
      v7 = *v31;
    }

    v16 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_158B278(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
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

    v4 = sub_15B1F3C(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
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

  v11 = *(a1 + 40);
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

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v15;
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

  if (*a3 - v15 >= v23)
  {
    v25 = v23;
    memcpy(v15, v24, v23);
    v15 += v25;
    return v15;
  }

  return sub_1957130(a3, v24, v23, v15);
}

uint64_t sub_158B4B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_15B20A0(*(a1 + 32));
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
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(a1 + 48);
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

std::string *sub_158B5F8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        goto LABEL_23;
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

      v9 = sub_15B234C(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27789A0;
    }

    result = sub_1581C8C(v9, v12);
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
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_23:
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

uint64_t sub_158B718(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

uint64_t sub_158B78C(uint64_t a1)
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

  if (a1 != &off_2777D80)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15B1C80(v6);
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

void sub_158B858(uint64_t a1)
{
  sub_158B78C(a1);

  operator delete();
}

uint64_t sub_158B890(uint64_t result)
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
      result = sub_1580044(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_158B924(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v22 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v22, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v22 + 1);
    v7 = **v22;
    if (**v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v22 + 2);
      }
    }

    *v22 = v6;
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

          v15 = sub_15B234C(v17);
          *(a1 + 32) = v15;
          v6 = *v22;
        }

        v14 = sub_221ECFC(a3, v15, v6);
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v20 = sub_194DB04((a1 + 24), v19);
      v14 = sub_1958890(v20, *v22, a3);
      goto LABEL_28;
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
        return *v22;
      }

LABEL_34:
      *v22 = 0;
      return *v22;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_28:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  return *v22;
}

char *sub_158BAC0(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 18;
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

    v4 = sub_15B1F3C(v7, v9, a3);
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_158BBEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_15B20A0(*(a1 + 32));
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

uint64_t sub_158BCC8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

uint64_t sub_158BD3C(uint64_t a1)
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

  if (a1 != &off_2777DA8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15B1C80(v6);
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

void sub_158BE08(uint64_t a1)
{
  sub_158BD3C(a1);

  operator delete();
}

uint64_t sub_158BE40(uint64_t result)
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
      result = sub_1580044(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 32) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_158BED8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v28, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v28 + 1);
    v8 = **v28;
    if (**v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v28 + 2);
      }
    }

    *v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v21 = (v7 + 1);
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = (v7 + 2);
LABEL_30:
      *v28 = v21;
      *(a1 + 40) = v20 != 0;
      goto LABEL_35;
    }

    v26 = sub_19587DC(v7, v20);
    *v28 = v26;
    *(a1 + 40) = v27 != 0;
    if (!v26)
    {
      goto LABEL_42;
    }

LABEL_35:
    if (sub_195ADC0(a3, v28, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 18)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v17 = *(a1 + 32);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_15B234C(v19);
      *(a1 + 32) = v17;
      v7 = *v28;
    }

    v16 = sub_221ECFC(a3, v17, v7);
LABEL_34:
    *v28 = v16;
    if (!v16)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 24), v24);
    v16 = sub_1958890(v25, *v28, a3);
    goto LABEL_34;
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
      v7 = *v28;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_34;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_42:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_158C10C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
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

  v7 = *(a1 + 32);
  *v4 = 18;
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

  v4 = sub_15B1F3C(v7, v9, a3);
  if ((v6 & 4) != 0)
  {
LABEL_12:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 40);
    *v4 = 24;
    v4[1] = v10;
    v4 += 2;
  }

LABEL_15:
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

uint64_t sub_158C288(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_11;
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

  v8 = sub_15B20A0(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  result = v3 + ((v2 >> 1) & 2);
LABEL_11:
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

std::string *sub_158C374(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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
LABEL_6:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        v3[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
        goto LABEL_6;
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

      v9 = sub_15B234C(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27789A0;
    }

    result = sub_1581C8C(v9, v12);
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

uint64_t sub_158C484(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = v3 - 1;
    v6 = sub_15B16F0(*(v4 + 8 * v3));
    v3 = v5;
  }

  while (v6);
  return v1;
}

void *sub_158C4F8(void *a1)
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

  sub_158C584(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_158C584(uint64_t result)
{
  if (result != &off_2777DD8)
  {
    v1 = result;
    v2 = *(result + 48);
    if (v2)
    {
      sub_158016C(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_1581E70(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_158485C(v4);
      operator delete();
    }

    v5 = v1[9];
    if (v5)
    {
      sub_15891C4(v5);
      operator delete();
    }

    v6 = v1[10];
    if (v6)
    {
      sub_1585758(v6);
      operator delete();
    }

    v7 = v1[11];
    if (v7)
    {
      sub_1585DF4(v7);
      operator delete();
    }

    v8 = v1[12];
    if (v8)
    {
      sub_1586AFC(v8);
      operator delete();
    }

    v9 = v1[13];
    if (v9)
    {
      sub_1588CAC(v9);
      operator delete();
    }

    v10 = v1[14];
    if (v10)
    {
      sub_158A4F0(v10);
      operator delete();
    }

    v11 = v1[15];
    if (v11)
    {
      sub_158A9F4(v11);
      operator delete();
    }

    v12 = v1[16];
    if (v12)
    {
      sub_158AE28(v12);
      operator delete();
    }

    v13 = v1[17];
    if (v13)
    {
      sub_158B78C(v13);
      operator delete();
    }

    result = v1[18];
    if (result)
    {
      sub_158BD3C(result);

      operator delete();
    }
  }

  return result;
}

void sub_158C76C(void *a1)
{
  sub_158C4F8(a1);

  operator delete();
}

uint64_t sub_158C7A4(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = sub_15802D0(*(a1 + 48));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_1581FE0(*(a1 + 56));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_1584994(*(a1 + 64));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = sub_15893B8(*(a1 + 72));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_29:
    result = sub_1585F1C(*(a1 + 88));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_28:
  result = sub_158585C(*(a1 + 80));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_30:
  result = sub_1586C50(*(a1 + 96));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = sub_1588D84(*(a1 + 104));
  }

LABEL_11:
  if ((v3 & 0x1F00) == 0)
  {
    goto LABEL_18;
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_158A5E0(*(a1 + 112));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = sub_158AAE4(*(a1 + 120));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = sub_158AF2C(*(a1 + 128));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  result = sub_158B890(*(a1 + 136));
  if ((v3 & 0x1000) != 0)
  {
LABEL_17:
    result = sub_158BE40(*(a1 + 144));
  }

LABEL_18:
  if ((v3 & 0x6000) != 0)
  {
    *(a1 + 152) = 0;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_158C8E8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v72 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v72, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v72 + 1);
    v8 = **v72;
    if (**v72 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v72, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v72 + 2);
      }
    }

    *v72 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_110;
        }

        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if (v13 < 0)
        {
          *v72 = sub_19587DC(v7, v11);
          if (!*v72)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v12 = (v7 + 2);
LABEL_12:
          *v72 = v12;
        }

        if (v11 > 0xD)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 0x2000u;
          *(a1 + 152) = v11;
        }

        goto LABEL_118;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 1u;
        v48 = *(a1 + 48);
        if (!v48)
        {
          v49 = *(a1 + 8);
          v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v50 = *v50;
          }

          v48 = sub_15AC43C(v50);
          *(a1 + 48) = v48;
          v7 = *v72;
        }

        v17 = sub_221F20C(a3, v48, v7);
        goto LABEL_117;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 2u;
        v31 = *(a1 + 56);
        if (!v31)
        {
          v32 = *(a1 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_15AC49C(v33);
          *(a1 + 56) = v31;
          v7 = *v72;
        }

        v17 = sub_221F29C(a3, v31, v7);
        goto LABEL_117;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 4u;
        v42 = *(a1 + 64);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_15AC6A8(v44);
          *(a1 + 64) = v42;
          v7 = *v72;
        }

        v17 = sub_221F32C(a3, v42, v7);
        goto LABEL_117;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 8u;
        v21 = *(a1 + 72);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          sub_15ACAAC(v23);
          v21 = v24;
          *(a1 + 72) = v24;
          v7 = *v72;
        }

        v17 = sub_221F3BC(a3, v21, v7);
        goto LABEL_117;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 0x10u;
        v51 = *(a1 + 80);
        if (!v51)
        {
          v52 = *(a1 + 8);
          v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v53 = *v53;
          }

          v51 = sub_15AC75C(v53);
          *(a1 + 80) = v51;
          v7 = *v72;
        }

        v17 = sub_221F44C(a3, v51, v7);
        goto LABEL_117;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 0x20u;
        v57 = *(a1 + 88);
        if (!v57)
        {
          v58 = *(a1 + 8);
          v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
          if (v58)
          {
            v59 = *v59;
          }

          sub_15AC7E0(v59);
          v57 = v60;
          *(a1 + 88) = v60;
          v7 = *v72;
        }

        v17 = sub_221F4DC(a3, v57, v7);
        goto LABEL_117;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 0x40u;
        v45 = *(a1 + 96);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_15AC864(v47);
          *(a1 + 96) = v45;
          v7 = *v72;
        }

        v17 = sub_221F56C(a3, v45, v7);
        goto LABEL_117;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 0x80u;
        v64 = *(a1 + 104);
        if (!v64)
        {
          v65 = *(a1 + 8);
          v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
          if (v65)
          {
            v66 = *v66;
          }

          v64 = sub_15ACA24(v66);
          *(a1 + 104) = v64;
          v7 = *v72;
        }

        v17 = sub_221F5FC(a3, v64, v7);
        goto LABEL_117;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 0x100u;
        v28 = *(a1 + 112);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_15ACB48(v30);
          *(a1 + 112) = v28;
          v7 = *v72;
        }

        v17 = sub_221F68C(a3, v28, v7);
        goto LABEL_117;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 0x200u;
        v61 = *(a1 + 120);
        if (!v61)
        {
          v62 = *(a1 + 8);
          v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
          if (v62)
          {
            v63 = *v63;
          }

          v61 = sub_15ACBC0(v63);
          *(a1 + 120) = v61;
          v7 = *v72;
        }

        v17 = sub_221F71C(a3, v61, v7);
        goto LABEL_117;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 0x400u;
        v18 = *(a1 + 128);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_15ACC38(v20);
          *(a1 + 128) = v18;
          v7 = *v72;
        }

        v17 = sub_221F7AC(a3, v18, v7);
        goto LABEL_117;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 0x800u;
        v25 = *(a1 + 136);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_15ACCC0(v27);
          *(a1 + 136) = v25;
          v7 = *v72;
        }

        v17 = sub_221F83C(a3, v25, v7);
        goto LABEL_117;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_110;
        }

        v5 |= 0x4000u;
        v54 = (v7 + 1);
        v55 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_91;
        }

        v56 = *v54;
        v55 = v55 + (v56 << 7) - 128;
        if (v56 < 0)
        {
          v70 = sub_1958770(v7, v55);
          *v72 = v70;
          *(a1 + 156) = v71;
          if (!v70)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v54 = (v7 + 2);
LABEL_91:
          *v72 = v54;
          *(a1 + 156) = v55;
        }

        goto LABEL_118;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_110;
        }

        *(a1 + 16) |= 0x1000u;
        v14 = *(a1 + 144);
        if (!v14)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v14 = sub_15ACD44(v16);
          *(a1 + 144) = v14;
          v7 = *v72;
        }

        v17 = sub_221F8CC(a3, v14, v7);
        goto LABEL_117;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_110;
        }

        v34 = (v7 - 2);
        while (1)
        {
          v35 = (v34 + 2);
          *v72 = v34 + 2;
          v36 = *(a1 + 40);
          if (v36 && (v37 = *(a1 + 32), v37 < *v36))
          {
            *(a1 + 32) = v37 + 1;
            v38 = *&v36[2 * v37 + 2];
          }

          else
          {
            v39 = *(a1 + 24);
            if (!v39)
            {
              operator new();
            }

            *v41 = v40;
            v41[1] = sub_195A650;
            *v40 = 0;
            v40[1] = 0;
            v40[2] = 0;
            v38 = sub_19593CC(a1 + 24, v40);
            v35 = *v72;
          }

          v34 = sub_1958890(v38, v35, a3);
          *v72 = v34;
          if (!v34)
          {
            goto LABEL_128;
          }

          if (*a3 <= v34 || *v34 != 386)
          {
            goto LABEL_118;
          }
        }

      default:
LABEL_110:
        if (v8)
        {
          v67 = (v8 & 7) == 4;
        }

        else
        {
          v67 = 1;
        }

        if (!v67)
        {
          v68 = *(a1 + 8);
          if (v68)
          {
            v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v69 = sub_11F1920((a1 + 8));
            v7 = *v72;
          }

          v17 = sub_1952690(v8, v69, v7, a3);
LABEL_117:
          *v72 = v17;
          if (!v17)
          {
            goto LABEL_128;
          }

LABEL_118:
          if (sub_195ADC0(a3, v72, a3[11].i32[1]))
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
LABEL_128:
          *v72 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v72;
    }
  }
}

char *sub_158D038(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 152);
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

    v12 = *(a1 + 48);
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

    v6 = sub_1580D58(v12, v14, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
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

  v15 = *(a1 + 56);
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

  v6 = sub_15829D8(v15, v17, a3);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_36:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 64);
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

  v6 = sub_1584F0C(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_42:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v21 = *(a1 + 72);
  *v6 = 42;
  v22 = *(v21 + 20);
  v6[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v6 + 1);
  }

  else
  {
    v23 = v6 + 2;
  }

  v6 = sub_15899E8(v21, v23, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_48:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v24 = *(a1 + 80);
  *v6 = 50;
  v25 = *(v24 + 20);
  v6[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v6 + 1);
  }

  else
  {
    v26 = v6 + 2;
  }

  v6 = sub_1585A8C(v24, v26, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_54:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v27 = *(a1 + 88);
  *v6 = 58;
  v28 = *(v27 + 20);
  v6[1] = v28;
  if (v28 > 0x7F)
  {
    v29 = sub_19575D0(v28, v6 + 1);
  }

  else
  {
    v29 = v6 + 2;
  }

  v6 = sub_15863D4(v27, v29, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

LABEL_60:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v30 = *(a1 + 96);
  *v6 = 66;
  v31 = *(v30 + 20);
  v6[1] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v6 + 1);
  }

  else
  {
    v32 = v6 + 2;
  }

  v6 = sub_1587108(v30, v32, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_18:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_66:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v33 = *(a1 + 104);
  *v6 = 74;
  v34 = *(v33 + 20);
  v6[1] = v34;
  if (v34 > 0x7F)
  {
    v35 = sub_19575D0(v34, v6 + 1);
  }

  else
  {
    v35 = v6 + 2;
  }

  v6 = sub_1588F9C(v33, v35, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_78;
  }

LABEL_72:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v36 = *(a1 + 112);
  *v6 = 82;
  v37 = *(v36 + 20);
  v6[1] = v37;
  if (v37 > 0x7F)
  {
    v38 = sub_19575D0(v37, v6 + 1);
  }

  else
  {
    v38 = v6 + 2;
  }

  v6 = sub_158A780(v36, v38, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_84;
  }

LABEL_78:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v39 = *(a1 + 120);
  *v6 = 90;
  v40 = *(v39 + 20);
  v6[1] = v40;
  if (v40 > 0x7F)
  {
    v41 = sub_19575D0(v40, v6 + 1);
  }

  else
  {
    v41 = v6 + 2;
  }

  v6 = sub_158AC84(v39, v41, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

LABEL_90:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v45 = *(a1 + 136);
    *v6 = 106;
    v46 = *(v45 + 20);
    v6[1] = v46;
    if (v46 > 0x7F)
    {
      v47 = sub_19575D0(v46, v6 + 1);
    }

    else
    {
      v47 = v6 + 2;
    }

    v6 = sub_158BAC0(v45, v47, a3);
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_96;
  }

LABEL_84:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v42 = *(a1 + 128);
  *v6 = 98;
  v43 = *(v42 + 20);
  v6[1] = v43;
  if (v43 > 0x7F)
  {
    v44 = sub_19575D0(v43, v6 + 1);
  }

  else
  {
    v44 = v6 + 2;
  }

  v6 = sub_158B278(v42, v44, a3);
  if ((v5 & 0x800) != 0)
  {
    goto LABEL_90;
  }

LABEL_22:
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    v11 = v6;
    goto LABEL_103;
  }

LABEL_96:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v48 = *(a1 + 156);
  *v6 = 112;
  v6[1] = v48;
  if (v48 > 0x7F)
  {
    v6[1] = v48 | 0x80;
    v49 = v48 >> 7;
    v6[2] = v48 >> 7;
    v11 = v6 + 3;
    if (v48 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        LODWORD(v6) = v49 >> 7;
        *v11++ = v49 >> 7;
        v50 = v49 >> 14;
        v49 >>= 7;
      }

      while (v50);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_103:
  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v51 = *(a1 + 144);
    *v11 = 122;
    v52 = *(v51 + 20);
    v11[1] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v11 + 1);
    }

    else
    {
      v53 = v11 + 2;
    }

    v11 = sub_158C10C(v51, v53, a3);
  }

  v54 = *(a1 + 32);
  if (v54 >= 1)
  {
    v55 = 8;
    do
    {
      v56 = *(*(a1 + 40) + v55);
      v57 = *(v56 + 23);
      if (v57 < 0 && (v57 = v56[1], v57 > 127) || (*a3 - v11 + 13) < v57)
      {
        v11 = sub_1957480(a3, 16, v56, v11);
      }

      else
      {
        *v11 = 386;
        v11[2] = v57;
        if (*(v56 + 23) < 0)
        {
          v56 = *v56;
        }

        v58 = v11 + 3;
        memcpy(v58, v56, v57);
        v11 = &v58[v57];
      }

      v55 += 8;
      --v54;
    }

    while (v54);
  }

  v59 = *(a1 + 8);
  if ((v59 & 1) == 0)
  {
    return v11;
  }

  v61 = v59 & 0xFFFFFFFFFFFFFFFCLL;
  v62 = *(v61 + 31);
  if (v62 < 0)
  {
    v63 = *(v61 + 8);
    v62 = *(v61 + 16);
  }

  else
  {
    v63 = (v61 + 8);
  }

  if ((*a3 - v11) >= v62)
  {
    v64 = v62;
    memcpy(v11, v63, v62);
    v11 += v64;
    return v11;
  }

  return sub_1957130(a3, v63, v62, v11);
}

uint64_t sub_158D7DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 2 * v2;
  if (v2 >= 1)
  {
    v4 = (*(a1 + 40) + 8);
    do
    {
      v5 = *v4++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_16;
  }

  if (v8)
  {
    v12 = sub_1581438(*(a1 + 48));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_9:
      if ((v8 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_9;
  }

  v13 = sub_1583004(*(a1 + 56));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_10:
    if ((v8 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = sub_15852F4(*(a1 + 64));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = sub_1589E3C(*(a1 + 72));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_32:
    v17 = sub_1586764(*(a1 + 88));
    v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_14:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_31:
  v16 = sub_1585BB8(*(a1 + 80));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_33:
  v18 = sub_1587334(*(a1 + 96));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_15:
    v9 = sub_15890E8(*(a1 + 104));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  if ((v8 & 0x7F00) == 0)
  {
    goto LABEL_25;
  }

  if ((v8 & 0x100) != 0)
  {
    v19 = sub_158A88C(*(a1 + 112));
    v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x200) == 0)
    {
LABEL_19:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_37;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v20 = sub_158AD90(*(a1 + 120));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x400) == 0)
  {
LABEL_20:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v21 = sub_158B4B4(*(a1 + 128));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x800) == 0)
  {
LABEL_21:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v22 = sub_158BBEC(*(a1 + 136));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x1000) == 0)
  {
LABEL_22:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_39:
  v23 = sub_158C288(*(a1 + 144));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x2000) == 0)
  {
LABEL_23:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_40:
  v24 = *(a1 + 152);
  if (v24 < 0)
  {
    v25 = 11;
  }

  else
  {
    v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v25;
  if ((v8 & 0x4000) != 0)
  {
LABEL_24:
    v3 += ((9 * (__clz(*(a1 + 156) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_25:
  v10 = *(a1 + 8);
  if (v10)
  {
    v26 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v27 < 0)
    {
      v27 = *(v26 + 16);
    }

    v3 += v27;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_158DBA4(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_78;
  }

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

      v10 = sub_15AC43C(v12);
      *(a1 + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v13 = *(a2 + 48);
    }

    else
    {
      v13 = &off_2777880;
    }

    sub_1581820(v10, v13);
    if ((v9 & 2) == 0)
    {
LABEL_7:
      if ((v9 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
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

    v14 = sub_15AC49C(v16);
    *(a1 + 56) = v14;
  }

  if (*(a2 + 56))
  {
    v17 = *(a2 + 56);
  }

  else
  {
    v17 = &off_2777990;
  }

  sub_1583378(v14, v17);
  if ((v9 & 4) == 0)
  {
LABEL_8:
    if ((v9 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_30:
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

    v18 = sub_15AC6A8(v20);
    *(a1 + 64) = v18;
  }

  if (*(a2 + 64))
  {
    v21 = *(a2 + 64);
  }

  else
  {
    v21 = &off_2777AD0;
  }

  sub_15854C4(v18, v21);
  if ((v9 & 8) == 0)
  {
LABEL_9:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_38:
  *(a1 + 16) |= 8u;
  v22 = *(a1 + 72);
  if (!v22)
  {
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_15ACAAC(v24);
    *(a1 + 72) = v22;
  }

  if (*(a2 + 72))
  {
    v25 = *(a2 + 72);
  }

  else
  {
    v25 = &off_2777C98;
  }

  sub_158A130(v22, v25);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_54:
    *(a1 + 16) |= 0x20u;
    v30 = *(a1 + 88);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      sub_15AC7E0(v32);
      *(a1 + 88) = v30;
    }

    if (*(a2 + 88))
    {
      v33 = *(a2 + 88);
    }

    else
    {
      v33 = &off_2777B60;
    }

    sub_15868DC(v30, v33);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_70;
    }

    goto LABEL_62;
  }

LABEL_46:
  *(a1 + 16) |= 0x10u;
  v26 = *(a1 + 80);
  if (!v26)
  {
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v26 = sub_15AC75C(v28);
    *(a1 + 80) = v26;
  }

  if (*(a2 + 80))
  {
    v29 = *(a2 + 80);
  }

  else
  {
    v29 = &off_2777B38;
  }

  sub_1585C94(v26, v29);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_11:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_62:
  *(a1 + 16) |= 0x40u;
  v34 = *(a1 + 96);
  if (!v34)
  {
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_15AC864(v36);
    *(a1 + 96) = v34;
  }

  if (*(a2 + 96))
  {
    v37 = *(a2 + 96);
  }

  else
  {
    v37 = &off_2777BA8;
  }

  sub_15874E4(v34, v37);
  if ((v9 & 0x80) != 0)
  {
LABEL_70:
    *(a1 + 16) |= 0x80u;
    v38 = *(a1 + 104);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_15ACA24(v40);
      *(a1 + 104) = v38;
    }

    if (*(a2 + 104))
    {
      v41 = *(a2 + 104);
    }

    else
    {
      v41 = &off_2777C70;
    }

    sub_12B0A14(v38, v41);
  }

LABEL_78:
  if ((v9 & 0x7F00) == 0)
  {
    goto LABEL_88;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v43 = *(a1 + 112);
    if (!v43)
    {
      v44 = *(a1 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      v43 = sub_15ACB48(v45);
      *(a1 + 112) = v43;
    }

    if (*(a2 + 112))
    {
      v46 = *(a2 + 112);
    }

    else
    {
      v46 = &off_2777D08;
    }

    sub_158A90C(v43, v46);
    if ((v9 & 0x200) == 0)
    {
LABEL_81:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_108;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_81;
  }

  *(a1 + 16) |= 0x200u;
  v47 = *(a1 + 120);
  if (!v47)
  {
    v48 = *(a1 + 8);
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    v47 = sub_15ACBC0(v49);
    *(a1 + 120) = v47;
  }

  if (*(a2 + 120))
  {
    v50 = *(a2 + 120);
  }

  else
  {
    v50 = &off_2777D28;
  }

  sub_1401564(v47, v50);
  if ((v9 & 0x400) == 0)
  {
LABEL_82:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_116;
  }

LABEL_108:
  *(a1 + 16) |= 0x400u;
  v51 = *(a1 + 128);
  if (!v51)
  {
    v52 = *(a1 + 8);
    v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
    if (v52)
    {
      v53 = *v53;
    }

    v51 = sub_15ACC38(v53);
    *(a1 + 128) = v51;
  }

  if (*(a2 + 128))
  {
    v54 = *(a2 + 128);
  }

  else
  {
    v54 = &off_2777D48;
  }

  sub_158B5F8(v51, v54);
  if ((v9 & 0x800) == 0)
  {
LABEL_83:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_124;
  }

LABEL_116:
  *(a1 + 16) |= 0x800u;
  v55 = *(a1 + 136);
  if (!v55)
  {
    v56 = *(a1 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    v55 = sub_15ACCC0(v57);
    *(a1 + 136) = v55;
  }

  if (*(a2 + 136))
  {
    v58 = *(a2 + 136);
  }

  else
  {
    v58 = &off_2777D80;
  }

  sub_1585C94(v55, v58);
  if ((v9 & 0x1000) == 0)
  {
LABEL_84:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

LABEL_132:
    *(a1 + 152) = *(a2 + 152);
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_124:
  *(a1 + 16) |= 0x1000u;
  v59 = *(a1 + 144);
  if (!v59)
  {
    v60 = *(a1 + 8);
    v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
    if (v60)
    {
      v61 = *v61;
    }

    v59 = sub_15ACD44(v61);
    *(a1 + 144) = v59;
  }

  if (*(a2 + 144))
  {
    v62 = *(a2 + 144);
  }

  else
  {
    v62 = &off_2777DA8;
  }

  sub_158C374(v59, v62);
  if ((v9 & 0x2000) != 0)
  {
    goto LABEL_132;
  }

LABEL_85:
  if ((v9 & 0x4000) != 0)
  {
LABEL_86:
    *(a1 + 156) = *(a2 + 156);
  }

LABEL_87:
  *(a1 + 16) |= v9;
LABEL_88:
  v42 = *(a2 + 8);
  if (v42)
  {

    sub_1957EF4((a1 + 8), (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_158E0B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0 || (result = sub_1581D80(*(a1 + 48)), result))
  {
    if ((v2 & 2) == 0 || (result = sub_1583738(*(a1 + 56)), result))
    {
      if ((v2 & 4) != 0)
      {
        result = sub_15856D4(*(a1 + 64));
        if (!result)
        {
          return result;
        }

        v2 = *(a1 + 16);
      }

      if ((v2 & 8) != 0)
      {
        result = sub_158A430(*(a1 + 72));
        if (!result)
        {
          return result;
        }

        v2 = *(a1 + 16);
      }

      if ((v2 & 0x10) == 0 || (result = sub_1585D80(*(a1 + 80)), result))
      {
        if ((v2 & 0x20) != 0)
        {
          result = sub_1586A8C(*(a1 + 88));
          if (!result)
          {
            return result;
          }

          v2 = *(a1 + 16);
        }

        if ((v2 & 0x40) != 0)
        {
          result = sub_15877E0(*(a1 + 96));
          if (!result)
          {
            return result;
          }

          v2 = *(a1 + 16);
        }

        if ((v2 & 0x100) != 0)
        {
          v4 = *(a1 + 112);
          if (*(v4 + 16))
          {
            result = sub_1388C74(*(v4 + 24));
            if (!result)
            {
              return result;
            }

            v2 = *(a1 + 16);
          }
        }

        if ((v2 & 0x400) == 0 || (result = sub_158B718(*(a1 + 128)), result))
        {
          if ((v2 & 0x800) == 0 || (result = sub_158BCC8(*(a1 + 136)), result))
          {
            if ((v2 & 0x1000) == 0)
            {
              return 1;
            }

            result = sub_158C484(*(a1 + 144));
            if (result)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_158E1B8(void *a1)
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