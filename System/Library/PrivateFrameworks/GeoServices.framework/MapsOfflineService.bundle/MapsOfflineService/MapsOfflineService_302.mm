uint64_t sub_12988D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_1352F44(*(a1 + 120));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = *(a1 + 128);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_9:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 132);
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
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v9 = *(a1 + 136);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v10;
  if ((v2 & 0x10) != 0)
  {
LABEL_21:
    v11 = *(a1 + 140);
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

  return result;
}

uint64_t sub_1298A14(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x1F) != 0)
  {
    v16 = sub_12988D8(a1);
  }

  else
  {
    v2 = sub_1352F44(*(a1 + 120));
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = 10;
    v5 = *(a1 + 128);
    v6 = *(a1 + 132);
    v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v4 = v7;
    }

    v8 = 10;
    v9 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v9;
    }

    v10 = 10;
    v11 = *(a1 + 136);
    v12 = *(a1 + 140);
    v13 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
    if (v11 >= 0)
    {
      v10 = v13;
    }

    v14 = 10;
    v15 = (9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6;
    if (v12 >= 0)
    {
      v14 = v15;
    }

    v16 = v2 + v3 + v4 + v8 + v10 + v14 + 5;
  }

  v17 = *(a1 + 32);
  v18 = v16 + v17;
  if (v17 >= 1)
  {
    v19 = (*(a1 + 40) + 8);
    do
    {
      v20 = *v19++;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v18 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      --v17;
    }

    while (v17);
  }

  v23 = *(a1 + 56);
  v24 = v18 + v23;
  if (v23 >= 1)
  {
    v25 = (*(a1 + 64) + 8);
    do
    {
      v26 = *v25++;
      v27 = *(v26 + 23);
      v28 = *(v26 + 8);
      if ((v27 & 0x80u) == 0)
      {
        v28 = v27;
      }

      v24 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      --v23;
    }

    while (v23);
  }

  v29 = *(a1 + 80);
  v30 = v24 + v29;
  if (v29 >= 1)
  {
    v31 = (*(a1 + 88) + 8);
    do
    {
      v32 = *v31++;
      v33 = *(v32 + 23);
      v34 = *(v32 + 8);
      if ((v33 & 0x80u) == 0)
      {
        v34 = v33;
      }

      v30 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      --v29;
    }

    while (v29);
  }

  v35 = *(a1 + 104);
  v36 = v30 + v35;
  if (v35 >= 1)
  {
    v37 = (*(a1 + 112) + 8);
    do
    {
      v38 = *v37++;
      v39 = *(v38 + 23);
      v40 = *(v38 + 8);
      if ((v39 & 0x80u) == 0)
      {
        v40 = v39;
      }

      v36 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6);
      --v35;
    }

    while (v35);
  }

  v41 = *(a1 + 16);
  v42 = v36 + 9;
  if ((v41 & 0x20) == 0)
  {
    v42 = v36;
  }

  if ((v41 & 0x40) != 0)
  {
    v42 += 9;
  }

  if ((v41 & 0x60) != 0)
  {
    result = v42;
  }

  else
  {
    result = v36;
  }

  v44 = *(a1 + 8);
  if (v44)
  {
    v45 = v44 & 0xFFFFFFFFFFFFFFFCLL;
    v46 = *((v44 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v46 < 0)
    {
      v46 = *(v45 + 16);
    }

    result += v46;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_1298CCC(uint64_t a1, uint64_t a2)
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
    sub_1201B48(a1 + 96, v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
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

        sub_135517C(v28);
        *(a1 + 120) = v26;
      }

      if (*(a2 + 120))
      {
        v29 = *(a2 + 120);
      }

      else
      {
        v29 = &off_276C1C8;
      }

      sub_1353470(v26, v29);
      if ((v24 & 2) == 0)
      {
LABEL_16:
        if ((v24 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_36;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 128) = *(a2 + 128);
    if ((v24 & 4) == 0)
    {
LABEL_17:
      if ((v24 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(a1 + 132) = *(a2 + 132);
    if ((v24 & 8) == 0)
    {
LABEL_18:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(a1 + 136) = *(a2 + 136);
    if ((v24 & 0x10) == 0)
    {
LABEL_19:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_39;
    }

LABEL_38:
    *(a1 + 140) = *(a2 + 140);
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
      *(a1 + 152) = *(a2 + 152);
      goto LABEL_22;
    }

LABEL_39:
    *(a1 + 144) = *(a2 + 144);
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

uint64_t sub_1298F64(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x1F) != 0)
  {
    return 0;
  }

  else
  {
    return sub_13538C4(*(a1 + 120));
  }
}

uint64_t sub_1298F94(uint64_t a1)
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

  if (a1 != &off_2768AA8 && *(a1 + 24))
  {
    sub_1353B8C();
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

void sub_129904C(uint64_t a1)
{
  sub_1298F94(a1);

  operator delete();
}

uint64_t sub_1299084(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1353BC8(*(result + 24));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
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

char *sub_12990F0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v44, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v44 + 1;
    v8 = *v44;
    if (*v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v44 + 2;
      }
    }

    v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 == 6)
      {
        if (v8 != 49)
        {
          goto LABEL_50;
        }

        v29 = *v7;
        v19 = v7 + 8;
        v5 |= 0x20u;
        *(a1 + 48) = v29;
      }

      else
      {
        if (v11 != 7 || v8 != 57)
        {
          goto LABEL_50;
        }

        v20 = *v7;
        v19 = v7 + 8;
        v5 |= 0x40u;
        *(a1 + 56) = v20;
      }

      v44 = v19;
      goto LABEL_58;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_50;
      }

      v5 |= 8u;
      v27 = v7 + 1;
      LODWORD(v26) = *v7;
      if ((v26 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      v28 = *v27;
      v26 = v26 + (v28 << 7) - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_41:
        v44 = v27;
        *(a1 + 40) = v26;
        goto LABEL_58;
      }

      v36 = sub_19587DC(v7, v26);
      v44 = v36;
      *(a1 + 40) = v37;
      if (!v36)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_50;
      }

      v5 |= 0x10u;
      v13 = v7 + 1;
      LODWORD(v12) = *v7;
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v13;
      v12 = v12 + (v14 << 7) - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_15:
        v44 = v13;
        *(a1 + 44) = v12;
        goto LABEL_58;
      }

      v38 = sub_19587DC(v7, v12);
      v44 = v38;
      *(a1 + 44) = v39;
      if (!v38)
      {
        goto LABEL_71;
      }
    }

LABEL_58:
    if (sub_195ADC0(a3, &v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 1)
  {
    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_50;
      }

      v5 |= 2u;
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
        v44 = v31;
        *(a1 + 32) = v30;
        goto LABEL_58;
      }

      v42 = sub_19587DC(v7, v30);
      v44 = v42;
      *(a1 + 32) = v43;
      if (!v42)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_50;
      }

      v5 |= 4u;
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
        v44 = v17;
        *(a1 + 36) = v16;
        goto LABEL_58;
      }

      v40 = sub_19587DC(v7, v16);
      v44 = v40;
      *(a1 + 36) = v41;
      if (!v40)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_58;
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v21 = *(a1 + 24);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_13551DC(v23);
      v21 = v24;
      *(a1 + 24) = v24;
      v7 = v44;
    }

    v25 = sub_21F4070(a3, v21, v7);
LABEL_57:
    v44 = v25;
    if (!v25)
    {
      goto LABEL_71;
    }

    goto LABEL_58;
  }

LABEL_50:
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
      v7 = v44;
    }

    v25 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_57;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

char *sub_1299440(uint64_t a1, char *__dst, void *a3)
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

    __dst = sub_13542D4(v6, v8, a3);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v19 = *(a1 + 40);
    *v14 = 32;
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v14[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v14[2] = v19 >> 7;
      v18 = v14 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v14) = v14[2];
        do
        {
          *(v18 - 1) = v14 | 0x80;
          v14 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v14 + 2;
    }
  }

  else
  {
    v18 = v14;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 44);
    *v18 = 40;
    v18[1] = v23;
    if (v23 > 0x7F)
    {
      v18[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v18[2] = v23 >> 7;
      v22 = v18 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v18[2];
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
      v22 = v18 + 2;
    }
  }

  else
  {
    v22 = v18;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 48);
    *v22 = 49;
    *(v22 + 1) = v27;
    v22 += 9;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v28 = *(a1 + 56);
    *v22 = 57;
    *(v22 + 1) = v28;
    v22 += 9;
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v22;
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

  if (*a3 - v22 >= v32)
  {
    v34 = v32;
    memcpy(v22, v33, v32);
    v22 += v34;
    return v22;
  }

  return sub_1957130(a3, v33, v32, v22);
}

