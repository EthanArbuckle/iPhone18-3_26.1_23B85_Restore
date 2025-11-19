std::string *sub_16A3A60(std::string *result, uint64_t a2)
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
    result[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
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

void *sub_16A3AFC(void *a1)
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

void sub_16A3B70(void *a1)
{
  sub_16A3AFC(a1);

  operator delete();
}

uint64_t sub_16A3BA8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 28) = 0;
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

char *sub_16A3BD0(uint64_t a1, char *a2, int32x2_t *a3)
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
    v15 = *v7;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v15 = (v17 << 7) + v15 - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_24:
      v25 = v16;
      *(a1 + 28) = v15 != 0;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 28) = v22 != 0;
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_29:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_28:
      v25 = v18;
      *(a1 + 24) = v19;
      goto LABEL_29;
    }

    v23 = sub_1958770(v7, v19);
    v25 = v23;
    *(a1 + 24) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
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

    v25 = sub_1952690(v8, v14, v7, a3);
    if (!v25)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
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

char *sub_16A3DC4(uint64_t a1, char *__dst, _DWORD *a3)
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

    v11 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v11;
    v6 += 2;
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v15)
  {
    v17 = v15;
    memcpy(v6, v16, v15);
    v6 += v17;
    return v6;
  }

  return sub_1957130(a3, v16, v15, v6);
}

uint64_t sub_16A3F24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2 + (v1 & 2);
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

uint64_t sub_16A3FB4(uint64_t a1)
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

  if (a1 != &off_277D1E8)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_16A3AFC(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_16A3AFC(v6);
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

void sub_16A4084(uint64_t a1)
{
  sub_16A3FB4(a1);

  operator delete();
}

uint64_t sub_16A40BC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16A3BA8(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16A3BA8(*(v1 + 32));
    }
  }

  if ((v2 & 0xFC) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
    *(v1 + 64) = 0;
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

char *sub_16A4148(uint64_t a1, char *a2, int32x2_t *a3)
{
  v60 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v60, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v60 + 1;
    v8 = *v60;
    if (*v60 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v60, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v60 + 2;
      }
    }

    v60 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_77;
          }

          v5 |= 4u;
          v31 = v7 + 1;
          v32 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          v33 = *v31;
          v32 = v32 + (v33 << 7) - 128;
          if ((v33 & 0x80000000) == 0)
          {
            v31 = v7 + 2;
LABEL_61:
            v60 = v31;
            *(a1 + 40) = v32;
            goto LABEL_85;
          }

          v48 = sub_1958770(v7, v32);
          v60 = v48;
          *(a1 + 40) = v49;
          if (!v48)
          {
            goto LABEL_107;
          }
        }

        else if (v11 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_77;
          }

          v5 |= 8u;
          v37 = v7 + 1;
          v38 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_71;
          }

          v39 = *v37;
          v38 = v38 + (v39 << 7) - 128;
          if ((v39 & 0x80000000) == 0)
          {
            v37 = v7 + 2;
LABEL_71:
            v60 = v37;
            *(a1 + 44) = v38;
            goto LABEL_85;
          }

          v56 = sub_1958770(v7, v38);
          v60 = v56;
          *(a1 + 44) = v57;
          if (!v56)
          {
            goto LABEL_107;
          }
        }

        else
        {
          if (v11 != 5 || v8 != 40)
          {
            goto LABEL_77;
          }

          v5 |= 0x10u;
          v12 = v7 + 1;
          v13 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          v14 = *v12;
          v13 = v13 + (v14 << 7) - 128;
          if ((v14 & 0x80000000) == 0)
          {
            v12 = v7 + 2;
LABEL_16:
            v60 = v12;
            *(a1 + 48) = v13;
            goto LABEL_85;
          }

          v52 = sub_1958770(v7, v13);
          v60 = v52;
          *(a1 + 48) = v53;
          if (!v52)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_85;
      }

      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_77;
        }

        *(a1 + 16) |= 1u;
        v19 = *(a1 + 24);
        if (v19)
        {
          goto LABEL_51;
        }

        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v19 = sub_16AA9CC(v26);
        *(a1 + 24) = v19;
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_77;
        }

        *(a1 + 16) |= 2u;
        v19 = *(a1 + 32);
        if (v19)
        {
          goto LABEL_51;
        }

        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_16AA9CC(v21);
        *(a1 + 32) = v19;
      }

      v7 = v60;
LABEL_51:
      v27 = sub_22327E8(a3, v19, v7);
      goto LABEL_84;
    }

    if (v8 >> 3 <= 7)
    {
      break;
    }

    if (v11 == 8)
    {
      if (v8 != 64)
      {
        goto LABEL_77;
      }

      v5 |= 0x80u;
      v34 = v7 + 1;
      v35 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      v36 = *v34;
      v35 = v35 + (v36 << 7) - 128;
      if ((v36 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_66:
        v60 = v34;
        *(a1 + 60) = v35;
        goto LABEL_85;
      }

      v50 = sub_1958770(v7, v35);
      v60 = v50;
      *(a1 + 60) = v51;
      if (!v50)
      {
        goto LABEL_107;
      }
    }

    else if (v11 == 9)
    {
      if (v8 != 72)
      {
        goto LABEL_77;
      }

      v5 |= 0x100u;
      v40 = v7 + 1;
      v41 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      v42 = *v40;
      v41 = v41 + (v42 << 7) - 128;
      if ((v42 & 0x80000000) == 0)
      {
        v40 = v7 + 2;
LABEL_76:
        v60 = v40;
        *(a1 + 64) = v41;
        goto LABEL_85;
      }

      v58 = sub_1958770(v7, v41);
      v60 = v58;
      *(a1 + 64) = v59;
      if (!v58)
      {
        goto LABEL_107;
      }
    }

    else
    {
      if (v11 != 10 || v8 != 80)
      {
        goto LABEL_77;
      }

      v5 |= 0x200u;
      v15 = v7 + 1;
      v16 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v17 = *v15;
      v16 = v16 + (v17 << 7) - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v15 = v7 + 2;
LABEL_25:
        v60 = v15;
        *(a1 + 68) = v16;
        goto LABEL_85;
      }

      v54 = sub_1958770(v7, v16);
      v60 = v54;
      *(a1 + 68) = v55;
      if (!v54)
      {
        goto LABEL_107;
      }
    }

