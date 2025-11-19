uint64_t sub_14EB434(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_152BAD4(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 80);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 88) + 8);
    do
    {
      v8 = *v7++;
      result = sub_1543CB4(v8);
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
      result = sub_1544188(v11);
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
      result = sub_1544970(v14);
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
      result = sub_1544EE8(v17);
      --v15;
    }

    while (v15);
    *(a1 + 152) = 0;
  }

  v18 = *(a1 + 16);
  if ((v18 & 0x1F) == 0)
  {
    goto LABEL_28;
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
        goto LABEL_40;
      }
    }

    else
    {
      *v21 = 0;
      *(v21 + 23) = 0;
      if ((v18 & 2) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_24:
    if ((v18 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_44:
    result = sub_152BAD4(*(a1 + 184));
    if ((v18 & 8) == 0)
    {
LABEL_26:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if ((v18 & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_40:
  v22 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v22 + 23) < 0)
  {
    **v22 = 0;
    *(v22 + 8) = 0;
    if ((v18 & 4) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    *v22 = 0;
    *(v22 + 23) = 0;
    if ((v18 & 4) != 0)
    {
      goto LABEL_44;
    }
  }

LABEL_25:
  if ((v18 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_45:
  result = sub_16ED178(*(a1 + 192));
  if ((v18 & 0x10) != 0)
  {
LABEL_27:
    result = sub_153FDC8(*(a1 + 200));
  }

LABEL_28:
  if ((v18 & 0xE0) != 0)
  {
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
  }

  if ((v18 & 0x300) != 0)
  {
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  v20 = *(a1 + 8);
  v19 = a1 + 8;
  *(v19 + 8) = 0;
  if (v20)
  {

    return sub_1957EA8(v19);
  }

  return result;
}

uint64_t sub_14EB618(uint64_t a1)
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

  if (a1 != &off_2774CA8)
  {
    if (*(a1 + 24))
    {
      sub_16E4E08();
      operator delete();
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      sub_1545DCC(v5);
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

void sub_14EB6E8(uint64_t a1)
{
  sub_14EB618(a1);

  operator delete();
}

uint64_t sub_14EB720(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_16E4E44(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_14EB434(*(v1 + 32));
    }
  }

  if ((v2 & 0x1C) != 0)
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

char *sub_14EB7A0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v36 + 1;
    v8 = *v36;
    if (*v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v36 + 2;
      }
    }

    v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 6)
    {
      break;
    }

    if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_44;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
          goto LABEL_28;
        }

        v36 = sub_19587DC(v7, v19);
        if (!v36)
        {
          goto LABEL_65;
        }
      }

      else
      {
LABEL_28:
        v36 = v20;
      }

      if (v19 > 5)
      {
        sub_13ED178();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 44) = v19;
      }

      goto LABEL_52;
    }

    if (v11 == 8)
    {
      if (v8 == 66)
      {
        *(a1 + 16) |= 2u;
        v22 = *(a1 + 32);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_15520A4(v24);
          v22 = v25;
          *(a1 + 32) = v25;
          v7 = v36;
        }

        v18 = sub_2204D90(a3, v22, v7);
        goto LABEL_51;
      }

      goto LABEL_44;
    }

    if (v11 != 9 || v8 != 72)
    {
      goto LABEL_44;
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
      v36 = v13;
      *(a1 + 48) = v12 != 0;
      goto LABEL_52;
    }

    v34 = sub_19587DC(v7, v12);
    v36 = v34;
    *(a1 + 48) = v35 != 0;
    if (!v34)
    {
      goto LABEL_65;
    }

LABEL_52:
    if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_44;
    }

    v26 = v7 + 1;
    v27 = *v7;
    if (v27 < 0)
    {
      v28 = *v26;
      v29 = (v28 << 7) + v27;
      LODWORD(v27) = v29 - 128;
      if (v28 < 0)
      {
        v36 = sub_19587DC(v7, (v29 - 128));
        if (!v36)
        {
          goto LABEL_65;
        }

        LODWORD(v27) = v33;
        goto LABEL_42;
      }

      v26 = v7 + 2;
    }

    v36 = v26;
LABEL_42:
    if (sub_14E9E48(v27))
    {
      *(a1 + 16) |= 4u;
      *(a1 + 40) = v27;
    }

    else
    {
      sub_1313740();
    }

    goto LABEL_52;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_16F5828(v17);
      *(a1 + 24) = v15;
      v7 = v36;
    }

    v18 = sub_21F4D60(a3, v15, v7);
LABEL_51:
    v36 = v18;
    if (!v18)
    {
      goto LABEL_65;
    }

    goto LABEL_52;
  }

LABEL_44:
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
      v7 = v36;
    }

    v18 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_51;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_65:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_14EBB00(uint64_t a1, char *__dst, unint64_t *a3)
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

    v11 = *(a1 + 24);
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

    v6 = sub_16E5070(v11, v13, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 44);
    *v6 = 56;
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v6[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v6[2] = v15 >> 7;
      v14 = v6 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v14 - 1) = v6 | 0x80;
          v6 = (v16 >> 7);
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v6 + 2;
    }
  }

  else
  {
    v14 = v6;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v18 = *(a1 + 32);
    *v14 = 66;
    v19 = *(v18 + 20);
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v14 + 1);
    }

    else
    {
      v20 = v14 + 2;
    }

    v14 = sub_1546828(v18, v20, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v21 = *(a1 + 48);
    *v14 = 72;
    v14[1] = v21;
    v14 += 2;
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v14;
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

  if ((*a3 - v14) >= v25)
  {
    v27 = v25;
    memcpy(v14, v26, v25);
    v14 += v27;
    return v14;
  }

  return sub_1957130(a3, v26, v25, v14);
}

