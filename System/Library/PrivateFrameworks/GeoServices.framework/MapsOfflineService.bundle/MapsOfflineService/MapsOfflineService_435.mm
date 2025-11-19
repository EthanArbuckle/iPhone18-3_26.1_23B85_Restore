char *sub_17AEE38(uint64_t a1, char *__dst, _DWORD *a3)
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
        LOBYTE(v15) = v15[2];
        do
        {
          *(v19 - 1) = v15 | 0x80;
          LODWORD(v15) = v21 >> 7;
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v23 = *(a1 + 40);
    *v19 = 40;
    v19[1] = v23;
    v19 += 2;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 44);
    *v19 = 56;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v27) = v19[2];
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
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
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

uint64_t sub_17AF1B0(uint64_t a1)
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
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_10:
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  v3 = v2 + ((v1 >> 3) & 2);
  if ((v1 & 0x20) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

std::string *sub_17AF2D8(std::string *result, uint64_t a2)
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
    result[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
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
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
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

uint64_t sub_17AF384(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270B8D8;
  sub_194F82C(a1 + 16, a2);
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
  *(a1 + 120) = &qword_278E990;
  *(a1 + 128) = &qword_278E990;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return a1;
}

void sub_17AF41C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17AF44C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270B8D8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48(a1 + 48, v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *(a2 + 88);
    v13 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_144C998((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v16 = *(a2 + 104);
  if (v16)
  {
    v17 = *(a2 + 112);
    v18 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_166F468((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 8);
  if (v21)
  {
    sub_1957EF4(v4, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 120) = &qword_278E990;
  v22 = *(a2 + 40);
  if (v22)
  {
    v23 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v23 = *v23;
    }

    sub_194EA1C((a1 + 120), (*(a2 + 120) & 0xFFFFFFFFFFFFFFFELL), v23);
    v22 = *(a2 + 40);
  }

  *(a1 + 128) = &qword_278E990;
  if ((v22 & 2) != 0)
  {
    v24 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 128), (*(a2 + 128) & 0xFFFFFFFFFFFFFFFELL), v24);
    v22 = *(a2 + 40);
  }

  if ((v22 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  if ((v22 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 144) = 0;
  if ((v22 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  v25 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v25;
  return a1;
}

void *sub_17AF804(void *a1)
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

  sub_17AF8B0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_166EF40(a1 + 12);
  sub_144B8DC(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_17AF8B0(uint64_t a1)
{
  v3 = *(a1 + 120);
  v2 = (a1 + 120);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 128);
  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2782E80)
  {
    if (*(a1 + 136))
    {
      sub_16F0320();
      operator delete();
    }

    if (*(a1 + 144))
    {
      sub_16E4E08();
      operator delete();
    }

    result = *(a1 + 152);
    if (result)
    {
      sub_153BF18();

      operator delete();
    }
  }

  return result;
}

void sub_17AF988(void *a1)
{
  sub_17AF804(a1);

  operator delete();
}

uint64_t sub_17AF9C0(uint64_t a1)
{
  sub_1951124((a1 + 16));
  result = sub_12A41D0(a1 + 48);
  v3 = *(a1 + 80);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 88) + 8);
    do
    {
      v5 = *v4++;
      result = sub_144E6A8(v5);
      --v3;
    }

    while (v3);
    *(a1 + 80) = 0;
  }

  v6 = *(a1 + 104);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 112) + 8);
    do
    {
      v8 = *v7++;
      result = sub_17B3DC4(v8);
      --v6;
    }

    while (v6);
    *(a1 + 104) = 0;
  }

  v9 = *(a1 + 40);
  if ((v9 & 0x1F) == 0)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    v12 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_30:
    result = sub_16F035C(*(a1 + 136));
    if ((v9 & 8) == 0)
    {
LABEL_14:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_31;
  }

  if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_26:
  v13 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v13 + 23) < 0)
  {
    **v13 = 0;
    *(v13 + 8) = 0;
    if ((v9 & 4) != 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v9 & 4) != 0)
    {
      goto LABEL_30;
    }
  }

LABEL_13:
  if ((v9 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_31:
  result = sub_16E4E44(*(a1 + 144));
  if ((v9 & 0x10) != 0)
  {
LABEL_15:
    result = sub_144E31C(*(a1 + 152));
  }

LABEL_16:
  if ((v9 & 0x60) != 0)
  {
    *(a1 + 168) = 0;
    *(a1 + 160) = 0;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 32) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_17AFB2C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v61 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v61, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v61 + 1);
    v8 = **v61;
    if (**v61 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v61, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v61 + 2);
      }
    }

    *v61 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          v28 = (v7 - 1);
          while (1)
          {
            v29 = (v28 + 1);
            *v61 = v28 + 1;
            v30 = *(a1 + 64);
            if (v30 && (v31 = *(a1 + 56), v31 < *v30))
            {
              *(a1 + 56) = v31 + 1;
              v32 = *&v30[2 * v31 + 2];
            }

            else
            {
              v33 = *(a1 + 48);
              if (!v33)
              {
                operator new();
              }

              *v35 = v34;
              v35[1] = sub_195A650;
              *v34 = 0;
              v34[1] = 0;
              v34[2] = 0;
              v32 = sub_19593CC(a1 + 48, v34);
              v29 = *v61;
            }

            v28 = sub_1958890(v32, v29, a3);
            *v61 = v28;
            if (!v28)
            {
              goto LABEL_111;
            }

            if (*a3 <= v28 || *v28 != 10)
            {
              goto LABEL_102;
            }
          }
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        v19 = v7 - 1;
        while (1)
        {
          v20 = v19 + 1;
          *v61 = v19 + 1;
          v21 = *(a1 + 88);
          if (v21 && (v22 = *(a1 + 80), v22 < *v21))
          {
            *(a1 + 80) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_14BF484(*(a1 + 72));
            v23 = sub_19593CC(a1 + 72, v24);
            v20 = *v61;
          }

          v19 = sub_2209138(a3, v23, v20);
          *v61 = v19;
          if (!v19)
          {
            goto LABEL_111;
          }

          if (*a3 <= v19 || *v19 != 18)
          {
            goto LABEL_102;
          }
        }
      }

      goto LABEL_92;
    }

    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_92;
      }

      *(a1 + 40) |= 1u;
      v40 = *(a1 + 8);
      v26 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v26 = *v26;
      }

      v27 = (a1 + 120);
LABEL_69:
      v41 = sub_194DB04(v27, v26);
      v39 = sub_1958890(v41, *v61, a3);
      goto LABEL_101;
    }

    if (v11 == 4)
    {
      if (v8 == 34)
      {
        v45 = v7 - 1;
        while (1)
        {
          v46 = v45 + 1;
          *v61 = v45 + 1;
          v47 = *(a1 + 112);
          if (v47 && (v48 = *(a1 + 104), v48 < *v47))
          {
            *(a1 + 104) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            v50 = sub_185EA2C(*(a1 + 96));
            v49 = sub_19593CC(a1 + 96, v50);
            v46 = *v61;
          }

          v45 = sub_222EA30(a3, v49, v46);
          *v61 = v45;
          if (!v45)
          {
            goto LABEL_111;
          }

          if (*a3 <= v45 || *v45 != 34)
          {
            goto LABEL_102;
          }
        }
      }

      goto LABEL_92;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_92;
    }

    v5 |= 0x20u;
    v13 = (v7 + 1);
    v12 = *v7;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

    v14 = *v13;
    v12 = (v14 << 7) + v12 - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v13 = (v7 + 2);
LABEL_16:
      *v61 = v13;
      *(a1 + 160) = v12;
      goto LABEL_102;
    }

    v57 = sub_19587DC(v7, v12);
    *v61 = v57;
    *(a1 + 160) = v58;
    if (!v57)
    {
      goto LABEL_111;
    }

LABEL_102:
    if (sub_195ADC0(a3, v61, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 7)
  {
    if (v11 != 6)
    {
      if (v11 != 7 || v8 != 58)
      {
        goto LABEL_92;
      }

      *(a1 + 40) |= 2u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v27 = (a1 + 128);
      goto LABEL_69;
    }

    if (v8 != 50)
    {
      goto LABEL_92;
    }

    *(a1 + 40) |= 4u;
    v36 = *(a1 + 136);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_16F6144(v38);
      *(a1 + 136) = v36;
      v7 = *v61;
    }

    v39 = sub_21FC730(a3, v36, v7);
LABEL_101:
    *v61 = v39;
    if (!v39)
    {
      goto LABEL_111;
    }

    goto LABEL_102;
  }

  if (v11 == 8)
  {
    if (v8 != 66)
    {
      goto LABEL_92;
    }

    *(a1 + 40) |= 8u;
    v42 = *(a1 + 144);
    if (!v42)
    {
      v43 = *(a1 + 8);
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
      if (v43)
      {
        v44 = *v44;
      }

      v42 = sub_16F5828(v44);
      *(a1 + 144) = v42;
      v7 = *v61;
    }

    v39 = sub_21F4D60(a3, v42, v7);
    goto LABEL_101;
  }

  if (v11 != 9)
  {
    if (v11 != 10 || v8 != 80)
    {
      goto LABEL_92;
    }

    v5 |= 0x40u;
    v16 = (v7 + 1);
    v15 = *v7;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v17 = *v16;
    v15 = (v17 << 7) + v15 - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = (v7 + 2);
LABEL_25:
      *v61 = v16;
      *(a1 + 168) = v15 != 0;
      goto LABEL_102;
    }

    v59 = sub_19587DC(v7, v15);
    *v61 = v59;
    *(a1 + 168) = v60 != 0;
    if (!v59)
    {
      goto LABEL_111;
    }

    goto LABEL_102;
  }

  if (v8 == 74)
  {
    *(a1 + 40) |= 0x10u;
    v51 = *(a1 + 152);
    if (!v51)
    {
      v52 = *(a1 + 8);
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
      if (v52)
      {
        v53 = *v53;
      }

      v51 = sub_1551A70(v53);
      *(a1 + 152) = v51;
      v7 = *v61;
    }

    v39 = sub_22030E0(a3, v51, v7);
    goto LABEL_101;
  }