uint64_t sub_12997D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_13548CC(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
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
LABEL_9:
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
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
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
  if ((v2 & 0x10) != 0)
  {
LABEL_21:
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
  }

  return result;
}

uint64_t sub_129990C(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x1F) != 0)
  {
    result = sub_12997D0(a1);
  }

  else
  {
    v2 = sub_13548CC(*(a1 + 24));
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = 10;
    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v4 = v7;
    }

    v8 = 10;
    v9 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v9;
    }

    v10 = 10;
    v11 = *(a1 + 40);
    v12 = *(a1 + 44);
    v13 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
    if (v11 >= 0)
    {
      v10 = v13;
    }

    v14 = 10;
    v15 = (9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6;
    if (v12 >= 0)
    {
      v14 = v15;
    }

    result = v2 + v3 + v4 + v8 + v10 + v14 + 5;
  }

  v17 = *(a1 + 16);
  v18 = result + 9;
  if ((v17 & 0x20) == 0)
  {
    v18 = result;
  }

  if ((v17 & 0x40) != 0)
  {
    v18 += 9;
  }

  if ((v17 & 0x60) != 0)
  {
    result = v18;
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    result += v21;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_1299A64(std::string *result, uint64_t a2)
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

        sub_13551DC(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276C2C8;
      }

      result = sub_1354B2C(data, v9);
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
      v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
      goto LABEL_10;
    }

LABEL_27:
    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
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

double sub_1299BBC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26CDD80;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  result = 0.0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0;
  return result;
}

double sub_1299C88(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26CDE00;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

uint64_t sub_1299D08(uint64_t a1)
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

void sub_1299DA8(uint64_t a1)
{
  sub_1299D08(a1);

  operator delete();
}

uint64_t sub_1299DE0(uint64_t a1)
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

  if ((v1 & 0xFE) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  if ((v1 & 0x700) != 0)
  {
    *(a1 + 68) = 0;
    *(a1 + 60) = 0;
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

uint64_t sub_1299E48(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v70 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v70, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v70 + 1);
    v8 = **v70;
    if (**v70 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v70, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v70 + 2);
      }
    }

    *v70 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_78;
        }

        v5 |= 2u;
        v26 = v7 + 1;
        v27 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v28 = *v26;
        v27 = v27 + (v28 << 7) - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v26 = v7 + 2;
LABEL_47:
          *v70 = v26;
          *(a1 + 32) = v27;
          goto LABEL_86;
        }

        v50 = sub_1958770(v7, v27);
        *v70 = v50;
        *(a1 + 32) = v51;
        if (!v50)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (v11 != 2 || v8 != 16)
        {
          goto LABEL_78;
        }

        v5 |= 4u;
        v23 = v7 + 1;
        v24 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v25 = *v23;
        v24 = v24 + (v25 << 7) - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v23 = v7 + 2;
LABEL_42:
          *v70 = v23;
          *(a1 + 36) = v24;
          goto LABEL_86;
        }

        v52 = sub_1958770(v7, v24);
        *v70 = v52;
        *(a1 + 36) = v53;
        if (!v52)
        {
          goto LABEL_111;
        }
      }
    }

    else if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_78;
      }

      v5 |= 8u;
      v38 = v7 + 1;
      v39 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      v40 = *v38;
      v39 = v39 + (v40 << 7) - 128;
      if ((v40 & 0x80000000) == 0)
      {
        v38 = v7 + 2;
LABEL_67:
        *v70 = v38;
        *(a1 + 40) = v39;
        goto LABEL_86;
      }

      v62 = sub_1958770(v7, v39);
      *v70 = v62;
      *(a1 + 40) = v63;
      if (!v62)
      {
        goto LABEL_111;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_78;
      }

      v5 |= 0x10u;
      v29 = v7 + 1;
      v30 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      v31 = *v29;
      v30 = v30 + (v31 << 7) - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v29 = v7 + 2;
LABEL_52:
        *v70 = v29;
        *(a1 + 44) = v30;
        goto LABEL_86;
      }

      v54 = sub_1958770(v7, v30);
      *v70 = v54;
      *(a1 + 44) = v55;
      if (!v54)
      {
        goto LABEL_111;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_78;
      }

      v5 |= 0x20u;
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
        *v70 = v15;
        *(a1 + 48) = v16;
        goto LABEL_86;
      }

      v60 = sub_1958770(v7, v16);
      *v70 = v60;
      *(a1 + 48) = v61;
      if (!v60)
      {
        goto LABEL_111;
      }
    }

LABEL_86:
    if (sub_195ADC0(a3, v70, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 8)
  {
    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_78;
      }

      v5 |= 0x40u;
      v41 = v7 + 1;
      v42 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

      v43 = *v41;
      v42 = v42 + (v43 << 7) - 128;
      if ((v43 & 0x80000000) == 0)
      {
        v41 = v7 + 2;
LABEL_72:
        *v70 = v41;
        *(a1 + 52) = v42;
        goto LABEL_86;
      }

      v66 = sub_1958770(v7, v42);
      *v70 = v66;
      *(a1 + 52) = v67;
      if (!v66)
      {
        goto LABEL_111;
      }
    }

    else if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_78;
      }

      v5 |= 0x80u;
      v32 = v7 + 1;
      v33 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      v34 = *v32;
      v33 = v33 + (v34 << 7) - 128;
      if ((v34 & 0x80000000) == 0)
      {
        v32 = v7 + 2;
LABEL_57:
        *v70 = v32;
        *(a1 + 56) = v33;
        goto LABEL_86;
      }

      v56 = sub_1958770(v7, v33);
      *v70 = v56;
      *(a1 + 56) = v57;
      if (!v56)
      {
        goto LABEL_111;
      }
    }

    else
    {
      if (v11 != 8 || v8 != 64)
      {
        goto LABEL_78;
      }

      v5 |= 0x100u;
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
        *v70 = v12;
        *(a1 + 60) = v13;
        goto LABEL_86;
      }

      v64 = sub_1958770(v7, v13);
      *v70 = v64;
      *(a1 + 60) = v65;
      if (!v64)
      {
        goto LABEL_111;
      }
    }

    goto LABEL_86;
  }

  if (v11 == 9)
  {
    if (v8 != 72)
    {
      goto LABEL_78;
    }

    v5 |= 0x200u;
    v44 = v7 + 1;
    v45 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    v46 = *v44;
    v45 = v45 + (v46 << 7) - 128;
    if ((v46 & 0x80000000) == 0)
    {
      v44 = v7 + 2;
LABEL_77:
      *v70 = v44;
      *(a1 + 64) = v45;
      goto LABEL_86;
    }

    v68 = sub_1958770(v7, v45);
    *v70 = v68;
    *(a1 + 64) = v69;
    if (!v68)
    {
      goto LABEL_111;
    }

    goto LABEL_86;
  }

  if (v11 == 10)
  {
    if (v8 != 80)
    {
      goto LABEL_78;
    }

    v5 |= 0x400u;
    v35 = v7 + 1;
    v36 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    v37 = *v35;
    v36 = v36 + (v37 << 7) - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v35 = v7 + 2;
LABEL_62:
      *v70 = v35;
      *(a1 + 68) = v36;
      goto LABEL_86;
    }

    v58 = sub_1958770(v7, v36);
    *v70 = v58;
    *(a1 + 68) = v59;
    if (!v58)
    {
      goto LABEL_111;
    }

    goto LABEL_86;
  }

  if (v11 == 11 && v8 == 90)
  {
    *(a1 + 16) |= 1u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v20 = sub_194DB04((a1 + 24), v19);
    v21 = sub_1958890(v20, *v70, a3);
LABEL_85:
    *v70 = v21;
    if (!v21)
    {
      goto LABEL_111;
    }

    goto LABEL_86;
  }

LABEL_78:
  if (v8)
  {
    v47 = (v8 & 7) == 4;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    v48 = *(a1 + 8);
    if (v48)
    {
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v49 = sub_11F1920((a1 + 8));
      v7 = *v70;
    }

    v21 = sub_1952690(v8, v49, v7, a3);
    goto LABEL_85;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_111:
  *v70 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v70;
}

