void sub_161D7B4(uint64_t a1)
{
  sub_161D6C4(a1);

  operator delete();
}

uint64_t sub_161D7EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_161CE64(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 32);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = sub_161A168(*(v1 + 40));
    }
  }

  if ((v2 & 0x38) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
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

char *sub_161D888(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v30 + 1;
    v8 = *v30;
    if (*v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v30 + 2;
      }
    }

    v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_42;
      }

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

        v19 = sub_1631850(v21);
        *(a1 + 24) = v19;
        v7 = v30;
      }

      v18 = sub_222B87C(a3, v19, v7);
    }

    else
    {
      if (v11 != 2)
      {
        if (v11 == 3 && v8 == 29)
        {
          v14 = *v7;
          v13 = v7 + 4;
          v5 |= 8u;
          *(a1 + 48) = v14;
LABEL_41:
          v30 = v13;
          goto LABEL_50;
        }

        goto LABEL_42;
      }

      if (v8 != 18)
      {
        goto LABEL_42;
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

        v23 = sub_16318C8(v25);
        *(a1 + 32) = v23;
        v7 = v30;
      }

      v18 = sub_222B90C(a3, v23, v7);
    }

LABEL_49:
    v30 = v18;
    if (!v18)
    {
      goto LABEL_55;
    }

LABEL_50:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      if (v8 == 45)
      {
        v26 = *v7;
        v13 = v7 + 4;
        v5 |= 0x20u;
        *(a1 + 56) = v26;
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    if (v11 != 6 || v8 != 50)
    {
      goto LABEL_42;
    }

    *(a1 + 16) |= 4u;
    v15 = *(a1 + 40);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_16315C4(v17);
      *(a1 + 40) = v15;
      v7 = v30;
    }

    v18 = sub_222B7EC(a3, v15, v7);
    goto LABEL_49;
  }

  if (v8 == 37)
  {
    v22 = *v7;
    v13 = v7 + 4;
    v5 |= 0x10u;
    *(a1 + 52) = v22;
    goto LABEL_41;
  }

LABEL_42:
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
      v7 = v30;
    }

    v18 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_161DB24(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_161D064(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
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

  v4 = sub_161D518(v10, v12, a3);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 48);
  *v4 = 29;
  *(v4 + 1) = v13;
  v4 += 5;
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 52);
  *v4 = 37;
  *(v4 + 1) = v14;
  v4 += 5;
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 56);
  *v4 = 45;
  *(v4 + 1) = v15;
  v4 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_29:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 40);
    *v4 = 50;
    v17 = *(v16 + 20);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_161A3D8(v16, v18, a3);
  }

LABEL_35:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_161DDC4(uint64_t a1)
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
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = sub_161D214(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_161D640(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = sub_161A59C(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v8 = v3 + 5;
  if ((v2 & 8) == 0)
  {
    v8 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v8 += 5;
  }

  if ((v2 & 0x20) != 0)
  {
    result = v8 + 5;
  }

  else
  {
    result = v8;
  }

LABEL_17:
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

std::string *sub_161DEE4(std::string *result, uint64_t a2)
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

        data = sub_1631850(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277AD38;
      }

      result = sub_128F8FC(data, v9);
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

      v10 = sub_16318C8(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277AD58;
    }

    result = sub_12B9D50(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }

LABEL_30:
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

      v14 = sub_16315C4(v16);
      v3[1].__r_.__value_.__r.__words[2] = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_277AC40;
    }

    result = sub_161A678(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_39;
    }

LABEL_38:
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

LABEL_39:
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
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

uint64_t sub_161E094(uint64_t a1)
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

void sub_161E14C(uint64_t a1)
{
  sub_161E094(a1);

  operator delete();
}

uint64_t sub_161E184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

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
  if ((v1 & 0x3C) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_161E20C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v42, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v42 + 1);
    v8 = **v42;
    if (**v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v42 + 2);
      }
    }

    *v42 = v7;
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
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v21 = (a1 + 24);
        goto LABEL_35;
      }

      goto LABEL_46;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_46;
      }

      v5 |= 4u;
      v26 = v7 + 1;
      LODWORD(v25) = *v7;
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_40;
      }

      v27 = *v26;
      v25 = v25 + (v27 << 7) - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_40:
        *v42 = v26;
        *(a1 + 40) = v25;
        goto LABEL_54;
      }

      v38 = sub_19587DC(v7, v25);
      *v42 = v38;
      *(a1 + 40) = v39;
      if (!v38)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_46;
      }

      v5 |= 8u;
      v14 = v7 + 1;
      LODWORD(v13) = *v7;
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v14;
      v13 = v13 + (v15 << 7) - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_18:
        *v42 = v14;
        *(a1 + 44) = v13;
        goto LABEL_54;
      }

      v36 = sub_19587DC(v7, v13);
      *v42 = v36;
      *(a1 + 44) = v37;
      if (!v36)
      {
        goto LABEL_67;
      }
    }

LABEL_54:
    if (sub_195ADC0(a3, v42, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_46;
      }

      v5 |= 0x10u;
      v29 = v7 + 1;
      LODWORD(v28) = *v7;
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_45;
      }

      v30 = *v29;
      v28 = v28 + (v30 << 7) - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v29 = v7 + 2;
LABEL_45:
        *v42 = v29;
        *(a1 + 48) = v28;
        goto LABEL_54;
      }

      v40 = sub_19587DC(v7, v28);
      *v42 = v40;
      *(a1 + 48) = v41;
      if (!v40)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_46;
      }

      v5 |= 0x20u;
      v17 = v7 + 1;
      LODWORD(v16) = *v7;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v17;
      v16 = v16 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_26:
        *v42 = v17;
        *(a1 + 52) = v16;
        goto LABEL_54;
      }

      v34 = sub_19587DC(v7, v16);
      *v42 = v34;
      *(a1 + 52) = v35;
      if (!v34)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_54;
  }

  if (v8 == 34)
  {
    *(a1 + 16) |= 2u;
    v22 = *(a1 + 8);
    v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v20 = *v20;
    }

    v21 = (a1 + 32);
LABEL_35:
    v23 = sub_194DB04(v21, v20);
    v24 = sub_1958890(v23, *v42, a3);
LABEL_53:
    *v42 = v24;
    if (!v24)
    {
      goto LABEL_67;
    }

    goto LABEL_54;
  }

LABEL_46:
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
      v7 = *v42;
    }

    v24 = sub_1952690(v8, v33, v7, a3);
    goto LABEL_53;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_67:
  *v42 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v42;
}

char *sub_161E538(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
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

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 44);
    *v7 = 24;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v7[2];
        do
        {
          *(v12 - 1) = v15 | 0x80;
          v15 = v14 >> 7;
          *v12++ = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  if ((v6 & 2) != 0)
  {
    v12 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v12);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 48);
    *v12 = 40;
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v12[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v12[2] = v18 >> 7;
      v17 = v12 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v12[2];
        do
        {
          *(v17 - 1) = v20 | 0x80;
          v20 = v19 >> 7;
          *v17++ = v19 >> 7;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v17 = v12 + 2;
    }
  }

  else
  {
    v17 = v12;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v23 = *(a1 + 52);
    *v17 = 48;
    v17[1] = v23;
    if (v23 > 0x7F)
    {
      v17[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v17[2] = v23 >> 7;
      v22 = v17 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v17[2];
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
      v22 = v17 + 2;
    }
  }

  else
  {
    v22 = v17;
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v22;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if (*a3 - v22 >= v30)
  {
    v32 = v30;
    memcpy(v22, v31, v30);
    v22 += v32;
    return v22;
  }

  return sub_1957130(a3, v31, v30, v22);
}

uint64_t sub_161E830(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v2 = 0;
    goto LABEL_33;
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
  if ((v1 & 4) != 0)
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

    v2 += v10;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 44);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v12;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_25:
  v13 = *(a1 + 48);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v14;
  if ((v1 & 0x20) != 0)
  {
LABEL_29:
    v15 = *(a1 + 52);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v16;
  }

LABEL_33:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_161E9FC(void *a1)
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

void sub_161EA70(void *a1)
{
  sub_161E9FC(a1);

  operator delete();
}

uint64_t sub_161EAA8(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
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

char *sub_161EAD0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
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
      v31 = v19;
      *(a1 + 32) = v20;
      goto LABEL_35;
    }

    v29 = sub_1958770(v7, v20);
    v31 = v29;
    *(a1 + 32) = v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
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
      v31 = v16;
      *(a1 + 28) = v17;
      goto LABEL_35;
    }

    v25 = sub_1958770(v7, v17);
    v31 = v25;
    *(a1 + 28) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_34:
      v31 = v22;
      *(a1 + 24) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
    v31 = v27;
    *(a1 + 24) = v28;
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
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
      v7 = v31;
    }

    v31 = sub_1952690(v8, v15, v7, a3);
    if (!v31)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_161ED18(uint64_t a1, char *__dst, _DWORD *a3)
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

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v15;
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

  if (*a3 - v15 >= v22)
  {
    v24 = v22;
    memcpy(v15, v23, v22);
    v15 += v24;
    return v15;
  }

  return sub_1957130(a3, v23, v22, v15);
}