uint64_t sub_14EBDBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_20;
  }

  if (v2)
  {
    v5 = sub_16E51F0(*(a1 + 24));
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
    v6 = sub_1546FC4(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 40);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v8;
    if ((v2 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ((v2 & 8) != 0)
  {
LABEL_15:
    v9 = *(a1 + 44);
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

LABEL_19:
  result = v3 + ((v2 >> 3) & 2);
LABEL_20:
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

void sub_14EBF04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
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

        v6 = sub_16F5828(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E5E8;
      }

      sub_16E527C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_29;
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

      sub_15520A4(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2776C60;
    }

    sub_14EC04C(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(a1 + 40) = *(a2 + 40);
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
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_8;
    }

LABEL_30:
    *(a1 + 44) = *(a2 + 44);
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

void sub_14EC04C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B4864((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_131206C((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_156DAA0((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
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
    sub_156DB2C((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
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
    sub_156DBA8((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 16);
  if (v34)
  {
    if (v34)
    {
      v36 = *(a2 + 168);
      *(a1 + 16) |= 1u;
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      sub_194EA1C((a1 + 168), (v36 & 0xFFFFFFFFFFFFFFFELL), v38);
      if ((v34 & 2) == 0)
      {
LABEL_22:
        if ((v34 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_46;
      }
    }

    else if ((v34 & 2) == 0)
    {
      goto LABEL_22;
    }

    v39 = *(a2 + 176);
    *(a1 + 16) |= 2u;
    v40 = *(a1 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    sub_194EA1C((a1 + 176), (v39 & 0xFFFFFFFFFFFFFFFELL), v41);
    if ((v34 & 4) == 0)
    {
LABEL_23:
      if ((v34 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_54;
    }

LABEL_46:
    *(a1 + 16) |= 4u;
    v42 = *(a1 + 184);
    if (!v42)
    {
      v43 = *(a1 + 8);
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
      if (v43)
      {
        v44 = *v44;
      }

      v42 = sub_1550F20(v44);
      *(a1 + 184) = v42;
    }

    if (*(a2 + 184))
    {
      v45 = *(a2 + 184);
    }

    else
    {
      v45 = &off_2776328;
    }

    sub_152D77C(v42, v45);
    if ((v34 & 8) == 0)
    {
LABEL_24:
      if ((v34 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_62;
    }

LABEL_54:
    *(a1 + 16) |= 8u;
    v46 = *(a1 + 192);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      v46 = sub_16F5E18(v48);
      *(a1 + 192) = v46;
    }

    if (*(a2 + 192))
    {
      v49 = *(a2 + 192);
    }

    else
    {
      v49 = &off_277E918;
    }

    sub_16ED814(v46, v49);
    if ((v34 & 0x10) == 0)
    {
LABEL_25:
      if ((v34 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_70;
    }

LABEL_62:
    *(a1 + 16) |= 0x10u;
    v50 = *(a1 + 200);
    if (!v50)
    {
      v51 = *(a1 + 8);
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51)
      {
        v52 = *v52;
      }

      sub_1551D64(v52);
      *(a1 + 200) = v50;
    }

    if (*(a2 + 200))
    {
      v53 = *(a2 + 200);
    }

    else
    {
      v53 = &off_27769A8;
    }

    sub_1542CDC(v50, v53);
    if ((v34 & 0x20) == 0)
    {
LABEL_26:
      if ((v34 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_71;
    }

LABEL_70:
    *(a1 + 208) = *(a2 + 208);
    if ((v34 & 0x40) == 0)
    {
LABEL_27:
      if ((v34 & 0x80) == 0)
      {
LABEL_29:
        *(a1 + 16) |= v34;
        goto LABEL_30;
      }

LABEL_28:
      *(a1 + 220) = *(a2 + 220);
      goto LABEL_29;
    }

LABEL_71:
    *(a1 + 216) = *(a2 + 216);
    if ((v34 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_30:
  if ((v34 & 0x300) != 0)
  {
    if ((v34 & 0x100) != 0)
    {
      *(a1 + 224) = *(a2 + 224);
    }

    if ((v34 & 0x200) != 0)
    {
      *(a1 + 232) = *(a2 + 232);
    }

    *(a1 + 16) |= v34;
  }

  v35 = *(a2 + 8);
  if (v35)
  {

    sub_1957EF4((a1 + 8), (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14EC4A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E5370(*(a1 + 24));
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

  result = sub_14EC4F4(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14EC4F4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    v5 = sub_152DE60(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 80);
  while (v6 >= 1)
  {
    v7 = *(*(a1 + 88) + 8 * v6--);
    if ((~*(v7 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 104);
  while (v8 >= 1)
  {
    v9 = *(*(a1 + 112) + 8 * v8--);
    if ((*(v9 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 152);
  v11 = *(a1 + 160);
  while (v10 >= 1)
  {
    v12 = v10 - 1;
    v13 = sub_154583C(*(v11 + 8 * v10));
    v10 = v12;
    if (!v13)
    {
      return 0;
    }
  }

  v14 = *(a1 + 16);
  if ((v14 & 4) != 0)
  {
    result = sub_152DE60(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v14 = *(a1 + 16);
  }

  if ((v14 & 8) != 0)
  {
    result = sub_16ED98C(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v14 = *(a1 + 16);
  }

  if ((v14 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_1543A14(*(a1 + 200));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14EC624(uint64_t a1)
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

void sub_14EC6DC(uint64_t a1)
{
  sub_14EC624(a1);

  operator delete();
}

uint64_t sub_14EC714(uint64_t a1)
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

uint64_t sub_14EC790(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_14EC910(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_14EC9F8(uint64_t a1)
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

void *sub_14ECAE4(void *a1)
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

void sub_14ECB58(void *a1)
{
  sub_14ECAE4(a1);

  operator delete();
}

uint64_t sub_14ECB90(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0x100000000;
    *(a1 + 32) = 1;
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

char *sub_14ECBC4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v25, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v25 + 1;
    v7 = *v25;
    if (*v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v25 + 2;
      }
    }

    v25 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 24)
      {
        v19 = v6 + 1;
        v18 = *v6;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v25 = sub_19587DC(v6, v18);
          if (!v25)
          {
            return 0;
          }
        }

        else
        {
          v19 = v6 + 2;
LABEL_32:
          v25 = v19;
        }

        if ((v18 - 1) > 2)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 32) = v18;
        }

        continue;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 16)
      {
        v16 = v6 + 1;
        v15 = *v6;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v25 = sub_19587DC(v6, v15);
          if (!v25)
          {
            return 0;
          }
        }

        else
        {
          v16 = v6 + 2;
LABEL_25:
          v25 = v16;
        }

        if (v15 > 7)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 1u;
          *(a1 + 24) = v15;
        }

        continue;
      }
    }

    else if (v10 == 1 && v7 == 8)
    {
      v22 = v6 + 1;
      v21 = *v6;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if (v23 < 0)
      {
        v25 = sub_19587DC(v6, v21);
        if (!v25)
        {
          return 0;
        }
      }

      else
      {
        v22 = v6 + 2;
LABEL_38:
        v25 = v22;
      }

      if ((v21 - 1) > 5)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 28) = v21;
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
        return v25;
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
      v6 = v25;
    }

    v25 = sub_1952690(v7, v14, v6, a3);
    if (!v25)
    {
      return 0;
    }
  }

  return v25;
}

char *sub_14ECE44(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 28);
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

uint64_t sub_14ED07C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_19;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
  if ((v1 & 4) != 0)
  {
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

LABEL_19:
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

void *sub_14ED180(void *a1)
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

void sub_14ED1F4(void *a1)
{
  sub_14ED180(a1);

  operator delete();
}

uint64_t sub_14ED22C(uint64_t a1)
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

char *sub_14ED244(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_14ED3B8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_14ED4E0(uint64_t a1)
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

void *sub_14ED558(void *a1)
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

void sub_14ED5D4(void *a1)
{
  sub_14ED558(a1);

  operator delete();
}

uint64_t sub_14ED60C(uint64_t a1)
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

char *sub_14ED628(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v30 + 1;
    v9 = *v30;
    if (*v30 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v30, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v30 + 2;
      }
    }

    v30 = v8;
    if (v9 >> 3 == 2)
    {
      break;
    }

    if (v9 >> 3 != 1 || v9 != 8)
    {
      goto LABEL_13;
    }

    v25 = v8 + 1;
    v26 = *v8;
    if ((*v8 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v8 + 2;
LABEL_42:
      v30 = v25;
      *(a1 + 40) = v26;
      v5 = 1;
      goto LABEL_43;
    }

    v28 = sub_1958770(v8, v26);
    v30 = v28;
    *(a1 + 40) = v29;
    v5 = 1;
    if (!v28)
    {
      goto LABEL_52;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v9 == 16)
  {
    v17 = v8 - 1;
    while (1)
    {
      v30 = v17 + 1;
      v18 = v17[1];
      v19 = v17 + 2;
      if (v18 < 0)
      {
        v20 = *v19;
        v21 = (v20 << 7) + v18;
        LODWORD(v18) = v21 - 128;
        if (v20 < 0)
        {
          v30 = sub_19587DC((v17 + 1), (v21 - 128));
          if (!v30)
          {
            goto LABEL_52;
          }

          LODWORD(v18) = v24;
          goto LABEL_28;
        }

        v19 = v17 + 3;
      }

      v30 = v19;
LABEL_28:
      if (v18 > 7)
      {
        sub_12E8418();
      }

      else
      {
        v22 = *(a1 + 24);
        if (v22 == *(a1 + 28))
        {
          v23 = v22 + 1;
          sub_1958E5C((a1 + 24), v22 + 1);
          *(*(a1 + 32) + 4 * v22) = v18;
        }

        else
        {
          *(*(a1 + 32) + 4 * v22) = v18;
          v23 = v22 + 1;
        }

        *(a1 + 24) = v23;
      }

      v17 = v30;
      if (*a3 <= v30 || *v30 != 16)
      {
        goto LABEL_43;
      }
    }
  }

  if (v9 == 18)
  {
    *&v31 = a1 + 24;
    *(&v31 + 1) = sub_14ECE38;
    v32 = a1 + 8;
    v33 = 2;
    v16 = sub_1216588(a3, v8, &v31);
    goto LABEL_20;
  }

LABEL_13:
  if (v9)
  {
    v14 = (v9 & 7) == 4;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    if (*v7)
    {
      v15 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v8 = v30;
    }

    v16 = sub_1952690(v9, v15, v8, a3);
LABEL_20:
    v30 = v16;
    if (!v16)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_52:
    v30 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_14ED8DC(uint64_t a1, char *a2, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 40);
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

  v10 = *(a1 + 24);
  if (v10 < 1)
  {
    v13 = v5;
  }

  else
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 32) + 4 * i);
      *v5 = 16;
      v5[1] = v12;
      if (v12 > 0x7F)
      {
        v5[1] = v12 | 0x80;
        v14 = v12 >> 7;
        v5[2] = v12 >> 7;
        v13 = v5 + 3;
        if (v12 >= 0x4000)
        {
          LOBYTE(v5) = v5[2];
          do
          {
            *(v13 - 1) = v5 | 0x80;
            v5 = (v14 >> 7);
            *v13++ = v14 >> 7;
            v15 = v14 >> 14;
            v14 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v13 = v5 + 2;
      }

      v5 = v13;
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v13;
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

  if (*a3 - v13 >= v19)
  {
    v21 = v19;
    memcpy(v13, v20, v19);
    v13 += v21;
    return v13;
  }

  return sub_1957130(a3, v20, v19, v13);
}

uint64_t sub_14EDAB8(uint64_t a1)
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
  if (*(a1 + 16))
  {
    v6 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v6 += v10;
  }

  *(a1 + 20) = v6;
  return v6;
}

uint64_t sub_14EDB84(uint64_t a1)
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
  if (a1 != &off_2774D80)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_14ECAE4(v6);
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

void sub_14EDC3C(uint64_t a1)
{
  sub_14EDB84(a1);

  operator delete();
}

uint64_t sub_14EDC74(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_14ECB90(*(result + 24));
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

char *sub_14EDCDC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
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
        v31 = v17;
        *(a1 + 36) = v18;
        goto LABEL_37;
      }

      v27 = sub_1958770(v7, v18);
      v31 = v27;
      *(a1 + 36) = v28;
      if (!v27)
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
      v25 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v26 = *v24;
      v25 = v25 + (v26 << 7) - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_36:
        v31 = v24;
        *(a1 + 32) = v25;
        goto LABEL_37;
      }

      v29 = sub_1958770(v7, v25);
      v31 = v29;
      *(a1 + 32) = v30;
      if (!v29)
      {
        goto LABEL_46;
      }
    }

LABEL_37:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
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

      sub_1528388(v22);
      v20 = v23;
      *(a1 + 24) = v23;
      v7 = v31;
    }

    v16 = sub_22174E8(a3, v20, v7);
LABEL_31:
    v31 = v16;
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
      v7 = v31;
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
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_14EDF18(uint64_t a1, char *__dst, _DWORD *a3)
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

    v11 = sub_14ECE44(v15, v17, a3);
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

uint64_t sub_14EE12C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    result = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_14ED07C(*(a1 + 24));
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
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_14EE210(std::string *result, uint64_t a2)
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

        sub_1528388(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2774D08;
      }

      result = sub_128F948(data, v9);
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

uint64_t sub_14EE310(uint64_t a1)
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
  if (a1 != &off_2774DA8)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_14ECAE4(v6);
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

void sub_14EE3D0(uint64_t a1)
{
  sub_14EE310(a1);

  operator delete();
}

uint64_t sub_14EE408(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_14ECB90(*(result + 40));
  }

  if ((v2 & 6) != 0)
  {
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

char *sub_14EE474(uint64_t a1, char *a2, int32x2_t *a3)
{
  v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v38 + 1;
    v9 = *v38;
    if (*v38 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v38, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v38 + 2;
      }
    }

    v38 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 > 2)
    {
      break;
    }

    if (v13 != 1)
    {
      if (v13 == 2)
      {
        if (v9 == 16)
        {
          v14 = v8 - 1;
          while (1)
          {
            v38 = v14 + 1;
            v15 = v14[1];
            v16 = v14 + 2;
            if (v15 < 0)
            {
              v17 = *v16;
              v18 = (v17 << 7) + v15;
              LODWORD(v15) = v18 - 128;
              if (v17 < 0)
              {
                v38 = sub_19587DC((v14 + 1), (v18 - 128));
                if (!v38)
                {
                  goto LABEL_65;
                }

                LODWORD(v15) = v21;
                goto LABEL_17;
              }

              v16 = v14 + 3;
            }

            v38 = v16;
LABEL_17:
            if ((v15 - 1) > 0xB)
            {
              sub_12E8418();
            }

            else
            {
              v19 = *(a1 + 24);
              if (v19 == *(a1 + 28))
              {
                v20 = v19 + 1;
                sub_1958E5C((a1 + 24), v19 + 1);
                *(*(a1 + 32) + 4 * v19) = v15;
              }

              else
              {
                *(*(a1 + 32) + 4 * v19) = v15;
                v20 = v19 + 1;
              }

              *(a1 + 24) = v20;
            }

            v14 = v38;
            if (*a3 <= v38 || *v38 != 16)
            {
              goto LABEL_60;
            }
          }
        }

        if (v9 == 18)
        {
          *&v39 = a1 + 24;
          *(&v39 + 1) = sub_14D6C94;
          v40 = a1 + 8;
          v41 = 2;
          v25 = sub_1216588(a3, v8, &v39);
          goto LABEL_59;
        }
      }

      goto LABEL_52;
    }

    if (v9 != 8)
    {
      goto LABEL_52;
    }

    v5 |= 2u;
    v26 = v8 + 1;
    v27 = *v8;
    if (*v8 < 0)
    {
      v28 = *v26;
      v27 = v27 + (v28 << 7) - 128;
      if (v28 < 0)
      {
        v32 = sub_1958770(v8, v27);
        v38 = v32;
        *(a1 + 48) = v33;
        if (!v32)
        {
          goto LABEL_65;
        }

        goto LABEL_60;
      }

      v26 = v8 + 2;
    }

    v38 = v26;
    *(a1 + 48) = v27;
LABEL_60:
    if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 == 3)
  {
    if (v9 != 24)
    {
      goto LABEL_52;
    }

    v5 |= 4u;
    v29 = v8 + 1;
    v30 = *v8;
    if (*v8 < 0)
    {
      v31 = *v29;
      v30 = v30 + (v31 << 7) - 128;
      if (v31 < 0)
      {
        v34 = sub_1958770(v8, v30);
        v38 = v34;
        *(a1 + 52) = v35;
        if (!v34)
        {
          goto LABEL_65;
        }

        goto LABEL_60;
      }

      v29 = v8 + 2;
    }

    v38 = v29;
    *(a1 + 52) = v30;
    goto LABEL_60;
  }

  if (v13 == 4 && v9 == 34)
  {
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 40);
    if (!v22)
    {
      v23 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v7)
      {
        v23 = *v23;
      }

      sub_1528388(v23);
      v22 = v24;
      *(a1 + 40) = v24;
      v8 = v38;
    }

    v25 = sub_22174E8(a3, v22, v8);
LABEL_59:
    v38 = v25;
    if (!v25)
    {
      goto LABEL_65;
    }

    goto LABEL_60;
  }

LABEL_52:
  if (v9)
  {
    v36 = (v9 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    if (*v7)
    {
      v37 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v8 = v38;
    }

    v25 = sub_1952690(v9, v37, v8, a3);
    goto LABEL_59;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_65:
    v38 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

char *sub_14EE7F4(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 48);
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

  v11 = *(a1 + 24);
  if (v11 < 1)
  {
    v14 = v6;
  }

  else
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 32) + 4 * i);
      *v6 = 16;
      v6[1] = v13;
      if (v13 > 0x7F)
      {
        v6[1] = v13 | 0x80;
        v15 = v13 >> 7;
        v6[2] = v13 >> 7;
        v14 = v6 + 3;
        if (v13 >= 0x4000)
        {
          LOBYTE(v6) = v6[2];
          do
          {
            *(v14 - 1) = v6 | 0x80;
            v6 = (v15 >> 7);
            *v14++ = v15 >> 7;
            v16 = v15 >> 14;
            v15 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v14 = v6 + 2;
      }

      v6 = v14;
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v18 = *(a1 + 52);
    *v14 = 24;
    v14[1] = v18;
    if (v18 > 0x7F)
    {
      v14[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v14[2] = v18 >> 7;
      v17 = v14 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v14) = v14[2];
        do
        {
          *(v17 - 1) = v14 | 0x80;
          LODWORD(v14) = v19 >> 7;
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v14 + 2;
    }
  }

  else
  {
    v17 = v14;
  }

  if (v5)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v21 = *(a1 + 40);
    *v17 = 34;
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

    v17 = sub_14ECE44(v21, v23, a3);
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

uint64_t sub_14EEABC(uint64_t a1)
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
  if ((v8 & 7) == 0)
  {
    goto LABEL_14;
  }

  if (v8)
  {
    v11 = sub_14ED07C(*(a1 + 40));
    v7 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v7 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
LABEL_13:
    v7 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v12 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v7 += v13;
  }

  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_14EEC00(std::string *result, uint64_t a2)
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
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v10 = v3[1].__r_.__value_.__r.__words[2];
      if (!v10)
      {
        v11 = v3->__r_.__value_.__l.__size_;
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_1528388(v12);
        v3[1].__r_.__value_.__r.__words[2] = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_2774D08;
      }

      result = sub_128F948(v10, v13);
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
        HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
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

void *sub_14EED44(void *a1)
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

  sub_14EEDC8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_14EEDC8(uint64_t result)
{
  if (result != &off_2774DE0)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      sub_14ED180(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_14ED558(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_14EDB84(v4);
      operator delete();
    }

    result = v1[6];
    if (result)
    {
      sub_14EE310(result);

      operator delete();
    }
  }

  return result;
}

void sub_14EEE94(void *a1)
{
  sub_14EED44(a1);

  operator delete();
}

uint64_t sub_14EEECC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) != 0)
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
      v5 = *(v1 + 32);
      v6 = *(v5 + 8);
      result = v5 + 8;
      *(result + 16) = 0;
      *(result + 32) = 0;
      *(result + 8) = 0;
      if (v6)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = sub_14EDC74(*(v1 + 40));
    }

    if ((v2 & 8) != 0)
    {
      result = sub_14EE408(*(v1 + 48));
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

char *sub_14EEF78(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v29, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v29 + 1;
    v7 = *v29;
    if (*v29 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v29, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v29 + 2;
      }
    }

    v29 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
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

            v22 = sub_1528528(v24);
            *(a1 + 40) = v22;
            v6 = v29;
          }

          v15 = sub_2217698(a3, v22, v6);
          goto LABEL_46;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v16 = *(a1 + 48);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_15285A4(v18);
          *(a1 + 48) = v16;
          v6 = v29;
        }

        v15 = sub_2217728(a3, v16, v6);
        goto LABEL_46;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
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

          v19 = sub_1528410(v21);
          *(a1 + 24) = v19;
          v6 = v29;
        }

        v15 = sub_2217578(a3, v19, v6);
        goto LABEL_46;
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

        v12 = sub_152848C(v14);
        *(a1 + 32) = v12;
        v6 = v29;
      }

      v15 = sub_2217608(a3, v12, v6);
      goto LABEL_46;
    }

    if (v7)
    {
      v25 = (v7 & 7) == 4;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v29;
      }

      return 0;
    }

    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v6 = v29;
    }

    v15 = sub_1952690(v7, v27, v6, a3);
LABEL_46:
    v29 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v29;
}

char *sub_14EF1D8(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_14ED3B8(v7, v9, a3);
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

  v4 = sub_14ED8DC(v10, v12, a3);
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

  v4 = sub_14EDF18(v13, v15, a3);
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

    v4 = sub_14EE7F4(v16, v18, a3);
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

uint64_t sub_14EF42C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_14ED4E0(*(a1 + 24));
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
    v5 = sub_14EDAB8(*(a1 + 32));
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

  v9 = sub_14EE12C(*(a1 + 40));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = sub_14EEABC(*(a1 + 48));
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

std::string *sub_14EF564(std::string *result, uint64_t a2)
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

      data = sub_1528410(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_2774D30;
    }

    result = sub_12B9D50(data, v8);
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

    v9 = sub_152848C(v11);
    v3[1].__r_.__value_.__l.__size_ = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_2774D50;
  }

  result = sub_12EE138(v9, v12);
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

    v13 = sub_1528528(v15);
    v3[1].__r_.__value_.__r.__words[2] = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_2774D80;
  }

  result = sub_14EE210(v13, v16);
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

      v17 = sub_15285A4(v19);
      v3[2].__r_.__value_.__r.__words[0] = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_2774DA8;
    }

    result = sub_14EEC00(v17, v20);
  }

LABEL_39:
  v21 = *(a2 + 8);
  if (v21)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14EF728(uint64_t a1)
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
  if (a1 != &off_2774E18)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_14EED44(v6);
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

void sub_14EF7E0(uint64_t a1)
{
  sub_14EF728(a1);

  operator delete();
}

uint64_t sub_14EF818(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_14EEECC(*(result + 24));
  }

  if ((v2 & 0xE) != 0)
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

char *sub_14EF884(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 0x1D)
    {
      break;
    }

    if (v11 == 10)
    {
      if (v8 != 80)
      {
        goto LABEL_33;
      }

      v5 |= 4u;
      v21 = v7 + 1;
      v20 = *v7;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_27:
        v35 = v21;
        *(a1 + 40) = v20;
        goto LABEL_41;
      }

      v31 = sub_19587DC(v7, v20);
      v35 = v31;
      *(a1 + 40) = v32;
      if (!v31)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v11 != 20 || v8 != 160)
      {
        goto LABEL_33;
      }

      v5 |= 8u;
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
        *(a1 + 48) = v12;
        goto LABEL_41;
      }

      v29 = sub_19587DC(v7, v12);
      v35 = v29;
      *(a1 + 48) = v30;
      if (!v29)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    if (sub_195ADC0(a3, &v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 30)
  {
    if (v8 != 240)
    {
      goto LABEL_33;
    }

    v5 |= 2u;
    v23 = v7 + 1;
    v24 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v25 = *v23;
    v24 = v24 + (v25 << 7) - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_32:
      v35 = v23;
      *(a1 + 32) = v24;
      goto LABEL_41;
    }

    v33 = sub_1958770(v7, v24);
    v35 = v33;
    *(a1 + 32) = v34;
    if (!v33)
    {
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  if (v11 == 40 && v8 == 66)
  {
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      sub_1528644(v17);
      v15 = v18;
      *(a1 + 24) = v18;
      v7 = v35;
    }

    v19 = sub_22177B8(a3, v15, v7);
LABEL_40:
    v35 = v19;
    if (!v19)
    {
      goto LABEL_52;
    }

    goto LABEL_41;
  }

LABEL_33:
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
      v7 = v35;
    }

    v19 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_40;
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

char *sub_14EFB30(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
    *__dst = 80;
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 48);
    *v6 = 416;
    v6[2] = v12;
    if (v12 > 0x7F)
    {
      v6[2] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[3] = v12 >> 7;
      v11 = v6 + 4;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[3];
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
      v11 = v6 + 3;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 496;
    v11[2] = v16;
    if (v16 > 0x7F)
    {
      v11[2] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[3] = v16 >> 7;
      v15 = v11 + 4;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[3];
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
      v15 = v11 + 3;
    }
  }

  else
  {
    v15 = v11;
  }

  if (v5)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 24);
    *v15 = 706;
    v20 = *(v19 + 20);
    v15[2] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v15 + 2);
    }

    else
    {
      v21 = v15 + 3;
    }

    v15 = sub_14EF1D8(v19, v21, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v15;
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

  if (*a3 - v15 >= v25)
  {
    v27 = v25;
    memcpy(v15, v26, v25);
    v15 += v27;
    return v15;
  }

  return sub_1957130(a3, v26, v25, v15);
}

uint64_t sub_14EFDCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_14EF42C(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 2;
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
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 2;
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

  result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_11:
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

std::string *sub_14EFED8(std::string *result, uint64_t a2)
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

        sub_1528644(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2774DE0;
      }

      result = sub_14EF564(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_21;
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
LABEL_7:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_21:
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

uint64_t sub_14EFFE8(uint64_t a1)
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
  if (a1 != &off_2774E50)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_14EF728(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_13B31E8((a1 + 48));
  sub_13473FC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F00B8(uint64_t a1)
{
  sub_14EFFE8(a1);

  operator delete();
}

uint64_t sub_14F00F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1531498(v4);
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
      result = sub_16E72AC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_14EF818(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 72) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_14F01AC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v35 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v35, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v35 + 1;
    v7 = *v35;
    if (*v35 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v35, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v35 + 2;
      }
    }

    v35 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 0x1E)
    {
      if (v10 == 31)
      {
        if (v7 == 248)
        {
          v29 = v6 + 1;
          v28 = *v6;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_42;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if (v30 < 0)
          {
            v35 = sub_19587DC(v6, v28);
            if (!v35)
            {
              return 0;
            }
          }

          else
          {
            v29 = v6 + 2;
LABEL_42:
            v35 = v29;
          }

          if (v28 > 3)
          {
            sub_1355E94();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 80) = v28;
          }

          continue;
        }
      }

      else if (v10 == 40 && v7 == 66)
      {
        v17 = v6 - 2;
        while (1)
        {
          v18 = (v17 + 2);
          v35 = v17 + 2;
          v19 = *(a1 + 64);
          if (v19 && (v20 = *(a1 + 56), v20 < *v19))
          {
            *(a1 + 56) = v20 + 1;
            v21 = *&v19[2 * v20 + 2];
          }

          else
          {
            v22 = sub_16F5A54(*(a1 + 48));
            v21 = sub_19593CC(a1 + 48, v22);
            v18 = v35;
          }

          v17 = sub_22002C0(a3, v21, v18);
          v35 = v17;
          if (!v17)
          {
            return 0;
          }

          if (*a3 <= v17 || *v17 != 706)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_45;
    }

    if (v10 != 10)
    {
      if (v10 == 30 && v7 == 242)
      {
        v11 = v6 - 2;
        while (1)
        {
          v12 = (v11 + 2);
          v35 = v11 + 2;
          v13 = *(a1 + 40);
          if (v13 && (v14 = *(a1 + 32), v14 < *v13))
          {
            *(a1 + 32) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_155136C(*(a1 + 24));
            v15 = sub_19593CC(a1 + 24, v16);
            v12 = v35;
          }

          v11 = sub_21FC4F0(a3, v15, v12);
          v35 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 498)
          {
            goto LABEL_53;
          }
        }
      }

LABEL_45:
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
          return v35;
        }

        return 0;
      }

      v32 = *(a1 + 8);
      if (v32)
      {
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v33 = sub_11F1920((a1 + 8));
        v6 = v35;
      }

      v27 = sub_1952690(v7, v33, v6, a3);
      goto LABEL_52;
    }

    if (v7 != 82)
    {
      goto LABEL_45;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 72);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      sub_15286C4(v25);
      v23 = v26;
      *(a1 + 72) = v26;
      v6 = v35;
    }

    v27 = sub_2217848(a3, v23, v6);
LABEL_52:
    v35 = v27;
    if (!v27)
    {
      return 0;
    }

LABEL_53:
    ;
  }

  return v35;
}

char *sub_14F04AC(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 72);
    *v4 = 82;
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

    v4 = sub_14EFB30(v7, v9, a3);
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
      *v4 = 498;
      v13 = *(v12 + 56);
      v4[2] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 2);
      }

      else
      {
        v14 = v4 + 3;
      }

      v4 = sub_15317E4(v12, v14, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 80);
    *v4 = 504;
    v4[2] = v16;
    if (v16 > 0x7F)
    {
      v4[2] = v16 | 0x80;
      v17 = v16 >> 7;
      v4[3] = v16 >> 7;
      v15 = v4 + 4;
      if (v16 >= 0x4000)
      {
        LOBYTE(v4) = v4[3];
        do
        {
          *(v15 - 1) = v4 | 0x80;
          v4 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v4 + 3;
    }
  }

  else
  {
    v15 = v4;
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 64) + 8 * j + 8);
      *v15 = 706;
      v22 = *(v21 + 20);
      v15[2] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v15 + 2);
      }

      else
      {
        v23 = v15 + 3;
      }

      v15 = sub_16E74A8(v21, v23, a3);
    }
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v15;
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

  if (*a3 - v15 >= v27)
  {
    v29 = v27;
    memcpy(v15, v28, v27);
    v15 += v29;
    return v15;
  }

  return sub_1957130(a3, v28, v27, v15);
}

uint64_t sub_14F0760(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 2 * v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = sub_15319C4(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(a1 + 56);
  v10 = v3 + 2 * v9;
  v11 = *(a1 + 64);
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
      v15 = sub_16E7590(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 16);
  if ((v16 & 3) != 0)
  {
    if (v16)
    {
      v17 = sub_14EFDCC(*(a1 + 72));
      v10 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v16 & 2) != 0)
    {
      v18 = *(a1 + 80);
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 12;
      }

      v10 += v20;
    }
  }

  v21 = *(a1 + 8);
  if (v21)
  {
    v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v21 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v10 += v24;
  }

  *(a1 + 20) = v10;
  return v10;
}

