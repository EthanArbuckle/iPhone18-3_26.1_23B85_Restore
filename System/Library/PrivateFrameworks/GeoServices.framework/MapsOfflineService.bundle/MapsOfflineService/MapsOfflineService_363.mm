void sub_14E28F8(uint64_t a1, uint64_t a2)
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
    sub_156A794((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_156A820((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_156A89C((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if ((v24 & 0x7F) != 0)
  {
    if (v24)
    {
      *(a1 + 16) |= 1u;
      v26 = *(a1 + 120);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_15279A8(v28);
        *(a1 + 120) = v26;
      }

      if (*(a2 + 120))
      {
        v29 = *(a2 + 120);
      }

      else
      {
        v29 = &off_2774710;
      }

      sub_14DF4A8(v26, v29);
      if ((v24 & 2) == 0)
      {
LABEL_16:
        if ((v24 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_43;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 16) |= 2u;
    v30 = *(a1 + 128);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_1527A30(v32);
      *(a1 + 128) = v30;
    }

    if (*(a2 + 128))
    {
      v33 = *(a2 + 128);
    }

    else
    {
      v33 = &off_2774740;
    }

    sub_14E0030(v30, v33);
    if ((v24 & 4) == 0)
    {
LABEL_17:
      if ((v24 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_51;
    }

LABEL_43:
    *(a1 + 16) |= 4u;
    v34 = *(a1 + 136);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_1527C0C(v36);
      *(a1 + 136) = v34;
    }

    if (*(a2 + 136))
    {
      v37 = *(a2 + 136);
    }

    else
    {
      v37 = &off_27747A0;
    }

    sub_14E1624(v34, v37);
    if ((v24 & 8) == 0)
    {
LABEL_18:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(a1 + 144) = *(a2 + 144);
    if ((v24 & 0x10) == 0)
    {
LABEL_19:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(a1 + 148) = *(a2 + 148);
    if ((v24 & 0x20) == 0)
    {
LABEL_20:
      if ((v24 & 0x40) == 0)
      {
LABEL_22:
        *(a1 + 16) |= v24;
        goto LABEL_23;
      }

LABEL_21:
      *(a1 + 156) = *(a2 + 156);
      goto LABEL_22;
    }

LABEL_53:
    *(a1 + 152) = *(a2 + 152);
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((a1 + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_14E2C28(void *a1)
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

void sub_14E2C9C(void *a1)
{
  sub_14E2C28(a1);

  operator delete();
}

uint64_t sub_14E2CD4(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
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

char *sub_14E2CFC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_30:
      v23 = v19;
      *(a1 + 24) = v18;
      v5 = 1;
      goto LABEL_31;
    }

    v21 = sub_19587DC(v7, v18);
    v23 = v21;
    *(a1 + 24) = v22;
    v5 = 1;
    if (!v21)
    {
      goto LABEL_41;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v23, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v16 = v7 + 1;
    v15 = *v7;
    if (v15 < 0)
    {
      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if (v17 < 0)
      {
        v23 = sub_19587DC(v7, v15);
        if (!v23)
        {
          goto LABEL_41;
        }

        goto LABEL_25;
      }

      v16 = v7 + 2;
    }

    v23 = v16;
LABEL_25:
    if (v15 > 4)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 32) = v15;
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
      v7 = v23;
    }

    v23 = sub_1952690(v8, v14, v7, a3);
    if (!v23)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v23 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

char *sub_14E2EFC(uint64_t a1, char *__dst, _DWORD *a3)
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

    v12 = *(a1 + 32);
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

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v11;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v17 + 31);
  if (v18 < 0)
  {
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
  }

  else
  {
    v19 = (v17 + 8);
  }

  if (*a3 - v11 >= v18)
  {
    v20 = v18;
    memcpy(v11, v19, v18);
    v11 += v20;
    return v11;
  }

  return sub_1957130(a3, v19, v18, v11);
}

unint64_t sub_14E30AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_11;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 32);
  if (v3 < 0)
  {
    v4 = 11;
  }

  else
  {
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v4;
LABEL_11:
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_14E316C(uint64_t a1)
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
  if (a1 != &off_2774898)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_14E2C28(v6);
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

void sub_14E322C(uint64_t a1)
{
  sub_14E316C(a1);

  operator delete();
}

uint64_t sub_14E3264(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_14E2CD4(*(result + 40));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 40) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_14E32C8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v33 + 1;
    v9 = *v33;
    if (*v33 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v33, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v33 + 2;
      }
    }

    v33 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 == 3)
    {
      if (v9 != 24)
      {
        if (v9 != 26)
        {
          goto LABEL_14;
        }

        *&v34 = a1 + 24;
        *(&v34 + 1) = sub_14D6C7C;
        v35 = a1 + 8;
        v36 = 3;
        v17 = sub_1216588(a3, v8, &v34);
LABEL_48:
        v33 = v17;
        if (!v17)
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      }

      v21 = v8 - 1;
      while (1)
      {
        v33 = v21 + 1;
        v22 = v21[1];
        v23 = v21 + 2;
        if (v22 < 0)
        {
          v24 = *v23;
          v25 = (v24 << 7) + v22;
          LODWORD(v22) = v25 - 128;
          if (v24 < 0)
          {
            v33 = sub_19587DC((v21 + 1), (v25 - 128));
            if (!v33)
            {
              goto LABEL_58;
            }

            LODWORD(v22) = v28;
            goto LABEL_32;
          }

          v23 = v21 + 3;
        }

        v33 = v23;
LABEL_32:
        if (v22 > 3)
        {
          sub_1313740();
        }

        else
        {
          v26 = *(a1 + 24);
          if (v26 == *(a1 + 28))
          {
            v27 = v26 + 1;
            sub_1958E5C((a1 + 24), v26 + 1);
            *(*(a1 + 32) + 4 * v26) = v22;
          }

          else
          {
            *(*(a1 + 32) + 4 * v26) = v22;
            v27 = v26 + 1;
          }

          *(a1 + 24) = v27;
        }

        v21 = v33;
        if (*a3 <= v33 || *v33 != 24)
        {
          goto LABEL_49;
        }
      }
    }

    if (v13 != 2)
    {
      break;
    }

    if (v9 != 16)
    {
      goto LABEL_14;
    }

    v5 |= 2u;
    v19 = v8 + 1;
    v18 = *v8;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v8 + 2;
LABEL_25:
      v33 = v19;
      *(a1 + 48) = v18 != 0;
      goto LABEL_49;
    }

    v31 = sub_19587DC(v8, v18);
    v33 = v31;
    *(a1 + 48) = v32 != 0;
    if (!v31)
    {
      goto LABEL_58;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 == 1 && v9 == 10)
  {
    *(a1 + 16) |= 1u;
    v29 = *(a1 + 40);
    if (!v29)
    {
      v30 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v7)
      {
        v30 = *v30;
      }

      v29 = sub_1527D78(v30);
      *(a1 + 40) = v29;
      v8 = v33;
    }

    v17 = sub_2214E8C(a3, v29, v8);
    goto LABEL_48;
  }

LABEL_14:
  if (v9)
  {
    v15 = (v9 & 7) == 4;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (*v7)
    {
      v16 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v16 = sub_11F1920((a1 + 8));
      v8 = v33;
    }

    v17 = sub_1952690(v9, v16, v8, a3);
    goto LABEL_48;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_58:
    v33 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

char *sub_14E35E4(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 40);
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

    a2 = sub_14E2EFC(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v9 = *(a1 + 48);
    *a2 = 16;
    a2[1] = v9;
    a2 += 2;
  }

  v10 = *(a1 + 24);
  if (v10 < 1)
  {
    v13 = a2;
  }

  else
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v12 = *(*(a1 + 32) + 4 * i);
      *a2 = 24;
      a2[1] = v12;
      if (v12 > 0x7F)
      {
        a2[1] = v12 | 0x80;
        v14 = v12 >> 7;
        a2[2] = v12 >> 7;
        v13 = a2 + 3;
        if (v12 >= 0x4000)
        {
          LOBYTE(v15) = a2[2];
          do
          {
            *(v13 - 1) = v15 | 0x80;
            v15 = v14 >> 7;
            *v13++ = v14 >> 7;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v13 = a2 + 2;
      }

      a2 = v13;
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v13;
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

  if (*a3 - v13 >= v20)
  {
    v22 = v20;
    memcpy(v13, v21, v20);
    v13 += v22;
    return v13;
  }

  return sub_1957130(a3, v21, v20, v13);
}

uint64_t sub_14E37D0(uint64_t a1)
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
      v9 = sub_14E30AC(*(a1 + 40));
      v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v8 & 2;
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

    v7 += v13;
  }

  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_14E38C0(std::string *result, uint64_t a2)
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
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v9 = v3[1].__r_.__value_.__r.__words[2];
      if (!v9)
      {
        v10 = v3->__r_.__value_.__l.__size_;
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        v9 = sub_1527D78(v11);
        v3[1].__r_.__value_.__r.__words[2] = v9;
      }

      if (*(a2 + 40))
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = &off_2774870;
      }

      result = sub_13BB240(v9, v12);
    }

    if ((v8 & 2) != 0)
    {
      v3[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14E39EC(uint64_t a1)
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

  if (a1 != &off_27748D0)
  {
    if (*(a1 + 144))
    {
      sub_16E7270();
      operator delete();
    }

    if (*(a1 + 152))
    {
      sub_16E7270();
      operator delete();
    }

    v5 = *(a1 + 160);
    if (v5)
    {
      sub_14E9EB0(v5);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1568AAC((a1 + 120));
  sub_1568A28((a1 + 96));
  sub_1568A28((a1 + 72));
  sub_1347714((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14E3B08(uint64_t a1)
{
  sub_14E39EC(a1);

  operator delete();
}

uint64_t sub_14E3B40(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14F00F0(v5);
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
      result = sub_14E2CD4(v8);
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
      result = sub_14E2CD4(v11);
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
      result = sub_14E3264(v14);
      --v12;
    }

    while (v12);
    *(a1 + 128) = 0;
  }

  v15 = *(a1 + 16);
  if ((v15 & 7) != 0)
  {
    if (v15)
    {
      result = sub_16E72AC(*(a1 + 144));
      if ((v15 & 2) == 0)
      {
LABEL_20:
        if ((v15 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_20;
    }

    result = sub_16E72AC(*(a1 + 152));
    if ((v15 & 4) != 0)
    {
LABEL_21:
      result = sub_14E3C7C(*(a1 + 160));
    }
  }

LABEL_22:
  v17 = *(a1 + 8);
  v16 = a1 + 8;
  *(v16 + 8) = 0;
  if (v17)
  {

    return sub_1957EA8(v16);
  }

  return result;
}

uint64_t sub_14E3C7C(uint64_t a1)
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

uint64_t sub_14E3CF8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v56 = a2;
  if (sub_195ADC0(a3, v56, a3[11].i32[1]))
  {
    return *v56;
  }

  while (1)
  {
    v6 = (*v56 + 1);
    v7 = **v56;
    if (**v56 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v56, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v56 + 2);
      }
    }

    *v56 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 5)
    {
      if (v7 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v7 == 34)
          {
            v45 = (v6 - 1);
            while (1)
            {
              v46 = (v45 + 1);
              *v56 = v45 + 1;
              v47 = *(a1 + 88);
              if (v47 && (v48 = *(a1 + 80), v48 < *v47))
              {
                *(a1 + 80) = v48 + 1;
                v49 = *&v47[2 * v48 + 2];
              }

              else
              {
                v50 = sub_1527D78(*(a1 + 72));
                v49 = sub_19593CC(a1 + 72, v50);
                v46 = *v56;
              }

              v45 = sub_2214E8C(a3, v49, v46);
              *v56 = v45;
              if (!v45)
              {
                goto LABEL_104;
              }

              if (*a3 <= v45 || *v45 != 34)
              {
                goto LABEL_99;
              }
            }
          }
        }

        else if (v10 == 5 && v7 == 42)
        {
          v21 = (v6 - 1);
          while (1)
          {
            v22 = (v21 + 1);
            *v56 = v21 + 1;
            v23 = *(a1 + 112);
            if (v23 && (v24 = *(a1 + 104), v24 < *v23))
            {
              *(a1 + 104) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v26 = sub_1527D78(*(a1 + 96));
              v25 = sub_19593CC(a1 + 96, v26);
              v22 = *v56;
            }

            v21 = sub_2214E8C(a3, v25, v22);
            *v56 = v21;
            if (!v21)
            {
              goto LABEL_104;
            }

            if (*a3 <= v21 || *v21 != 42)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v10 == 1)
      {
        if (v7 == 10)
        {
          v31 = (v6 - 1);
          while (1)
          {
            v32 = (v31 + 1);
            *v56 = v31 + 1;
            v33 = *(a1 + 40);
            if (v33 && (v34 = *(a1 + 32), v34 < *v33))
            {
              *(a1 + 32) = v34 + 1;
              v35 = *&v33[2 * v34 + 2];
            }

            else
            {
              v36 = *(a1 + 24);
              if (!v36)
              {
                operator new();
              }

              *v38 = v37;
              v38[1] = sub_195A650;
              *v37 = 0;
              v37[1] = 0;
              v37[2] = 0;
              v35 = sub_19593CC(a1 + 24, v37);
              v32 = *v56;
            }

            v31 = sub_1958890(v35, v32, a3);
            *v56 = v31;
            if (!v31)
            {
              goto LABEL_104;
            }

            if (*a3 <= v31 || *v31 != 10)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          *v56 = v12 + 1;
          v14 = *(a1 + 64);
          if (v14 && (v15 = *(a1 + 56), v15 < *v14))
          {
            *(a1 + 56) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_1528744(*(a1 + 48));
            v16 = sub_19593CC(a1 + 48, v17);
            v13 = *v56;
          }

          v12 = sub_21FCC40(a3, v16, v13);
          *v56 = v12;
          if (!v12)
          {
            goto LABEL_104;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_99;
          }
        }
      }

      goto LABEL_91;
    }

    if (v7 >> 3 <= 7)
    {
      if (v10 == 6)
      {
        if (v7 == 50)
        {
          v39 = (v6 - 1);
          while (1)
          {
            v40 = (v39 + 1);
            *v56 = v39 + 1;
            v41 = *(a1 + 136);
            if (v41 && (v42 = *(a1 + 128), v42 < *v41))
            {
              *(a1 + 128) = v42 + 1;
              v43 = *&v41[2 * v42 + 2];
            }

            else
            {
              v44 = sub_1527DF4(*(a1 + 120));
              v43 = sub_19593CC(a1 + 120, v44);
              v40 = *v56;
            }

            v39 = sub_2214F1C(a3, v43, v40);
            *v56 = v39;
            if (!v39)
            {
              goto LABEL_104;
            }

            if (*a3 <= v39 || *v39 != 50)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v10 == 7 && v7 == 58)
      {
        *(a1 + 16) |= 1u;
        v18 = *(a1 + 144);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_16F5A54(v20);
          *(a1 + 144) = v18;
          goto LABEL_89;
        }

        goto LABEL_90;
      }

      goto LABEL_91;
    }

    if (v10 == 8)
    {
      break;
    }

    if (v10 != 9 || v7 != 74)
    {
      goto LABEL_91;
    }

    *(a1 + 16) |= 4u;
    v27 = *(a1 + 160);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_15280F0(v29);
      *(a1 + 160) = v27;
      v6 = *v56;
    }

    v30 = sub_2214FAC(a3, v27, v6);
LABEL_98:
    *v56 = v30;
    if (!v30)
    {
      goto LABEL_104;
    }

LABEL_99:
    if (sub_195ADC0(a3, v56, a3[11].i32[1]))
    {
      return *v56;
    }
  }

  if (v7 == 66)
  {
    *(a1 + 16) |= 2u;
    v18 = *(a1 + 152);
    if (!v18)
    {
      v51 = *(a1 + 8);
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51)
      {
        v52 = *v52;
      }

      v18 = sub_16F5A54(v52);
      *(a1 + 152) = v18;
LABEL_89:
      v6 = *v56;
    }

LABEL_90:
    v30 = sub_22002C0(a3, v18, v6);
    goto LABEL_98;
  }

LABEL_91:
  if (v7)
  {
    v53 = (v7 & 7) == 4;
  }

  else
  {
    v53 = 1;
  }

  if (!v53)
  {
    v54 = *(a1 + 8);
    if (v54)
    {
      v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v55 = sub_11F1920((a1 + 8));
      v6 = *v56;
    }

    v30 = sub_1952690(v7, v55, v6, a3);
    goto LABEL_98;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v56;
  }

LABEL_104:
  *v56 = 0;
  return *v56;
}

char *sub_14E4254(uint64_t a1, char *__dst, _DWORD *a3)
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
        memcpy(v10, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
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

      __dst = sub_14F04AC(v13, v15, a3);
    }
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 88) + 8 * j + 8);
      *__dst = 34;
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

      __dst = sub_14E2EFC(v18, v20, a3);
    }
  }

  v21 = *(a1 + 104);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 112) + 8 * k + 8);
      *__dst = 42;
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

      __dst = sub_14E2EFC(v23, v25, a3);
    }
  }

  v26 = *(a1 + 128);
  if (v26)
  {
    for (m = 0; m != v26; ++m)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v28 = *(*(a1 + 136) + 8 * m + 8);
      *__dst = 50;
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

      __dst = sub_14E35E4(v28, v30, a3);
    }
  }

  v31 = *(a1 + 16);
  if (v31)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v32 = *(a1 + 144);
    *__dst = 58;
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

    __dst = sub_16E74A8(v32, v34, a3);
    if ((v31 & 2) == 0)
    {
LABEL_46:
      if ((v31 & 4) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_46;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v35 = *(a1 + 152);
  *__dst = 66;
  v36 = *(v35 + 20);
  __dst[1] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, __dst + 1);
  }

  else
  {
    v37 = __dst + 2;
  }

  __dst = sub_16E74A8(v35, v37, a3);
  if ((v31 & 4) != 0)
  {
LABEL_60:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v38 = *(a1 + 160);
    *__dst = 74;
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

    __dst = sub_14EA120(v38, v40, a3);
  }