uint64_t sub_161EF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_10;
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
  }

LABEL_10:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_161F02C(uint64_t a1)
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

  if (a1 != &off_277ADE0)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_161E9FC(v6);
      operator delete();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      sub_161E9FC(v7);
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

void sub_161F12C(uint64_t a1)
{
  sub_161F02C(a1);

  operator delete();
}

uint64_t sub_161F164(uint64_t result)
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
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
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

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  result = sub_161EAA8(*(result + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_161EAA8(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
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

uint64_t sub_161F250(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 4u;
        v22 = *(a1 + 40);
        if (v22)
        {
          goto LABEL_47;
        }

        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_1631A4C(v24);
        *(a1 + 40) = v22;
      }

      else
      {
        if (v11 != 5)
        {
          if (v11 != 6 || v8 != 50)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 2u;
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v18 = (a1 + 32);
LABEL_30:
          v20 = sub_194DB04(v18, v17);
          v21 = sub_1958890(v20, *v37, a3);
LABEL_55:
          *v37 = v21;
          if (!v21)
          {
            goto LABEL_65;
          }

          goto LABEL_56;
        }

        if (v8 != 42)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 8u;
        v22 = *(a1 + 48);
        if (v22)
        {
LABEL_47:
          v21 = sub_222B99C(a3, v22, v7);
          goto LABEL_55;
        }

        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        v22 = sub_1631A4C(v29);
        *(a1 + 48) = v22;
      }

      v7 = *v37;
      goto LABEL_47;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_48;
      }

      v5 |= 0x10u;
      v25 = (v7 + 1);
      v26 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      v27 = *v25;
      v26 = v26 + (v27 << 7) - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v25 = (v7 + 2);
LABEL_40:
        *v37 = v25;
        *(a1 + 56) = v26;
        goto LABEL_56;
      }

      v35 = sub_1958770(v7, v26);
      *v37 = v35;
      *(a1 + 56) = v36;
      if (!v35)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_48;
      }

      v5 |= 0x20u;
      v13 = (v7 + 1);
      v14 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v13;
      v14 = v14 + (v15 << 7) - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_18:
        *v37 = v13;
        *(a1 + 60) = v14;
        goto LABEL_56;
      }

      v33 = sub_1958770(v7, v14);
      *v37 = v33;
      *(a1 + 60) = v34;
      if (!v33)
      {
        goto LABEL_65;
      }
    }

LABEL_56:
    if (sub_195ADC0(a3, v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v17 = *v17;
    }

    v18 = (a1 + 24);
    goto LABEL_30;
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

    v21 = sub_1952690(v8, v32, v7, a3);
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

char *sub_161F568(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 56);
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

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 60);
    *v7 = 24;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v7[2];
        do
        {
          *(v12 - 1) = v15 | 0x80;
          v15 = v14 >> 7;
          *v12++ = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v19 = *(a1 + 40);
    *v12 = 34;
    v20 = *(v19 + 20);
    v12[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v12 + 1);
    }

    else
    {
      v21 = v12 + 2;
    }

    v12 = sub_161ED18(v19, v21, a3);
    if ((v6 & 8) == 0)
    {
LABEL_23:
      if ((v6 & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_23;
  }

  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v22 = *(a1 + 48);
  *v12 = 42;
  v23 = *(v22 + 20);
  v12[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v12 + 1);
  }

  else
  {
    v24 = v12 + 2;
  }

  v12 = sub_161ED18(v22, v24, a3);
  if ((v6 & 2) != 0)
  {
LABEL_24:
    v12 = sub_128AEEC(a3, 6, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v12);
  }

LABEL_25:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v12;
  }

  v25 = v17 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v12 >= v26)
  {
    v28 = v26;
    memcpy(v12, v27, v26);
    v12 += v28;
    return v12;
  }

  return sub_1957130(a3, v27, v26, v12);
}

uint64_t sub_161F838(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
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
    v12 = sub_161EF50(*(a1 + 40));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = sub_161EF50(*(a1 + 48));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_21:
  v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_16:
    v3 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v10 = *(a1 + 8);
  if (v10)
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v3 += v15;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_161F9F0(std::string *result, uint64_t a2)
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
      v8 = *(a2 + 32);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v9 = v3->__r_.__value_.__l.__size_;
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
    }

    if ((v4 & 4) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
      v12 = v3[1].__r_.__value_.__r.__words[2];
      if (!v12)
      {
        v13 = v3->__r_.__value_.__l.__size_;
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_1631A4C(v14);
        v3[1].__r_.__value_.__r.__words[2] = v12;
      }

      if (*(a2 + 40))
      {
        v15 = *(a2 + 40);
      }

      else
      {
        v15 = &off_277ADB8;
      }

      result = sub_128F948(v12, v15);
      if ((v4 & 8) == 0)
      {
LABEL_12:
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_36;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    data = v3[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      v17 = v3->__r_.__value_.__l.__size_;
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      data = sub_1631A4C(v18);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v19 = *(a2 + 48);
    }

    else
    {
      v19 = &off_277ADB8;
    }

    result = sub_128F948(data, v19);
    if ((v4 & 0x10) == 0)
    {
LABEL_13:
      if ((v4 & 0x20) == 0)
      {
LABEL_15:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_16;
      }

LABEL_14:
      HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
      goto LABEL_15;
    }

LABEL_36:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v11 = *(a2 + 8);
  if (v11)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_161FBA0(void *a1)
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

void sub_161FC14(void *a1)
{
  sub_161FBA0(a1);

  operator delete();
}

uint64_t sub_161FC4C(uint64_t a1)
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

char *sub_161FC74(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v22, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v22 + 1;
    v8 = *v22;
    if (*v22 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v22, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v22 + 2;
      }
    }

    v22 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 13)
        {
          v18 = *v7;
          v12 = v7 + 4;
          v5 |= 1u;
          *(a1 + 24) = v18;
          goto LABEL_26;
        }
      }

      else if (v11 == 2 && v8 == 21)
      {
        v15 = *v7;
        v12 = v7 + 4;
        v5 |= 2u;
        *(a1 + 28) = v15;
        goto LABEL_26;
      }
    }

    else if (v11 == 3)
    {
      if (v8 == 29)
      {
        v16 = *v7;
        v12 = v7 + 4;
        v5 |= 4u;
        *(a1 + 32) = v16;
        goto LABEL_26;
      }
    }

    else if (v11 == 4)
    {
      if (v8 == 37)
      {
        v17 = *v7;
        v12 = v7 + 4;
        v5 |= 8u;
        *(a1 + 36) = v17;
        goto LABEL_26;
      }
    }

    else if (v11 == 5 && v8 == 45)
    {
      v13 = *v7;
      v12 = v7 + 4;
      v5 |= 0x10u;
      *(a1 + 40) = v13;
LABEL_26:
      v22 = v12;
      goto LABEL_27;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v20 = *(a1 + 8);
    if (v20)
    {
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v21 = sub_11F1920((a1 + 8));
      v7 = v22;
    }

    v22 = sub_1952690(v8, v21, v7, a3);
    if (!v22)
    {
      goto LABEL_40;
    }

LABEL_27:
    if (sub_195ADC0(a3, &v22, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_40:
  v22 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

char *sub_161FE50(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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

  v8 = *(a1 + 28);
  *v4 = 21;
  *(v4 + 1) = v8;
  v4 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 32);
  *v4 = 29;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 36);
  *v4 = 37;
  *(v4 + 1) = v10;
  v4 += 5;
  if ((v6 & 0x10) != 0)
  {
LABEL_19:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 40);
    *v4 = 45;
    *(v4 + 1) = v11;
    v4 += 5;
  }

LABEL_22:
  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v15)
  {
    v17 = v15;
    memcpy(v4, v16, v15);
    v4 += v17;
    return v4;
  }

  return sub_1957130(a3, v16, v15, v4);
}