std::string *sub_14F08C4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1347FD8(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_13B326C(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[3].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v17 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v17 = *v17;
        }

        sub_15286C4(v17);
        v3[3].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = &off_2774E18;
      }

      result = sub_14EFED8(data, v18);
    }

    if ((v14 & 2) != 0)
    {
      LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14F0A64(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E9AC0;
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
    sub_131332C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v11 & 2) != 0)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 16);
  }

  *(a1 + 64) = &qword_278E990;
  if ((v11 & 4) != 0)
  {
    v14 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v14);
    v11 = *(a2 + 16);
  }

  *(a1 + 72) = &qword_278E990;
  if ((v11 & 8) != 0)
  {
    v15 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v15);
    v11 = *(a2 + 16);
  }

  *(a1 + 80) = &qword_278E990;
  if ((v11 & 0x10) != 0)
  {
    v16 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 80), (*(a2 + 80) & 0xFFFFFFFFFFFFFFFELL), v16);
    v11 = *(a2 + 16);
  }

  if ((v11 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v11 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v11 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void *sub_14F0D70(void *a1)
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

  sub_14F0E00(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1312E78(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_14F0E00(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  result = (a1 + 80);
  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2774EA8)
  {
    if (*(a1 + 88))
    {
      sub_16ED13C();
      operator delete();
    }

    if (*(a1 + 96))
    {
      sub_16ED13C();
      operator delete();
    }

    result = *(a1 + 104);
    if (result)
    {
      sub_16EB0C0();

      operator delete();
    }
  }

  return result;
}

void sub_14F0F0C(void *a1)
{
  sub_14F0D70(a1);

  operator delete();
}

uint64_t sub_14F0F44(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1383878(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    if ((*(v1 + 16) & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_31:
    v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    result = sub_16ED178(*(v1 + 88));
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_40;
  }

  v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  v10 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v5 & 8) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v5 & 8) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_10:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_35:
  v12 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_40:
  result = sub_16ED178(*(v1 + 96));
  if (v5 < 0)
  {
LABEL_14:
    result = sub_16EB0FC(*(v1 + 104));
  }

LABEL_15:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 104) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_14F1104(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 5)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v25 = *(a1 + 8);
            v16 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v25)
            {
              v16 = *v16;
            }

            v17 = (a1 + 48);
            goto LABEL_66;
          }

          goto LABEL_80;
        }

        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x20u;
        v12 = *(a1 + 88);
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

        v12 = sub_16F5E18(v20);
        *(a1 + 88) = v12;
      }

      else
      {
        if (v11 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v27 = *(a1 + 8);
            v16 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v16 = *v16;
            }

            v17 = (a1 + 56);
            goto LABEL_66;
          }

          goto LABEL_80;
        }

        if (v11 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 4u;
            v31 = *(a1 + 8);
            v16 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31)
            {
              v16 = *v16;
            }

            v17 = (a1 + 64);
            goto LABEL_66;
          }

          goto LABEL_80;
        }

        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x40u;
        v12 = *(a1 + 96);
        if (v12)
        {
          goto LABEL_36;
        }

        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_16F5E18(v14);
        *(a1 + 96) = v12;
      }

      v7 = *v44;