LABEL_66:
  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return __dst;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFCLL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if (*a3 - __dst >= v44)
  {
    v46 = v44;
    memcpy(__dst, v45, v44);
    __dst += v46;
    return __dst;
  }

  return sub_1957130(a3, v45, v44, __dst);
}

uint64_t sub_14E46F4(uint64_t a1)
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
      v14 = sub_14F0760(v13);
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
      v21 = sub_14E30AC(v20);
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
      v28 = sub_14E30AC(v27);
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
      v35 = sub_14E37D0(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 16);
  if ((v36 & 7) != 0)
  {
    if (v36)
    {
      v40 = sub_16E7590(*(a1 + 144));
      v30 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v36 & 2) == 0)
      {
LABEL_35:
        if ((v36 & 4) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    else if ((v36 & 2) == 0)
    {
      goto LABEL_35;
    }

    v41 = sub_16E7590(*(a1 + 152));
    v30 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 4) != 0)
    {
LABEL_36:
      v37 = sub_14EA208(*(a1 + 160));
      v30 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_37:
  v38 = *(a1 + 8);
  if (v38)
  {
    v42 = v38 & 0xFFFFFFFFFFFFFFFCLL;
    v43 = *((v38 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v43 < 0)
    {
      v43 = *(v42 + 16);
    }

    v30 += v43;
  }

  *(a1 + 20) = v30;
  return v30;
}

std::string *sub_14E4990(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1201B48(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_1348320(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
    result = sub_156A918(&v3[3], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(&v3[4], *(a2 + 104));
    result = sub_156A918(&v3[4], v21, (v20 + 8), v19, *v3[4].__r_.__value_.__r.__words[2] - LODWORD(v3[4].__r_.__value_.__r.__words[1]));
    v22 = LODWORD(v3[4].__r_.__value_.__r.__words[1]) + v19;
    LODWORD(v3[4].__r_.__value_.__r.__words[1]) = v22;
    v23 = v3[4].__r_.__value_.__r.__words[2];
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(&v3[5], *(a2 + 128));
    result = sub_156A994(&v3[5], v26, (v25 + 8), v24, *v3[5].__r_.__value_.__r.__words[2] - LODWORD(v3[5].__r_.__value_.__r.__words[1]));
    v27 = LODWORD(v3[5].__r_.__value_.__r.__words[1]) + v24;
    LODWORD(v3[5].__r_.__value_.__r.__words[1]) = v27;
    v28 = v3[5].__r_.__value_.__r.__words[2];
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 16);
  if ((v29 & 7) != 0)
  {
    if (v29)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[6].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v32 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v32 = *v32;
        }

        data = sub_16F5A54(v32);
        v3[6].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 144))
      {
        v33 = *(a2 + 144);
      }

      else
      {
        v33 = &off_277E6F0;
      }

      result = sub_12F5A34(data, v33);
      if ((v29 & 2) == 0)
      {
LABEL_19:
        if ((v29 & 4) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_19;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v34 = v3[6].__r_.__value_.__l.__size_;
    if (!v34)
    {
      v35 = v3->__r_.__value_.__l.__size_;
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_16F5A54(v36);
      v3[6].__r_.__value_.__l.__size_ = v34;
    }

    if (*(a2 + 152))
    {
      v37 = *(a2 + 152);
    }

    else
    {
      v37 = &off_277E6F0;
    }

    result = sub_12F5A34(v34, v37);
    if ((v29 & 4) != 0)
    {
LABEL_37:
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
      v38 = v3[6].__r_.__value_.__r.__words[2];
      if (!v38)
      {
        v39 = v3->__r_.__value_.__l.__size_;
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v40 = *v40;
        }

        v38 = sub_15280F0(v40);
        v3[6].__r_.__value_.__r.__words[2] = v38;
      }

      if (*(a2 + 160))
      {
        v41 = *(a2 + 160);
      }

      else
      {
        v41 = &off_2774C18;
      }

      result = sub_12F5A34(v38, v41);
    }
  }

LABEL_45:
  v42 = *(a2 + 8);
  if (v42)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14E4CC8(uint64_t a1)
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

void sub_14E4D68(uint64_t a1)
{
  sub_14E4CC8(a1);

  operator delete();
}

uint64_t sub_14E4DA0(uint64_t a1)
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

  if ((v1 & 0x3E) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
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

uint64_t sub_14E4DF4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v41, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v41 + 1);
    v8 = **v41;
    if (**v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v41 + 2);
      }
    }

    *v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_50;
      }

      v21 = v7 + 1;
      v20 = *v7;
      if (v20 < 0)
      {
        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = v7 + 2;
          goto LABEL_32;
        }

        *v41 = sub_19587DC(v7, v20);
        if (!*v41)
        {
          goto LABEL_75;
        }
      }

      else
      {
LABEL_32:
        *v41 = v21;
      }

      if (v20 > 3)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 40) = v20;
      }

      goto LABEL_58;
    }

    if (v11 != 2)
    {
      if (v11 == 3 && v8 == 24)
      {
        v14 = v7 + 1;
        v13 = *v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if (v15 < 0)
        {
          *v41 = sub_19587DC(v7, v13);
          if (!*v41)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_18:
          *v41 = v14;
        }

        if (v13 > 1)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 44) = v13;
        }

        goto LABEL_58;
      }

      goto LABEL_50;
    }

    if (v8 != 16)
    {
      goto LABEL_50;
    }

    v5 |= 2u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_44;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_44:
      *v41 = v27;
      *(a1 + 32) = v26;
      goto LABEL_58;
    }

    v37 = sub_19587DC(v7, v26);
    *v41 = v37;
    *(a1 + 32) = v38;
    if (!v37)
    {
      goto LABEL_75;
    }

LABEL_58:
    if (sub_195ADC0(a3, v41, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_50;
    }

    v5 |= 0x10u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_39:
      *v41 = v24;
      *(a1 + 48) = v23 != 0;
      goto LABEL_58;
    }

    v35 = sub_19587DC(v7, v23);
    *v41 = v35;
    *(a1 + 48) = v36 != 0;
    if (!v35)
    {
      goto LABEL_75;
    }

    goto LABEL_58;
  }

  if (v11 == 5)
  {
    if (v8 != 40)
    {
      goto LABEL_50;
    }

    v5 |= 0x20u;
    v30 = v7 + 1;
    v29 = *v7;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v31 = *v30;
    v29 = (v31 << 7) + v29 - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_49:
      *v41 = v30;
      *(a1 + 49) = v29 != 0;
      goto LABEL_58;
    }

    v39 = sub_19587DC(v7, v29);
    *v41 = v39;
    *(a1 + 49) = v40 != 0;
    if (!v39)
    {
      goto LABEL_75;
    }

    goto LABEL_58;
  }

  if (v11 == 6 && v8 == 50)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 24), v17);
    v19 = sub_1958890(v18, *v41, a3);
LABEL_57:
    *v41 = v19;
    if (!v19)
    {
      goto LABEL_75;
    }

    goto LABEL_58;
  }

LABEL_50:
  if (v8)
  {
    v32 = (v8 & 7) == 4;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    v33 = *(a1 + 8);
    if (v33)
    {
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v34 = sub_11F1920((a1 + 8));
      v7 = *v41;
    }

    v19 = sub_1952690(v8, v34, v7, a3);
    goto LABEL_57;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_75:
  *v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v41;
}

char *sub_14E51A8(uint64_t a1, char *__dst, void *a3)
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

    v16 = *(a1 + 44);
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
        LOBYTE(v18) = v11[2];
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

    v22 = *(a1 + 48);
    *v15 = 32;
    v15[1] = v22;
    v15 += 2;
    if ((v5 & 0x20) == 0)
    {
LABEL_30:
      if ((v5 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_30;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v23 = *(a1 + 49);
  *v15 = 40;
  v15[1] = v23;
  v15 += 2;
  if (v5)
  {
LABEL_31:
    v15 = sub_128AEEC(a3, 6, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v15);
  }

LABEL_32:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v15;
  }

  v24 = v20 & 0xFFFFFFFFFFFFFFFCLL;
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

uint64_t sub_14E5478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_17;
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

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v1 & 4) != 0)
  {
    v12 = *(a1 + 40);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v13;
    if ((v1 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if ((v1 & 8) != 0)
  {
LABEL_12:
    v7 = *(a1 + 44);
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 11;
    }

    v2 += v9;
  }

LABEL_16:
  v3 = v2 + ((v1 >> 4) & 2) + ((v1 >> 3) & 2);
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

std::string *sub_14E55B4(std::string *result, uint64_t a2)
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

        goto LABEL_18;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
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
      v3[2].__r_.__value_.__s.__data_[1] = *(a2 + 49);
      goto LABEL_9;
    }

LABEL_20:
    v3[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
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

uint64_t sub_14E56CC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  sub_1568B30((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14E57B8(uint64_t a1)
{
  sub_14E56CC(a1);

  operator delete();
}

uint64_t sub_14E57F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14E4DA0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0xF) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_15:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }

LABEL_23:
      v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
      }

      goto LABEL_26;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 8) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_23;
  }

LABEL_26:
  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 72) = 0;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_14E594C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v14 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v14 = *v14;
        }

        v15 = (a1 + 48);
      }

      else if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 2u;
        v24 = *(a1 + 8);
        v14 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v14 = *v14;
        }

        v15 = (a1 + 56);
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 4u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 64);
      }

      goto LABEL_43;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_52;
      }

      *(a1 + 16) |= 8u;
      v23 = *(a1 + 8);
      v14 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v14 = *v14;
      }

      v15 = (a1 + 72);