uint64_t sub_1620024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) != 0)
  {
    v2 = 5;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x10) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

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

std::string *sub_16200A4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_9;
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

      goto LABEL_13;
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

LABEL_14:
    HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  }

LABEL_8:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_9:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1620140(uint64_t a1)
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

  sub_16201C4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_16201C4(uint64_t (***result)()))()
{
  if (result != &off_277AE50)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      sub_161FBA0(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_161FBA0(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_161FBA0(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_161FBA0(result);

      operator delete();
    }
  }

  return result;
}

void sub_1620270(uint64_t a1)
{
  sub_1620140(a1);

  operator delete();
}

uint64_t sub_16202A8(uint64_t result)
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

LABEL_12:
    result = sub_161FC4C(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = sub_161FC4C(*(result + 24));
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  result = sub_161FC4C(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_161FC4C(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1620340(uint64_t a1, char *a2, int32x2_t *a3)
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
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 40);
          if (v12)
          {
            goto LABEL_36;
          }

          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v12 = sub_1631B54(v20);
          *(a1 + 40) = v12;
          goto LABEL_35;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v12 = *(a1 + 48);
        if (v12)
        {
          goto LABEL_36;
        }

        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v12 = sub_1631B54(v16);
        *(a1 + 48) = v12;
LABEL_35:
        v6 = v26;
        goto LABEL_36;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 24);
        if (v12)
        {
          goto LABEL_36;
        }

        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v12 = sub_1631B54(v18);
        *(a1 + 24) = v12;
        goto LABEL_35;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_1631B54(v14);
        *(a1 + 32) = v12;
        goto LABEL_35;
      }

LABEL_36:
      v21 = sub_222BA2C(a3, v12, v6);
      goto LABEL_37;
    }

    if (v7)
    {
      v22 = (v7 & 7) == 4;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v26;
      }

      return 0;
    }

    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v6 = v26;
    }

    v21 = sub_1952690(v7, v24, v6, a3);
LABEL_37:
    v26 = v21;
    if (!v21)
    {
      return 0;
    }
  }

  return v26;
}

char *sub_162057C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_161FE50(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
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

  v4 = sub_161FE50(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
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

  v4 = sub_161FE50(v13, v15, a3);
  if ((v6 & 8) != 0)
  {
LABEL_24:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 48);
    *v4 = 34;
    v17 = *(v16 + 20);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_161FE50(v16, v18, a3);
  }

LABEL_30:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_16207D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1620024(*(a1 + 24));
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
    v5 = sub_1620024(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v9 = sub_1620024(*(a1 + 40));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = sub_1620024(*(a1 + 48));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  v7 = *(a1 + 8);
  if (v7)
  {
    v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1620908(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_39;
  }

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

      data = sub_1631B54(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_277AE20;
    }

    result = sub_16200A4(data, v8);
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

    v9 = sub_1631B54(v11);
    v3[1].__r_.__value_.__l.__size_ = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_277AE20;
  }

  result = sub_16200A4(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

LABEL_23:
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

    v13 = sub_1631B54(v15);
    v3[1].__r_.__value_.__r.__words[2] = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_277AE20;
  }

  result = sub_16200A4(v13, v16);
  if ((v4 & 8) != 0)
  {
LABEL_31:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v17 = v3[2].__r_.__value_.__l.__data_;
    if (!v17)
    {
      v18 = v3->__r_.__value_.__l.__size_;
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_1631B54(v19);
      v3[2].__r_.__value_.__r.__words[0] = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_277AE20;
    }

    result = sub_16200A4(v17, v20);
  }

LABEL_39:
  v21 = *(a2 + 8);
  if (v21)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1620AB4(uint64_t a1)
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
  if (a1 != &off_277AE88)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1620140(v6);
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

void sub_1620B6C(uint64_t a1)
{
  sub_1620AB4(a1);

  operator delete();
}

uint64_t sub_1620BA4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_16202A8(*(result + 24));
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

char *sub_1620C0C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v29 + 1;
    v8 = *v29;
    if (*v29 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v29, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v29 + 2;
      }
    }

    v29 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_13;
      }

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

        sub_1631BD4(v22);
        v20 = v23;
        *(a1 + 24) = v23;
        v7 = v29;
      }

      v16 = sub_222BABC(a3, v20, v7);
LABEL_31:
      v29 = v16;
      if (!v16)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v11 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v18 = v7 + 1;
    LODWORD(v17) = *v7;
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v19 = *v18;
    v17 = v17 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_24:
      v29 = v18;
      *(a1 + 36) = v17;
      goto LABEL_39;
    }

    v27 = sub_19587DC(v7, v17);
    v29 = v27;
    *(a1 + 36) = v28;
    if (!v27)
    {
      goto LABEL_49;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1 && v8 == 8)
  {
    v25 = v7 + 1;
    v24 = *v7;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    v26 = *v25;
    v24 = (v26 << 7) + v24 - 128;
    if (v26 < 0)
    {
      v29 = sub_19587DC(v7, v24);
      if (!v29)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v25 = v7 + 2;
LABEL_36:
      v29 = v25;
    }

    if (v24 > 2)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 32) = v24;
    }

    goto LABEL_39;
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
      v7 = v29;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_1620E5C(uint64_t a1, char *__dst, _DWORD *a3)
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

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 24);
    *v11 = 26;
    v16 = *(v15 + 20);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_162057C(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v21)
  {
    v23 = v21;
    memcpy(v11, v22, v21);
    v11 += v23;
    return v11;
  }

  return sub_1957130(a3, v22, v21, v11);
}

uint64_t sub_1621070(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_16207D0(*(a1 + 24));
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

std::string *sub_162116C(std::string *result, uint64_t a2)
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

        sub_1631BD4(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277AE50;
      }

      result = sub_1620908(data, v9);
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
        HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
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

uint64_t sub_162126C(uint64_t a1)
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
  if (a1 != &off_277AEB0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1620140(v6);
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

void sub_1621324(uint64_t a1)
{
  sub_162126C(a1);

  operator delete();
}

uint64_t sub_162135C(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_16202A8(*(result + 24));
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

char *sub_16213BC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v25 + 1;
    v8 = *v25;
    if (*v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v25 + 2;
      }
    }

    v25 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v21 = v7 + 1;
    LODWORD(v20) = *v7;
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v21;
    v20 = v20 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_30:
      v25 = v21;
      *(a1 + 32) = v20;
      goto LABEL_31;
    }

    v23 = sub_19587DC(v7, v20);
    v25 = v23;
    *(a1 + 32) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
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

      sub_1631BD4(v18);
      v16 = v19;
      *(a1 + 24) = v19;
      v7 = v25;
    }

    v15 = sub_222BABC(a3, v16, v7);
LABEL_25:
    v25 = v15;
    if (!v15)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
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
      v7 = v25;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_25;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_38:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_1621590(uint64_t a1, char *__dst, _DWORD *a3)
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

    v6 = sub_162057C(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v17)
  {
    v19 = v17;
    memcpy(v6, v18, v17);
    v6 += v19;
    return v6;
  }

  return sub_1957130(a3, v18, v17, v6);
}

uint64_t sub_162171C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_16207D0(*(a1 + 24));
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