LABEL_92:
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
    if (v8 - 1600 > 0xF9F)
    {
      v55 = *(a1 + 8);
      if (v55)
      {
        v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v56 = sub_11F1920((a1 + 8));
        v7 = *v61;
      }

      v39 = sub_1952690(v8, v56, v7, a3);
    }

    else
    {
      v39 = sub_19525AC((a1 + 16), v8, v7, &off_2782E80, (a1 + 8), a3);
    }

    goto LABEL_101;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_111:
  *v61 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v61;
}

char *sub_17B0114(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 56);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 64) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = sub_1957480(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = a2 + 2;
        memcpy(a2 + 2, v8, v9);
        a2 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 88) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 44);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_14B6D24(v13, v15, a3);
    }
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    a2 = sub_128AEEC(a3, 3, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v19 = *(*(a1 + 112) + 8 * j + 8);
      *a2 = 34;
      v20 = *(v19 + 44);
      a2[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, a2 + 1);
      }

      else
      {
        v21 = a2 + 2;
      }

      a2 = sub_17B40C0(v19, v21, a3);
    }
  }

  if ((v16 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v23 = *(a1 + 160);
    *a2 = 40;
    a2[1] = v23;
    if (v23 > 0x7F)
    {
      a2[1] = v23 | 0x80;
      v24 = v23 >> 7;
      a2[2] = v23 >> 7;
      v22 = a2 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = a2[2];
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
      v22 = a2 + 2;
    }
  }

  else
  {
    v22 = a2;
  }

  if ((v16 & 4) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 136);
    *v22 = 50;
    v28 = *(v27 + 20);
    v22[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v22 + 1);
    }

    else
    {
      v29 = v22 + 2;
    }

    v22 = sub_16F04D8(v27, v29, a3);
    if ((v16 & 2) == 0)
    {
LABEL_41:
      if ((v16 & 8) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_52;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_41;
  }

  v22 = sub_128AEEC(a3, 7, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v22);
  if ((v16 & 8) == 0)
  {
LABEL_42:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_58;
  }

LABEL_52:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v30 = *(a1 + 144);
  *v22 = 66;
  v31 = *(v30 + 44);
  v22[1] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v22 + 1);
  }

  else
  {
    v32 = v22 + 2;
  }

  v22 = sub_16E5070(v30, v32, a3);
  if ((v16 & 0x10) == 0)
  {
LABEL_43:
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

LABEL_58:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v33 = *(a1 + 152);
  *v22 = 74;
  v34 = *(v33 + 44);
  v22[1] = v34;
  if (v34 > 0x7F)
  {
    v35 = sub_19575D0(v34, v22 + 1);
  }

  else
  {
    v35 = v22 + 2;
  }

  v22 = sub_153C1A4(v33, v35, a3);
  if ((v16 & 0x40) != 0)
  {
LABEL_64:
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v36 = *(a1 + 168);
    *v22 = 80;
    v22[1] = v36;
    v22 += 2;
  }

LABEL_67:
  if (*(a1 + 26))
  {
    v22 = sub_1953428(a1 + 16, 200, 700, v22, a3);
  }

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v22;
  }

  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 31);
  if (v40 < 0)
  {
    v41 = *(v39 + 8);
    v40 = *(v39 + 16);
  }

  else
  {
    v41 = (v39 + 8);
  }

  if (*a3 - v22 >= v40)
  {
    v42 = v40;
    memcpy(v22, v41, v40);
    v22 += v42;
    return v22;
  }

  return sub_1957130(a3, v41, v40, v22);
}

uint64_t sub_17B05D0(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
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

  v9 = *(a1 + 80);
  v10 = v4 + v9;
  v11 = *(a1 + 88);
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
      v15 = sub_14B71B8(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 104);
  v17 = v10 + v16;
  v18 = *(a1 + 112);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = sub_17B429C(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 40);
  if ((v23 & 0x7F) != 0)
  {
    if (v23)
    {
      v26 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      v27 = *(v26 + 23);
      v28 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v28 = v27;
      }

      v17 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v23 & 2) == 0)
      {
LABEL_21:
        if ((v23 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_35;
      }
    }

    else if ((v23 & 2) == 0)
    {
      goto LABEL_21;
    }

    v29 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v29 + 23);
    v31 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v30;
    }

    v17 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 4) == 0)
    {
LABEL_22:
      if ((v23 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }

LABEL_35:
    v32 = sub_16F05A0(*(a1 + 136));
    v17 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 8) == 0)
    {
LABEL_23:
      if ((v23 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_37;
    }

LABEL_36:
    v33 = sub_16E51F0(*(a1 + 144));
    v17 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 0x10) == 0)
    {
LABEL_24:
      if ((v23 & 0x20) == 0)
      {
LABEL_26:
        v17 += (v23 >> 5) & 2;
        goto LABEL_27;
      }

LABEL_25:
      v17 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_26;
    }

LABEL_37:
    v34 = sub_153C388(*(a1 + 152));
    v17 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_27:
  v24 = *(a1 + 8);
  if (v24)
  {
    v35 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v36 < 0)
    {
      v36 = *(v35 + 16);
    }

    v17 += v36;
  }

  *(a1 + 44) = v17;
  return v17;
}

void sub_17B0890(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_144C998((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_166F468((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 40);
  if ((v19 & 0x7F) != 0)
  {
    if (v19)
    {
      v21 = *(a2 + 120);
      *(a1 + 40) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((a1 + 120), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    v24 = *(a2 + 128);
    *(a1 + 40) |= 2u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 128), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 40) |= 4u;
    v27 = *(a1 + 136);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_16F6144(v29);
      *(a1 + 136) = v27;
    }

    if (*(a2 + 136))
    {
      v30 = *(a2 + 136);
    }

    else
    {
      v30 = &off_277EA18;
    }

    sub_132DE2C(v27, v30);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 40) |= 8u;
    v31 = *(a1 + 144);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_16F5828(v33);
      *(a1 + 144) = v31;
    }

    if (*(a2 + 144))
    {
      v34 = *(a2 + 144);
    }

    else
    {
      v34 = &off_277E5E8;
    }

    sub_16E527C(v31, v34);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_54;
    }

LABEL_46:
    *(a1 + 40) |= 0x10u;
    v35 = *(a1 + 152);
    if (!v35)
    {
      v36 = *(a1 + 8);
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      v35 = sub_1551A70(v37);
      *(a1 + 152) = v35;
    }

    if (*(a2 + 152))
    {
      v38 = *(a2 + 152);
    }

    else
    {
      v38 = &off_2776880;
    }

    sub_144F404(v35, v38);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
LABEL_19:
        *(a1 + 40) |= v19;
        goto LABEL_20;
      }

LABEL_18:
      *(a1 + 168) = *(a2 + 168);
      goto LABEL_19;
    }

LABEL_54:
    *(a1 + 160) = *(a2 + 160);
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  sub_225EA0C(a1 + 16, a2 + 16);
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17B0BA8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 80);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_144F5D0(*(*(a1 + 88) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 104);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_17B44D8(*(*(a1 + 112) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 40);
    if ((v9 & 4) != 0)
    {
      result = sub_16F061C(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 8) != 0)
    {
      result = sub_16E5370(*(a1 + 144));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x10) == 0)
    {
      return 1;
    }

    result = sub_144F674(*(a1 + 152));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_17B0C78(void *a1)
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

void sub_17B0CEC(void *a1)
{
  sub_17B0C78(a1);

  operator delete();
}

uint64_t *sub_17B0D24(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17B0D34(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17B0DC8(uint64_t a1)
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

std::string *sub_17B0DF4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17B0E28(uint64_t a1)
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

  if (a1 != &off_2782F48 && *(a1 + 24))
  {
    sub_16F0320();
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

void sub_17B0EE0(uint64_t a1)
{
  sub_17B0E28(a1);

  operator delete();
}

uint64_t sub_17B0F18(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_16F035C(*(result + 24));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 40) = 0;
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

char *sub_17B0F84(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 4)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v17 = v7 + 1;
      v18 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v19 = *v17;
      v18 = v18 + (v19 << 7) - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_24:
        v30 = v17;
        *(a1 + 40) = v18;
        goto LABEL_37;
      }

      v26 = sub_1958770(v7, v18);
      v30 = v26;
      *(a1 + 40) = v27;
      if (!v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v24 = v7 + 1;
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_36:
        v30 = v24;
        *(a1 + 32) = v23;
        goto LABEL_37;
      }

      v28 = sub_19587DC(v7, v23);
      v30 = v28;
      *(a1 + 32) = v29;
      if (!v28)
      {
        goto LABEL_46;
      }
    }

LABEL_37:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 34)
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

      v20 = sub_16F6144(v22);
      *(a1 + 24) = v20;
      v7 = v30;
    }

    v16 = sub_21FC730(a3, v20, v7);
LABEL_31:
    v30 = v16;
    if (!v16)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
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
      v7 = v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_17B11C0(uint64_t a1, char *__dst, void *a3)
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

    v12 = *(a1 + 40);
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

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 24);
    *v11 = 34;
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

    v11 = sub_16F04D8(v15, v17, a3);
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

uint64_t sub_17B13D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_16F05A0(*(a1 + 24));
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
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

std::string *sub_17B14B4(std::string *result, uint64_t a2)
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

        data = sub_16F6144(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277EA18;
      }

      result = sub_132DE2C(data, v9);
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

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
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

uint64_t sub_17B159C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16F061C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_17B15DC(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_270BA58;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a2;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = a2;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = a2;
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = a2;
  a1[19] = 0;
  a1[20] = 0;
  a1[21] = &qword_278E990;
  a1[22] = &qword_278E990;
  a1[23] = &qword_278E990;
  a1[24] = 0;
  a1[25] = 0;
  return a1;
}