LABEL_43:
      v25 = sub_194DB04(v15, v14);
      v26 = sub_1958890(v25, *v35, a3);
      goto LABEL_44;
    }

    if (v11 != 5)
    {
      break;
    }

    if (v8 != 40)
    {
      goto LABEL_52;
    }

    v5 |= 0x10u;
    v28 = v7 + 1;
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_51:
      *v35 = v28;
      *(a1 + 80) = v27;
      goto LABEL_45;
    }

    v33 = sub_19587DC(v7, v27);
    *v35 = v33;
    *(a1 + 80) = v34;
    if (!v33)
    {
      goto LABEL_64;
    }

LABEL_45:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6 && v8 == 50)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = v16 + 1;
      *v35 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_1527F5C(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = *v35;
      }

      v16 = sub_221503C(a3, v20, v17);
      *v35 = v16;
      if (!v16)
      {
        goto LABEL_64;
      }

      if (*a3 <= v16 || *v16 != 50)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_52:
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

    v26 = sub_1952690(v8, v32, v7, a3);
LABEL_44:
    *v35 = v26;
    if (!v26)
    {
      goto LABEL_64;
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_14E5C68(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = sub_128AEEC(a3, 4, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v4 = sub_128AEEC(a3, 3, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 80);
  *v4 = 40;
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

LABEL_18:
  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *v7 = 50;
      v15 = *(v14 + 20);
      v7[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v7 + 1);
      }

      else
      {
        v16 = v7 + 2;
      }

      v7 = sub_14E51A8(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v20)
  {
    v22 = v20;
    memcpy(v7, v21, v20);
    v7 += v22;
    return v7;
  }

  return sub_1957130(a3, v21, v20, v7);
}

uint64_t sub_14E5EB4(uint64_t a1)
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
      v7 = sub_14E5478(v6);
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
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_24:
      v17 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 8) == 0)
      {
LABEL_14:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_27;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v14 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  if ((v8 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_27:
  v20 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_16:
  v9 = *(a1 + 8);
  if (v9)
  {
    v23 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v2 += v24;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_14E60B0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156AA20(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x1F) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v13 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v13 = *v13;
      }

      result = sub_194EA1C(&v3[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v15 = v3->__r_.__value_.__l.__size_;
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_22:
    v17 = *(a2 + 64);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v18 = v3->__r_.__value_.__l.__size_;
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_12;
      }

LABEL_10:
      v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_25:
    v20 = *(a2 + 72);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v21 = v3->__r_.__value_.__l.__size_;
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    result = sub_194EA1C(&v3[3], (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_14E628C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26E93C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0u;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0u;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0u;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0u;
  *(a1 + 200) = a2;
  *(a1 + 208) = 0u;
  *(a1 + 224) = a2;
  *(a1 + 232) = 0u;
  *(a1 + 248) = a2;
  *(a1 + 256) = 0u;
  *(a1 + 272) = a2;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = a2;
  *(a1 + 312) = a2;
  *(a1 + 320) = 0u;
  *(a1 + 336) = a2;
  *(a1 + 344) = 0u;
  *(a1 + 360) = a2;
  *(a1 + 368) = 0u;
  *(a1 + 384) = a2;
  *(a1 + 392) = 0u;
  *(a1 + 408) = a2;
  *(a1 + 416) = 0u;
  *(a1 + 432) = a2;
  *(a1 + 440) = 0u;
  *(a1 + 456) = a2;
  *(a1 + 464) = 0u;
  *(a1 + 480) = a2;
  *(a1 + 488) = 0u;
  *(a1 + 504) = a2;
  *(a1 + 512) = 0u;
  *(a1 + 528) = a2;
  *(a1 + 536) = 0u;
  *(a1 + 552) = &qword_278E990;
  *(a1 + 560) = &qword_278E990;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 8086;
  return result;
}

uint64_t sub_14E63B0(uint64_t a1)
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

  if (*(a1 + 552) != &qword_278E990)
  {
    sub_194E89C((a1 + 552));
  }

  if (*(a1 + 560) != &qword_278E990)
  {
    sub_194E89C((a1 + 560));
  }

  if (a1 != &off_2774978)
  {
    v5 = *(a1 + 568);
    if (v5)
    {
      sub_14D9BD4(v5);
      operator delete();
    }

    v6 = *(a1 + 576);
    if (v6)
    {
      sub_14E16F8(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_15692EC((a1 + 528));
  sub_1956AFC((a1 + 504));
  sub_1569268((a1 + 480));
  sub_15691E4((a1 + 456));
  sub_1956AFC((a1 + 432));
  sub_1569160((a1 + 408));
  sub_15690DC((a1 + 384));
  sub_1569058((a1 + 360));
  sub_1568FD4((a1 + 336));
  sub_1568F50((a1 + 312));
  sub_1956ABC(a1 + 296);
  sub_1568ECC((a1 + 272));
  sub_1568E48((a1 + 248));
  sub_1568DC4((a1 + 224));
  sub_13473FC((a1 + 200));
  sub_1568D40((a1 + 176));
  sub_1568CBC((a1 + 152));
  sub_1568C38((a1 + 128));
  sub_13473FC((a1 + 104));
  sub_13473FC((a1 + 80));
  sub_1568BB4((a1 + 56));
  sub_1956AFC((a1 + 32));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14E65B0(uint64_t a1)
{
  sub_14E63B0(a1);

  operator delete();
}

uint64_t sub_14E65E8(uint64_t a1)
{
  sub_12A41D0(a1 + 32);
  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 72) + 8);
    do
    {
      v4 = *v3++;
      sub_14D9770(v4);
      --v2;
    }

    while (v2);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 88);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 96) + 8);
    do
    {
      v7 = *v6++;
      sub_1531498(v7);
      --v5;
    }

    while (v5);
    *(a1 + 88) = 0;
  }

  v8 = *(a1 + 112);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 120) + 8);
    do
    {
      v10 = *v9++;
      sub_1531498(v10);
      --v8;
    }

    while (v8);
    *(a1 + 112) = 0;
  }

  v11 = *(a1 + 136);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 144) + 8);
    do
    {
      v13 = *v12++;
      sub_14DA15C(v13);
      --v11;
    }

    while (v11);
    *(a1 + 136) = 0;
  }

  v14 = *(a1 + 160);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 168) + 8);
    do
    {
      v16 = *v15++;
      sub_14DA638(v16);
      --v14;
    }

    while (v14);
    *(a1 + 160) = 0;
  }

  v17 = *(a1 + 184);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 192) + 8);
    do
    {
      v19 = *v18++;
      sub_14DAB14(v19);
      --v17;
    }

    while (v17);
    *(a1 + 184) = 0;
  }

  v20 = *(a1 + 208);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 216) + 8);
    do
    {
      v22 = *v21++;
      sub_1531498(v22);
      --v20;
    }

    while (v20);
    *(a1 + 208) = 0;
  }

  v23 = *(a1 + 232);
  if (v23 >= 1)
  {
    v24 = (*(a1 + 240) + 8);
    do
    {
      v25 = *v24++;
      sub_14DB4CC(v25);
      --v23;
    }

    while (v23);
    *(a1 + 232) = 0;
  }

  v26 = *(a1 + 256);
  if (v26 >= 1)
  {
    v27 = (*(a1 + 264) + 8);
    do
    {
      v28 = *v27++;
      sub_14DB9A8(v28);
      --v26;
    }

    while (v26);
    *(a1 + 256) = 0;
  }

  v29 = *(a1 + 280);
  if (v29 >= 1)
  {
    v30 = (*(a1 + 288) + 8);
    do
    {
      v31 = *v30++;
      sub_14DAFF0(v31);
      --v29;
    }

    while (v29);
    *(a1 + 280) = 0;
  }

  *(a1 + 296) = 0;
  v32 = *(a1 + 320);
  if (v32 >= 1)
  {
    v33 = (*(a1 + 328) + 8);
    do
    {
      v34 = *v33++;
      sub_14DBE84(v34);
      --v32;
    }

    while (v32);
    *(a1 + 320) = 0;
  }

  v35 = *(a1 + 344);
  if (v35 >= 1)
  {
    v36 = (*(a1 + 352) + 8);
    do
    {
      v37 = *v36++;
      sub_14DC3A8(v37);
      --v35;
    }

    while (v35);
    *(a1 + 344) = 0;
  }

  v38 = *(a1 + 368);
  if (v38 >= 1)
  {
    v39 = (*(a1 + 376) + 8);
    do
    {
      v40 = *v39++;
      sub_14DC834(v40);
      --v38;
    }

    while (v38);
    *(a1 + 368) = 0;
  }

  v41 = *(a1 + 392);
  if (v41 >= 1)
  {
    v42 = (*(a1 + 400) + 8);
    do
    {
      v43 = *v42++;
      sub_14DCD1C(v43);
      --v41;
    }

    while (v41);
    *(a1 + 392) = 0;
  }

  v44 = *(a1 + 416);
  if (v44 >= 1)
  {
    v45 = (*(a1 + 424) + 8);
    do
    {
      v46 = *v45++;
      sub_14DD204(v46);
      --v44;
    }

    while (v44);
    *(a1 + 416) = 0;
  }

  sub_12A41D0(a1 + 432);
  v47 = *(a1 + 464);
  if (v47 >= 1)
  {
    v48 = (*(a1 + 472) + 8);
    do
    {
      v49 = *v48++;
      sub_14DD6E4(v49);
      --v47;
    }

    while (v47);
    *(a1 + 464) = 0;
  }

  v50 = *(a1 + 488);
  if (v50 >= 1)
  {
    v51 = (*(a1 + 496) + 8);
    do
    {
      v52 = *v51++;
      sub_14E3B40(v52);
      --v50;
    }

    while (v50);
    *(a1 + 488) = 0;
  }

  result = sub_12A41D0(a1 + 504);
  v54 = *(a1 + 536);
  if (v54 >= 1)
  {
    v55 = (*(a1 + 544) + 8);
    do
    {
      v56 = *v55++;
      result = sub_14E57F0(v56);
      --v54;
    }

    while (v54);
    *(a1 + 536) = 0;
  }

  v57 = *(a1 + 16);
  if ((v57 & 0xF) == 0)
  {
    goto LABEL_79;
  }

  if (v57)
  {
    v60 = *(a1 + 552) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v60 + 23) < 0)
    {
      **v60 = 0;
      *(v60 + 8) = 0;
      if ((v57 & 2) != 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      *v60 = 0;
      *(v60 + 23) = 0;
      if ((v57 & 2) != 0)
      {
        goto LABEL_97;
      }
    }

LABEL_76:
    if ((v57 & 4) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_101;
  }

  if ((v57 & 2) == 0)
  {
    goto LABEL_76;
  }

LABEL_97:
  v61 = *(a1 + 560) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v61 + 23) < 0)
  {
    **v61 = 0;
    *(v61 + 8) = 0;
    if ((v57 & 4) != 0)
    {
      goto LABEL_101;
    }

LABEL_77:
    if ((v57 & 8) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  *v61 = 0;
  *(v61 + 23) = 0;
  if ((v57 & 4) == 0)
  {
    goto LABEL_77;
  }

LABEL_101:
  result = sub_14D9C80(*(a1 + 568));
  if ((v57 & 8) != 0)
  {
LABEL_78:
    result = sub_14E184C(*(a1 + 576));
  }

LABEL_79:
  if ((v57 & 0xF0) != 0)
  {
    *(a1 + 584) = 0;
    *(a1 + 589) = 0;
  }

  if ((v57 & 0xFF00) != 0)
  {
    *(a1 + 612) = 0;
    *(a1 + 597) = 0u;
  }

  if ((v57 & 0xFF0000) != 0)
  {
    *(a1 + 620) = 0;
  }

  if (HIBYTE(v57))
  {
    *(a1 + 644) = 0;
    *(a1 + 628) = 0u;
  }

  if ((*(a1 + 20) & 0x7F) != 0)
  {
    *(a1 + 648) = 0u;
    *(a1 + 664) = 8086;
  }

  v59 = *(a1 + 8);
  v58 = (a1 + 8);
  v58[1] = 0;
  if (v59)
  {

    return sub_1957EA8(v58);
  }

  return result;
}

char *sub_14E6B90(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 596);
    *v4 = 40;
    v4[1] = v7;
    v4 += 2;
  }

  v8 = *(a1 + 40);
  if (v8 >= 1)
  {
    v9 = 8;
    do
    {
      v10 = *(*(a1 + 48) + v9);
      v11 = *(v10 + 23);
      if (v11 < 0 && (v11 = v10[1], v11 > 127) || *a3 - v4 + 14 < v11)
      {
        v4 = sub_1957480(a3, 6, v10, v4);
      }

      else
      {
        *v4 = 50;
        v4[1] = v11;
        if (*(v10 + 23) < 0)
        {
          v10 = *v10;
        }

        v12 = v4 + 2;
        memcpy(v4 + 2, v10, v11);
        v4 = &v12[v11];
      }

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v13 = *(a1 + 597);
    *v4 = 56;
    v4[1] = v13;
    v4 += 2;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 584);
    *v4 = 64;
    v4[1] = v15;
    if (v15 > 0x7F)
    {
      v4[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v4[2] = v15 >> 7;
      v14 = v4 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v17) = v4[2];
        do
        {
          *(v14 - 1) = v17 | 0x80;
          v17 = v16 >> 7;
          *v14++ = v16 >> 7;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v14 = v4 + 2;
    }
  }

  else
  {
    v14 = v4;
  }

  v19 = *(a1 + 64);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v21 = *(*(a1 + 72) + 8 * i + 8);
      *v14 = 74;
      v22 = *(v21 + 20);
      v14[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v14 + 1);
      }

      else
      {
        v23 = v14 + 2;
      }

      v14 = sub_14D99D8(v21, v23, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v25 = *(a1 + 588);
    *v14 = 80;
    v14[1] = v25;
    if (v25 > 0x7F)
    {
      v14[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v14[2] = v25 >> 7;
      v24 = v14 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v14) = v14[2];
        do
        {
          *(v24 - 1) = v14 | 0x80;
          v14 = (v26 >> 7);
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v14 + 2;
    }
  }

  else
  {
    v24 = v14;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 592);
    *v24 = 88;
    v24[1] = v29;
    if (v29 > 0x7F)
    {
      v24[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v24[2] = v29 >> 7;
      v28 = v24 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v24) = v24[2];
        do
        {
          *(v28 - 1) = v24 | 0x80;
          v24 = (v30 >> 7);
          *v28++ = v30 >> 7;
          v31 = v30 >> 14;
          v30 >>= 7;
        }

        while (v31);
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

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v32 = *(a1 + 598);
    *v28 = 96;
    v28[1] = v32;
    v28 += 2;
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 600);
    *v28 = 104;
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v28[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v28[2] = v34 >> 7;
      v33 = v28 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v36) = v28[2];
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
      v33 = v28 + 2;
    }
  }

  else
  {
    v33 = v28;
  }

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v39 = *(a1 + 604);
    *v33 = 112;
    v33[1] = v39;
    if (v39 > 0x7F)
    {
      v33[1] = v39 | 0x80;
      v40 = v39 >> 7;
      v33[2] = v39 >> 7;
      v38 = v33 + 3;
      if (v39 >= 0x4000)
      {
        LOBYTE(v33) = v33[2];
        do
        {
          *(v38 - 1) = v33 | 0x80;
          v33 = (v40 >> 7);
          *v38++ = v40 >> 7;
          v41 = v40 >> 14;
          v40 >>= 7;
        }

        while (v41);
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

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v38)
    {
      v38 = sub_225EB68(a3, v38);
    }

    v42 = *(a1 + 568);
    *v38 = 122;
    v43 = *(v42 + 20);
    v38[1] = v43;
    if (v43 > 0x7F)
    {
      v44 = sub_19575D0(v43, v38 + 1);
    }

    else
    {
      v44 = v38 + 2;
    }

    v38 = sub_14D9EB4(v42, v44, a3);
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v38)
    {
      v38 = sub_225EB68(a3, v38);
    }

    v46 = *(a1 + 608);
    *v38 = 384;
    v38[2] = v46;
    if (v46 > 0x7F)
    {
      v38[2] = v46 | 0x80;
      v47 = v46 >> 7;
      v38[3] = v46 >> 7;
      v45 = v38 + 4;
      if (v46 >= 0x4000)
      {
        LOBYTE(v38) = v38[3];
        do
        {
          *(v45 - 1) = v38 | 0x80;
          v38 = (v47 >> 7);
          *v45++ = v47 >> 7;
          v48 = v47 >> 14;
          v47 >>= 7;
        }

        while (v48);
      }
    }

    else
    {
      v45 = v38 + 3;
    }
  }

  else
  {
    v45 = v38;
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v50 = *(a1 + 612);
    *v45 = 392;
    v45[2] = v50;
    if (v50 > 0x7F)
    {
      v45[2] = v50 | 0x80;
      v51 = v50 >> 7;
      v45[3] = v50 >> 7;
      v49 = v45 + 4;
      if (v50 >= 0x4000)
      {
        LOBYTE(v45) = v45[3];
        do
        {
          *(v49 - 1) = v45 | 0x80;
          v45 = (v51 >> 7);
          *v49++ = v51 >> 7;
          v52 = v51 >> 14;
          v51 >>= 7;
        }

        while (v52);
      }
    }

    else
    {
      v49 = v45 + 3;
    }
  }

  else
  {
    v49 = v45;
  }

  v53 = *(a1 + 88);
  if (v53)
  {
    for (j = 0; j != v53; ++j)
    {
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v55 = *(*(a1 + 96) + 8 * j + 8);
      *v49 = 402;
      v56 = *(v55 + 56);
      v49[2] = v56;
      if (v56 > 0x7F)
      {
        v57 = sub_19575D0(v56, v49 + 2);
      }

      else
      {
        v57 = v49 + 3;
      }

      v49 = sub_15317E4(v55, v57, a3);
    }
  }

  v58 = *(a1 + 112);
  if (v58)
  {
    for (k = 0; k != v58; ++k)
    {
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v60 = *(*(a1 + 120) + 8 * k + 8);
      *v49 = 410;
      v61 = *(v60 + 56);
      v49[2] = v61;
      if (v61 > 0x7F)
      {
        v62 = sub_19575D0(v61, v49 + 2);
      }

      else
      {
        v62 = v49 + 3;
      }

      v49 = sub_15317E4(v60, v62, a3);
    }
  }

  v63 = *(a1 + 136);
  if (v63)
  {
    for (m = 0; m != v63; ++m)
    {
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v65 = *(*(a1 + 144) + 8 * m + 8);
      *v49 = 418;
      v66 = *(v65 + 20);
      v49[2] = v66;
      if (v66 > 0x7F)
      {
        v67 = sub_19575D0(v66, v49 + 2);
      }

      else
      {
        v67 = v49 + 3;
      }

      v49 = sub_14DA390(v65, v67, a3);
    }
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v49)
    {
      v49 = sub_225EB68(a3, v49);
    }

    v69 = *(a1 + 599);
    *v49 = 424;
    v49[2] = v69;
    v49 += 3;
    if ((v6 & 0x10000) == 0)
    {
LABEL_128:
      if ((v6 & 0x20000) == 0)
      {
        goto LABEL_129;
      }

LABEL_137:
      if (*a3 <= v49)
      {
        v49 = sub_225EB68(a3, v49);
      }

      v71 = *(a1 + 621);
      *v49 = 440;
      v49[2] = v71;
      v49 += 3;
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_140;
    }
  }

  else if ((v6 & 0x10000) == 0)
  {
    goto LABEL_128;
  }

  if (*a3 <= v49)
  {
    v49 = sub_225EB68(a3, v49);
  }

  v70 = *(a1 + 620);
  *v49 = 432;
  v49[2] = v70;
  v49 += 3;
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_137;
  }