std::string *sub_16217E4(std::string *result, uint64_t a2)
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

        sub_1631BD4(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277AE50;
      }

      result = sub_1620908(data, v8);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16218CC(void *a1)
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

  sub_1621974(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_16384F4(a1 + 9);
  sub_1638470(a1 + 6);
  sub_16383EC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1621974(uint64_t result)
{
  if (result != &off_277AED8)
  {
    v1 = result;
    v2 = *(result + 96);
    if (v2)
    {
      sub_161A770(v2);
      operator delete();
    }

    v3 = v1[13];
    if (v3)
    {
      sub_161D6C4(v3);
      operator delete();
    }

    v4 = v1[14];
    if (v4)
    {
      sub_161C5F8(v4);
      operator delete();
    }

    v5 = v1[15];
    if (v5)
    {
      sub_161C5F8(v5);
      operator delete();
    }

    v6 = v1[16];
    if (v6)
    {
      sub_1620AB4(v6);
      operator delete();
    }

    v7 = v1[17];
    if (v7)
    {
      sub_162126C(v7);
      operator delete();
    }

    result = v1[18];
    if (result)
    {
      sub_161C5F8(result);

      operator delete();
    }
  }

  return result;
}

void sub_1621A8C(void *a1)
{
  sub_16218CC(a1);

  operator delete();
}

uint64_t sub_1621AC4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_161B150(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_161E184(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_161F164(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 0x7F) == 0)
  {
    goto LABEL_22;
  }

  if (v11)
  {
    result = sub_161A81C(*(v1 + 96));
    if ((v11 & 2) == 0)
    {
LABEL_16:
      if ((v11 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_28;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

  result = sub_161D7EC(*(v1 + 104));
  if ((v11 & 4) == 0)
  {
LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = sub_161C700(*(v1 + 112));
  if ((v11 & 8) == 0)
  {
LABEL_18:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_30:
    result = sub_1620BA4(*(v1 + 128));
    if ((v11 & 0x20) == 0)
    {
LABEL_20:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_29:
  result = sub_161C700(*(v1 + 120));
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  if ((v11 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_31:
  result = sub_162135C(*(v1 + 136));
  if ((v11 & 0x40) != 0)
  {
LABEL_21:
    result = sub_161C700(*(v1 + 144));
  }

LABEL_22:
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

char *sub_1621C10(uint64_t a1, char *a2, int32x2_t *a3)
{
  v58 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v58, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v58 + 1;
    v7 = *v58;
    if (*v58 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v58, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v58 + 2;
      }
    }

    v58 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 6)
    {
      if (v7 >> 3 <= 8)
      {
        if (v10 == 7)
        {
          if (v7 == 58)
          {
            *(a1 + 16) |= 0x10u;
            v35 = *(a1 + 128);
            if (!v35)
            {
              v36 = *(a1 + 8);
              v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
              if (v36)
              {
                v37 = *v37;
              }

              v35 = sub_1631C54(v37);
              *(a1 + 128) = v35;
              v6 = v58;
            }

            v31 = sub_222BCFC(a3, v35, v6);
            goto LABEL_101;
          }
        }

        else if (v10 == 8 && v7 == 66)
        {
          *(a1 + 16) |= 0x20u;
          v28 = *(a1 + 136);
          if (!v28)
          {
            v29 = *(a1 + 8);
            v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v30 = *v30;
            }

            v28 = sub_1631CD0(v30);
            *(a1 + 136) = v28;
            v6 = v58;
          }

          v31 = sub_222BD8C(a3, v28, v6);
          goto LABEL_101;
        }
      }

      else if (v10 == 9)
      {
        if (v7 == 74)
        {
          v42 = v6 - 1;
          while (1)
          {
            v43 = (v42 + 1);
            v58 = v42 + 1;
            v44 = *(a1 + 64);
            if (v44 && (v45 = *(a1 + 56), v45 < *v44))
            {
              *(a1 + 56) = v45 + 1;
              v46 = *&v44[2 * v45 + 2];
            }

            else
            {
              v47 = sub_16319C4(*(a1 + 48));
              v46 = sub_19593CC(a1 + 48, v47);
              v43 = v58;
            }

            v42 = sub_222BE1C(a3, v46, v43);
            v58 = v42;
            if (!v42)
            {
              return 0;
            }

            if (*a3 <= v42 || *v42 != 74)
            {
              goto LABEL_102;
            }
          }
        }
      }

      else if (v10 == 10)
      {
        if (v7 == 82)
        {
          *(a1 + 16) |= 0x40u;
          v11 = *(a1 + 144);
          if (v11)
          {
            goto LABEL_93;
          }

          v51 = *(a1 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          sub_16317D4(v52);
          v11 = v53;
          *(a1 + 144) = v53;
          goto LABEL_92;
        }
      }

      else if (v10 == 11 && v7 == 90)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v58 = v15 + 1;
          v17 = *(a1 + 88);
          if (v17 && (v18 = *(a1 + 80), v18 < *v17))
          {
            *(a1 + 80) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_1631AC8(*(a1 + 72));
            v19 = sub_19593CC(a1 + 72, v20);
            v16 = v58;
          }

          v15 = sub_222BEAC(a3, v19, v16);
          v58 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 90)
          {
            goto LABEL_102;
          }
        }
      }
    }

    else if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v32 = *(a1 + 96);
          if (!v32)
          {
            v33 = *(a1 + 8);
            v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
            if (v33)
            {
              v34 = *v34;
            }

            v32 = sub_163164C(v34);
            *(a1 + 96) = v32;
            v6 = v58;
          }

          v31 = sub_222BB4C(a3, v32, v6);
          goto LABEL_101;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v22 = v6 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          v58 = v22 + 1;
          v24 = *(a1 + 40);
          if (v24 && (v25 = *(a1 + 32), v25 < *v24))
          {
            *(a1 + 32) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = sub_1631744(*(a1 + 24));
            v26 = sub_19593CC(a1 + 24, v27);
            v23 = v58;
          }

          v22 = sub_222B6CC(a3, v26, v23);
          v58 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 18)
          {
            goto LABEL_102;
          }
        }
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 2u;
        v38 = *(a1 + 104);
        if (!v38)
        {
          v39 = *(a1 + 8);
          v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
          if (v39)
          {
            v40 = *v40;
          }

          sub_1631944(v40);
          v38 = v41;
          *(a1 + 104) = v41;
          v6 = v58;
        }

        v31 = sub_222BBDC(a3, v38, v6);
        goto LABEL_101;
      }
    }

    else if (v10 == 5)
    {
      if (v7 == 42)
      {
        *(a1 + 16) |= 4u;
        v11 = *(a1 + 112);
        if (v11)
        {
          goto LABEL_93;
        }

        v48 = *(a1 + 8);
        v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v49 = *v49;
        }

        sub_16317D4(v49);
        v11 = v50;
        *(a1 + 112) = v50;
LABEL_92:
        v6 = v58;
        goto LABEL_93;
      }
    }

    else if (v10 == 6 && v7 == 50)
    {
      *(a1 + 16) |= 8u;
      v11 = *(a1 + 120);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_16317D4(v13);
        v11 = v14;
        *(a1 + 120) = v14;
        goto LABEL_92;
      }

LABEL_93:
      v31 = sub_222BC6C(a3, v11, v6);
      goto LABEL_101;
    }

    if (v7)
    {
      v54 = (v7 & 7) == 4;
    }

    else
    {
      v54 = 1;
    }

    if (v54)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v58;
      }

      return 0;
    }

    v55 = *(a1 + 8);
    if (v55)
    {
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v56 = sub_11F1920((a1 + 8));
      v6 = v58;
    }

    v31 = sub_1952690(v7, v56, v6, a3);
LABEL_101:
    v58 = v31;
    if (!v31)
    {
      return 0;
    }

LABEL_102:
    ;
  }

  return v58;
}