char *sub_129A3B0(uint64_t a1, char *__dst, void *a3)
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
          LODWORD(v28) = v35 >> 7;
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v43 = *(a1 + 64);
    *v37 = 72;
    v37[1] = v43;
    if (v43 > 0x7F)
    {
      v37[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v37[2] = v43 >> 7;
      v42 = v37 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v37) = v37[2];
        do
        {
          *(v42 - 1) = v37 | 0x80;
          LODWORD(v37) = v44 >> 7;
          *v42++ = v44 >> 7;
          v45 = v44 >> 14;
          v44 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v42 = v37 + 2;
    }
  }

  else
  {
    v42 = v37;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v47 = *(a1 + 68);
    *v42 = 80;
    v42[1] = v47;
    if (v47 > 0x7F)
    {
      v42[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v42[2] = v47 >> 7;
      v46 = v42 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v49) = v42[2];
        do
        {
          *(v46 - 1) = v49 | 0x80;
          v49 = v48 >> 7;
          *v46++ = v48 >> 7;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v46 = v42 + 2;
    }
  }

  else
  {
    v46 = v42;
  }

  if (v5)
  {
    v46 = sub_128AEEC(a3, 11, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v46);
  }

  v51 = *(a1 + 8);
  if ((v51 & 1) == 0)
  {
    return v46;
  }

  v53 = v51 & 0xFFFFFFFFFFFFFFFCLL;
  v54 = *(v53 + 31);
  if (v54 < 0)
  {
    v55 = *(v53 + 8);
    v54 = *(v53 + 16);
  }

  else
  {
    v55 = (v53 + 8);
  }

  if (*a3 - v46 >= v54)
  {
    v56 = v54;
    memcpy(v46, v55, v54);
    v46 += v56;
    return v46;
  }

  return sub_1957130(a3, v55, v54, v46);
}

uint64_t sub_129A9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_12:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_12;
  }

  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_13:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_14:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_15:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_28:
  v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_16:
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v1 & 0x700) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x200) == 0)
    {
LABEL_20:
      if ((v1 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((v1 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x400) != 0)
  {
LABEL_21:
    v2 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
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

std::string *sub_129ABFC(std::string *result, uint64_t a2)
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

        goto LABEL_26;
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

      goto LABEL_27;
    }

LABEL_26:
    HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }

LABEL_27:
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

LABEL_28:
    HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_29:
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

LABEL_30:
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_18;
  }

  if ((v4 & 0x100) == 0)
  {
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_33:
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_33;
  }

LABEL_15:
  if ((v4 & 0x400) != 0)
  {
LABEL_16:
    HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
  }

LABEL_17:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
LABEL_18:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_129AD78(void *a1)
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

void sub_129ADEC(void *a1)
{
  sub_129AD78(a1);

  operator delete();
}

uint64_t sub_129AE24(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
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

char *sub_129AE48(uint64_t a1, char *a2, int32x2_t *a3)
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
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_24:
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
    v25 = v21;
    *(a1 + 28) = v22;
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

char *sub_129B02C(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_129B1DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
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

double sub_129B290(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26CDE80;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

void *sub_129B320(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26CDF00;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_129B398(uint64_t a1)
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

  sub_129B42C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_129B42C(uint64_t (***result)()))()
{
  if (result != &off_2768B50)
  {
    v1 = result;
    if (result[7])
    {
      sub_153FD8C();
      operator delete();
    }

    if (result[8])
    {
      sub_1547884();
      operator delete();
    }

    if (result[9])
    {
      sub_14051E8();
      operator delete();
    }

    if (result[10])
    {
      sub_1406770();
      operator delete();
    }

    if (result[11])
    {
      sub_12A9214();
      operator delete();
    }

    if (result[12])
    {
      sub_12A9E74();
      operator delete();
    }

    if (result[13])
    {
      sub_12B2B4C();
      operator delete();
    }

    if (result[14])
    {
      sub_12B3384();
      operator delete();
    }

    v2 = result[15];
    if (v2)
    {
      sub_18FA778(v2);
      operator delete();
    }

    v3 = v1[16];
    if (v3)
    {
      sub_18FDA18(v3);
      operator delete();
    }

    if (v1[17])
    {
      sub_12ACF10();
      operator delete();
    }

    if (v1[18])
    {
      sub_12AEC8C();
      operator delete();
    }

    if (v1[19])
    {
      sub_12A5E88();
      operator delete();
    }

    result = v1[20];
    if (result)
    {
      sub_12A753C();

      operator delete();
    }
  }

  return result;
}

void sub_129B638(uint64_t a1)
{
  sub_129B398(a1);

  operator delete();
}

uint64_t sub_129B670(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = sub_153FDC8(*(result + 56));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_14D28E4(*(v1 + 64));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_1405224(*(v1 + 72));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_14067AC(*(v1 + 80));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_28:
    result = sub_12A9EB0(*(v1 + 96));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = sub_12A9250(*(v1 + 88));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_29:
  result = sub_12B2B88(*(v1 + 104));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_12B33C0(*(v1 + 112));
  }

LABEL_11:
  if ((v2 & 0x3F00) == 0)
  {
    goto LABEL_19;
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_18FA7B4(*(v1 + 120));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = sub_18FDA54(*(v1 + 128));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = sub_12ACF4C(*(v1 + 136));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = sub_12AECC8(*(v1 + 144));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_35:
  result = sub_12A5EC4(*(v1 + 152));
  if ((v2 & 0x2000) != 0)
  {
LABEL_18:
    result = sub_12A7578(*(v1 + 160));
  }

LABEL_19:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_129B7B8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v73 = a2;
  v5 = a3[11].i32[1];
  while (2)
  {
    if (sub_195ADC0(a3, &v73, v5))
    {
      return v73;
    }

    v6 = v73 + 1;
    v7 = *v73;
    if (*v73 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v73, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v73 + 2;
      }
    }

    v73 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 10)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 1u;
        v10 = *(a1 + 56);
        if (!v10)
        {
          v11 = *(a1 + 8);
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          if (v11)
          {
            v12 = *v12;
          }

          sub_1551D64(v12);
          v10 = v13;
          *(a1 + 56) = v13;
          v6 = v73;
        }

        sub_21F3650(a3, v10, v6);
        goto LABEL_131;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 2u;
        v50 = *(a1 + 64);
        if (!v50)
        {
          v51 = *(a1 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          sub_155218C(v52);
          v50 = v53;
          *(a1 + 64) = v53;
          v6 = v73;
        }

        v14 = sub_21F36E0(a3, v50, v6);
        goto LABEL_131;
      case 3u:
        if (v7 == 24)
        {
          v31 = v6 - 1;
          while (1)
          {
            v73 = v31 + 1;
            v32 = v31[1];
            if (v32 < 0)
            {
              v33 = (v31[2] << 7) + v32;
              v32 = (v33 - 128);
              if (v31[2] < 0)
              {
                v31 = sub_19587DC((v31 + 1), (v33 - 128));
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

            v73 = v31;
            v35 = *(a1 + 24);
            if (v35 == *(a1 + 28))
            {
              v36 = v35 + 1;
              sub_1959094((a1 + 24), v35 + 1);
              *(*(a1 + 32) + 8 * v35) = v32;
              v31 = v73;
            }

            else
            {
              *(*(a1 + 32) + 8 * v35) = v32;
              v36 = v35 + 1;
            }

            *(a1 + 24) = v36;
            if (!v31)
            {
              return 0;
            }

            if (*a3 <= v31 || *v31 != 24)
            {
              goto LABEL_132;
            }
          }
        }

        if (v7 == 26)
        {
          v14 = sub_1958928((a1 + 24), v6, a3);
          goto LABEL_131;
        }

LABEL_124:
        if (v7)
        {
          v69 = (v7 & 7) == 4;
        }

        else
        {
          v69 = 1;
        }

        if (!v69)
        {
          v70 = *(a1 + 8);
          if (v70)
          {
            v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v71 = sub_11F1920((a1 + 8));
            v6 = v73;
          }

          v14 = sub_1952690(v7, v71, v6, a3);
LABEL_131:
          v73 = v14;
          if (!v14)
          {
            return 0;
          }

LABEL_132:
          v5 = a3[11].i32[1];
          continue;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return v73;
      case 4u:
        if (v7 == 32)
        {
          v41 = v6 - 1;
          while (1)
          {
            v73 = v41 + 1;
            v42 = v41[1];
            if (v42 < 0)
            {
              v43 = (v41[2] << 7) + v42;
              LODWORD(v42) = v43 - 128;
              if (v41[2] < 0)
              {
                v41 = sub_19587DC((v41 + 1), (v43 - 128));
                LODWORD(v42) = v44;
              }

              else
              {
                v41 += 3;
              }
            }

            else
            {
              v41 += 2;
            }

            v73 = v41;
            v45 = *(a1 + 40);
            if (v45 == *(a1 + 44))
            {
              v46 = v45 + 1;
              sub_1958E5C((a1 + 40), v45 + 1);
              *(*(a1 + 48) + 4 * v45) = v42;
              v41 = v73;
            }

            else
            {
              *(*(a1 + 48) + 4 * v45) = v42;
              v46 = v45 + 1;
            }

            *(a1 + 40) = v46;
            if (!v41)
            {
              return 0;
            }

            if (*a3 <= v41 || *v41 != 32)
            {
              goto LABEL_132;
            }
          }
        }

        if (v7 != 34)
        {
          goto LABEL_124;
        }

        v14 = sub_1958908((a1 + 40), v6, a3);
        goto LABEL_131;
      case 5u:
        if (v7 != 42)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 4u;
        v22 = *(a1 + 72);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_1407D30(v24);
          *(a1 + 72) = v22;
          v6 = v73;
        }

        v14 = sub_21F4100(a3, v22, v6);
        goto LABEL_131;
      case 6u:
        if (v7 != 50)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 8u;
        v54 = *(a1 + 80);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_1407E68(v56);
          *(a1 + 80) = v54;
          v6 = v73;
        }

        v14 = sub_21F4190(a3, v54, v6);
        goto LABEL_131;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 0x10u;
        v60 = *(a1 + 88);
        if (!v60)
        {
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          v60 = sub_12AA62C(v62);
          *(a1 + 88) = v60;
          v6 = v73;
        }

        v14 = sub_21F4220(a3, v60, v6);
        goto LABEL_131;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 0x20u;
        v47 = *(a1 + 96);
        if (!v47)
        {
          v48 = *(a1 + 8);
          v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
          if (v48)
          {
            v49 = *v49;
          }

          v47 = sub_12AA750(v49);
          *(a1 + 96) = v47;
          v6 = v73;
        }

        v14 = sub_21F42B0(a3, v47, v6);
        goto LABEL_131;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 0x40u;
        v66 = *(a1 + 104);
        if (!v66)
        {
          v67 = *(a1 + 8);
          v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
          if (v67)
          {
            v68 = *v68;
          }

          v66 = sub_12B3B5C(v68);
          *(a1 + 104) = v66;
          v6 = v73;
        }

        v14 = sub_21F4340(a3, v66, v6);
        goto LABEL_131;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 0x80u;
        v28 = *(a1 + 112);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_12B3C00(v30);
          *(a1 + 112) = v28;
          v6 = v73;
        }

        v14 = sub_21F43D0(a3, v28, v6);
        goto LABEL_131;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 0x100u;
        v63 = *(a1 + 120);
        if (!v63)
        {
          v64 = *(a1 + 8);
          v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v64)
          {
            v65 = *v65;
          }

          v63 = sub_1906254(v65);
          *(a1 + 120) = v63;
          v6 = v73;
        }

        v14 = sub_21F3AD0(a3, v63, v6);
        goto LABEL_131;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 0x200u;
        v19 = *(a1 + 128);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_190630C(v21);
          *(a1 + 128) = v19;
          v6 = v73;
        }

        v14 = sub_21F3B60(a3, v19, v6);
        goto LABEL_131;
      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 0x400u;
        v25 = *(a1 + 136);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_12B0258(v27);
          *(a1 + 136) = v25;
          v6 = v73;
        }

        v14 = sub_21F4460(a3, v25, v6);
        goto LABEL_131;
      case 0xEu:
        if (v7 != 114)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 0x800u;
        v57 = *(a1 + 144);
        if (!v57)
        {
          v58 = *(a1 + 8);
          v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
          if (v58)
          {
            v59 = *v59;
          }

          v57 = sub_12B038C(v59);
          *(a1 + 144) = v57;
          v6 = v73;
        }

        v14 = sub_21F44F0(a3, v57, v6);
        goto LABEL_131;
      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 0x1000u;
        v15 = *(a1 + 152);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_12A8FC8(v17);
          v15 = v18;
          *(a1 + 152) = v18;
          v6 = v73;
        }

        v14 = sub_21F4580(a3, v15, v6);
        goto LABEL_131;
      case 0x10u:
        if (v7 != 130)
        {
          goto LABEL_124;
        }

        *(a1 + 16) |= 0x2000u;
        v37 = *(a1 + 160);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          sub_12A90FC(v39);
          v37 = v40;
          *(a1 + 160) = v40;
          v6 = v73;
        }

        v14 = sub_21F4610(a3, v37, v6);
        goto LABEL_131;
      default:
        goto LABEL_124;
    }
  }
}