LABEL_85:
    if (sub_195ADC0(a3, &v60, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_77;
    }

    v5 |= 0x20u;
    v28 = v7 + 1;
    v29 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    v30 = *v28;
    v29 = v29 + (v30 << 7) - 128;
    if ((v30 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_56:
      v60 = v28;
      *(a1 + 52) = v29;
      goto LABEL_85;
    }

    v46 = sub_1958770(v7, v29);
    v60 = v46;
    *(a1 + 52) = v47;
    if (!v46)
    {
      goto LABEL_107;
    }

    goto LABEL_85;
  }

  if (v11 == 7 && v8 == 56)
  {
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if (v24 < 0)
    {
      v60 = sub_19587DC(v7, v22);
      if (!v60)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v23 = v7 + 2;
LABEL_42:
      v60 = v23;
    }

    if (v22 > 3)
    {
      sub_13ED178();
    }

    else
    {
      *(a1 + 16) |= 0x40u;
      *(a1 + 56) = v22;
    }

    goto LABEL_85;
  }

LABEL_77:
  if (v8)
  {
    v43 = (v8 & 7) == 4;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    v44 = *(a1 + 8);
    if (v44)
    {
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v45 = sub_11F1920((a1 + 8));
      v7 = v60;
    }

    v27 = sub_1952690(v8, v45, v7, a3);
LABEL_84:
    v60 = v27;
    if (!v27)
    {
      goto LABEL_107;
    }

    goto LABEL_85;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_107:
  v60 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v60;
}

char *sub_16A4658(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_16A3DC4(v11, v13, a3);
    if ((v6 & 4) == 0)
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

  v4 = sub_16A3DC4(v8, v10, a3);
  if ((v6 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 4) == 0)
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

  v14 = *(a1 + 40);
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
        LODWORD(v4) = v15 >> 7;
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
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 44);
    *v7 = 32;
    v7[1] = v18;
    if (v18 > 0x7F)
    {
      v7[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v7[2] = v18 >> 7;
      v17 = v7 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v17 - 1) = v7 | 0x80;
          LODWORD(v7) = v19 >> 7;
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v7 + 2;
    }
  }

  else
  {
    v17 = v7;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 48);
    *v17 = 40;
    v17[1] = v22;
    if (v22 > 0x7F)
    {
      v17[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v17[2] = v22 >> 7;
      v21 = v17 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v24) = v17[2];
        do
        {
          *(v21 - 1) = v24 | 0x80;
          v24 = v23 >> 7;
          *v21++ = v23 >> 7;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
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

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v27 = *(a1 + 52);
    *v21 = 48;
    v21[1] = v27;
    if (v27 > 0x7F)
    {
      v21[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v21[2] = v27 >> 7;
      v26 = v21 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v21) = v21[2];
        do
        {
          *(v26 - 1) = v21 | 0x80;
          LODWORD(v21) = v28 >> 7;
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v21 + 2;
    }
  }

  else
  {
    v26 = v21;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 56);
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
        LOBYTE(v33) = v26[2];
        do
        {
          *(v30 - 1) = v33 | 0x80;
          v33 = v32 >> 7;
          *v30++ = v32 >> 7;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
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

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v36 = *(a1 + 60);
    *v30 = 64;
    v30[1] = v36;
    if (v36 > 0x7F)
    {
      v30[1] = v36 | 0x80;
      v37 = v36 >> 7;
      v30[2] = v36 >> 7;
      v35 = v30 + 3;
      if (v36 >= 0x4000)
      {
        LOBYTE(v30) = v30[2];
        do
        {
          *(v35 - 1) = v30 | 0x80;
          LODWORD(v30) = v37 >> 7;
          *v35++ = v37 >> 7;
          v38 = v37 >> 14;
          v37 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v35 = v30 + 2;
    }
  }

  else
  {
    v35 = v30;
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v40 = *(a1 + 64);
    *v35 = 72;
    v35[1] = v40;
    if (v40 > 0x7F)
    {
      v35[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v35[2] = v40 >> 7;
      v39 = v35 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v42) = v35[2];
        do
        {
          *(v39 - 1) = v42 | 0x80;
          v42 = v41 >> 7;
          *v39++ = v41 >> 7;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v39 = v35 + 2;
    }
  }

  else
  {
    v39 = v35;
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v45 = *(a1 + 68);
    *v39 = 80;
    v39[1] = v45;
    if (v45 > 0x7F)
    {
      v39[1] = v45 | 0x80;
      v46 = v45 >> 7;
      v39[2] = v45 >> 7;
      v44 = v39 + 3;
      if (v45 >= 0x4000)
      {
        LOBYTE(v39) = v39[2];
        do
        {
          *(v44 - 1) = v39 | 0x80;
          LODWORD(v39) = v46 >> 7;
          *v44++ = v46 >> 7;
          v47 = v46 >> 14;
          v46 >>= 7;
        }

        while (v47);
      }
    }

    else
    {
      v44 = v39 + 2;
    }
  }

  else
  {
    v44 = v39;
  }

  v48 = *(a1 + 8);
  if ((v48 & 1) == 0)
  {
    return v44;
  }

  v50 = v48 & 0xFFFFFFFFFFFFFFFCLL;
  v51 = *(v50 + 31);
  if (v51 < 0)
  {
    v52 = *(v50 + 8);
    v51 = *(v50 + 16);
  }

  else
  {
    v52 = (v50 + 8);
  }

  if (*a3 - v44 >= v51)
  {
    v53 = v51;
    memcpy(v44, v52, v51);
    v44 += v53;
    return v44;
  }

  return sub_1957130(a3, v52, v51, v44);
}

uint64_t sub_16A4C04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = sub_16A3F24(*(a1 + 24));
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
    v5 = sub_16A3F24(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v3 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
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
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v3 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x200) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_16A4E40(std::string *result, uint64_t a2)
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
        v8 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v8 = *v8;
        }

        data = sub_16AA9CC(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277D1C8;
      }

      result = sub_12BEE58(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_38;
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

      v10 = sub_16AA9CC(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277D1C8;
    }

    result = sub_12BEE58(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }

LABEL_38:
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_40;
    }

LABEL_39:
    HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_41;
    }

LABEL_40:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_42;
    }

LABEL_41:
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
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

LABEL_42:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x300) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    }

    if ((v4 & 0x200) != 0)
    {
      HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16A4FF4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_16BE768(a1 + 9);
  sub_16BE6E4(a1 + 6);
  sub_16BE660(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16A508C(void *a1)
{
  sub_16A4FF4(a1);

  operator delete();
}

uint64_t sub_16A50C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16A40BC(v4);
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
      result = sub_16A2968(v7);
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
      result = sub_16A331C(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  if ((*(v1 + 16) & 0x7F) != 0)
  {
    *(v1 + 96) = 0;
    *(v1 + 104) = 0;
    *(v1 + 117) = 0;
    *(v1 + 112) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

char *sub_16A51AC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v63 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v63, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v63 + 1;
    v8 = *v63;
    if (*v63 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v63, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v63 + 2;
      }
    }

    v63 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 6)
    {
      if (v8 >> 3 <= 9)
      {
        if (v11 != 7)
        {
          if (v11 == 9 && v8 == 74)
          {
            v20 = v7 - 1;
            while (1)
            {
              v21 = (v20 + 1);
              v63 = v20 + 1;
              v22 = *(a1 + 64);
              if (v22 && (v23 = *(a1 + 56), v23 < *v22))
              {
                *(a1 + 56) = v23 + 1;
                v24 = *&v22[2 * v23 + 2];
              }

              else
              {
                v25 = sub_16AA8CC(*(a1 + 48));
                v24 = sub_19593CC(a1 + 48, v25);
                v21 = v63;
              }

              v20 = sub_2232908(a3, v24, v21);
              v63 = v20;
              if (!v20)
              {
                goto LABEL_115;
              }

              if (*a3 <= v20 || *v20 != 74)
              {
                goto LABEL_97;
              }
            }
          }

          goto LABEL_90;
        }

        if (v8 != 56)
        {
          goto LABEL_90;
        }

        v5 |= 0x10u;
        v29 = v7 + 1;
        v30 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        v31 = *v29;
        v30 = v30 + (v31 << 7) - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v29 = v7 + 2;
LABEL_59:
          v63 = v29;
          *(a1 + 116) = v30;
          goto LABEL_97;
        }

        v55 = sub_1958770(v7, v30);
        v63 = v55;
        *(a1 + 116) = v56;
        if (!v55)
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (v11 == 10)
        {
          if (v8 == 82)
          {
            v35 = v7 - 1;
            while (1)
            {
              v36 = (v35 + 1);
              v63 = v35 + 1;
              v37 = *(a1 + 88);
              if (v37 && (v38 = *(a1 + 80), v38 < *v37))
              {
                *(a1 + 80) = v38 + 1;
                v39 = *&v37[2 * v38 + 2];
              }

              else
              {
                v40 = sub_16AA94C(*(a1 + 72));
                v39 = sub_19593CC(a1 + 72, v40);
                v36 = v63;
              }

              v35 = sub_2232998(a3, v39, v36);
              v63 = v35;
              if (!v35)
              {
                goto LABEL_115;
              }

              if (*a3 <= v35 || *v35 != 82)
              {
                goto LABEL_97;
              }
            }
          }

          goto LABEL_90;
        }

        if (v11 == 11)
        {
          if (v8 != 88)
          {
            goto LABEL_90;
          }

          v5 |= 0x20u;
          v47 = v7 + 1;
          v48 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_89;
          }

          v49 = *v47;
          v48 = v48 + (v49 << 7) - 128;
          if ((v49 & 0x80000000) == 0)
          {
            v47 = v7 + 2;
LABEL_89:
            v63 = v47;
            *(a1 + 120) = v48;
            goto LABEL_97;
          }

          v61 = sub_1958770(v7, v48);
          v63 = v61;
          *(a1 + 120) = v62;
          if (!v61)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (v11 != 512 || v8 != 0)
          {
            goto LABEL_90;
          }

          v5 |= 0x40u;
          v14 = v7 + 1;
          v13 = *v7;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if ((v15 & 0x80000000) == 0)
          {
            v14 = v7 + 2;
LABEL_25:
            v63 = v14;
            *(a1 + 124) = v13 != 0;
            goto LABEL_97;
          }

          v59 = sub_19587DC(v7, v13);
          v63 = v59;
          *(a1 + 124) = v60 != 0;
          if (!v59)
          {
            goto LABEL_115;
          }
        }
      }

      goto LABEL_97;
    }

    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_90;
      }

      v27 = v7 + 1;
      v26 = *v7;
      if (v26 < 0)
      {
        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = v7 + 2;
          goto LABEL_52;
        }

        v63 = sub_19587DC(v7, v26);
        if (!v63)
        {
          goto LABEL_115;
        }
      }

      else
      {
LABEL_52:
        v63 = v27;
      }

      if (v26 > 0xA)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 96) = v26;
      }

      goto LABEL_97;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_90;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    v18 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v19 = *v17;
    v18 = v18 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_35:
      v63 = v17;
      *(a1 + 100) = v18;
      goto LABEL_97;
    }

    v53 = sub_1958770(v7, v18);
    v63 = v53;
    *(a1 + 100) = v54;
    if (!v53)
    {
      goto LABEL_115;
    }

LABEL_97:
    if (sub_195ADC0(a3, &v63, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_90;
    }

    v5 |= 8u;
    v32 = v7 + 1;
    v33 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    v34 = *v32;
    v33 = v33 + (v34 << 7) - 128;
    if ((v34 & 0x80000000) == 0)
    {
      v32 = v7 + 2;
LABEL_64:
      v63 = v32;
      *(a1 + 112) = v33;
      goto LABEL_97;
    }

    v57 = sub_1958770(v7, v33);
    v63 = v57;
    *(a1 + 112) = v58;
    if (!v57)
    {
      goto LABEL_115;
    }

    goto LABEL_97;
  }

  if (v11 == 4)
  {
    if (v8 == 34)
    {
      v41 = v7 - 1;
      while (1)
      {
        v42 = (v41 + 1);
        v63 = v41 + 1;
        v43 = *(a1 + 40);
        if (v43 && (v44 = *(a1 + 32), v44 < *v43))
        {
          *(a1 + 32) = v44 + 1;
          v45 = *&v43[2 * v44 + 2];
        }

        else
        {
          sub_16AAA48(*(a1 + 24));
          v45 = sub_19593CC(a1 + 24, v46);
          v42 = v63;
        }

        v41 = sub_2232878(a3, v45, v42);
        v63 = v41;
        if (!v41)
        {
          goto LABEL_115;
        }

        if (*a3 <= v41 || *v41 != 34)
        {
          goto LABEL_97;
        }
      }
    }
  }

  else if (v11 == 5 && v8 == 41)
  {
    v5 |= 4u;
    *(a1 + 104) = *v7;
    v63 = v7 + 8;
    goto LABEL_97;
  }

LABEL_90:
  if (v8)
  {
    v50 = (v8 & 7) == 4;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    v51 = *(a1 + 8);
    if (v51)
    {
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v52 = sub_11F1920((a1 + 8));
      v7 = v63;
    }

    v63 = sub_1952690(v8, v52, v7, a3);
    if (!v63)
    {
      goto LABEL_115;
    }

    goto LABEL_97;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_115:
  v63 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v63;
}