LABEL_36:
      v21 = sub_21F4F10(a3, v12, v7);
      goto LABEL_67;
    }

    if (v8 >> 3 <= 7)
    {
      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 8u;
        v26 = *(a1 + 8);
        v16 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v16 = *v16;
        }

        v17 = (a1 + 72);
LABEL_66:
        v32 = sub_194DB04(v17, v16);
        v21 = sub_1958890(v32, *v44, a3);
      }

      else
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x80u;
        v22 = *(a1 + 104);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_16F5DB8(v24);
          *(a1 + 104) = v22;
          v7 = *v44;
        }

        v21 = sub_21F8D18(a3, v22, v7);
      }

LABEL_67:
      *v44 = v21;
      if (!v21)
      {
        goto LABEL_92;
      }

      goto LABEL_68;
    }

    if (v11 != 8)
    {
      break;
    }

    if (v8 != 64)
    {
      goto LABEL_80;
    }

    v5 |= 0x100u;
    v29 = (v7 + 1);
    v28 = *v7;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_61;
    }

    v30 = *v29;
    v28 = (v30 << 7) + v28 - 128;
    if ((v30 & 0x80000000) == 0)
    {
      v29 = (v7 + 2);
LABEL_61:
      *v44 = v29;
      *(a1 + 112) = v28 != 0;
      goto LABEL_68;
    }

    v42 = sub_19587DC(v7, v28);
    *v44 = v42;
    *(a1 + 112) = v43 != 0;
    if (!v42)
    {
      goto LABEL_92;
    }