char *sub_162212C(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 96);
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

    v4 = sub_161AAE4(v7, v9, a3);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v13 = *(v12 + 20);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_161BFB0(v12, v14, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 104);
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

    v4 = sub_161DB24(v15, v17, a3);
    if ((v6 & 4) == 0)
    {
LABEL_18:
      if ((v6 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_18;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 112);
  *v4 = 42;
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

  v4 = sub_161C990(v18, v20, a3);
  if ((v6 & 8) == 0)
  {
LABEL_19:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_34:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 120);
  *v4 = 50;
  v22 = *(v21 + 20);
  v4[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v4 + 1);
  }

  else
  {
    v23 = v4 + 2;
  }

  v4 = sub_161C990(v21, v23, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_20:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 128);
  *v4 = 58;
  v25 = *(v24 + 20);
  v4[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v4 + 1);
  }

  else
  {
    v26 = v4 + 2;
  }

  v4 = sub_1620E5C(v24, v26, a3);
  if ((v6 & 0x20) != 0)
  {
LABEL_46:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v27 = *(a1 + 136);
    *v4 = 66;
    v28 = *(v27 + 20);
    v4[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v4 + 1);
    }

    else
    {
      v29 = v4 + 2;
    }

    v4 = sub_1621590(v27, v29, a3);
  }

LABEL_52:
  v30 = *(a1 + 56);
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v32 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 74;
      v33 = *(v32 + 20);
      v4[1] = v33;
      if (v33 > 0x7F)
      {
        v34 = sub_19575D0(v33, v4 + 1);
      }

      else
      {
        v34 = v4 + 2;
      }

      v4 = sub_161E538(v32, v34, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v35 = *(a1 + 144);
    *v4 = 82;
    v36 = *(v35 + 20);
    v4[1] = v36;
    if (v36 > 0x7F)
    {
      v37 = sub_19575D0(v36, v4 + 1);
    }

    else
    {
      v37 = v4 + 2;
    }

    v4 = sub_161C990(v35, v37, a3);
  }

  v38 = *(a1 + 80);
  if (v38)
  {
    for (k = 0; k != v38; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v40 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 90;
      v41 = *(v40 + 20);
      v4[1] = v41;
      if (v41 > 0x7F)
      {
        v42 = sub_19575D0(v41, v4 + 1);
      }

      else
      {
        v42 = v4 + 2;
      }

      v4 = sub_161F568(v40, v42, a3);
    }
  }

  v43 = *(a1 + 8);
  if ((v43 & 1) == 0)
  {
    return v4;
  }

  v45 = v43 & 0xFFFFFFFFFFFFFFFCLL;
  v46 = *(v45 + 31);
  if (v46 < 0)
  {
    v47 = *(v45 + 8);
    v46 = *(v45 + 16);
  }

  else
  {
    v47 = (v45 + 8);
  }

  if ((*a3 - v4) >= v46)
  {
    v48 = v46;
    memcpy(v4, v47, v46);
    v4 += v48;
    return v4;
  }

  return sub_1957130(a3, v47, v46, v4);
}

uint64_t sub_1622648(uint64_t a1)
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
      v7 = sub_161C3A0(v6);
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
      v14 = sub_161E830(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_161F838(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x7F) == 0)
  {
    goto LABEL_30;
  }

  if (v22)
  {
    v26 = sub_161ADA0(*(a1 + 96));
    v16 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 2) == 0)
    {
LABEL_24:
      if ((v22 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_34;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_24;
  }

  v27 = sub_161DDC4(*(a1 + 104));
  v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 4) == 0)
  {
LABEL_25:
    if ((v22 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  v28 = sub_161CB8C(*(a1 + 112));
  v16 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 8) == 0)
  {
LABEL_26:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_36:
    v30 = sub_1621070(*(a1 + 128));
    v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x20) == 0)
    {
LABEL_28:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_35:
  v29 = sub_161CB8C(*(a1 + 120));
  v16 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x10) != 0)
  {
    goto LABEL_36;
  }

LABEL_27:
  if ((v22 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_37:
  v31 = sub_162171C(*(a1 + 136));
  v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x40) != 0)
  {
LABEL_29:
    v23 = sub_161CB8C(*(a1 + 144));
    v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_30:
  v24 = *(a1 + 8);
  if (v24)
  {
    v32 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v33 < 0)
    {
      v33 = *(v32 + 16);
    }

    v16 += v33;
  }

  *(a1 + 20) = v16;
  return v16;
}

std::string *sub_1622908(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1638AA0(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(&v3[2], *(a2 + 56));
    result = sub_1638B2C(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(&v3[3], *(a2 + 80));
    result = sub_1638BB8(v3 + 3, v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x7F) == 0)
  {
    goto LABEL_75;
  }

  if (v19)
  {
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    data = v3[4].__r_.__value_.__l.__data_;
    if (!data)
    {
      size = v3->__r_.__value_.__l.__size_;
      v22 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v22 = *v22;
      }

      data = sub_163164C(v22);
      v3[4].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 96))
    {
      v23 = *(a2 + 96);
    }

    else
    {
      v23 = &off_277AC70;
    }

    result = sub_12095D8(data, v23);
  }

  if ((v19 & 2) != 0)
  {
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v24 = v3[4].__r_.__value_.__l.__size_;
    if (!v24)
    {
      v25 = v3->__r_.__value_.__l.__size_;
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_1631944(v26);
      v3[4].__r_.__value_.__l.__size_ = v24;
    }

    if (*(a2 + 104))
    {
      v27 = *(a2 + 104);
    }

    else
    {
      v27 = &off_277AD78;
    }

    result = sub_161DEE4(v24, v27);
  }

  if ((v19 & 4) != 0)
  {
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v28 = v3[4].__r_.__value_.__r.__words[2];
    if (!v28)
    {
      v29 = v3->__r_.__value_.__l.__size_;
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      sub_16317D4(v30);
      v3[4].__r_.__value_.__r.__words[2] = v28;
    }

    if (*(a2 + 112))
    {
      v31 = *(a2 + 112);
    }

    else
    {
      v31 = &off_277AD08;
    }

    result = sub_161CC70(v28, v31);
    if ((v19 & 8) == 0)
    {
LABEL_31:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_32;
      }

LABEL_51:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
      v36 = v3[5].__r_.__value_.__l.__size_;
      if (!v36)
      {
        v37 = v3->__r_.__value_.__l.__size_;
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v38 = *v38;
        }

        v36 = sub_1631C54(v38);
        v3[5].__r_.__value_.__l.__size_ = v36;
      }

      if (*(a2 + 128))
      {
        v39 = *(a2 + 128);
      }

      else
      {
        v39 = &off_277AE88;
      }

      result = sub_162116C(v36, v39);
      if ((v19 & 0x20) == 0)
      {
LABEL_33:
        if ((v19 & 0x40) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_67;
      }

      goto LABEL_59;
    }
  }

  else if ((v19 & 8) == 0)
  {
    goto LABEL_31;
  }

  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v32 = v3[5].__r_.__value_.__l.__data_;
  if (!v32)
  {
    v33 = v3->__r_.__value_.__l.__size_;
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    sub_16317D4(v34);
    v3[5].__r_.__value_.__r.__words[0] = v32;
  }

  if (*(a2 + 120))
  {
    v35 = *(a2 + 120);
  }

  else
  {
    v35 = &off_277AD08;
  }

  result = sub_161CC70(v32, v35);
  if ((v19 & 0x10) != 0)
  {
    goto LABEL_51;
  }