LABEL_129:
  if ((v6 & 0x8000) == 0)
  {
LABEL_130:
    v68 = v49;
    goto LABEL_147;
  }

LABEL_140:
  if (*a3 <= v49)
  {
    v49 = sub_225EB68(a3, v49);
  }

  v72 = *(a1 + 616);
  *v49 = 448;
  v49[2] = v72;
  if (v72 > 0x7F)
  {
    v49[2] = v72 | 0x80;
    v73 = v72 >> 7;
    v49[3] = v72 >> 7;
    v68 = v49 + 4;
    if (v72 >= 0x4000)
    {
      LOBYTE(v49) = v49[3];
      do
      {
        *(v68 - 1) = v49 | 0x80;
        v49 = (v73 >> 7);
        *v68++ = v73 >> 7;
        v74 = v73 >> 14;
        v73 >>= 7;
      }

      while (v74);
    }
  }

  else
  {
    v68 = v49 + 3;
  }

LABEL_147:
  if ((v6 & 0x40000) != 0)
  {
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v75 = *(a1 + 622);
    *v68 = 456;
    v68[2] = v75;
    v68 += 3;
    if ((v6 & 0x80000) == 0)
    {
LABEL_149:
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_157;
    }
  }

  else if ((v6 & 0x80000) == 0)
  {
    goto LABEL_149;
  }

  if (*a3 <= v68)
  {
    v68 = sub_225EB68(a3, v68);
  }

  v76 = *(a1 + 623);
  *v68 = 464;
  v68[2] = v76;
  v68 += 3;
  if ((v6 & 0x100000) != 0)
  {
LABEL_157:
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v77 = *(a1 + 624);
    *v68 = 472;
    v68[2] = v77;
    v68 += 3;
  }

