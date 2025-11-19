unint64_t sub_134BCE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v4 = *(a1 + 40);
    if (v4 < 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v5;
  }

  return result;
}

unint64_t sub_134BD80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 7) != 0)
  {
    result = sub_134BCE8(a1);
  }

  else
  {
    v3 = (9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6;
    v4 = (9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6;
    v5 = *(a1 + 40);
    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 10;
    }

    result = v3 + v4 + v7 + 3;
  }

  if ((v2 & 0xF8) == 0)
  {
    goto LABEL_14;
  }

  if ((v2 & 8) != 0)
  {
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
    if ((v2 & 0x10) == 0)
    {
LABEL_10:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_11;
      }

LABEL_32:
      v16 = *(a1 + 52);
      if (v16 < 0)
      {
        v17 = 11;
      }

      else
      {
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v17;
      if ((v2 & 0x40) == 0)
      {
LABEL_12:
        if ((v2 & 0x80) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  v14 = *(a1 + 48);
  if (v14 < 0)
  {
    v15 = 11;
  }

  else
  {
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v15;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_36:
  v18 = *(a1 + 56);
  if (v18 < 0)
  {
    v19 = 11;
  }

  else
  {
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v19;
  if ((v2 & 0x80) != 0)
  {
LABEL_13:
    result += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v9 = *(a1 + 64);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v10;
    }

    if ((v2 & 0x200) != 0)
    {
      result += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v20 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    result += v21;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_134BFC4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

LABEL_23:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_24:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

LABEL_25:
    HIDWORD(result[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
        goto LABEL_12;
      }

LABEL_10:
      HIDWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
      goto LABEL_11;
    }

LABEL_26:
    LODWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      LODWORD(result[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    }

    if ((v2 & 0x200) != 0)
    {
      HIDWORD(result[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_134C0C8(uint64_t a1)
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
  if (a1 != &off_276C018)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134C180(uint64_t a1)
{
  sub_134C0C8(a1);

  operator delete();
}

uint64_t sub_134C1B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_134B1C8(*(result + 24));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
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

char *sub_134C224(uint64_t a1, char *a2, int32x2_t *a3)
{
  v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v51, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v51 + 1;
    v8 = *v51;
    if (*v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v51 + 2;
      }
    }

    v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_55;
      }

      v5 |= 2u;
      v25 = v7 + 1;
      LODWORD(v24) = *v7;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      v26 = *v25;
      v24 = v24 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_39:
        v51 = v25;
        *(a1 + 32) = v24;
        goto LABEL_63;
      }

      v39 = sub_19587DC(v7, v24);
      v51 = v39;
      *(a1 + 32) = v40;
      if (!v39)
      {
        goto LABEL_80;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_55;
      }

      v5 |= 4u;
      v34 = v7 + 1;
      LODWORD(v33) = *v7;
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_54;
      }

      v35 = *v34;
      v33 = v33 + (v35 << 7) - 128;
      if ((v35 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_54:
        v51 = v34;
        *(a1 + 36) = v33;
        goto LABEL_63;
      }

      v49 = sub_19587DC(v7, v33);
      v51 = v49;
      *(a1 + 36) = v50;
      if (!v49)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_55;
      }

      v5 |= 8u;
      v19 = v7 + 1;
      LODWORD(v18) = *v7;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      v20 = *v19;
      v18 = v18 + (v20 << 7) - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_27:
        v51 = v19;
        *(a1 + 40) = v18;
        goto LABEL_63;
      }

      v47 = sub_19587DC(v7, v18);
      v51 = v47;
      *(a1 + 40) = v48;
      if (!v47)
      {
        goto LABEL_80;
      }
    }

LABEL_63:
    if (sub_195ADC0(a3, &v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 0xA)
  {
    if (v11 == 11)
    {
      if (v8 != 88)
      {
        goto LABEL_55;
      }

      v5 |= 0x20u;
      v31 = v7 + 1;
      LODWORD(v30) = *v7;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      v32 = *v31;
      v30 = v30 + (v32 << 7) - 128;
      if ((v32 & 0x80000000) == 0)
      {
        v31 = v7 + 2;
LABEL_49:
        v51 = v31;
        *(a1 + 48) = v30;
        goto LABEL_63;
      }

      v43 = sub_19587DC(v7, v30);
      v51 = v43;
      *(a1 + 48) = v44;
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 12 || v8 != 96)
      {
        goto LABEL_55;
      }

      v5 |= 0x40u;
      v22 = v7 + 1;
      LODWORD(v21) = *v7;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v23 = *v22;
      v21 = v21 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_34:
        v51 = v22;
        *(a1 + 52) = v21;
        goto LABEL_63;
      }

      v45 = sub_19587DC(v7, v21);
      v51 = v45;
      *(a1 + 52) = v46;
      if (!v45)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_63;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_55;
    }

    v5 |= 0x10u;
    v28 = v7 + 1;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    v29 = *v28;
    v27 = v27 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_44:
      v51 = v28;
      *(a1 + 44) = v27;
      goto LABEL_63;
    }

    v41 = sub_19587DC(v7, v27);
    v51 = v41;
    *(a1 + 44) = v42;
    if (!v41)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

  if (v11 == 5 && v8 == 42)
  {
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

      sub_1354CE4(v14);
      v12 = v15;
      *(a1 + 24) = v15;
      v7 = v51;
    }

    v16 = sub_21FFD20(a3, v12, v7);
LABEL_62:
    v51 = v16;
    if (!v16)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

LABEL_55:
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
      v7 = v51;
    }

    v16 = sub_1952690(v8, v38, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v51;
}

char *sub_134C5E8(uint64_t a1, char *__dst, _DWORD *a3)
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
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
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

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 24);
    *v19 = 42;
    v24 = *(v23 + 20);
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v19 + 1);
    }

    else
    {
      v25 = v19 + 2;
    }

    v19 = sub_134B708(v23, v25, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v27 = *(a1 + 48);
    *v19 = 88;
    v19[1] = v27;
    if (v27 > 0x7F)
    {
      v19[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v19[2] = v27 >> 7;
      v26 = v19 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v26 - 1) = v19 | 0x80;
          v19 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v19 + 2;
    }
  }

  else
  {
    v26 = v19;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 52);
    *v26 = 96;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v30 - 1) = v26 | 0x80;
          v26 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v30;
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

  if (*a3 - v30 >= v37)
  {
    v39 = v37;
    memcpy(v30, v38, v37);
    v30 += v39;
    return v30;
  }

  return sub_1957130(a3, v38, v37, v30);
}

uint64_t sub_134CA1C(_DWORD *a1)
{
  v2 = a1[4];
  if ((v2 & 2) != 0)
  {
    v4 = a1[8];
    if (v4 < 0)
    {
      result = 11;
      if ((v2 & 4) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = a1[9];
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
  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  v7 = a1[10];
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v8;
  if ((v2 & 0x10) != 0)
  {
LABEL_19:
    v9 = a1[11];
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v10;
  }

  return result;
}

uint64_t sub_134CB0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 0x1E) != 0)
  {
    v5 = sub_134CA1C(a1);
    if (v2)
    {
LABEL_17:
      v12 = sub_134BD80(*(a1 + 24));
      v5 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3 < 0)
    {
      v4 = 14;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 4;
    }

    v6 = *(a1 + 36);
    if (v6 < 0)
    {
      v7 = 10;
    }

    else
    {
      v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    }

    v8 = *(a1 + 40);
    if (v8 < 0)
    {
      v9 = 10;
    }

    else
    {
      v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    }

    v10 = *(a1 + 44);
    if (v10 < 0)
    {
      v11 = 10;
    }

    else
    {
      v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
    }

    v5 = v4 + v7 + v9 + v11;
    if (v2)
    {
      goto LABEL_17;
    }
  }

  if ((v2 & 0x60) != 0)
  {
    if ((v2 & 0x20) != 0)
    {
      v13 = *(a1 + 48);
      if (v13 < 0)
      {
        v14 = 11;
      }

      else
      {
        v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v5 += v14;
    }

    if ((v2 & 0x40) != 0)
    {
      v15 = *(a1 + 52);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v5 += v16;
    }
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v5 += v20;
  }

  *(a1 + 20) = v5;
  return v5;
}

std::string *sub_134CCD4(std::string *result, uint64_t a2)
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

        sub_1354CE4(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276BFD0;
      }

      result = sub_134BFC4(data, v9);
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

    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
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
    HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_25:
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
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
      HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
      goto LABEL_10;
    }

LABEL_27:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
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

uint64_t sub_134CE44(uint64_t a1)
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
  if (a1 != &off_276C050)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134CEFC(uint64_t a1)
{
  sub_134CE44(a1);

  operator delete();
}

uint64_t sub_134CF34(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_134B1C8(*(result + 24));
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

char *sub_134CFA8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v61 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v61, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v61 + 1;
    v8 = *v61;
    if (*v61 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v61, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v61 + 2;
      }
    }

    v61 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_68;
        }

        v5 |= 8u;
        v29 = v7 + 1;
        LODWORD(v28) = *v7;
        if ((v28 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        v30 = *v29;
        v28 = v28 + (v30 << 7) - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = v7 + 2;
LABEL_51:
          v61 = v29;
          *(a1 + 40) = v28;
          goto LABEL_76;
        }

        v53 = sub_19587DC(v7, v28);
        v61 = v53;
        *(a1 + 40) = v54;
        if (!v53)
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (v11 != 5 || v8 != 40)
        {
          goto LABEL_68;
        }

        v5 |= 0x10u;
        v20 = v7 + 1;
        LODWORD(v19) = *v7;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_34;
        }

        v21 = *v20;
        v19 = v19 + (v21 << 7) - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
LABEL_34:
          v61 = v20;
          *(a1 + 44) = v19;
          goto LABEL_76;
        }

        v47 = sub_19587DC(v7, v19);
        v61 = v47;
        *(a1 + 44) = v48;
        if (!v47)
        {
          goto LABEL_97;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_68;
      }

      v5 |= 2u;
      v26 = v7 + 1;
      LODWORD(v25) = *v7;
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      v27 = *v26;
      v25 = v25 + (v27 << 7) - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_46:
        v61 = v26;
        *(a1 + 32) = v25;
        goto LABEL_76;
      }

      v51 = sub_19587DC(v7, v25);
      v61 = v51;
      *(a1 + 32) = v52;
      if (!v51)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_68;
      }

      v5 |= 4u;
      v17 = v7 + 1;
      LODWORD(v16) = *v7;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      v18 = *v17;
      v16 = v16 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_27:
        v61 = v17;
        *(a1 + 36) = v16;
        goto LABEL_76;
      }

      v45 = sub_19587DC(v7, v16);
      v61 = v45;
      *(a1 + 36) = v46;
      if (!v45)
      {
        goto LABEL_97;
      }
    }