char *sub_16A5740(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 96);
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

    v12 = *(a1 + 100);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 112);
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

  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *v15 = 34;
      v22 = *(v21 + 20);
      v15[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v15 + 1);
      }

      else
      {
        v23 = v15 + 2;
      }

      v15 = sub_16A4658(v21, v23, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v24 = *(a1 + 104);
    *v15 = 41;
    *(v15 + 1) = v24;
    v15 += 9;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v26 = *(a1 + 116);
    *v15 = 56;
    v15[1] = v26;
    if (v26 > 0x7F)
    {
      v15[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v15[2] = v26 >> 7;
      v25 = v15 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v25 - 1) = v15 | 0x80;
          LODWORD(v15) = v27 >> 7;
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = v15 + 2;
    }
  }

  else
  {
    v25 = v15;
  }

  v29 = *(a1 + 56);
  if (v29)
  {
    for (j = 0; j != v29; ++j)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v31 = *(*(a1 + 64) + 8 * j + 8);
      *v25 = 74;
      v32 = *(v31 + 20);
      v25[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v25 + 1);
      }

      else
      {
        v33 = v25 + 2;
      }

      v25 = sub_16A2D1C(v31, v33, a3);
    }
  }

  v34 = *(a1 + 80);
  if (v34)
  {
    for (k = 0; k != v34; ++k)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v36 = *(*(a1 + 88) + 8 * k + 8);
      *v25 = 82;
      v37 = *(v36 + 20);
      v25[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v25 + 1);
      }

      else
      {
        v38 = v25 + 2;
      }

      v25 = sub_16A366C(v36, v38, a3);
    }
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v40 = *(a1 + 120);
    *v25 = 88;
    v25[1] = v40;
    if (v40 > 0x7F)
    {
      v25[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v25[2] = v40 >> 7;
      v39 = v25 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v25) = v25[2];
        do
        {
          *(v39 - 1) = v25 | 0x80;
          LODWORD(v25) = v41 >> 7;
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v25 + 2;
    }
  }

  else
  {
    v39 = v25;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v43 = *(a1 + 124);
    *v39 = 8320;
    v39[2] = v43;
    v39 += 3;
  }

  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v39;
  }

  v46 = v44 & 0xFFFFFFFFFFFFFFFCLL;
  v47 = *(v46 + 31);
  if (v47 < 0)
  {
    v48 = *(v46 + 8);
    v47 = *(v46 + 16);
  }

  else
  {
    v48 = (v46 + 8);
  }

  if (*a3 - v39 >= v47)
  {
    v49 = v47;
    memcpy(v39, v48, v47);
    v39 += v49;
    return v39;
  }

  return sub_1957130(a3, v48, v47, v39);
}

uint64_t sub_16A5C9C(uint64_t a1)
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
      v7 = sub_16A4C04(v6);
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
      v14 = sub_16A3098(v13);
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
      v21 = sub_16A3960(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x7F) != 0)
  {
    if (v22)
    {
      v23 = *(a1 + 96);
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v23 >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 11;
      }

      v16 += v25;
    }

    if ((v22 & 2) != 0)
    {
      v16 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v26 = v16 + 9;
    if ((v22 & 4) == 0)
    {
      v26 = v16;
    }

    if ((v22 & 8) != 0)
    {
      v26 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 0x10) == 0)
      {
LABEL_33:
        if ((v22 & 0x20) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    else if ((v22 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    v26 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x20) == 0)
    {
LABEL_35:
      if ((v22 & 0x40) != 0)
      {
        v16 = v26 + 3;
      }

      else
      {
        v16 = v26;
      }

      goto LABEL_38;
    }

LABEL_34:
    v26 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_35;
  }

LABEL_38:
  v27 = *(a1 + 8);
  if (v27)
  {
    v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    v30 = *((v27 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v30 < 0)
    {
      v30 = *(v29 + 16);
    }

    v16 += v30;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_16A5EE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_16BEDA8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_16BEE34((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_16BEEC0((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x7F) != 0)
  {
    if (v19)
    {
      *(a1 + 96) = *(a2 + 96);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 100) = *(a2 + 100);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(a1 + 104) = *(a2 + 104);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 112) = *(a2 + 112);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 116) = *(a2 + 116);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
LABEL_19:
        *(a1 + 16) |= v19;
        goto LABEL_20;
      }

LABEL_18:
      *(a1 + 124) = *(a2 + 124);
      goto LABEL_19;
    }

LABEL_29:
    *(a1 + 120) = *(a2 + 120);
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16A60FC(uint64_t a1)
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

  if (a1 != &off_277D230)
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

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_16AB258(v7);
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

void sub_16A61EC(uint64_t a1)
{
  sub_16A60FC(a1);

  operator delete();
}

uint64_t sub_16A6224(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_168D110(*(result + 24));
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

    result = sub_168D110(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_1693C2C(*(v1 + 40));
    }
  }

LABEL_6:
  if ((v2 & 0x38) != 0)
  {
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

char *sub_16A62B8(uint64_t a1, char *a2, int32x2_t *a3)
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
          goto LABEL_50;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 24);
        if (!v13)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v13 = sub_169B4FC(v27);
          *(a1 + 24) = v13;
          goto LABEL_43;
        }
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_50;
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

          v13 = sub_169B4FC(v15);
          *(a1 + 32) = v13;
LABEL_43:
          v7 = v40;
        }
      }

      v25 = sub_2231A68(a3, v13, v7);
      goto LABEL_57;
    }

    if (v8 != 8)
    {
      goto LABEL_50;
    }

    v5 |= 8u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_31:
      v40 = v20;
      *(a1 + 48) = v19;
      goto LABEL_58;
    }

    v34 = sub_19587DC(v7, v19);
    v40 = v34;
    *(a1 + 48) = v35;
    if (!v34)
    {
      goto LABEL_69;
    }

LABEL_58:
    if (sub_195ADC0(a3, &v40, a3[11].i32[1]))
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
        goto LABEL_50;
      }

      v5 |= 0x10u;
      v28 = v7 + 1;
      v29 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      v30 = *v28;
      v29 = v29 + (v30 << 7) - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_49:
        v40 = v28;
        *(a1 + 56) = v29;
        goto LABEL_58;
      }

      v38 = sub_1958770(v7, v29);
      v40 = v38;
      *(a1 + 56) = v39;
      if (!v38)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v11 != 2047 || v8 != 248)
      {
        goto LABEL_50;
      }

      v5 |= 0x20u;
      v16 = v7 + 1;
      v17 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v16;
      v17 = v17 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_26:
        v40 = v16;
        *(a1 + 60) = v17;
        goto LABEL_58;
      }

      v36 = sub_1958770(v7, v17);
      v40 = v36;
      *(a1 + 60) = v37;
      if (!v36)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_58;
  }

  if (v8 == 34)
  {
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

      v22 = sub_16BAD9C(v24);
      *(a1 + 40) = v22;
      v7 = v40;
    }

    v25 = sub_2231CA8(a3, v22, v7);
LABEL_57:
    v40 = v25;
    if (!v25)
    {
      goto LABEL_69;
    }

    goto LABEL_58;
  }

LABEL_50:
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

    v25 = sub_1952690(v8, v33, v7, a3);
    goto LABEL_57;
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

char *sub_16A6604(uint64_t a1, char *__dst, void *a3)
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

    v12 = *(a1 + 24);
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
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_27:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v18 = *(a1 + 40);
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

      v6 = sub_16AB468(v18, v20, a3);
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
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
  if ((v5 & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_40;
  }

LABEL_33:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v21 = *(a1 + 56);
  *v6 = 40;
  v6[1] = v21;
  if (v21 > 0x7F)
  {
    v6[1] = v21 | 0x80;
    v22 = v21 >> 7;
    v6[2] = v21 >> 7;
    v11 = v6 + 3;
    if (v21 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        LODWORD(v6) = v22 >> 7;
        *v11++ = v22 >> 7;
        v23 = v22 >> 14;
        v22 >>= 7;
      }

      while (v23);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_40:
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v25 = *(a1 + 60);
    *v11 = 32760;
    v11[2] = v25;
    if (v25 > 0x7F)
    {
      v11[2] = v25 | 0x80;
      v26 = v25 >> 7;
      v11[3] = v25 >> 7;
      v24 = v11 + 4;
      if (v25 >= 0x4000)
      {
        LOBYTE(v11) = v11[3];
        do
        {
          *(v24 - 1) = v11 | 0x80;
          LODWORD(v11) = v26 >> 7;
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v11 + 3;
    }
  }

  else
  {
    v24 = v11;
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v24;
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

  if (*a3 - v24 >= v31)
  {
    v33 = v31;
    memcpy(v24, v32, v31);
    v24 += v33;
    return v24;
  }

  return sub_1957130(a3, v32, v31, v24);
}

uint64_t sub_16A6974(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_168FB0C(*(a1 + 24));
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
    v5 = sub_168FB0C(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v8 = sub_16AB580(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v3 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_13:
  v6 = *(a1 + 8);
  if (v6)
  {
    v9 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_16A6AF8(std::string *result, uint64_t a2)
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

      v14 = sub_16BAD9C(v16);
      v3[1].__r_.__value_.__r.__words[2] = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_277D440;
    }

    result = sub_1336380(v14, v17);
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
    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
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
      HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
      goto LABEL_9;
    }

LABEL_39:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
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

uint64_t sub_16A6CC4(uint64_t a1)
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

  if (a1 != &off_277D270)
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
      sub_16AB258(v6);
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

void sub_16A6D94(uint64_t a1)
{
  sub_16A6CC4(a1);

  operator delete();
}

uint64_t sub_16A6DCC(uint64_t result)
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
      result = sub_1693C2C(*(v1 + 32));
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

char *sub_16A6E4C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v33 + 1;
    v8 = *v33;
    if (*v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v33 + 2;
      }
    }

    v33 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 24);
        if (!v13)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_169B4FC(v15);
          *(a1 + 24) = v13;
          v7 = v33;
        }

        v16 = sub_2231A68(a3, v13, v7);
        goto LABEL_44;
      }

      goto LABEL_37;
    }

    if (v8 != 8)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_30:
      v33 = v21;
      *(a1 + 40) = v20;
      goto LABEL_45;
    }

    v31 = sub_19587DC(v7, v20);
    v33 = v31;
    *(a1 + 40) = v32;
    if (!v31)
    {
      goto LABEL_54;
    }

LABEL_45:
    if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_37;
    }

    v5 |= 8u;
    v17 = v7 + 1;
    v18 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v19 = *v17;
    v18 = v18 + (v19 << 7) - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v33 = v17;
      *(a1 + 48) = v18;
      goto LABEL_45;
    }

    v29 = sub_1958770(v7, v18);
    v33 = v29;
    *(a1 + 48) = v30;
    if (!v29)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  if (v8 == 26)
  {
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

      v23 = sub_16BAD9C(v25);
      *(a1 + 32) = v23;
      v7 = v33;
    }

    v16 = sub_2231CA8(a3, v23, v7);
LABEL_44:
    v33 = v16;
    if (!v16)
    {
      goto LABEL_54;
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
      v7 = v33;
    }

    v16 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