LABEL_160:
  v78 = *(a1 + 160);
  if (v78)
  {
    for (n = 0; n != v78; ++n)
    {
      if (*a3 <= v68)
      {
        v68 = sub_225EB68(a3, v68);
      }

      v80 = *(*(a1 + 168) + 8 * n + 8);
      *v68 = 482;
      v81 = *(v80 + 20);
      v68[2] = v81;
      if (v81 > 0x7F)
      {
        v82 = sub_19575D0(v81, v68 + 2);
      }

      else
      {
        v82 = v68 + 3;
      }

      v68 = sub_14DA86C(v80, v82, a3);
    }
  }

  v83 = *(a1 + 184);
  if (v83)
  {
    for (ii = 0; ii != v83; ++ii)
    {
      if (*a3 <= v68)
      {
        v68 = sub_225EB68(a3, v68);
      }

      v85 = *(*(a1 + 192) + 8 * ii + 8);
      *v68 = 490;
      v86 = *(v85 + 20);
      v68[2] = v86;
      if (v86 > 0x7F)
      {
        v87 = sub_19575D0(v86, v68 + 2);
      }

      else
      {
        v87 = v68 + 3;
      }

      v68 = sub_14DAD48(v85, v87, a3);
    }
  }

  if ((v6 & 0x200000) != 0)
  {
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v88 = *(a1 + 625);
    *v68 = 496;
    v68[2] = v88;
    v68 += 3;
  }

  v89 = *(a1 + 208);
  if (v89)
  {
    for (jj = 0; jj != v89; ++jj)
    {
      if (*a3 <= v68)
      {
        v68 = sub_225EB68(a3, v68);
      }

      v91 = *(*(a1 + 216) + 8 * jj + 8);
      *v68 = 506;
      v92 = *(v91 + 56);
      v68[2] = v92;
      if (v92 > 0x7F)
      {
        v93 = sub_19575D0(v92, v68 + 2);
      }

      else
      {
        v93 = v68 + 3;
      }

      v68 = sub_15317E4(v91, v93, a3);
    }
  }

  if ((v6 & 0x400000) != 0)
  {
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v94 = *(a1 + 626);
    *v68 = 640;
    v68[2] = v94;
    v68 += 3;
  }

  if ((v6 & 0x1000000) != 0)
  {
    if (*a3 <= v68)
    {
      v68 = sub_225EB68(a3, v68);
    }

    v96 = *(a1 + 628);
    *v68 = 656;
    v68[2] = v96;
    if (v96 > 0x7F)
    {
      v68[2] = v96 | 0x80;
      v97 = v96 >> 7;
      v68[3] = v96 >> 7;
      v95 = v68 + 4;
      if (v96 >= 0x4000)
      {
        LOBYTE(v68) = v68[3];
        do
        {
          *(v95 - 1) = v68 | 0x80;
          v68 = (v97 >> 7);
          *v95++ = v97 >> 7;
          v98 = v97 >> 14;
          v97 >>= 7;
        }

        while (v98);
      }
    }

    else
    {
      v95 = v68 + 3;
    }
  }

  else
  {
    v95 = v68;
  }

  if ((v6 & 0x800000) != 0)
  {
    if (*a3 <= v95)
    {
      v95 = sub_225EB68(a3, v95);
    }

    v99 = *(a1 + 627);
    *v95 = 664;
    v95[2] = v99;
    v95 += 3;
  }

  if ((v6 & 0x2000000) != 0)
  {
    if (*a3 <= v95)
    {
      v95 = sub_225EB68(a3, v95);
    }

    v101 = *(a1 + 632);
    *v95 = 672;
    v95[2] = v101;
    if (v101 > 0x7F)
    {
      v95[2] = v101 | 0x80;
      v102 = v101 >> 7;
      v95[3] = v101 >> 7;
      v100 = v95 + 4;
      if (v101 >= 0x4000)
      {
        LOBYTE(v95) = v95[3];
        do
        {
          *(v100 - 1) = v95 | 0x80;
          v95 = (v102 >> 7);
          *v100++ = v102 >> 7;
          v103 = v102 >> 14;
          v102 >>= 7;
        }

        while (v103);
      }
    }

    else
    {
      v100 = v95 + 3;
    }
  }

  else
  {
    v100 = v95;
  }

  if ((v6 & 0x8000000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v104 = *(a1 + 640);
    *v100 = 688;
    v100[2] = v104;
    v100 += 3;
  }

  v105 = *(a1 + 232);
  if (v105)
  {
    for (kk = 0; kk != v105; ++kk)
    {
      if (*a3 <= v100)
      {
        v100 = sub_225EB68(a3, v100);
      }

      v107 = *(*(a1 + 240) + 8 * kk + 8);
      *v100 = 698;
      v108 = *(v107 + 20);
      v100[2] = v108;
      if (v108 > 0x7F)
      {
        v109 = sub_19575D0(v108, v100 + 2);
      }

      else
      {
        v109 = v100 + 3;
      }

      v100 = sub_14DB700(v107, v109, a3);
    }
  }

  v110 = *(a1 + 256);
  if (v110)
  {
    for (mm = 0; mm != v110; ++mm)
    {
      if (*a3 <= v100)
      {
        v100 = sub_225EB68(a3, v100);
      }

      v112 = *(*(a1 + 264) + 8 * mm + 8);
      *v100 = 706;
      v113 = *(v112 + 20);
      v100[2] = v113;
      if (v113 > 0x7F)
      {
        v114 = sub_19575D0(v113, v100 + 2);
      }

      else
      {
        v114 = v100 + 3;
      }

      v100 = sub_14DBBDC(v112, v114, a3);
    }
  }

  if ((v6 & 0x4000000) != 0)
  {
    if (*a3 <= v100)
    {
      v100 = sub_225EB68(a3, v100);
    }

    v116 = *(a1 + 636);
    *v100 = 712;
    v100[2] = v116;
    if (v116 > 0x7F)
    {
      v100[2] = v116 | 0x80;
      v117 = v116 >> 7;
      v100[3] = v116 >> 7;
      v115 = v100 + 4;
      if (v116 >= 0x4000)
      {
        LOBYTE(v100) = v100[3];
        do
        {
          *(v115 - 1) = v100 | 0x80;
          v100 = (v117 >> 7);
          *v115++ = v117 >> 7;
          v118 = v117 >> 14;
          v117 >>= 7;
        }

        while (v118);
      }
    }

    else
    {
      v115 = v100 + 3;
    }
  }

  else
  {
    v115 = v100;
  }

  if ((v6 & 0x10000000) != 0)
  {
    if (*a3 <= v115)
    {
      v115 = sub_225EB68(a3, v115);
    }

    v119 = *(a1 + 641);
    *v115 = 720;
    v115[2] = v119;
    v115 += 3;
  }

  if (v6 < 0)
  {
    if (*a3 <= v115)
    {
      v115 = sub_225EB68(a3, v115);
    }

    v121 = *(a1 + 644);
    *v115 = 728;
    v115[2] = v121;
    if (v121 > 0x7F)
    {
      v115[2] = v121 | 0x80;
      v122 = v121 >> 7;
      v115[3] = v121 >> 7;
      v120 = v115 + 4;
      if (v121 >= 0x4000)
      {
        LOBYTE(v115) = v115[3];
        do
        {
          *(v120 - 1) = v115 | 0x80;
          v115 = (v122 >> 7);
          *v120++ = v122 >> 7;
          v123 = v122 >> 14;
          v122 >>= 7;
        }

        while (v123);
      }
    }

    else
    {
      v120 = v115 + 3;
    }
  }

  else
  {
    v120 = v115;
  }

  if ((v6 & 0x20000000) != 0)
  {
    if (*a3 <= v120)
    {
      v120 = sub_225EB68(a3, v120);
    }

    v124 = *(a1 + 642);
    *v120 = 736;
    v120[2] = v124;
    v120 += 3;
  }

  v125 = *(a1 + 280);
  if (v125)
  {
    for (nn = 0; nn != v125; ++nn)
    {
      if (*a3 <= v120)
      {
        v120 = sub_225EB68(a3, v120);
      }

      v127 = *(*(a1 + 288) + 8 * nn + 8);
      *v120 = 746;
      v128 = *(v127 + 20);
      v120[2] = v128;
      if (v128 > 0x7F)
      {
        v129 = sub_19575D0(v128, v120 + 2);
      }

      else
      {
        v129 = v120 + 3;
      }

      v120 = sub_14DB224(v127, v129, a3);
    }
  }

  if ((v6 & 0x40000000) != 0)
  {
    if (*a3 <= v120)
    {
      v120 = sub_225EB68(a3, v120);
    }

    v130 = *(a1 + 643);
    *v120 = 752;
    v120[2] = v130;
    v120 += 3;
  }

  v131 = *(a1 + 20);
  if ((v131 & 0x40) != 0)
  {
    if (*a3 <= v120)
    {
      v120 = sub_225EB68(a3, v120);
    }

    v133 = *(a1 + 664);
    *v120 = 912;
    v120[2] = v133;
    if (v133 > 0x7F)
    {
      v120[2] = v133 | 0x80;
      v134 = v133 >> 7;
      v120[3] = v133 >> 7;
      v132 = v120 + 4;
      if (v133 >= 0x4000)
      {
        LOBYTE(v120) = v120[3];
        do
        {
          *(v132 - 1) = v120 | 0x80;
          v120 = (v134 >> 7);
          *v132++ = v134 >> 7;
          v135 = v134 >> 14;
          v134 >>= 7;
        }

        while (v135);
      }
    }

    else
    {
      v132 = v120 + 3;
    }
  }

  else
  {
    v132 = v120;
  }

  v136 = *(a1 + 296);
  if (v136 >= 1)
  {
    v137 = 0;
    v138 = 8 * v136;
    do
    {
      if (*a3 <= v132)
      {
        v132 = sub_225EB68(a3, v132);
      }

      v139 = *(*(a1 + 304) + v137);
      *v132 = 921;
      *(v132 + 2) = v139;
      v132 += 10;
      v137 += 8;
    }

    while (v138 != v137);
  }

  if (v131)
  {
    if (*a3 <= v132)
    {
      v132 = sub_225EB68(a3, v132);
    }

    v141 = *(a1 + 648);
    *v132 = 952;
    v132[2] = v141;
    if (v141 > 0x7F)
    {
      v132[2] = v141 | 0x80;
      v142 = v141 >> 7;
      v132[3] = v141 >> 7;
      v140 = v132 + 4;
      if (v141 >= 0x4000)
      {
        LOBYTE(v132) = v132[3];
        do
        {
          *(v140 - 1) = v132 | 0x80;
          v132 = (v142 >> 7);
          *v140++ = v142 >> 7;
          v143 = v142 >> 14;
          v142 >>= 7;
        }

        while (v143);
      }
    }

    else
    {
      v140 = v132 + 3;
    }
  }

  else
  {
    v140 = v132;
  }

  v144 = *(a1 + 16);
  if (v144)
  {
    v140 = sub_128AEEC(a3, 60, *(a1 + 552) & 0xFFFFFFFFFFFFFFFELL, v140);
  }

  if ((v144 & 2) != 0)
  {
    v140 = sub_128AEEC(a3, 65, *(a1 + 560) & 0xFFFFFFFFFFFFFFFELL, v140);
  }

  v145 = *(a1 + 20);
  if ((v145 & 2) != 0)
  {
    if (*a3 <= v140)
    {
      v140 = sub_225EB68(a3, v140);
    }

    v146 = *(a1 + 652);
    *v140 = 1200;
    v140[2] = v146;
    v140 += 3;
    if ((v145 & 4) == 0)
    {
LABEL_301:
      if ((v145 & 8) == 0)
      {
        goto LABEL_312;
      }

      goto LABEL_309;
    }
  }

  else if ((v145 & 4) == 0)
  {
    goto LABEL_301;
  }

  if (*a3 <= v140)
  {
    v140 = sub_225EB68(a3, v140);
  }

  v147 = *(a1 + 653);
  *v140 = 1208;
  v140[2] = v147;
  v140 += 3;
  if ((v145 & 8) != 0)
  {
LABEL_309:
    if (*a3 <= v140)
    {
      v140 = sub_225EB68(a3, v140);
    }

    v148 = *(a1 + 654);
    *v140 = 1216;
    v140[2] = v148;
    v140 += 3;
  }

LABEL_312:
  v149 = *(a1 + 320);
  if (v149)
  {
    for (i1 = 0; i1 != v149; ++i1)
    {
      if (*a3 <= v140)
      {
        v140 = sub_225EB68(a3, v140);
      }

      v151 = *(*(a1 + 328) + 8 * i1 + 8);
      *v140 = 1242;
      v152 = *(v151 + 20);
      v140[2] = v152;
      if (v152 > 0x7F)
      {
        v153 = sub_19575D0(v152, v140 + 2);
      }

      else
      {
        v153 = v140 + 3;
      }

      v140 = sub_14DC0C4(v151, v153, a3);
    }
  }

  v154 = *(a1 + 344);
  if (v154)
  {
    for (i2 = 0; i2 != v154; ++i2)
    {
      if (*a3 <= v140)
      {
        v140 = sub_225EB68(a3, v140);
      }

      v156 = *(*(a1 + 352) + 8 * i2 + 8);
      *v140 = 1410;
      v157 = *(v156 + 20);
      v140[2] = v157;
      if (v157 > 0x7F)
      {
        v158 = sub_19575D0(v157, v140 + 2);
      }

      else
      {
        v158 = v140 + 3;
      }

      v140 = sub_14DC5A4(v156, v158, a3);
    }
  }

  if ((v145 & 0x10) != 0)
  {
    if (*a3 <= v140)
    {
      v140 = sub_225EB68(a3, v140);
    }

    v160 = *(a1 + 656);
    *v140 = 1416;
    v140[2] = v160;
    if (v160 > 0x7F)
    {
      v140[2] = v160 | 0x80;
      v161 = v160 >> 7;
      v140[3] = v160 >> 7;
      v159 = v140 + 4;
      if (v160 >= 0x4000)
      {
        LOBYTE(v140) = v140[3];
        do
        {
          *(v159 - 1) = v140 | 0x80;
          v140 = (v161 >> 7);
          *v159++ = v161 >> 7;
          v162 = v161 >> 14;
          v161 >>= 7;
        }

        while (v162);
      }
    }

    else
    {
      v159 = v140 + 3;
    }
  }

  else
  {
    v159 = v140;
  }

  v163 = *(a1 + 368);
  if (v163)
  {
    for (i3 = 0; i3 != v163; ++i3)
    {
      if (*a3 <= v159)
      {
        v159 = sub_225EB68(a3, v159);
      }

      v165 = *(*(a1 + 376) + 8 * i3 + 8);
      *v159 = 1426;
      v166 = *(v165 + 20);
      v159[2] = v166;
      if (v166 > 0x7F)
      {
        v167 = sub_19575D0(v166, v159 + 2);
      }

      else
      {
        v167 = v159 + 3;
      }

      v159 = sub_14DCA7C(v165, v167, a3);
    }
  }

  v168 = *(a1 + 392);
  if (v168)
  {
    for (i4 = 0; i4 != v168; ++i4)
    {
      if (*a3 <= v159)
      {
        v159 = sub_225EB68(a3, v159);
      }

      v170 = *(*(a1 + 400) + 8 * i4 + 8);
      *v159 = 1434;
      v171 = *(v170 + 20);
      v159[2] = v171;
      if (v171 > 0x7F)
      {
        v172 = sub_19575D0(v171, v159 + 2);
      }

      else
      {
        v172 = v159 + 3;
      }

      v159 = sub_14DCF64(v170, v172, a3);
    }
  }

  v173 = *(a1 + 416);
  if (v173)
  {
    for (i5 = 0; i5 != v173; ++i5)
    {
      if (*a3 <= v159)
      {
        v159 = sub_225EB68(a3, v159);
      }

      v175 = *(*(a1 + 424) + 8 * i5 + 8);
      *v159 = 1442;
      v176 = *(v175 + 20);
      v159[2] = v176;
      if (v176 > 0x7F)
      {
        v177 = sub_19575D0(v176, v159 + 2);
      }

      else
      {
        v177 = v159 + 3;
      }

      v159 = sub_14DD444(v175, v177, a3);
    }
  }

  v178 = *(a1 + 440);
  if (v178 >= 1)
  {
    v179 = 8;
    do
    {
      v180 = *(*(a1 + 448) + v179);
      v181 = *(v180 + 23);
      if (v181 < 0 && (v181 = v180[1], v181 > 127) || *a3 - v159 + 13 < v181)
      {
        v159 = sub_1957480(a3, 85, v180, v159);
      }

      else
      {
        *v159 = 1450;
        v159[2] = v181;
        if (*(v180 + 23) < 0)
        {
          v180 = *v180;
        }

        v182 = v159 + 3;
        memcpy(v159 + 3, v180, v181);
        v159 = &v182[v181];
      }

      v179 += 8;
      --v178;
    }

    while (v178);
  }

  v183 = *(a1 + 464);
  if (v183)
  {
    for (i6 = 0; i6 != v183; ++i6)
    {
      if (*a3 <= v159)
      {
        v159 = sub_225EB68(a3, v159);
      }

      v185 = *(*(a1 + 472) + 8 * i6 + 8);
      *v159 = 1458;
      v186 = *(v185 + 20);
      v159[2] = v186;
      if (v186 > 0x7F)
      {
        v187 = sub_19575D0(v186, v159 + 2);
      }

      else
      {
        v187 = v159 + 3;
      }

      v159 = sub_14DD924(v185, v187, a3);
    }
  }

  if ((*(a1 + 16) & 8) != 0)
  {
    if (*a3 <= v159)
    {
      v159 = sub_225EB68(a3, v159);
    }

    v188 = *(a1 + 576);
    *v159 = 1466;
    v189 = *(v188 + 20);
    v159[2] = v189;
    if (v189 > 0x7F)
    {
      v190 = sub_19575D0(v189, v159 + 2);
    }

    else
    {
      v190 = v159 + 3;
    }

    v159 = sub_14E2020(v188, v190, a3);
  }

  v191 = *(a1 + 488);
  if (v191)
  {
    for (i7 = 0; i7 != v191; ++i7)
    {
      if (*a3 <= v159)
      {
        v159 = sub_225EB68(a3, v159);
      }

      v193 = *(*(a1 + 496) + 8 * i7 + 8);
      *v159 = 1474;
      v194 = *(v193 + 20);
      v159[2] = v194;
      if (v194 > 0x7F)
      {
        v195 = sub_19575D0(v194, v159 + 2);
      }

      else
      {
        v195 = v159 + 3;
      }

      v159 = sub_14E4254(v193, v195, a3);
    }
  }

  if ((*(a1 + 20) & 0x20) != 0)
  {
    if (*a3 <= v159)
    {
      v159 = sub_225EB68(a3, v159);
    }

    v197 = *(a1 + 660);
    *v159 = 1480;
    v159[2] = v197;
    if (v197 > 0x7F)
    {
      v159[2] = v197 | 0x80;
      v198 = v197 >> 7;
      v159[3] = v197 >> 7;
      v196 = v159 + 4;
      if (v197 >= 0x4000)
      {
        LOBYTE(v199) = v159[3];
        do
        {
          *(v196 - 1) = v199 | 0x80;
          v199 = v198 >> 7;
          *v196++ = v198 >> 7;
          v200 = v198 >> 14;
          v198 >>= 7;
        }

        while (v200);
      }
    }

    else
    {
      v196 = v159 + 3;
    }
  }

  else
  {
    v196 = v159;
  }

  v201 = *(a1 + 512);
  if (v201 >= 1)
  {
    v202 = 8;
    do
    {
      v203 = *(*(a1 + 520) + v202);
      v204 = *(v203 + 23);
      if (v204 < 0 && (v204 = v203[1], v204 > 127) || *a3 - v196 + 13 < v204)
      {
        v196 = sub_1957480(a3, 90, v203, v196);
      }

      else
      {
        *v196 = 1490;
        v196[2] = v204;
        if (*(v203 + 23) < 0)
        {
          v203 = *v203;
        }

        v205 = v196 + 3;
        memcpy(v205, v203, v204);
        v196 = &v205[v204];
      }

      v202 += 8;
      --v201;
    }

    while (v201);
  }

  v206 = *(a1 + 536);
  if (v206)
  {
    for (i8 = 0; i8 != v206; ++i8)
    {
      if (*a3 <= v196)
      {
        v196 = sub_225EB68(a3, v196);
      }

      v208 = *(*(a1 + 544) + 8 * i8 + 8);
      *v196 = 1498;
      v209 = *(v208 + 20);
      v196[2] = v209;
      if (v209 > 0x7F)
      {
        v210 = sub_19575D0(v209, v196 + 2);
      }

      else
      {
        v210 = v196 + 3;
      }

      v196 = sub_14E5C68(v208, v210, a3);
    }
  }

  v211 = *(a1 + 8);
  if ((v211 & 1) == 0)
  {
    return v196;
  }

  v213 = v211 & 0xFFFFFFFFFFFFFFFCLL;
  v214 = *(v213 + 31);
  if (v214 < 0)
  {
    v215 = *(v213 + 8);
    v214 = *(v213 + 16);
  }

  else
  {
    v215 = (v213 + 8);
  }

  if (*a3 - v196 >= v214)
  {
    v216 = v214;
    memcpy(v196, v215, v214);
    v196 += v216;
    return v196;
  }

  return sub_1957130(a3, v215, v214, v196);
}