LABEL_32:
  if ((v19 & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_59:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
  v40 = v3[5].__r_.__value_.__r.__words[2];
  if (!v40)
  {
    v41 = v3->__r_.__value_.__l.__size_;
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    v40 = sub_1631CD0(v42);
    v3[5].__r_.__value_.__r.__words[2] = v40;
  }

  if (*(a2 + 136))
  {
    v43 = *(a2 + 136);
  }

  else
  {
    v43 = &off_277AEB0;
  }

  result = sub_16217E4(v40, v43);
  if ((v19 & 0x40) != 0)
  {
LABEL_67:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
    v44 = v3[6].__r_.__value_.__l.__data_;
    if (!v44)
    {
      v45 = v3->__r_.__value_.__l.__size_;
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      sub_16317D4(v46);
      v3[6].__r_.__value_.__r.__words[0] = v44;
    }

    if (*(a2 + 144))
    {
      v47 = *(a2 + 144);
    }

    else
    {
      v47 = &off_277AD08;
    }

    result = sub_161CC70(v44, v47);
  }

LABEL_75:
  v48 = *(a2 + 8);
  if (v48)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v48 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1622CB8(uint64_t a1)
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

  if (a1 != &off_277AF70)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_162B2A4(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_16218CC(v7);
      operator delete();
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      sub_1629B68(v8);
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

void sub_1622DC4(uint64_t a1)
{
  sub_1622CB8(a1);

  operator delete();
}

uint64_t sub_1622DFC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if (v2)
  {
    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_11:
  result = sub_1622EEC(*(result + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = sub_1621AC4(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v4 = *(v1 + 48);
  v5 = *(v4 + 8);
  result = v4 + 8;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    result = sub_1957EA8(result);
  }

LABEL_15:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
  }

  if ((v2 & 0x1F00) != 0)
  {
    *(v1 + 84) = 0;
    *(v1 + 76) = 0;
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

uint64_t sub_1622EEC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 32) + 8);
    do
    {
      v4 = *v3++;
      sub_162A1B8(v4);
      --v2;
    }

    while (v2);
    *(a1 + 24) = 0;
  }

  result = sub_12A41D0(a1 + 40);
  v6 = *(a1 + 72);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 80) + 8);
    do
    {
      v8 = *v7++;
      result = sub_163033C(v8);
      --v6;
    }

    while (v6);
    *(a1 + 72) = 0;
  }

  v9 = *(a1 + 96);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 104) + 8);
    do
    {
      v11 = *v10++;
      result = sub_162A958(v11);
      --v9;
    }

    while (v9);
    *(a1 + 96) = 0;
  }

  v13 = *(a1 + 8);
  v12 = (a1 + 8);
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_1622FC0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1622FDC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v75 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v75, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v75 + 1);
    v8 = **v75;
    if (**v75 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v75, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v75 + 2);
      }
    }

    *v75 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_87;
        }

        v5 |= 0x10u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_12:
          *v75 = v12;
          *(a1 + 56) = v11;
          goto LABEL_95;
        }

        v69 = sub_19587DC(v7, v11);
        *v75 = v69;
        *(a1 + 56) = v70;
        if (v69)
        {
          goto LABEL_95;
        }

        goto LABEL_128;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_87;
        }

        v38 = (v7 + 1);
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }

        v39 = *v38;
        v40 = (v39 << 7) + v34;
        v34 = (v40 - 128);
        if (v39 < 0)
        {
          *v75 = sub_19587DC(v7, (v40 - 128));
          if (!*v75)
          {
            goto LABEL_128;
          }

          v34 = v72;
        }

        else
        {
          v38 = (v7 + 2);
LABEL_57:
          *v75 = v38;
        }

        if (v34 > 0x21 || ((1 << v34) & 0x300030001) == 0)
        {
          v60 = *(a1 + 8);
          if (v60)
          {
            v58 = ((v60 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v58 = sub_11F1920((a1 + 8));
          }

          v59 = 2;
LABEL_103:
          sub_19586BC(v59, v34, v58);
        }

        else
        {
          *(a1 + 16) |= 0x20u;
          *(a1 + 64) = v34;
        }

        goto LABEL_95;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_87;
        }

        v33 = (v7 + 1);
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_47;
        }

        v35 = *v33;
        v36 = (v35 << 7) + v34;
        v34 = (v36 - 128);
        if (v35 < 0)
        {
          *v75 = sub_19587DC(v7, (v36 - 128));
          if (!*v75)
          {
            goto LABEL_128;
          }

          v34 = v71;
        }

        else
        {
          v33 = (v7 + 2);
LABEL_47:
          *v75 = v33;
        }

        if (v34 <= 0x21 && ((1 << v34) & 0x300010001) != 0)
        {
          *(a1 + 16) |= 0x40u;
          *(a1 + 68) = v34;
          goto LABEL_95;
        }

        v57 = *(a1 + 8);
        if (v57)
        {
          v58 = ((v57 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        else
        {
          v58 = sub_11F1920((a1 + 8));
        }

        v59 = 4;
        goto LABEL_103;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 2u;
        v30 = *(a1 + 32);
        if (!v30)
        {
          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          v30 = sub_16326FC(v32);
          *(a1 + 32) = v30;
          v7 = *v75;
        }

        v20 = sub_222BF3C(a3, v30, v7);
        goto LABEL_94;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 1u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = sub_194DB04((a1 + 24), v18);
        v20 = sub_1958890(v19, *v75, a3);
        goto LABEL_94;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_87;
        }

        v5 |= 0x400u;
        v25 = (v7 + 1);
        v24 = *v7;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if (v26 < 0)
        {
          v65 = sub_19587DC(v7, v24);
          *v75 = v65;
          *(a1 + 81) = v66 != 0;
          if (!v65)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v25 = (v7 + 2);
LABEL_31:
          *v75 = v25;
          *(a1 + 81) = v24 != 0;
        }

        goto LABEL_95;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 4u;
        v42 = *(a1 + 40);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_1631D4C(v44);
          *(a1 + 40) = v42;
          v7 = *v75;
        }

        v20 = sub_222BFCC(a3, v42, v7);
        goto LABEL_94;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_87;
        }

        *(a1 + 16) |= 8u;
        v45 = *(a1 + 48);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_1632558(v47);
          *(a1 + 48) = v45;
          v7 = *v75;
        }

        v20 = sub_222C05C(a3, v45, v7);
        goto LABEL_94;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_87;
        }

        v5 |= 0x80u;
        v52 = (v7 + 1);
        LODWORD(v51) = *v7;
        if ((v51 & 0x80) == 0)
        {
          goto LABEL_86;
        }

        v53 = *v52;
        v51 = v51 + (v53 << 7) - 128;
        if (v53 < 0)
        {
          v73 = sub_19587DC(v7, v51);
          *v75 = v73;
          *(a1 + 72) = v74;
          if (!v73)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v52 = (v7 + 2);
LABEL_86:
          *v75 = v52;
          *(a1 + 72) = v51;
        }

        goto LABEL_95;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_87;
        }

        v49 = (v7 + 1);
        v48 = *v7;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_79;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if (v50 < 0)
        {
          *v75 = sub_19587DC(v7, v48);
          if (!*v75)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v49 = (v7 + 2);
LABEL_79:
          *v75 = v49;
        }

        if (v48 > 8)
        {
          sub_1313680();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 76) = v48;
        }

        goto LABEL_95;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_87;
        }

        v5 |= 0x800u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v61 = sub_19587DC(v7, v14);
          *v75 = v61;
          *(a1 + 82) = v62 != 0;
          if (!v61)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v15 = (v7 + 2);
LABEL_17:
          *v75 = v15;
          *(a1 + 82) = v14 != 0;
        }

        goto LABEL_95;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_87;
        }

        v5 |= 0x200u;
        v28 = (v7 + 1);
        v27 = *v7;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if (v29 < 0)
        {
          v67 = sub_19587DC(v7, v27);
          *v75 = v67;
          *(a1 + 80) = v68 != 0;
          if (!v67)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v28 = (v7 + 2);
LABEL_36:
          *v75 = v28;
          *(a1 + 80) = v27 != 0;
        }

        goto LABEL_95;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_87;
        }

        v5 |= 0x1000u;
        v21 = (v7 + 1);
        v22 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        v23 = *v21;
        v22 = v22 + (v23 << 7) - 128;
        if (v23 < 0)
        {
          v63 = sub_1958770(v7, v22);
          *v75 = v63;
          *(a1 + 84) = v64;
          if (!v63)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v21 = (v7 + 2);
LABEL_26:
          *v75 = v21;
          *(a1 + 84) = v22;
        }

        goto LABEL_95;
      default:
LABEL_87:
        if (v8)
        {
          v54 = (v8 & 7) == 4;
        }

        else
        {
          v54 = 1;
        }

        if (!v54)
        {
          v55 = *(a1 + 8);
          if (v55)
          {
            v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v56 = sub_11F1920((a1 + 8));
            v7 = *v75;
          }

          v20 = sub_1952690(v8, v56, v7, a3);
LABEL_94:
          *v75 = v20;
          if (!v20)
          {
            goto LABEL_128;
          }

LABEL_95:
          if (sub_195ADC0(a3, v75, a3[11].i32[1]))
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
          *v75 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v75;
    }
  }
}

char *sub_16236E4(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 64);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 68);
    *v11 = 32;
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 32);
    *v15 = 42;
    v21 = *(v20 + 112);
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v15 + 1);
    }

    else
    {
      v22 = v15 + 2;
    }

    v15 = sub_162B738(v20, v22, a3);
    if ((v5 & 1) == 0)
    {
LABEL_30:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_30;
  }

  v15 = sub_128AEEC(a3, 6, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v15);
  if ((v5 & 0x400) == 0)
  {
LABEL_31:
    if ((v5 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v23 = *(a1 + 81);
  *v15 = 56;
  v15[1] = v23;
  v15 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_32:
    if ((v5 & 8) == 0)
    {
      goto LABEL_33;
    }

LABEL_51:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v27 = *(a1 + 48);
    *v15 = 74;
    v28 = *(v27 + 20);
    v15[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v15 + 1);
    }

    else
    {
      v29 = v15 + 2;
    }

    v15 = sub_1629E88(v27, v29, a3);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_57;
  }

LABEL_45:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v24 = *(a1 + 40);
  *v15 = 66;
  v25 = *(v24 + 20);
  v15[1] = v25;
  if (v25 > 0x7F)
  {
    v26 = sub_19575D0(v25, v15 + 1);
  }

  else
  {
    v26 = v15 + 2;
  }

  v15 = sub_162212C(v24, v26, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_51;
  }

LABEL_33:
  if ((v5 & 0x80) == 0)
  {
LABEL_34:
    v19 = v15;
    goto LABEL_64;
  }

LABEL_57:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v30 = *(a1 + 72);
  *v15 = 80;
  v15[1] = v30;
  if (v30 > 0x7F)
  {
    v15[1] = v30 | 0x80;
    v31 = v30 >> 7;
    v15[2] = v30 >> 7;
    v19 = v15 + 3;
    if (v30 >= 0x4000)
    {
      LOBYTE(v32) = v15[2];
      do
      {
        *(v19 - 1) = v32 | 0x80;
        v32 = v31 >> 7;
        *v19++ = v31 >> 7;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
    }
  }

  else
  {
    v19 = v15 + 2;
  }

LABEL_64:
  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v35 = *(a1 + 76);
    *v19 = 88;
    v19[1] = v35;
    if (v35 > 0x7F)
    {
      v19[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v19[2] = v35 >> 7;
      v34 = v19 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v34 - 1) = v19 | 0x80;
          v19 = (v36 >> 7);
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v19 + 2;
    }
  }

  else
  {
    v34 = v19;
  }

  if ((v5 & 0x800) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_75;
    }

LABEL_80:
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v40 = *(a1 + 80);
    *v34 = 112;
    v34[1] = v40;
    v34 += 2;
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_83;
  }

  if (*a3 <= v34)
  {
    v34 = sub_225EB68(a3, v34);
  }

  v39 = *(a1 + 82);
  *v34 = 104;
  v34[1] = v39;
  v34 += 2;
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_80;
  }

LABEL_75:
  if ((v5 & 0x1000) == 0)
  {
LABEL_76:
    v38 = v34;
    goto LABEL_90;
  }

LABEL_83:
  if (*a3 <= v34)
  {
    v34 = sub_225EB68(a3, v34);
  }

  v41 = *(a1 + 84);
  *v34 = 120;
  v34[1] = v41;
  if (v41 > 0x7F)
  {
    v34[1] = v41 | 0x80;
    v42 = v41 >> 7;
    v34[2] = v41 >> 7;
    v38 = v34 + 3;
    if (v41 >= 0x4000)
    {
      LOBYTE(v43) = v34[2];
      do
      {
        *(v38 - 1) = v43 | 0x80;
        v43 = v42 >> 7;
        *v38++ = v42 >> 7;
        v44 = v42 >> 14;
        v42 >>= 7;
      }

      while (v44);
    }
  }

  else
  {
    v38 = v34 + 2;
  }

LABEL_90:
  v45 = *(a1 + 8);
  if ((v45 & 1) == 0)
  {
    return v38;
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

  if ((*a3 - v38) >= v48)
  {
    v50 = v48;
    memcpy(v38, v49, v48);
    v38 += v50;
    return v38;
  }

  return sub_1957130(a3, v49, v48, v38);
}

uint64_t sub_1623CB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_162BA18(*(a1 + 32));
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
    v8 = sub_1622648(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v9 = sub_162A064(*(a1 + 48));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_19:
  v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_20:
  v10 = *(a1 + 64);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v11;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_24:
  v12 = *(a1 + 68);
  if (v12 < 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v13;
  if ((v2 & 0x80) != 0)
  {
LABEL_28:
    v14 = *(a1 + 72);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v15;
  }

LABEL_32:
  if ((v2 & 0x1F00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v16 = *(a1 + 76);
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v16 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 11;
      }

      v3 += v18;
    }

    v3 += ((v2 >> 9) & 2) + ((v2 >> 8) & 2) + ((v2 >> 10) & 2);
    if ((v2 & 0x1000) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

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

std::string *sub_1623F58(std::string *result, uint64_t a2)
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

        goto LABEL_35;
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

      v9 = sub_16326FC(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_277B228;
    }

    result = sub_162419C(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    }

LABEL_35:
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

      v13 = sub_1631D4C(v15);
      v3[1].__r_.__value_.__r.__words[2] = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_277AED8;
    }

    result = sub_1622908(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_51;
    }

LABEL_43:
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

      data = sub_1632558(v19);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_277B1F8;
    }

    result = sub_12EE138(data, v20);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_52;
    }

LABEL_51:
    v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_53;
    }