void sub_17B1674(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17B16A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270BA58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144C5C4((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *(a2 + 88);
    v13 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_144C7F4((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v16 = *(a2 + 104);
  if (v16)
  {
    v17 = *(a2 + 112);
    v18 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_166F468((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v21 = *(a2 + 128);
  if (v21)
  {
    v22 = *(a2 + 136);
    v23 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_193CD58((a1 + 120), v23, (v22 + 8), v21, **(a1 + 136) - *(a1 + 128));
    v24 = *(a1 + 128) + v21;
    *(a1 + 128) = v24;
    v25 = *(a1 + 136);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v26 = *(a2 + 152);
  if (v26)
  {
    v27 = *(a2 + 160);
    v28 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_193CDE4((a1 + 144), v28, (v27 + 8), v26, **(a1 + 160) - *(a1 + 152));
    v29 = *(a1 + 152) + v26;
    *(a1 + 152) = v29;
    v30 = *(a1 + 160);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 8);
  if (v31)
  {
    sub_1957EF4(v4, (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 168) = &qword_278E990;
  v32 = *(a2 + 40);
  if (v32)
  {
    v33 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v33 = *v33;
    }

    sub_194EA1C((a1 + 168), (*(a2 + 168) & 0xFFFFFFFFFFFFFFFELL), v33);
    v32 = *(a2 + 40);
  }

  *(a1 + 176) = &qword_278E990;
  if ((v32 & 2) != 0)
  {
    v34 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v34 = *v34;
    }

    sub_194EA1C((a1 + 176), (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v34);
    v32 = *(a2 + 40);
  }

  *(a1 + 184) = &qword_278E990;
  if ((v32 & 4) != 0)
  {
    v35 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v35 = *v35;
    }

    sub_194EA1C((a1 + 184), (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL), v35);
    v32 = *(a2 + 40);
  }

  if ((v32 & 8) != 0)
  {
    operator new();
  }

  v36 = *(a2 + 200);
  *(a1 + 192) = 0;
  *(a1 + 200) = v36;
  return a1;
}

uint64_t sub_17B1AEC(uint64_t a1)
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

  v5 = (a1 + 168);
  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C((a1 + 176));
  }

  if (*(a1 + 184) != &qword_278E990)
  {
    sub_194E89C((a1 + 184));
  }

  if (a1 != &off_2782F78)
  {
    v6 = *(a1 + 192);
    if (v6)
    {
      sub_1917370(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_193AC20((a1 + 144));
  sub_193AB9C((a1 + 120));
  sub_166EF40((a1 + 96));
  sub_144B750((a1 + 72));
  sub_144B540((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B1C2C(uint64_t a1)
{
  sub_17B1AEC(a1);

  operator delete();
}

uint64_t sub_17B1C64(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_140CE38(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_1410138(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 104);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 112) + 8);
    do
    {
      v11 = *v10++;
      result = sub_17B3DC4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 128);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 136) + 8);
    do
    {
      v14 = *v13++;
      result = sub_17B3288(v14);
      --v12;
    }

    while (v12);
    *(a1 + 128) = 0;
  }

  v15 = *(a1 + 152);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 160) + 8);
    do
    {
      v17 = *v16++;
      result = sub_17B0F18(v17);
      --v15;
    }

    while (v15);
    *(a1 + 152) = 0;
  }

  v18 = *(a1 + 40);
  if ((v18 & 0xF) == 0)
  {
    goto LABEL_27;
  }

  if (v18)
  {
    v21 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v21 + 23) < 0)
    {
      **v21 = 0;
      *(v21 + 8) = 0;
      if ((v18 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v21 = 0;
      *(v21 + 23) = 0;
      if ((v18 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_24:
    if ((v18 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  if ((v18 & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_35:
  v22 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v22 + 23) & 0x80000000) == 0)
  {
    *v22 = 0;
    *(v22 + 23) = 0;
    if ((v18 & 4) != 0)
    {
      goto LABEL_39;
    }

LABEL_25:
    if ((v18 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  **v22 = 0;
  *(v22 + 8) = 0;
  if ((v18 & 4) == 0)
  {
    goto LABEL_25;
  }

LABEL_39:
  v23 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v23 + 23) & 0x80000000) == 0)
  {
    *v23 = 0;
    *(v23 + 23) = 0;
    if ((v18 & 8) == 0)
    {
      goto LABEL_27;
    }

LABEL_26:
    result = sub_17A82BC(*(a1 + 192));
    goto LABEL_27;
  }

  **v23 = 0;
  *(v23 + 8) = 0;
  if ((v18 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  v20 = *(a1 + 8);
  v19 = a1 + 8;
  *(v19 + 192) = 0;
  *(v19 + 32) = 0;
  if (v20)
  {

    return sub_1957EA8(v19);
  }

  return result;
}

uint64_t sub_17B1E48(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v61 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v61, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v61 + 1);
    v8 = **v61;
    if (**v61 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v61, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v61 + 2);
      }
    }

    *v61 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 0xB)
    {
      if (v8 >> 3 <= 8)
      {
        if (v11 == 1)
        {
          if (v8 == 10)
          {
            v29 = v7 - 1;
            while (1)
            {
              v30 = v29 + 1;
              *v61 = v29 + 1;
              v31 = *(a1 + 64);
              if (v31 && (v32 = *(a1 + 56), v32 < *v31))
              {
                *(a1 + 56) = v32 + 1;
                v33 = *&v31[2 * v32 + 2];
              }

              else
              {
                v34 = sub_141BB20(*(a1 + 48));
                v33 = sub_19593CC(a1 + 48, v34);
                v30 = *v61;
              }

              v29 = sub_220AC38(a3, v33, v30);
              *v61 = v29;
              if (!v29)
              {
                goto LABEL_114;
              }

              if (*a3 <= v29 || *v29 != 10)
              {
                goto LABEL_83;
              }
            }
          }
        }

        else if (v11 == 2 && v8 == 18)
        {
          v22 = v7 - 1;
          while (1)
          {
            v23 = v22 + 1;
            *v61 = v22 + 1;
            v24 = *(a1 + 88);
            if (v24 && (v25 = *(a1 + 80), v25 < *v24))
            {
              *(a1 + 80) = v25 + 1;
              v26 = *&v24[2 * v25 + 2];
            }

            else
            {
              v27 = sub_141BC34(*(a1 + 72));
              v26 = sub_19593CC(a1 + 72, v27);
              v23 = *v61;
            }

            v22 = sub_220AE78(a3, v26, v23);
            *v61 = v22;
            if (!v22)
            {
              goto LABEL_114;
            }

            if (*a3 <= v22 || *v22 != 18)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_100;
      }

      if (v11 == 9)
      {
        if (v8 == 74)
        {
          v39 = v7 - 1;
          while (1)
          {
            v40 = v39 + 1;
            *v61 = v39 + 1;
            v41 = *(a1 + 112);
            if (v41 && (v42 = *(a1 + 104), v42 < *v41))
            {
              *(a1 + 104) = v42 + 1;
              v43 = *&v41[2 * v42 + 2];
            }

            else
            {
              v44 = sub_185EA2C(*(a1 + 96));
              v43 = sub_19593CC(a1 + 96, v44);
              v40 = *v61;
            }

            v39 = sub_222EA30(a3, v43, v40);
            *v61 = v39;
            if (!v39)
            {
              goto LABEL_114;
            }

            if (*a3 <= v39 || *v39 != 74)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_100;
      }

      if (v11 == 10)
      {
        if (v8 == 82)
        {
          v47 = v7 - 1;
          while (1)
          {
            v48 = v47 + 1;
            *v61 = v47 + 1;
            v49 = *(a1 + 136);
            if (v49 && (v50 = *(a1 + 128), v50 < *v49))
            {
              *(a1 + 128) = v50 + 1;
              v51 = *&v49[2 * v50 + 2];
            }

            else
            {
              v52 = sub_185E9D0(*(a1 + 120));
              v51 = sub_19593CC(a1 + 120, v52);
              v48 = *v61;
            }

            v47 = sub_2241EFC(a3, v51, v48);
            *v61 = v47;
            if (!v47)
            {
              goto LABEL_114;
            }

            if (*a3 <= v47 || *v47 != 82)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_100;
      }

      if (v11 != 11 || v8 != 90)
      {
        goto LABEL_100;
      }

      *(a1 + 40) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 168);
      goto LABEL_81;
    }

    if (v8 >> 3 <= 0xD)
    {
      if (v11 == 12)
      {
        if (v8 != 98)
        {
          goto LABEL_100;
        }

        *(a1 + 40) |= 8u;
        v35 = *(a1 + 192);
        if (!v35)
        {
          v36 = *(a1 + 8);
          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v37 = *v37;
          }

          v35 = sub_191BA60(v37);
          *(a1 + 192) = v35;
          v7 = *v61;
        }

        v38 = sub_2201310(a3, v35, v7);
LABEL_82:
        *v61 = v38;
        if (!v38)
        {
          goto LABEL_114;
        }

        goto LABEL_83;
      }

      if (v11 != 13 || v8 != 106)
      {
        goto LABEL_100;
      }

      *(a1 + 40) |= 2u;
      v28 = *(a1 + 8);
      v13 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v13 = *v13;
      }

      v14 = (a1 + 176);
LABEL_81:
      v46 = sub_194DB04(v14, v13);
      v38 = sub_1958890(v46, *v61, a3);
      goto LABEL_82;
    }

    if (v11 == 14)
    {
      if (v8 != 114)
      {
        goto LABEL_100;
      }

      *(a1 + 40) |= 4u;
      v45 = *(a1 + 8);
      v13 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v13 = *v13;
      }

      v14 = (a1 + 184);
      goto LABEL_81;
    }

    if (v11 != 15)
    {
      break;
    }

    if (v8 != 120)
    {
      goto LABEL_100;
    }

    v5 |= 0x10u;
    v54 = (v7 + 1);
    v53 = *v7;
    if ((v53 & 0x8000000000000000) == 0)
    {
      goto LABEL_99;
    }

    v55 = *v54;
    v53 = (v55 << 7) + v53 - 128;
    if ((v55 & 0x80000000) == 0)
    {
      v54 = (v7 + 2);
LABEL_99:
      *v61 = v54;
      *(a1 + 200) = v53;
      goto LABEL_83;
    }

    v59 = sub_19587DC(v7, v53);
    *v61 = v59;
    *(a1 + 200) = v60;
    if (!v59)
    {
      goto LABEL_114;
    }

LABEL_83:
    if (sub_195ADC0(a3, v61, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 16 && v8 == 130)
  {
    v15 = (v7 - 2);
    while (1)
    {
      v16 = (v15 + 2);
      *v61 = v15 + 2;
      v17 = *(a1 + 160);
      if (v17 && (v18 = *(a1 + 152), v18 < *v17))
      {
        *(a1 + 152) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = sub_185E8F4(*(a1 + 144));
        v19 = sub_19593CC(a1 + 144, v20);
        v16 = *v61;
      }

      v15 = sub_2244450(a3, v19, v16);
      *v61 = v15;
      if (!v15)
      {
        goto LABEL_114;
      }

      if (*a3 <= v15 || *v15 != 386)
      {
        goto LABEL_83;
      }
    }
  }

LABEL_100:
  if (v8)
  {
    v56 = (v8 & 7) == 4;
  }

  else
  {
    v56 = 1;
  }

  if (!v56)
  {
    if (v8 - 1600 > 0xF9F)
    {
      v57 = *(a1 + 8);
      if (v57)
      {
        v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v58 = sub_11F1920((a1 + 8));
        v7 = *v61;
      }

      v38 = sub_1952690(v8, v58, v7, a3);
    }

    else
    {
      v38 = sub_19525AC((a1 + 16), v8, v7, &off_2782F78, (a1 + 8), a3);
    }

    goto LABEL_82;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_114:
  *v61 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v61;
}

char *sub_17B2418(uint64_t a1, char *a2, void *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 64) + 8 * i + 8);
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

      a2 = sub_140D73C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 88) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 44);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_14105FC(v13, v15, a3);
    }
  }

  v16 = *(a1 + 104);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v18 = *(*(a1 + 112) + 8 * k + 8);
      *a2 = 74;
      v19 = *(v18 + 44);
      a2[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, a2 + 1);
      }

      else
      {
        v20 = a2 + 2;
      }

      a2 = sub_17B40C0(v18, v20, a3);
    }
  }

  v21 = *(a1 + 128);
  if (v21)
  {
    for (m = 0; m != v21; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v23 = *(*(a1 + 136) + 8 * m + 8);
      *a2 = 82;
      v24 = *(v23 + 44);
      a2[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, a2 + 1);
      }

      else
      {
        v25 = a2 + 2;
      }

      a2 = sub_17B3654(v23, v25, a3);
    }
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    a2 = sub_128AEEC(a3, 11, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v26 & 8) == 0)
    {
LABEL_35:
      if ((v26 & 2) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_46;
    }
  }

  else if ((v26 & 8) == 0)
  {
    goto LABEL_35;
  }

  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v28 = *(a1 + 192);
  *a2 = 98;
  v29 = *(v28 + 44);
  a2[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, a2 + 1);
  }

  else
  {
    v30 = a2 + 2;
  }

  a2 = sub_1917694(v28, v30, a3);
  if ((v26 & 2) == 0)
  {
LABEL_36:
    if ((v26 & 4) == 0)
    {
      goto LABEL_37;
    }

LABEL_47:
    a2 = sub_128AEEC(a3, 14, *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v26 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_48;
  }

LABEL_46:
  a2 = sub_128AEEC(a3, 13, *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v26 & 4) != 0)
  {
    goto LABEL_47;
  }

LABEL_37:
  if ((v26 & 0x10) == 0)
  {
LABEL_38:
    v27 = a2;
    goto LABEL_55;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v31 = *(a1 + 200);
  *a2 = 120;
  a2[1] = v31;
  if (v31 > 0x7F)
  {
    a2[1] = v31 | 0x80;
    v32 = v31 >> 7;
    a2[2] = v31 >> 7;
    v27 = a2 + 3;
    if (v31 >= 0x4000)
    {
      LOBYTE(v33) = a2[2];
      do
      {
        *(v27 - 1) = v33 | 0x80;
        v33 = v32 >> 7;
        *v27++ = v32 >> 7;
        v34 = v32 >> 14;
        v32 >>= 7;
      }

      while (v34);
    }
  }

  else
  {
    v27 = a2 + 2;
  }

LABEL_55:
  v35 = *(a1 + 152);
  if (v35)
  {
    for (n = 0; n != v35; ++n)
    {
      if (*a3 <= v27)
      {
        v27 = sub_225EB68(a3, v27);
      }

      v37 = *(*(a1 + 160) + 8 * n + 8);
      *v27 = 386;
      v38 = *(v37 + 20);
      v27[2] = v38;
      if (v38 > 0x7F)
      {
        v39 = sub_19575D0(v38, v27 + 2);
      }

      else
      {
        v39 = v27 + 3;
      }

      v27 = sub_17B11C0(v37, v39, a3);
    }
  }

  if (*(a1 + 26))
  {
    v27 = sub_1953428(a1 + 16, 200, 700, v27, a3);
  }

  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v27;
  }

  v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
  v43 = *(v42 + 31);
  if (v43 < 0)
  {
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
  }

  else
  {
    v44 = (v42 + 8);
  }

  if (*a3 - v27 >= v43)
  {
    v45 = v43;
    memcpy(v27, v44, v43);
    v27 += v45;
    return v27;
  }

  return sub_1957130(a3, v44, v43, v27);
}

uint64_t sub_17B28E0(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_140DEF8(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + v10;
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_1410960(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  v19 = *(a1 + 112);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_17B429C(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 128);
  v25 = v18 + v24;
  v26 = *(a1 + 136);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = sub_17B38C0(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 152);
  v32 = v25 + 2 * v31;
  v33 = *(a1 + 160);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_17B13D4(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 40);
  if ((v38 & 0x1F) == 0)
  {
    goto LABEL_38;
  }

  if (v38)
  {
    v41 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(v41 + 23);
    v43 = *(v41 + 8);
    if ((v42 & 0x80u) == 0)
    {
      v43 = v42;
    }

    v32 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v38 & 2) == 0)
    {
LABEL_34:
      if ((v38 & 4) == 0)
      {
        goto LABEL_35;
      }

LABEL_46:
      v47 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
      v48 = *(v47 + 23);
      v49 = *(v47 + 8);
      if ((v48 & 0x80u) == 0)
      {
        v49 = v48;
      }

      v32 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v38 & 8) == 0)
      {
LABEL_36:
        if ((v38 & 0x10) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      goto LABEL_49;
    }
  }

  else if ((v38 & 2) == 0)
  {
    goto LABEL_34;
  }

  v44 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v44 + 23);
  v46 = *(v44 + 8);
  if ((v45 & 0x80u) == 0)
  {
    v46 = v45;
  }

  v32 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v38 & 4) != 0)
  {
    goto LABEL_46;
  }