uint64_t sub_14E8594(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 < 1)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v3 = (*(a1 + 48) + 8);
    v4 = *(a1 + 40);
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

  v8 = *(a1 + 64);
  v9 = v4 + v8;
  v10 = *(a1 + 72);
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
      v14 = sub_14D9B38(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 88);
  v16 = v9 + 2 * v15;
  v17 = *(a1 + 96);
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
      v21 = sub_15319C4(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 112);
  v23 = v16 + 2 * v22;
  v24 = *(a1 + 120);
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
      v28 = sub_15319C4(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 136);
  v30 = v23 + 2 * v29;
  v31 = *(a1 + 144);
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
      v35 = sub_14DA4F0(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 160);
  v37 = v30 + 2 * v36;
  v38 = *(a1 + 168);
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
      v42 = sub_14DA9CC(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 184);
  v44 = v37 + 2 * v43;
  v45 = *(a1 + 192);
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
      v49 = sub_14DAEA8(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 208);
  v51 = v44 + 2 * v50;
  v52 = *(a1 + 216);
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
      v56 = sub_15319C4(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = *(a1 + 232);
  v58 = v51 + 2 * v57;
  v59 = *(a1 + 240);
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
      v63 = sub_14DB860(v62);
      v58 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
      v61 -= 8;
    }

    while (v61);
  }

  v64 = *(a1 + 256);
  v65 = v58 + 2 * v64;
  v66 = *(a1 + 264);
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
      v70 = sub_14DBD3C(v69);
      v65 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6);
      v68 -= 8;
    }

    while (v68);
  }

  v71 = *(a1 + 280);
  v72 = v65 + 2 * v71;
  v73 = *(a1 + 288);
  if (v73)
  {
    v74 = (v73 + 8);
  }

  else
  {
    v74 = 0;
  }

  if (v71)
  {
    v75 = 8 * v71;
    do
    {
      v76 = *v74++;
      v77 = sub_14DB384(v76);
      v72 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6);
      v75 -= 8;
    }

    while (v75);
  }

  v78 = *(a1 + 320);
  v79 = v72 + 8 * *(a1 + 296) + 2 * (v78 + *(a1 + 296));
  v80 = *(a1 + 328);
  if (v80)
  {
    v81 = (v80 + 8);
  }

  else
  {
    v81 = 0;
  }

  if (v78)
  {
    v82 = 8 * v78;
    do
    {
      v83 = *v81++;
      v84 = sub_14DC224(v83);
      v79 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6);
      v82 -= 8;
    }

    while (v82);
  }

  v85 = *(a1 + 344);
  v86 = v79 + 2 * v85;
  v87 = *(a1 + 352);
  if (v87)
  {
    v88 = (v87 + 8);
  }

  else
  {
    v88 = 0;
  }

  if (v85)
  {
    v89 = 8 * v85;
    do
    {
      v90 = *v88++;
      v91 = sub_14DC68C(v90);
      v86 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6);
      v89 -= 8;
    }

    while (v89);
  }

  v92 = *(a1 + 368);
  v93 = v86 + 2 * v92;
  v94 = *(a1 + 376);
  if (v94)
  {
    v95 = (v94 + 8);
  }

  else
  {
    v95 = 0;
  }

  if (v92)
  {
    v96 = 8 * v92;
    do
    {
      v97 = *v95++;
      v98 = sub_14DCBDC(v97);
      v93 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6);
      v96 -= 8;
    }

    while (v96);
  }

  v99 = *(a1 + 392);
  v100 = v93 + 2 * v99;
  v101 = *(a1 + 400);
  if (v101)
  {
    v102 = (v101 + 8);
  }

  else
  {
    v102 = 0;
  }

  if (v99)
  {
    v103 = 8 * v99;
    do
    {
      v104 = *v102++;
      v105 = sub_14DD0C4(v104);
      v100 += v105 + ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6);
      v103 -= 8;
    }

    while (v103);
  }

  v106 = *(a1 + 416);
  v107 = v100 + 2 * v106;
  v108 = *(a1 + 424);
  if (v108)
  {
    v109 = (v108 + 8);
  }

  else
  {
    v109 = 0;
  }

  if (v106)
  {
    v110 = 8 * v106;
    do
    {
      v111 = *v109++;
      v112 = sub_14DD5A4(v111);
      v107 += v112 + ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6);
      v110 -= 8;
    }

    while (v110);
  }

  v113 = *(a1 + 440);
  v114 = v107 + 2 * v113;
  if (v113 >= 1)
  {
    v115 = (*(a1 + 448) + 8);
    do
    {
      v116 = *v115++;
      v117 = *(v116 + 23);
      v118 = *(v116 + 8);
      if ((v117 & 0x80u) == 0)
      {
        v118 = v117;
      }

      v114 += v118 + ((9 * (__clz(v118 | 1) ^ 0x1F) + 73) >> 6);
      --v113;
    }

    while (v113);
  }

  v119 = *(a1 + 464);
  v120 = v114 + 2 * v119;
  v121 = *(a1 + 472);
  if (v121)
  {
    v122 = (v121 + 8);
  }

  else
  {
    v122 = 0;
  }

  if (v119)
  {
    v123 = 8 * v119;
    do
    {
      v124 = *v122++;
      v125 = sub_14DDA84(v124);
      v120 += v125 + ((9 * (__clz(v125 | 1) ^ 0x1F) + 73) >> 6);
      v123 -= 8;
    }

    while (v123);
  }

  v126 = *(a1 + 488);
  v127 = v120 + 2 * v126;
  v128 = *(a1 + 496);
  if (v128)
  {
    v129 = (v128 + 8);
  }

  else
  {
    v129 = 0;
  }

  if (v126)
  {
    v130 = 8 * v126;
    do
    {
      v131 = *v129++;
      v132 = sub_14E46F4(v131);
      v127 += v132 + ((9 * (__clz(v132 | 1) ^ 0x1F) + 73) >> 6);
      v130 -= 8;
    }

    while (v130);
  }

  v133 = *(a1 + 512);
  v134 = v127 + 2 * v133;
  if (v133 >= 1)
  {
    v135 = (*(a1 + 520) + 8);
    do
    {
      v136 = *v135++;
      v137 = *(v136 + 23);
      v138 = *(v136 + 8);
      if ((v137 & 0x80u) == 0)
      {
        v138 = v137;
      }

      v134 += v138 + ((9 * (__clz(v138 | 1) ^ 0x1F) + 73) >> 6);
      --v133;
    }

    while (v133);
  }

  v139 = *(a1 + 536);
  v140 = v134 + 2 * v139;
  v141 = *(a1 + 544);
  if (v141)
  {
    v142 = (v141 + 8);
  }

  else
  {
    v142 = 0;
  }

  if (v139)
  {
    v143 = 8 * v139;
    do
    {
      v144 = *v142++;
      v145 = sub_14E5EB4(v144);
      v140 += v145 + ((9 * (__clz(v145 | 1) ^ 0x1F) + 73) >> 6);
      v143 -= 8;
    }

    while (v143);
  }

  v146 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v146)
    {
      v171 = *(a1 + 552) & 0xFFFFFFFFFFFFFFFELL;
      v172 = *(v171 + 23);
      v173 = *(v171 + 8);
      if ((v172 & 0x80u) == 0)
      {
        v173 = v172;
      }

      v140 += v173 + ((9 * (__clz(v173 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v146 & 2) == 0)
      {
LABEL_129:
        if ((v146 & 4) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_220;
      }
    }

    else if ((v146 & 2) == 0)
    {
      goto LABEL_129;
    }

    v174 = *(a1 + 560) & 0xFFFFFFFFFFFFFFFELL;
    v175 = *(v174 + 23);
    v176 = *(v174 + 8);
    if ((v175 & 0x80u) == 0)
    {
      v176 = v175;
    }

    v140 += v176 + ((9 * (__clz(v176 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v146 & 4) == 0)
    {
LABEL_130:
      if ((v146 & 8) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_221;
    }

LABEL_220:
    v177 = sub_14DA014(*(a1 + 568));
    v140 += v177 + ((9 * (__clz(v177 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v146 & 8) == 0)
    {
LABEL_131:
      if ((v146 & 0x10) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_222;
    }

LABEL_221:
    v178 = sub_14E2604(*(a1 + 576));
    v140 += v178 + ((9 * (__clz(v178 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v146 & 0x10) == 0)
    {
LABEL_132:
      if ((v146 & 0x20) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_226;
    }

LABEL_222:
    v179 = *(a1 + 584);
    v180 = ((9 * (__clz(v179 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v179 >= 0)
    {
      v181 = v180;
    }

    else
    {
      v181 = 11;
    }

    v140 += v181;
    if ((v146 & 0x20) == 0)
    {
LABEL_133:
      if ((v146 & 0x40) == 0)
      {
LABEL_138:
        v140 += (v146 >> 6) & 2;
        goto LABEL_139;
      }

LABEL_134:
      v147 = *(a1 + 592);
      v148 = ((9 * (__clz(v147 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v147 >= 0)
      {
        v149 = v148;
      }

      else
      {
        v149 = 11;
      }

      v140 += v149;
      goto LABEL_138;
    }

LABEL_226:
    v182 = *(a1 + 588);
    v183 = ((9 * (__clz(v182 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v182 >= 0)
    {
      v184 = v183;
    }

    else
    {
      v184 = 11;
    }

    v140 += v184;
    if ((v146 & 0x40) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_134;
  }

LABEL_139:
  if ((v146 & 0xFF00) == 0)
  {
    goto LABEL_152;
  }

  if ((v146 & 0x400) != 0)
  {
    v140 += ((v146 >> 8) & 2) + ((v146 >> 7) & 2) + 3;
  }

  else
  {
    v140 += ((v146 >> 8) & 2) + ((v146 >> 7) & 2);
  }

  if ((v146 & 0x800) != 0)
  {
    v185 = *(a1 + 600);
    v186 = ((9 * (__clz(v185 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v185 >= 0)
    {
      v187 = v186;
    }

    else
    {
      v187 = 11;
    }

    v140 += v187;
    if ((v146 & 0x1000) == 0)
    {
LABEL_145:
      if ((v146 & 0x2000) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_239;
    }
  }

  else if ((v146 & 0x1000) == 0)
  {
    goto LABEL_145;
  }

  v188 = *(a1 + 604);
  v189 = ((9 * (__clz(v188 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v188 >= 0)
  {
    v190 = v189;
  }

  else
  {
    v190 = 11;
  }

  v140 += v190;
  if ((v146 & 0x2000) == 0)
  {
LABEL_146:
    if ((v146 & 0x4000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_243;
  }

LABEL_239:
  v191 = *(a1 + 608);
  v192 = ((9 * (__clz(v191 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v191 >= 0)
  {
    v193 = v192;
  }

  else
  {
    v193 = 12;
  }

  v140 += v193;
  if ((v146 & 0x4000) == 0)
  {
LABEL_147:
    if ((v146 & 0x8000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_148;
  }

LABEL_243:
  v194 = *(a1 + 612);
  v195 = ((9 * (__clz(v194 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v194 >= 0)
  {
    v196 = v195;
  }

  else
  {
    v196 = 12;
  }

  v140 += v196;
  if ((v146 & 0x8000) != 0)
  {
LABEL_148:
    v150 = *(a1 + 616);
    v151 = ((9 * (__clz(v150 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v150 >= 0)
    {
      v152 = v151;
    }

    else
    {
      v152 = 12;
    }

    v140 += v152;
  }

LABEL_152:
  if ((v146 & 0xFF0000) != 0)
  {
    v153 = v140 + 3;
    if ((v146 & 0x10000) == 0)
    {
      v153 = v140;
    }

    if ((v146 & 0x20000) != 0)
    {
      v153 += 3;
    }

    if ((v146 & 0x40000) != 0)
    {
      v153 += 3;
    }

    if ((v146 & 0x80000) != 0)
    {
      v153 += 3;
    }

    if ((v146 & 0x100000) != 0)
    {
      v153 += 3;
    }

    if ((v146 & 0x200000) != 0)
    {
      v153 += 3;
    }

    if ((v146 & 0x400000) != 0)
    {
      v153 += 3;
    }

    if ((v146 & 0x800000) != 0)
    {
      v140 = v153 + 3;
    }

    else
    {
      v140 = v153;
    }
  }

  if (BYTE3(v146))
  {
    if ((v146 & 0x1000000) != 0)
    {
      v203 = *(a1 + 628);
      v204 = ((9 * (__clz(v203 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v203 >= 0)
      {
        v205 = v204;
      }

      else
      {
        v205 = 12;
      }

      v140 += v205;
      if ((v146 & 0x2000000) == 0)
      {
LABEL_173:
        if ((v146 & 0x4000000) == 0)
        {
LABEL_178:
          v157 = v140 + 3;
          if ((v146 & 0x8000000) == 0)
          {
            v157 = v140;
          }

          if ((v146 & 0x10000000) != 0)
          {
            v157 += 3;
          }

          if ((v146 & 0x20000000) != 0)
          {
            v157 += 3;
          }

          if ((v146 & 0x40000000) != 0)
          {
            v140 = v157 + 3;
          }

          else
          {
            v140 = v157;
          }

          if ((v146 & 0x80000000) != 0)
          {
            v158 = *(a1 + 644);
            v159 = ((9 * (__clz(v158 | 1) ^ 0x1F) + 73) >> 6) + 2;
            if (v158 >= 0)
            {
              v160 = v159;
            }

            else
            {
              v160 = 12;
            }

            v140 += v160;
          }

          goto LABEL_192;
        }

LABEL_174:
        v154 = *(a1 + 636);
        v155 = ((9 * (__clz(v154 | 1) ^ 0x1F) + 73) >> 6) + 2;
        if (v154 >= 0)
        {
          v156 = v155;
        }

        else
        {
          v156 = 12;
        }

        v140 += v156;
        goto LABEL_178;
      }
    }

    else if ((v146 & 0x2000000) == 0)
    {
      goto LABEL_173;
    }

    v206 = *(a1 + 632);
    v207 = ((9 * (__clz(v206 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v206 >= 0)
    {
      v208 = v207;
    }

    else
    {
      v208 = 12;
    }

    v140 += v208;
    if ((v146 & 0x4000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_174;
  }

LABEL_192:
  v161 = *(a1 + 20);
  if ((v161 & 0x7F) == 0)
  {
    goto LABEL_212;
  }

  if (v161)
  {
    v162 = *(a1 + 648);
    v163 = ((9 * (__clz(v162 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v162 >= 0)
    {
      v164 = v163;
    }

    else
    {
      v164 = 12;
    }

    v140 += v164;
  }

  v165 = v140 + 3;
  if ((v161 & 2) == 0)
  {
    v165 = v140;
  }

  if ((v161 & 4) != 0)
  {
    v165 += 3;
  }

  if ((v161 & 8) != 0)
  {
    v140 = v165 + 3;
  }

  else
  {
    v140 = v165;
  }

  if ((v161 & 0x10) != 0)
  {
    v197 = *(a1 + 656);
    v198 = ((9 * (__clz(v197 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v197 >= 0)
    {
      v199 = v198;
    }

    else
    {
      v199 = 12;
    }

    v140 += v199;
    if ((v161 & 0x20) == 0)
    {
LABEL_207:
      if ((v161 & 0x40) == 0)
      {
        goto LABEL_212;
      }

      goto LABEL_208;
    }
  }

  else if ((v161 & 0x20) == 0)
  {
    goto LABEL_207;
  }

  v200 = *(a1 + 660);
  v201 = ((9 * (__clz(v200 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v200 >= 0)
  {
    v202 = v201;
  }

  else
  {
    v202 = 12;
  }

  v140 += v202;
  if ((v161 & 0x40) != 0)
  {
LABEL_208:
    v166 = *(a1 + 664);
    v167 = ((9 * (__clz(v166 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v166 >= 0)
    {
      v168 = v167;
    }

    else
    {
      v168 = 12;
    }

    v140 += v168;
  }

LABEL_212:
  v169 = *(a1 + 8);
  if (v169)
  {
    v209 = v169 & 0xFFFFFFFFFFFFFFFCLL;
    v210 = *((v169 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v210 < 0)
    {
      v210 = *(v209 + 16);
    }

    v140 += v210;
  }

  *(a1 + 24) = v140;
  return v140;
}

void sub_14E9228(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 48);
    v6 = sub_19592E8(a1 + 32, *(a2 + 40));
    sub_1201B48(a1 + 32, v6, (v5 + 8), v4, **(a1 + 48) - *(a1 + 40));
    v7 = *(a1 + 40) + v4;
    *(a1 + 40) = v7;
    v8 = *(a1 + 48);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 64);
  if (v9)
  {
    v10 = *(a2 + 72);
    v11 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_156AAAC((a1 + 56), v11, (v10 + 8), v9, **(a1 + 72) - *(a1 + 64));
    v12 = *(a1 + 64) + v9;
    *(a1 + 64) = v12;
    v13 = *(a1 + 72);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 88);
  if (v14)
  {
    v15 = *(a2 + 96);
    v16 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_1347FD8((a1 + 80), v16, (v15 + 8), v14, **(a1 + 96) - *(a1 + 88));
    v17 = *(a1 + 88) + v14;
    *(a1 + 88) = v17;
    v18 = *(a1 + 96);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 112);
  if (v19)
  {
    v20 = *(a2 + 120);
    v21 = sub_19592E8(a1 + 104, *(a2 + 112));
    sub_1347FD8((a1 + 104), v21, (v20 + 8), v19, **(a1 + 120) - *(a1 + 112));
    v22 = *(a1 + 112) + v19;
    *(a1 + 112) = v22;
    v23 = *(a1 + 120);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 136);
  if (v24)
  {
    v25 = *(a2 + 144);
    v26 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_156AB28((a1 + 128), v26, (v25 + 8), v24, **(a1 + 144) - *(a1 + 136));
    v27 = *(a1 + 136) + v24;
    *(a1 + 136) = v27;
    v28 = *(a1 + 144);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 160);
  if (v29)
  {
    v30 = *(a2 + 168);
    v31 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_156ABA4((a1 + 152), v31, (v30 + 8), v29, **(a1 + 168) - *(a1 + 160));
    v32 = *(a1 + 160) + v29;
    *(a1 + 160) = v32;
    v33 = *(a1 + 168);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 184);
  if (v34)
  {
    v35 = *(a2 + 192);
    v36 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_156AC20((a1 + 176), v36, (v35 + 8), v34, **(a1 + 192) - *(a1 + 184));
    v37 = *(a1 + 184) + v34;
    *(a1 + 184) = v37;
    v38 = *(a1 + 192);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 208);
  if (v39)
  {
    v40 = *(a2 + 216);
    v41 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_1347FD8((a1 + 200), v41, (v40 + 8), v39, **(a1 + 216) - *(a1 + 208));
    v42 = *(a1 + 208) + v39;
    *(a1 + 208) = v42;
    v43 = *(a1 + 216);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 232);
  if (v44)
  {
    v45 = *(a2 + 240);
    v46 = sub_19592E8(a1 + 224, *(a2 + 232));
    sub_156AC9C((a1 + 224), v46, (v45 + 8), v44, **(a1 + 240) - *(a1 + 232));
    v47 = *(a1 + 232) + v44;
    *(a1 + 232) = v47;
    v48 = *(a1 + 240);
    if (*v48 < v47)
    {
      *v48 = v47;
    }
  }

  v49 = *(a2 + 256);
  if (v49)
  {
    v50 = *(a2 + 264);
    v51 = sub_19592E8(a1 + 248, *(a2 + 256));
    sub_156AD18((a1 + 248), v51, (v50 + 8), v49, **(a1 + 264) - *(a1 + 256));
    v52 = *(a1 + 256) + v49;
    *(a1 + 256) = v52;
    v53 = *(a1 + 264);
    if (*v53 < v52)
    {
      *v53 = v52;
    }
  }

  v54 = *(a2 + 280);
  if (v54)
  {
    v55 = *(a2 + 288);
    v56 = sub_19592E8(a1 + 272, *(a2 + 280));
    sub_156AD94((a1 + 272), v56, (v55 + 8), v54, **(a1 + 288) - *(a1 + 280));
    v57 = *(a1 + 280) + v54;
    *(a1 + 280) = v57;
    v58 = *(a1 + 288);
    if (*v58 < v57)
    {
      *v58 = v57;
    }
  }

  v59 = *(a2 + 296);
  if (v59)
  {
    v60 = *(a1 + 296);
    sub_1959094((a1 + 296), v60 + v59);
    v61 = *(a1 + 304);
    *(a1 + 296) += *(a2 + 296);
    memcpy((v61 + 8 * v60), *(a2 + 304), 8 * *(a2 + 296));
  }

  v62 = *(a2 + 320);
  if (v62)
  {
    v63 = *(a2 + 328);
    v64 = sub_19592E8(a1 + 312, *(a2 + 320));
    sub_156AE10((a1 + 312), v64, (v63 + 8), v62, **(a1 + 328) - *(a1 + 320));
    v65 = *(a1 + 320) + v62;
    *(a1 + 320) = v65;
    v66 = *(a1 + 328);
    if (*v66 < v65)
    {
      *v66 = v65;
    }
  }

  v67 = *(a2 + 344);
  if (v67)
  {
    v68 = *(a2 + 352);
    v69 = sub_19592E8(a1 + 336, *(a2 + 344));
    sub_156AE8C((a1 + 336), v69, (v68 + 8), v67, **(a1 + 352) - *(a1 + 344));
    v70 = *(a1 + 344) + v67;
    *(a1 + 344) = v70;
    v71 = *(a1 + 352);
    if (*v71 < v70)
    {
      *v71 = v70;
    }
  }

  v72 = *(a2 + 368);
  if (v72)
  {
    v73 = *(a2 + 376);
    v74 = sub_19592E8(a1 + 360, *(a2 + 368));
    sub_156AF08((a1 + 360), v74, (v73 + 8), v72, **(a1 + 376) - *(a1 + 368));
    v75 = *(a1 + 368) + v72;
    *(a1 + 368) = v75;
    v76 = *(a1 + 376);
    if (*v76 < v75)
    {
      *v76 = v75;
    }
  }

  v77 = *(a2 + 392);
  if (v77)
  {
    v78 = *(a2 + 400);
    v79 = sub_19592E8(a1 + 384, *(a2 + 392));
    sub_156AF84((a1 + 384), v79, (v78 + 8), v77, **(a1 + 400) - *(a1 + 392));
    v80 = *(a1 + 392) + v77;
    *(a1 + 392) = v80;
    v81 = *(a1 + 400);
    if (*v81 < v80)
    {
      *v81 = v80;
    }
  }

  v82 = *(a2 + 416);
  if (v82)
  {
    v83 = *(a2 + 424);
    v84 = sub_19592E8(a1 + 408, *(a2 + 416));
    sub_156B000((a1 + 408), v84, (v83 + 8), v82, **(a1 + 424) - *(a1 + 416));
    v85 = *(a1 + 416) + v82;
    *(a1 + 416) = v85;
    v86 = *(a1 + 424);
    if (*v86 < v85)
    {
      *v86 = v85;
    }
  }

  v87 = *(a2 + 440);
  if (v87)
  {
    v88 = *(a2 + 448);
    v89 = sub_19592E8(a1 + 432, *(a2 + 440));
    sub_1201B48(a1 + 432, v89, (v88 + 8), v87, **(a1 + 448) - *(a1 + 440));
    v90 = *(a1 + 440) + v87;
    *(a1 + 440) = v90;
    v91 = *(a1 + 448);
    if (*v91 < v90)
    {
      *v91 = v90;
    }
  }

  v92 = *(a2 + 464);
  if (v92)
  {
    v93 = *(a2 + 472);
    v94 = sub_19592E8(a1 + 456, *(a2 + 464));
    sub_156B07C((a1 + 456), v94, (v93 + 8), v92, **(a1 + 472) - *(a1 + 464));
    v95 = *(a1 + 464) + v92;
    *(a1 + 464) = v95;
    v96 = *(a1 + 472);
    if (*v96 < v95)
    {
      *v96 = v95;
    }
  }

  v97 = *(a2 + 488);
  if (v97)
  {
    v98 = *(a2 + 496);
    v99 = sub_19592E8(a1 + 480, *(a2 + 488));
    sub_156B0F8((a1 + 480), v99, (v98 + 8), v97, **(a1 + 496) - *(a1 + 488));
    v100 = *(a1 + 488) + v97;
    *(a1 + 488) = v100;
    v101 = *(a1 + 496);
    if (*v101 < v100)
    {
      *v101 = v100;
    }
  }

  v102 = *(a2 + 512);
  if (v102)
  {
    v103 = *(a2 + 520);
    v104 = sub_19592E8(a1 + 504, *(a2 + 512));
    sub_1201B48(a1 + 504, v104, (v103 + 8), v102, **(a1 + 520) - *(a1 + 512));
    v105 = *(a1 + 512) + v102;
    *(a1 + 512) = v105;
    v106 = *(a1 + 520);
    if (*v106 < v105)
    {
      *v106 = v105;
    }
  }

  v107 = *(a2 + 536);
  if (v107)
  {
    v108 = *(a2 + 544);
    v109 = sub_19592E8(a1 + 528, *(a2 + 536));
    sub_156B184((a1 + 528), v109, (v108 + 8), v107, **(a1 + 544) - *(a1 + 536));
    v110 = *(a1 + 536) + v107;
    *(a1 + 536) = v110;
    v111 = *(a1 + 544);
    if (*v111 < v110)
    {
      *v111 = v110;
    }
  }

  v112 = *(a2 + 16);
  if (v112)
  {
    if (v112)
    {
      v115 = *(a2 + 552);
      *(a1 + 16) |= 1u;
      v116 = *(a1 + 8);
      v117 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
      if (v116)
      {
        v117 = *v117;
      }

      sub_194EA1C((a1 + 552), (v115 & 0xFFFFFFFFFFFFFFFELL), v117);
      if ((v112 & 2) == 0)
      {
LABEL_69:
        if ((v112 & 4) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_129;
      }
    }

    else if ((v112 & 2) == 0)
    {
      goto LABEL_69;
    }

    v118 = *(a2 + 560);
    *(a1 + 16) |= 2u;
    v119 = *(a1 + 8);
    v120 = (v119 & 0xFFFFFFFFFFFFFFFCLL);
    if (v119)
    {
      v120 = *v120;
    }

    sub_194EA1C((a1 + 560), (v118 & 0xFFFFFFFFFFFFFFFELL), v120);
    if ((v112 & 4) == 0)
    {
LABEL_70:
      if ((v112 & 8) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_137;
    }

LABEL_129:
    *(a1 + 16) |= 4u;
    v121 = *(a1 + 568);
    if (!v121)
    {
      v122 = *(a1 + 8);
      v123 = (v122 & 0xFFFFFFFFFFFFFFFCLL);
      if (v122)
      {
        v123 = *v123;
      }

      v121 = sub_1527210(v123);
      *(a1 + 568) = v121;
    }

    if (*(a2 + 568))
    {
      v124 = *(a2 + 568);
    }

    else
    {
      v124 = &off_27746F0;
    }

    sub_12BEE58(v121, v124);
    if ((v112 & 8) == 0)
    {
LABEL_71:
      if ((v112 & 0x10) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_145;
    }

LABEL_137:
    *(a1 + 16) |= 8u;
    v125 = *(a1 + 576);
    if (!v125)
    {
      v126 = *(a1 + 8);
      v127 = (v126 & 0xFFFFFFFFFFFFFFFCLL);
      if (v126)
      {
        v127 = *v127;
      }

      sub_1527CAC(v127);
      *(a1 + 576) = v125;
    }

    if (*(a2 + 576))
    {
      v128 = *(a2 + 576);
    }

    else
    {
      v128 = &off_27747D0;
    }

    sub_14E28F8(v125, v128);
    if ((v112 & 0x10) == 0)
    {
LABEL_72:
      if ((v112 & 0x20) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_146;
    }

LABEL_145:
    *(a1 + 584) = *(a2 + 584);
    if ((v112 & 0x20) == 0)
    {
LABEL_73:
      if ((v112 & 0x40) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_147;
    }

LABEL_146:
    *(a1 + 588) = *(a2 + 588);
    if ((v112 & 0x40) == 0)
    {
LABEL_74:
      if ((v112 & 0x80) == 0)
      {
LABEL_76:
        *(a1 + 16) |= v112;
        goto LABEL_77;
      }

LABEL_75:
      *(a1 + 596) = *(a2 + 596);
      goto LABEL_76;
    }

LABEL_147:
    *(a1 + 592) = *(a2 + 592);
    if ((v112 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_77:
  if ((v112 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v112 & 0x100) != 0)
  {
    *(a1 + 597) = *(a2 + 597);
    if ((v112 & 0x200) == 0)
    {
LABEL_80:
      if ((v112 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_151;
    }
  }

  else if ((v112 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(a1 + 598) = *(a2 + 598);
  if ((v112 & 0x400) == 0)
  {
LABEL_81:
    if ((v112 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(a1 + 599) = *(a2 + 599);
  if ((v112 & 0x800) == 0)
  {
LABEL_82:
    if ((v112 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(a1 + 600) = *(a2 + 600);
  if ((v112 & 0x1000) == 0)
  {
LABEL_83:
    if ((v112 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_154;
  }

LABEL_153:
  *(a1 + 604) = *(a2 + 604);
  if ((v112 & 0x2000) == 0)
  {
LABEL_84:
    if ((v112 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

LABEL_155:
    *(a1 + 612) = *(a2 + 612);
    if ((v112 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_154:
  *(a1 + 608) = *(a2 + 608);
  if ((v112 & 0x4000) != 0)
  {
    goto LABEL_155;
  }

LABEL_85:
  if ((v112 & 0x8000) != 0)
  {
LABEL_86:
    *(a1 + 616) = *(a2 + 616);
  }

LABEL_87:
  *(a1 + 16) |= v112;
LABEL_88:
  if ((v112 & 0xFF0000) == 0)
  {
    goto LABEL_99;
  }

  if ((v112 & 0x10000) != 0)
  {
    *(a1 + 620) = *(a2 + 620);
    if ((v112 & 0x20000) == 0)
    {
LABEL_91:
      if ((v112 & 0x40000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_159;
    }
  }

  else if ((v112 & 0x20000) == 0)
  {
    goto LABEL_91;
  }

  *(a1 + 621) = *(a2 + 621);
  if ((v112 & 0x40000) == 0)
  {
LABEL_92:
    if ((v112 & 0x80000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(a1 + 622) = *(a2 + 622);
  if ((v112 & 0x80000) == 0)
  {
LABEL_93:
    if ((v112 & 0x100000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(a1 + 623) = *(a2 + 623);
  if ((v112 & 0x100000) == 0)
  {
LABEL_94:
    if ((v112 & 0x200000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_162;
  }

LABEL_161:
  *(a1 + 624) = *(a2 + 624);
  if ((v112 & 0x200000) == 0)
  {
LABEL_95:
    if ((v112 & 0x400000) == 0)
    {
      goto LABEL_96;
    }

LABEL_163:
    *(a1 + 626) = *(a2 + 626);
    if ((v112 & 0x800000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_162:
  *(a1 + 625) = *(a2 + 625);
  if ((v112 & 0x400000) != 0)
  {
    goto LABEL_163;
  }

LABEL_96:
  if ((v112 & 0x800000) != 0)
  {
LABEL_97:
    *(a1 + 627) = *(a2 + 627);
  }

LABEL_98:
  *(a1 + 16) |= v112;
LABEL_99:
  if (!HIBYTE(v112))
  {
    goto LABEL_109;
  }

  if ((v112 & 0x1000000) != 0)
  {
    *(a1 + 628) = *(a2 + 628);
    if ((v112 & 0x2000000) == 0)
    {
LABEL_102:
      if ((v112 & 0x4000000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_174;
    }
  }

  else if ((v112 & 0x2000000) == 0)
  {
    goto LABEL_102;
  }

  *(a1 + 632) = *(a2 + 632);
  if ((v112 & 0x4000000) == 0)
  {
LABEL_103:
    if ((v112 & 0x8000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(a1 + 636) = *(a2 + 636);
  if ((v112 & 0x8000000) == 0)
  {
LABEL_104:
    if ((v112 & 0x10000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_176;
  }

LABEL_175:
  *(a1 + 640) = *(a2 + 640);
  if ((v112 & 0x10000000) == 0)
  {
LABEL_105:
    if ((v112 & 0x20000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_177;
  }

LABEL_176:
  *(a1 + 641) = *(a2 + 641);
  if ((v112 & 0x20000000) == 0)
  {
LABEL_106:
    if ((v112 & 0x40000000) == 0)
    {
      goto LABEL_107;
    }

LABEL_178:
    *(a1 + 643) = *(a2 + 643);
    if ((v112 & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

LABEL_179:
    *(a1 + 644) = *(a2 + 644);
    goto LABEL_108;
  }

LABEL_177:
  *(a1 + 642) = *(a2 + 642);
  if ((v112 & 0x40000000) != 0)
  {
    goto LABEL_178;
  }

LABEL_107:
  if ((v112 & 0x80000000) != 0)
  {
    goto LABEL_179;
  }

LABEL_108:
  *(a1 + 16) |= v112;
LABEL_109:
  v113 = *(a2 + 20);
  if ((v113 & 0x7F) == 0)
  {
    goto LABEL_119;
  }

  if (v113)
  {
    *(a1 + 648) = *(a2 + 648);
    if ((v113 & 2) == 0)
    {
LABEL_112:
      if ((v113 & 4) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_167;
    }
  }

  else if ((v113 & 2) == 0)
  {
    goto LABEL_112;
  }

  *(a1 + 652) = *(a2 + 652);
  if ((v113 & 4) == 0)
  {
LABEL_113:
    if ((v113 & 8) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(a1 + 653) = *(a2 + 653);
  if ((v113 & 8) == 0)
  {
LABEL_114:
    if ((v113 & 0x10) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(a1 + 654) = *(a2 + 654);
  if ((v113 & 0x10) == 0)
  {
LABEL_115:
    if ((v113 & 0x20) == 0)
    {
      goto LABEL_116;
    }

LABEL_170:
    *(a1 + 660) = *(a2 + 660);
    if ((v113 & 0x40) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

LABEL_169:
  *(a1 + 656) = *(a2 + 656);
  if ((v113 & 0x20) != 0)
  {
    goto LABEL_170;
  }

LABEL_116:
  if ((v113 & 0x40) != 0)
  {
LABEL_117:
    *(a1 + 664) = *(a2 + 664);
  }

LABEL_118:
  *(a1 + 20) |= v113;
LABEL_119:
  v114 = *(a2 + 8);
  if (v114)
  {

    sub_1957EF4((a1 + 8), (v114 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_14E9E00(uint64_t a1)
{
  v1 = *(a1 + 344);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 352) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

BOOL sub_14E9E48(unsigned int a1)
{
  result = 1;
  if ((a1 > 0x3D || ((1 << a1) & 0x2ACFF80800010017) == 0) && (a1 - 65 > 0x2A || ((1 << (a1 - 65)) & 0x7F800000001) == 0))
  {
    return a1 == 1016;
  }

  return result;
}

uint64_t sub_14E9EB0(uint64_t a1)
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

void sub_14E9F68(uint64_t a1)
{
  sub_14E9EB0(a1);

  operator delete();
}

uint64_t sub_14E9FA0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_14EA120(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_14EA208(uint64_t a1)
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

uint64_t sub_14EA2F4(uint64_t a1)
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

  if (a1 != &off_2774C40 && *(a1 + 40))
  {
    sub_16E7270();
    operator delete();
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

void sub_14EA3DC(uint64_t a1)
{
  sub_14EA2F4(a1);

  operator delete();
}

uint64_t sub_14EA414(uint64_t result)
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

    goto LABEL_14;
  }

  v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
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

LABEL_14:
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
    result = sub_16E72AC(*(result + 40));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_14EA4E4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 20)
    {
      if (v7 == 162)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 40);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_16F5A54(v21);
          *(a1 + 40) = v19;
          v6 = *v25;
        }

        v15 = sub_22002C0(a3, v19, v6);
        goto LABEL_34;
      }
    }

    else if (v10 == 10)
    {
      if (v7 == 82)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_33;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v17 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
LABEL_33:
      v23 = sub_194DB04(v18, v17);
      v15 = sub_1958890(v23, *v25, a3);
      goto LABEL_34;
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
        return *v25;
      }

LABEL_40:
      *v25 = 0;
      return *v25;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_34:
    *v25 = v15;
    if (!v15)
    {
      goto LABEL_40;
    }
  }

  return *v25;
}

char *sub_14EA6BC(uint64_t a1, char *__dst, void *a3)
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
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 10, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 40);
  *v4 = 418;
  v8 = *(v7 + 20);
  v4[2] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, v4 + 2);
  }

  else
  {
    v9 = v4 + 3;
  }

  v4 = sub_16E74A8(v7, v9, a3);
LABEL_13:
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

uint64_t sub_14EA814(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

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
    v10 = sub_16E7590(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

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

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_14EA934(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_20;
  }

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
        goto LABEL_20;
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
  if ((v4 & 4) != 0)
  {
LABEL_12:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v11 = v3[1].__r_.__value_.__r.__words[2];
    if (!v11)
    {
      v12 = v3->__r_.__value_.__l.__size_;
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_16F5A54(v13);
      v3[1].__r_.__value_.__r.__words[2] = v11;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = &off_277E6F0;
    }

    result = sub_12F5A34(v11, v14);
  }

LABEL_20:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14EAA78(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_152EDF0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_21:
  if ((v5 & 0x78) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    *(v1 + 88) = 0x4014000000000000;
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

std::string *sub_14EABB0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156D358(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x7F) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v13 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v13 = *v13;
      }

      result = sub_194EA1C(&v3[2], (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_24;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v15 = v3->__r_.__value_.__l.__size_;
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

LABEL_24:
    v17 = *(a2 + 64);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v18 = v3->__r_.__value_.__l.__size_;
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }

LABEL_27:
    v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

LABEL_28:
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
LABEL_13:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_14;
      }

LABEL_12:
      v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
      goto LABEL_13;
    }

LABEL_29:
    HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14EAD6C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
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

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14EAE4C(uint64_t a1)
{
  sub_14EAD6C(a1);

  operator delete();
}

uint64_t sub_14EAE84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_22;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  *v4 = 0;
  *(v4 + 23) = 0;
  if ((v1 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v7 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v7)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_14EAF70(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v17 = *(a1 + 8);
          v13 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v13 = *v13;
          }

          v14 = (a1 + 40);
          goto LABEL_31;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v15 = *(a1 + 8);
        v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v13 = *v13;
        }

        v14 = (a1 + 48);
        goto LABEL_31;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v13 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v13 = *v13;
        }

        v14 = (a1 + 24);
        goto LABEL_31;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 32);
LABEL_31:
      v18 = sub_194DB04(v14, v13);
      v19 = sub_1958890(v18, *v24, a3);
      goto LABEL_32;
    }

    if (v7)
    {
      v20 = (v7 & 7) == 4;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v24;
      }

LABEL_45:
      *v24 = 0;
      return *v24;
    }

    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v22 = sub_11F1920((a1 + 8));
      v6 = *v24;
    }

    v19 = sub_1952690(v7, v22, v6, a3);
LABEL_32:
    *v24 = v19;
    if (!v19)
    {
      goto LABEL_45;
    }
  }

  return *v24;
}

char *sub_14EB170(uint64_t a1, char *__dst, void *a3)
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
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_6:
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

uint64_t sub_14EB2A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 3) != 0)
  {
    result = sub_132CD7C(a1);
  }

  else
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    result = v5 + v9 + v6 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v2 & 0xC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 8) != 0)
    {
      v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v15 = *(v14 + 23);
      v16 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v16 = v15;
      }

      result += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

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