LABEL_68:
    if (sub_195ADC0(a3, v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 20)
  {
    if (v8 == 162)
    {
      v33 = v7 - 2;
      while (1)
      {
        v34 = v33 + 2;
        *v44 = v33 + 2;
        v35 = *(a1 + 40);
        if (v35 && (v36 = *(a1 + 32), v36 < *v35))
        {
          *(a1 + 32) = v36 + 1;
          v37 = *&v35[2 * v36 + 2];
        }

        else
        {
          v38 = sub_13840C4(*(a1 + 24));
          v37 = sub_19593CC(a1 + 24, v38);
          v34 = *v44;
        }

        v33 = sub_21F8898(a3, v37, v34);
        *v44 = v33;
        if (!v33)
        {
          goto LABEL_92;
        }

        if (*a3 <= v33 || *v33 != 418)
        {
          goto LABEL_68;
        }
      }
    }
  }

  else if (v11 == 30 && v8 == 242)
  {
    *(a1 + 16) |= 0x10u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = (a1 + 80);
    goto LABEL_66;
  }

LABEL_80:
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
      v7 = *v44;
    }

    v21 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_67;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_92:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_14F1578(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 88);
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

  v4 = sub_16ED4B0(v7, v9, a3);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4 = sub_128AEEC(a3, 3, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = sub_128AEEC(a3, 4, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 96);
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

  v4 = sub_16ED4B0(v10, v12, a3);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4 = sub_128AEEC(a3, 6, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 104);
  *v4 = 58;
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

  v4 = sub_16EBD38(v13, v15, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_32:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 112);
    *v4 = 64;
    v4[1] = v16;
    v4 += 2;
  }