LABEL_52:
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
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
      LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_53:
    HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x1F00) == 0)
  {
    goto LABEL_20;
  }

  if ((v4 & 0x100) != 0)
  {
    HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
    if ((v4 & 0x200) == 0)
    {
LABEL_15:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_57;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  v3[3].__r_.__value_.__s.__data_[8] = *(a2 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_58:
    v3[3].__r_.__value_.__s.__data_[10] = *(a2 + 82);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_57:
  v3[3].__r_.__value_.__s.__data_[9] = *(a2 + 81);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_58;
  }

LABEL_17:
  if ((v4 & 0x1000) != 0)
  {
LABEL_18:
    HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
  }

LABEL_19:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
LABEL_20:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_162419C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1638ED0(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_1201B48(&v3[1].__r_.__value_.__r.__words[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v12 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v9;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v12;
    v13 = v3[2].__r_.__value_.__l.__size_;
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8(&v3[2].__r_.__value_.__r.__words[2], *(a2 + 72));
    result = sub_1638F4C(&v3[2].__r_.__value_.__r.__words[2], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__l.__size_ - LODWORD(v3[3].__r_.__value_.__l.__data_));
    v17 = LODWORD(v3[3].__r_.__value_.__l.__data_) + v14;
    LODWORD(v3[3].__r_.__value_.__l.__data_) = v17;
    v18 = v3[3].__r_.__value_.__l.__size_;
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    v20 = *(a2 + 104);
    v21 = sub_19592E8(&v3[3].__r_.__value_.__r.__words[2], *(a2 + 96));
    result = sub_1638FC8((v3 + 88), v21, (v20 + 8), v19, *v3[4].__r_.__value_.__l.__size_ - LODWORD(v3[4].__r_.__value_.__l.__data_));
    v22 = LODWORD(v3[4].__r_.__value_.__l.__data_) + v19;
    LODWORD(v3[4].__r_.__value_.__l.__data_) = v22;
    v23 = v3[4].__r_.__value_.__l.__size_;
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 8);
  if (v24)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1624384(void *a1)
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

void sub_16243F8(void *a1)
{
  sub_1624384(a1);

  operator delete();
}

uint64_t *sub_1624430(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1624440(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_16244D4(uint64_t a1)
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

std::string *sub_1624500(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1624534(void *a1)
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

void sub_16245A8(void *a1)
{
  sub_1624534(a1);

  operator delete();
}

uint64_t *sub_16245E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_16245F0(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1624684(uint64_t a1)
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

std::string *sub_16246B0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_16246E4(uint64_t a1)
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

  if (a1 != &off_277AFF8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1624384(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1624534(v6);
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

void sub_16247B4(uint64_t a1)
{
  sub_16246E4(a1);

  operator delete();
}

uint64_t sub_16247EC(uint64_t result)
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
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 2) != 0)
    {
      v5 = *(v1 + 32);
      v6 = *(v5 + 8);
      result = v5 + 8;
      if (v6)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

char *sub_162486C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v22, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v22 + 1;
    v7 = *v22;
    if (*v22 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v22, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v22 + 2;
      }
    }

    v22 = v6;
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

          v15 = sub_1631F0C(v17);
          *(a1 + 32) = v15;
          v6 = v22;
        }

        v14 = sub_222C330(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
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

        v18 = sub_1631E94(v20);
        *(a1 + 24) = v18;
        v6 = v22;
      }

      v14 = sub_222C29C(a3, v18, v6);
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
        return v22;
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
      v6 = v22;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

char *sub_1624A14(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    v8 = *(v7 + 16);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1624440(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 32);
    *v4 = 18;
    v11 = *(v10 + 16);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_16245F0(v10, v12, a3);
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

  if (*a3 - v4 >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_1624B90(uint64_t a1)
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

  v3 = *(a1 + 24);
  v4 = *(v3 + 8);
  if (v4)
  {
    v13 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v13 + 16);
    }
  }

  else
  {
    v5 = 0;
  }

  *(v3 + 16) = v5;
  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    if (v7)
    {
      v14 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v8 < 0)
      {
        v8 = *(v14 + 16);
      }
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 16) = v8;
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

std::string *sub_1624C7C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      result = result[1].__r_.__value_.__l.__data_;
      if (!result)
      {
        size = v3->__r_.__value_.__l.__size_;
        v6 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v6 = *v6;
        }

        result = sub_1631E94(v6);
        v3[1].__r_.__value_.__r.__words[0] = result;
      }

      v7 = *(a2 + 24);
      if (!v7)
      {
        v7 = &off_277AFC8;
      }

      v8 = v7[1];
      if (v8)
      {
        result = sub_1957EF4(&result->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      result = v3[1].__r_.__value_.__l.__size_;
      if (!result)
      {
        v9 = v3->__r_.__value_.__l.__size_;
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        result = sub_1631F0C(v10);
        v3[1].__r_.__value_.__l.__size_ = result;
      }

      v11 = *(a2 + 32);
      if (!v11)
      {
        v11 = &off_277AFE0;
      }

      v12 = v11[1];
      if (v12)
      {
        result = sub_1957EF4(&result->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1624DC0(uint64_t a1)
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

void sub_1624E60(uint64_t a1)
{
  sub_1624DC0(a1);

  operator delete();
}

uint64_t sub_1624E98(uint64_t a1)
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

uint64_t sub_1624EE0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          *v22 = sub_19587DC(v6, v18);
          if (!*v22)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_28:
          *v22 = v19;
        }

        if (v18 > 5)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v18;
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
          return *v22;
        }

LABEL_39:
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
      goto LABEL_23;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v22, a3);
LABEL_23:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  return *v22;
}

char *sub_16250A0(uint64_t a1, char *__dst, void *a3)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v14)
  {
    v16 = v14;
    memcpy(v6, v15, v14);
    v6 += v16;
    return v6;
  }

  return sub_1957130(a3, v15, v14, v6);
}

uint64_t sub_16251E8(uint64_t a1)
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

uint64_t sub_16252C4(uint64_t a1)
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

void sub_1625364(uint64_t a1)
{
  sub_16252C4(a1);

  operator delete();
}

uint64_t sub_162539C(uint64_t a1)
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

uint64_t sub_16253E4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          *v22 = sub_19587DC(v6, v18);
          if (!*v22)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_28:
          *v22 = v19;
        }

        if (v18 > 5)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v18;
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
          return *v22;
        }

LABEL_39:
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
      goto LABEL_23;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v22, a3);
LABEL_23:
    *v22 = v14;
    if (!v14)
    {
      goto LABEL_39;
    }
  }

  return *v22;
}

char *sub_16255A4(uint64_t a1, char *__dst, void *a3)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v14)
  {
    v16 = v14;
    memcpy(v6, v15, v14);
    v6 += v16;
    return v6;
  }

  return sub_1957130(a3, v15, v14, v6);
}

uint64_t sub_16256EC(uint64_t a1)
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

uint64_t sub_16257C8(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_16385FC((a1 + 48));
  sub_1638578((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1625880(uint64_t a1)
{
  sub_16257C8(a1);

  operator delete();
}

uint64_t sub_16258B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_162539C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1624E98(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    v8 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
    }
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 72) = 0;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_1625994(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v35 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v35, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v35 + 1);
    v7 = **v35;
    if (**v35 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v35, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v35 + 2);
      }
    }

    *v35 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v25 = v6 + 1;
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            *v35 = sub_19587DC(v6, v24);
            if (!*v35)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v25 = v6 + 2;
LABEL_39:
            *v35 = v25;
          }

          if (v24 > 4)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 80) = v24;
          }

          continue;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v12 = v6 - 1;
        while (1)
        {
          v13 = v12 + 1;
          *v35 = v12 + 1;
          v14 = *(a1 + 40);
          if (v14 && (v15 = *(a1 + 32), v15 < *v14))
          {
            *(a1 + 32) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_1632088(*(a1 + 24));
            v16 = sub_19593CC(a1 + 24, v17);
            v13 = *v35;
          }

          v12 = sub_222C3C4(a3, v16, v13);
          *v35 = v12;
          if (!v12)
          {
            break;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_54;
          }
        }

LABEL_62:
        *v35 = 0;
        return *v35;
      }

      goto LABEL_46;
    }

    if (v10 != 3)
    {
      if (v10 == 4 && v7 == 34)
      {
        v18 = v6 - 1;
        while (1)
        {
          v19 = v18 + 1;
          *v35 = v18 + 1;
          v20 = *(a1 + 64);
          if (v20 && (v21 = *(a1 + 56), v21 < *v20))
          {
            *(a1 + 56) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_1632000(*(a1 + 48));
            v22 = sub_19593CC(a1 + 48, v23);
            v19 = *v35;
          }

          v18 = sub_222C454(a3, v22, v19);
          *v35 = v18;
          if (!v18)
          {
            goto LABEL_62;
          }

          if (*a3 <= v18 || *v18 != 34)
          {
            goto LABEL_54;
          }
        }
      }

LABEL_46:
      if (v7)
      {
        v31 = (v7 & 7) == 4;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return *v35;
        }

        goto LABEL_62;
      }

      v32 = *(a1 + 8);
      if (v32)
      {
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v33 = sub_11F1920((a1 + 8));
        v6 = *v35;
      }

      v30 = sub_1952690(v7, v33, v6, a3);
      goto LABEL_53;
    }

    if (v7 != 26)
    {
      goto LABEL_46;
    }

    *(a1 + 16) |= 1u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v29 = sub_194DB04((a1 + 72), v28);
    v30 = sub_1958890(v29, *v35, a3);
LABEL_53:
    *v35 = v30;
    if (!v30)
    {
      goto LABEL_62;
    }

LABEL_54:
    ;
  }

  return *v35;
}

char *sub_1625C84(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 80);
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

      v6 = sub_16255A4(v13, v15, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 3, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v18 = *(*(a1 + 64) + 8 * j + 8);
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

      v6 = sub_16250A0(v18, v20, a3);
    }
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v24)
  {
    v26 = v24;
    memcpy(v6, v25, v24);
    v6 += v26;
    return v6;
  }

  return sub_1957130(a3, v25, v24, v6);
}