char *sub_16A70E8(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 32);
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

    v6 = sub_16AB468(v15, v17, a3);
    if ((v5 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v12 = *(a1 + 24);
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
  if ((v5 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v5 & 8) == 0)
  {
LABEL_13:
    v11 = v6;
    goto LABEL_33;
  }

LABEL_26:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 48);
  *v6 = 32760;
  v6[2] = v18;
  if (v18 > 0x7F)
  {
    v6[2] = v18 | 0x80;
    v19 = v18 >> 7;
    v6[3] = v18 >> 7;
    v11 = v6 + 4;
    if (v18 >= 0x4000)
    {
      LOBYTE(v6) = v6[3];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        LODWORD(v6) = v19 >> 7;
        *v11++ = v19 >> 7;
        v20 = v19 >> 14;
        v19 >>= 7;
      }

      while (v20);
    }
  }

  else
  {
    v11 = v6 + 3;
  }

LABEL_33:
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v24)
  {
    v26 = v24;
    memcpy(v11, v25, v24);
    v11 += v26;
    return v11;
  }

  return sub_1957130(a3, v25, v24, v11);
}

uint64_t sub_16A7368(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_168FB0C(*(a1 + 24));
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
    v5 = sub_16AB580(*(a1 + 32));
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

  v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_11:
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

std::string *sub_16A748C(std::string *result, uint64_t a2)
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

      v10 = sub_16BAD9C(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277D440;
    }

    result = sub_1336380(v10, v13);
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

void *sub_16A7600(void *a1)
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

  sub_16A7684(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_16A7684(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 32);
  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_277D2A8)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_168F41C(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_168F41C(v6);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_16AB258(result);

      operator delete();
    }
  }

  return result;
}

void sub_16A7754(void *a1)
{
  sub_16A7600(a1);

  operator delete();
}

uint64_t sub_16A778C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
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
        goto LABEL_18;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_22:
    result = sub_168D110(*(result + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_23;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_23:
  result = sub_168D110(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1693C2C(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 72) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_16A788C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v50 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v50, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v50 + 1);
    v8 = **v50;
    if (**v50 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v50, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v50 + 2);
      }
    }

    *v50 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 != 40)
        {
          goto LABEL_69;
        }

        v5 |= 0x40u;
        v35 = (v7 + 1);
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_63;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if ((v36 & 0x80000000) == 0)
        {
          v35 = (v7 + 2);
LABEL_63:
          *v50 = v35;
          *(a1 + 72) = v34 != 0;
          goto LABEL_77;
        }

        v46 = sub_19587DC(v7, v34);
        *v50 = v46;
        *(a1 + 72) = v47 != 0;
        if (!v46)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v11 != 6 || v8 != 48)
        {
          goto LABEL_69;
        }

        v5 |= 0x80u;
        v23 = (v7 + 1);
        v24 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_42:
          *v50 = v23;
          *(a1 + 76) = v24;
          goto LABEL_77;
        }

        v42 = sub_1958770(v7, v24);
        *v50 = v42;
        *(a1 + 76) = v43;
        if (!v42)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      if (v11 == 7)
      {
        if (v8 != 58)
        {
          goto LABEL_69;
        }

        *(a1 + 16) |= 1u;
        v31 = *(a1 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        v33 = (a1 + 24);
LABEL_68:
        v38 = sub_194DB04(v33, v32);
        v22 = sub_1958890(v38, *v50, a3);
        goto LABEL_76;
      }

      if (v11 == 8)
      {
        if (v8 != 66)
        {
          goto LABEL_69;
        }

        *(a1 + 16) |= 2u;
        v37 = *(a1 + 8);
        v32 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v32 = *v32;
        }

        v33 = (a1 + 32);
        goto LABEL_68;
      }

      if (v11 != 2047 || v8 != 248)
      {
        goto LABEL_69;
      }

      v5 |= 0x100u;
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
        *v50 = v12;
        *(a1 + 80) = v13;
        goto LABEL_77;
      }

      v48 = sub_1958770(v7, v13);
      *v50 = v48;
      *(a1 + 80) = v49;
      if (!v48)
      {
        goto LABEL_90;
      }
    }

LABEL_77:
    if (sub_195ADC0(a3, v50, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 != 3)
    {
      if (v11 != 4 || v8 != 34)
      {
        goto LABEL_69;
      }

      *(a1 + 16) |= 0x10u;
      v19 = *(a1 + 56);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_16BAD9C(v21);
        *(a1 + 56) = v19;
        v7 = *v50;
      }

      v22 = sub_2231CA8(a3, v19, v7);
LABEL_76:
      *v50 = v22;
      if (!v22)
      {
        goto LABEL_90;
      }

      goto LABEL_77;
    }

    if (v8 != 26)
    {
      goto LABEL_69;
    }

    *(a1 + 16) |= 8u;
    v16 = *(a1 + 48);
    if (!v16)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v16 = sub_169B4FC(v30);
      *(a1 + 48) = v16;
      goto LABEL_53;
    }

LABEL_54:
    v22 = sub_2231A68(a3, v16, v7);
    goto LABEL_76;
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_69;
    }

    v5 |= 0x20u;
    v27 = (v7 + 1);
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_47;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = (v7 + 2);
LABEL_47:
      *v50 = v27;
      *(a1 + 64) = v26;
      goto LABEL_77;
    }

    v44 = sub_19587DC(v7, v26);
    *v50 = v44;
    *(a1 + 64) = v45;
    if (!v44)
    {
      goto LABEL_90;
    }

    goto LABEL_77;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 4u;
    v16 = *(a1 + 40);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_169B4FC(v18);
      *(a1 + 40) = v16;
LABEL_53:
      v7 = *v50;
      goto LABEL_54;
    }

    goto LABEL_54;
  }

LABEL_69:
  if (v8)
  {
    v39 = (v8 & 7) == 4;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v40 = *(a1 + 8);
    if (v40)
    {
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v41 = sub_11F1920((a1 + 8));
      v7 = *v50;
    }

    v22 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_76;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_90:
  *v50 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v50;
}

char *sub_16A7CE4(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 64);
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

    v12 = *(a1 + 40);
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
    if ((v5 & 8) == 0)
    {
LABEL_12:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 48);
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
  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

LABEL_34:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v21 = *(a1 + 72);
    *v6 = 40;
    v6[1] = v21;
    v6 += 2;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_28:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 56);
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

  v6 = sub_16AB468(v18, v20, a3);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_34;
  }

LABEL_14:
  if ((v5 & 0x80) == 0)
  {
LABEL_15:
    v11 = v6;
    goto LABEL_44;
  }

LABEL_37:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v22 = *(a1 + 76);
  *v6 = 48;
  v6[1] = v22;
  if (v22 > 0x7F)
  {
    v6[1] = v22 | 0x80;
    v23 = v22 >> 7;
    v6[2] = v22 >> 7;
    v11 = v6 + 3;
    if (v22 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        LODWORD(v6) = v23 >> 7;
        *v11++ = v23 >> 7;
        v24 = v23 >> 14;
        v23 >>= 7;
      }

      while (v24);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_44:
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_46;
    }

LABEL_49:
    v11 = sub_128AEEC(a3, 8, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v11);
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  v11 = sub_128AEEC(a3, 7, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 2) != 0)
  {
    goto LABEL_49;
  }

LABEL_46:
  if ((v5 & 0x100) == 0)
  {
LABEL_47:
    v25 = v11;
    goto LABEL_57;
  }

LABEL_50:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v26 = *(a1 + 80);
  *v11 = 32760;
  v11[2] = v26;
  if (v26 > 0x7F)
  {
    v11[2] = v26 | 0x80;
    v27 = v26 >> 7;
    v11[3] = v26 >> 7;
    v25 = v11 + 4;
    if (v26 >= 0x4000)
    {
      LOBYTE(v28) = v11[3];
      do
      {
        *(v25 - 1) = v28 | 0x80;
        v28 = v27 >> 7;
        *v25++ = v27 >> 7;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
    }
  }

  else
  {
    v25 = v11 + 3;
  }

LABEL_57:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v25;
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

  if (*a3 - v25 >= v33)
  {
    v35 = v33;
    memcpy(v25, v34, v33);
    v25 += v35;
    return v25;
  }

  return sub_1957130(a3, v34, v33, v25);
}

uint64_t sub_16A80D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    result = 0;
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
    v12 = sub_168FB0C(*(a1 + 40));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
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
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_25:
  v14 = sub_16AB580(*(a1 + 56));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_16:
    v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_17:
  result = v3 + ((v2 >> 5) & 2);
  if ((v2 & 0x80) != 0)
  {
    result += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0x100) != 0)
  {
    result += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_16A82E4(std::string *result, uint64_t a2)
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
LABEL_12:
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_40;
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
LABEL_13:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_48;
    }

LABEL_40:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v21 = v3[2].__r_.__value_.__l.__size_;
    if (!v21)
    {
      v22 = v3->__r_.__value_.__l.__size_;
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_16BAD9C(v23);
      v3[2].__r_.__value_.__l.__size_ = v21;
    }

    if (*(a2 + 56))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = &off_277D440;
    }

    result = sub_1336380(v21, v24);
    if ((v4 & 0x20) == 0)
    {
LABEL_14:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_49;
    }

LABEL_48:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_15:
      if ((v4 & 0x80) == 0)
      {
LABEL_17:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_18;
      }

LABEL_16:
      HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
      goto LABEL_17;
    }