LABEL_35:
  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 418;
      v20 = *(v19 + 20);
      v4[2] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v4 + 2);
      }

      else
      {
        v21 = v4 + 3;
      }

      v4 = sub_1383BD4(v19, v21, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    v4 = sub_128AEEC(a3, 30, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v25)
  {
    v27 = v25;
    memcpy(v4, v26, v25);
    v4 += v27;
    return v4;
  }

  return sub_1957130(a3, v26, v25, v4);
}

uint64_t sub_14F18E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 2 * v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = sub_1383D30(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  if (v9)
  {
    v13 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_10:
      if ((v9 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_10;
  }

  v16 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 4) == 0)
  {
LABEL_11:
    if ((v9 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_25:
  v19 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 8) == 0)
  {
LABEL_12:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_28:
  v22 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x10) == 0)
  {
LABEL_13:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_34:
    v28 = sub_16ED6F0(*(a1 + 88));
    v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 0x40) == 0)
    {
LABEL_15:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_31:
  v25 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_14:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_35:
  v29 = sub_16ED6F0(*(a1 + 96));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x80) != 0)
  {
LABEL_16:
    v10 = sub_16EC25C(*(a1 + 104));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  result = v3 + ((v9 >> 7) & 2);
  v12 = *(a1 + 8);
  if (v12)
  {
    v30 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v31 < 0)
    {
      v31 = *(v30 + 16);
    }

    result += v31;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_14F1B9C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_131332C(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_29;
  }

  if (v9)
  {
    v10 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    size = v3->__r_.__value_.__l.__size_;
    v12 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v12 = *v12;
    }

    result = sub_194EA1C(&v3[2], (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
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

  v13 = *(a2 + 56);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v14 = v3->__r_.__value_.__l.__size_;
  v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14)
  {
    v15 = *v15;
  }

  result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v9 & 4) == 0)
  {
LABEL_8:
    if ((v9 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_17:
  v16 = *(a2 + 64);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v17 = v3->__r_.__value_.__l.__size_;
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v9 & 8) == 0)
  {
LABEL_9:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_20:
  v19 = *(a2 + 72);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v20 = v3->__r_.__value_.__l.__size_;
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    v21 = *v21;
  }

  result = sub_194EA1C(&v3[3], (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v9 & 0x10) != 0)
  {
LABEL_23:
    v22 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v23 = v3->__r_.__value_.__l.__size_;
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
  }

LABEL_26:
  if ((v9 & 0x20) == 0)
  {
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_43;
  }

  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
  v27 = v3[3].__r_.__value_.__r.__words[2];
  if (!v27)
  {
    v28 = v3->__r_.__value_.__l.__size_;
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v27 = sub_16F5E18(v29);
    v3[3].__r_.__value_.__r.__words[2] = v27;
  }

  if (*(a2 + 88))
  {
    v30 = *(a2 + 88);
  }

  else
  {
    v30 = &off_277E918;
  }

  result = sub_16ED814(v27, v30);
  if ((v9 & 0x40) != 0)
  {
LABEL_43:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
    data = v3[4].__r_.__value_.__l.__data_;
    if (!data)
    {
      v32 = v3->__r_.__value_.__l.__size_;
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      data = sub_16F5E18(v33);
      v3[4].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 96))
    {
      v34 = *(a2 + 96);
    }

    else
    {
      v34 = &off_277E918;
    }

    result = sub_16ED814(data, v34);
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_51;
    }