char *sub_129BF38(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
    *v4 = 10;
    v8 = *(v7 + 28);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1540418(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 64);
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

    v4 = sub_15480D4(v10, v12, a3);
  }

  v13 = *(a1 + 24);
  if (v13 < 1)
  {
    v16 = v4;
  }

  else
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 32) + 8 * i);
      *v4 = 24;
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v4[1] = v15 | 0x80;
        v17 = v15 >> 7;
        v4[2] = v15 >> 7;
        v16 = v4 + 3;
        if (v15 >= 0x4000)
        {
          LOBYTE(v4) = v4[2];
          do
          {
            *(v16 - 1) = v4 | 0x80;
            v4 = (v17 >> 7);
            *v16++ = v17 >> 7;
            v18 = v17 >> 14;
            v17 >>= 7;
          }

          while (v18);
        }
      }

      else
      {
        v16 = v4 + 2;
      }

      v4 = v16;
    }
  }

  v19 = *(a1 + 40);
  if (v19 < 1)
  {
    v22 = v16;
  }

  else
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v21 = *(*(a1 + 48) + 4 * j);
      *v16 = 32;
      v16[1] = v21;
      if (v21 > 0x7F)
      {
        v16[1] = v21 | 0x80;
        v23 = v21 >> 7;
        v16[2] = v21 >> 7;
        v22 = v16 + 3;
        if (v21 >= 0x4000)
        {
          LOBYTE(v16) = v16[2];
          do
          {
            *(v22 - 1) = v16 | 0x80;
            v16 = (v23 >> 7);
            *v22++ = v23 >> 7;
            v24 = v23 >> 14;
            v23 >>= 7;
          }

          while (v24);
        }
      }

      else
      {
        v22 = v16 + 2;
      }

      v16 = v22;
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v25 = *(a1 + 72);
    *v22 = 42;
    v26 = *(v25 + 20);
    v22[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v22 + 1);
    }

    else
    {
      v27 = v22 + 2;
    }

    v22 = sub_140583C(v25, v27, a3);
    if ((v6 & 8) == 0)
    {
LABEL_41:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_64;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_41;
  }

  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v28 = *(a1 + 80);
  *v22 = 50;
  v29 = *(v28 + 20);
  v22[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v22 + 1);
  }

  else
  {
    v30 = v22 + 2;
  }

  v22 = sub_1406D34(v28, v30, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_42:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_70;
  }

LABEL_64:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v31 = *(a1 + 88);
  *v22 = 58;
  v32 = *(v31 + 20);
  v22[1] = v32;
  if (v32 > 0x7F)
  {
    v33 = sub_19575D0(v32, v22 + 1);
  }

  else
  {
    v33 = v22 + 2;
  }

  v22 = sub_12A9454(v31, v33, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_43:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_76;
  }

LABEL_70:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v34 = *(a1 + 96);
  *v22 = 66;
  v35 = *(v34 + 20);
  v22[1] = v35;
  if (v35 > 0x7F)
  {
    v36 = sub_19575D0(v35, v22 + 1);
  }

  else
  {
    v36 = v22 + 2;
  }

  v22 = sub_12AA1FC(v34, v36, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_44:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_82;
  }

LABEL_76:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v37 = *(a1 + 104);
  *v22 = 74;
  v38 = *(v37 + 64);
  v22[1] = v38;
  if (v38 > 0x7F)
  {
    v39 = sub_19575D0(v38, v22 + 1);
  }

  else
  {
    v39 = v22 + 2;
  }

  v22 = sub_12B2E60(v37, v39, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_45:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_88;
  }

LABEL_82:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v40 = *(a1 + 112);
  *v22 = 82;
  v41 = *(v40 + 20);
  v22[1] = v41;
  if (v41 > 0x7F)
  {
    v42 = sub_19575D0(v41, v22 + 1);
  }

  else
  {
    v42 = v22 + 2;
  }

  v22 = sub_12B365C(v40, v42, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_46:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_94;
  }

LABEL_88:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v43 = *(a1 + 120);
  *v22 = 90;
  v44 = *(v43 + 44);
  v22[1] = v44;
  if (v44 > 0x7F)
  {
    v45 = sub_19575D0(v44, v22 + 1);
  }

  else
  {
    v45 = v22 + 2;
  }

  v22 = sub_18FB10C(v43, v45, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_47:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_100;
  }

LABEL_94:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v46 = *(a1 + 128);
  *v22 = 98;
  v47 = *(v46 + 44);
  v22[1] = v47;
  if (v47 > 0x7F)
  {
    v48 = sub_19575D0(v47, v22 + 1);
  }

  else
  {
    v48 = v22 + 2;
  }

  v22 = sub_18FE368(v46, v48, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_48:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_106;
  }