LABEL_35:
  if ((v38 & 8) == 0)
  {
    goto LABEL_36;
  }

LABEL_49:
  v50 = sub_1917844(*(a1 + 192));
  v32 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v38 & 0x10) != 0)
  {
LABEL_37:
    v32 += ((9 * (__clz(*(a1 + 200) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_38:
  v39 = *(a1 + 8);
  if (v39)
  {
    v51 = v39 & 0xFFFFFFFFFFFFFFFCLL;
    v52 = *((v39 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v52 < 0)
    {
      v52 = *(v51 + 16);
    }

    v32 += v52;
  }

  *(a1 + 44) = v32;
  return v32;
}

void sub_17B2C0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144C5C4((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_144C7F4((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_166F468((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
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
    sub_193CD58((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
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
    sub_193CDE4((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 40);
  if ((v29 & 0x1F) != 0)
  {
    if (v29)
    {
      v31 = *(a2 + 168);
      *(a1 + 40) |= 1u;
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_194EA1C((a1 + 168), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
      if ((v29 & 2) == 0)
      {
LABEL_19:
        if ((v29 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_19;
    }

    v34 = *(a2 + 176);
    *(a1 + 40) |= 2u;
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    sub_194EA1C((a1 + 176), (v34 & 0xFFFFFFFFFFFFFFFELL), v36);
    if ((v29 & 4) == 0)
    {
LABEL_20:
      if ((v29 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }

LABEL_34:
    v37 = *(a2 + 184);
    *(a1 + 40) |= 4u;
    v38 = *(a1 + 8);
    v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
    if (v38)
    {
      v39 = *v39;
    }

    sub_194EA1C((a1 + 184), (v37 & 0xFFFFFFFFFFFFFFFELL), v39);
    if ((v29 & 8) == 0)
    {
LABEL_21:
      if ((v29 & 0x10) == 0)
      {
LABEL_23:
        *(a1 + 40) |= v29;
        goto LABEL_24;
      }

LABEL_22:
      *(a1 + 200) = *(a2 + 200);
      goto LABEL_23;
    }

LABEL_37:
    *(a1 + 40) |= 8u;
    v40 = *(a1 + 192);
    if (!v40)
    {
      v41 = *(a1 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v40 = sub_191BA60(v42);
      *(a1 + 192) = v40;
    }

    if (*(a2 + 192))
    {
      v43 = *(a2 + 192);
    }

    else
    {
      v43 = &off_278B870;
    }

    sub_17A8DBC(v40, v43);
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  sub_225EA0C(a1 + 16, a2 + 16);
  v30 = *(a2 + 8);
  if (v30)
  {

    sub_1957EF4((a1 + 8), (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17B2F64(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_140E690(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 80);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_1410D08(*(*(a1 + 88) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 104);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_17B44D8(*(*(a1 + 112) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 128);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_17B3B94(*(*(a1 + 136) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_17B3058(a1 + 144);
    if (result)
    {
      if ((*(a1 + 40) & 8) == 0)
      {
        return 1;
      }

      result = sub_17A8EF8(*(a1 + 192));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_17B3058(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_16F061C(*(v3 + 24));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

void *sub_17B30C4(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_270BAD8;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = &qword_278E990;
  a1[10] = 0;
  a1[11] = 0;
  return a1;
}

void sub_17B3140(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17B3170(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2783048)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      sub_1917370(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_166EF40((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B3250(uint64_t a1)
{
  sub_17B3170(a1);

  operator delete();
}

uint64_t sub_17B3288(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17B3DC4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 3) != 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v7 + 23) & 0x80000000) == 0)
    {
      *v7 = 0;
      *(v7 + 23) = 0;
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v6 & 2) != 0)
    {
LABEL_10:
      result = sub_17A82BC(*(a1 + 80));
    }
  }

LABEL_11:
  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 80) = 0;
  *(v8 + 32) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_17B335C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_40;
        }

        *(a1 + 40) |= 1u;
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v28 = sub_194DB04((a1 + 72), v27);
        v22 = sub_1958890(v28, *v34, a3);
      }

      else
      {
        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_40;
        }

        *(a1 + 40) |= 2u;
        v19 = *(a1 + 80);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_191BA60(v21);
          *(a1 + 80) = v19;
          v7 = *v34;
        }

        v22 = sub_2201310(a3, v19, v7);
      }

LABEL_49:
      *v34 = v22;
      if (!v22)
      {
        goto LABEL_57;
      }

      goto LABEL_50;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_40;
    }

    v5 |= 4u;
    v24 = (v7 + 1);
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = (v7 + 2);
LABEL_35:
      *v34 = v24;
      *(a1 + 88) = v23;
      goto LABEL_50;
    }

    v32 = sub_19587DC(v7, v23);
    *v34 = v32;
    *(a1 + 88) = v33;
    if (!v32)
    {
      goto LABEL_57;
    }

LABEL_50:
    if (sub_195ADC0(a3, v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3 && v8 == 26)
  {
    v13 = v7 - 1;
    while (1)
    {
      v14 = v13 + 1;
      *v34 = v13 + 1;
      v15 = *(a1 + 64);
      if (v15 && (v16 = *(a1 + 56), v16 < *v15))
      {
        *(a1 + 56) = v16 + 1;
        v17 = *&v15[2 * v16 + 2];
      }

      else
      {
        v18 = sub_185EA2C(*(a1 + 48));
        v17 = sub_19593CC(a1 + 48, v18);
        v14 = *v34;
      }

      v13 = sub_222EA30(a3, v17, v14);
      *v34 = v13;
      if (!v13)
      {
        goto LABEL_57;
      }

      if (*a3 <= v13 || *v13 != 26)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_40:
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
    if (v8 - 1600 > 0xF9F)
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

      v22 = sub_1952690(v8, v31, v7, a3);
    }

    else
    {
      v22 = sub_19525AC((a1 + 16), v8, v7, &off_2783048, (a1 + 8), a3);
    }

    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_57:
  *v34 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v34;
}

char *sub_17B3654(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 88);
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

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
      *v6 = 26;
      v14 = *(v13 + 44);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_17B40C0(v13, v15, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 4, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 80);
    *v6 = 42;
    v17 = *(v16 + 44);
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v6 + 1);
    }

    else
    {
      v18 = v6 + 2;
    }

    v6 = sub_1917694(v16, v18, a3);
  }

  if (*(a1 + 26))
  {
    v6 = sub_1953428(a1 + 16, 200, 700, v6, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v22)
  {
    v24 = v22;
    memcpy(v6, v23, v22);
    v6 += v24;
    return v6;
  }

  return sub_1957130(a3, v23, v22, v6);
}

uint64_t sub_17B38C0(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_17B429C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      v13 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v10 & 2) == 0)
      {
LABEL_10:
        if ((v10 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

    v16 = sub_1917844(*(a1 + 80));
    v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) != 0)
    {
LABEL_11:
      v4 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_12:
  v11 = *(a1 + 8);
  if (v11)
  {
    v17 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v4 += v18;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_17B3A1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_166F468((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 7) != 0)
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
LABEL_9:
          *(a1 + 40) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 88) = *(a2 + 88);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 40) |= 2u;
    v14 = *(a1 + 80);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_191BA60(v16);
      *(a1 + 80) = v14;
    }

    if (*(a2 + 80))
    {
      v17 = *(a2 + 80);
    }

    else
    {
      v17 = &off_278B870;
    }

    sub_17A8DBC(v14, v17);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17B3B94(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_17B44D8(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 2) == 0)
    {
      return 1;
    }

    result = sub_17A8EF8(*(a1 + 80));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_17B3C14(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_270BB58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void sub_17B3C88(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17B3CB8(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_27830A8 && *(a1 + 56))
  {
    sub_14B662C();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B3D8C(uint64_t a1)
{
  sub_17B3CB8(a1);

  operator delete();
}

uint64_t sub_17B3DC4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      *v4 = 0;
      *(v4 + 23) = 0;
LABEL_5:
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v3 & 2) != 0)
    {
LABEL_6:
      result = sub_144E6A8(*(a1 + 56));
    }
  }

LABEL_7:
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 56) = 0;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_17B3E64(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    v10 = v7 >> 3;
    if (v7 >> 3 != 5)
    {
      break;
    }

    if (v7 != 42)
    {
      goto LABEL_13;
    }

    *(a1 + 40) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = sub_194DB04((a1 + 48), v18);
    v13 = sub_1958890(v19, *v25, a3);
LABEL_38:
    *v25 = v13;
    if (!v13)
    {
      goto LABEL_47;
    }

LABEL_39:
    if (sub_195ADC0(a3, v25, a3[11].i32[1]))
    {
      return *v25;
    }
  }

  if (v10 == 4)
  {
    if (v7 != 34)
    {
      goto LABEL_13;
    }

    *(a1 + 40) |= 2u;
    v14 = *(a1 + 56);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_14BF484(v16);
      *(a1 + 56) = v14;
      v6 = *v25;
    }

    v13 = sub_2209138(a3, v14, v6);
    goto LABEL_38;
  }

  if (v10 == 1 && v7 == 8)
  {
    v21 = (v6 + 1);
    v20 = *v6;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if (v22 < 0)
    {
      *v25 = sub_19587DC(v6, v20);
      if (!*v25)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v21 = (v6 + 2);
LABEL_32:
      *v25 = v21;
    }

    if (v20 > 4)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 40) |= 4u;
      *(a1 + 64) = v20;
    }

    goto LABEL_39;
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

  if (!v12)
  {
    if (v7 - 1600 > 0xF9F)
    {
      v23 = *(a1 + 8);
      if (v23)
      {
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v24 = sub_11F1920((a1 + 8));
        v6 = *v25;
      }

      v13 = sub_1952690(v7, v24, v6, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v7, v6, &off_27830A8, (a1 + 8), a3);
    }

    goto LABEL_38;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v25;
  }

LABEL_47:
  *v25 = 0;
  return *v25;
}

char *sub_17B40C0(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 4) != 0)
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 56);
    *v6 = 34;
    v12 = *(v11 + 44);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_14B6D24(v11, v13, a3);
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 5, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if (*(a1 + 26))
  {
    v6 = sub_1953428(a1 + 16, 200, 700, v6, a3);
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

uint64_t sub_17B429C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if ((v4 & 7) == 0)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = sub_14B71B8(*(a1 + 56));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v9 = *(a1 + 64);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v10;
LABEL_14:
  v11 = *(a1 + 8);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v3 += v14;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_17B43BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 48), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 40) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 64) = *(a2 + 64);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 40) |= 2u;
    v9 = *(a1 + 56);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v9 = sub_14BF484(v11);
      *(a1 + 56) = v9;
    }

    if (*(a2 + 56))
    {
      v12 = *(a2 + 56);
    }

    else
    {
      v12 = &off_2773AC8;
    }

    sub_144F194(v9, v12);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17B44D8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 2) == 0)
    {
      return 1;
    }

    result = sub_144F5D0(*(a1 + 56));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_17B452C(void *a1)
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

void sub_17B45A0(void *a1)
{
  sub_17B452C(a1);

  operator delete();
}

uint64_t *sub_17B45D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17B45E8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17B467C(uint64_t a1)
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

std::string *sub_17B46A8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17B46DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_270BC58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_144C880(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
    v9 = *(a1 + 24) + v6;
    *(a1 + 24) = v9;
    v10 = *(a1 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 40) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_17B47BC(_Unwind_Exception *a1)
{
  sub_144B7D4(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17B4800(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144B7D4(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B4880(void *a1)
{
  sub_17B4800(a1);

  operator delete();
}

uint64_t sub_17B48B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1414AB4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_17B4934(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_141BE00(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_220AF08(a3, v16, v13);
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

char *sub_17B4AC4(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_14153AC(v8, v10, a3);
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

uint64_t sub_17B4C04(uint64_t a1)
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
      v7 = sub_1415A1C(v6);
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

void sub_17B4CAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_144C880((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_17B4D68(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1416118(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_17B4DD0(void *a1)
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

void sub_17B4E44(void *a1)
{
  sub_17B4DD0(a1);

  operator delete();
}

uint64_t *sub_17B4E7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17B4E8C(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17B4F20(uint64_t a1)
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

std::string *sub_17B4F4C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17B4F80(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270BD58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a2;
  *(a1 + 64) = 0;
  return a1;
}

void sub_17B4FF0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17B5020(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270BD58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    v8 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48(a1 + 40, v8, (v7 + 8), v6, **(a1 + 56) - *(a1 + 48));
    v9 = *(a1 + 48) + v6;
    *(a1 + 48) = v9;
    v10 = *(a1 + 56);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 64) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  return a1;
}

void sub_17B5114(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17B5160(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 5);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B51E4(void *a1)
{
  sub_17B5160(a1);

  operator delete();
}

uint64_t sub_17B521C(uint64_t a1)
{
  sub_1951124((a1 + 16));
  result = sub_12A41D0(a1 + 40);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_17B5274(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v22 = a2;
  if ((sub_195ADC0(a3, v22, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = (*v22 + 1);
      v6 = **v22;
      if (**v22 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(*v22, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = (*v22 + 2);
        }
      }

      *v22 = v5;
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          *v22 = v11 + 1;
          v13 = *(a1 + 56);
          if (v13 && (v14 = *(a1 + 48), v14 < *v13))
          {
            *(a1 + 48) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = *(a1 + 40);
            if (!v16)
            {
              operator new();
            }

            *v18 = v17;
            v18[1] = sub_195A650;
            *v17 = 0;
            v17[1] = 0;
            v17[2] = 0;
            v15 = sub_19593CC(a1 + 40, v17);
            v12 = *v22;
          }

          v11 = sub_1958890(v15, v12, a3);
          *v22 = v11;
          if (!v11)
          {
            goto LABEL_33;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_28;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      if (v6 - 1600 > 0xF9F)
      {
        v19 = *(a1 + 8);
        if (v19)
        {
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v20 = sub_11F1920((a1 + 8));
          v5 = *v22;
        }

        v10 = sub_1952690(v6, v20, v5, a3);
      }

      else
      {
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_2783150, (a1 + 8), a3);
      }

      *v22 = v10;
      if (!v10)
      {
        goto LABEL_33;
      }

LABEL_28:
      if (sub_195ADC0(a3, v22, a3[11].i32[1]))
      {
        return *v22;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return *v22;
    }

LABEL_33:
    *v22 = 0;
  }

  return *v22;
}

char *sub_17B548C(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 48);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 56) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = sub_1957480(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = a2 + 2;
        memcpy(v10, v8, v9);
        a2 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 200, 700, a2, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
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

  if (*a3 - a2 >= v14)
  {
    v16 = v14;
    memcpy(a2, v15, v14);
    a2 += v16;
    return a2;
  }

  return sub_1957130(a3, v15, v14, a2);
}

uint64_t sub_17B5604(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  result = v2 + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 56) + 8);
    do
    {
      v6 = *v5++;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      result += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      --v3;
    }

    while (v3);
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

  *(a1 + 64) = result;
  return result;
}

void sub_17B56AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48(a1 + 40, v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_17B578C(void *a1)
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

void sub_17B5800(void *a1)
{
  sub_17B578C(a1);

  operator delete();
}

uint64_t *sub_17B5838(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17B5848(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17B58DC(uint64_t a1)
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

std::string *sub_17B5908(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17B593C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270BE58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a2;
  *(a1 + 64) = 0;
  return a1;
}

void sub_17B59AC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17B59DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270BE58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    v8 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193CE70((a1 + 40), v8, (v7 + 8), v6, **(a1 + 56) - *(a1 + 48));
    v9 = *(a1 + 48) + v6;
    *(a1 + 48) = v9;
    v10 = *(a1 + 56);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 64) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  return a1;
}

void sub_17B5AD0(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17B5B20(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_193ACA4(a1 + 5);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B5BA8(void *a1)
{
  sub_17B5B20(a1);

  operator delete();
}

uint64_t sub_17B5BE0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 56) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17AF9C0(v5);
      --v3;
    }

    while (v3);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_17B5C64(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  if ((sub_195ADC0(a3, &v20, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v20 + 1;
      v6 = *v20;
      if (*v20 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v20, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v20 + 2;
        }
      }

      v20 = v5;
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v20 = v11 + 1;
          v13 = *(a1 + 56);
          if (v13 && (v14 = *(a1 + 48), v14 < *v13))
          {
            *(a1 + 48) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_185E820(*(a1 + 40));
            v15 = sub_19593CC(a1 + 40, v16);
            v12 = v20;
          }

          v11 = sub_2241C2C(a3, v15, v12);
          v20 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_26;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      if (v6 - 4000 > 0xF9F)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v18 = sub_11F1920((a1 + 8));
          v5 = v20;
        }

        v10 = sub_1952690(v6, v18, v5, a3);
      }

      else
      {
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_27831B0, (a1 + 8), a3);
      }

      v20 = v10;
      if (!v10)
      {
        return 0;
      }

LABEL_26:
      if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
      {
        return v20;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v20;
    }

    return 0;
  }

  return v20;
}

char *sub_17B5E24(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 56) + 8 * i + 8);
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

      a2 = sub_17B0114(v8, v10, a3);
    }
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 500, 1000, a2, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
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

  if (*a3 - a2 >= v14)
  {
    v16 = v14;
    memcpy(a2, v15, v14);
    a2 += v16;
    return a2;
  }

  return sub_1957130(a3, v15, v14, a2);
}

uint64_t sub_17B5F88(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_17B05D0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v4 += v13;
  }

  *(a1 + 64) = v4;
  return v4;
}

void sub_17B6034(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193CE70((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_17B60FC(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_17B0BA8(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_17B6174(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270BED8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a2;
  *(a1 + 64) = 0;
  return a1;
}

void sub_17B61E4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17B6214(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270BED8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    v8 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193CAAC((a1 + 40), v8, (v7 + 8), v6, **(a1 + 56) - *(a1 + 48));
    v9 = *(a1 + 48) + v6;
    *(a1 + 48) = v9;
    v10 = *(a1 + 56);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 64) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  return a1;
}

void sub_17B6308(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17B6358(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_193A908(a1 + 5);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B63E0(void *a1)
{
  sub_17B6358(a1);

  operator delete();
}

uint64_t sub_17B6418(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 56) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17AC758(v5);
      --v3;
    }

    while (v3);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_17B649C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  if ((sub_195ADC0(a3, &v20, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v20 + 1;
      v6 = *v20;
      if (*v20 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v20, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v20 + 2;
        }
      }

      v20 = v5;
      if (v6 == 18)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v20 = v11 + 1;
          v13 = *(a1 + 56);
          if (v13 && (v14 = *(a1 + 48), v14 < *v13))
          {
            *(a1 + 48) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_185E6EC(*(a1 + 40));
            v15 = sub_19593CC(a1 + 40, v16);
            v12 = v20;
          }

          v11 = sub_22440CC(a3, v15, v12);
          v20 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 18)
          {
            goto LABEL_26;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      if (v6 - 4000 > 0xF9F)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v18 = sub_11F1920((a1 + 8));
          v5 = v20;
        }

        v10 = sub_1952690(v6, v18, v5, a3);
      }

      else
      {
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_27831F8, (a1 + 8), a3);
      }

      v20 = v10;
      if (!v10)
      {
        return 0;
      }

LABEL_26:
      if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
      {
        return v20;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v20;
    }

    return 0;
  }

  return v20;
}

char *sub_17B665C(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 56) + 8 * i + 8);
      *a2 = 18;
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

      a2 = sub_17ACFDC(v8, v10, a3);
    }
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 500, 1000, a2, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
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

  if ((*a3 - a2) >= v14)
  {
    v16 = v14;
    memcpy(a2, v15, v14);
    a2 += v16;
    return a2;
  }

  return sub_1957130(a3, v15, v14, a2);
}

uint64_t sub_17B67C0(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_17AD560(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v4 += v13;
  }

  *(a1 + 64) = v4;
  return v4;
}

void sub_17B686C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193CAAC((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_17B6934(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_17ADBD0(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_17B69AC(uint64_t a1)
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

void sub_17B6A4C(uint64_t a1)
{
  sub_17B69AC(a1);

  operator delete();
}

uint64_t sub_17B6A84(uint64_t a1)
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

uint64_t sub_17B6ACC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v24, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v24 + 1);
    v8 = **v24;
    if (**v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v24 + 2);
      }
    }

    *v24 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_28:
      *v24 = v20;
      *(a1 + 32) = v19;
      goto LABEL_29;
    }

    v22 = sub_19587DC(v7, v19);
    *v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_36;
    }

LABEL_29:
    if (sub_195ADC0(a3, v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 24), v17);
    v15 = sub_1958890(v18, *v24, a3);
LABEL_23:
    *v24 = v15;
    if (!v15)
    {
      goto LABEL_36;
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
      v7 = *v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_23;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_36:
  *v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v24;
}

char *sub_17B6C98(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_17B6DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_10;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
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

    v2 += v9;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_17B6EAC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270BFD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  return a1;
}

void sub_17B6F20(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17B6F50(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270BFD8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    v8 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193CEFC((a1 + 40), v8, (v7 + 8), v6, **(a1 + 56) - *(a1 + 48));
    v9 = *(a1 + 48) + v6;
    *(a1 + 48) = v9;
    v10 = *(a1 + 56);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v11 = *(a2 + 64);
  if (v11)
  {
    sub_1958E5C((a1 + 64), v11);
    v12 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy(v12, *(a2 + 72), 4 * *(a2 + 64));
  }

  *(a1 + 80) = 0;
  v13 = *(a2 + 8);
  if (v13)
  {
    sub_1957EF4(v4, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  return a1;
}

void sub_17B7080(_Unwind_Exception *a1)
{
  sub_193AD28(v1 + 5);
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17B70E0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 8));
  sub_193AD28(a1 + 5);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B7170(void *a1)
{
  sub_17B70E0(a1);

  operator delete();
}

uint64_t sub_17B71A8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 56) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17B6A84(v5);
      --v3;
    }

    while (v3);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 56) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_17B7230(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
  {
    return v27;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v13 = v6 - 1;
        while (1)
        {
          v27 = v13 + 1;
          v14 = v13[1];
          if (v13[1] < 0)
          {
            v15 = v14 + (v13[2] << 7);
            v14 = v15 - 128;
            if (v13[2] < 0)
            {
              v13 = sub_1958770((v13 + 1), v15 - 128);
              v14 = v16;
            }

            else
            {
              v13 += 3;
            }
          }

          else
          {
            v13 += 2;
          }

          v27 = v13;
          v17 = *(a1 + 64);
          if (v17 == *(a1 + 68))
          {
            v18 = v17 + 1;
            sub_1958E5C((a1 + 64), v17 + 1);
            *(*(a1 + 72) + 4 * v17) = v14;
            v13 = v27;
          }

          else
          {
            *(*(a1 + 72) + 4 * v17) = v14;
            v18 = v17 + 1;
          }

          *(a1 + 64) = v18;
          if (!v13)
          {
            return 0;
          }

          if (*a3 <= v13 || *v13 != 16)
          {
            goto LABEL_45;
          }
        }
      }

      if (v7 == 18)
      {
        v12 = sub_1958918((a1 + 64), v6, a3);
        goto LABEL_44;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v19 = v6 - 1;
      while (1)
      {
        v20 = (v19 + 1);
        v27 = v19 + 1;
        v21 = *(a1 + 56);
        if (v21 && (v22 = *(a1 + 48), v22 < *v21))
        {
          *(a1 + 48) = v22 + 1;
          v23 = *&v21[2 * v22 + 2];
        }

        else
        {
          v24 = sub_185EDA4(*(a1 + 40));
          v23 = sub_19593CC(a1 + 40, v24);
          v20 = v27;
        }

        v19 = sub_22446FC(a3, v23, v20);
        v27 = v19;
        if (!v19)
        {
          return 0;
        }

        if (*a3 <= v19 || *v19 != 10)
        {
          goto LABEL_45;
        }
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if (v7 - 4000 > 0xF9F)
    {
      v25 = *(a1 + 8);
      if (v25)
      {
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v26 = sub_11F1920((a1 + 8));
        v6 = v27;
      }

      v12 = sub_1952690(v7, v26, v6, a3);
    }

    else
    {
      v12 = sub_19525AC((a1 + 16), v7, v6, &off_2783240, (a1 + 8), a3);
    }

LABEL_44:
    v27 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_45:
    if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
    {
      return v27;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v27;
  }

  return 0;
}

char *sub_17B74E8(uint64_t a1, char *a2, void *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 56) + 8 * i + 8);
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

      a2 = sub_17B6C98(v8, v10, a3);
    }
  }

  v11 = *(a1 + 64);
  if (v11 < 1)
  {
    v14 = a2;
  }

  else
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 72) + 4 * j);
      *a2 = 16;
      a2[1] = v13;
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v15 = v13 >> 7;
        a2[2] = v13 >> 7;
        v14 = a2 + 3;
        if (v13 >= 0x4000)
        {
          LOBYTE(a2) = a2[2];
          do
          {
            *(v14 - 1) = a2 | 0x80;
            LODWORD(a2) = v15 >> 7;
            *v14++ = v15 >> 7;
            v16 = v15 >> 14;
            v15 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v14 = a2 + 2;
      }

      a2 = v14;
    }
  }

  if (*(a1 + 26))
  {
    v14 = sub_1953428(a1 + 16, 500, 1000, v14, a3);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v14;
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

  if (*a3 - v14 >= v20)
  {
    v22 = v20;
    memcpy(v14, v21, v20);
    v14 += v22;
    return v14;
  }

  return sub_1957130(a3, v21, v20, v14);
}

uint64_t sub_17B76E8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_17B6DE0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  result = sub_1959E5C((a1 + 64)) + *(a1 + 64) + v4;
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

  *(a1 + 80) = result;
  return result;
}

void sub_17B77A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193CEFC((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 64);
  if (v9)
  {
    v10 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v10 + v9);
    v11 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v11 + 4 * v10), *(a2 + 72), 4 * *(a2 + 64));
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17B78C8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270C058;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_17B793C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17B796C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270C058;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    v8 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193CF88((a1 + 40), v8, (v7 + 8), v6, **(a1 + 56) - *(a1 + 48));
    v9 = *(a1 + 48) + v6;
    *(a1 + 48) = v9;
    v10 = *(a1 + 56);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v11 = *(a2 + 72);
  if (v11)
  {
    v12 = *(a2 + 80);
    v13 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_193D014((a1 + 64), v13, (v12 + 8), v11, **(a1 + 80) - *(a1 + 72));
    v14 = *(a1 + 72) + v11;
    *(a1 + 72) = v14;
    v15 = *(a1 + 80);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 88) = 0;
  v16 = *(a2 + 8);
  if (v16)
  {
    sub_1957EF4(v4, (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  return a1;
}

void sub_17B7AD0(_Unwind_Exception *a1)
{
  sub_193ADAC(v1 + 5);
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17B7B34(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_193AE30(a1 + 8);
  sub_193ADAC(a1 + 5);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B7BC8(void *a1)
{
  sub_17B7B34(a1);

  operator delete();
}

uint64_t sub_17B7C00(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 56) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17B8574(v5);
      --v3;
    }

    while (v3);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 72);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 80) + 8);
    do
    {
      v8 = *v7++;
      result = sub_17B8F38(v8);
      --v6;
    }

    while (v6);
    *(a1 + 72) = 0;
  }

  v10 = *(a1 + 8);
  v9 = (a1 + 8);
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

char *sub_17B7CAC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  if ((sub_195ADC0(a3, &v27, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
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
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v13 = v6 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            v27 = v13 + 1;
            v15 = *(a1 + 80);
            if (v15 && (v16 = *(a1 + 72), v16 < *v15))
            {
              *(a1 + 72) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = sub_185EF3C(*(a1 + 64));
              v17 = sub_19593CC(a1 + 64, v18);
              v14 = v27;
            }

            v13 = sub_224481C(a3, v17, v14);
            v27 = v13;
            if (!v13)
            {
              return 0;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_41;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v27 = v19 + 1;
          v21 = *(a1 + 56);
          if (v21 && (v22 = *(a1 + 48), v22 < *v21))
          {
            *(a1 + 48) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_185EEE0(*(a1 + 40));
            v23 = sub_19593CC(a1 + 40, v24);
            v20 = v27;
          }

          v19 = sub_224478C(a3, v23, v20);
          v27 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_41;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      if (v7 - 4000 > 0xF9F)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v26 = sub_11F1920((a1 + 8));
          v6 = v27;
        }

        v12 = sub_1952690(v7, v26, v6, a3);
      }

      else
      {
        v12 = sub_19525AC((a1 + 16), v7, v6, &off_2783298, (a1 + 8), a3);
      }

      v27 = v12;
      if (!v12)
      {
        return 0;
      }

LABEL_41:
      if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
      {
        return v27;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v27;
    }

    return 0;
  }

  return v27;
}

char *sub_17B7F10(uint64_t a1, char *a2, void *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 56) + 8 * i + 8);
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

      a2 = sub_17B88DC(v8, v10, a3);
    }
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 80) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 44);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_17B96AC(v13, v15, a3);
    }
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 500, 1000, a2, a3);
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
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

  if (*a3 - a2 >= v19)
  {
    v21 = v19;
    memcpy(a2, v20, v19);
    a2 += v21;
    return a2;
  }

  return sub_1957130(a3, v20, v19, a2);
}