LABEL_76:
    if (sub_195ADC0(a3, &v61, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 7)
  {
    if (v11 == 8)
    {
      if (v8 != 64)
      {
        goto LABEL_68;
      }

      v5 |= 0x40u;
      v32 = v7 + 1;
      LODWORD(v31) = *v7;
      if ((v31 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      v33 = *v32;
      v31 = v31 + (v33 << 7) - 128;
      if ((v33 & 0x80000000) == 0)
      {
        v32 = v7 + 2;
LABEL_56:
        v61 = v32;
        *(a1 + 52) = v31;
        goto LABEL_76;
      }

      v55 = sub_19587DC(v7, v31);
      v61 = v55;
      *(a1 + 52) = v56;
      if (!v55)
      {
        goto LABEL_97;
      }
    }

    else if (v11 == 9)
    {
      if (v8 != 72)
      {
        goto LABEL_68;
      }

      v5 |= 0x80u;
      v40 = v7 + 1;
      LODWORD(v39) = *v7;
      if ((v39 & 0x80) == 0)
      {
        goto LABEL_67;
      }

      v41 = *v40;
      v39 = v39 + (v41 << 7) - 128;
      if ((v41 & 0x80000000) == 0)
      {
        v40 = v7 + 2;
LABEL_67:
        v61 = v40;
        *(a1 + 56) = v39;
        goto LABEL_76;
      }

      v59 = sub_19587DC(v7, v39);
      v61 = v59;
      *(a1 + 56) = v60;
      if (!v59)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 10 || v8 != 80)
      {
        goto LABEL_68;
      }

      v5 |= 0x100u;
      v13 = v7 + 1;
      LODWORD(v12) = *v7;
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      v14 = *v13;
      v12 = v12 + (v14 << 7) - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_16:
        v61 = v13;
        *(a1 + 60) = v12;
        goto LABEL_76;
      }

      v57 = sub_19587DC(v7, v12);
      v61 = v57;
      *(a1 + 60) = v58;
      if (!v57)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_76;
  }

  if (v11 != 6)
  {
    if (v11 != 7 || v8 != 56)
    {
      goto LABEL_68;
    }

    v5 |= 0x20u;
    v23 = v7 + 1;
    LODWORD(v22) = *v7;
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    v24 = *v23;
    v22 = v22 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_41:
      v61 = v23;
      *(a1 + 48) = v22;
      goto LABEL_76;
    }

    v49 = sub_19587DC(v7, v22);
    v61 = v49;
    *(a1 + 48) = v50;
    if (!v49)
    {
      goto LABEL_97;
    }

    goto LABEL_76;
  }

  if (v8 == 50)
  {
    *(a1 + 16) |= 1u;
    v34 = *(a1 + 24);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_1354CE4(v36);
      v34 = v37;
      *(a1 + 24) = v37;
      v7 = v61;
    }

    v38 = sub_21FFD20(a3, v34, v7);
LABEL_75:
    v61 = v38;
    if (!v38)
    {
      goto LABEL_97;
    }

    goto LABEL_76;
  }

LABEL_68:
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
      v7 = v61;
    }

    v38 = sub_1952690(v8, v44, v7, a3);
    goto LABEL_75;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_97:
  v61 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v61;
}

char *sub_134D434(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 44);
    *v15 = 40;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
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

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 24);
    *v19 = 50;
    v24 = *(v23 + 20);
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v19 + 1);
    }

    else
    {
      v25 = v19 + 2;
    }

    v19 = sub_134B708(v23, v25, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v27 = *(a1 + 48);
    *v19 = 56;
    v19[1] = v27;
    if (v27 > 0x7F)
    {
      v19[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v19[2] = v27 >> 7;
      v26 = v19 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v26 - 1) = v19 | 0x80;
          v19 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v19 + 2;
    }
  }

  else
  {
    v26 = v19;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 52);
    *v26 = 64;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v30 - 1) = v26 | 0x80;
          v26 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v35 = *(a1 + 56);
    *v30 = 72;
    v30[1] = v35;
    if (v35 > 0x7F)
    {
      v30[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v30[2] = v35 >> 7;
      v34 = v30 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v37) = v30[2];
        do
        {
          *(v34 - 1) = v37 | 0x80;
          v37 = v36 >> 7;
          *v34++ = v36 >> 7;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v34 = v30 + 2;
    }
  }

  else
  {
    v34 = v30;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v40 = *(a1 + 60);
    *v34 = 80;
    v34[1] = v40;
    if (v40 > 0x7F)
    {
      v34[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v34[2] = v40 >> 7;
      v39 = v34 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v34) = v34[2];
        do
        {
          *(v39 - 1) = v34 | 0x80;
          v34 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v34 + 2;
    }
  }

  else
  {
    v39 = v34;
  }

  v43 = *(a1 + 8);
  if ((v43 & 1) == 0)
  {
    return v39;
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

  if (*a3 - v39 >= v46)
  {
    v48 = v46;
    memcpy(v39, v47, v46);
    v39 += v48;
    return v39;
  }

  return sub_1957130(a3, v47, v46, v39);
}

uint64_t sub_134D974(uint64_t a1)
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
    v4 = sub_134BD80(*(a1 + 24));
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

std::string *sub_134DBC8(std::string *result, uint64_t a2)
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

        sub_1354CE4(v9);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = &off_276BFD0;
      }

      result = sub_134BFC4(data, v10);
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

uint64_t sub_134DD54(uint64_t a1)
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

  if (a1 != &off_276C090)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134DE20(uint64_t a1)
{
  sub_134DD54(a1);

  operator delete();
}

uint64_t sub_134DE58(uint64_t result)
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
      result = sub_134B1C8(*(result + 32));
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

uint64_t sub_134DEFC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v39, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v39 + 1);
    v8 = **v39;
    if (**v39 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v39, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v39 + 2);
      }
    }

    *v39 = v7;
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

      v5 |= 8u;
      v22 = (v7 + 1);
      LODWORD(v21) = *v7;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      v23 = *v22;
      v21 = v21 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = (v7 + 2);
LABEL_31:
        *v39 = v22;
        *(a1 + 44) = v21;
        goto LABEL_49;
      }

      v33 = sub_19587DC(v7, v21);
      *v39 = v33;
      *(a1 + 44) = v34;
      if (!v33)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v11 != 4)
      {
        if (v11 == 5 && v8 == 42)
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

            sub_1354CE4(v14);
            v12 = v15;
            *(a1 + 32) = v15;
            v7 = *v39;
          }

          v16 = sub_21FFD20(a3, v12, v7);
          goto LABEL_48;
        }

        goto LABEL_41;
      }

      if (v8 != 32)
      {
        goto LABEL_41;
      }

      v5 |= 0x10u;
      v25 = (v7 + 1);
      LODWORD(v24) = *v7;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      v26 = *v25;
      v24 = v24 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = (v7 + 2);
LABEL_36:
        *v39 = v25;
        *(a1 + 48) = v24;
        goto LABEL_49;
      }

      v35 = sub_19587DC(v7, v24);
      *v39 = v35;
      *(a1 + 48) = v36;
      if (!v35)
      {
        goto LABEL_60;
      }
    }

LABEL_49:
    if (sub_195ADC0(a3, v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_41;
    }

    v5 |= 4u;
    v19 = (v7 + 1);
    LODWORD(v18) = *v7;
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    v20 = *v19;
    v18 = v18 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = (v7 + 2);
LABEL_26:
      *v39 = v19;
      *(a1 + 40) = v18;
      goto LABEL_49;
    }

    v37 = sub_19587DC(v7, v18);
    *v39 = v37;
    *(a1 + 40) = v38;
    if (!v37)
    {
      goto LABEL_60;
    }

    goto LABEL_49;
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v29 = sub_194DB04((a1 + 24), v28);
    v16 = sub_1958890(v29, *v39, a3);
LABEL_48:
    *v39 = v16;
    if (!v16)
    {
      goto LABEL_60;
    }

    goto LABEL_49;
  }

LABEL_41:
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
      v7 = *v39;
    }

    v16 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_60:
  *v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v39;
}

char *sub_134E1E4(uint64_t a1, char *__dst, void *a3)
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

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 48);
    *v12 = 32;
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v12[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v12[2] = v18 >> 7;
      v17 = v12 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v17 - 1) = v12 | 0x80;
          v12 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
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

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v21 = *(a1 + 32);
    *v17 = 42;
    v22 = *(v21 + 20);
    v17[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v17 + 1);
    }

    else
    {
      v23 = v17 + 2;
    }

    v17 = sub_134B708(v21, v23, a3);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v17;
  }

  v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = *(v26 + 31);
  if (v27 < 0)
  {
    v28 = *(v26 + 8);
    v27 = *(v26 + 16);
  }

  else
  {
    v28 = (v26 + 8);
  }

  if (*a3 - v17 >= v27)
  {
    v29 = v27;
    memcpy(v17, v28, v27);
    v17 += v29;
    return v17;
  }

  return sub_1957130(a3, v28, v27, v17);
}

uint64_t sub_134E4A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_134BD80(*(a1 + 32));
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
    v8 = *(a1 + 40);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v9;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(a1 + 44);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v11;
  if ((v2 & 0x10) != 0)
  {
LABEL_22:
    v12 = *(a1 + 48);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v13;
  }

LABEL_26:
  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v3 += v17;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_134E62C(std::string *result, uint64_t a2)
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

      sub_1354CE4(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276BFD0;
    }

    result = sub_134BFC4(v9, v12);
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
    HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
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