LABEL_100:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v49 = *(a1 + 136);
  *v22 = 106;
  v50 = *(v49 + 20);
  v22[1] = v50;
  if (v50 > 0x7F)
  {
    v51 = sub_19575D0(v50, v22 + 1);
  }

  else
  {
    v51 = v22 + 2;
  }

  v22 = sub_12AD324(v49, v51, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_49:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_112;
  }

LABEL_106:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v52 = *(a1 + 144);
  *v22 = 114;
  v53 = *(v52 + 20);
  v22[1] = v53;
  if (v53 > 0x7F)
  {
    v54 = sub_19575D0(v53, v22 + 1);
  }

  else
  {
    v54 = v22 + 2;
  }

  v22 = sub_12AF074(v52, v54, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_50:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_118;
  }

LABEL_112:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v55 = *(a1 + 152);
  *v22 = 122;
  v56 = *(v55 + 20);
  v22[1] = v56;
  if (v56 > 0x7F)
  {
    v57 = sub_19575D0(v56, v22 + 1);
  }

  else
  {
    v57 = v22 + 2;
  }

  v22 = sub_12A6618(v55, v57, a3);
  if ((v6 & 0x2000) != 0)
  {
LABEL_118:
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v58 = *(a1 + 160);
    *v22 = 386;
    v59 = *(v58 + 20);
    v22[2] = v59;
    if (v59 > 0x7F)
    {
      v60 = sub_19575D0(v59, v22 + 2);
    }

    else
    {
      v60 = v22 + 3;
    }

    v22 = sub_12A7FC0(v58, v60, a3);
  }

LABEL_124:
  v61 = *(a1 + 8);
  if ((v61 & 1) == 0)
  {
    return v22;
  }

  v63 = v61 & 0xFFFFFFFFFFFFFFFCLL;
  v64 = *(v63 + 31);
  if (v64 < 0)
  {
    v65 = *(v63 + 8);
    v64 = *(v63 + 16);
  }

  else
  {
    v65 = (v63 + 8);
  }

  if ((*a3 - v22) >= v64)
  {
    v66 = v64;
    memcpy(v22, v65, v64);
    v22 += v66;
    return v22;
  }

  return sub_1957130(a3, v65, v64, v22);
}

