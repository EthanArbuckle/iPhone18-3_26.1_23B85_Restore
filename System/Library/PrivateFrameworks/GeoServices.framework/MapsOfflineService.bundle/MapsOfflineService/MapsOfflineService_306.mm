uint64_t sub_12BE084(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = 9 * *(a1 + 24) + v2;
  v4 = *(a1 + 56);
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
      v8 = sub_12B8FEC(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(*(a1 + 72) + 4 * v11);
      if (v12 < 0)
      {
        v13 = 10;
      }

      else
      {
        v13 = (9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6;
      }

      v10 += v13;
      ++v11;
    }

    while (v9 != v11);
  }

  else
  {
    v10 = 0;
  }

  v14 = *(a1 + 88);
  v15 = v3 + v9 + v10 + 2 * v14;
  v16 = *(a1 + 96);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = sub_12BC4C8(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = sub_1959E5C((a1 + 104));
  v22 = *(a1 + 128);
  v23 = v21 + v15 + 2 * (v22 + *(a1 + 104));
  if (v22 >= 1)
  {
    v24 = (*(a1 + 136) + 8);
    do
    {
      v25 = *v24++;
      v26 = *(v25 + 23);
      v27 = *(v25 + 8);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v26;
      }

      v23 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      --v22;
    }

    while (v22);
  }

  v28 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v28)
    {
      v35 = sub_149E4E4(*(a1 + 144));
      v23 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v28 & 2) == 0)
      {
LABEL_29:
        if ((v28 & 4) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_53;
      }
    }

    else if ((v28 & 2) == 0)
    {
      goto LABEL_29;
    }

    v36 = sub_12B9884(*(a1 + 152));
    v23 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 4) == 0)
    {
LABEL_30:
      if ((v28 & 8) == 0)
      {
LABEL_32:
        v30.i64[0] = 0x200000002;
        v30.i64[1] = 0x200000002;
        v23 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v28), xmmword_232A1F0), v30));
        goto LABEL_33;
      }

LABEL_31:
      v29 = sub_12BB99C(*(a1 + 168));
      v23 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
      goto LABEL_32;
    }