LABEL_29:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_28:
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_51:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x80u;
  v35 = v3[4].__r_.__value_.__l.__size_;
  if (!v35)
  {
    v36 = v3->__r_.__value_.__l.__size_;
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_16F5DB8(v37);
    v3[4].__r_.__value_.__l.__size_ = v35;
  }

  if (*(a2 + 104))
  {
    v38 = *(a2 + 104);
  }

  else
  {
    v38 = &off_277E820;
  }

  result = sub_16EC8A0(v35, v38);
  if ((v9 & 0x100) != 0)
  {
LABEL_30:
    v25 = *(a2 + 112);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v3[4].__r_.__value_.__s.__data_[16] = v25;
  }

LABEL_31:
  v26 = *(a2 + 8);
  if (v26)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_14F1E80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x20) != 0)
  {
    result = sub_16ED98C(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_16ED98C(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) == 0)
  {
    return 1;
  }

  result = sub_16ECE70(*(a1 + 104));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14F1EF0(uint64_t a1)
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

  if (a1 != &off_2774F20 && *(a1 + 24))
  {
    sub_16EF178();
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

void sub_14F1FA8(uint64_t a1)
{
  sub_14F1EF0(a1);

  operator delete();
}

unsigned __int8 *sub_14F1FE0(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_16EF1B4(*(result + 3));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  *(v2 + 3) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_14F2040(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_23:
      v25 = v17;
      *(a1 + 32) = v16;
      goto LABEL_30;
    }

    v23 = sub_19587DC(v7, v16);
    v25 = v23;
    *(a1 + 32) = v24;
    if (!v23)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
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

      sub_16F60C0(v21);
      v19 = v22;
      *(a1 + 24) = v22;
      v7 = v25;
    }

    v15 = sub_21F9E88(a3, v19, v7);
LABEL_29:
    v25 = v15;
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
      v7 = v25;
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
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_14F2218(uint64_t a1, char *__dst, _DWORD *a3)
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

    __dst = sub_16EF7E0(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 32);
    *__dst = 24;
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

uint64_t sub_14F23A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16EFD54(*(a1 + 24));
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

void sub_14F245C(uint64_t a1, uint64_t a2)
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

        sub_16F60C0(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277E9D0;
      }

      sub_16EFF94(v5, v8);
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

uint64_t sub_14F252C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16F0144(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14F256C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E9BC0;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  *(a1 + 32) = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 32), (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void sub_14F2650(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14F2684(uint64_t a1)
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

void sub_14F273C(uint64_t a1)
{
  sub_14F2684(a1);

  operator delete();
}

uint64_t sub_14F2774(uint64_t a1)
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
  if ((v1 & 0xC) != 0)
  {
    *(a1 + 40) = 0;
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

uint64_t sub_14F27FC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v30, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v30 + 1);
    v7 = **v30;
    if (**v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v30 + 2);
      }
    }

    *v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 != 4)
      {
        if (v10 == 5 && v7 == 40)
        {
          v17 = v6 + 1;
          v16 = *v6;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            *v30 = sub_19587DC(v6, v16);
            if (!*v30)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v17 = v6 + 2;
LABEL_26:
            *v30 = v17;
          }

          if (v16 > 2)
          {
            sub_12E85B8();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 44) = v16;
          }

          continue;
        }

        goto LABEL_38;
      }

      if (v7 != 34)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 2u;
      v22 = *(a1 + 8);
      v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v20 = *v20;
      }

      v21 = (a1 + 32);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 3 && v7 == 24)
        {
          v12 = v6 + 1;
          v13 = *v6;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

          v14 = *v12;
          v15 = (v14 << 7) + v13;
          LODWORD(v13) = v15 - 128;
          if (v14 < 0)
          {
            *v30 = sub_19587DC(v6, (v15 - 128));
            if (!*v30)
            {
              goto LABEL_57;
            }

            LODWORD(v13) = v28;
          }

          else
          {
            v12 = v6 + 2;
LABEL_17:
            *v30 = v12;
          }

          if (sub_1792D7C(v13))
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v13;
          }

          else
          {
            sub_1313740();
          }

          continue;
        }