uint64_t sub_134E798(uint64_t a1)
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
  if (a1 != &off_276C0C8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134E850(uint64_t a1)
{
  sub_134E798(a1);

  operator delete();
}

uint64_t sub_134E888(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_134B1C8(*(result + 24));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
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

char *sub_134E8F4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v51, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v51 + 1;
    v8 = *v51;
    if (*v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v51 + 2;
      }
    }

    v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_55;
      }

      v5 |= 2u;
      v25 = v7 + 1;
      LODWORD(v24) = *v7;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      v26 = *v25;
      v24 = v24 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_39:
        v51 = v25;
        *(a1 + 32) = v24;
        goto LABEL_63;
      }

      v39 = sub_19587DC(v7, v24);
      v51 = v39;
      *(a1 + 32) = v40;
      if (!v39)
      {
        goto LABEL_80;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_55;
      }

      v5 |= 4u;
      v34 = v7 + 1;
      LODWORD(v33) = *v7;
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_54;
      }

      v35 = *v34;
      v33 = v33 + (v35 << 7) - 128;
      if ((v35 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_54:
        v51 = v34;
        *(a1 + 36) = v33;
        goto LABEL_63;
      }

      v49 = sub_19587DC(v7, v33);
      v51 = v49;
      *(a1 + 36) = v50;
      if (!v49)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_55;
      }

      v5 |= 8u;
      v19 = v7 + 1;
      LODWORD(v18) = *v7;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      v20 = *v19;
      v18 = v18 + (v20 << 7) - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_27:
        v51 = v19;
        *(a1 + 40) = v18;
        goto LABEL_63;
      }

      v47 = sub_19587DC(v7, v18);
      v51 = v47;
      *(a1 + 40) = v48;
      if (!v47)
      {
        goto LABEL_80;
      }
    }

LABEL_63:
    if (sub_195ADC0(a3, &v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 5)
  {
    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_55;
      }

      v5 |= 0x20u;
      v31 = v7 + 1;
      LODWORD(v30) = *v7;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      v32 = *v31;
      v30 = v30 + (v32 << 7) - 128;
      if ((v32 & 0x80000000) == 0)
      {
        v31 = v7 + 2;
LABEL_49:
        v51 = v31;
        *(a1 + 48) = v30;
        goto LABEL_63;
      }

      v43 = sub_19587DC(v7, v30);
      v51 = v43;
      *(a1 + 48) = v44;
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_55;
      }

      v5 |= 0x40u;
      v22 = v7 + 1;
      LODWORD(v21) = *v7;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v23 = *v22;
      v21 = v21 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_34:
        v51 = v22;
        *(a1 + 52) = v21;
        goto LABEL_63;
      }

      v45 = sub_19587DC(v7, v21);
      v51 = v45;
      *(a1 + 52) = v46;
      if (!v45)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_63;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_55;
    }

    v5 |= 0x10u;
    v28 = v7 + 1;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    v29 = *v28;
    v27 = v27 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_44:
      v51 = v28;
      *(a1 + 44) = v27;
      goto LABEL_63;
    }

    v41 = sub_19587DC(v7, v27);
    v51 = v41;
    *(a1 + 44) = v42;
    if (!v41)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

  if (v11 == 5 && v8 == 42)
  {
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

      sub_1354CE4(v14);
      v12 = v15;
      *(a1 + 24) = v15;
      v7 = v51;
    }

    v16 = sub_21FFD20(a3, v12, v7);
LABEL_62:
    v51 = v16;
    if (!v16)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

LABEL_55:
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
      v7 = v51;
    }

    v16 = sub_1952690(v8, v38, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v51;
}

char *sub_134ECB8(uint64_t a1, char *__dst, _DWORD *a3)
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
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
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

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 24);
    *v19 = 42;
    v24 = *(v23 + 20);
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v19 + 1);
    }

    else
    {
      v25 = v19 + 2;
    }

    v19 = sub_134B708(v23, v25, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v27 = *(a1 + 48);
    *v19 = 48;
    v19[1] = v27;
    if (v27 > 0x7F)
    {
      v19[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v19[2] = v27 >> 7;
      v26 = v19 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v26 - 1) = v19 | 0x80;
          v19 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v19 + 2;
    }
  }

  else
  {
    v26 = v19;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 52);
    *v26 = 56;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v30 - 1) = v26 | 0x80;
          v26 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v30;
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

  if (*a3 - v30 >= v37)
  {
    v39 = v37;
    memcpy(v30, v38, v37);
    v30 += v39;
    return v30;
  }

  return sub_1957130(a3, v38, v37, v30);
}

uint64_t sub_134F0EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    result = 0;
    goto LABEL_37;
  }

  if (v2)
  {
    v4 = sub_134BD80(*(a1 + 24));
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
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
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
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_25:
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
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
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
  if ((v2 & 0x40) != 0)
  {
LABEL_33:
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
  }

LABEL_37:
  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    result += v19;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_134F308(uint64_t a1)
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
  if (a1 != &off_276C100)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134F3C0(uint64_t a1)
{
  sub_134F308(a1);

  operator delete();
}

uint64_t sub_134F3F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_134B1C8(*(result + 24));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
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

char *sub_134F464(uint64_t a1, char *a2, int32x2_t *a3)
{
  v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v51, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v51 + 1;
    v8 = *v51;
    if (*v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v51 + 2;
      }
    }

    v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_55;
      }

      v5 |= 2u;
      v25 = v7 + 1;
      LODWORD(v24) = *v7;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      v26 = *v25;
      v24 = v24 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_39:
        v51 = v25;
        *(a1 + 32) = v24;
        goto LABEL_63;
      }

      v39 = sub_19587DC(v7, v24);
      v51 = v39;
      *(a1 + 32) = v40;
      if (!v39)
      {
        goto LABEL_80;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_55;
      }

      v5 |= 4u;
      v34 = v7 + 1;
      LODWORD(v33) = *v7;
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_54;
      }

      v35 = *v34;
      v33 = v33 + (v35 << 7) - 128;
      if ((v35 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_54:
        v51 = v34;
        *(a1 + 36) = v33;
        goto LABEL_63;
      }

      v49 = sub_19587DC(v7, v33);
      v51 = v49;
      *(a1 + 36) = v50;
      if (!v49)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_55;
      }

      v5 |= 8u;
      v19 = v7 + 1;
      LODWORD(v18) = *v7;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      v20 = *v19;
      v18 = v18 + (v20 << 7) - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_27:
        v51 = v19;
        *(a1 + 40) = v18;
        goto LABEL_63;
      }

      v47 = sub_19587DC(v7, v18);
      v51 = v47;
      *(a1 + 40) = v48;
      if (!v47)
      {
        goto LABEL_80;
      }
    }

LABEL_63:
    if (sub_195ADC0(a3, &v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 0xA)
  {
    if (v11 == 11)
    {
      if (v8 != 88)
      {
        goto LABEL_55;
      }

      v5 |= 0x20u;
      v31 = v7 + 1;
      LODWORD(v30) = *v7;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      v32 = *v31;
      v30 = v30 + (v32 << 7) - 128;
      if ((v32 & 0x80000000) == 0)
      {
        v31 = v7 + 2;
LABEL_49:
        v51 = v31;
        *(a1 + 48) = v30;
        goto LABEL_63;
      }

      v43 = sub_19587DC(v7, v30);
      v51 = v43;
      *(a1 + 48) = v44;
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 12 || v8 != 96)
      {
        goto LABEL_55;
      }

      v5 |= 0x40u;
      v22 = v7 + 1;
      LODWORD(v21) = *v7;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v23 = *v22;
      v21 = v21 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_34:
        v51 = v22;
        *(a1 + 52) = v21;
        goto LABEL_63;
      }

      v45 = sub_19587DC(v7, v21);
      v51 = v45;
      *(a1 + 52) = v46;
      if (!v45)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_63;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_55;
    }

    v5 |= 0x10u;
    v28 = v7 + 1;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    v29 = *v28;
    v27 = v27 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_44:
      v51 = v28;
      *(a1 + 44) = v27;
      goto LABEL_63;
    }

    v41 = sub_19587DC(v7, v27);
    v51 = v41;
    *(a1 + 44) = v42;
    if (!v41)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

  if (v11 == 5 && v8 == 42)
  {
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

      sub_1354CE4(v14);
      v12 = v15;
      *(a1 + 24) = v15;
      v7 = v51;
    }

    v16 = sub_21FFD20(a3, v12, v7);
LABEL_62:
    v51 = v16;
    if (!v16)
    {
      goto LABEL_80;
    }

    goto LABEL_63;
  }

LABEL_55:
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
      v7 = v51;
    }

    v16 = sub_1952690(v8, v38, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v51;
}

char *sub_134F828(uint64_t a1, char *__dst, _DWORD *a3)
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
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
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

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 24);
    *v19 = 42;
    v24 = *(v23 + 20);
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v19 + 1);
    }

    else
    {
      v25 = v19 + 2;
    }

    v19 = sub_134B708(v23, v25, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v27 = *(a1 + 48);
    *v19 = 88;
    v19[1] = v27;
    if (v27 > 0x7F)
    {
      v19[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v19[2] = v27 >> 7;
      v26 = v19 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v26 - 1) = v19 | 0x80;
          v19 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v19 + 2;
    }
  }

  else
  {
    v26 = v19;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 52);
    *v26 = 96;
    v26[1] = v31;
    if (v31 > 0x7F)
    {
      v26[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[2] = v31 >> 7;
      v30 = v26 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v30 - 1) = v26 | 0x80;
          v26 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v26 + 2;
    }
  }

  else
  {
    v30 = v26;
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v30;
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

  if (*a3 - v30 >= v37)
  {
    v39 = v37;
    memcpy(v30, v38, v37);
    v30 += v39;
    return v30;
  }

  return sub_1957130(a3, v38, v37, v30);
}

uint64_t sub_134FC5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 0x1E) != 0)
  {
    v5 = sub_134CA1C(a1);
    if (v2)
    {
LABEL_17:
      v12 = sub_134BD80(*(a1 + 24));
      v5 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3 < 0)
    {
      v4 = 14;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 4;
    }

    v6 = *(a1 + 36);
    if (v6 < 0)
    {
      v7 = 10;
    }

    else
    {
      v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    }

    v8 = *(a1 + 40);
    if (v8 < 0)
    {
      v9 = 10;
    }

    else
    {
      v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    }

    v10 = *(a1 + 44);
    if (v10 < 0)
    {
      v11 = 10;
    }

    else
    {
      v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
    }

    v5 = v4 + v7 + v9 + v11;
    if (v2)
    {
      goto LABEL_17;
    }
  }

  if ((v2 & 0x60) != 0)
  {
    if ((v2 & 0x20) != 0)
    {
      v13 = *(a1 + 48);
      if (v13 < 0)
      {
        v14 = 11;
      }

      else
      {
        v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v5 += v14;
    }

    if ((v2 & 0x40) != 0)
    {
      v15 = *(a1 + 52);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v5 += v16;
    }
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v5 += v20;
  }

  *(a1 + 20) = v5;
  return v5;
}