LABEL_49:
    v3[3].__r_.__value_.__s.__data_[0] = *(a2 + 72);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v4 & 0x100) != 0)
  {
    v11 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v11;
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_16A8530(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26FE630;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = a2;
  result[7] = 0;
  result[8] = 0;
  result[9] = a2;
  result[10] = 0;
  result[11] = 0;
  result[12] = a2;
  result[13] = 0;
  result[14] = 0;
  result[15] = a2;
  result[16] = 0;
  result[17] = 0;
  result[18] = a2;
  result[19] = 0;
  result[20] = 0;
  result[21] = a2;
  result[22] = 0;
  result[23] = 0;
  result[24] = a2;
  result[25] = 0;
  result[26] = 0;
  result[27] = a2;
  result[28] = 0;
  result[29] = 0;
  result[30] = a2;
  result[31] = 0;
  result[32] = 0;
  result[33] = a2;
  result[34] = 0;
  result[35] = 0;
  result[36] = a2;
  result[37] = 0;
  result[38] = 0;
  result[39] = &qword_278E990;
  return result;
}

uint64_t sub_16A85B4(uint64_t a1)
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

  if (*(a1 + 312) != &qword_278E990)
  {
    sub_194E89C((a1 + 312));
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_16BEC0C((a1 + 288));
  sub_1956AFC((a1 + 264));
  sub_16BEB88((a1 + 240));
  sub_16BDAAC((a1 + 216));
  sub_16BD710((a1 + 192));
  sub_16BEB04((a1 + 168));
  sub_16BEA80((a1 + 144));
  sub_16BE9FC((a1 + 120));
  sub_16BE978((a1 + 96));
  sub_16BE8F4((a1 + 72));
  sub_16BE870((a1 + 48));
  sub_16BE7EC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16A86E0(uint64_t a1)
{
  sub_16A85B4(a1);

  operator delete();
}

uint64_t sub_16A8718(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_169FA54(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_16A13FC(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 88) + 8);
    do
    {
      v10 = *v9++;
      sub_169BF90(v10);
      --v8;
    }

    while (v8);
    *(a1 + 80) = 0;
  }

  v11 = *(a1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 112) + 8);
    do
    {
      v13 = *v12++;
      sub_169C6E0(v13);
      --v11;
    }

    while (v11);
    *(a1 + 104) = 0;
  }

  v14 = *(a1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 136) + 8);
    do
    {
      v16 = *v15++;
      sub_169D270(v16);
      --v14;
    }

    while (v14);
    *(a1 + 128) = 0;
  }

  v17 = *(a1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 160) + 8);
    do
    {
      v19 = *v18++;
      sub_16A6DCC(v19);
      --v17;
    }

    while (v17);
    *(a1 + 152) = 0;
  }

  v20 = *(a1 + 176);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 184) + 8);
    do
    {
      v22 = *v21++;
      sub_16A6224(v22);
      --v20;
    }

    while (v20);
    *(a1 + 176) = 0;
  }

  v23 = *(a1 + 200);
  if (v23 >= 1)
  {
    v24 = (*(a1 + 208) + 8);
    do
    {
      v25 = *v24++;
      sub_168D110(v25);
      --v23;
    }

    while (v23);
    *(a1 + 200) = 0;
  }

  v26 = *(a1 + 224);
  if (v26 >= 1)
  {
    v27 = (*(a1 + 232) + 8);
    do
    {
      v28 = *v27++;
      sub_16905BC(v28);
      --v26;
    }

    while (v26);
    *(a1 + 224) = 0;
  }

  v29 = *(a1 + 248);
  if (v29 >= 1)
  {
    v30 = (*(a1 + 256) + 8);
    do
    {
      v31 = *v30++;
      sub_16A778C(v31);
      --v29;
    }

    while (v29);
    *(a1 + 248) = 0;
  }

  result = sub_12A41D0(a1 + 264);
  v33 = *(a1 + 296);
  if (v33 >= 1)
  {
    v34 = (*(a1 + 304) + 8);
    do
    {
      v35 = *v34++;
      result = sub_16A1E5C(v35);
      --v33;
    }

    while (v33);
    *(a1 + 296) = 0;
  }

  if (*(a1 + 16))
  {
    v36 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v36 + 23) < 0)
    {
      **v36 = 0;
      *(v36 + 8) = 0;
    }

    else
    {
      *v36 = 0;
      *(v36 + 23) = 0;
    }
  }

  v38 = *(a1 + 8);
  v37 = a1 + 8;
  *(v37 + 8) = 0;
  if (v38)
  {

    return sub_1957EA8(v37);
  }

  return result;
}

uint64_t sub_16A8960(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v91 = a2;
  if (sub_195ADC0(a3, v91, a3[11].i32[1]))
  {
    return *v91;
  }

  while (2)
  {
    v6 = (*v91 + 1);
    v7 = **v91;
    if (**v91 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v91, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v91 + 2);
      }
    }

    *v91 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 10)
        {
          goto LABEL_134;
        }

        v10 = v6 - 1;
        while (1)
        {
          v11 = (v10 + 1);
          *v91 = v10 + 1;
          v12 = *(a1 + 40);
          if (v12 && (v13 = *(a1 + 32), v13 < *v12))
          {
            *(a1 + 32) = v13 + 1;
            v14 = *&v12[2 * v13 + 2];
          }

          else
          {
            sub_16AA728(*(a1 + 24));
            v14 = sub_19593CC(a1 + 24, v15);
            v11 = *v91;
          }

          v10 = sub_22326C8(a3, v14, v11);
          *v91 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 10)
          {
            goto LABEL_142;
          }
        }

      case 2u:
        if (v7 != 18)
        {
          goto LABEL_134;
        }

        v60 = v6 - 1;
        while (1)
        {
          v61 = v60 + 1;
          *v91 = v60 + 1;
          v62 = *(a1 + 64);
          if (v62 && (v63 = *(a1 + 56), v63 < *v62))
          {
            *(a1 + 56) = v63 + 1;
            v64 = *&v62[2 * v63 + 2];
          }

          else
          {
            v65 = sub_16AA7B0(*(a1 + 48));
            v64 = sub_19593CC(a1 + 48, v65);
            v61 = *v91;
          }

          v60 = sub_2232A28(a3, v64, v61);
          *v91 = v60;
          if (!v60)
          {
            return 0;
          }

          if (*a3 <= v60 || *v60 != 18)
          {
            goto LABEL_142;
          }
        }

      case 3u:
        if (v7 != 26)
        {
          goto LABEL_134;
        }

        v42 = v6 - 1;
        while (1)
        {
          v43 = (v42 + 1);
          *v91 = v42 + 1;
          v44 = *(a1 + 88);
          if (v44 && (v45 = *(a1 + 80), v45 < *v44))
          {
            *(a1 + 80) = v45 + 1;
            v46 = *&v44[2 * v45 + 2];
          }

          else
          {
            v47 = sub_16AA35C(*(a1 + 72));
            v46 = sub_19593CC(a1 + 72, v47);
            v43 = *v91;
          }

          v42 = sub_2232AB8(a3, v46, v43);
          *v91 = v42;
          if (!v42)
          {
            return 0;
          }

          if (*a3 <= v42 || *v42 != 26)
          {
            goto LABEL_142;
          }
        }

      case 4u:
        if (v7 != 34)
        {
          goto LABEL_134;
        }

        v48 = v6 - 1;
        while (1)
        {
          v49 = (v48 + 1);
          *v91 = v48 + 1;
          v50 = *(a1 + 112);
          if (v50 && (v51 = *(a1 + 104), v51 < *v50))
          {
            *(a1 + 104) = v51 + 1;
            v52 = *&v50[2 * v51 + 2];
          }

          else
          {
            sub_16AA3DC(*(a1 + 96));
            v52 = sub_19593CC(a1 + 96, v53);
            v49 = *v91;
          }

          v48 = sub_2232B48(a3, v52, v49);
          *v91 = v48;
          if (!v48)
          {
            return 0;
          }

          if (*a3 <= v48 || *v48 != 34)
          {
            goto LABEL_142;
          }
        }

      case 5u:
        if (v7 != 42)
        {
          goto LABEL_134;
        }

        v24 = v6 - 1;
        while (1)
        {
          v25 = v24 + 1;
          *v91 = v24 + 1;
          v26 = *(a1 + 136);
          if (v26 && (v27 = *(a1 + 128), v27 < *v26))
          {
            *(a1 + 128) = v27 + 1;
            v28 = *&v26[2 * v27 + 2];
          }

          else
          {
            sub_16AA45C(*(a1 + 120));
            v28 = sub_19593CC(a1 + 120, v29);
            v25 = *v91;
          }

          v24 = sub_2232488(a3, v28, v25);
          *v91 = v24;
          if (!v24)
          {
            return 0;
          }

          if (*a3 <= v24 || *v24 != 42)
          {
            goto LABEL_142;
          }
        }

      case 6u:
        if (v7 != 50)
        {
          goto LABEL_134;
        }

        *(a1 + 16) |= 1u;
        v66 = *(a1 + 8);
        v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
        if (v66)
        {
          v67 = *v67;
        }

        v68 = sub_194DB04((a1 + 312), v67);
        v69 = sub_1958890(v68, *v91, a3);
        goto LABEL_141;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_134;
        }

        v70 = v6 - 1;
        while (1)
        {
          v71 = (v70 + 1);
          *v91 = v70 + 1;
          v72 = *(a1 + 160);
          if (v72 && (v73 = *(a1 + 152), v73 < *v72))
          {
            *(a1 + 152) = v73 + 1;
            v74 = *&v72[2 * v73 + 2];
          }

          else
          {
            sub_16AABFC(*(a1 + 144));
            v74 = sub_19593CC(a1 + 144, v75);
            v71 = *v91;
          }

          v70 = sub_2232BD8(a3, v74, v71);
          *v91 = v70;
          if (!v70)
          {
            return 0;
          }

          if (*a3 <= v70 || *v70 != 58)
          {
            goto LABEL_142;
          }
        }

      case 8u:
        if (v7 != 66)
        {
          goto LABEL_134;
        }

        v54 = v6 - 1;
        while (1)
        {
          v55 = (v54 + 1);
          *v91 = v54 + 1;
          v56 = *(a1 + 184);
          if (v56 && (v57 = *(a1 + 176), v57 < *v56))
          {
            *(a1 + 176) = v57 + 1;
            v58 = *&v56[2 * v57 + 2];
          }

          else
          {
            sub_16AAB7C(*(a1 + 168));
            v58 = sub_19593CC(a1 + 168, v59);
            v55 = *v91;
          }

          v54 = sub_2232C68(a3, v58, v55);
          *v91 = v54;
          if (!v54)
          {
            return 0;
          }

          if (*a3 <= v54 || *v54 != 66)
          {
            goto LABEL_142;
          }
        }

      case 9u:
        if (v7 != 74)
        {
          goto LABEL_134;
        }

        v82 = v6 - 1;
        while (1)
        {
          v83 = v82 + 1;
          *v91 = v82 + 1;
          v84 = *(a1 + 208);
          if (v84 && (v85 = *(a1 + 200), v85 < *v84))
          {
            *(a1 + 200) = v85 + 1;
            v86 = *&v84[2 * v85 + 2];
          }

          else
          {
            v87 = sub_169B4FC(*(a1 + 192));
            v86 = sub_19593CC(a1 + 192, v87);
            v83 = *v91;
          }

          v82 = sub_2231A68(a3, v86, v83);
          *v91 = v82;
          if (!v82)
          {
            return 0;
          }

          if (*a3 <= v82 || *v82 != 74)
          {
            goto LABEL_142;
          }
        }

      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_134;
        }

        v36 = v6 - 1;
        while (1)
        {
          v37 = v36 + 1;
          *v91 = v36 + 1;
          v38 = *(a1 + 232);
          if (v38 && (v39 = *(a1 + 224), v39 < *v38))
          {
            *(a1 + 224) = v39 + 1;
            v40 = *&v38[2 * v39 + 2];
          }

          else
          {
            v41 = sub_169B608(*(a1 + 216));
            v40 = sub_19593CC(a1 + 216, v41);
            v37 = *v91;
          }

          v36 = sub_2232248(a3, v40, v37);
          *v91 = v36;
          if (!v36)
          {
            return 0;
          }

          if (*a3 <= v36 || *v36 != 82)
          {
            goto LABEL_142;
          }
        }

      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_134;
        }

        v76 = v6 - 1;
        while (1)
        {
          v77 = v76 + 1;
          *v91 = v76 + 1;
          v78 = *(a1 + 256);
          if (v78 && (v79 = *(a1 + 248), v79 < *v78))
          {
            *(a1 + 248) = v79 + 1;
            v80 = *&v78[2 * v79 + 2];
          }

          else
          {
            sub_16AAC7C(*(a1 + 240));
            v80 = sub_19593CC(a1 + 240, v81);
            v77 = *v91;
          }

          v76 = sub_2232CF8(a3, v80, v77);
          *v91 = v76;
          if (!v76)
          {
            return 0;
          }

          if (*a3 <= v76 || *v76 != 90)
          {
            goto LABEL_142;
          }
        }

      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_134;
        }

        v16 = v6 - 1;
        while (1)
        {
          v17 = (v16 + 1);
          *v91 = v16 + 1;
          v18 = *(a1 + 280);
          if (v18 && (v19 = *(a1 + 272), v19 < *v18))
          {
            *(a1 + 272) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = *(a1 + 264);
            if (!v21)
            {
              operator new();
            }

            *v23 = v22;
            v23[1] = sub_195A650;
            *v22 = 0;
            v22[1] = 0;
            v22[2] = 0;
            v20 = sub_19593CC(a1 + 264, v22);
            v17 = *v91;
          }

          v16 = sub_1958890(v20, v17, a3);
          *v91 = v16;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 98)
          {
            goto LABEL_142;
          }
        }

      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_134;
        }

        v30 = v6 - 1;
        while (1)
        {
          v31 = v30 + 1;
          *v91 = v30 + 1;
          v32 = *(a1 + 304);
          if (v32 && (v33 = *(a1 + 296), v33 < *v32))
          {
            *(a1 + 296) = v33 + 1;
            v34 = *&v32[2 * v33 + 2];
          }

          else
          {
            sub_16AA83C(*(a1 + 288));
            v34 = sub_19593CC(a1 + 288, v35);
            v31 = *v91;
          }

          v30 = sub_2232D88(a3, v34, v31);
          *v91 = v30;
          if (!v30)
          {
            return 0;
          }

          if (*a3 <= v30 || *v30 != 106)
          {
            goto LABEL_142;
          }
        }

      default:
LABEL_134:
        if (v7)
        {
          v88 = (v7 & 7) == 4;
        }

        else
        {
          v88 = 1;
        }

        if (!v88)
        {
          v89 = *(a1 + 8);
          if (v89)
          {
            v90 = (v89 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v90 = sub_11F1920((a1 + 8));
            v6 = *v91;
          }

          v69 = sub_1952690(v7, v90, v6, a3);
LABEL_141:
          *v91 = v69;
          if (!v69)
          {
            return 0;
          }

LABEL_142:
          if (sub_195ADC0(a3, v91, a3[11].i32[1]))
          {
            return *v91;
          }

          continue;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return *v91;
    }
  }
}

char *sub_16A91FC(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_16A0D7C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * j + 8);
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

      __dst = sub_16A1798(v13, v15, a3);
    }
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 88) + 8 * k + 8);
      *__dst = 26;
      v19 = *(v18 + 20);
      __dst[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, __dst + 1);
      }

      else
      {
        v20 = __dst + 2;
      }

      __dst = sub_169C280(v18, v20, a3);
    }
  }

  v21 = *(a1 + 104);
  if (v21)
  {
    for (m = 0; m != v21; ++m)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 112) + 8 * m + 8);
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

      __dst = sub_169CACC(v23, v25, a3);
    }
  }

  v26 = *(a1 + 128);
  if (v26)
  {
    for (n = 0; n != v26; ++n)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v28 = *(*(a1 + 136) + 8 * n + 8);
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

      __dst = sub_169D998(v28, v30, a3);
    }
  }

  if (*(a1 + 16))
  {
    __dst = sub_128AEEC(a3, 6, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v31 = *(a1 + 152);
  if (v31)
  {
    for (ii = 0; ii != v31; ++ii)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v33 = *(*(a1 + 160) + 8 * ii + 8);
      *__dst = 58;
      v34 = *(v33 + 20);
      __dst[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, __dst + 1);
      }

      else
      {
        v35 = __dst + 2;
      }

      __dst = sub_16A70E8(v33, v35, a3);
    }
  }

  v36 = *(a1 + 176);
  if (v36)
  {
    for (jj = 0; jj != v36; ++jj)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v38 = *(*(a1 + 184) + 8 * jj + 8);
      *__dst = 66;
      v39 = *(v38 + 20);
      __dst[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, __dst + 1);
      }

      else
      {
        v40 = __dst + 2;
      }

      __dst = sub_16A6604(v38, v40, a3);
    }
  }

  v41 = *(a1 + 200);
  if (v41)
  {
    for (kk = 0; kk != v41; ++kk)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v43 = *(*(a1 + 208) + 8 * kk + 8);
      *__dst = 74;
      v44 = *(v43 + 20);
      __dst[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, __dst + 1);
      }

      else
      {
        v45 = __dst + 2;
      }

      __dst = sub_168F868(v43, v45, a3);
    }
  }

  v46 = *(a1 + 224);
  if (v46)
  {
    for (mm = 0; mm != v46; ++mm)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v48 = *(*(a1 + 232) + 8 * mm + 8);
      *__dst = 82;
      v49 = *(v48 + 44);
      __dst[1] = v49;
      if (v49 > 0x7F)
      {
        v50 = sub_19575D0(v49, __dst + 1);
      }

      else
      {
        v50 = __dst + 2;
      }

      __dst = sub_16910FC(v48, v50, a3);
    }
  }

  v51 = *(a1 + 248);
  if (v51)
  {
    for (nn = 0; nn != v51; ++nn)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v53 = *(*(a1 + 256) + 8 * nn + 8);
      *__dst = 90;
      v54 = *(v53 + 20);
      __dst[1] = v54;
      if (v54 > 0x7F)
      {
        v55 = sub_19575D0(v54, __dst + 1);
      }

      else
      {
        v55 = __dst + 2;
      }

      __dst = sub_16A7CE4(v53, v55, a3);
    }
  }

  v56 = *(a1 + 272);
  if (v56 >= 1)
  {
    v57 = 8;
    do
    {
      __dst = sub_1355F54(a3, 12, *(*(a1 + 280) + v57), __dst);
      v57 += 8;
      --v56;
    }

    while (v56);
  }

  v58 = *(a1 + 296);
  if (v58)
  {
    for (i1 = 0; i1 != v58; ++i1)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v60 = *(*(a1 + 304) + 8 * i1 + 8);
      *__dst = 106;
      v61 = *(v60 + 20);
      __dst[1] = v61;
      if (v61 > 0x7F)
      {
        v62 = sub_19575D0(v61, __dst + 1);
      }

      else
      {
        v62 = __dst + 2;
      }

      __dst = sub_16A2250(v60, v62, a3);
    }
  }

  v63 = *(a1 + 8);
  if ((v63 & 1) == 0)
  {
    return __dst;
  }

  v65 = v63 & 0xFFFFFFFFFFFFFFFCLL;
  v66 = *(v65 + 31);
  if (v66 < 0)
  {
    v67 = *(v65 + 8);
    v66 = *(v65 + 16);
  }

  else
  {
    v67 = (v65 + 8);
  }

  if ((*a3 - __dst) >= v66)
  {
    v68 = v66;
    memcpy(__dst, v67, v66);
    __dst += v68;
    return __dst;
  }

  return sub_1957130(a3, v67, v66, __dst);
}