LABEL_38:
        if (v7)
        {
          v25 = (v7 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v30;
          }

LABEL_57:
          *v30 = 0;
          return *v30;
        }

        v26 = *(a1 + 8);
        if (v26)
        {
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v27 = sub_11F1920((a1 + 8));
          v6 = *v30;
        }

        v24 = sub_1952690(v7, v27, v6, a3);
        goto LABEL_45;
      }

      if (v7 != 18)
      {
        goto LABEL_38;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v21 = (a1 + 24);
    }

    v23 = sub_194DB04(v21, v20);
    v24 = sub_1958890(v23, *v30, a3);
LABEL_45:
    *v30 = v24;
    if (!v24)
    {
      goto LABEL_57;
    }
  }

  return *v30;
}

char *sub_14F2A8C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
    *v4 = 24;
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v7 = v4 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v7 - 1) = v4 | 0x80;
          v4 = (v9 >> 7);
          *v7++ = v9 >> 7;
          v10 = v9 >> 14;
          v9 >>= 7;
        }

        while (v10);
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

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 44);
    *v7 = 40;
    v7[1] = v12;
    if (v12 > 0x7F)
    {
      v7[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v7[2] = v12 >> 7;
      v11 = v7 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v14) = v7[2];
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
      v11 = v7 + 2;
    }
  }

  else
  {
    v11 = v7;
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

uint64_t sub_14F2C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_23;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
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

  v2 += v10;
  if ((v1 & 8) != 0)
  {
LABEL_19:
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

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_14F2DDC(uint64_t a1)
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

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_2774F78)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_14EAD6C(v6);
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

void sub_14F2EC4(uint64_t a1)
{
  sub_14F2DDC(a1);

  operator delete();
}

uint64_t sub_14F2EFC(uint64_t result)
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
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
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

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_14EAE84(*(result + 40));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
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

uint64_t sub_14F2FD8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v33 + 1);
    v8 = **v33;
    if (**v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v33 + 2);
      }
    }

    *v33 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_43;
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

            v22 = sub_15281FC(v24);
            *(a1 + 40) = v22;
            v7 = *v33;
          }

          v18 = sub_21FBEC0(a3, v22, v7);
LABEL_50:
          *v33 = v18;
          if (!v18)
          {
            goto LABEL_61;
          }

          goto LABEL_51;
        }

        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_43;
        }

        *(a1 + 16) |= 2u;
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v14 = (a1 + 32);
LABEL_24:
        v17 = sub_194DB04(v14, v13);
        v18 = sub_1958890(v17, *v33, a3);
        goto LABEL_50;
      }

      if (v8 != 24)
      {
        goto LABEL_43;
      }

      v20 = (v7 + 1);
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v33 = sub_19587DC(v7, v19);
          if (!*v33)
          {
            goto LABEL_61;
          }

          goto LABEL_30;
        }

        v20 = (v7 + 2);
      }

      *v33 = v20;
LABEL_30:
      if (v19 > 4)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 52) = v19;
      }

      goto LABEL_51;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_43;
    }

    v5 |= 8u;
    v26 = (v7 + 1);
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = (v7 + 2);
LABEL_42:
      *v33 = v26;
      *(a1 + 48) = v25 != 0;
      goto LABEL_51;
    }

    v31 = sub_19587DC(v7, v25);
    *v33 = v31;
    *(a1 + 48) = v32 != 0;
    if (!v31)
    {
      goto LABEL_61;
    }

LABEL_51:
    if (sub_195ADC0(a3, v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v13 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v13 = *v13;
    }

    v14 = (a1 + 24);
    goto LABEL_24;
  }

LABEL_43:
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
      v7 = *v33;
    }

    v18 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_14F32CC(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 8) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 48);
  *v4 = 8;
  v4[1] = v8;
  v4 += 2;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 52);
  *v4 = 24;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_16:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 40);
    *v7 = 34;
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

    v7 = sub_14EB170(v13, v15, a3);
  }

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 5, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v19)
  {
    v21 = v19;
    memcpy(v7, v20, v19);
    v7 += v21;
    return v7;
  }

  return sub_1957130(a3, v20, v19, v7);
}

uint64_t sub_14F34E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    result = 0;
    goto LABEL_19;
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
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = 0;
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
    v11 = sub_14EB2A8(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 2) & 2);
  if ((v2 & 0x10) != 0)
  {
    v12 = *(a1 + 52);
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

LABEL_19:
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    result += v17;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_14F364C(std::string *result, uint64_t a2)
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

        goto LABEL_19;
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

      goto LABEL_27;
    }

LABEL_19:
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

      v12 = sub_15281FC(v14);
      v3[1].__r_.__value_.__r.__words[2] = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_2774C70;
    }

    result = sub_135B4C0(v12, v15);
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
      HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
      goto LABEL_8;
    }

LABEL_27:
    v3[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
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

uint64_t sub_14F37E0(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
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

std::string *sub_14F380C(std::string *result)
{
  v1 = result;
  v2 = result->__r_.__value_.__r.__words[2];
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = result[1].__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_194EC40((result + 32), &off_2776308);
    }
  }

LABEL_7:
  v5 = v1->__r_.__value_.__s.__data_[8];
  p_size = &v1->__r_.__value_.__l.__size_;
  *(p_size + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(p_size);
  }

  return result;
}

uint64_t sub_14F38BC(uint64_t a1)
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

uint64_t sub_14F38D8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14F7768(v4);
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
      result = sub_14F7768(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      result = sub_14F7768(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v11 = *(v1 + 96);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 104) + 8);
    do
    {
      v13 = *v12++;
      result = sub_14F7768(v13);
      --v11;
    }

    while (v11);
    *(v1 + 96) = 0;
  }

  v15 = *(v1 + 8);
  v14 = (v1 + 8);
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

uint64_t sub_14F39CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result = sub_1515AC0(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      result = sub_1515FC0(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_1515AC0(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  result = sub_1515AC0(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1515AC0(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 68) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_14F3A88(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 50) = 0;
  *(v4 + 48) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_14F3B14(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_14F3B98(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_14F3C1C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E72AC(v4);
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
      v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 56) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

std::string *sub_14F3D08(std::string *result, uint64_t a2)
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
      v8 = *(a2 + 32);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v9 = v3->__r_.__value_.__l.__size_;
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      result = sub_194EA44(&v3[1].__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
    }
  }

  v11 = *(a2 + 8);
  if (v11)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_14F3DDC(std::string *result, uint64_t a2)
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

  if (*(a2 + 16))
  {
    v8 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v3[1].__r_.__value_.__r.__words[2] = v8;
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_14F3E9C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_156B440(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
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
    result = sub_156B440(&v3[1].__r_.__value_.__r.__words[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
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
    result = sub_156B440(&v3[2].__r_.__value_.__r.__words[2], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__l.__size_ - LODWORD(v3[3].__r_.__value_.__l.__data_));
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
    result = sub_156B440(&v3[3].__r_.__value_.__r.__words[2], v21, (v20 + 8), v19, *v3[4].__r_.__value_.__l.__size_ - LODWORD(v3[4].__r_.__value_.__l.__data_));
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

std::string *sub_14F406C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}