uint64_t sub_17B80F8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_17B8AE8(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 72);
  v11 = v4 + v10;
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_17B9C50(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
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

    v11 += v20;
  }

  *(a1 + 88) = v11;
  return v11;
}

void sub_17B81F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193CF88((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_193D014((a1 + 64), v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_17B8318(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17B8D10(*(*(a1 + 56) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 72);
  do
  {
    v5 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = sub_195228C(*(*(a1 + 80) + 8 * v7) + 16);
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  return v5;
}

void *sub_17B83B8(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_270C0D8;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = a2;
  a1[8] = &qword_278E990;
  a1[9] = 0;
  return a1;
}

void sub_17B8430(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17B8460(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_27832F8 && *(a1 + 72))
  {
    sub_14B662C();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B853C(uint64_t a1)
{
  sub_17B8460(a1);

  operator delete();
}

uint64_t sub_17B8574(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      *v4 = 0;
      *(v4 + 23) = 0;
LABEL_5:
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v3 & 2) != 0)
    {
LABEL_6:
      result = sub_144E6A8(*(a1 + 72));
    }
  }

LABEL_7:
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_17B8614(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  if (sub_195ADC0(a3, v28, a3[11].i32[1]))
  {
    return *v28;
  }

  while (1)
  {
    v6 = (*v28 + 1);
    v7 = **v28;
    if (**v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v28 + 2);
      }
    }

    *v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 40) |= 2u;
      v20 = *(a1 + 72);
      if (!v20)
      {
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v20 = sub_14BF484(v22);
        *(a1 + 72) = v20;
        v6 = *v28;
      }

      v13 = sub_2209138(a3, v20, v6);
      goto LABEL_45;
    }

    if (v10 == 2)
    {
      break;
    }

    if (v10 != 1 || v7 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 40) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 64), v24);
    v13 = sub_1958890(v25, *v28, a3);
LABEL_45:
    *v28 = v13;
    if (!v13)
    {
      goto LABEL_53;
    }

LABEL_46:
    if (sub_195ADC0(a3, v28, a3[11].i32[1]))
    {
      return *v28;
    }
  }

  if (v7 == 16)
  {
    v14 = v6 - 1;
    while (1)
    {
      *v28 = v14 + 1;
      v15 = v14[1];
      if (v14[1] < 0)
      {
        v16 = v15 + (v14[2] << 7);
        v15 = v16 - 128;
        if (v14[2] < 0)
        {
          v14 = sub_1958770((v14 + 1), v16 - 128);
          v15 = v17;
        }

        else
        {
          v14 += 3;
        }
      }

      else
      {
        v14 += 2;
      }

      *v28 = v14;
      v18 = *(a1 + 48);
      if (v18 == *(a1 + 52))
      {
        v19 = v18 + 1;
        sub_1958E5C((a1 + 48), v18 + 1);
        *(*(a1 + 56) + 4 * v18) = v15;
        v14 = *v28;
      }

      else
      {
        *(*(a1 + 56) + 4 * v18) = v15;
        v19 = v18 + 1;
      }

      *(a1 + 48) = v19;
      if (!v14)
      {
        goto LABEL_53;
      }

      if (*a3 <= v14 || *v14 != 16)
      {
        goto LABEL_46;
      }
    }
  }

  if (v7 == 18)
  {
    v13 = sub_1958918((a1 + 48), v6, a3);
    goto LABEL_45;
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

  if (!v12)
  {
    if (v7 - 4000 > 0xF9F)
    {
      v26 = *(a1 + 8);
      if (v26)
      {
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v27 = sub_11F1920((a1 + 8));
        v6 = *v28;
      }

      v13 = sub_1952690(v7, v27, v6, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v7, v6, &off_27832F8, (a1 + 8), a3);
    }

    goto LABEL_45;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v28;
  }

LABEL_53:
  *v28 = 0;
  return *v28;
}