uint64_t sub_134FE6C(uint64_t a1)
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
  if (a1 != &off_276C138)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_134FF24(uint64_t a1)
{
  sub_134FE6C(a1);

  operator delete();
}

uint64_t sub_134FF5C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_134B1C8(*(result + 24));
  }

  if ((v2 & 0x3E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
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

char *sub_134FFC8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_48;
      }

      v5 |= 2u;
      v20 = v7 + 1;
      LODWORD(v19) = *v7;
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      v21 = *v20;
      v19 = v19 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_31:
        v46 = v20;
        *(a1 + 32) = v19;
        goto LABEL_56;
      }

      v36 = sub_19587DC(v7, v19);
      v46 = v36;
      *(a1 + 32) = v37;
      if (!v36)
      {
        goto LABEL_71;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_48;
      }

      v5 |= 4u;
      v26 = v7 + 1;
      LODWORD(v25) = *v7;
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      v27 = *v26;
      v25 = v25 + (v27 << 7) - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_41:
        v46 = v26;
        *(a1 + 36) = v25;
        goto LABEL_56;
      }

      v44 = sub_19587DC(v7, v25);
      v46 = v44;
      *(a1 + 36) = v45;
      if (!v44)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_48;
      }

      v5 |= 8u;
      v14 = v7 + 1;
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_18:
        v46 = v14;
        *(a1 + 40) = v13;
        goto LABEL_56;
      }

      v42 = sub_19587DC(v7, v13);
      v46 = v42;
      *(a1 + 40) = v43;
      if (!v42)
      {
        goto LABEL_71;
      }
    }

LABEL_56:
    if (sub_195ADC0(a3, &v46, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_48;
    }

    v5 |= 0x10u;
    v23 = v7 + 1;
    LODWORD(v22) = *v7;
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    v24 = *v23;
    v22 = v22 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_36:
      v46 = v23;
      *(a1 + 48) = v22;
      goto LABEL_56;
    }

    v38 = sub_19587DC(v7, v22);
    v46 = v38;
    *(a1 + 48) = v39;
    if (!v38)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_48;
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
      v46 = v17;
      *(a1 + 52) = v16;
      goto LABEL_56;
    }

    v40 = sub_19587DC(v7, v16);
    v46 = v40;
    *(a1 + 52) = v41;
    if (!v40)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v28 = *(a1 + 24);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      sub_1354CE4(v30);
      v28 = v31;
      *(a1 + 24) = v31;
      v7 = v46;
    }

    v32 = sub_21FFD20(a3, v28, v7);
LABEL_55:
    v46 = v32;
    if (!v32)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
  }

LABEL_48:
  if (v8)
  {
    v33 = (v8 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v7 = v46;
    }

    v32 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_55;
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

char *sub_1350328(uint64_t a1, char *__dst, _DWORD *a3)
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

    v20 = *(a1 + 48);
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
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          v15 = (v21 >> 7);
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
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

  if (v5)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 24);
    *v19 = 42;
    v24 = *(v23 + 20);
    v19[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v19 + 1);
    }

    else
    {
      v25 = v19 + 2;
    }

    v19 = sub_134B708(v23, v25, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v27 = *(a1 + 52);
    *v19 = 48;
    v19[1] = v27;
    if (v27 > 0x7F)
    {
      v19[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v19[2] = v27 >> 7;
      v26 = v19 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v26 - 1) = v19 | 0x80;
          v19 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v19 + 2;
    }
  }

  else
  {
    v26 = v19;
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v26;
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

  if (*a3 - v26 >= v33)
  {
    v35 = v33;
    memcpy(v26, v34, v33);
    v26 += v35;
    return v26;
  }

  return sub_1957130(a3, v34, v33, v26);
}

uint64_t sub_13506D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_29;
  }

  if (v2)
  {
    v4 = sub_134BD80(*(a1 + 24));
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
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_21:
  v9 = *(a1 + 48);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v10;
  if ((v2 & 0x20) != 0)
  {
LABEL_25:
    v11 = *(a1 + 52);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v12;
  }

LABEL_29:
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    result += v15;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_135086C(std::string *result, uint64_t a2)
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

        sub_1354CE4(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276BFD0;
      }

      result = sub_134BFC4(data, v9);
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

    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_23:
    HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_24:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
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
      HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
      goto LABEL_9;
    }

LABEL_25:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
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

uint64_t sub_13509C0(uint64_t a1)
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

  if (a1 != &off_276C170)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_134B11C(v6);
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

void sub_1350A8C(uint64_t a1)
{
  sub_13509C0(a1);

  operator delete();
}

uint64_t sub_1350AC4(uint64_t result)
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
      result = sub_134B1C8(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
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

uint64_t sub_1350B64(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 0x14)
    {
      break;
    }

    if (v11 == 21)
    {
      if (v8 != 168)
      {
        goto LABEL_35;
      }

      v5 |= 4u;
      v24 = (v7 + 1);
      v25 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      v26 = *v24;
      v25 = v25 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_34:
        *v34 = v24;
        *(a1 + 40) = v25;
        goto LABEL_43;
      }

      v32 = sub_1958770(v7, v25);
      *v34 = v32;
      *(a1 + 40) = v33;
      if (!v32)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v11 != 22 || v8 != 176)
      {
        goto LABEL_35;
      }

      v5 |= 8u;
      v18 = (v7 + 1);
      v19 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v20 = *v18;
      v19 = v19 + (v20 << 7) - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_25:
        *v34 = v18;
        *(a1 + 44) = v19;
        goto LABEL_43;
      }

      v30 = sub_1958770(v7, v19);
      *v34 = v30;
      *(a1 + 44) = v31;
      if (!v30)
      {
        goto LABEL_52;
      }
    }

LABEL_43:
    if (sub_195ADC0(a3, v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_35;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v23 = sub_194DB04((a1 + 24), v22);
    v17 = sub_1958890(v23, *v34, a3);
LABEL_42:
    *v34 = v17;
    if (!v17)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  if (v11 == 2 && v8 == 18)
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

      sub_1354CE4(v15);
      v13 = v16;
      *(a1 + 32) = v16;
      v7 = *v34;
    }

    v17 = sub_21FFD20(a3, v13, v7);
    goto LABEL_42;
  }

LABEL_35:
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

    v17 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  *v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v34;
}

char *sub_1350DF4(uint64_t a1, char *__dst, _DWORD *a3)
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

    v4 = sub_134B708(v8, v10, a3);
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
  *v4 = 424;
  v4[2] = v11;
  if (v11 > 0x7F)
  {
    v4[2] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[3] = v11 >> 7;
    v7 = v4 + 4;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[3];
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
    v7 = v4 + 3;
  }