uint64_t sub_129C6F0(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 24);
  v4 = v2 + sub_1959E04((a1 + 40)) + v3 + *(a1 + 40);
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (v5)
  {
    v10 = sub_1541FC0(*(a1 + 56));
    v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v5 & 2) == 0)
    {
LABEL_4:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

  v11 = sub_1548710(*(a1 + 64));
  v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = sub_1405B50(*(a1 + 72));
  v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = sub_1407158(*(a1 + 80));
  v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    v15 = sub_12AA39C(*(a1 + 96));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v5 & 0x40) == 0)
    {
LABEL_9:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_25:
  v14 = sub_12A95B0(*(a1 + 88));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  v16 = sub_12B3024(*(a1 + 104));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x80) != 0)
  {
LABEL_10:
    v6 = sub_12B3820(*(a1 + 112));
    v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v5 & 0x3F00) == 0)
  {
    goto LABEL_19;
  }

  if ((v5 & 0x100) != 0)
  {
    v17 = sub_18FB7A4(*(a1 + 120));
    v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v5 & 0x200) == 0)
    {
LABEL_14:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v18 = sub_18FE97C(*(a1 + 128));
  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v19 = sub_12AD614(*(a1 + 136));
  v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v20 = sub_12AF348(*(a1 + 144));
  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_33:
  v21 = sub_12A6AF0(*(a1 + 152));
  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 0x2000) != 0)
  {
LABEL_18:
    v7 = sub_12A8778(*(a1 + 160));
    v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_19:
  v8 = *(a1 + 8);
  if (v8)
  {
    v22 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v4 += v23;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_129CA58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1959094((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a1 + 40);
    sub_1958E5C((a1 + 40), v9 + v8);
    v10 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy((v10 + 4 * v9), *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 16);
  if (!v11)
  {
    goto LABEL_79;
  }

  if (v11)
  {
    *(a1 + 16) |= 1u;
    v12 = *(a1 + 56);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      sub_1551D64(v14);
      *(a1 + 56) = v12;
    }

    if (*(a2 + 56))
    {
      v15 = *(a2 + 56);
    }

    else
    {
      v15 = &off_27769A8;
    }

    sub_1542CDC(v12, v15);
    if ((v11 & 2) == 0)
    {
LABEL_8:
      if ((v11 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_8;
  }

  *(a1 + 16) |= 2u;
  v16 = *(a1 + 64);
  if (!v16)
  {
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_155218C(v18);
    *(a1 + 64) = v16;
  }

  if (*(a2 + 64))
  {
    v19 = *(a2 + 64);
  }

  else
  {
    v19 = &off_2776D50;
  }

  sub_14D3AD8(v16, v19);
  if ((v11 & 4) == 0)
  {
LABEL_9:
    if ((v11 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_31:
  *(a1 + 16) |= 4u;
  v20 = *(a1 + 72);
  if (!v20)
  {
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v20 = sub_1407D30(v22);
    *(a1 + 72) = v20;
  }

  if (*(a2 + 72))
  {
    v23 = *(a2 + 72);
  }

  else
  {
    v23 = &off_276FB80;
  }

  sub_1405D94(v20, v23);
  if ((v11 & 8) == 0)
  {
LABEL_10:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_39:
  *(a1 + 16) |= 8u;
  v24 = *(a1 + 80);
  if (!v24)
  {
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    v24 = sub_1407E68(v26);
    *(a1 + 80) = v24;
  }

  if (*(a2 + 80))
  {
    v27 = *(a2 + 80);
  }

  else
  {
    v27 = &off_276FC20;
  }

  sub_1407340(v24, v27);
  if ((v11 & 0x10) == 0)
  {
LABEL_11:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_55:
    *(a1 + 16) |= 0x20u;
    v32 = *(a1 + 96);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_12AA750(v34);
      *(a1 + 96) = v32;
    }

    if (*(a2 + 96))
    {
      v35 = *(a2 + 96);
    }

    else
    {
      v35 = &off_2769040;
    }

    sub_12AA4CC(v32, v35);
    if ((v11 & 0x40) == 0)
    {
LABEL_13:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_71;
    }

    goto LABEL_63;
  }

LABEL_47:
  *(a1 + 16) |= 0x10u;
  v28 = *(a1 + 88);
  if (!v28)
  {
    v29 = *(a1 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    v28 = sub_12AA62C(v30);
    *(a1 + 88) = v28;
  }

  if (*(a2 + 88))
  {
    v31 = *(a2 + 88);
  }

  else
  {
    v31 = &off_2768FD8;
  }

  sub_12A9610(v28, v31);
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_55;
  }

LABEL_12:
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_63:
  *(a1 + 16) |= 0x40u;
  v36 = *(a1 + 104);
  if (!v36)
  {
    v37 = *(a1 + 8);
    v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v38 = *v38;
    }

    v36 = sub_12B3B5C(v38);
    *(a1 + 104) = v36;
  }

  if (*(a2 + 104))
  {
    v39 = *(a2 + 104);
  }

  else
  {
    v39 = &off_2769390;
  }

  sub_12B311C(v36, v39);
  if ((v11 & 0x80) != 0)
  {
LABEL_71:
    *(a1 + 16) |= 0x80u;
    v40 = *(a1 + 112);
    if (!v40)
    {
      v41 = *(a1 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v40 = sub_12B3C00(v42);
      *(a1 + 112) = v40;
    }

    if (*(a2 + 112))
    {
      v43 = *(a2 + 112);
    }

    else
    {
      v43 = &off_27693D8;
    }

    sub_12B3900(v40, v43);
  }

LABEL_79:
  if ((v11 & 0x3F00) == 0)
  {
    goto LABEL_135;
  }

  if ((v11 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v44 = *(a1 + 120);
    if (!v44)
    {
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      v44 = sub_1906254(v46);
      *(a1 + 120) = v44;
    }

    if (*(a2 + 120))
    {
      v47 = *(a2 + 120);
    }

    else
    {
      v47 = &off_278AFA0;
    }

    sub_18FBB2C(v44, v47);
    if ((v11 & 0x200) == 0)
    {
LABEL_82:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_103;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_82;
  }

  *(a1 + 16) |= 0x200u;
  v48 = *(a1 + 128);
  if (!v48)
  {
    v49 = *(a1 + 8);
    v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (v49)
    {
      v50 = *v50;
    }

    v48 = sub_190630C(v50);
    *(a1 + 128) = v48;
  }

  if (*(a2 + 128))
  {
    v51 = *(a2 + 128);
  }

  else
  {
    v51 = &off_278B0B0;
  }

  sub_18FED20(v48, v51);
  if ((v11 & 0x400) == 0)
  {
LABEL_83:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_111;
  }

LABEL_103:
  *(a1 + 16) |= 0x400u;
  v52 = *(a1 + 136);
  if (!v52)
  {
    v53 = *(a1 + 8);
    v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
    if (v53)
    {
      v54 = *v54;
    }

    v52 = sub_12B0258(v54);
    *(a1 + 136) = v52;
  }

  if (*(a2 + 136))
  {
    v55 = *(a2 + 136);
  }

  else
  {
    v55 = &off_2769168;
  }

  sub_12AD79C(v52, v55);
  if ((v11 & 0x800) == 0)
  {
LABEL_84:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_119;
  }

LABEL_111:
  *(a1 + 16) |= 0x800u;
  v56 = *(a1 + 144);
  if (!v56)
  {
    v57 = *(a1 + 8);
    v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    if (v57)
    {
      v58 = *v58;
    }

    v56 = sub_12B038C(v58);
    *(a1 + 144) = v56;
  }

  if (*(a2 + 144))
  {
    v59 = *(a2 + 144);
  }

  else
  {
    v59 = &off_2769210;
  }

  sub_12AF4A4(v56, v59);
  if ((v11 & 0x1000) == 0)
  {
LABEL_85:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(a1 + 16) |= 0x1000u;
  v60 = *(a1 + 152);
  if (!v60)
  {
    v61 = *(a1 + 8);
    v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (v61)
    {
      v62 = *v62;
    }

    sub_12A8FC8(v62);
    *(a1 + 152) = v60;
  }

  if (*(a2 + 152))
  {
    v63 = *(a2 + 152);
  }

  else
  {
    v63 = &off_2768E70;
  }

  sub_12A6CF4(v60, v63);
  if ((v11 & 0x2000) != 0)
  {
LABEL_127:
    *(a1 + 16) |= 0x2000u;
    v64 = *(a1 + 160);
    if (!v64)
    {
      v65 = *(a1 + 8);
      v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
      if (v65)
      {
        v66 = *v66;
      }

      sub_12A90FC(v66);
      *(a1 + 160) = v64;
    }

    if (*(a2 + 160))
    {
      v67 = *(a2 + 160);
    }

    else
    {
      v67 = &off_2768EE0;
    }

    sub_12A8B58(v64, v67);
  }

LABEL_135:
  v68 = *(a2 + 8);
  if (v68)
  {

    sub_1957EF4((a1 + 8), (v68 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_129CFB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1543A14(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_14D3EC8(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_1405FC0(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_140750C(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_12B3234(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = sub_12B39D8(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_18FCAE4(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = sub_18FF13C(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = sub_12AD970(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = sub_12AF5A8(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = sub_12A6F3C(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) == 0)
  {
    return 1;
  }

  result = sub_12A8F60(*(a1 + 160));
  if (result)
  {
    return 1;
  }

  return result;
}

double sub_129D0D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26CDF80;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  return result;
}

void *sub_129D1E8(void *a1)
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

void sub_129D25C(void *a1)
{
  sub_129D1E8(a1);

  operator delete();
}

uint64_t sub_129D294(uint64_t a1)
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

char *sub_129D2BC(uint64_t a1, char *a2, int32x2_t *a3)
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
        *(a1 + 40) = v13;
        goto LABEL_48;
      }

      v37 = sub_1958770(v7, v13);
      v41 = v37;
      *(a1 + 40) = v38;
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

char *sub_129D5D4(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_129D918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
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
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_11:
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
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

std::string *sub_129DA38(std::string *result, uint64_t a2)
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

void *sub_129DAD4(void *a1)
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

void sub_129DB48(void *a1)
{
  sub_129DAD4(a1);

  operator delete();
}

uint64_t sub_129DB80(uint64_t a1)
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

char *sub_129DBA8(uint64_t a1, char *a2, int32x2_t *a3)
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
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 21)
      {
        v14 = *v7;
        v13 = v7 + 4;
        v5 |= 2u;
        *(a1 + 28) = v14;
LABEL_26:
        v25 = v13;
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    if (v8 != 8)
    {
      goto LABEL_27;
    }

    v5 |= 1u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_23:
      v25 = v17;
      *(a1 + 24) = v16;
      goto LABEL_34;
    }

    v23 = sub_19587DC(v7, v16);
    v25 = v23;
    *(a1 + 24) = v24;
    if (!v23)
    {
      goto LABEL_41;
    }

LABEL_34:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 == 25)
    {
      v19 = *v7;
      v13 = v7 + 8;
      v5 |= 4u;
      *(a1 + 32) = v19;
      goto LABEL_26;
    }
  }

  else if (v11 == 4 && v8 == 33)
  {
    v15 = *v7;
    v13 = v7 + 8;
    v5 |= 8u;
    *(a1 + 40) = v15;
    goto LABEL_26;
  }

LABEL_27:
  if (v8)
  {
    v20 = (v8 & 7) == 4;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v22 = sub_11F1920((a1 + 8));
      v7 = v25;
    }

    v25 = sub_1952690(v8, v22, v7, a3);
    if (!v25)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_129DD9C(uint64_t a1, char *__dst, _DWORD *a3)
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
    *v6 = 21;
    *(v6 + 1) = v11;
    v6 += 5;
    if ((v5 & 4) == 0)
    {
LABEL_12:
      if ((v5 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
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

  v12 = *(a1 + 32);
  *v6 = 25;
  *(v6 + 1) = v12;
  v6 += 9;
  if ((v5 & 8) != 0)
  {
LABEL_20:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 40);
    *v6 = 33;
    *(v6 + 1) = v13;
    v6 += 9;
  }

LABEL_23:
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

uint64_t sub_129DF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24);
      if (v4 < 0)
      {
        v2 = 11;
      }

      else
      {
        v2 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v3 = v2 + 9;
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

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v3 += v8;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_129E018(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
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

LABEL_12:
      result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_129E0A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26CE000;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_129E124(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26CE080;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

uint64_t sub_129E1A0(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_129E248(uint64_t a1)
{
  sub_129E1A0(a1);

  operator delete();
}

uint64_t sub_129E280(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  if ((v3 & 0xE) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_129E310(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v43 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v43, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v43 + 1);
    v8 = **v43;
    if (**v43 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v43, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v43 + 2);
      }
    }

    *v43 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_47;
      }

      v5 |= 4u;
      v31 = v7 + 1;
      v32 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v33 = *v31;
      v32 = v32 + (v33 << 7) - 128;
      if ((v33 & 0x80000000) == 0)
      {
        v31 = v7 + 2;
LABEL_46:
        *v43 = v31;
        *(a1 + 64) = v32;
        goto LABEL_55;
      }

      v39 = sub_1958770(v7, v32);
      *v43 = v39;
      *(a1 + 64) = v40;
      if (!v39)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_47;
      }

      v5 |= 2u;
      v22 = v7 + 1;
      v21 = *v7;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_32:
        *v43 = v22;
        *(a1 + 56) = v21;
        goto LABEL_55;
      }

      v41 = sub_19587DC(v7, v21);
      *v43 = v41;
      *(a1 + 56) = v42;
      if (!v41)
      {
        goto LABEL_66;
      }
    }

LABEL_55:
    if (sub_195ADC0(a3, v43, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_47;
    }

    v5 |= 8u;
    v24 = v7 + 1;
    v25 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    v26 = *v24;
    v25 = v25 + (v26 << 7) - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_37:
      *v43 = v24;
      *(a1 + 68) = v25;
      goto LABEL_55;
    }

    v37 = sub_1958770(v7, v25);
    *v43 = v37;
    *(a1 + 68) = v38;
    if (!v37)
    {
      goto LABEL_66;
    }

    goto LABEL_55;
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_47;
    }

    *(a1 + 16) |= 1u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v29 = sub_194DB04((a1 + 48), v28);
    v30 = sub_1958890(v29, *v43, a3);
LABEL_54:
    *v43 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    goto LABEL_55;
  }

  if (v11 == 5 && v8 == 42)
  {
    v12 = v7 - 1;
    while (1)
    {
      v13 = (v12 + 1);
      *v43 = v12 + 1;
      v14 = *(a1 + 40);
      if (v14 && (v15 = *(a1 + 32), v15 < *v14))
      {
        *(a1 + 32) = v15 + 1;
        v16 = *&v14[2 * v15 + 2];
      }

      else
      {
        v17 = *(a1 + 24);
        if (!v17)
        {
          operator new();
        }

        *v19 = v18;
        v19[1] = sub_195A650;
        *v18 = 0;
        v18[1] = 0;
        v18[2] = 0;
        v16 = sub_19593CC(a1 + 24, v18);
        v13 = *v43;
      }

      v12 = sub_1958890(v16, v13, a3);
      *v43 = v12;
      if (!v12)
      {
        goto LABEL_66;
      }

      if (*a3 <= v12 || *v12 != 42)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_47:
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
      v7 = *v43;
    }

    v30 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  *v43 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v43;
}

char *sub_129E698(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 56);
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

    v16 = *(a1 + 68);
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

  if (v5)
  {
    v15 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v15);
  }

  v19 = *(a1 + 32);
  if (v19 >= 1)
  {
    v20 = 8;
    do
    {
      v21 = *(*(a1 + 40) + v20);
      v22 = *(v21 + 23);
      if (v22 < 0 && (v22 = v21[1], v22 > 127) || *a3 - v15 + 14 < v22)
      {
        v15 = sub_1957480(a3, 5, v21, v15);
      }

      else
      {
        *v15 = 42;
        v15[1] = v22;
        if (*(v21 + 23) < 0)
        {
          v21 = *v21;
        }

        v23 = v15 + 2;
        memcpy(v23, v21, v22);
        v15 = &v23[v22];
      }

      v20 += 8;
      --v19;
    }

    while (v19);
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

uint64_t sub_129E9A0(uint64_t a1)
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

  v7 = *(a1 + 16);
  if ((v7 & 0xF) == 0)
  {
    goto LABEL_14;
  }

  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v7 & 4) == 0)
    {
LABEL_12:
      if ((v7 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_20;
  }

  v10 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v10 + 23);
  v12 = *(v10 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v12 = v11;
  }

  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  if ((v7 & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_20:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 8) != 0)
  {
LABEL_13:
    v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v8 = *(a1 + 8);
  if (v8)
  {
    v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v3 += v14;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_129EB04(std::string *result, uint64_t a2)
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

  v9 = *(a2 + 16);
  if ((v9 & 0xF) != 0)
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

        goto LABEL_19;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
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
      HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
      goto LABEL_10;
    }

LABEL_19:
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
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

uint64_t sub_129EC58(uint64_t a1)
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

  if (a1 != &off_2768CA0)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_129E1A0(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_129ED5C(uint64_t a1)
{
  sub_129EC58(a1);

  operator delete();
}

uint64_t sub_129ED94(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  v8 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_129E280(*(a1 + 72));
    goto LABEL_7;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v3 & 8) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ((v3 & 0xF0) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  if ((v3 & 0xF00) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
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

uint64_t sub_129EEBC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
          goto LABEL_79;
        }

        v5 |= 0x10u;
        v11 = (v7 + 1);
        v12 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v12 = v12 + (v13 << 7) - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v11 = (v7 + 2);
LABEL_12:
          *v72 = v11;
          *(a1 + 80) = v12;
          goto LABEL_87;
        }

        v64 = sub_1958770(v7, v12);
        *v72 = v64;
        *(a1 + 80) = v65;
        if (v64)
        {
          goto LABEL_87;
        }

        goto LABEL_108;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_79;
        }

        v5 |= 0x20u;
        v36 = (v7 + 1);
        v37 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v38 = *v36;
        v37 = v37 + (v38 << 7) - 128;
        if (v38 < 0)
        {
          v68 = sub_1958770(v7, v37);
          *v72 = v68;
          *(a1 + 84) = v69;
          if (!v68)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v36 = (v7 + 2);
LABEL_52:
          *v72 = v36;
          *(a1 + 84) = v37;
        }

        goto LABEL_87;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_79;
        }

        v5 |= 0x40u;
        v33 = (v7 + 1);
        v34 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v35 = *v33;
        v34 = v34 + (v35 << 7) - 128;
        if (v35 < 0)
        {
          v66 = sub_1958770(v7, v34);
          *v72 = v66;
          *(a1 + 88) = v67;
          if (!v66)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v33 = (v7 + 2);
LABEL_47:
          *v72 = v33;
          *(a1 + 88) = v34;
        }

        goto LABEL_87;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_79;
        }

        v5 |= 0x80u;
        v30 = (v7 + 1);
        v31 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v32 = *v30;
        v31 = v31 + (v32 << 7) - 128;
        if (v32 < 0)
        {
          v62 = sub_1958770(v7, v31);
          *v72 = v62;
          *(a1 + 92) = v63;
          if (!v62)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v30 = (v7 + 2);
LABEL_42:
          *v72 = v30;
          *(a1 + 92) = v31;
        }

        goto LABEL_87;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_79;
        }

        v5 |= 0x100u;
        v17 = (v7 + 1);
        v18 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        v19 = *v17;
        v18 = v18 + (v19 << 7) - 128;
        if (v19 < 0)
        {
          v56 = sub_1958770(v7, v18);
          *v72 = v56;
          *(a1 + 96) = v57;
          if (!v56)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v17 = (v7 + 2);
LABEL_21:
          *v72 = v17;
          *(a1 + 96) = v18;
        }

        goto LABEL_87;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_79;
        }

        v5 |= 0x200u;
        v24 = (v7 + 1);
        v25 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v26 = *v24;
        v25 = v25 + (v26 << 7) - 128;
        if (v26 < 0)
        {
          v58 = sub_1958770(v7, v25);
          *v72 = v58;
          *(a1 + 100) = v59;
          if (!v58)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v24 = (v7 + 2);
LABEL_32:
          *v72 = v24;
          *(a1 + 100) = v25;
        }

        goto LABEL_87;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_79;
        }

        v5 |= 0x400u;
        v39 = (v7 + 1);
        v40 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v41 = *v39;
        v40 = v40 + (v41 << 7) - 128;
        if (v41 < 0)
        {
          v70 = sub_1958770(v7, v40);
          *v72 = v70;
          *(a1 + 104) = v71;
          if (!v70)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v39 = (v7 + 2);
LABEL_57:
          *v72 = v39;
          *(a1 + 104) = v40;
        }

        goto LABEL_87;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_79;
        }

        *(a1 + 16) |= 1u;
        v42 = *(a1 + 8);
        v15 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v15 = *v15;
        }

        v16 = (a1 + 48);
        goto LABEL_66;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_79;
        }

        v45 = (v7 - 1);
        while (1)
        {
          v46 = (v45 + 1);
          *v72 = v45 + 1;
          v47 = *(a1 + 40);
          if (v47 && (v48 = *(a1 + 32), v48 < *v47))
          {
            *(a1 + 32) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            v50 = *(a1 + 24);
            if (!v50)
            {
              operator new();
            }

            *v52 = v51;
            v52[1] = sub_195A650;
            *v51 = 0;
            v51[1] = 0;
            v51[2] = 0;
            v49 = sub_19593CC(a1 + 24, v51);
            v46 = *v72;
          }

          v45 = sub_1958890(v49, v46, a3);
          *v72 = v45;
          if (!v45)
          {
            goto LABEL_108;
          }

          if (*a3 <= v45 || *v45 != 98)
          {
            goto LABEL_87;
          }
        }

      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_79;
        }

        *(a1 + 16) |= 2u;
        v43 = *(a1 + 8);
        v15 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v15 = *v15;
        }

        v16 = (a1 + 56);
        goto LABEL_66;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_79;
        }

        *(a1 + 16) |= 4u;
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = (a1 + 64);
LABEL_66:
        v44 = sub_194DB04(v16, v15);
        v23 = sub_1958890(v44, *v72, a3);
        goto LABEL_86;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_79;
        }

        v5 |= 0x800u;
        v28 = (v7 + 1);
        v27 = *v7;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if (v29 < 0)
        {
          v60 = sub_19587DC(v7, v27);
          *v72 = v60;
          *(a1 + 112) = v61;
          if (!v60)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v28 = (v7 + 2);
LABEL_37:
          *v72 = v28;
          *(a1 + 112) = v27;
        }

        goto LABEL_87;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_79;
        }

        *(a1 + 16) |= 8u;
        v20 = *(a1 + 72);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_12A0F88(v22);
          *(a1 + 72) = v20;
          v7 = *v72;
        }

        v23 = sub_21F4730(a3, v20, v7);
        goto LABEL_86;
      default:
LABEL_79:
        if (v8)
        {
          v53 = (v8 & 7) == 4;
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
            v7 = *v72;
          }

          v23 = sub_1952690(v8, v55, v7, a3);
LABEL_86:
          *v72 = v23;
          if (!v23)
          {
            goto LABEL_108;
          }

LABEL_87:
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
LABEL_108:
          *v72 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v72;
    }
  }
}