char *sub_17B88DC(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

  v7 = *(a1 + 48);
  if (v7 < 1)
  {
    v10 = v4;
  }

  else
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 56) + 4 * i);
      *v4 = 16;
      v4[1] = v9;
      if (v9 > 0x7F)
      {
        v4[1] = v9 | 0x80;
        v11 = v9 >> 7;
        v4[2] = v9 >> 7;
        v10 = v4 + 3;
        if (v9 >= 0x4000)
        {
          LOBYTE(v12) = v4[2];
          do
          {
            *(v10 - 1) = v12 | 0x80;
            v12 = v11 >> 7;
            *v10++ = v11 >> 7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        v10 = v4 + 2;
      }

      v4 = v10;
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v10)
    {
      v10 = sub_225EB68(a3, v10);
    }

    v14 = *(a1 + 72);
    *v10 = 26;
    v15 = *(v14 + 44);
    v10[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v10 + 1);
    }

    else
    {
      v16 = v10 + 2;
    }

    v10 = sub_14B6D24(v14, v16, a3);
  }

  if (*(a1 + 26))
  {
    v10 = sub_1953428(a1 + 16, 500, 1000, v10, a3);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v10;
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

  if (*a3 - v10 >= v20)
  {
    v22 = v20;
    memcpy(v10, v21, v20);
    v10 += v22;
    return v10;
  }

  return sub_1957130(a3, v21, v20, v10);
}