LABEL_53:
    v37 = sub_12B862C(*(a1 + 160));
    v23 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v28 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_33:
  if ((v28 & 0xFF00) == 0)
  {
    goto LABEL_47;
  }

  if ((v28 & 0x100) != 0)
  {
    v23 += ((9 * (__clz(*(a1 + 180) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v31 = v23 + 9;
  if ((v28 & 0x200) == 0)
  {
    v31 = v23;
  }

  if ((v28 & 0x400) == 0)
  {
    if ((v28 & 0x800) == 0)
    {
      goto LABEL_40;
    }

LABEL_56:
    v31 += ((9 * (__clz(*(a1 + 196) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 0x1000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v31 += ((9 * (__clz(*(a1 + 192) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x800) != 0)
  {
    goto LABEL_56;
  }

LABEL_40:
  if ((v28 & 0x1000) != 0)
  {
LABEL_41:
    v31 += ((9 * (__clz(*(a1 + 200) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_42:
  v32 = v31 + ((v28 >> 12) & 2);
  if ((v28 & 0x4000) != 0)
  {
    v32 += 3;
  }

  if ((v28 & 0x8000) != 0)
  {
    v23 = v32 + 10;
  }

  else
  {
    v23 = v32;
  }

LABEL_47:
  if ((v28 & 0x10000) != 0)
  {
    v23 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v33 = *(a1 + 8);
  if (v33)
  {
    v38 = v33 & 0xFFFFFFFFFFFFFFFCLL;
    v39 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v39 < 0)
    {
      v39 = *(v38 + 16);
    }

    v23 += v39;
  }

  *(a1 + 20) = v23;
  return v23;
}

void sub_12BE454(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_12E6D74((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v14 + v13);
    v15 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v15 + 4 * v14), *(a2 + 72), 4 * *(a2 + 64));
  }

  v16 = *(a2 + 88);
  if (v16)
  {
    v17 = *(a2 + 96);
    v18 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_12E6E00((a1 + 80), v18, (v17 + 8), v16, **(a1 + 96) - *(a1 + 88));
    v19 = *(a1 + 88) + v16;
    *(a1 + 88) = v19;
    v20 = *(a1 + 96);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 104);
  if (v21)
  {
    v22 = *(a1 + 104);
    sub_1958E5C((a1 + 104), v22 + v21);
    v23 = *(a1 + 112);
    *(a1 + 104) += *(a2 + 104);
    memcpy((v23 + 4 * v22), *(a2 + 112), 4 * *(a2 + 104));
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1201B48(a1 + 120, v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
    v27 = *(a1 + 128) + v24;
    *(a1 + 128) = v27;
    v28 = *(a1 + 136);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 16);
  if (v29)
  {
    if (v29)
    {
      *(a1 + 16) |= 1u;
      v32 = *(a1 + 144);
      if (!v32)
      {
        v33 = *(a1 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        v32 = sub_14BDE5C(v34);
        *(a1 + 144) = v32;
      }

      if (*(a2 + 144))
      {
        v35 = *(a2 + 144);
      }

      else
      {
        v35 = &off_27731C8;
      }

      sub_149E8CC(v32, v35);
      if ((v29 & 2) == 0)
      {
LABEL_19:
        if ((v29 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_60;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 16) |= 2u;
    v36 = *(a1 + 152);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_12D0310(v38);
      *(a1 + 152) = v36;
    }

    if (*(a2 + 152))
    {
      v39 = *(a2 + 152);
    }

    else
    {
      v39 = &off_2769590;
    }

    sub_12095D8(v36, v39);
    if ((v29 & 4) == 0)
    {
LABEL_20:
      if ((v29 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_68;
    }

LABEL_60:
    *(a1 + 16) |= 4u;
    v40 = *(a1 + 160);
    if (!v40)
    {
      v41 = *(a1 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      sub_12D01F0(v42);
      *(a1 + 160) = v40;
    }

    if (*(a2 + 160))
    {
      v43 = *(a2 + 160);
    }

    else
    {
      v43 = &off_2769540;
    }

    sub_12B88B4(v40, v43);
    if ((v29 & 8) == 0)
    {
LABEL_21:
      if ((v29 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_76;
    }

LABEL_68:
    *(a1 + 16) |= 8u;
    v44 = *(a1 + 168);
    if (!v44)
    {
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      sub_12D0674(v46);
      *(a1 + 168) = v44;
    }

    if (*(a2 + 168))
    {
      v47 = *(a2 + 168);
    }

    else
    {
      v47 = &off_2769678;
    }

    sub_12BBB3C(v44, v47);
    if ((v29 & 0x10) == 0)
    {
LABEL_22:
      if ((v29 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_77;
    }

LABEL_76:
    *(a1 + 176) = *(a2 + 176);
    if ((v29 & 0x20) == 0)
    {
LABEL_23:
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_78;
    }

LABEL_77:
    *(a1 + 177) = *(a2 + 177);
    if ((v29 & 0x40) == 0)
    {
LABEL_24:
      if ((v29 & 0x80) == 0)
      {
LABEL_26:
        *(a1 + 16) |= v29;
        goto LABEL_27;
      }

LABEL_25:
      *(a1 + 179) = *(a2 + 179);
      goto LABEL_26;
    }

LABEL_78:
    *(a1 + 178) = *(a2 + 178);
    if ((v29 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_27:
  if ((v29 & 0xFF00) == 0)
  {
    goto LABEL_38;
  }

  if ((v29 & 0x100) != 0)
  {
    *(a1 + 180) = *(a2 + 180);
    if ((v29 & 0x200) == 0)
    {
LABEL_30:
      if ((v29 & 0x400) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_82;
    }
  }

  else if ((v29 & 0x200) == 0)
  {
    goto LABEL_30;
  }

  *(a1 + 184) = *(a2 + 184);
  if ((v29 & 0x400) == 0)
  {
LABEL_31:
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(a1 + 192) = *(a2 + 192);
  if ((v29 & 0x800) == 0)
  {
LABEL_32:
    if ((v29 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(a1 + 196) = *(a2 + 196);
  if ((v29 & 0x1000) == 0)
  {
LABEL_33:
    if ((v29 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(a1 + 200) = *(a2 + 200);
  if ((v29 & 0x2000) == 0)
  {
LABEL_34:
    if ((v29 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

LABEL_86:
    *(a1 + 205) = *(a2 + 205);
    if ((v29 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_85:
  *(a1 + 204) = *(a2 + 204);
  if ((v29 & 0x4000) != 0)
  {
    goto LABEL_86;
  }

LABEL_35:
  if ((v29 & 0x8000) != 0)
  {
LABEL_36:
    *(a1 + 208) = *(a2 + 208);
  }

LABEL_37:
  *(a1 + 16) |= v29;
LABEL_38:
  if ((v29 & 0x10000) != 0)
  {
    v30 = *(a2 + 216);
    *(a1 + 16) |= 0x10000u;
    *(a1 + 216) = v30;
  }

  v31 = *(a2 + 8);
  if (v31)
  {

    sub_1957EF4((a1 + 8), (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12BE8D8(uint64_t a1)
{
  result = sub_12BE91C(a1 + 40);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_149EC98(*(a1 + 144));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_12BE91C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 32);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_16E5370(*(*(v4 + 40) + 8 * v5));
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

void *sub_12BE9B8(void *a1)
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

void sub_12BEA2C(void *a1)
{
  sub_12BE9B8(a1);

  operator delete();
}

uint64_t sub_12BEA64(uint64_t a1)
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

char *sub_12BEA8C(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_12BEC80(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12BEDE0(uint64_t a1)
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

std::string *sub_12BEE58(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      result[1].__r_.__value_.__s.__data_[4] = *(a2 + 28);
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

void *sub_12BEEBC(void *a1)
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

void sub_12BEF30(void *a1)
{
  sub_12BEEBC(a1);

  operator delete();
}

uint64_t sub_12BEF68(uint64_t a1)
{
  if ((*(a1 + 16) & 0x3F) != 0)
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

char *sub_12BEF90(uint64_t a1, char *a2, int32x2_t *a3)
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
        goto LABEL_49;
      }

      v5 |= 1u;
      v19 = v7 + 1;
      v20 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      v21 = *v19;
      v20 = v20 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v19 = v7 + 2;
LABEL_31:
        v46 = v19;
        *(a1 + 24) = v20;
        goto LABEL_56;
      }

      v35 = sub_1958770(v7, v20);
      v46 = v35;
      *(a1 + 24) = v36;
      if (!v35)
      {
        goto LABEL_74;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_49;
      }

      v5 |= 2u;
      v26 = v7 + 1;
      v27 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      v28 = *v26;
      v27 = v27 + (v28 << 7) - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_43:
        v46 = v26;
        *(a1 + 28) = v27;
        goto LABEL_56;
      }

      v42 = sub_1958770(v7, v27);
      v46 = v42;
      *(a1 + 28) = v43;
      if (!v42)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_49;
      }

      v5 |= 4u;
      v13 = v7 + 1;
      v14 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v13;
      v14 = v14 + (v15 << 7) - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_18:
        v46 = v13;
        *(a1 + 32) = v14;
        goto LABEL_56;
      }

      v40 = sub_1958770(v7, v14);
      v46 = v40;
      *(a1 + 32) = v41;
      if (!v40)
      {
        goto LABEL_74;
      }
    }

LABEL_56:
    if (sub_195ADC0(a3, &v46, a3[11].i32[1]))
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
        goto LABEL_49;
      }

      v5 |= 0x10u;
      v29 = v7 + 1;
      v30 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      v31 = *v29;
      v30 = v30 + (v31 << 7) - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v29 = v7 + 2;
LABEL_48:
        v46 = v29;
        *(a1 + 40) = v30;
        goto LABEL_56;
      }

      v44 = sub_1958770(v7, v30);
      v46 = v44;
      *(a1 + 40) = v45;
      if (!v44)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_49;
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
        v46 = v16;
        *(a1 + 44) = v17;
        goto LABEL_56;
      }

      v38 = sub_1958770(v7, v17);
      v46 = v38;
      *(a1 + 44) = v39;
      if (!v38)
      {
        goto LABEL_74;
      }
    }

    goto LABEL_56;
  }

  if (v8 == 32)
  {
    v22 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    v24 = *v22;
    v25 = (v24 << 7) + v23;
    LODWORD(v23) = v25 - 128;
    if (v24 < 0)
    {
      v46 = sub_19587DC(v7, (v25 - 128));
      if (!v46)
      {
        goto LABEL_74;
      }

      LODWORD(v23) = v37;
    }

    else
    {
      v22 = v7 + 2;
LABEL_36:
      v46 = v22;
    }

    if (sub_1454008(v23))
    {
      *(a1 + 16) |= 8u;
      *(a1 + 36) = v23;
    }

    else
    {
      sub_12E8500();
    }

    goto LABEL_56;
  }

LABEL_49:
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
      v7 = v46;
    }

    v46 = sub_1952690(v8, v34, v7, a3);
    if (!v46)
    {
      goto LABEL_74;
    }

    goto LABEL_56;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_74:
  v46 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v46;
}

char *sub_12BF334(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 44);
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

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v28;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  if (*a3 - v28 >= v36)
  {
    v38 = v36;
    memcpy(v28, v37, v36);
    v28 += v38;
    return v28;
  }

  return sub_1957130(a3, v37, v36, v28);
}

uint64_t sub_12BF6FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v2 = 0;
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
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v5 = *(a1 + 36);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v6;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) != 0)
  {
LABEL_12:
    v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v3 = *(a1 + 8);
  if (v3)
  {
    v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_12BF854(std::string *result, uint64_t a2)
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
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
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

uint64_t sub_12BF900(uint64_t a1)
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
  if (a1 != &off_2769810)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_12BEEBC(v6);
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

void sub_12BF9B8(uint64_t a1)
{
  sub_12BF900(a1);

  operator delete();
}

uint64_t sub_12BF9F0(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_12BEF68(*(result + 24));
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

char *sub_12BFA4C(uint64_t a1, char *a2, int32x2_t *a3)
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

        sub_12D08E0(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_21F67D0(a3, v14, v6);
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

char *sub_12BFB90(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_12BF334(v6, v8, a3);
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

uint64_t sub_12BFC9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_12BF6FC(*(a1 + 24));
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

std::string *sub_12BFD1C(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      sub_12D08E0(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_27697E0;
    }

    result = sub_12BF854(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12BFDDC(uint64_t a1)
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
  if (a1 != &off_2769830)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_12BF900(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_12E6390((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12BFEA0(uint64_t a1)
{
  sub_12BFDDC(a1);

  operator delete();
}

uint64_t sub_12BFED8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12BEA64(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    result = sub_12BF9F0(*(v1 + 48));
  }

  if ((v5 & 0x3E) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
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

char *sub_12BFF78(uint64_t a1, char *a2, int32x2_t *a3)
{
  v49 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v49, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v49 + 1;
    v8 = *v49;
    if (*v49 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v49, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v49 + 2;
      }
    }

    v49 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_62;
      }

      v5 |= 2u;
      v23 = v7 + 1;
      v24 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v25 = *v23;
      v24 = v24 + (v25 << 7) - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_39:
        v49 = v23;
        *(a1 + 56) = v24;
        goto LABEL_70;
      }

      v41 = sub_1958770(v7, v24);
      v49 = v41;
      *(a1 + 56) = v42;
      if (!v41)
      {
        goto LABEL_86;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_62;
      }

      v5 |= 4u;
      v35 = v7 + 1;
      v36 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      v37 = *v35;
      v36 = v36 + (v37 << 7) - 128;
      if ((v37 & 0x80000000) == 0)
      {
        v35 = v7 + 2;
LABEL_61:
        v49 = v35;
        *(a1 + 60) = v36;
        goto LABEL_70;
      }

      v47 = sub_1958770(v7, v36);
      v49 = v47;
      *(a1 + 60) = v48;
      if (!v47)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_62;
      }

      v5 |= 8u;
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
        v49 = v16;
        *(a1 + 64) = v17;
        goto LABEL_70;
      }

      v45 = sub_1958770(v7, v17);
      v49 = v45;
      *(a1 + 64) = v46;
      if (!v45)
      {
        goto LABEL_86;
      }
    }

LABEL_70:
    if (sub_195ADC0(a3, &v49, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 5)
  {
    if (v11 != 6)
    {
      if (v11 != 7 || v8 != 58)
      {
        goto LABEL_62;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_12D095C(v21);
        *(a1 + 48) = v19;
        v7 = v49;
      }

      v22 = sub_21F68F0(a3, v19, v7);
LABEL_69:
      v49 = v22;
      if (!v22)
      {
        goto LABEL_86;
      }

      goto LABEL_70;
    }

    if (v8 != 48)
    {
      goto LABEL_62;
    }

    v33 = v7 + 1;
    v32 = *v7;
    if (v32 < 0)
    {
      v34 = *v33;
      v32 = (v34 << 7) + v32 - 128;
      if (v34 < 0)
      {
        v49 = sub_19587DC(v7, v32);
        if (!v49)
        {
          goto LABEL_86;
        }

        goto LABEL_55;
      }

      v33 = v7 + 2;
    }

    v49 = v33;
LABEL_55:
    if (v32 > 4)
    {
      sub_12E84C8();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 72) = v32;
    }

    goto LABEL_70;
  }

  if (v11 != 4)
  {
    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_62;
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
      v49 = v13;
      *(a1 + 68) = v12 != 0;
      goto LABEL_70;
    }

    v43 = sub_19587DC(v7, v12);
    v49 = v43;
    *(a1 + 68) = v44 != 0;
    if (!v43)
    {
      goto LABEL_86;
    }

    goto LABEL_70;
  }

  if (v8 == 34)
  {
    v26 = v7 - 1;
    while (1)
    {
      v27 = (v26 + 1);
      v49 = v26 + 1;
      v28 = *(a1 + 40);
      if (v28 && (v29 = *(a1 + 32), v29 < *v28))
      {
        *(a1 + 32) = v29 + 1;
        v30 = *&v28[2 * v29 + 2];
      }

      else
      {
        v31 = sub_12D0864(*(a1 + 24));
        v30 = sub_19593CC(a1 + 24, v31);
        v27 = v49;
      }

      v26 = sub_21F6860(a3, v30, v27);
      v49 = v26;
      if (!v26)
      {
        goto LABEL_86;
      }

      if (*a3 <= v26 || *v26 != 34)
      {
        goto LABEL_70;
      }
    }
  }

LABEL_62:
  if (v8)
  {
    v38 = (v8 & 7) == 4;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    v39 = *(a1 + 8);
    if (v39)
    {
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v40 = sub_11F1920((a1 + 8));
      v7 = v49;
    }

    v22 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_69;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_86:
  v49 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v49;
}

char *sub_12C03AC(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 60);
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

    v16 = *(a1 + 64);
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

      v15 = sub_12BEC80(v21, v23, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v24 = *(a1 + 68);
    *v15 = 40;
    v15[1] = v24;
    v15 += 2;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v26 = *(a1 + 72);
    *v15 = 48;
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
          v15 = (v27 >> 7);
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

  if (v5)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v29 = *(a1 + 48);
    *v25 = 58;
    v30 = *(v29 + 20);
    v25[1] = v30;
    if (v30 > 0x7F)
    {
      v31 = sub_19575D0(v30, v25 + 1);
    }

    else
    {
      v31 = v25 + 2;
    }

    v25 = sub_12BFB90(v29, v31, a3);
  }

  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return v25;
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

  if (*a3 - v25 >= v35)
  {
    v37 = v35;
    memcpy(v25, v36, v35);
    v25 += v37;
    return v25;
  }

  return sub_1957130(a3, v36, v35, v25);
}

uint64_t sub_12C07A4(uint64_t a1)
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
      v7 = sub_12BEDE0(v6);
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
  if ((v8 & 0x3F) == 0)
  {
    goto LABEL_20;
  }

  if (v8)
  {
    v14 = sub_12BFC9C(*(a1 + 48));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_24:
  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v2 += (v8 >> 3) & 2;
  if ((v8 & 0x20) != 0)
  {
    v9 = *(a1 + 72);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    v2 += v11;
  }

LABEL_20:
  v12 = *(a1 + 8);
  if (v12)
  {
    v15 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_12C0950(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_12E6E8C(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x3F) != 0)
  {
    if (v9)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      data = v3[2].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v13 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v13 = *v13;
        }

        data = sub_12D095C(v13);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_2769810;
      }

      result = sub_12BFD1C(data, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_26;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

LABEL_26:
    HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
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
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
LABEL_12:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
      goto LABEL_12;
    }

LABEL_28:
    v3[2].__r_.__value_.__s.__data_[20] = *(a2 + 68);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12C0ADC(void *a1)
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

void sub_12C0B50(void *a1)
{
  sub_12C0ADC(a1);

  operator delete();
}

uint64_t sub_12C0B88(uint64_t a1)
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

char *sub_12C0BAC(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_12C0D90(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12C0F40(uint64_t a1)
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

void *sub_12C0FF4(void *a1)
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

void sub_12C1068(void *a1)
{
  sub_12C0FF4(a1);

  operator delete();
}

uint64_t *sub_12C10A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12C10B0(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_12C1144(uint64_t a1)
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

std::string *sub_12C1170(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12C11A4(uint64_t a1)
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
  if (a1 != &off_2769898)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_12C0FF4(v6);
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

void sub_12C125C(uint64_t a1)
{
  sub_12C11A4(a1);

  operator delete();
}

uint64_t sub_12C1294(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    v2 = *(result + 24);
    v3 = *(v2 + 8);
    result = v2 + 8;
    if (v3)
    {
      result = sub_1957EA8(result);
    }
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

char *sub_12C12F8(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_12D0AEC(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_21F6A34(a3, v14, v6);
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

char *sub_12C143C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    v7 = *(v6 + 16);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_12C10B0(v6, v8, a3);
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

uint64_t sub_12C1548(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    v3 = *(v2 + 8);
    if (v3)
    {
      v9 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v4 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v4 < 0)
      {
        v4 = *(v9 + 16);
      }
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 16) = v4;
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

std::string *sub_12C15D0(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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

      result = sub_12D0AEC(v6);
      v3[1].__r_.__value_.__r.__words[0] = result;
      v4 = *(a2 + 24);
    }

    if (!v4)
    {
      v4 = &off_2769880;
    }

    v7 = v4[1];
    if (v7)
    {
      result = sub_1957EF4(&result->__r_.__value_.__l.__size_, (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  v8 = *(a2 + 8);
  if (v8)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12C16A4(uint64_t a1)
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
  if (a1 != &off_27698B8)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      sub_12C11A4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_12E6498((a1 + 72));
  sub_12E6414((a1 + 48));
  sub_12E6414((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12C1780(uint64_t a1)
{
  sub_12C16A4(a1);

  operator delete();
}

uint64_t sub_12C17B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12C0B88(v4);
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
      result = sub_12C0B88(v7);
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
      result = sub_12BFED8(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_12C1294(*(v1 + 96));
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

char *sub_12C1898(uint64_t a1, char *a2, int32x2_t *a3)
{
  v38 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v38, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v38 + 1;
    v7 = *v38;
    if (*v38 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v38, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v38 + 2;
      }
    }

    v38 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          v28 = v6 - 1;
          while (1)
          {
            v29 = (v28 + 1);
            v38 = v28 + 1;
            v30 = *(a1 + 88);
            if (v30 && (v31 = *(a1 + 80), v31 < *v30))
            {
              *(a1 + 80) = v31 + 1;
              v32 = *&v30[2 * v31 + 2];
            }

            else
            {
              v33 = sub_12D09D4(*(a1 + 72));
              v32 = sub_19593CC(a1 + 72, v33);
              v29 = v38;
            }

            v28 = sub_21F6B58(a3, v32, v29);
            v38 = v28;
            if (!v28)
            {
              return 0;
            }

            if (*a3 <= v28 || *v28 != 26)
            {
              goto LABEL_59;
            }
          }
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 1u;
        v18 = *(a1 + 96);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_12D0B64(v20);
          *(a1 + 96) = v18;
          v6 = v38;
        }

        v21 = sub_21F6BE8(a3, v18, v6);
        goto LABEL_58;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        v22 = v6 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          v38 = v22 + 1;
          v24 = *(a1 + 40);
          if (v24 && (v25 = *(a1 + 32), v25 < *v24))
          {
            *(a1 + 32) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = sub_12D0A74(*(a1 + 24));
            v26 = sub_19593CC(a1 + 24, v27);
            v23 = v38;
          }

          v22 = sub_21F6AC8(a3, v26, v23);
          v38 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_59;
          }
        }
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      v12 = v6 - 1;
      while (1)
      {
        v13 = (v12 + 1);
        v38 = v12 + 1;
        v14 = *(a1 + 64);
        if (v14 && (v15 = *(a1 + 56), v15 < *v14))
        {
          *(a1 + 56) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          v17 = sub_12D0A74(*(a1 + 48));
          v16 = sub_19593CC(a1 + 48, v17);
          v13 = v38;
        }

        v12 = sub_21F6AC8(a3, v16, v13);
        v38 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 18)
        {
          goto LABEL_59;
        }
      }
    }

    if (v7)
    {
      v34 = (v7 & 7) == 4;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v38;
      }

      return 0;
    }

    v35 = *(a1 + 8);
    if (v35)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v6 = v38;
    }

    v21 = sub_1952690(v7, v36, v6, a3);
LABEL_58:
    v38 = v21;
    if (!v21)
    {
      return 0;
    }

LABEL_59:
    ;
  }

  return v38;
}

char *sub_12C1BAC(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_12C0D90(v8, v10, a3);
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

      __dst = sub_12C0D90(v13, v15, a3);
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

      __dst = sub_12C03AC(v18, v20, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v21 = *(a1 + 96);
    *__dst = 34;
    v22 = *(v21 + 20);
    __dst[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, __dst + 1);
    }

    else
    {
      v23 = __dst + 2;
    }

    __dst = sub_12C143C(v21, v23, a3);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v27)
  {
    v29 = v27;
    memcpy(__dst, v28, v27);
    __dst += v29;
    return __dst;
  }

  return sub_1957130(a3, v28, v27, __dst);
}

uint64_t sub_12C1E5C(uint64_t a1)
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
      v7 = sub_12C0F40(v6);
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
      v14 = sub_12C0F40(v13);
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
      v21 = sub_12C07A4(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  if (*(a1 + 16))
  {
    v22 = sub_12C1548(*(a1 + 96));
    v16 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v16 += v26;
  }

  *(a1 + 20) = v16;
  return v16;
}

std::string *sub_12C1FD8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_12E6F18(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_12E6F18(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
    result = sub_12E6FA4(&v3[3], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  if (*(a2 + 16))
  {
    v19 = *(a2 + 96);
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

      data = sub_12D0B64(v22);
      v3[4].__r_.__value_.__r.__words[0] = data;
      v19 = *(a2 + 96);
    }

    if (v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = &off_2769898;
    }

    result = sub_12C15D0(data, v23);
  }

  v24 = *(a2 + 8);
  if (v24)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12C21B8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E651C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12C2238(void *a1)
{
  sub_12C21B8(a1);

  operator delete();
}

uint64_t sub_12C2270(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12C17B8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
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

char *sub_12C2300(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v23 = v7 + 1;
      v22 = *v7;
      if (v22 < 0)
      {
        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          v30 = sub_19587DC(v7, v22);
          if (!v30)
          {
            goto LABEL_52;
          }

          goto LABEL_36;
        }

        v23 = v7 + 2;
      }

      v30 = v23;
LABEL_36:
      if (v22 > 2)
      {
        sub_12E8578();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 52) = v22;
      }

      goto LABEL_42;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_41:
      v30 = v25;
      *(a1 + 48) = v26;
      v5 = 1;
      goto LABEL_42;
    }

    v28 = sub_1958770(v7, v26);
    v30 = v28;
    *(a1 + 48) = v29;
    v5 = 1;
    if (!v28)
    {
      goto LABEL_52;
    }

LABEL_42:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      v30 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_12D0BDC(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = v30;
      }

      v16 = sub_21F6C78(a3, v20, v17);
      v30 = v16;
      if (!v16)
      {
        goto LABEL_52;
      }

      if (*a3 <= v16 || *v16 != 18)
      {
        goto LABEL_42;
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
      v7 = v30;
    }

    v30 = sub_1952690(v8, v15, v7, a3);
    if (!v30)
    {
      goto LABEL_52;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_12C2594(uint64_t a1, char *__dst, _DWORD *a3)
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

      v6 = sub_12C1BAC(v13, v15, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 52);
    *v6 = 24;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v16 - 1) = v6 | 0x80;
          v6 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v6 + 2;
    }
  }

  else
  {
    v16 = v6;
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v16;
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

  if (*a3 - v16 >= v23)
  {
    v25 = v23;
    memcpy(v16, v24, v23);
    v16 += v25;
    return v16;
  }

  return sub_1957130(a3, v24, v23, v16);
}

uint64_t sub_12C27E0(uint64_t a1)
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
      v7 = sub_12C1E5C(v6);
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

    if ((v8 & 2) != 0)
    {
      v9 = *(a1 + 52);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v10;
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

std::string *sub_12C28F0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_12E7030(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12C29F4(void *a1)
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

void sub_12C2A68(void *a1)
{
  sub_12C29F4(a1);

  operator delete();
}

uint64_t sub_12C2AA0(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1F) != 0)
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

char *sub_12C2AC8(uint64_t a1, char *a2, int32x2_t *a3)
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
        v41 = v20;
        *(a1 + 26) = v19 != 0;
        goto LABEL_48;
      }

      v31 = sub_19587DC(v7, v19);
      v41 = v31;
      *(a1 + 26) = v32 != 0;
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
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_35:
        v41 = v23;
        *(a1 + 27) = v22 != 0;
        goto LABEL_48;
      }

      v33 = sub_19587DC(v7, v22);
      v41 = v33;
      *(a1 + 27) = v34 != 0;
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
        v41 = v13;
        *(a1 + 28) = v12 != 0;
        goto LABEL_48;
      }

      v37 = sub_19587DC(v7, v12);
      v41 = v37;
      *(a1 + 28) = v38 != 0;
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
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_40:
      v41 = v26;
      *(a1 + 24) = v25 != 0;
      goto LABEL_48;
    }

    v35 = sub_19587DC(v7, v25);
    v41 = v35;
    *(a1 + 24) = v36 != 0;
    if (!v35)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v41 = v17;
      *(a1 + 25) = v16 != 0;
      goto LABEL_48;
    }

    v39 = sub_19587DC(v7, v16);
    v41 = v39;
    *(a1 + 25) = v40 != 0;
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

char *sub_12C2E30(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
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

  v8 = *(a1 + 25);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
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

  v9 = *(a1 + 26);
  *v4 = 24;
  v4[1] = v9;
  v4 += 2;
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

  v10 = *(a1 + 27);
  *v4 = 32;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_19:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 28);
    *v4 = 40;
    v4[1] = v11;
    v4 += 2;
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

uint64_t sub_12C3004(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 2 * (v1 & 1) + (v1 & 2) + ((v1 >> 1) & 2) + ((v1 >> 2) & 2) + ((v1 >> 3) & 2);
  if ((*(a1 + 16) & 0x1F) == 0)
  {
    v2 = 0;
  }

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

std::string *sub_12C3070(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
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

  result[1].__r_.__value_.__s.__data_[1] = *(a2 + 25);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    result[1].__r_.__value_.__s.__data_[3] = *(a2 + 27);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  result[1].__r_.__value_.__s.__data_[2] = *(a2 + 26);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result[1].__r_.__value_.__s.__data_[4] = *(a2 + 28);
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

uint64_t sub_12C310C(uint64_t a1)
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

void sub_12C31AC(uint64_t a1)
{
  sub_12C310C(a1);

  operator delete();
}

uint64_t sub_12C31E4(uint64_t a1)
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

uint64_t sub_12C322C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_12C33F8(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_12C3540(uint64_t a1)
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

std::string *sub_12C35F4(std::string *result, uint64_t a2)
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
      v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v8 = *(a2 + 8);
  if (v8)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12C36C4(uint64_t a1)
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

  if (a1 != &off_2769948 && *(a1 + 24))
  {
    sub_16E4E08();
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

void sub_12C377C(uint64_t a1)
{
  sub_12C36C4(a1);

  operator delete();
}

unsigned __int8 *sub_12C37B4(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E4E44(*(result + 3));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 4) = 0;
    *(v1 + 5) = 0;
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

char *sub_12C381C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_36;
        }

        v5 |= 2u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v24 = v7 + 2;
LABEL_35:
          v35 = v24;
          *(a1 + 32) = v23;
          goto LABEL_44;
        }

        v33 = sub_19587DC(v7, v23);
        v35 = v33;
        *(a1 + 32) = v34;
        if (!v33)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_36;
        }

        v5 |= 8u;
        v16 = v7 + 1;
        v17 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v18 = *v16;
        v17 = v17 + (v18 << 7) - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v16 = v7 + 2;
LABEL_24:
          v35 = v16;
          *(a1 + 44) = v17;
          goto LABEL_44;
        }

        v29 = sub_1958770(v7, v17);
        v35 = v29;
        *(a1 + 44) = v30;
        if (!v29)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_44;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_36;
    }

    v5 |= 4u;
    v13 = v7 + 1;
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_17:
      v35 = v13;
      *(a1 + 40) = v14;
      goto LABEL_44;
    }

    v31 = sub_1958770(v7, v14);
    v35 = v31;
    *(a1 + 40) = v32;
    if (!v31)
    {
      goto LABEL_55;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
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
      v7 = v35;
    }

    v22 = sub_21F4D60(a3, v19, v7);
LABEL_43:
    v35 = v22;
    if (!v22)
    {
      goto LABEL_55;
    }

    goto LABEL_44;
  }

LABEL_36:
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

    v22 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_43;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

char *sub_12C3AC4(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 40);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 32);
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

    v19 = *(a1 + 44);
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
          LODWORD(v14) = v20 >> 7;
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

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v18;
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

  if (*a3 - v18 >= v25)
  {
    v27 = v25;
    memcpy(v18, v26, v25);
    v18 += v27;
    return v18;
  }

  return sub_1957130(a3, v26, v25, v18);
}

uint64_t sub_12C3D60(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_11;
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
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

  result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    result += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_12C3E70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        goto LABEL_21;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 44) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_21:
    *(a1 + 40) = *(a2 + 40);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12C3F68(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_12C3FA8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_12D1958(*(result + 24));
  }

  if ((v2 & 0x1E) != 0)
  {
    *(v1 + 37) = 0;
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

double sub_12C4014(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D0020;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = &qword_278E990;
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  return result;
}

uint64_t sub_12C4090(uint64_t a1)
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

  v5 = (a1 + 208);
  if (*(a1 + 208) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2769978)
  {
    v6 = *(a1 + 216);
    if (v6)
    {
      sub_12D1868(v6);
      operator delete();
    }

    v7 = *(a1 + 224);
    if (v7)
    {
      sub_12C310C(v7);
      operator delete();
    }

    if (*(a1 + 232))
    {
      sub_13197A8();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956AFC((a1 + 184));
  sub_12E67B0((a1 + 160));
  sub_12E672C((a1 + 136));
  sub_12E66A8((a1 + 112));
  sub_12E6624((a1 + 88));
  sub_12E65A0((a1 + 64));
  sub_1956ABC(a1 + 48);
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12C41F0(uint64_t a1)
{
  sub_12C4090(a1);

  operator delete();
}

uint64_t sub_12C4228(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v94 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v94, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v94 + 1);
    v9 = **v94;
    if (**v94 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v94, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v94 + 2);
      }
    }

    *v94 = v8;
    switch(v9 >> 3)
    {
      case 2u:
        if (v9 != 16)
        {
          goto LABEL_145;
        }

        v5 |= 0x20u;
        v14 = (v8 + 1);
        v13 = *v8;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = (v8 + 2);
LABEL_13:
          *v94 = v14;
          *(a1 + 248) = v13 != 0;
          goto LABEL_153;
        }

        v86 = sub_19587DC(v8, v13);
        *v94 = v86;
        *(a1 + 248) = v87 != 0;
        if (!v86)
        {
          goto LABEL_158;
        }

        goto LABEL_153;
      case 3u:
        if (v9 != 26)
        {
          goto LABEL_145;
        }

        *(a1 + 16) |= 2u;
        v64 = *(a1 + 216);
        if (!v64)
        {
          v65 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v65 = *v65;
          }

          v64 = sub_12E1948(v65);
          *(a1 + 216) = v64;
          v8 = *v94;
        }

        v27 = sub_21F6D08(a3, v64, v8);
        goto LABEL_152;
      case 4u:
        if (v9 != 34)
        {
          goto LABEL_145;
        }

        v46 = (v8 - 1);
        while (1)
        {
          v47 = (v46 + 1);
          *v94 = v46 + 1;
          v48 = *(a1 + 40);
          if (v48 && (v49 = *(a1 + 32), v49 < *v48))
          {
            *(a1 + 32) = v49 + 1;
            v50 = *&v48[2 * v49 + 2];
          }

          else
          {
            v51 = *(a1 + 24);
            if (!v51)
            {
              operator new();
            }

            *v53 = v52;
            v53[1] = sub_195A650;
            *v52 = 0;
            v52[1] = 0;
            v52[2] = 0;
            v50 = sub_19593CC(a1 + 24, v52);
            v47 = *v94;
          }

          v46 = sub_1958890(v50, v47, a3);
          *v94 = v46;
          if (!v46)
          {
            goto LABEL_158;
          }

          if (*a3 <= v46 || *v46 != 34)
          {
            goto LABEL_153;
          }
        }

      case 5u:
        if (v9 == 40)
        {
          v54 = (v8 - 1);
          while (1)
          {
            *v94 = v54 + 1;
            v55 = *(v54 + 1);
            v56 = (v54 + 2);
            if (v55 < 0)
            {
              v57 = *v56;
              v58 = (v57 << 7) + v55;
              LODWORD(v55) = v58 - 128;
              if (v57 < 0)
              {
                *v94 = sub_19587DC(v54 + 1, (v58 - 128));
                if (!*v94)
                {
                  goto LABEL_158;
                }

                LODWORD(v55) = v61;
                goto LABEL_78;
              }

              v56 = (v54 + 3);
            }

            *v94 = v56;
LABEL_78:
            if (v55 > 2)
            {
              sub_12E85B8();
            }

            else
            {
              v59 = *(a1 + 48);
              if (v59 == *(a1 + 52))
              {
                v60 = v59 + 1;
                sub_1958E5C((a1 + 48), v59 + 1);
                *(*(a1 + 56) + 4 * v59) = v55;
              }

              else
              {
                *(*(a1 + 56) + 4 * v59) = v55;
                v60 = v59 + 1;
              }

              *(a1 + 48) = v60;
            }

            v54 = *v94;
            if (*a3 <= *v94 || **v94 != 40)
            {
              goto LABEL_153;
            }
          }
        }

        if (v9 == 42)
        {
          *&v95 = a1 + 48;
          *(&v95 + 1) = sub_12B3C9C;
          v96 = a1 + 8;
          v97 = 5;
          v27 = sub_1216588(a3, v8, &v95);
LABEL_152:
          *v94 = v27;
          if (!v27)
          {
            goto LABEL_158;
          }

LABEL_153:
          if (sub_195ADC0(a3, v94, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_145:
        if (v9)
        {
          v92 = (v9 & 7) == 4;
        }

        else
        {
          v92 = 1;
        }

        if (!v92)
        {
          if (*v7)
          {
            v93 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v93 = sub_11F1920((a1 + 8));
            v8 = *v94;
          }

          v27 = sub_1952690(v9, v93, v8, a3);
          goto LABEL_152;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_158:
          *v94 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v94;
      case 6u:
        if (v9 != 50)
        {
          goto LABEL_145;
        }

        v28 = v8 - 1;
        while (1)
        {
          v29 = v28 + 1;
          *v94 = v28 + 1;
          v30 = *(a1 + 80);
          if (v30 && (v31 = *(a1 + 72), v31 < *v30))
          {
            *(a1 + 72) = v31 + 1;
            v32 = *&v30[2 * v31 + 2];
          }

          else
          {
            v33 = sub_12D0798(*(a1 + 64));
            v32 = sub_19593CC(a1 + 64, v33);
            v29 = *v94;
          }

          v28 = sub_21F6D98(a3, v32, v29);
          *v94 = v28;
          if (!v28)
          {
            goto LABEL_158;
          }

          if (*a3 <= v28 || *v28 != 50)
          {
            goto LABEL_153;
          }
        }

      case 7u:
        if (v9 != 58)
        {
          goto LABEL_145;
        }

        v66 = (v8 - 1);
        while (1)
        {
          v67 = (v66 + 1);
          *v94 = v66 + 1;
          v68 = *(a1 + 104);
          if (v68 && (v69 = *(a1 + 96), v69 < *v68))
          {
            *(a1 + 96) = v69 + 1;
            v70 = *&v68[2 * v69 + 2];
          }

          else
          {
            v71 = sub_12D0C8C(*(a1 + 88));
            v70 = sub_19593CC(a1 + 88, v71);
            v67 = *v94;
          }

          v66 = sub_21F6E28(a3, v70, v67);
          *v94 = v66;
          if (!v66)
          {
            goto LABEL_158;
          }

          if (*a3 <= v66 || *v66 != 58)
          {
            goto LABEL_153;
          }
        }

      case 8u:
        if (v9 != 64)
        {
          goto LABEL_145;
        }

        v5 |= 0x40u;
        v75 = (v8 + 1);
        v74 = *v8;
        if ((v74 & 0x8000000000000000) == 0)
        {
          goto LABEL_121;
        }

        v76 = *v75;
        v74 = (v76 << 7) + v74 - 128;
        if (v76 < 0)
        {
          v88 = sub_19587DC(v8, v74);
          *v94 = v88;
          *(a1 + 249) = v89 != 0;
          if (!v88)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v75 = (v8 + 2);
LABEL_121:
          *v94 = v75;
          *(a1 + 249) = v74 != 0;
        }

        goto LABEL_153;
      case 9u:
        if (v9 != 74)
        {
          goto LABEL_145;
        }

        *(a1 + 16) |= 4u;
        v62 = *(a1 + 224);
        if (!v62)
        {
          v63 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v63 = *v63;
          }

          v62 = sub_12D0DA4(v63);
          *(a1 + 224) = v62;
          v8 = *v94;
        }

        v27 = sub_21F6EB8(a3, v62, v8);
        goto LABEL_152;
      case 0xAu:
        if (v9 != 82)
        {
          goto LABEL_145;
        }

        v80 = (v8 - 1);
        while (1)
        {
          v81 = (v80 + 1);
          *v94 = v80 + 1;
          v82 = *(a1 + 128);
          if (v82 && (v83 = *(a1 + 120), v83 < *v82))
          {
            *(a1 + 120) = v83 + 1;
            v84 = *&v82[2 * v83 + 2];
          }

          else
          {
            sub_12D0E28(*(a1 + 112));
            v84 = sub_19593CC(a1 + 112, v85);
            v81 = *v94;
          }

          v80 = sub_21F6F48(a3, v84, v81);
          *v94 = v80;
          if (!v80)
          {
            goto LABEL_158;
          }

          if (*a3 <= v80 || *v80 != 82)
          {
            goto LABEL_153;
          }
        }

      case 0xBu:
        if (v9 != 90)
        {
          goto LABEL_145;
        }

        v40 = (v8 - 1);
        while (1)
        {
          v41 = (v40 + 1);
          *v94 = v40 + 1;
          v42 = *(a1 + 152);
          if (v42 && (v43 = *(a1 + 144), v43 < *v42))
          {
            *(a1 + 144) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = sub_12E260C(*(a1 + 136));
            v44 = sub_19593CC(a1 + 136, v45);
            v41 = *v94;
          }

          v40 = sub_21F6FD8(a3, v44, v41);
          *v94 = v40;
          if (!v40)
          {
            goto LABEL_158;
          }

          if (*a3 <= v40 || *v40 != 90)
          {
            goto LABEL_153;
          }
        }

      case 0xCu:
        if (v9 != 96)
        {
          goto LABEL_145;
        }

        v5 |= 0x10u;
        v78 = (v8 + 1);
        v77 = *v8;
        if ((v77 & 0x8000000000000000) == 0)
        {
          goto LABEL_126;
        }

        v79 = *v78;
        v77 = (v79 << 7) + v77 - 128;
        if (v79 < 0)
        {
          v90 = sub_19587DC(v8, v77);
          *v94 = v90;
          *(a1 + 240) = v91;
          if (!v90)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v78 = (v8 + 2);
LABEL_126:
          *v94 = v78;
          *(a1 + 240) = v77;
        }

        goto LABEL_153;
      case 0xDu:
        if (v9 != 106)
        {
          goto LABEL_145;
        }

        *(a1 + 16) |= 1u;
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v26 = sub_194DB04((a1 + 208), v25);
        v27 = sub_1958890(v26, *v94, a3);
        goto LABEL_152;
      case 0xEu:
        if (v9 != 114)
        {
          goto LABEL_145;
        }

        v34 = (v8 - 1);
        while (1)
        {
          v35 = (v34 + 1);
          *v94 = v34 + 1;
          v36 = *(a1 + 176);
          if (v36 && (v37 = *(a1 + 168), v37 < *v36))
          {
            *(a1 + 168) = v37 + 1;
            v38 = *&v36[2 * v37 + 2];
          }

          else
          {
            v39 = sub_12D0D28(*(a1 + 160));
            v38 = sub_19593CC(a1 + 160, v39);
            v35 = *v94;
          }

          v34 = sub_21F7068(a3, v38, v35);
          *v94 = v34;
          if (!v34)
          {
            goto LABEL_158;
          }

          if (*a3 <= v34 || *v34 != 114)
          {
            goto LABEL_153;
          }
        }

      case 0xFu:
        if (v9 != 122)
        {
          goto LABEL_145;
        }

        *(a1 + 16) |= 8u;
        v72 = *(a1 + 232);
        if (!v72)
        {
          v73 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v73 = *v73;
          }

          v72 = sub_131A21C(v73);
          *(a1 + 232) = v72;
          v8 = *v94;
        }

        v27 = sub_21F70F8(a3, v72, v8);
        goto LABEL_152;
      case 0x10u:
        if (v9 != 130)
        {
          goto LABEL_145;
        }

        v16 = (v8 - 2);
        while (1)
        {
          v17 = (v16 + 2);
          *v94 = v16 + 2;
          v18 = *(a1 + 200);
          if (v18 && (v19 = *(a1 + 192), v19 < *v18))
          {
            *(a1 + 192) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = *(a1 + 184);
            if (!v21)
            {
              operator new();
            }

            *v23 = v22;
            v23[1] = sub_195A650;
            *v22 = 0;
            v22[1] = 0;
            v22[2] = 0;
            v20 = sub_19593CC(a1 + 184, v22);
            v17 = *v94;
          }

          v16 = sub_1958890(v20, v17, a3);
          *v94 = v16;
          if (!v16)
          {
            goto LABEL_158;
          }

          if (*a3 <= v16 || *v16 != 386)
          {
            goto LABEL_153;
          }
        }

      default:
        goto LABEL_145;
    }
  }
}

char *sub_12C4BA8(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 248);
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 216);
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

    v4 = sub_12D1CFC(v8, v10, a3);
  }

  v11 = *(a1 + 32);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 40) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || (*a3 - v4 + 14) < v14)
      {
        v4 = sub_1957480(a3, 4, v13, v4);
      }

      else
      {
        *v4 = 34;
        v4[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = v4 + 2;
        memcpy(v4 + 2, v13, v14);
        v4 = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 48);
  if (v16 < 1)
  {
    v19 = v4;
  }

  else
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v18 = *(*(a1 + 56) + 4 * i);
      *v4 = 40;
      v4[1] = v18;
      if (v18 > 0x7F)
      {
        v4[1] = v18 | 0x80;
        v20 = v18 >> 7;
        v4[2] = v18 >> 7;
        v19 = v4 + 3;
        if (v18 >= 0x4000)
        {
          LOBYTE(v21) = v4[2];
          do
          {
            *(v19 - 1) = v21 | 0x80;
            v21 = v20 >> 7;
            *v19++ = v20 >> 7;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
        }
      }

      else
      {
        v19 = v4 + 2;
      }

      v4 = v19;
    }
  }

  v23 = *(a1 + 72);
  if (v23)
  {
    for (j = 0; j != v23; ++j)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v25 = *(*(a1 + 80) + 8 * j + 8);
      *v19 = 50;
      v26 = *(v25 + 20);
      v19[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, v19 + 1);
      }

      else
      {
        v27 = v19 + 2;
      }

      v19 = sub_12BD680(v25, v27, a3);
    }
  }

  v28 = *(a1 + 96);
  if (v28)
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v30 = *(*(a1 + 104) + 8 * k + 8);
      *v19 = 58;
      v31 = *(v30 + 20);
      v19[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v19 + 1);
      }

      else
      {
        v32 = v19 + 2;
      }

      v19 = sub_12C2594(v30, v32, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v33 = *(a1 + 249);
    *v19 = 64;
    v19[1] = v33;
    v19 += 2;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v34 = *(a1 + 224);
    *v19 = 74;
    v35 = *(v34 + 20);
    v19[1] = v35;
    if (v35 > 0x7F)
    {
      v36 = sub_19575D0(v35, v19 + 1);
    }

    else
    {
      v36 = v19 + 2;
    }

    v19 = sub_12C33F8(v34, v36, a3);
  }

  v37 = *(a1 + 120);
  if (v37)
  {
    for (m = 0; m != v37; ++m)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v39 = *(*(a1 + 128) + 8 * m + 8);
      *v19 = 82;
      v40 = *(v39 + 20);
      v19[1] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v19 + 1);
      }

      else
      {
        v41 = v19 + 2;
      }

      v19 = sub_12C3AC4(v39, v41, a3);
    }
  }

  v42 = *(a1 + 144);
  if (v42)
  {
    for (n = 0; n != v42; ++n)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v44 = *(*(a1 + 152) + 8 * n + 8);
      *v19 = 90;
      v45 = *(v44 + 60);
      v19[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v19 + 1);
      }

      else
      {
        v46 = v19 + 2;
      }

      v19 = sub_12DFF7C(v44, v46, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v48 = *(a1 + 240);
    *v19 = 96;
    v19[1] = v48;
    if (v48 > 0x7F)
    {
      v19[1] = v48 | 0x80;
      v49 = v48 >> 7;
      v19[2] = v48 >> 7;
      v47 = v19 + 3;
      if (v48 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v47 - 1) = v19 | 0x80;
          v19 = (v49 >> 7);
          *v47++ = v49 >> 7;
          v50 = v49 >> 14;
          v49 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v47 = v19 + 2;
    }
  }

  else
  {
    v47 = v19;
  }

  if (v6)
  {
    v47 = sub_128AEEC(a3, 13, *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL, v47);
  }

  v51 = *(a1 + 168);
  if (v51)
  {
    for (ii = 0; ii != v51; ++ii)
    {
      if (*a3 <= v47)
      {
        v47 = sub_225EB68(a3, v47);
      }

      v53 = *(*(a1 + 176) + 8 * ii + 8);
      *v47 = 114;
      v54 = *(v53 + 20);
      v47[1] = v54;
      if (v54 > 0x7F)
      {
        v55 = sub_19575D0(v54, v47 + 1);
      }

      else
      {
        v55 = v47 + 2;
      }

      v47 = sub_12C2E30(v53, v55, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v56 = *(a1 + 232);
    *v47 = 122;
    v57 = *(v56 + 88);
    v47[1] = v57;
    if (v57 > 0x7F)
    {
      v58 = sub_19575D0(v57, v47 + 1);
    }

    else
    {
      v58 = v47 + 2;
    }

    v47 = sub_1319B90(v56, v58, a3);
  }

  v59 = *(a1 + 192);
  if (v59 >= 1)
  {
    v60 = 8;
    do
    {
      v61 = *(*(a1 + 200) + v60);
      v62 = *(v61 + 23);
      if (v62 < 0 && (v62 = v61[1], v62 > 127) || (*a3 - v47 + 13) < v62)
      {
        v47 = sub_1957480(a3, 16, v61, v47);
      }

      else
      {
        *v47 = 386;
        v47[2] = v62;
        if (*(v61 + 23) < 0)
        {
          v61 = *v61;
        }

        v63 = v47 + 3;
        memcpy(v63, v61, v62);
        v47 = &v63[v62];
      }

      v60 += 8;
      --v59;
    }

    while (v59);
  }

  v64 = *(a1 + 8);
  if ((v64 & 1) == 0)
  {
    return v47;
  }

  v66 = v64 & 0xFFFFFFFFFFFFFFFCLL;
  v67 = *(v66 + 31);
  if (v67 < 0)
  {
    v68 = *(v66 + 8);
    v67 = *(v66 + 16);
  }

  else
  {
    v68 = (v66 + 8);
  }

  if ((*a3 - v47) >= v67)
  {
    v69 = v67;
    memcpy(v47, v68, v67);
    v47 += v69;
    return v47;
  }

  return sub_1957130(a3, v68, v67, v47);
}

uint64_t sub_12C5314(uint64_t a1)
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

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v10);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v12;
      ++v10;
    }

    while (v8 != v10);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a1 + 72);
  v14 = v4 + v8 + v9 + v13;
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = sub_12BE084(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 96);
  v21 = v14 + v20;
  v22 = *(a1 + 104);
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
      v26 = sub_12C27E0(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(a1 + 120);
  v28 = v21 + v27;
  v29 = *(a1 + 128);
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
      v33 = sub_12C3D60(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 144);
  v35 = v28 + v34;
  v36 = *(a1 + 152);
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
      v40 = sub_12E01AC(v39);
      v35 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6);
      v38 -= 8;
    }

    while (v38);
  }

  v41 = *(a1 + 168);
  v42 = v35 + v41;
  v43 = *(a1 + 176);
  if (v43)
  {
    v44 = (v43 + 8);
  }

  else
  {
    v44 = 0;
  }

  if (v41)
  {
    v45 = 8 * v41;
    do
    {
      v46 = *v44++;
      v47 = sub_12C3004(v46);
      v42 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6);
      v45 -= 8;
    }

    while (v45);
  }

  v48 = *(a1 + 192);
  v49 = v42 + 2 * v48;
  if (v48 >= 1)
  {
    v50 = (*(a1 + 200) + 8);
    do
    {
      v51 = *v50++;
      v52 = *(v51 + 23);
      v53 = *(v51 + 8);
      if ((v52 & 0x80u) == 0)
      {
        v53 = v52;
      }

      v49 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      --v48;
    }

    while (v48);
  }

  v54 = *(a1 + 16);
  if ((v54 & 0x7F) != 0)
  {
    if (v54)
    {
      v57 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
      v58 = *(v57 + 23);
      v59 = *(v57 + 8);
      if ((v58 & 0x80u) == 0)
      {
        v59 = v58;
      }

      v49 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v54 & 2) == 0)
      {
LABEL_54:
        if ((v54 & 4) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_65;
      }
    }

    else if ((v54 & 2) == 0)
    {
      goto LABEL_54;
    }

    v60 = sub_12D1FD0(*(a1 + 216));
    v49 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v54 & 4) == 0)
    {
LABEL_55:
      if ((v54 & 8) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_66;
    }

LABEL_65:
    v61 = sub_12C3540(*(a1 + 224));
    v49 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v54 & 8) == 0)
    {
LABEL_56:
      if ((v54 & 0x10) == 0)
      {
LABEL_58:
        v49 += ((v54 >> 5) & 2) + ((v54 >> 4) & 2);
        goto LABEL_59;
      }

LABEL_57:
      v49 += ((9 * (__clz(*(a1 + 240) | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_58;
    }

LABEL_66:
    v62 = sub_1319DEC(*(a1 + 232));
    v49 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v54 & 0x10) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_59:
  v55 = *(a1 + 8);
  if (v55)
  {
    v63 = v55 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = *((v55 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v64 < 0)
    {
      v64 = *(v63 + 16);
    }

    v49 += v64;
  }

  *(a1 + 20) = v49;
  return v49;
}

void sub_12C573C(uint64_t a1, uint64_t a2)
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

        v6 = sub_12E19C8(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2769D88;
      }

      sub_12D20FC(v6, v9);
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

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 36) = *(a2 + 36);
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
      *(a1 + 44) = *(a2 + 44);
      goto LABEL_8;
    }

LABEL_23:
    *(a1 + 40) = *(a2 + 40);
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

void sub_12C5844(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_12B578C(a1);

    sub_12B6490(a1, a2);
  }
}

uint64_t sub_12C5890(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_12D2200(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 sub_12C58C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  v10 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v10;
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  v13 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  *(a2 + 120) = v15;
  v16 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v16;
  v17 = *(a1 + 136);
  v18 = *(a1 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v17;
  *(a2 + 144) = v18;
  v19 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = v19;
  v20 = *(a1 + 160);
  v21 = *(a1 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v20;
  *(a2 + 168) = v21;
  v22 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v22;
  v23 = *(a1 + 184);
  v24 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v23;
  *(a2 + 192) = v24;
  v25 = *(a1 + 200);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = v25;
  v26 = *(a2 + 208);
  *(a2 + 208) = *(a1 + 208);
  *(a1 + 208) = v26;
  v27 = *(a1 + 216);
  v28 = *(a1 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v27;
  *(a2 + 224) = v28;
  v29 = *(a1 + 232);
  v30 = *(a1 + 240);
  result = *(a2 + 232);
  *(a1 + 232) = result;
  *(a2 + 232) = v29;
  *(a2 + 240) = v30;
  LOWORD(v29) = *(a1 + 248);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = v29;
  return result;
}

uint64_t sub_12C5A24(uint64_t a1)
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

  if (a1 != &off_2769A78)
  {
    if (*(a1 + 88))
    {
      sub_16E8374();
      operator delete();
    }

    if (*(a1 + 96))
    {
      sub_16E4E08();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 72);
  sub_1956ABC(a1 + 56);
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12C5B14(uint64_t a1)
{
  sub_12C5A24(a1);

  operator delete();
}

uint64_t sub_12C5B4C(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_16E48B0(*(result + 88));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_16E4E44(*(v1 + 96));
    }

    *(v1 + 104) = 2;
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

char *sub_12C5BD4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v58 = a2;
  if (sub_195ADC0(a3, &v58, a3[11].i32[1]))
  {
    return v58;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v58 + 1;
    v8 = *v58;
    if (*v58 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v58, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v58 + 2;
      }
    }

    v58 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v12 != 1)
    {
      if (v12 != 2)
      {
        if (v12 != 3)
        {
          goto LABEL_115;
        }

        if (v8 != 24)
        {
          if (v8 == 26)
          {
            *&v59 = a1 + 24;
            *(&v59 + 1) = sub_16E4BC0;
            v60 = a1 + 8;
            v55 = 3;
            goto LABEL_114;
          }

          goto LABEL_115;
        }

        v21 = v7 - 1;
        while (2)
        {
          v58 = v21 + 1;
          v22 = v21[1];
          v23 = v21 + 2;
          if (v22 < 0)
          {
            v24 = *v23;
            v25 = (v24 << 7) + v22;
            LODWORD(v22) = v25 - 128;
            if ((v24 & 0x80000000) == 0)
            {
              v23 = v21 + 3;
              goto LABEL_37;
            }

            v58 = sub_19587DC((v21 + 1), (v25 - 128));
            if (!v58)
            {
              return 0;
            }

            LODWORD(v22) = v28;
          }

          else
          {
LABEL_37:
            v58 = v23;
          }

          if (sub_16E4BC0(v22))
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

          else
          {
            sub_12E8578();
          }

          v21 = v58;
          if (*a3 <= v58 || *v58 != 24)
          {
            goto LABEL_123;
          }

          continue;
        }
      }

      if (v8 != 18)
      {
        goto LABEL_115;
      }

      *(a1 + 16) |= 1u;
      v52 = *(a1 + 88);
      if (!v52)
      {
        v53 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v6)
        {
          v53 = *v53;
        }

        v52 = sub_16F5BD8(v53);
        *(a1 + 88) = v52;
        v7 = v58;
      }

      v31 = sub_21F7188(a3, v52, v7);
LABEL_122:
      v58 = v31;
      if (!v31)
      {
        return 0;
      }

      goto LABEL_123;
    }

    if (v8 != 8)
    {
      goto LABEL_115;
    }

    v32 = v7 + 1;
    v33 = *v7;
    if (v33 < 0)
    {
      v34 = *v32;
      v35 = (v34 << 7) + v33;
      LODWORD(v33) = v35 - 128;
      if (v34 < 0)
      {
        v58 = sub_19587DC(v7, (v35 - 128));
        if (!v58)
        {
          return 0;
        }

        LODWORD(v33) = v54;
        goto LABEL_62;
      }

      v32 = v7 + 2;
    }

    v58 = v32;
LABEL_62:
    if (sub_152B67C(v33))
    {
      *(a1 + 16) |= 4u;
      *(a1 + 104) = v33;
    }

    else
    {
      sub_12E8450();
    }

LABEL_123:
    if (sub_195ADC0(a3, &v58, a3[11].i32[1]))
    {
      return v58;
    }
  }

  if (v8 >> 3 > 5)
  {
    if (v12 != 6)
    {
      if (v12 != 7 || v8 != 58)
      {
        goto LABEL_115;
      }

      *(a1 + 16) |= 2u;
      v29 = *(a1 + 96);
      if (!v29)
      {
        v30 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v6)
        {
          v30 = *v30;
        }

        v29 = sub_16F5828(v30);
        *(a1 + 96) = v29;
        v7 = v58;
      }

      v31 = sub_21F4D60(a3, v29, v7);
      goto LABEL_122;
    }

    if (v8 != 48)
    {
      if (v8 != 50)
      {
        goto LABEL_115;
      }

      *&v59 = a1 + 72;
      *(&v59 + 1) = sub_16E4BC0;
      v60 = a1 + 8;
      v55 = 6;
      goto LABEL_114;
    }

    v44 = v7 - 1;
    while (1)
    {
      v58 = v44 + 1;
      v45 = v44[1];
      v46 = v44 + 2;
      if (v45 < 0)
      {
        v47 = *v46;
        v48 = (v47 << 7) + v45;
        LODWORD(v45) = v48 - 128;
        if (v47 < 0)
        {
          v58 = sub_19587DC((v44 + 1), (v48 - 128));
          if (!v58)
          {
            return 0;
          }

          LODWORD(v45) = v51;
          goto LABEL_87;
        }

        v46 = v44 + 3;
      }

      v58 = v46;
LABEL_87:
      if (sub_16E4BC0(v45))
      {
        v49 = *(a1 + 72);
        if (v49 == *(a1 + 76))
        {
          v50 = v49 + 1;
          sub_1958E5C((a1 + 72), v49 + 1);
          *(*(a1 + 80) + 4 * v49) = v45;
        }

        else
        {
          *(*(a1 + 80) + 4 * v49) = v45;
          v50 = v49 + 1;
        }

        *(a1 + 72) = v50;
      }

      else
      {
        sub_12E84C8();
      }

      v44 = v58;
      if (*a3 <= v58 || *v58 != 48)
      {
        goto LABEL_123;
      }
    }
  }

  if (v12 == 4)
  {
    if (v8 == 32)
    {
      v36 = v7 - 1;
      while (1)
      {
        v58 = v36 + 1;
        v37 = v36[1];
        v38 = v36 + 2;
        if (v37 < 0)
        {
          v39 = *v38;
          v40 = (v39 << 7) + v37;
          LODWORD(v37) = v40 - 128;
          if (v39 < 0)
          {
            v58 = sub_19587DC((v36 + 1), (v40 - 128));
            if (!v58)
            {
              return 0;
            }

            LODWORD(v37) = v43;
            goto LABEL_70;
          }

          v38 = v36 + 3;
        }

        v58 = v38;
LABEL_70:
        if (sub_16E4BC0(v37))
        {
          v41 = *(a1 + 40);
          if (v41 == *(a1 + 44))
          {
            v42 = v41 + 1;
            sub_1958E5C((a1 + 40), v41 + 1);
            *(*(a1 + 48) + 4 * v41) = v37;
          }

          else
          {
            *(*(a1 + 48) + 4 * v41) = v37;
            v42 = v41 + 1;
          }

          *(a1 + 40) = v42;
        }

        else
        {
          sub_12E8500();
        }

        v36 = v58;
        if (*a3 <= v58 || *v58 != 32)
        {
          goto LABEL_123;
        }
      }
    }

    if (v8 != 34)
    {
      goto LABEL_115;
    }

    *&v59 = a1 + 40;
    *(&v59 + 1) = sub_16E4BC0;
    v60 = a1 + 8;
    v55 = 4;
LABEL_114:
    v61 = v55;
    v31 = sub_1216588(a3, v7, &v59);
    goto LABEL_122;
  }

  if (v12 == 5)
  {
    if (v8 == 40)
    {
      v13 = v7 - 1;
      while (1)
      {
        v58 = v13 + 1;
        v14 = v13[1];
        v15 = v13 + 2;
        if (v14 < 0)
        {
          v16 = *v15;
          v17 = (v16 << 7) + v14;
          LODWORD(v14) = v17 - 128;
          if (v16 < 0)
          {
            v58 = sub_19587DC((v13 + 1), (v17 - 128));
            if (!v58)
            {
              return 0;
            }

            LODWORD(v14) = v20;
            goto LABEL_18;
          }

          v15 = v13 + 3;
        }

        v58 = v15;
LABEL_18:
        if (sub_16E4BC0(v14))
        {
          v18 = *(a1 + 56);
          if (v18 == *(a1 + 60))
          {
            v19 = v18 + 1;
            sub_1958E5C((a1 + 56), v18 + 1);
            *(*(a1 + 64) + 4 * v18) = v14;
          }

          else
          {
            *(*(a1 + 64) + 4 * v18) = v14;
            v19 = v18 + 1;
          }

          *(a1 + 56) = v19;
        }

        else
        {
          sub_12E85B8();
        }

        v13 = v58;
        if (*a3 <= v58 || *v58 != 40)
        {
          goto LABEL_123;
        }
      }
    }

    if (v8 == 42)
    {
      *&v59 = a1 + 56;
      *(&v59 + 1) = sub_16E4BC0;
      v60 = a1 + 8;
      v55 = 5;
      goto LABEL_114;
    }
  }

LABEL_115:
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
    if (*v6)
    {
      v57 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v57 = sub_11F1920((a1 + 8));
      v7 = v58;
    }

    v31 = sub_1952690(v8, v57, v7, a3);
    goto LABEL_122;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return v58;
}

char *sub_12C626C(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 104);
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 88);
    *v6 = 18;
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

    v6 = sub_16E886C(v11, v13, a3);
  }

  v14 = *(a1 + 24);
  if (v14 < 1)
  {
    v17 = v6;
  }

  else
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v16 = *(*(a1 + 32) + 4 * i);
      *v6 = 24;
      v6[1] = v16;
      if (v16 > 0x7F)
      {
        v6[1] = v16 | 0x80;
        v18 = v16 >> 7;
        v6[2] = v16 >> 7;
        v17 = v6 + 3;
        if (v16 >= 0x4000)
        {
          LOBYTE(v6) = v6[2];
          do
          {
            *(v17 - 1) = v6 | 0x80;
            v6 = (v18 >> 7);
            *v17++ = v18 >> 7;
            v19 = v18 >> 14;
            v18 >>= 7;
          }

          while (v19);
        }
      }

      else
      {
        v17 = v6 + 2;
      }

      v6 = v17;
    }
  }

  v20 = *(a1 + 40);
  if (v20 < 1)
  {
    v23 = v17;
  }

  else
  {
    for (j = 0; j != v20; ++j)
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v22 = *(*(a1 + 48) + 4 * j);
      *v17 = 32;
      v17[1] = v22;
      if (v22 > 0x7F)
      {
        v17[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v17[2] = v22 >> 7;
        v23 = v17 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v17) = v17[2];
          do
          {
            *(v23 - 1) = v17 | 0x80;
            v17 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v17 + 2;
      }

      v17 = v23;
    }
  }

  v26 = *(a1 + 56);
  if (v26 < 1)
  {
    v29 = v23;
  }

  else
  {
    for (k = 0; k != v26; ++k)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v28 = *(*(a1 + 64) + 4 * k);
      *v23 = 40;
      v23[1] = v28;
      if (v28 > 0x7F)
      {
        v23[1] = v28 | 0x80;
        v30 = v28 >> 7;
        v23[2] = v28 >> 7;
        v29 = v23 + 3;
        if (v28 >= 0x4000)
        {
          LOBYTE(v31) = v23[2];
          do
          {
            *(v29 - 1) = v31 | 0x80;
            v31 = v30 >> 7;
            *v29++ = v30 >> 7;
            v32 = v30 >> 14;
            v30 >>= 7;
          }

          while (v32);
        }
      }

      else
      {
        v29 = v23 + 2;
      }

      v23 = v29;
    }
  }

  v33 = *(a1 + 72);
  if (v33 < 1)
  {
    v36 = v29;
  }

  else
  {
    for (m = 0; m != v33; ++m)
    {
      if (*a3 <= v29)
      {
        v29 = sub_225EB68(a3, v29);
      }

      v35 = *(*(a1 + 80) + 4 * m);
      *v29 = 48;
      v29[1] = v35;
      if (v35 > 0x7F)
      {
        v29[1] = v35 | 0x80;
        v37 = v35 >> 7;
        v29[2] = v35 >> 7;
        v36 = v29 + 3;
        if (v35 >= 0x4000)
        {
          LOBYTE(v29) = v29[2];
          do
          {
            *(v36 - 1) = v29 | 0x80;
            v29 = (v37 >> 7);
            *v36++ = v37 >> 7;
            v38 = v37 >> 14;
            v37 >>= 7;
          }

          while (v38);
        }
      }

      else
      {
        v36 = v29 + 2;
      }

      v29 = v36;
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v39 = *(a1 + 96);
    *v36 = 58;
    v40 = *(v39 + 44);
    v36[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v36 + 1);
    }

    else
    {
      v41 = v36 + 2;
    }

    v36 = sub_16E5070(v39, v41, a3);
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v36;
  }

  v44 = v42 & 0xFFFFFFFFFFFFFFFCLL;
  v45 = *(v44 + 31);
  if (v45 < 0)
  {
    v46 = *(v44 + 8);
    v45 = *(v44 + 16);
  }

  else
  {
    v46 = (v44 + 8);
  }

  if (*a3 - v36 >= v45)
  {
    v47 = v45;
    memcpy(v36, v46, v45);
    v36 += v47;
    return v36;
  }

  return sub_1957130(a3, v46, v45, v36);
}

uint64_t sub_12C6710(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v4);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v6;
      ++v4;
    }

    while (v2 != v4);
  }

  else
  {
    v3 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 48) + 4 * v8);
      if (v10 < 0)
      {
        v11 = 10;
      }

      else
      {
        v11 = (9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v11;
      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(*(a1 + 64) + 4 * v13);
      if (v15 < 0)
      {
        v16 = 10;
      }

      else
      {
        v16 = (9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6;
      }

      v14 += v16;
      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*(a1 + 80) + 4 * v18);
      if (v20 < 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = (9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6;
      }

      v19 += v21;
      ++v18;
    }

    while (v17 != v18);
  }

  else
  {
    v19 = 0;
  }

  v22 = v3 + v2 + v7 + v9 + v12 + v14 + v17 + v19;
  v23 = *(a1 + 16);
  if ((v23 & 7) == 0)
  {
    goto LABEL_44;
  }

  if (v23)
  {
    v24 = sub_16E8DA4(*(a1 + 88));
    v22 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_36:
      if ((v23 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_36;
  }

  v25 = sub_16E51F0(*(a1 + 96));
  v22 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
    goto LABEL_44;
  }

LABEL_40:
  v26 = *(a1 + 104);
  if (v26 < 0)
  {
    v27 = 11;
  }

  else
  {
    v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v22 += v27;
LABEL_44:
  v28 = *(a1 + 8);
  if (v28)
  {
    v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v31 < 0)
    {
      v31 = *(v30 + 16);
    }

    v22 += v31;
  }

  *(a1 + 20) = v22;
  return v22;
}

void sub_12C697C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1958E5C((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
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

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(a1 + 56);
    sub_1958E5C((a1 + 56), v12 + v11);
    v13 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy((v13 + 4 * v12), *(a2 + 64), 4 * *(a2 + 56));
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v15 + v14);
    v16 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v16 + 4 * v15), *(a2 + 80), 4 * *(a2 + 72));
  }

  v17 = *(a2 + 16);
  if ((v17 & 7) != 0)
  {
    if (v17)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 88);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_16F5BD8(v21);
        *(a1 + 88) = v19;
      }

      if (*(a2 + 88))
      {
        v22 = *(a2 + 88);
      }

      else
      {
        v22 = &off_277E738;
      }

      sub_16E4964(v19, v22);
      if ((v17 & 2) == 0)
      {
LABEL_12:
        if ((v17 & 4) == 0)
        {
LABEL_14:
          *(a1 + 16) |= v17;
          goto LABEL_15;
        }

LABEL_13:
        *(a1 + 104) = *(a2 + 104);
        goto LABEL_14;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 2u;
    v23 = *(a1 + 96);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F5828(v25);
      *(a1 + 96) = v23;
    }

    if (*(a2 + 96))
    {
      v26 = *(a2 + 96);
    }

    else
    {
      v26 = &off_277E5E8;
    }

    sub_16E527C(v23, v26);
    if ((v17 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12C6BB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E4B4C(*(a1 + 88));
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

  result = sub_16E5370(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_12C6C10(void *a1)
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

void sub_12C6C84(void *a1)
{
  sub_12C6C10(a1);

  operator delete();
}

uint64_t sub_12C6CBC(uint64_t a1)
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

char *sub_12C6CE0(uint64_t a1, char *a2, int32x2_t *a3)
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
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18 != 0;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
    v25 = v23;
    *(a1 + 24) = v24 != 0;
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