char *sub_129F508(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 84);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 88);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 92);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 96);
    *v19 = 48;
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 100);
    *v24 = 56;
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

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 104);
    *v28 = 72;
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
          LODWORD(v28) = v35 >> 7;
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

  if (v5)
  {
    v33 = sub_128AEEC(a3, 11, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v33);
  }

  v37 = *(a1 + 32);
  if (v37 >= 1)
  {
    v38 = 8;
    do
    {
      v39 = *(*(a1 + 40) + v38);
      v40 = *(v39 + 23);
      if (v40 < 0 && (v40 = v39[1], v40 > 127) || *a3 - v33 + 14 < v40)
      {
        v33 = sub_1957480(a3, 12, v39, v33);
      }

      else
      {
        *v33 = 98;
        v33[1] = v40;
        if (*(v39 + 23) < 0)
        {
          v39 = *v39;
        }

        v41 = v33 + 2;
        memcpy(v33 + 2, v39, v40);
        v33 = &v41[v40];
      }

      v38 += 8;
      --v37;
    }

    while (v37);
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_79;
    }

LABEL_82:
    v33 = sub_128AEEC(a3, 14, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v33);
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_83;
  }

  v33 = sub_128AEEC(a3, 13, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v33);
  if ((v5 & 4) != 0)
  {
    goto LABEL_82;
  }