uint64_t sub_17B8AE8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959E5C((a1 + 48)) + v2 + *(a1 + 48);
  v4 = *(a1 + 40);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v4 & 2) != 0)
    {
      v8 = sub_14B71B8(*(a1 + 72));
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

  *(a1 + 44) = v3;
  return v3;
}

void sub_17B8BD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = (a1 + 48);
    v6 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v6 + v4);
    v7 = *(a1 + 56);
    *v5 += *(a2 + 48);
    memcpy((v7 + 4 * v6), *(a2 + 56), 4 * *(a2 + 48));
  }

  v8 = *(a2 + 40);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a2 + 64);
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_194EA1C((a1 + 64), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    }

    if ((v8 & 2) != 0)
    {
      *(a1 + 40) |= 2u;
      v12 = *(a1 + 72);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_14BF484(v14);
        *(a1 + 72) = v12;
      }

      if (*(a2 + 72))
      {
        v15 = *(a2 + 72);
      }

      else
      {
        v15 = &off_2773AC8;
      }

      sub_144F194(v12, v15);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((a1 + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17B8D10(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 2) == 0)
    {
      return 1;
    }

    result = sub_144F5D0(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_17B8D64(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270C158;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = &qword_278E990;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = &qword_278E990;
  *(a1 + 128) = 0;
  return a1;
}

void sub_17B8DF8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17B8E28(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956ABC(a1 + 80);
  sub_1956ABC(a1 + 64);
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17B8F00(uint64_t a1)
{
  sub_17B8E28(a1);

  operator delete();
}

unsigned __int8 *sub_17B8F38(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_11:
  if ((v3 & 0x7C) != 0)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_17B9010(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 <= 7)
      {
        if (v11 == 6)
        {
          if (v8 == 48)
          {
            v31 = v7 - 1;
            while (1)
            {
              *v64 = v31 + 1;
              v32 = v31[1];
              if (v31[1] < 0)
              {
                v33 = v32 + (v31[2] << 7);
                v32 = v33 - 128;
                if (v31[2] < 0)
                {
                  v31 = sub_1958770((v31 + 1), v33 - 128);
                  v32 = v34;
                }

                else
                {
                  v31 += 3;
                }
              }

              else
              {
                v31 += 2;
              }

              *v64 = v31;
              v35 = *(a1 + 48);
              if (v35 == *(a1 + 52))
              {
                v36 = v35 + 1;
                sub_1958E5C((a1 + 48), v35 + 1);
                *(*(a1 + 56) + 4 * v35) = v32;
                v31 = *v64;
              }

              else
              {
                *(*(a1 + 56) + 4 * v35) = v32;
                v36 = v35 + 1;
              }

              *(a1 + 48) = v36;
              if (!v31)
              {
                goto LABEL_134;
              }

              if (*a3 <= v31 || *v31 != 48)
              {
                goto LABEL_102;
              }
            }
          }

          if (v8 != 50)
          {
            goto LABEL_121;
          }

          v60 = (a1 + 48);
        }

        else
        {
          if (v11 != 7)
          {
            goto LABEL_121;
          }

          if (v8 == 56)
          {
            v22 = v7 - 1;
            while (1)
            {
              *v64 = v22 + 1;
              v23 = v22[1];
              if (v22[1] < 0)
              {
                v24 = v23 + (v22[2] << 7);
                v23 = v24 - 128;
                if (v22[2] < 0)
                {
                  v22 = sub_1958770((v22 + 1), v24 - 128);
                  v23 = v25;
                }

                else
                {
                  v22 += 3;
                }
              }

              else
              {
                v22 += 2;
              }

              *v64 = v22;
              v26 = *(a1 + 64);
              if (v26 == *(a1 + 68))
              {
                v27 = v26 + 1;
                sub_1958E5C((a1 + 64), v26 + 1);
                *(*(a1 + 72) + 4 * v26) = v23;
                v22 = *v64;
              }

              else
              {
                *(*(a1 + 72) + 4 * v26) = v23;
                v27 = v26 + 1;
              }

              *(a1 + 64) = v27;
              if (!v22)
              {
                goto LABEL_134;
              }

              if (*a3 <= v22 || *v22 != 56)
              {
                goto LABEL_102;
              }
            }
          }

          if (v8 != 58)
          {
            goto LABEL_121;
          }

          v60 = (a1 + 64);
        }

        v51 = sub_1958918(v60, v7, a3);
      }

      else if (v11 == 8)
      {
        if (v8 == 64)
        {
          v40 = v7 - 1;
          while (1)
          {
            *v64 = v40 + 1;
            v41 = v40[1];
            if (v41 < 0)
            {
              v42 = (v40[2] << 7) + v41;
              v41 = (v42 - 128);
              if (v40[2] < 0)
              {
                v40 = sub_19587DC((v40 + 1), (v42 - 128));
                v41 = v43;
              }

              else
              {
                v40 += 3;
              }
            }

            else
            {
              v40 += 2;
            }

            *v64 = v40;
            v44 = *(a1 + 80);
            if (v44 == *(a1 + 84))
            {
              v45 = v44 + 1;
              sub_1959094((a1 + 80), v44 + 1);
              *(*(a1 + 88) + 8 * v44) = v41;
              v40 = *v64;
            }

            else
            {
              *(*(a1 + 88) + 8 * v44) = v41;
              v45 = v44 + 1;
            }

            *(a1 + 80) = v45;
            if (!v40)
            {
              goto LABEL_134;
            }

            if (*a3 <= v40 || *v40 != 64)
            {
              goto LABEL_102;
            }
          }
        }

        if (v8 != 66)
        {
          goto LABEL_121;
        }

        v51 = sub_1958938((a1 + 80), v7, a3);
      }

      else
      {
        if (v11 != 9)
        {
          if (v11 != 10 || v8 != 80)
          {
            goto LABEL_121;
          }

          v16 = v7 + 1;
          v15 = *v7;
          if (v15 < 0)
          {
            v17 = *v16;
            v15 = (v17 << 7) + v15 - 128;
            if (v17 < 0)
            {
              *v64 = sub_19587DC(v7, v15);
              if (!*v64)
              {
                goto LABEL_134;
              }

              goto LABEL_26;
            }

            v16 = v7 + 2;
          }

          *v64 = v16;
LABEL_26:
          if (v15 > 4)
          {
            sub_156E728();
          }

          else
          {
            *(a1 + 40) |= 0x40u;
            *(a1 + 128) = v15;
          }

          goto LABEL_102;
        }

        if (v8 != 74)
        {
          goto LABEL_121;
        }

        *(a1 + 40) |= 2u;
        v49 = *(a1 + 8);
        v29 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if (v49)
        {
          v29 = *v29;
        }

        v30 = (a1 + 104);
LABEL_100:
        v50 = sub_194DB04(v30, v29);
        v51 = sub_1958890(v50, *v64, a3);
      }

LABEL_101:
      *v64 = v51;
      if (!v51)
      {
        goto LABEL_134;
      }

      goto LABEL_102;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_121;
        }

        v5 |= 8u;
        v37 = v7 + 1;
        v38 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

        v39 = *v37;
        v38 = v38 + (v39 << 7) - 128;
        if ((v39 & 0x80000000) == 0)
        {
          v37 = v7 + 2;
LABEL_76:
          *v64 = v37;
          *(a1 + 116) = v38;
          goto LABEL_102;
        }

        v54 = sub_1958770(v7, v38);
        *v64 = v54;
        *(a1 + 116) = v55;
        if (!v54)
        {
          goto LABEL_134;
        }
      }

      else if (v11 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_121;
        }

        v5 |= 0x10u;
        v46 = v7 + 1;
        v47 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        v48 = *v46;
        v47 = v47 + (v48 << 7) - 128;
        if ((v48 & 0x80000000) == 0)
        {
          v46 = v7 + 2;
LABEL_95:
          *v64 = v46;
          *(a1 + 120) = v47;
          goto LABEL_102;
        }

        v58 = sub_1958770(v7, v47);
        *v64 = v58;
        *(a1 + 120) = v59;
        if (!v58)
        {
          goto LABEL_134;
        }
      }

      else
      {
        if (v11 != 5 || v8 != 40)
        {
          goto LABEL_121;
        }

        v5 |= 0x20u;
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
          *v64 = v12;
          *(a1 + 124) = v13;
          goto LABEL_102;
        }

        v56 = sub_1958770(v7, v13);
        *v64 = v56;
        *(a1 + 124) = v57;
        if (!v56)
        {
          goto LABEL_134;
        }
      }

      goto LABEL_102;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_121;
    }

    v5 |= 4u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_37:
      *v64 = v19;
      *(a1 + 112) = v20;
      goto LABEL_102;
    }

    v52 = sub_1958770(v7, v20);
    *v64 = v52;
    *(a1 + 112) = v53;
    if (!v52)
    {
      goto LABEL_134;
    }

LABEL_102:
    if (sub_195ADC0(a3, v64, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 40) |= 1u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v30 = (a1 + 96);
    goto LABEL_100;
  }

LABEL_121:
  if (v8)
  {
    v61 = (v8 & 7) == 4;
  }

  else
  {
    v61 = 1;
  }

  if (!v61)
  {
    if (v8 - 4000 > 0xF9F)
    {
      v62 = *(a1 + 8);
      if (v62)
      {
        v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v63 = sub_11F1920((a1 + 8));
        v7 = *v64;
      }

      v51 = sub_1952690(v8, v63, v7, a3);
    }

    else
    {
      v51 = sub_19525AC((a1 + 16), v8, v7, &off_2783348, (a1 + 8), a3);
    }

    goto LABEL_101;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_134:
  *v64 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v64;
}