LABEL_19:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 44);
    *v7 = 432;
    v7[2] = v16;
    if (v16 > 0x7F)
    {
      v7[2] = v16 | 0x80;
      v17 = v16 >> 7;
      v7[3] = v16 >> 7;
      v15 = v7 + 4;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v7[3];
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
      v15 = v7 + 3;
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

uint64_t sub_1351030(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v9 = sub_134BD80(*(a1 + 32));
      v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_9:
        if ((v2 & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_9;
    }

    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 8) != 0)
    {
LABEL_10:
      v3 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
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

std::string *sub_1351164(std::string *result, uint64_t a2)
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

      sub_1354CE4(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276BFD0;
    }

    result = sub_134BFC4(v9, v12);
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
      HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_23:
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
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

uint64_t sub_13512C4(uint64_t a1)
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

void sub_135137C(uint64_t a1)
{
  sub_13512C4(a1);

  operator delete();
}

uint64_t sub_13513B4(uint64_t a1)
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

uint64_t sub_1351430(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_13515B0(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1351698(uint64_t a1)
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

double sub_1351784(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D6F88;
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
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = &qword_278E990;
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0x100000000;
  return result;
}

uint64_t sub_1351800(uint64_t a1)
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

  v5 = (a1 + 208);
  if (*(a1 + 208) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_276C1C8)
  {
    v6 = *(a1 + 216);
    if (v6)
    {
      sub_13512C4(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 192);
  sub_1355A1C((a1 + 168));
  sub_1355998((a1 + 144));
  sub_1355914((a1 + 120));
  sub_1355890((a1 + 96));
  sub_135580C((a1 + 72));
  sub_1355788((a1 + 48));
  sub_1355704((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1351928(uint64_t a1)
{
  sub_1351800(a1);

  operator delete();
}

uint64_t sub_1351960(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_134C1B8(v4);
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
      result = sub_1350AC4(v7);
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
      result = sub_134CF34(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = sub_134DE58(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      result = sub_134E888(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 160) + 8);
    do
    {
      v19 = *v18++;
      result = sub_134F3F8(v19);
      --v17;
    }

    while (v17);
    *(v1 + 152) = 0;
  }

  v20 = *(v1 + 176);
  if (v20 >= 1)
  {
    v21 = (*(v1 + 184) + 8);
    do
    {
      v22 = *v21++;
      result = sub_134FF5C(v22);
      --v20;
    }

    while (v20);
    *(v1 + 176) = 0;
  }

  *(v1 + 192) = 0;
  v23 = *(v1 + 16);
  if ((v23 & 3) != 0)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_33;
    }

    v24 = *(v1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v24 + 23) & 0x80000000) == 0)
    {
      *v24 = 0;
      *(v24 + 23) = 0;
LABEL_33:
      if ((v23 & 2) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    **v24 = 0;
    *(v24 + 8) = 0;
    if ((v23 & 2) != 0)
    {
LABEL_34:
      result = sub_13513B4(*(v1 + 216));
    }
  }

LABEL_35:
  if ((v23 & 0xFC) != 0)
  {
    *(v1 + 224) = 0;
    *(v1 + 232) = 0;
    *(v1 + 240) = 0;
  }

  if ((v23 & 0x300) != 0)
  {
    *(v1 + 248) = 0x100000000;
  }

  v26 = *(v1 + 8);
  v25 = v1 + 8;
  *(v25 + 8) = 0;
  if (v26)
  {

    return sub_1957EA8(v25);
  }

  return result;
}

uint64_t sub_1351B40(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v109 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v109, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v109 + 1);
    v9 = **v109;
    if (**v109 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v109, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v109 + 2);
      }
    }

    *v109 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_166;
        }

        v13 = v8 - 1;
        while (1)
        {
          v14 = (v13 + 1);
          *v109 = v13 + 1;
          v15 = *(a1 + 40);
          if (v15 && (v16 = *(a1 + 32), v16 < *v15))
          {
            *(a1 + 32) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            sub_1354D68(*(a1 + 24));
            v17 = sub_19593CC(a1 + 24, v18);
            v14 = *v109;
          }

          v13 = sub_21FFDB0(a3, v17, v14);
          *v109 = v13;
          if (!v13)
          {
            goto LABEL_180;
          }

          if (*a3 <= v13 || *v13 != 10)
          {
            goto LABEL_174;
          }
        }

      case 2u:
        if (v9 != 18)
        {
          goto LABEL_166;
        }

        v35 = v8 - 1;
        while (1)
        {
          v36 = (v35 + 1);
          *v109 = v35 + 1;
          v37 = *(a1 + 64);
          if (v37 && (v38 = *(a1 + 56), v38 < *v37))
          {
            *(a1 + 56) = v38 + 1;
            v39 = *&v37[2 * v38 + 2];
          }

          else
          {
            v40 = sub_1355070(*(a1 + 48));
            v39 = sub_19593CC(a1 + 48, v40);
            v36 = *v109;
          }

          v35 = sub_21FFE40(a3, v39, v36);
          *v109 = v35;
          if (!v35)
          {
            goto LABEL_180;
          }

          if (*a3 <= v35 || *v35 != 18)
          {
            goto LABEL_174;
          }
        }

      case 3u:
        if (v9 != 24)
        {
          goto LABEL_166;
        }

        v5 |= 4u;
        v57 = v8 + 1;
        LODWORD(v56) = *v8;
        if ((v56 & 0x80) == 0)
        {
          goto LABEL_82;
        }

        v58 = *v57;
        v56 = v56 + (v58 << 7) - 128;
        if (v58 < 0)
        {
          v99 = sub_19587DC(v8, v56);
          *v109 = v99;
          *(a1 + 224) = v100;
          if (!v99)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v57 = v8 + 2;
LABEL_82:
          *v109 = v57;
          *(a1 + 224) = v56;
        }

        goto LABEL_174;
      case 4u:
        if (v9 != 32)
        {
          goto LABEL_166;
        }

        v5 |= 8u;
        v54 = v8 + 1;
        LODWORD(v53) = *v8;
        if ((v53 & 0x80) == 0)
        {
          goto LABEL_77;
        }

        v55 = *v54;
        v53 = v53 + (v55 << 7) - 128;
        if (v55 < 0)
        {
          v97 = sub_19587DC(v8, v53);
          *v109 = v97;
          *(a1 + 228) = v98;
          if (!v97)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v54 = v8 + 2;
LABEL_77:
          *v109 = v54;
          *(a1 + 228) = v53;
        }

        goto LABEL_174;
      case 5u:
        if (v9 != 42)
        {
          goto LABEL_166;
        }

        *(a1 + 16) |= 1u;
        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        v30 = sub_194DB04((a1 + 208), v29);
        v31 = sub_1958890(v30, *v109, a3);
        goto LABEL_173;
      case 0x15u:
        if (v9 != 170)
        {
          goto LABEL_166;
        }

        v41 = v8 - 2;
        while (1)
        {
          v42 = (v41 + 2);
          *v109 = v41 + 2;
          v43 = *(a1 + 88);
          if (v43 && (v44 = *(a1 + 80), v44 < *v43))
          {
            *(a1 + 80) = v44 + 1;
            v45 = *&v43[2 * v44 + 2];
          }

          else
          {
            sub_1354DE8(*(a1 + 72));
            v45 = sub_19593CC(a1 + 72, v46);
            v42 = *v109;
          }

          v41 = sub_21FFED0(a3, v45, v42);
          *v109 = v41;
          if (!v41)
          {
            goto LABEL_180;
          }

          if (*a3 <= v41 || *v41 != 426)
          {
            goto LABEL_174;
          }
        }

      case 0x16u:
        if (v9 != 178)
        {
          goto LABEL_166;
        }

        v59 = v8 - 2;
        while (1)
        {
          v60 = (v59 + 2);
          *v109 = v59 + 2;
          v61 = *(a1 + 112);
          if (v61 && (v62 = *(a1 + 104), v62 < *v61))
          {
            *(a1 + 104) = v62 + 1;
            v63 = *&v61[2 * v62 + 2];
          }

          else
          {
            v64 = sub_1354E68(*(a1 + 96));
            v63 = sub_19593CC(a1 + 96, v64);
            v60 = *v109;
          }

          v59 = sub_21FFF60(a3, v63, v60);
          *v109 = v59;
          if (!v59)
          {
            goto LABEL_180;
          }

          if (*a3 <= v59 || *v59 != 434)
          {
            goto LABEL_174;
          }
        }

      case 0x17u:
        if (v9 != 184)
        {
          goto LABEL_166;
        }

        v5 |= 0x20u;
        v66 = v8 + 1;
        LODWORD(v65) = *v8;
        if ((v65 & 0x80) == 0)
        {
          goto LABEL_97;
        }

        v67 = *v66;
        v65 = v65 + (v67 << 7) - 128;
        if (v67 < 0)
        {
          v101 = sub_19587DC(v8, v65);
          *v109 = v101;
          *(a1 + 236) = v102;
          if (!v101)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v66 = v8 + 2;
LABEL_97:
          *v109 = v66;
          *(a1 + 236) = v65;
        }

        goto LABEL_174;
      case 0x18u:
        if (v9 != 192)
        {
          goto LABEL_166;
        }

        v5 |= 0x40u;
        v86 = v8 + 1;
        LODWORD(v85) = *v8;
        if ((v85 & 0x80) == 0)
        {
          goto LABEL_134;
        }

        v87 = *v86;
        v85 = v85 + (v87 << 7) - 128;
        if (v87 < 0)
        {
          v105 = sub_19587DC(v8, v85);
          *v109 = v105;
          *(a1 + 240) = v106;
          if (!v105)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v86 = v8 + 2;
LABEL_134:
          *v109 = v86;
          *(a1 + 240) = v85;
        }

        goto LABEL_174;
      case 0x19u:
        if (v9 != 202)
        {
          goto LABEL_166;
        }

        v79 = v8 - 2;
        while (1)
        {
          v80 = (v79 + 2);
          *v109 = v79 + 2;
          v81 = *(a1 + 136);
          if (v81 && (v82 = *(a1 + 128), v82 < *v81))
          {
            *(a1 + 128) = v82 + 1;
            v83 = *&v81[2 * v82 + 2];
          }

          else
          {
            sub_1354EF0(*(a1 + 120));
            v83 = sub_19593CC(a1 + 120, v84);
            v80 = *v109;
          }

          v79 = sub_21FFFF0(a3, v83, v80);
          *v109 = v79;
          if (!v79)
          {
            goto LABEL_180;
          }

          if (*a3 <= v79 || *v79 != 458)
          {
            goto LABEL_174;
          }
        }

      case 0x1Au:
        if (v9 != 208)
        {
          goto LABEL_166;
        }

        v5 |= 0x80u;
        v26 = v8 + 1;
        LODWORD(v25) = *v8;
        if ((v25 & 0x80) == 0)
        {
          goto LABEL_33;
        }

        v27 = *v26;
        v25 = v25 + (v27 << 7) - 128;
        if (v27 < 0)
        {
          v93 = sub_19587DC(v8, v25);
          *v109 = v93;
          *(a1 + 244) = v94;
          if (!v93)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v26 = v8 + 2;
LABEL_33:
          *v109 = v26;
          *(a1 + 244) = v25;
        }

        goto LABEL_174;
      case 0x1Bu:
        if (v9 != 218)
        {
          goto LABEL_166;
        }

        v47 = v8 - 2;
        while (1)
        {
          v48 = (v47 + 2);
          *v109 = v47 + 2;
          v49 = *(a1 + 160);
          if (v49 && (v50 = *(a1 + 152), v50 < *v49))
          {
            *(a1 + 152) = v50 + 1;
            v51 = *&v49[2 * v50 + 2];
          }

          else
          {
            sub_1354F70(*(a1 + 144));
            v51 = sub_19593CC(a1 + 144, v52);
            v48 = *v109;
          }

          v47 = sub_2200080(a3, v51, v48);
          *v109 = v47;
          if (!v47)
          {
            goto LABEL_180;
          }

          if (*a3 <= v47 || *v47 != 474)
          {
            goto LABEL_174;
          }
        }

      case 0x1Cu:
        if (v9 != 224)
        {
          goto LABEL_166;
        }

        v5 |= 0x100u;
        v33 = v8 + 1;
        LODWORD(v32) = *v8;
        if ((v32 & 0x80) == 0)
        {
          goto LABEL_42;
        }

        v34 = *v33;
        v32 = v32 + (v34 << 7) - 128;
        if (v34 < 0)
        {
          v95 = sub_19587DC(v8, v32);
          *v109 = v95;
          *(a1 + 248) = v96;
          if (!v95)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v33 = v8 + 2;
LABEL_42:
          *v109 = v33;
          *(a1 + 248) = v32;
        }

        goto LABEL_174;
      case 0x1Du:
        if (v9 != 234)
        {
          goto LABEL_166;
        }

        v19 = v8 - 2;
        while (1)
        {
          v20 = (v19 + 2);
          *v109 = v19 + 2;
          v21 = *(a1 + 184);
          if (v21 && (v22 = *(a1 + 176), v22 < *v21))
          {
            *(a1 + 176) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            sub_1354FF0(*(a1 + 168));
            v23 = sub_19593CC(a1 + 168, v24);
            v20 = *v109;
          }

          v19 = sub_2200110(a3, v23, v20);
          *v109 = v19;
          if (!v19)
          {
            goto LABEL_180;
          }

          if (*a3 <= v19 || *v19 != 490)
          {
            goto LABEL_174;
          }
        }

      case 0x1Eu:
        if (v9 != 240)
        {
          goto LABEL_166;
        }

        v5 |= 0x10u;
        v69 = v8 + 1;
        LODWORD(v68) = *v8;
        if ((v68 & 0x80) == 0)
        {
          goto LABEL_102;
        }

        v70 = *v69;
        v68 = v68 + (v70 << 7) - 128;
        if (v70 < 0)
        {
          v103 = sub_19587DC(v8, v68);
          *v109 = v103;
          *(a1 + 232) = v104;
          if (!v103)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v69 = v8 + 2;
LABEL_102:
          *v109 = v69;
          *(a1 + 232) = v68;
        }

        goto LABEL_174;
      case 0x1Fu:
        if (v9 == 248)
        {
          v71 = (v8 - 2);
          while (1)
          {
            *v109 = v71 + 2;
            v72 = *(v71 + 2);
            v73 = (v71 + 3);
            if (v72 < 0)
            {
              v74 = *v73;
              v75 = (v74 << 7) + v72;
              LODWORD(v72) = v75 - 128;
              if (v74 < 0)
              {
                *v109 = sub_19587DC(v71 + 2, (v75 - 128));
                if (!*v109)
                {
                  goto LABEL_180;
                }

                LODWORD(v72) = v78;
                goto LABEL_109;
              }

              v73 = (v71 + 4);
            }

            *v109 = v73;
LABEL_109:
            if ((v72 - 1) > 1)
            {
              sub_1355E94();
            }

            else
            {
              v76 = *(a1 + 192);
              if (v76 == *(a1 + 196))
              {
                v77 = v76 + 1;
                sub_1958E5C((a1 + 192), v76 + 1);
                *(*(a1 + 200) + 4 * v76) = v72;
              }

              else
              {
                *(*(a1 + 200) + 4 * v76) = v72;
                v77 = v76 + 1;
              }

              *(a1 + 192) = v77;
            }

            v71 = *v109;
            if (*a3 <= *v109 || **v109 != 504)
            {
              goto LABEL_174;
            }
          }
        }

        if (v9 == 250)
        {
          *&v110 = a1 + 192;
          *(&v110 + 1) = sub_134B10C;
          v111 = a1 + 8;
          v112 = 31;
          v31 = sub_1216588(a3, v8, &v110);
LABEL_173:
          *v109 = v31;
          if (!v31)
          {
            goto LABEL_180;
          }

LABEL_174:
          if (sub_195ADC0(a3, v109, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_166:
        if (v9)
        {
          v107 = (v9 & 7) == 4;
        }

        else
        {
          v107 = 1;
        }

        if (!v107)
        {
          if (*v7)
          {
            v108 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v108 = sub_11F1920((a1 + 8));
            v8 = *v109;
          }

          v31 = sub_1952690(v9, v108, v8, a3);
          goto LABEL_173;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_180:
          *v109 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v109;
      case 0x20u:
        if (v9)
        {
          goto LABEL_166;
        }

        v91 = v8 + 1;
        v90 = *v8;
        if ((v90 & 0x8000000000000000) == 0)
        {
          goto LABEL_145;
        }

        v92 = *v91;
        v90 = (v92 << 7) + v90 - 128;
        if (v92 < 0)
        {
          *v109 = sub_19587DC(v8, v90);
          if (!*v109)
          {
            goto LABEL_180;
          }
        }

        else
        {
          v91 = v8 + 2;
LABEL_145:
          *v109 = v91;
        }

        if ((v90 - 1) > 1)
        {
          sub_1355E54();
        }

        else
        {
          *(a1 + 16) |= 0x200u;
          *(a1 + 252) = v90;
        }

        goto LABEL_174;
      case 0x21u:
        if (v9 != 10)
        {
          goto LABEL_166;
        }

        *(a1 + 16) |= 2u;
        v88 = *(a1 + 216);
        if (!v88)
        {
          v89 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v89 = *v89;
          }

          v88 = sub_13550F8(v89);
          *(a1 + 216) = v88;
          v8 = *v109;
        }

        v31 = sub_22001A0(a3, v88, v8);
        goto LABEL_173;
      default:
        goto LABEL_166;
    }
  }
}

char *sub_1352584(uint64_t a1, char *a2, _DWORD *a3)
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
      v9 = *(v8 + 20);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_134C5E8(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_1350DF4(v13, v15, a3);
    }
  }

  v16 = *(a1 + 16);
  if ((v16 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v18 = *(a1 + 224);
    *a2 = 24;
    a2[1] = v18;
    if (v18 > 0x7F)
    {
      a2[1] = v18 | 0x80;
      v19 = v18 >> 7;
      a2[2] = v18 >> 7;
      v17 = a2 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v17 - 1) = a2 | 0x80;
          a2 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = a2 + 2;
    }
  }

  else
  {
    v17 = a2;
  }

  if ((v16 & 8) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 228);
    *v17 = 32;
    v17[1] = v22;
    if (v22 > 0x7F)
    {
      v17[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v17[2] = v22 >> 7;
      v21 = v17 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v17) = v17[2];
        do
        {
          *(v21 - 1) = v17 | 0x80;
          v17 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v17 + 2;
    }
  }

  else
  {
    v21 = v17;
  }

  if (v16)
  {
    v21 = sub_128AEEC(a3, 5, *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL, v21);
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v27 = *(*(a1 + 88) + 8 * k + 8);
      *v21 = 426;
      v28 = *(v27 + 20);
      v21[2] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v21 + 2);
      }

      else
      {
        v29 = v21 + 3;
      }

      v21 = sub_134D434(v27, v29, a3);
    }
  }

  v30 = *(a1 + 104);
  if (v30)
  {
    for (m = 0; m != v30; ++m)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v32 = *(*(a1 + 112) + 8 * m + 8);
      *v21 = 434;
      v33 = *(v32 + 20);
      v21[2] = v33;
      if (v33 > 0x7F)
      {
        v34 = sub_19575D0(v33, v21 + 2);
      }

      else
      {
        v34 = v21 + 3;
      }

      v21 = sub_134E1E4(v32, v34, a3);
    }
  }

  if ((v16 & 0x20) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v36 = *(a1 + 236);
    *v21 = 440;
    v21[2] = v36;
    if (v36 > 0x7F)
    {
      v21[2] = v36 | 0x80;
      v37 = v36 >> 7;
      v21[3] = v36 >> 7;
      v35 = v21 + 4;
      if (v36 >= 0x4000)
      {
        LOBYTE(v38) = v21[3];
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
      v35 = v21 + 3;
    }
  }

  else
  {
    v35 = v21;
  }

  if ((v16 & 0x40) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v41 = *(a1 + 240);
    *v35 = 448;
    v35[2] = v41;
    if (v41 > 0x7F)
    {
      v35[2] = v41 | 0x80;
      v42 = v41 >> 7;
      v35[3] = v41 >> 7;
      v40 = v35 + 4;
      if (v41 >= 0x4000)
      {
        LOBYTE(v35) = v35[3];
        do
        {
          *(v40 - 1) = v35 | 0x80;
          v35 = (v42 >> 7);
          *v40++ = v42 >> 7;
          v43 = v42 >> 14;
          v42 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v40 = v35 + 3;
    }
  }

  else
  {
    v40 = v35;
  }

  v44 = *(a1 + 128);
  if (v44)
  {
    for (n = 0; n != v44; ++n)
    {
      if (*a3 <= v40)
      {
        v40 = sub_225EB68(a3, v40);
      }

      v46 = *(*(a1 + 136) + 8 * n + 8);
      *v40 = 458;
      v47 = *(v46 + 20);
      v40[2] = v47;
      if (v47 > 0x7F)
      {
        v48 = sub_19575D0(v47, v40 + 2);
      }

      else
      {
        v48 = v40 + 3;
      }

      v40 = sub_134ECB8(v46, v48, a3);
    }
  }

  if ((v16 & 0x80) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v50 = *(a1 + 244);
    *v40 = 464;
    v40[2] = v50;
    if (v50 > 0x7F)
    {
      v40[2] = v50 | 0x80;
      v51 = v50 >> 7;
      v40[3] = v50 >> 7;
      v49 = v40 + 4;
      if (v50 >= 0x4000)
      {
        LOBYTE(v40) = v40[3];
        do
        {
          *(v49 - 1) = v40 | 0x80;
          v40 = (v51 >> 7);
          *v49++ = v51 >> 7;
          v52 = v51 >> 14;
          v51 >>= 7;
        }

        while (v52);
      }
    }

    else
    {
      v49 = v40 + 3;
    }
  }

  else
  {
    v49 = v40;
  }

  v53 = *(a1 + 152);
  if (v53)
  {
    for (ii = 0; ii != v53; ++ii)
    {
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v55 = *(*(a1 + 160) + 8 * ii + 8);
      *v49 = 474;
      v56 = *(v55 + 20);
      v49[2] = v56;
      if (v56 > 0x7F)
      {
        v57 = sub_19575D0(v56, v49 + 2);
      }

      else
      {
        v57 = v49 + 3;
      }

      v49 = sub_134F828(v55, v57, a3);
    }
  }

  if ((v16 & 0x100) != 0)
  {
    if (*a3 <= v49)
    {
      v49 = sub_225EB68(a3, v49);
    }

    v59 = *(a1 + 248);
    *v49 = 480;
    v49[2] = v59;
    if (v59 > 0x7F)
    {
      v49[2] = v59 | 0x80;
      v60 = v59 >> 7;
      v49[3] = v59 >> 7;
      v58 = v49 + 4;
      if (v59 >= 0x4000)
      {
        LOBYTE(v49) = v49[3];
        do
        {
          *(v58 - 1) = v49 | 0x80;
          v49 = (v60 >> 7);
          *v58++ = v60 >> 7;
          v61 = v60 >> 14;
          v60 >>= 7;
        }

        while (v61);
      }
    }

    else
    {
      v58 = v49 + 3;
    }
  }

  else
  {
    v58 = v49;
  }

  v62 = *(a1 + 176);
  if (v62)
  {
    for (jj = 0; jj != v62; ++jj)
    {
      if (*a3 <= v58)
      {
        v58 = sub_225EB68(a3, v58);
      }

      v64 = *(*(a1 + 184) + 8 * jj + 8);
      *v58 = 490;
      v65 = *(v64 + 20);
      v58[2] = v65;
      if (v65 > 0x7F)
      {
        v66 = sub_19575D0(v65, v58 + 2);
      }

      else
      {
        v66 = v58 + 3;
      }

      v58 = sub_1350328(v64, v66, a3);
    }
  }

  if ((v16 & 0x10) != 0)
  {
    if (*a3 <= v58)
    {
      v58 = sub_225EB68(a3, v58);
    }

    v68 = *(a1 + 232);
    *v58 = 496;
    v58[2] = v68;
    if (v68 > 0x7F)
    {
      v58[2] = v68 | 0x80;
      v69 = v68 >> 7;
      v58[3] = v68 >> 7;
      v67 = v58 + 4;
      if (v68 >= 0x4000)
      {
        LOBYTE(v58) = v58[3];
        do
        {
          *(v67 - 1) = v58 | 0x80;
          v58 = (v69 >> 7);
          *v67++ = v69 >> 7;
          v70 = v69 >> 14;
          v69 >>= 7;
        }

        while (v70);
      }
    }

    else
    {
      v67 = v58 + 3;
    }
  }

  else
  {
    v67 = v58;
  }

  v71 = *(a1 + 192);
  if (v71 < 1)
  {
    v74 = v67;
  }

  else
  {
    for (kk = 0; kk != v71; ++kk)
    {
      if (*a3 <= v67)
      {
        v67 = sub_225EB68(a3, v67);
      }

      v73 = *(*(a1 + 200) + 4 * kk);
      *v67 = 504;
      v67[2] = v73;
      if (v73 > 0x7F)
      {
        v67[2] = v73 | 0x80;
        v75 = v73 >> 7;
        v67[3] = v73 >> 7;
        v74 = v67 + 4;
        if (v73 >= 0x4000)
        {
          LOBYTE(v67) = v67[3];
          do
          {
            *(v74 - 1) = v67 | 0x80;
            v67 = (v75 >> 7);
            *v74++ = v75 >> 7;
            v76 = v75 >> 14;
            v75 >>= 7;
          }

          while (v76);
        }
      }

      else
      {
        v74 = v67 + 3;
      }

      v67 = v74;
    }
  }

  if ((v16 & 0x200) != 0)
  {
    if (*a3 <= v74)
    {
      v74 = sub_225EB68(a3, v74);
    }

    v78 = *(a1 + 252);
    *v74 = 640;
    v74[2] = v78;
    if (v78 > 0x7F)
    {
      v74[2] = v78 | 0x80;
      v79 = v78 >> 7;
      v74[3] = v78 >> 7;
      v77 = v74 + 4;
      if (v78 >= 0x4000)
      {
        LOBYTE(v80) = v74[3];
        do
        {
          *(v77 - 1) = v80 | 0x80;
          v80 = v79 >> 7;
          *v77++ = v79 >> 7;
          v81 = v79 >> 14;
          v79 >>= 7;
        }

        while (v81);
      }
    }

    else
    {
      v77 = v74 + 3;
    }
  }

  else
  {
    v77 = v74;
  }

  if ((v16 & 2) != 0)
  {
    if (*a3 <= v77)
    {
      v77 = sub_225EB68(a3, v77);
    }

    v82 = *(a1 + 216);
    *v77 = 650;
    v83 = *(v82 + 20);
    v77[2] = v83;
    if (v83 > 0x7F)
    {
      v84 = sub_19575D0(v83, v77 + 2);
    }

    else
    {
      v84 = v77 + 3;
    }

    v77 = sub_13515B0(v82, v84, a3);
  }

  v85 = *(a1 + 8);
  if ((v85 & 1) == 0)
  {
    return v77;
  }

  v87 = v85 & 0xFFFFFFFFFFFFFFFCLL;
  v88 = *(v87 + 31);
  if (v88 < 0)
  {
    v89 = *(v87 + 8);
    v88 = *(v87 + 16);
  }

  else
  {
    v89 = (v87 + 8);
  }

  if (*a3 - v77 >= v88)
  {
    v90 = v88;
    memcpy(v77, v89, v88);
    v77 += v90;
    return v77;
  }

  return sub_1957130(a3, v89, v88, v77);
}

uint64_t sub_1352F44(uint64_t a1)
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
      v7 = sub_134CB0C(v6);
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
      v14 = sub_1351030(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + 2 * v15;
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
      v21 = sub_134D974(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + 2 * v22;
  v24 = *(a1 + 112);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_134E4A0(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 128);
  v30 = v23 + 2 * v29;
  v31 = *(a1 + 136);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = sub_134F0EC(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 152);
  v37 = v30 + 2 * v36;
  v38 = *(a1 + 160);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = sub_134FC5C(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 176);
  v44 = v37 + 2 * v43;
  v45 = *(a1 + 184);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = sub_13506D4(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 192);
  if (v50)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = *(*(a1 + 200) + 4 * v51);
      if (v53 < 0)
      {
        v54 = 10;
      }

      else
      {
        v54 = (9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6;
      }

      v52 += v54;
      ++v51;
    }

    while (v50 != v51);
  }

  else
  {
    v52 = 0;
  }

  v55 = v44 + 2 * v50 + v52;
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_91;
  }

  if (v56)
  {
    v57 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v58 = *(v57 + 23);
    v59 = *(v57 + 8);
    if ((v58 & 0x80u) == 0)
    {
      v59 = v58;
    }

    v55 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v56 & 2) == 0)
    {
LABEL_56:
      if ((v56 & 4) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_67;
    }
  }

  else if ((v56 & 2) == 0)
  {
    goto LABEL_56;
  }

  v60 = sub_1351698(*(a1 + 216));
  v55 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 4) == 0)
  {
LABEL_57:
    if ((v56 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_71;
  }

LABEL_67:
  v61 = *(a1 + 224);
  if (v61 < 0)
  {
    v62 = 11;
  }

  else
  {
    v62 = ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v55 += v62;
  if ((v56 & 8) == 0)
  {
LABEL_58:
    if ((v56 & 0x10) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_75;
  }

LABEL_71:
  v63 = *(a1 + 228);
  if (v63 < 0)
  {
    v64 = 11;
  }

  else
  {
    v64 = ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v55 += v64;
  if ((v56 & 0x10) == 0)
  {
LABEL_59:
    if ((v56 & 0x20) == 0)
    {
      goto LABEL_60;
    }

LABEL_79:
    v67 = *(a1 + 236);
    if (v67 < 0)
    {
      v68 = 12;
    }

    else
    {
      v68 = ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v55 += v68;
    if ((v56 & 0x40) == 0)
    {
LABEL_61:
      if ((v56 & 0x80) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_87;
    }

    goto LABEL_83;
  }

LABEL_75:
  v65 = *(a1 + 232);
  if (v65 < 0)
  {
    v66 = 12;
  }

  else
  {
    v66 = ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v55 += v66;
  if ((v56 & 0x20) != 0)
  {
    goto LABEL_79;
  }

LABEL_60:
  if ((v56 & 0x40) == 0)
  {
    goto LABEL_61;
  }

LABEL_83:
  v69 = *(a1 + 240);
  if (v69 < 0)
  {
    v70 = 12;
  }

  else
  {
    v70 = ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v55 += v70;
  if ((v56 & 0x80) != 0)
  {
LABEL_87:
    v71 = *(a1 + 244);
    if (v71 < 0)
    {
      v72 = 12;
    }

    else
    {
      v72 = ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v55 += v72;
  }

LABEL_91:
  if ((v56 & 0x300) != 0)
  {
    if ((v56 & 0x100) != 0)
    {
      v73 = *(a1 + 248);
      if (v73 < 0)
      {
        v74 = 12;
      }

      else
      {
        v74 = ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v55 += v74;
    }

    if ((v56 & 0x200) != 0)
    {
      v75 = *(a1 + 252);
      if (v75 < 0)
      {
        v76 = 12;
      }

      else
      {
        v76 = ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v55 += v76;
    }
  }

  v77 = *(a1 + 8);
  if (v77)
  {
    v79 = v77 & 0xFFFFFFFFFFFFFFFCLL;
    v80 = *((v77 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v80 < 0)
    {
      v80 = *(v79 + 16);
    }

    v55 += v80;
  }

  *(a1 + 20) = v55;
  return v55;
}

void sub_1353470(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1355AA0((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1355B2C((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_1355BB8((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_1355C44((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
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
    sub_1355CD0((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
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
    sub_1355D4C((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 176);
  if (v34)
  {
    v35 = *(a2 + 184);
    v36 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_1355DC8((a1 + 168), v36, (v35 + 8), v34, **(a1 + 184) - *(a1 + 176));
    v37 = *(a1 + 176) + v34;
    *(a1 + 176) = v37;
    v38 = *(a1 + 184);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 192);
  if (v39)
  {
    v40 = *(a1 + 192);
    sub_1958E5C((a1 + 192), v40 + v39);
    v41 = *(a1 + 200);
    *(a1 + 192) += *(a2 + 192);
    memcpy((v41 + 4 * v40), *(a2 + 200), 4 * *(a2 + 192));
  }

  v42 = *(a2 + 16);
  if (v42)
  {
    if (v42)
    {
      v44 = *(a2 + 208);
      *(a1 + 16) |= 1u;
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      sub_194EA1C((a1 + 208), (v44 & 0xFFFFFFFFFFFFFFFELL), v46);
      if ((v42 & 2) == 0)
      {
LABEL_27:
        if ((v42 & 4) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_56;
      }
    }

    else if ((v42 & 2) == 0)
    {
      goto LABEL_27;
    }

    *(a1 + 16) |= 2u;
    v47 = *(a1 + 216);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_13550F8(v49);
      *(a1 + 216) = v47;
    }

    if (*(a2 + 216))
    {
      v50 = *(a2 + 216);
    }

    else
    {
      v50 = &off_276C1A0;
    }

    sub_12F5A34(v47, v50);
    if ((v42 & 4) == 0)
    {
LABEL_28:
      if ((v42 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 224) = *(a2 + 224);
    if ((v42 & 8) == 0)
    {
LABEL_29:
      if ((v42 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(a1 + 228) = *(a2 + 228);
    if ((v42 & 0x10) == 0)
    {
LABEL_30:
      if ((v42 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(a1 + 232) = *(a2 + 232);
    if ((v42 & 0x20) == 0)
    {
LABEL_31:
      if ((v42 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_60;
    }

LABEL_59:
    *(a1 + 236) = *(a2 + 236);
    if ((v42 & 0x40) == 0)
    {
LABEL_32:
      if ((v42 & 0x80) == 0)
      {
LABEL_34:
        *(a1 + 16) |= v42;
        goto LABEL_35;
      }

LABEL_33:
      *(a1 + 244) = *(a2 + 244);
      goto LABEL_34;
    }

LABEL_60:
    *(a1 + 240) = *(a2 + 240);
    if ((v42 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_35:
  if ((v42 & 0x300) != 0)
  {
    if ((v42 & 0x100) != 0)
    {
      *(a1 + 248) = *(a2 + 248);
    }

    if ((v42 & 0x200) != 0)
    {
      *(a1 + 252) = *(a2 + 252);
    }

    *(a1 + 16) |= v42;
  }

  v43 = *(a2 + 8);
  if (v43)
  {

    sub_1957EF4((a1 + 8), (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_13538C4(uint64_t a1)
{
  if (!sub_1353950(a1 + 24) || !sub_13539B4(a1 + 48) || !sub_1353A10(a1 + 72) || !sub_1353A68(a1 + 96) || !sub_1353A10(a1 + 120) || !sub_1353950(a1 + 144))
  {
    return 0;
  }

  return sub_1353A10(a1 + 168);
}

uint64_t sub_1353950(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; ; i -= 8)
  {
    v4 = *(*i + 16);
    if ((~v4 & 0x1E) != 0 || (v4 & 1) != 0 && (~*(*(*i + 24) + 16) & 7) != 0)
    {
      break;
    }

    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_13539B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; ; i -= 8)
  {
    v4 = *(*i + 16);
    if ((v4 & 1) == 0 || (v4 & 2) != 0 && (~*(*(*i + 32) + 16) & 7) != 0)
    {
      break;
    }

    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1353A10(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 1) == 0 || (~*(*(*i + 24) + 16) & 7) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1353A68(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 2) == 0 || (~*(*(*i + 32) + 16) & 7) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1353AD0(uint64_t a1)
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
  if (a1 != &off_276C2C8)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_13512C4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1353B90(uint64_t a1)
{
  sub_1353AD0(a1);

  operator delete();
}

uint64_t sub_1353BC8(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_13513B4(*(result + 40));
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 76) = 0x100000001;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 76) = 1;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1353C54(uint64_t a1, char *a2, int32x2_t *a3)
{
  v70 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v70, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v70 + 1;
    v9 = *v70;
    if (*v70 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v70, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v70 + 2;
      }
    }

    v70 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 > 0x1E)
    {
      break;
    }

    if (v9 >> 3 <= 2)
    {
      if (v13 == 1)
      {
        if (v9 != 8)
        {
          goto LABEL_123;
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
            v60 = sub_19587DC(v8, v30);
            v70 = v60;
            *(a1 + 48) = v61;
            if (!v60)
            {
              goto LABEL_139;
            }

            goto LABEL_131;
          }

          v31 = v8 + 2;
        }

        v70 = v31;
        *(a1 + 48) = v30;
      }

      else
      {
        if (v13 != 2 || v9 != 16)
        {
          goto LABEL_123;
        }

        v5 |= 4u;
        v24 = v8 + 1;
        v23 = *v8;
        if (v23 < 0)
        {
          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v56 = sub_19587DC(v8, v23);
            v70 = v56;
            *(a1 + 56) = v57;
            if (!v56)
            {
              goto LABEL_139;
            }

            goto LABEL_131;
          }

          v24 = v8 + 2;
        }

        v70 = v24;
        *(a1 + 56) = v23;
      }
    }

    else if (v13 == 3)
    {
      if (v9 != 24)
      {
        goto LABEL_123;
      }

      v5 |= 8u;
      v39 = v8 + 1;
      v38 = *v8;
      if (v38 < 0)
      {
        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v63 = sub_19587DC(v8, v38);
          v70 = v63;
          *(a1 + 64) = v64 != 0;
          if (!v63)
          {
            goto LABEL_139;
          }

          goto LABEL_131;
        }

        v39 = v8 + 2;
      }

      v70 = v39;
      *(a1 + 64) = v38 != 0;
    }

    else
    {
      if (v13 != 4)
      {
        if (v13 != 21 || v9 != 168)
        {
          goto LABEL_123;
        }

        v14 = v8 + 1;
        v15 = *v8;
        if (v15 < 0)
        {
          v16 = *v14;
          v17 = (v16 << 7) + v15;
          LODWORD(v15) = v17 - 128;
          if (v16 < 0)
          {
            v70 = sub_19587DC(v8, (v17 - 128));
            if (!v70)
            {
              goto LABEL_139;
            }

            LODWORD(v15) = v65;
            goto LABEL_18;
          }

          v14 = v8 + 2;
        }

        v70 = v14;
LABEL_18:
        if (sub_134B0C8(v15))
        {
          *(a1 + 16) |= 0x80u;
          *(a1 + 80) = v15;
        }

        else
        {
          sub_1313640();
        }

        goto LABEL_131;
      }

      if (v9 != 32)
      {
        goto LABEL_123;
      }

      v5 |= 0x10u;
      v50 = v8 + 1;
      LODWORD(v49) = *v8;
      if ((v49 & 0x80) != 0)
      {
        v51 = *v50;
        v49 = v49 + (v51 << 7) - 128;
        if (v51 < 0)
        {
          v66 = sub_19587DC(v8, v49);
          v70 = v66;
          *(a1 + 68) = v67;
          if (!v66)
          {
            goto LABEL_139;
          }

          goto LABEL_131;
        }

        v50 = v8 + 2;
      }

      v70 = v50;
      *(a1 + 68) = v49;
    }

LABEL_131:
    if (sub_195ADC0(a3, &v70, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v9 >> 3 <= 0x20)
  {
    if (v13 == 31)
    {
      if (v9 != 248)
      {
        goto LABEL_123;
      }

      v33 = v8 + 1;
      v34 = *v8;
      if ((v34 & 0x8000000000000000) != 0)
      {
        v35 = *v33;
        v36 = (v35 << 7) + v34;
        v34 = (v36 - 128);
        if ((v35 & 0x80000000) == 0)
        {
          v33 = v8 + 2;
          goto LABEL_62;
        }

        v70 = sub_19587DC(v8, (v36 - 128));
        if (!v70)
        {
          goto LABEL_139;
        }

        v34 = v62;
      }

      else
      {
LABEL_62:
        v70 = v33;
      }

      if (v34 > 4 || ((1 << v34) & 0x16) == 0)
      {
        if (*v7)
        {
          v55 = ((*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        else
        {
          v55 = sub_11F1920((a1 + 8));
        }

        sub_19586BC(31, v34, v55);
      }

      else
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 84) = v34;
      }

      goto LABEL_131;
    }

    if (v13 != 32 || v9 != 0)
    {
      goto LABEL_123;
    }

    v5 |= 0x20u;
    v28 = v8 + 1;
    LODWORD(v27) = *v8;
    if ((v27 & 0x80) != 0)
    {
      v29 = *v28;
      v27 = v27 + (v29 << 7) - 128;
      if (v29 < 0)
      {
        v58 = sub_19587DC(v8, v27);
        v70 = v58;
        *(a1 + 72) = v59;
        if (!v58)
        {
          goto LABEL_139;
        }

        goto LABEL_131;
      }

      v28 = v8 + 2;
    }

    v70 = v28;
    *(a1 + 72) = v27;
    goto LABEL_131;
  }

  if (v13 == 33)
  {
    if (v9 != 8)
    {
      if (v9 != 10)
      {
        goto LABEL_123;
      }

      *&v71 = a1 + 24;
      *(&v71 + 1) = sub_134B10C;
      v72 = a1 + 8;
      v73 = 33;
      v21 = sub_1216588(a3, v8, &v71);
LABEL_130:
      v70 = v21;
      if (!v21)
      {
        goto LABEL_139;
      }

      goto LABEL_131;
    }

    v41 = v8 - 2;
    while (1)
    {
      v70 = v41 + 2;
      v42 = v41[2];
      v43 = v41 + 3;
      if (v42 < 0)
      {
        v44 = *v43;
        v45 = (v44 << 7) + v42;
        LODWORD(v42) = v45 - 128;
        if (v44 < 0)
        {
          v70 = sub_19587DC((v41 + 2), (v45 - 128));
          if (!v70)
          {
            goto LABEL_139;
          }

          LODWORD(v42) = v48;
          goto LABEL_79;
        }

        v43 = v41 + 4;
      }

      v70 = v43;
LABEL_79:
      if ((v42 - 1) > 1)
      {
        sub_1355F14();
      }

      else
      {
        v46 = *(a1 + 24);
        if (v46 == *(a1 + 28))
        {
          v47 = v46 + 1;
          sub_1958E5C((a1 + 24), v46 + 1);
          *(*(a1 + 32) + 4 * v46) = v42;
        }

        else
        {
          *(*(a1 + 32) + 4 * v46) = v42;
          v47 = v46 + 1;
        }

        *(a1 + 24) = v47;
      }

      v41 = v70;
      if (*a3 <= v70 || *v70 != 648)
      {
        goto LABEL_131;
      }
    }
  }

  if (v13 == 34)
  {
    if (v9 != 16)
    {
      goto LABEL_123;
    }

    v53 = v8 + 1;
    v52 = *v8;
    if (v52 < 0)
    {
      v54 = *v53;
      v52 = (v54 << 7) + v52 - 128;
      if (v54 < 0)
      {
        v70 = sub_19587DC(v8, v52);
        if (!v70)
        {
          goto LABEL_139;
        }

        goto LABEL_100;
      }

      v53 = v8 + 2;
    }

    v70 = v53;
LABEL_100:
    if ((v52 - 1) > 1)
    {
      sub_1355ED4();
    }

    else
    {
      *(a1 + 16) |= 0x40u;
      *(a1 + 76) = v52;
    }

    goto LABEL_131;
  }

  if (v13 == 35 && v9 == 26)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 40);
    if (!v19)
    {
      v20 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v7)
      {
        v20 = *v20;
      }

      v19 = sub_13550F8(v20);
      *(a1 + 40) = v19;
      v8 = v70;
    }

    v21 = sub_22001A0(a3, v19, v8);
    goto LABEL_130;
  }

LABEL_123:
  if (v9)
  {
    v68 = (v9 & 7) == 4;
  }

  else
  {
    v68 = 1;
  }

  if (!v68)
  {
    if (*v7)
    {
      v69 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v69 = sub_11F1920((a1 + 8));
      v8 = v70;
    }

    v21 = sub_1952690(v9, v69, v8, a3);
    goto LABEL_130;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_139:
    v70 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v70;
}