uint64_t sub_16A98C0(uint64_t a1)
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
      v7 = sub_16A1144(v6);
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
      v14 = sub_16A1A3C(v13);
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
      v21 = sub_169C4F0(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + v22;
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
      v28 = sub_169CE0C(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 128);
  v30 = v23 + v29;
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
      v35 = sub_169DF68(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 152);
  v37 = v30 + v36;
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
      v42 = sub_16A7368(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 176);
  v44 = v37 + v43;
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
      v49 = sub_16A6974(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 200);
  v51 = v44 + v50;
  v52 = *(a1 + 208);
  if (v52)
  {
    v53 = (v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  if (v50)
  {
    v54 = 8 * v50;
    do
    {
      v55 = *v53++;
      v56 = sub_168FB0C(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = *(a1 + 224);
  v58 = v51 + v57;
  v59 = *(a1 + 232);
  if (v59)
  {
    v60 = (v59 + 8);
  }

  else
  {
    v60 = 0;
  }

  if (v57)
  {
    v61 = 8 * v57;
    do
    {
      v62 = *v60++;
      v63 = sub_1691AA8(v62);
      v58 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
      v61 -= 8;
    }

    while (v61);
  }

  v64 = *(a1 + 248);
  v65 = v58 + v64;
  v66 = *(a1 + 256);
  if (v66)
  {
    v67 = (v66 + 8);
  }

  else
  {
    v67 = 0;
  }

  if (v64)
  {
    v68 = 8 * v64;
    do
    {
      v69 = *v67++;
      v70 = sub_16A80D0(v69);
      v65 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6);
      v68 -= 8;
    }

    while (v68);
  }

  v71 = *(a1 + 272);
  v72 = v65 + v71;
  if (v71 >= 1)
  {
    v73 = (*(a1 + 280) + 8);
    do
    {
      v74 = *v73++;
      v75 = *(v74 + 23);
      v76 = *(v74 + 8);
      if ((v75 & 0x80u) == 0)
      {
        v76 = v75;
      }

      v72 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6);
      --v71;
    }

    while (v71);
  }

  v77 = *(a1 + 296);
  v78 = v72 + v77;
  v79 = *(a1 + 304);
  if (v79)
  {
    v80 = (v79 + 8);
  }

  else
  {
    v80 = 0;
  }

  if (v77)
  {
    v81 = 8 * v77;
    do
    {
      v82 = *v80++;
      v83 = sub_16A2558(v82);
      v78 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6);
      v81 -= 8;
    }

    while (v81);
  }

  if (*(a1 + 16))
  {
    v84 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
    v85 = *(v84 + 23);
    v86 = *(v84 + 8);
    if ((v85 & 0x80u) == 0)
    {
      v86 = v85;
    }

    v78 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v87 = *(a1 + 8);
  if (v87)
  {
    v89 = v87 & 0xFFFFFFFFFFFFFFFCLL;
    v90 = *((v87 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v90 < 0)
    {
      v90 = *(v89 + 16);
    }

    v78 += v90;
  }

  *(a1 + 20) = v78;
  return v78;
}

void sub_16A9D28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_16BEF4C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_16BEFD8((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_16BF064((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_16BF0E0((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
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
    sub_16BF16C((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
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
    sub_16BF1F8((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
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
    sub_16BF284((a1 + 168), v36, (v35 + 8), v34, **(a1 + 184) - *(a1 + 176));
    v37 = *(a1 + 176) + v34;
    *(a1 + 176) = v37;
    v38 = *(a1 + 184);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 200);
  if (v39)
  {
    v40 = *(a2 + 208);
    v41 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_16BDDC4((a1 + 192), v41, (v40 + 8), v39, **(a1 + 208) - *(a1 + 200));
    v42 = *(a1 + 200) + v39;
    *(a1 + 200) = v42;
    v43 = *(a1 + 208);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 224);
  if (v44)
  {
    v45 = *(a2 + 232);
    v46 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_16BE188((a1 + 216), v46, (v45 + 8), v44, **(a1 + 232) - *(a1 + 224));
    v47 = *(a1 + 224) + v44;
    *(a1 + 224) = v47;
    v48 = *(a1 + 232);
    if (*v48 < v47)
    {
      *v48 = v47;
    }
  }

  v49 = *(a2 + 248);
  if (v49)
  {
    v50 = *(a2 + 256);
    v51 = sub_19592E8(a1 + 240, *(a2 + 248));
    sub_16BF310((a1 + 240), v51, (v50 + 8), v49, **(a1 + 256) - *(a1 + 248));
    v52 = *(a1 + 248) + v49;
    *(a1 + 248) = v52;
    v53 = *(a1 + 256);
    if (*v53 < v52)
    {
      *v53 = v52;
    }
  }

  v54 = *(a2 + 272);
  if (v54)
  {
    v55 = *(a2 + 280);
    v56 = sub_19592E8(a1 + 264, *(a2 + 272));
    sub_1201B48(a1 + 264, v56, (v55 + 8), v54, **(a1 + 280) - *(a1 + 272));
    v57 = *(a1 + 272) + v54;
    *(a1 + 272) = v57;
    v58 = *(a1 + 280);
    if (*v58 < v57)
    {
      *v58 = v57;
    }
  }

  v59 = *(a2 + 296);
  if (v59)
  {
    v60 = *(a2 + 304);
    v61 = sub_19592E8(a1 + 288, *(a2 + 296));
    sub_16BF39C((a1 + 288), v61, (v60 + 8), v59, **(a1 + 304) - *(a1 + 296));
    v62 = *(a1 + 296) + v59;
    *(a1 + 296) = v62;
    v63 = *(a1 + 304);
    if (*v63 < v62)
    {
      *v63 = v62;
    }
  }

  if (*(a2 + 16))
  {
    v64 = *(a2 + 312);
    *(a1 + 16) |= 1u;
    v65 = *(a1 + 8);
    v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
    if (v65)
    {
      v66 = *v66;
    }

    sub_194EA1C((a1 + 312), (v64 & 0xFFFFFFFFFFFFFFFELL), v66);
  }

  v67 = *(a2 + 8);
  if (v67)
  {

    sub_1957EF4((a1 + 8), (v67 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_16AA210(uint64_t a1)
{
  if (!sub_16978F8(a1 + 24) || !sub_16AA29C(a1 + 144) || !sub_16AA2F4(a1 + 168))
  {
    return 0;
  }

  v2 = *(a1 + 224);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_169240C(*(*(a1 + 232) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  return sub_169B31C(a1 + 240);
}

uint64_t sub_16AA29C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 2) == 0 || (~*(*(*i + 32) + 16) & 3) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_16AA2F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 4) == 0 || (~*(*(*i + 40) + 16) & 3) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_16AA35C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FDD30;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_16AA3DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FDDB0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 44) = 0u;
  return result;
}

double sub_16AA45C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FDE30;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = -1;
  return result;
}

uint64_t sub_16AA4F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FDEB0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double sub_16AA574(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FDF30;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_16AA5F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FDFB0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_16AA670(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26FE030;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = a1;
  result = 0.0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  return result;
}

double sub_16AA728(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FE0B0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 1;
  return result;
}

uint64_t sub_16AA7B0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FE130;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

double sub_16AA83C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FE1B0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

void *sub_16AA8CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FE230;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  *(result + 37) = 0;
  return result;
}

uint64_t sub_16AA94C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FE2B0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_16AA9CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FE330;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

double sub_16AAA48(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FE3B0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t sub_16AAACC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FE430;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 109) = 0u;
  return result;
}

double sub_16AAB7C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FE4B0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

double sub_16AABFC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FE530;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_16AAC7C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FE5B0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 68) = 0u;
  return result;
}

void *sub_16AAD10(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_16A8530(v2, a1, 0);
}

uint64_t sub_16AAD88(uint64_t a1)
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

void sub_16AAE40(uint64_t a1)
{
  sub_16AAD88(a1);

  operator delete();
}

uint64_t sub_16AAE78(uint64_t a1)
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

uint64_t sub_16AAEF4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_16AB074(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_16AB15C(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_132CD7C(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    result = v4 + v8 + v5 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

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

void *sub_16AB258(void *a1)
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

void sub_16AB2CC(void *a1)
{
  sub_16AB258(a1);

  operator delete();
}

char *sub_16AB304(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
  {
    goto LABEL_28;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 17)
      {
        v15 = *v6;
        v14 = v6 + 8;
        v5 |= 2u;
        *(a1 + 32) = v15;
LABEL_22:
        v18 = v14;
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 9)
    {
      v16 = *v6;
      v14 = v6 + 8;
      v5 |= 1u;
      *(a1 + 24) = v16;
      goto LABEL_22;
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
      v6 = v18;
    }

    v18 = sub_1952690(v7, v13, v6, a3);
    if (!v18)
    {
      goto LABEL_29;
    }

LABEL_23:
    if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
    {
      goto LABEL_28;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_28;
  }

LABEL_29:
  v18 = 0;
LABEL_28:
  *(a1 + 16) |= v5;
  return v18;
}

char *sub_16AB468(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 17;
    *(v4 + 1) = v8;
    v4 += 9;
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

uint64_t sub_16AB580(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = (~v1 & 3) == 0;
  v4 = 18;
  if (!v3)
  {
    v4 = v2;
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

    v4 += v8;
  }

  *(a1 + 20) = v4;
  return v4;
}

void *sub_16AB5EC(void *a1)
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

void sub_16AB660(void *a1)
{
  sub_16AB5EC(a1);

  operator delete();
}

char *sub_16AB698(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v20 + 1;
    v8 = *v20;
    if (*v20 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v20, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v20 + 2;
      }
    }

    v20 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 6)
    {
      if (v11 == 7)
      {
        if (v8 == 57)
        {
          v16 = *v7;
          v12 = v7 + 8;
          v5 |= 4u;
          *(a1 + 40) = v16;
          goto LABEL_20;
        }
      }

      else if (v11 == 8 && v8 == 65)
      {
        v14 = *v7;
        v12 = v7 + 8;
        v5 |= 8u;
        *(a1 + 48) = v14;
        goto LABEL_20;
      }
    }

    else if (v11 == 5)
    {
      if (v8 == 41)
      {
        v15 = *v7;
        v12 = v7 + 8;
        v5 |= 1u;
        *(a1 + 24) = v15;
        goto LABEL_20;
      }
    }

    else if (v11 == 6 && v8 == 49)
    {
      v13 = *v7;
      v12 = v7 + 8;
      v5 |= 2u;
      *(a1 + 32) = v13;
LABEL_20:
      v20 = v12;
      goto LABEL_21;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v19 = sub_11F1920((a1 + 8));
      v7 = v20;
    }

    v20 = sub_1952690(v8, v19, v7, a3);
    if (!v20)
    {
      goto LABEL_34;
    }

LABEL_21:
    if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_34:
  v20 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v20;
}

char *sub_16AB854(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 41;
    *(v4 + 1) = v7;
    v4 += 9;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
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

  v8 = *(a1 + 32);
  *v4 = 49;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 40);
  *v4 = 57;
  *(v4 + 1) = v9;
  v4 += 9;
  if ((v6 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 48);
    *v4 = 65;
    *(v4 + 1) = v10;
    v4 += 9;
  }

LABEL_18:
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

uint64_t sub_16AB9EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 4) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0xF) != 0)
  {
    v3 = v2;
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

uint64_t sub_16ABA70(uint64_t a1)
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
  if (a1 != &off_277D4A0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_16AB258(v6);
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

void sub_16ABB28(uint64_t a1)
{
  sub_16ABA70(a1);

  operator delete();
}

char *sub_16ABB60(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v23, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v23 + 1;
    v8 = *v23;
    if (*v23 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v23, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v23 + 2;
      }
    }

    v23 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 9)
    {
      break;
    }

    if (v11 == 7)
    {
      if (v8 == 57)
      {
        v18 = *v7;
        v17 = v7 + 8;
        v5 |= 2u;
        *(a1 + 32) = v18;
LABEL_24:
        v23 = v17;
        goto LABEL_31;
      }

      goto LABEL_13;
    }

    if (v11 != 1 || v8 != 10)
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

      v20 = sub_16BAD9C(v22);
      *(a1 + 24) = v20;
      v7 = v23;
    }

    v16 = sub_2231CA8(a3, v20, v7);
LABEL_30:
    v23 = v16;
    if (!v16)
    {
      goto LABEL_36;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v23, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 73)
  {
    v19 = *v7;
    v17 = v7 + 8;
    v5 |= 4u;
    *(a1 + 40) = v19;
    goto LABEL_24;
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
      v7 = v23;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_30;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_36:
  v23 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

char *sub_16ABD20(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_16AB468(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
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
  *v4 = 57;
  *(v4 + 1) = v10;
  v4 += 9;
  if ((v6 & 4) != 0)
  {
LABEL_14:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 40);
    *v4 = 73;
    *(v4 + 1) = v11;
    v4 += 9;
  }

LABEL_17:
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

uint64_t sub_16ABEB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_16AB580(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  v5 = v3 + 9;
  if ((v2 & 2) == 0)
  {
    v5 = v3;
  }

  if ((v2 & 4) != 0)
  {
    v5 += 9;
  }

  if ((v2 & 6) != 0)
  {
    result = v5;
  }

  else
  {
    result = v3;
  }

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

void *sub_16ABF68(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26FE8B0;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = a2;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = &qword_278E990;
  result[11] = &qword_278E990;
  result[12] = &qword_278E990;
  result[13] = &qword_278E990;
  result[14] = &qword_278E990;
  result[15] = &qword_278E990;
  result[16] = &qword_278E990;
  result[17] = &qword_278E990;
  result[18] = &qword_278E990;
  result[19] = &qword_278E990;
  result[20] = &qword_278E990;
  result[21] = &qword_278E990;
  result[22] = &qword_278E990;
  result[23] = &qword_278E990;
  return result;
}

void *sub_16ABFCC(void *a1)
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

  sub_16AC060(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 6);
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_16AC060(uint64_t a1)
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

  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C((a1 + 96));
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C((a1 + 112));
  }

  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C((a1 + 120));
  }

  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C((a1 + 128));
  }

  if (*(a1 + 136) != &qword_278E990)
  {
    sub_194E89C((a1 + 136));
  }

  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C((a1 + 144));
  }

  if (*(a1 + 152) != &qword_278E990)
  {
    sub_194E89C((a1 + 152));
  }

  if (*(a1 + 160) != &qword_278E990)
  {
    sub_194E89C((a1 + 160));
  }

  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C((a1 + 168));
  }

  result = (a1 + 176);
  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  v6 = *(a1 + 184);
  v5 = (a1 + 184);
  if (v6 != &qword_278E990)
  {

    sub_194E89C(v5);
  }

  return result;
}

void sub_16AC1CC(void *a1)
{
  sub_16ABFCC(a1);

  operator delete();
}

uint64_t sub_16AC204(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  result = sub_12A41D0(a1 + 48);
  v3 = *(a1 + 16);
  if (v3)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v5 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v7 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v9 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v11 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
      }

      goto LABEL_42;
    }

    v4 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v6 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v8 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v10 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v3 & 0x7F00) == 0)
  {
    goto LABEL_78;
  }

  if ((v3 & 0x100) != 0)
  {
    v12 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_45:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_46;
    }

LABEL_59:
    v14 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v3 & 0x800) != 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v3 & 0x800) != 0)
      {
        goto LABEL_63;
      }
    }

LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

LABEL_67:
    v16 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v16 + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
      if ((v3 & 0x2000) != 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
      if ((v3 & 0x2000) != 0)
      {
        goto LABEL_71;
      }
    }

LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_75;
  }

  if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

LABEL_55:
  v13 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v13 + 23) < 0)
  {
    **v13 = 0;
    *(v13 + 8) = 0;
    if ((v3 & 0x400) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v3 & 0x400) != 0)
    {
      goto LABEL_59;
    }
  }

LABEL_46:
  if ((v3 & 0x800) == 0)
  {
    goto LABEL_47;
  }

LABEL_63:
  v15 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v3 & 0x1000) != 0)
    {
      goto LABEL_67;
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v3 & 0x1000) != 0)
    {
      goto LABEL_67;
    }
  }

LABEL_48:
  if ((v3 & 0x2000) == 0)
  {
    goto LABEL_49;
  }

LABEL_71:
  v17 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v17 + 23) < 0)
  {
    **v17 = 0;
    *(v17 + 8) = 0;
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_78;
    }
  }

  else
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_78;
    }
  }

LABEL_75:
  v18 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v18 + 23) < 0)
  {
    **v18 = 0;
    *(v18 + 8) = 0;
  }

  else
  {
    *v18 = 0;
    *(v18 + 23) = 0;
  }

LABEL_78:
  v20 = *(a1 + 8);
  v19 = a1 + 8;
  *(v19 + 8) = 0;
  if (v20)
  {

    return sub_1957EA8(v19);
  }

  return result;
}

uint64_t sub_16AC578(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v48 = a2;
  if (sub_195ADC0(a3, v48, a3[11].i32[1]))
  {
    return *v48;
  }

  while (2)
  {
    v6 = (*v48 + 1);
    v7 = **v48;
    if (**v48 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v48, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v48 + 2);
      }
    }

    *v48 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 10)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 1u;
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v12 = (a1 + 72);
        goto LABEL_92;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 2u;
        v30 = *(a1 + 8);
        v11 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v11 = *v11;
        }

        v12 = (a1 + 80);
        goto LABEL_92;
      case 3u:
        if (v7 != 26)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 4u;
        v26 = *(a1 + 8);
        v11 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v11 = *v11;
        }

        v12 = (a1 + 88);
        goto LABEL_92;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 8u;
        v28 = *(a1 + 8);
        v11 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v11 = *v11;
        }

        v12 = (a1 + 96);
        goto LABEL_92;
      case 5u:
        if (v7 != 42)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x10u;
        v23 = *(a1 + 8);
        v11 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v11 = *v11;
        }

        v12 = (a1 + 104);
        goto LABEL_92;
      case 6u:
        if (v7 != 50)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x20u;
        v31 = *(a1 + 8);
        v11 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v11 = *v11;
        }

        v12 = (a1 + 112);
        goto LABEL_92;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x40u;
        v40 = *(a1 + 8);
        v11 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v11 = *v11;
        }

        v12 = (a1 + 120);
        goto LABEL_92;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x80u;
        v29 = *(a1 + 8);
        v11 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v11 = *v11;
        }

        v12 = (a1 + 128);
        goto LABEL_92;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x100u;
        v42 = *(a1 + 8);
        v11 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v11 = *v11;
        }

        v12 = (a1 + 136);
        goto LABEL_92;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x200u;
        v25 = *(a1 + 8);
        v11 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v11 = *v11;
        }

        v12 = (a1 + 144);
        goto LABEL_92;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x400u;
        v41 = *(a1 + 8);
        v11 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v11 = *v11;
        }

        v12 = (a1 + 152);
        goto LABEL_92;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x800u;
        v22 = *(a1 + 8);
        v11 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v11 = *v11;
        }

        v12 = (a1 + 160);
        goto LABEL_92;
      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x1000u;
        v24 = *(a1 + 8);
        v11 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v11 = *v11;
        }

        v12 = (a1 + 168);
        goto LABEL_92;
      case 0xEu:
        if (v7 != 114)
        {
          goto LABEL_96;
        }

        v32 = v6 - 1;
        while (1)
        {
          v33 = (v32 + 1);
          *v48 = v32 + 1;
          v34 = *(a1 + 40);
          if (v34 && (v35 = *(a1 + 32), v35 < *v34))
          {
            *(a1 + 32) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            v37 = *(a1 + 24);
            if (!v37)
            {
              operator new();
            }

            *v39 = v38;
            v39[1] = sub_195A650;
            *v38 = 0;
            v38[1] = 0;
            v38[2] = 0;
            v36 = sub_19593CC(a1 + 24, v38);
            v33 = *v48;
          }

          v32 = sub_1958890(v36, v33, a3);
          *v48 = v32;
          if (!v32)
          {
            return 0;
          }

          if (*a3 <= v32 || *v32 != 114)
          {
            goto LABEL_94;
          }
        }

      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x2000u;
        v21 = *(a1 + 8);
        v11 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v11 = *v11;
        }

        v12 = (a1 + 176);
        goto LABEL_92;
      case 0x10u:
        if (v7 != 130)
        {
          goto LABEL_96;
        }

        *(a1 + 16) |= 0x4000u;
        v27 = *(a1 + 8);
        v11 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v11 = *v11;
        }

        v12 = (a1 + 184);
LABEL_92:
        v43 = sub_194DB04(v12, v11);
        v44 = sub_1958890(v43, *v48, a3);
        goto LABEL_93;
      case 0x11u:
        if (v7 != 138)
        {
          goto LABEL_96;
        }

        v13 = v6 - 2;
        while (1)
        {
          v14 = (v13 + 2);
          *v48 = v13 + 2;
          v15 = *(a1 + 64);
          if (v15 && (v16 = *(a1 + 56), v16 < *v15))
          {
            *(a1 + 56) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            v18 = *(a1 + 48);
            if (!v18)
            {
              operator new();
            }

            *v20 = v19;
            v20[1] = sub_195A650;
            *v19 = 0;
            v19[1] = 0;
            v19[2] = 0;
            v17 = sub_19593CC(a1 + 48, v19);
            v14 = *v48;
          }

          v13 = sub_1958890(v17, v14, a3);
          *v48 = v13;
          if (!v13)
          {
            return 0;
          }

          if (*a3 <= v13 || *v13 != 394)
          {
            goto LABEL_94;
          }
        }

      default:
LABEL_96:
        if (v7)
        {
          v45 = (v7 & 7) == 4;
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
            v6 = *v48;
          }

          v44 = sub_1952690(v7, v47, v6, a3);
LABEL_93:
          *v48 = v44;
          if (!v44)
          {
            return 0;
          }

LABEL_94:
          if (sub_195ADC0(a3, v48, a3[11].i32[1]))
          {
            return *v48;
          }

          continue;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return *v48;
    }
  }
}