LABEL_79:
  if ((v5 & 0x800) == 0)
  {
LABEL_80:
    v42 = v33;
    goto LABEL_90;
  }

LABEL_83:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v43 = *(a1 + 112);
  *v33 = 120;
  v33[1] = v43;
  if (v43 > 0x7F)
  {
    v33[1] = v43 | 0x80;
    v44 = v43 >> 7;
    v33[2] = v43 >> 7;
    v42 = v33 + 3;
    if (v43 >= 0x4000)
    {
      LOBYTE(v45) = v33[2];
      do
      {
        *(v42 - 1) = v45 | 0x80;
        v45 = v44 >> 7;
        *v42++ = v44 >> 7;
        v46 = v44 >> 14;
        v44 >>= 7;
      }

      while (v46);
    }
  }

  else
  {
    v42 = v33 + 2;
  }

LABEL_90:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v47 = *(a1 + 72);
    *v42 = 386;
    v48 = *(v47 + 20);
    v42[2] = v48;
    if (v48 > 0x7F)
    {
      v49 = sub_19575D0(v48, v42 + 2);
    }

    else
    {
      v49 = v42 + 3;
    }

    v42 = sub_129E698(v47, v49, a3);
  }

  v50 = *(a1 + 8);
  if ((v50 & 1) == 0)
  {
    return v42;
  }

  v52 = v50 & 0xFFFFFFFFFFFFFFFCLL;
  v53 = *(v52 + 31);
  if (v53 < 0)
  {
    v54 = *(v52 + 8);
    v53 = *(v52 + 16);
  }

  else
  {
    v54 = (v52 + 8);
  }

  if (*a3 - v42 >= v53)
  {
    v55 = v53;
    memcpy(v42, v54, v53);
    v42 += v55;
    return v42;
  }

  return sub_1957130(a3, v54, v53, v42);
}

uint64_t sub_129FB4C(uint64_t a1)
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

  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_18;
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

    v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_11:
      if ((v8 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_32;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_11;
  }

  v14 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_32:
  v17 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_13:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = sub_129E9A0(*(a1 + 72));
  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x10) == 0)
  {
LABEL_14:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_37:
    v4 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_16:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_36:
  v4 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_15:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_38:
  v4 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_17:
    v4 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  if ((v8 & 0xF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v8 & 0x100) != 0)
  {
    v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x200) == 0)
    {
LABEL_21:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_42;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  v4 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x400) == 0)
  {
LABEL_22:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_42:
  v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x800) != 0)
  {
LABEL_23:
    v4 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_24:
  v9 = *(a1 + 8);
  if (v9)
  {
    v21 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v4 += v22;
  }

  *(a1 + 20) = v4;
  return v4;
}

std::string *sub_129FE7C(std::string *result, uint64_t a2)
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

  v9 = *(a2 + 16);
  if (v9)
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

        goto LABEL_32;
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

      goto LABEL_35;
    }

LABEL_32:
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

      goto LABEL_43;
    }

LABEL_35:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    data = v3[3].__r_.__value_.__l.__data_;
    if (!data)
    {
      v21 = v3->__r_.__value_.__l.__size_;
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      data = sub_12A0F88(v22);
      v3[3].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 72))
    {
      v23 = *(a2 + 72);
    }

    else
    {
      v23 = &off_2768C58;
    }

    result = sub_129EB04(data, v23);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }

LABEL_43:
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_45;
    }

LABEL_44:
    HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      HIDWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 92);
      goto LABEL_14;
    }

LABEL_45:
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0xF00) == 0)
  {
    goto LABEL_22;
  }

  if ((v9 & 0x100) != 0)
  {
    LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
    if ((v9 & 0x200) == 0)
    {
LABEL_18:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_19;
      }

LABEL_49:
      LODWORD(v3[4].__r_.__value_.__r.__words[1]) = *(a2 + 104);
      if ((v9 & 0x800) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  HIDWORD(v3[4].__r_.__value_.__r.__words[0]) = *(a2 + 100);
  if ((v9 & 0x400) != 0)
  {
    goto LABEL_49;
  }

LABEL_19:
  if ((v9 & 0x800) != 0)
  {
LABEL_20:
    v3[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
  }

LABEL_21:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
LABEL_22:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12A00F4(void *a1)
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

void sub_12A0168(void *a1)
{
  sub_12A00F4(a1);

  operator delete();
}

uint64_t sub_12A01A0(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
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

char *sub_12A01C4(uint64_t a1, char *a2, int32x2_t *a3)
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
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_24:
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
    v25 = v21;
    *(a1 + 28) = v22;
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

char *sub_12A03A8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12A0558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
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

uint64_t sub_12A060C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_11;
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12A06E0(uint64_t a1)
{
  sub_12A060C(a1);

  operator delete();
}

uint64_t sub_12A0718(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 7) != 0)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v6 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

LABEL_17:
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_12A0810(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  if (sub_195ADC0(a3, v30, a3[11].i32[1]))
  {
    return *v30;
  }

  while (1)
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
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          v19 = v6 - 1;
          while (1)
          {
            v20 = (v19 + 1);
            *v30 = v19 + 1;
            v21 = *(a1 + 40);
            if (v21 && (v22 = *(a1 + 32), v22 < *v21))
            {
              *(a1 + 32) = v22 + 1;
              v23 = *&v21[2 * v22 + 2];
            }

            else
            {
              v24 = *(a1 + 24);
              if (!v24)
              {
                operator new();
              }

              *v26 = v25;
              v26[1] = sub_195A650;
              *v25 = 0;
              v25[1] = 0;
              v25[2] = 0;
              v23 = sub_19593CC(a1 + 24, v25);
              v20 = *v30;
            }

            v19 = sub_1958890(v23, v20, a3);
            *v30 = v19;
            if (!v19)
            {
              goto LABEL_53;
            }

            if (*a3 <= v19 || *v19 != 26)
            {
              goto LABEL_48;
            }
          }
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 4u;
        v15 = *(a1 + 8);
        v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v13 = *v13;
        }

        v14 = (a1 + 64);
        goto LABEL_27;
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

        v14 = (a1 + 48);
        goto LABEL_27;
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

      v14 = (a1 + 56);
LABEL_27:
      v17 = sub_194DB04(v14, v13);
      v18 = sub_1958890(v17, *v30, a3);
      goto LABEL_47;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v29 = sub_11F1920((a1 + 8));
      v6 = *v30;
    }

    v18 = sub_1952690(v7, v29, v6, a3);
LABEL_47:
    *v30 = v18;
    if (!v18)
    {
      goto LABEL_53;
    }

LABEL_48:
    if (sub_195ADC0(a3, v30, a3[11].i32[1]))
    {
      return *v30;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v30;
  }

LABEL_53:
  *v30 = 0;
  return *v30;
}

char *sub_12A0AD4(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a1 + 40) + v8);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = v9[1], v10 > 127) || *a3 - v4 + 14 < v10)
      {
        v4 = sub_1957480(a3, 3, v9, v4);
      }

      else
      {
        *v4 = 26;
        v4[1] = v10;
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v11 = v4 + 2;
        memcpy(v11, v9, v10);
        v4 = &v11[v10];
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  if ((v6 & 4) != 0)
  {
    v4 = sub_128AEEC(a3, 4, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

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

uint64_t sub_12A0C8C(uint64_t a1)
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

  v7 = *(a1 + 16);
  if ((v7 & 7) != 0)
  {
    if (v7)
    {
      v13 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v7 & 2) == 0)
      {
LABEL_11:
        if ((v7 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

    v16 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) != 0)
    {
LABEL_12:
      v8 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_15:
  v11 = *(a1 + 8);
  if (v11)
  {
    v19 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v3 += v20;
  }

  *(a1 + 20) = v3;
  return v3;
}