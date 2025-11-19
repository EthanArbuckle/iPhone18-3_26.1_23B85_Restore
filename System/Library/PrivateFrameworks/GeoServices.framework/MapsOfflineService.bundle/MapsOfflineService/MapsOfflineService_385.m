void sub_15BE594(void *a1)
{
  sub_15BE41C(a1);

  operator delete();
}

uint64_t sub_15BE5CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_33;
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
        goto LABEL_14;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v5 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_26:
    v7 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v4 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_22:
  v6 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_26;
    }
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_30:
  result = sub_15BDB60(*(result + 64));
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  v8 = *(v1 + 72);
  v9 = *(v8 + 8);
  result = v8 + 8;
  *(result + 8) = 0;
  if (v9)
  {
    result = sub_1957EA8(result);
  }

LABEL_33:
  *(v1 + 80) = 0;
  if ((v2 & 0x700) != 0)
  {
    *(v1 + 86) = 0;
    *(v1 + 84) = 0;
  }

  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_15BE768(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v51, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v51 + 1);
    v8 = **v51;
    if (**v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v51 + 2);
      }
    }

    *v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 <= 8)
    {
      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x20u;
        v35 = *(a1 + 64);
        if (!v35)
        {
          v36 = *(a1 + 8);
          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v37 = *v37;
          }

          v35 = sub_15BE378(v37);
          *(a1 + 64) = v35;
          v7 = *v51;
        }

        v30 = sub_222184C(a3, v35, v7);
      }

      else
      {
        if (v11 != 7)
        {
          if (v11 != 8 || v8 != 64)
          {
            goto LABEL_80;
          }

          v5 |= 0x200u;
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
            *v51 = v13;
            *(a1 + 85) = v12 != 0;
            goto LABEL_78;
          }

          v49 = sub_19587DC(v7, v12);
          *v51 = v49;
          *(a1 + 85) = v50 != 0;
          if (!v49)
          {
            goto LABEL_98;
          }

          goto LABEL_78;
        }

        if (v8 != 58)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x40u;
        v27 = *(a1 + 72);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_15BE1A4(v29);
          *(a1 + 72) = v27;
          v7 = *v51;
        }

        v30 = sub_21FF9C0(a3, v27, v7);
      }

LABEL_77:
      *v51 = v30;
      if (!v30)
      {
        goto LABEL_98;
      }

      goto LABEL_78;
    }

    if (v11 == 9)
    {
      if (v8 != 74)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 8u;
      v38 = *(a1 + 8);
      v19 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v19 = *v19;
      }

      v20 = (a1 + 48);
      goto LABEL_76;
    }

    if (v11 != 10)
    {
      if (v11 != 11 || v8 != 90)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 0x10u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v20 = (a1 + 56);
      goto LABEL_76;
    }

    if (v8 != 80)
    {
      goto LABEL_80;
    }

    v5 |= 0x400u;
    v32 = (v7 + 1);
    v31 = *v7;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_61;
    }

    v33 = *v32;
    v31 = (v33 << 7) + v31 - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v32 = (v7 + 2);
LABEL_61:
      *v51 = v32;
      *(a1 + 86) = v31 != 0;
      goto LABEL_78;
    }

    v45 = sub_19587DC(v7, v31);
    *v51 = v45;
    *(a1 + 86) = v46 != 0;
    if (!v45)
    {
      goto LABEL_98;
    }

LABEL_78:
    if (sub_195ADC0(a3, v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 2)
  {
    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 2u;
      v34 = *(a1 + 8);
      v19 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v19 = *v19;
      }

      v20 = (a1 + 32);
      goto LABEL_76;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_80;
      }

      *(a1 + 16) |= 4u;
      v26 = *(a1 + 8);
      v19 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v19 = *v19;
      }

      v20 = (a1 + 40);
      goto LABEL_76;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_80;
    }

    v5 |= 0x80u;
    v15 = (v7 + 1);
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = (v7 + 2);
LABEL_25:
      *v51 = v15;
      *(a1 + 80) = v16;
      goto LABEL_78;
    }

    v47 = sub_1958770(v7, v16);
    *v51 = v47;
    *(a1 + 80) = v48;
    if (!v47)
    {
      goto LABEL_98;
    }

    goto LABEL_78;
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_80;
    }

    v5 |= 0x100u;
    v24 = (v7 + 1);
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = (v7 + 2);
LABEL_46:
      *v51 = v24;
      *(a1 + 84) = v23 != 0;
      goto LABEL_78;
    }

    v43 = sub_19587DC(v7, v23);
    *v51 = v43;
    *(a1 + 84) = v44 != 0;
    if (!v43)
    {
      goto LABEL_98;
    }

    goto LABEL_78;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v22 = *(a1 + 8);
    v19 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v19 = *v19;
    }

    v20 = (a1 + 24);
LABEL_76:
    v39 = sub_194DB04(v20, v19);
    v30 = sub_1958890(v39, *v51, a3);
    goto LABEL_77;
  }

LABEL_80:
  if (v8)
  {
    v40 = (v8 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = *(a1 + 8);
    if (v41)
    {
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v7 = *v51;
    }

    v30 = sub_1952690(v8, v42, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_98:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_15BEC48(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 84);
    *v4 = 8;
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    v4 = sub_128AEEC(a3, 4, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v6 & 0x80) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_20;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 80);
  *v4 = 40;
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

LABEL_20:
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 64);
    *v7 = 50;
    v16 = *(v15 + 20);
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v7 + 1);
    }

    else
    {
      v17 = v7 + 2;
    }

    v7 = sub_15BDDE8(v15, v17, a3);
    if ((v6 & 0x40) == 0)
    {
LABEL_22:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_22;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v18 = *(a1 + 72);
  *v7 = 58;
  v19 = *(v18 + 32);
  v7[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v7 + 1);
  }

  else
  {
    v20 = v7 + 2;
  }

  v7 = sub_15BBE78(v18, v20, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_23:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v21 = *(a1 + 85);
  *v7 = 64;
  v7[1] = v21;
  v7 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_24:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  v7 = sub_128AEEC(a3, 9, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v7);
  if ((v6 & 0x400) == 0)
  {
LABEL_25:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_45:
  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v22 = *(a1 + 86);
  *v7 = 80;
  v7[1] = v22;
  v7 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_26:
    v7 = sub_128AEEC(a3, 11, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

LABEL_27:
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v7;
  }

  v23 = v13 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v7) >= v24)
  {
    v26 = v24;
    memcpy(v7, v25, v24);
    v7 += v26;
    return v7;
  }

  return sub_1957130(a3, v25, v24, v7);
}

uint64_t sub_15BEFB0(uint64_t a1)
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
    v12 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v15 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_30:
  v18 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v21 = sub_15BDF4C(*(a1 + 64));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  v22 = sub_15BBFC8(*(a1 + 72));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0x700) != 0)
  {
    result = v3 + ((v2 >> 8) & 2) + ((v2 >> 7) & 2) + ((v2 >> 9) & 2);
  }

  else
  {
    result = v3;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v23 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    result += v24;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_15BF23C(std::string *result, uint64_t a2)
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

        goto LABEL_28;
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

      goto LABEL_31;
    }

LABEL_28:
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

      goto LABEL_34;
    }

LABEL_31:
    v15 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v16 = v3->__r_.__value_.__l.__size_;
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    result = sub_194EA1C(&v3[2], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_34:
    v18 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v19 = v3->__r_.__value_.__l.__size_;
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }

LABEL_37:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v21 = v3[2].__r_.__value_.__r.__words[2];
    if (!v21)
    {
      v22 = v3->__r_.__value_.__l.__size_;
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_15BE378(v23);
      v3[2].__r_.__value_.__r.__words[2] = v21;
    }

    if (*(a2 + 64))
    {
      v24 = *(a2 + 64);
    }

    else
    {
      v24 = &off_2778C80;
    }

    result = sub_15BE03C(v21, v24);
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
      LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_45:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
    data = v3[3].__r_.__value_.__l.__data_;
    if (!data)
    {
      v26 = v3->__r_.__value_.__l.__size_;
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      data = sub_15BE1A4(v27);
      v3[3].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 72))
    {
      v28 = *(a2 + 72);
    }

    else
    {
      v28 = &off_2778BD8;
    }

    result = sub_12EE670(data, v28);
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

LABEL_55:
    v3[3].__r_.__value_.__s.__data_[13] = *(a2 + 85);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v3[3].__r_.__value_.__s.__data_[12] = *(a2 + 84);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_55;
  }

LABEL_15:
  if ((v4 & 0x400) != 0)
  {
LABEL_16:
    v3[3].__r_.__value_.__s.__data_[14] = *(a2 + 86);
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

uint64_t sub_15BF4C0(uint64_t a1)
{
  if ((*(a1 + 16) & 0x20) == 0)
  {
    return 1;
  }

  result = sub_15BE138(*(a1 + 64) + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_15BF504(uint64_t a1)
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

void sub_15BF5A4(uint64_t a1)
{
  sub_15BF504(a1);

  operator delete();
}

uint64_t sub_15BF5DC(uint64_t a1)
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

uint64_t sub_15BF624(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].i32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].i32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 17)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 2;
    goto LABEL_24;
  }

LABEL_11:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_15BF7B0(uint64_t a1, char *__dst, void *a3)
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
    *v4 = 17;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if (*a3 - v4 >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_15BF8B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
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

  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_15BF960(uint64_t a1)
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15BFA2C(uint64_t a1)
{
  sub_15BF960(a1);

  operator delete();
}

uint64_t sub_15BFA64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_17;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  *v3 = 0;
  *(v3 + 23) = 0;
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15BFB1C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v23 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v23, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v23 + 1);
    v7 = **v23;
    if (**v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v23 + 2);
      }
    }

    *v23 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 8);
        v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v17 = *v17;
        }

        v18 = (a1 + 40);
        goto LABEL_31;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_31;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 8);
      v17 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
LABEL_31:
      v21 = sub_194DB04(v18, v17);
      v15 = sub_1958890(v21, *v23, a3);
      goto LABEL_32;
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
        return *v23;
      }

LABEL_38:
      *v23 = 0;
      return *v23;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v23;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_32:
    *v23 = v15;
    if (!v15)
    {
      goto LABEL_38;
    }
  }

  return *v23;
}

char *sub_15BFCD8(uint64_t a1, char *__dst, void *a3)
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
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_5:
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

uint64_t sub_15BFDEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (v1)
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
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
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
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

void *sub_15BFF1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F43F8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[8] = 0;
  result[9] = 0;
  result[7] = &qword_278E990;
  *(result + 79) = 0;
  return result;
}

void *sub_15BFFB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F4478;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_15C0034(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F44F8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_15C00BC(uint64_t a1)
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

void sub_15C0174(uint64_t a1)
{
  sub_15C00BC(a1);

  operator delete();
}

uint64_t sub_15C01AC(uint64_t a1)
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

uint64_t sub_15C0234(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_36;
        }

        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
LABEL_28:
        v20 = sub_194DB04(v18, v17);
        v21 = sub_1958890(v20, *v32, a3);
LABEL_43:
        *v32 = v21;
        if (!v21)
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }

      if (v8 != 24)
      {
        goto LABEL_36;
      }

      v22 = v7 + 1;
      v23 = *v7;
      if (v23 < 0)
      {
        v24 = *v22;
        v25 = (v24 << 7) + v23;
        LODWORD(v23) = v25 - 128;
        if (v24 < 0)
        {
          *v32 = sub_19587DC(v7, (v25 - 128));
          if (!*v32)
          {
            goto LABEL_54;
          }

          LODWORD(v23) = v31;
          goto LABEL_34;
        }

        v22 = v7 + 2;
      }

      *v32 = v22;
LABEL_34:
      if (sub_13560D8(v23))
      {
        *(a1 + 16) |= 8u;
        *(a1 + 44) = v23;
      }

      else
      {
        sub_12E8578();
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
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      *v32 = v14;
      *(a1 + 40) = v13 != 0;
      goto LABEL_44;
    }

    v29 = sub_19587DC(v7, v13);
    *v32 = v29;
    *(a1 + 40) = v30 != 0;
    if (!v29)
    {
      goto LABEL_54;
    }

LABEL_44:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
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
    goto LABEL_28;
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
      v7 = *v32;
    }

    v21 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_43;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_15C04E0(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 40);
    *v4 = 16;
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 8) == 0)
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

  v9 = *(a1 + 44);
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
  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

uint64_t sub_15C068C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 1) & 2);
}

uint64_t sub_15C06E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 5) != 0)
  {
    result = sub_15C068C(a1);
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  result = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 3;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    result += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 8) != 0)
  {
    v10 = *(a1 + 44);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v11;
  }

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

uint64_t sub_15C0828(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956AFC((a1 + 48));
  sub_15D6E08((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15C08F4(uint64_t a1)
{
  sub_15C0828(a1);

  operator delete();
}

uint64_t sub_15C092C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_15C01AC(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 16);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v6 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v7 = 0;
      *(v7 + 23) = 0;
    }

    if ((v6 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v8 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_15:
  if ((v6 & 0x1C) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_15C0A2C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v51 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v51, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v51 + 1);
    v8 = **v51;
    if (**v51 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v51, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v51 + 2);
      }
    }

    *v51 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 != 6)
      {
        if (v11 == 7 && v8 == 58)
        {
          v20 = v7 - 1;
          while (1)
          {
            v21 = (v20 + 1);
            *v51 = v20 + 1;
            v22 = *(a1 + 64);
            if (v22 && (v23 = *(a1 + 56), v23 < *v22))
            {
              *(a1 + 56) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = *(a1 + 48);
              if (!v25)
              {
                operator new();
              }

              *v27 = v26;
              v27[1] = sub_195A650;
              *v26 = 0;
              v26[1] = 0;
              v26[2] = 0;
              v24 = sub_19593CC(a1 + 48, v26);
              v21 = *v51;
            }

            v20 = sub_1958890(v24, v21, a3);
            *v51 = v20;
            if (!v20)
            {
              goto LABEL_87;
            }

            if (*a3 <= v20 || *v20 != 58)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_67;
      }

      if (v8 != 50)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 2u;
      v37 = *(a1 + 8);
      v13 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v13 = *v13;
      }

      v14 = (a1 + 80);
      goto LABEL_61;
    }

    if (v11 != 4)
    {
      if (v11 != 5 || v8 != 42)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 72);
LABEL_61:
      v38 = sub_194DB04(v14, v13);
      v39 = sub_1958890(v38, *v51, a3);
      goto LABEL_74;
    }

    if (v8 != 32)
    {
      goto LABEL_67;
    }

    v5 |= 0x10u;
    v34 = v7 + 1;
    v35 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    v36 = *v34;
    v35 = v35 + (v36 << 7) - 128;
    if ((v36 & 0x80000000) == 0)
    {
      v34 = v7 + 2;
LABEL_56:
      *v51 = v34;
      *(a1 + 96) = v35;
      goto LABEL_75;
    }

    v46 = sub_1958770(v7, v35);
    *v51 = v46;
    *(a1 + 96) = v47;
    if (!v46)
    {
      goto LABEL_87;
    }

LABEL_75:
    if (sub_195ADC0(a3, v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 10)
    {
      v28 = v7 - 1;
      while (1)
      {
        v29 = v28 + 1;
        *v51 = v28 + 1;
        v30 = *(a1 + 40);
        if (v30 && (v31 = *(a1 + 32), v31 < *v30))
        {
          *(a1 + 32) = v31 + 1;
          v32 = *&v30[2 * v31 + 2];
        }

        else
        {
          v33 = sub_15D44EC(*(a1 + 24));
          v32 = sub_19593CC(a1 + 24, v33);
          v29 = *v51;
        }

        v28 = sub_22218DC(a3, v32, v29);
        *v51 = v28;
        if (!v28)
        {
          goto LABEL_87;
        }

        if (*a3 <= v28 || *v28 != 10)
        {
          goto LABEL_75;
        }
      }
    }

    goto LABEL_67;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_67;
    }

    v5 |= 4u;
    v41 = v7 + 1;
    v40 = *v7;
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_66;
    }

    v42 = *v41;
    v40 = (v42 << 7) + v40 - 128;
    if ((v42 & 0x80000000) == 0)
    {
      v41 = v7 + 2;
LABEL_66:
      *v51 = v41;
      *(a1 + 88) = v40 != 0;
      goto LABEL_75;
    }

    v49 = sub_19587DC(v7, v40);
    *v51 = v49;
    *(a1 + 88) = v50 != 0;
    if (!v49)
    {
      goto LABEL_87;
    }

    goto LABEL_75;
  }

  if (v11 == 3 && v8 == 24)
  {
    v16 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v19 = (v18 << 7) + v17;
    LODWORD(v17) = v19 - 128;
    if (v18 < 0)
    {
      *v51 = sub_19587DC(v7, (v19 - 128));
      if (!*v51)
      {
        goto LABEL_87;
      }

      LODWORD(v17) = v48;
    }

    else
    {
      v16 = v7 + 2;
LABEL_25:
      *v51 = v16;
    }

    if (sub_13560D8(v17))
    {
      *(a1 + 16) |= 8u;
      *(a1 + 92) = v17;
    }

    else
    {
      sub_12E8578();
    }

    goto LABEL_75;
  }

LABEL_67:
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
      v7 = *v51;
    }

    v39 = sub_1952690(v8, v45, v7, a3);
LABEL_74:
    *v51 = v39;
    if (!v39)
    {
      goto LABEL_87;
    }

    goto LABEL_75;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_87:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_15C0EC4(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_15C04E0(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 88);
    *__dst = 16;
    __dst[1] = v12;
    __dst += 2;
  }

  if ((v11 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v14 = *(a1 + 92);
    *__dst = 24;
    __dst[1] = v14;
    if (v14 > 0x7F)
    {
      __dst[1] = v14 | 0x80;
      v15 = v14 >> 7;
      __dst[2] = v14 >> 7;
      v13 = __dst + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v13 - 1) = __dst | 0x80;
          __dst = (v15 >> 7);
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = __dst + 2;
    }
  }

  else
  {
    v13 = __dst;
  }

  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v18 = *(a1 + 96);
    *v13 = 32;
    v13[1] = v18;
    if (v18 > 0x7F)
    {
      v13[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v13[2] = v18 >> 7;
      v17 = v13 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v13) = v13[2];
        do
        {
          *(v17 - 1) = v13 | 0x80;
          LODWORD(v13) = v19 >> 7;
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v13 + 2;
    }
  }

  else
  {
    v17 = v13;
  }

  if (v11)
  {
    v17 = sub_128AEEC(a3, 5, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v17);
  }

  if ((v11 & 2) != 0)
  {
    v17 = sub_128AEEC(a3, 6, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v17);
  }

  v21 = *(a1 + 56);
  if (v21 >= 1)
  {
    v22 = 8;
    do
    {
      v23 = *(*(a1 + 64) + v22);
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = v23[1], v24 > 127) || *a3 - v17 + 14 < v24)
      {
        v17 = sub_1957480(a3, 7, v23, v17);
      }

      else
      {
        *v17 = 58;
        v17[1] = v24;
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v25 = v17 + 2;
        memcpy(v25, v23, v24);
        v17 = &v25[v24];
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v17;
  }

  v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = *(v28 + 31);
  if (v29 < 0)
  {
    v30 = *(v28 + 8);
    v29 = *(v28 + 16);
  }

  else
  {
    v30 = (v28 + 8);
  }

  if (*a3 - v17 >= v29)
  {
    v31 = v29;
    memcpy(v17, v30, v29);
    v17 += v31;
    return v17;
  }

  return sub_1957130(a3, v30, v29, v17);
}

uint64_t sub_15C1228(uint64_t a1)
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
      v7 = sub_15C06E8(v6);
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
  result = v2 + v8;
  if (v8 >= 1)
  {
    v10 = (*(a1 + 64) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 16);
  if ((v14 & 0x1F) != 0)
  {
    if (v14)
    {
      v15 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      result += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v14 & 2) != 0)
    {
      v18 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      result += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += (v14 >> 1) & 2;
    if ((v14 & 8) != 0)
    {
      v21 = *(a1 + 92);
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v21 >= 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 11;
      }

      result += v23;
    }

    if ((v14 & 0x10) != 0)
    {
      result += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    v25 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    result += v26;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_15C1420(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15D7438(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_1201B48(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0x1F) != 0)
  {
    if (v14)
    {
      v16 = *(a2 + 72);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v18 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v18 = *v18;
      }

      result = sub_194EA1C(&v3[3], (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v19 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v20 = v3->__r_.__value_.__l.__size_;
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

LABEL_25:
    v3[3].__r_.__value_.__s.__data_[16] = *(a2 + 88);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
LABEL_14:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
        goto LABEL_15;
      }

LABEL_13:
      LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
      goto LABEL_14;
    }

LABEL_26:
    HIDWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 92);
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_15C15F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 40) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 5) == 0);
  return v2 < 1;
}

double sub_15C1638(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26F4678;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0uLL;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0uLL;
  *(a1 + 72) = a2;
  result = 0.0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a2;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a2;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a2;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = a2;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = a2;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = a2;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = a2;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = a2;
  *(a1 + 416) = 0;
  *(a1 + 424) = a2;
  *(a1 + 432) = 0;
  *(a1 + 440) = a2;
  *(a1 + 448) = 0;
  *(a1 + 456) = a2;
  *(a1 + 464) = a2;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = a2;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = a2;
  *(a1 + 528) = 0;
  *(a1 + 536) = a2;
  *(a1 + 544) = 0;
  *(a1 + 552) = a2;
  *(a1 + 560) = 0;
  *(a1 + 568) = a2;
  *(a1 + 576) = 0;
  *(a1 + 584) = a2;
  *(a1 + 592) = 0;
  *(a1 + 600) = a2;
  *(a1 + 608) = 0;
  *(a1 + 616) = a2;
  *(a1 + 624) = 0;
  *(a1 + 632) = a2;
  *(a1 + 640) = 0;
  *(a1 + 648) = a2;
  *(a1 + 656) = 0;
  *(a1 + 664) = a2;
  *(a1 + 672) = &qword_278E990;
  *(a1 + 680) = &qword_278E990;
  *(a1 + 688) = &qword_278E990;
  *(a1 + 696) = &qword_278E990;
  *(a1 + 704) = &qword_278E990;
  *(a1 + 712) = &qword_278E990;
  *(a1 + 720) = &qword_278E990;
  *(a1 + 728) = &qword_278E990;
  *(a1 + 736) = &qword_278E990;
  *(a1 + 744) = &qword_278E990;
  *(a1 + 752) = &qword_278E990;
  *(a1 + 760) = &qword_278E990;
  *(a1 + 768) = &qword_278E990;
  *(a1 + 776) = &qword_278E990;
  *(a1 + 784) = &qword_278E990;
  *(a1 + 792) = &qword_278E990;
  *(a1 + 800) = &qword_278E990;
  *(a1 + 808) = &qword_278E990;
  *(a1 + 816) = &qword_278E990;
  *(a1 + 824) = &qword_278E990;
  *(a1 + 832) = &qword_278E990;
  *(a1 + 840) = &qword_278E990;
  *(a1 + 848) = &qword_278E990;
  *(a1 + 856) = &qword_278E990;
  *(a1 + 1216) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 864) = 0u;
  return result;
}

void *sub_15C17FC(void *a1)
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

  sub_15C19A4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 82));
  sub_1956ABC((a1 + 80));
  sub_1956ABC((a1 + 78));
  sub_1956ABC((a1 + 76));
  sub_1956ABC((a1 + 74));
  sub_1956ABC((a1 + 72));
  sub_1956ABC((a1 + 70));
  sub_1956ABC((a1 + 68));
  sub_1956ABC((a1 + 66));
  sub_1956ABC((a1 + 64));
  sub_12E5CA0(a1 + 61);
  sub_15B47B0(a1 + 58);
  sub_1956ABC((a1 + 56));
  sub_1956ABC((a1 + 54));
  sub_1956ABC((a1 + 52));
  sub_1956ABC((a1 + 50));
  sub_15D6AE8(a1 + 47);
  sub_1311EE8(a1 + 44);
  sub_1311EE8(a1 + 41);
  sub_15D6F10(a1 + 38);
  sub_15B472C(a1 + 35);
  sub_1956AFC(a1 + 32);
  sub_1956AFC(a1 + 29);
  sub_1956AFC(a1 + 26);
  sub_1956AFC(a1 + 23);
  sub_1956AFC(a1 + 20);
  sub_1956AFC(a1 + 17);
  sub_1956ABC((a1 + 15));
  sub_1311EE8(a1 + 12);
  sub_1956ABC((a1 + 10));
  sub_1956ABC((a1 + 8));
  sub_15D6E8C(a1 + 5);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_15C19A4(uint64_t result)
{
  v1 = result;
  if (*(result + 672) != &qword_278E990)
  {
    sub_194E89C((result + 672));
  }

  if (*(result + 680) != &qword_278E990)
  {
    sub_194E89C((result + 680));
  }

  if (*(result + 688) != &qword_278E990)
  {
    sub_194E89C((result + 688));
  }

  if (*(result + 696) != &qword_278E990)
  {
    sub_194E89C((result + 696));
  }

  if (*(result + 704) != &qword_278E990)
  {
    sub_194E89C((result + 704));
  }

  if (*(result + 712) != &qword_278E990)
  {
    sub_194E89C((result + 712));
  }

  if (*(result + 720) != &qword_278E990)
  {
    sub_194E89C((result + 720));
  }

  if (*(result + 728) != &qword_278E990)
  {
    sub_194E89C((result + 728));
  }

  if (*(result + 736) != &qword_278E990)
  {
    sub_194E89C((result + 736));
  }

  if (*(result + 744) != &qword_278E990)
  {
    sub_194E89C((result + 744));
  }

  if (*(result + 752) != &qword_278E990)
  {
    sub_194E89C((result + 752));
  }

  if (*(result + 760) != &qword_278E990)
  {
    sub_194E89C((result + 760));
  }

  if (*(result + 768) != &qword_278E990)
  {
    sub_194E89C((result + 768));
  }

  if (*(result + 776) != &qword_278E990)
  {
    sub_194E89C((result + 776));
  }

  if (*(result + 784) != &qword_278E990)
  {
    sub_194E89C((result + 784));
  }

  if (*(result + 792) != &qword_278E990)
  {
    sub_194E89C((result + 792));
  }

  if (*(result + 800) != &qword_278E990)
  {
    sub_194E89C((result + 800));
  }

  if (*(result + 808) != &qword_278E990)
  {
    sub_194E89C((result + 808));
  }

  if (*(result + 816) != &qword_278E990)
  {
    sub_194E89C((result + 816));
  }

  if (*(result + 824) != &qword_278E990)
  {
    sub_194E89C((result + 824));
  }

  if (*(result + 832) != &qword_278E990)
  {
    sub_194E89C((result + 832));
  }

  if (*(result + 840) != &qword_278E990)
  {
    sub_194E89C((result + 840));
  }

  if (*(result + 848) != &qword_278E990)
  {
    sub_194E89C((result + 848));
  }

  if (*(result + 856) != &qword_278E990)
  {
    sub_194E89C((result + 856));
  }

  if (result != &off_2778DA8)
  {
    v2 = *(result + 864);
    if (v2)
    {
      sub_15B7720(v2);
      operator delete();
    }

    if (v1[109])
    {
      sub_16EE080();
      operator delete();
    }

    if (v1[110])
    {
      sub_16E8374();
      operator delete();
    }

    if (v1[111])
    {
      sub_153FD8C();
      operator delete();
    }

    v3 = v1[112];
    if (v3)
    {
      sub_15B7720(v3);
      operator delete();
    }

    v4 = v1[113];
    if (v4)
    {
      sub_15CA1B4(v4);
      operator delete();
    }

    v5 = v1[114];
    if (v5)
    {
      sub_15BA884(v5);
      operator delete();
    }

    v6 = v1[115];
    if (v6)
    {
      sub_15B6B04(v6);
      operator delete();
    }

    v7 = v1[116];
    if (v7)
    {
      sub_15B9B44(v7);
      operator delete();
    }

    v8 = v1[117];
    if (v8)
    {
      sub_15B9B44(v8);
      operator delete();
    }

    v9 = v1[118];
    if (v9)
    {
      sub_15C0828(v9);
      operator delete();
    }

    v10 = v1[119];
    if (v10)
    {
      sub_15B7D58(v10);
      operator delete();
    }

    v11 = v1[120];
    if (v11)
    {
      sub_15C0828(v11);
      operator delete();
    }

    v12 = v1[121];
    if (v12)
    {
      sub_15B6FF0(v12);
      operator delete();
    }

    v13 = v1[122];
    if (v13)
    {
      sub_15B6B04(v13);
      operator delete();
    }

    v14 = v1[123];
    if (v14)
    {
      sub_15B7D58(v14);
      operator delete();
    }

    v15 = v1[124];
    if (v15)
    {
      sub_15B7D58(v15);
      operator delete();
    }

    v16 = v1[125];
    if (v16)
    {
      sub_15B7720(v16);
      operator delete();
    }

    if (v1[126])
    {
      sub_16D6238();
      operator delete();
    }

    v17 = v1[127];
    if (v17)
    {
      sub_15BF960(v17);
      operator delete();
    }

    v18 = v1[128];
    if (v18)
    {
      sub_15B6B04(v18);
      operator delete();
    }

    v19 = v1[129];
    if (v19)
    {
      sub_15B9B44(v19);
      operator delete();
    }

    v20 = v1[130];
    if (v20)
    {
      sub_132BEF4(v20);
      operator delete();
    }

    v21 = v1[131];
    if (v21)
    {
      sub_132D100(v21);
      operator delete();
    }

    v22 = v1[132];
    if (v22)
    {
      sub_153AC8C(v22);
      operator delete();
    }

    if (v1[133])
    {
      sub_167E6D8();
      operator delete();
    }

    if (v1[134])
    {
      sub_167E6D8();
      operator delete();
    }

    result = v1[135];
    if (result)
    {
      sub_16E4E08();

      operator delete();
    }
  }

  return result;
}

void sub_15C1F00(void *a1)
{
  sub_15C17FC(a1);

  operator delete();
}

uint64_t sub_15C1F38(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 56) + 8);
    do
    {
      v4 = *v3++;
      sub_16D5174(v4);
      --v2;
    }

    while (v2);
    *(a1 + 48) = 0;
  }

  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  v5 = *(a1 + 104);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 112) + 8);
    do
    {
      v7 = *v6++;
      sub_1579070(v7);
      --v5;
    }

    while (v5);
    *(a1 + 104) = 0;
  }

  *(a1 + 120) = 0;
  sub_12A41D0(a1 + 136);
  sub_12A41D0(a1 + 160);
  sub_12A41D0(a1 + 184);
  sub_12A41D0(a1 + 208);
  sub_12A41D0(a1 + 232);
  result = sub_12A41D0(a1 + 256);
  v9 = *(a1 + 288);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 296) + 8);
    do
    {
      v11 = *v10++;
      result = sub_157A3FC(v11);
      --v9;
    }

    while (v9);
    *(a1 + 288) = 0;
  }

  v12 = *(a1 + 312);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 320) + 8);
    do
    {
      v14 = *v13++;
      result = sub_15BF5DC(v14);
      --v12;
    }

    while (v12);
    *(a1 + 312) = 0;
  }

  v15 = *(a1 + 336);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 344) + 8);
    do
    {
      v17 = *v16++;
      result = sub_1579070(v17);
      --v15;
    }

    while (v15);
    *(a1 + 336) = 0;
  }

  v18 = *(a1 + 360);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 368) + 8);
    do
    {
      v20 = *v19++;
      result = sub_1579070(v20);
      --v18;
    }

    while (v18);
    *(a1 + 360) = 0;
  }

  v21 = *(a1 + 384);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 392) + 8);
    do
    {
      v23 = *v22++;
      result = sub_15BB118(v23);
      --v21;
    }

    while (v21);
    *(a1 + 384) = 0;
  }

  *(a1 + 400) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  v24 = *(a1 + 472);
  if (v24 >= 1)
  {
    v25 = (*(a1 + 480) + 8);
    do
    {
      v26 = *v25++;
      result = sub_157A82C(v26);
      --v24;
    }

    while (v24);
    *(a1 + 472) = 0;
  }

  v27 = *(a1 + 496);
  if (v27 >= 1)
  {
    v28 = (*(a1 + 504) + 8);
    do
    {
      v29 = *v28++;
      result = sub_16EEC04(v29);
      --v27;
    }

    while (v27);
    *(a1 + 496) = 0;
  }

  v30 = *(a1 + 16);
  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  *(a1 + 544) = 0;
  *(a1 + 560) = 0;
  *(a1 + 576) = 0;
  *(a1 + 592) = 0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  *(a1 + 640) = 0;
  *(a1 + 656) = 0;
  if (v30)
  {
    if ((v30 & 1) == 0)
    {
      if ((v30 & 2) == 0)
      {
        goto LABEL_40;
      }

LABEL_51:
      v32 = *(a1 + 680) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v32 + 23) < 0)
      {
        **v32 = 0;
        *(v32 + 8) = 0;
        if ((v30 & 4) != 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        *v32 = 0;
        *(v32 + 23) = 0;
        if ((v30 & 4) != 0)
        {
          goto LABEL_55;
        }
      }

LABEL_41:
      if ((v30 & 8) == 0)
      {
        goto LABEL_42;
      }

LABEL_59:
      v34 = *(a1 + 696) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v34 + 23) < 0)
      {
        **v34 = 0;
        *(v34 + 8) = 0;
        if ((v30 & 0x10) != 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *v34 = 0;
        *(v34 + 23) = 0;
        if ((v30 & 0x10) != 0)
        {
          goto LABEL_63;
        }
      }

LABEL_43:
      if ((v30 & 0x20) == 0)
      {
        goto LABEL_44;
      }

LABEL_67:
      v36 = *(a1 + 712) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v36 + 23) < 0)
      {
        **v36 = 0;
        *(v36 + 8) = 0;
        if ((v30 & 0x40) != 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        *v36 = 0;
        *(v36 + 23) = 0;
        if ((v30 & 0x40) != 0)
        {
          goto LABEL_71;
        }
      }

LABEL_45:
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_78;
      }

LABEL_75:
      v38 = *(a1 + 728) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v38 + 23) < 0)
      {
        **v38 = 0;
        *(v38 + 8) = 0;
      }

      else
      {
        *v38 = 0;
        *(v38 + 23) = 0;
      }

      goto LABEL_78;
    }

    v31 = *(a1 + 672) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v31 + 23) < 0)
    {
      **v31 = 0;
      *(v31 + 8) = 0;
      if ((v30 & 2) != 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *v31 = 0;
      *(v31 + 23) = 0;
      if ((v30 & 2) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_40:
    if ((v30 & 4) == 0)
    {
      goto LABEL_41;
    }

LABEL_55:
    v33 = *(a1 + 688) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v33 + 23) < 0)
    {
      **v33 = 0;
      *(v33 + 8) = 0;
      if ((v30 & 8) != 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      *v33 = 0;
      *(v33 + 23) = 0;
      if ((v30 & 8) != 0)
      {
        goto LABEL_59;
      }
    }

LABEL_42:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_43;
    }

LABEL_63:
    v35 = *(a1 + 704) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v35 + 23) < 0)
    {
      **v35 = 0;
      *(v35 + 8) = 0;
      if ((v30 & 0x20) != 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      *v35 = 0;
      *(v35 + 23) = 0;
      if ((v30 & 0x20) != 0)
      {
        goto LABEL_67;
      }
    }

LABEL_44:
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_45;
    }

LABEL_71:
    v37 = *(a1 + 720) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v37 + 23) < 0)
    {
      **v37 = 0;
      *(v37 + 8) = 0;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      *v37 = 0;
      *(v37 + 23) = 0;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_78;
      }
    }

    goto LABEL_75;
  }

LABEL_78:
  if ((v30 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v30 & 0x100) == 0)
  {
    if ((v30 & 0x200) == 0)
    {
      goto LABEL_81;
    }

LABEL_92:
    v40 = *(a1 + 744) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v40 + 23) < 0)
    {
      **v40 = 0;
      *(v40 + 8) = 0;
      if ((v30 & 0x400) != 0)
      {
        goto LABEL_96;
      }
    }

    else
    {
      *v40 = 0;
      *(v40 + 23) = 0;
      if ((v30 & 0x400) != 0)
      {
        goto LABEL_96;
      }
    }

LABEL_82:
    if ((v30 & 0x800) == 0)
    {
      goto LABEL_83;
    }

LABEL_100:
    v42 = *(a1 + 760) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v42 + 23) < 0)
    {
      **v42 = 0;
      *(v42 + 8) = 0;
      if ((v30 & 0x1000) != 0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      *v42 = 0;
      *(v42 + 23) = 0;
      if ((v30 & 0x1000) != 0)
      {
        goto LABEL_104;
      }
    }

LABEL_84:
    if ((v30 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

LABEL_108:
    v44 = *(a1 + 776) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v44 + 23) < 0)
    {
      **v44 = 0;
      *(v44 + 8) = 0;
      if ((v30 & 0x4000) != 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      *v44 = 0;
      *(v44 + 23) = 0;
      if ((v30 & 0x4000) != 0)
      {
        goto LABEL_112;
      }
    }

LABEL_86:
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_116;
  }

  v39 = *(a1 + 736) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v39 + 23) < 0)
  {
    **v39 = 0;
    *(v39 + 8) = 0;
    if ((v30 & 0x200) != 0)
    {
      goto LABEL_92;
    }
  }

  else
  {
    *v39 = 0;
    *(v39 + 23) = 0;
    if ((v30 & 0x200) != 0)
    {
      goto LABEL_92;
    }
  }

LABEL_81:
  if ((v30 & 0x400) == 0)
  {
    goto LABEL_82;
  }

LABEL_96:
  v41 = *(a1 + 752) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v41 + 23) < 0)
  {
    **v41 = 0;
    *(v41 + 8) = 0;
    if ((v30 & 0x800) != 0)
    {
      goto LABEL_100;
    }
  }

  else
  {
    *v41 = 0;
    *(v41 + 23) = 0;
    if ((v30 & 0x800) != 0)
    {
      goto LABEL_100;
    }
  }

LABEL_83:
  if ((v30 & 0x1000) == 0)
  {
    goto LABEL_84;
  }

LABEL_104:
  v43 = *(a1 + 768) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v43 + 23) < 0)
  {
    **v43 = 0;
    *(v43 + 8) = 0;
    if ((v30 & 0x2000) != 0)
    {
      goto LABEL_108;
    }
  }

  else
  {
    *v43 = 0;
    *(v43 + 23) = 0;
    if ((v30 & 0x2000) != 0)
    {
      goto LABEL_108;
    }
  }

LABEL_85:
  if ((v30 & 0x4000) == 0)
  {
    goto LABEL_86;
  }

LABEL_112:
  v45 = *(a1 + 784) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v45 + 23) < 0)
  {
    **v45 = 0;
    *(v45 + 8) = 0;
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_119;
    }
  }

  else
  {
    *v45 = 0;
    *(v45 + 23) = 0;
    if ((v30 & 0x8000) == 0)
    {
      goto LABEL_119;
    }
  }

LABEL_116:
  v46 = *(a1 + 792) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v46 + 23) < 0)
  {
    **v46 = 0;
    *(v46 + 8) = 0;
  }

  else
  {
    *v46 = 0;
    *(v46 + 23) = 0;
  }

LABEL_119:
  if ((v30 & 0xFF0000) == 0)
  {
    goto LABEL_160;
  }

  if ((v30 & 0x10000) == 0)
  {
    if ((v30 & 0x20000) == 0)
    {
      goto LABEL_122;
    }

LABEL_133:
    v48 = *(a1 + 808) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v48 + 23) < 0)
    {
      **v48 = 0;
      *(v48 + 8) = 0;
      if ((v30 & 0x40000) != 0)
      {
        goto LABEL_137;
      }
    }

    else
    {
      *v48 = 0;
      *(v48 + 23) = 0;
      if ((v30 & 0x40000) != 0)
      {
        goto LABEL_137;
      }
    }

LABEL_123:
    if ((v30 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

LABEL_141:
    v50 = *(a1 + 824) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v50 + 23) < 0)
    {
      **v50 = 0;
      *(v50 + 8) = 0;
      if ((v30 & 0x100000) != 0)
      {
        goto LABEL_145;
      }
    }

    else
    {
      *v50 = 0;
      *(v50 + 23) = 0;
      if ((v30 & 0x100000) != 0)
      {
        goto LABEL_145;
      }
    }

LABEL_125:
    if ((v30 & 0x200000) == 0)
    {
      goto LABEL_126;
    }

LABEL_149:
    v52 = *(a1 + 840) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v52 + 23) < 0)
    {
      **v52 = 0;
      *(v52 + 8) = 0;
      if ((v30 & 0x400000) != 0)
      {
        goto LABEL_153;
      }
    }

    else
    {
      *v52 = 0;
      *(v52 + 23) = 0;
      if ((v30 & 0x400000) != 0)
      {
        goto LABEL_153;
      }
    }

LABEL_127:
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_157;
  }

  v47 = *(a1 + 800) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v47 + 23) < 0)
  {
    **v47 = 0;
    *(v47 + 8) = 0;
    if ((v30 & 0x20000) != 0)
    {
      goto LABEL_133;
    }
  }

  else
  {
    *v47 = 0;
    *(v47 + 23) = 0;
    if ((v30 & 0x20000) != 0)
    {
      goto LABEL_133;
    }
  }

LABEL_122:
  if ((v30 & 0x40000) == 0)
  {
    goto LABEL_123;
  }

LABEL_137:
  v49 = *(a1 + 816) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v49 + 23) < 0)
  {
    **v49 = 0;
    *(v49 + 8) = 0;
    if ((v30 & 0x80000) != 0)
    {
      goto LABEL_141;
    }
  }

  else
  {
    *v49 = 0;
    *(v49 + 23) = 0;
    if ((v30 & 0x80000) != 0)
    {
      goto LABEL_141;
    }
  }

LABEL_124:
  if ((v30 & 0x100000) == 0)
  {
    goto LABEL_125;
  }

LABEL_145:
  v51 = *(a1 + 832) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v51 + 23) < 0)
  {
    **v51 = 0;
    *(v51 + 8) = 0;
    if ((v30 & 0x200000) != 0)
    {
      goto LABEL_149;
    }
  }

  else
  {
    *v51 = 0;
    *(v51 + 23) = 0;
    if ((v30 & 0x200000) != 0)
    {
      goto LABEL_149;
    }
  }

LABEL_126:
  if ((v30 & 0x400000) == 0)
  {
    goto LABEL_127;
  }

LABEL_153:
  v53 = *(a1 + 848) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v53 + 23) < 0)
  {
    **v53 = 0;
    *(v53 + 8) = 0;
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_160;
    }
  }

  else
  {
    *v53 = 0;
    *(v53 + 23) = 0;
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_160;
    }
  }

LABEL_157:
  v54 = *(a1 + 856) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v54 + 23) < 0)
  {
    **v54 = 0;
    *(v54 + 8) = 0;
  }

  else
  {
    *v54 = 0;
    *(v54 + 23) = 0;
  }

LABEL_160:
  if (!HIBYTE(v30))
  {
    goto LABEL_169;
  }

  if ((v30 & 0x1000000) != 0)
  {
    result = sub_15B77D8(*(a1 + 864));
    if ((v30 & 0x2000000) == 0)
    {
LABEL_163:
      if ((v30 & 0x4000000) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_243;
    }
  }

  else if ((v30 & 0x2000000) == 0)
  {
    goto LABEL_163;
  }

  result = sub_16EE0BC(*(a1 + 872));
  if ((v30 & 0x4000000) == 0)
  {
LABEL_164:
    if ((v30 & 0x8000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_244;
  }

LABEL_243:
  result = sub_16E48B0(*(a1 + 880));
  if ((v30 & 0x8000000) == 0)
  {
LABEL_165:
    if ((v30 & 0x10000000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_245;
  }

LABEL_244:
  result = sub_153FDC8(*(a1 + 888));
  if ((v30 & 0x10000000) == 0)
  {
LABEL_166:
    if ((v30 & 0x20000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_246;
  }

LABEL_245:
  result = sub_15B77D8(*(a1 + 896));
  if ((v30 & 0x20000000) == 0)
  {
LABEL_167:
    if ((v30 & 0x40000000) == 0)
    {
      goto LABEL_168;
    }

LABEL_247:
    result = sub_15BA988(*(a1 + 912));
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_248;
  }

LABEL_246:
  result = sub_15C2918(*(a1 + 904));
  if ((v30 & 0x40000000) != 0)
  {
    goto LABEL_247;
  }

LABEL_168:
  if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_169;
  }

LABEL_248:
  result = sub_15B6ACC(*(a1 + 920));
LABEL_169:
  v55 = *(a1 + 20);
  if (!v55)
  {
    goto LABEL_179;
  }

  if (v55)
  {
    result = sub_15B9CCC(*(a1 + 928));
    if ((v55 & 2) == 0)
    {
LABEL_172:
      if ((v55 & 4) == 0)
      {
        goto LABEL_173;
      }

      goto LABEL_223;
    }
  }

  else if ((v55 & 2) == 0)
  {
    goto LABEL_172;
  }

  result = sub_15B9CCC(*(a1 + 936));
  if ((v55 & 4) == 0)
  {
LABEL_173:
    if ((v55 & 8) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_224;
  }

LABEL_223:
  result = sub_15C092C(*(a1 + 944));
  if ((v55 & 8) == 0)
  {
LABEL_174:
    if ((v55 & 0x10) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_225;
  }

LABEL_224:
  result = sub_15B7E04(*(a1 + 952));
  if ((v55 & 0x10) == 0)
  {
LABEL_175:
    if ((v55 & 0x20) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_226;
  }

LABEL_225:
  result = sub_15C092C(*(a1 + 960));
  if ((v55 & 0x20) == 0)
  {
LABEL_176:
    if ((v55 & 0x40) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_227;
  }

LABEL_226:
  result = sub_15B70F8(*(a1 + 968));
  if ((v55 & 0x40) == 0)
  {
LABEL_177:
    if ((v55 & 0x80) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_178;
  }

LABEL_227:
  result = sub_15B6ACC(*(a1 + 976));
  if ((v55 & 0x80) != 0)
  {
LABEL_178:
    result = sub_15B7E04(*(a1 + 984));
  }

LABEL_179:
  if ((v55 & 0xFF00) == 0)
  {
    goto LABEL_189;
  }

  if ((v55 & 0x100) != 0)
  {
    result = sub_15B7E04(*(a1 + 992));
    if ((v55 & 0x200) == 0)
    {
LABEL_182:
      if ((v55 & 0x400) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_231;
    }
  }

  else if ((v55 & 0x200) == 0)
  {
    goto LABEL_182;
  }

  result = sub_15B77D8(*(a1 + 1000));
  if ((v55 & 0x400) == 0)
  {
LABEL_183:
    if ((v55 & 0x800) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_232;
  }

LABEL_231:
  result = sub_16D6274(*(a1 + 1008));
  if ((v55 & 0x800) == 0)
  {
LABEL_184:
    if ((v55 & 0x1000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_233;
  }

LABEL_232:
  result = sub_15BFA64(*(a1 + 1016));
  if ((v55 & 0x1000) == 0)
  {
LABEL_185:
    if ((v55 & 0x2000) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_234;
  }

LABEL_233:
  result = sub_15B6ACC(*(a1 + 1024));
  if ((v55 & 0x2000) == 0)
  {
LABEL_186:
    if ((v55 & 0x4000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_235;
  }

LABEL_234:
  result = sub_15B9CCC(*(a1 + 1032));
  if ((v55 & 0x4000) == 0)
  {
LABEL_187:
    if ((v55 & 0x8000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_188;
  }

LABEL_235:
  result = sub_132BF30(*(a1 + 1040));
  if ((v55 & 0x8000) != 0)
  {
LABEL_188:
    result = sub_132D13C(*(a1 + 1048));
  }

LABEL_189:
  if ((v55 & 0xF0000) == 0)
  {
    goto LABEL_195;
  }

  if ((v55 & 0x10000) != 0)
  {
    result = sub_153ACC8(*(a1 + 1056));
    if ((v55 & 0x20000) == 0)
    {
LABEL_192:
      if ((v55 & 0x40000) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_239;
    }
  }

  else if ((v55 & 0x20000) == 0)
  {
    goto LABEL_192;
  }

  result = sub_16724F4(*(a1 + 1064));
  if ((v55 & 0x40000) == 0)
  {
LABEL_193:
    if ((v55 & 0x80000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_194;
  }

LABEL_239:
  result = sub_16724F4(*(a1 + 1072));
  if ((v55 & 0x80000) != 0)
  {
LABEL_194:
    result = sub_16E4E44(*(a1 + 1080));
  }

LABEL_195:
  if ((v55 & 0xF00000) != 0)
  {
    *(a1 + 1088) = 0;
  }

  if (HIBYTE(v55))
  {
    *(a1 + 1099) = 0;
    *(a1 + 1092) = 0;
  }

  v56 = *(a1 + 24);
  if (v56)
  {
    *(a1 + 1103) = 0;
  }

  if ((v56 & 0xFF00) != 0)
  {
    *(a1 + 1117) = 0;
    *(a1 + 1111) = 0;
  }

  if ((v56 & 0xFF0000) != 0)
  {
    *(a1 + 1132) = 0;
    *(a1 + 1125) = 0;
  }

  if (HIBYTE(v56))
  {
    *(a1 + 1136) = 0;
    *(a1 + 1143) = 0;
  }

  v57 = *(a1 + 28);
  if (v57)
  {
    *(a1 + 1175) = 0;
    *(a1 + 1167) = 0;
    *(a1 + 1151) = 0u;
  }

  if ((v57 & 0xFF00) != 0)
  {
    *(a1 + 1176) = 0;
  }

  if ((v57 & 0xFF0000) != 0)
  {
    *(a1 + 1184) = 0;
    *(a1 + 1191) = 0;
  }

  if (HIBYTE(v57))
  {
    *(a1 + 1199) = 0;
  }

  if (*(a1 + 32))
  {
    *(a1 + 1212) = 0;
    *(a1 + 1207) = 0;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v59 = *(a1 + 8);
  v58 = (a1 + 8);
  if (v59)
  {

    return sub_1957EA8(v58);
  }

  return result;
}

uint64_t sub_15C2918(uint64_t result)
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
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
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

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  result = sub_15B77D8(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_15B6ACC(*(v1 + 40));
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

char *sub_15C2CA0(uint64_t a1, char *a2, unint64_t *a3)
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

      a2 = sub_16D5514(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 0x1000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v12 = *(a1 + 864);
    *a2 = 18;
    v13 = *(v12 + 40);
    a2[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, a2 + 1);
    }

    else
    {
      v14 = a2 + 2;
    }

    a2 = sub_15B79E4(v12, v14, a3);
  }

  v15 = *(a1 + 64);
  if (v15 < 1)
  {
    v18 = a2;
  }

  else
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v17 = *(*(a1 + 72) + 8 * j);
      *a2 = 24;
      a2[1] = v17;
      if (v17 > 0x7F)
      {
        a2[1] = v17 | 0x80;
        v19 = v17 >> 7;
        a2[2] = v17 >> 7;
        v18 = a2 + 3;
        if (v17 >= 0x4000)
        {
          LOBYTE(a2) = a2[2];
          do
          {
            *(v18 - 1) = a2 | 0x80;
            a2 = (v19 >> 7);
            *v18++ = v19 >> 7;
            v20 = v19 >> 14;
            v19 >>= 7;
          }

          while (v20);
        }
      }

      else
      {
        v18 = a2 + 2;
      }

      a2 = v18;
    }
  }

  if (v11)
  {
    v18 = sub_128AEEC(a3, 6, *(a1 + 672) & 0xFFFFFFFFFFFFFFFELL, v18);
  }

  v21 = *(a1 + 20);
  if ((v21 & 0x100000) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v22 = *(a1 + 1088);
    *v18 = 56;
    v18[1] = v22;
    v18 += 2;
  }

  if ((v21 & 0x200000) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 1089);
    *v18 = 64;
    v18[1] = v23;
    v18 += 2;
  }

  v24 = *(a1 + 80);
  if (v24 < 1)
  {
    v27 = v18;
  }

  else
  {
    for (k = 0; k != v24; ++k)
    {
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v26 = *(*(a1 + 88) + 8 * k);
      *v18 = 72;
      v18[1] = v26;
      if (v26 > 0x7F)
      {
        v18[1] = v26 | 0x80;
        v28 = v26 >> 7;
        v18[2] = v26 >> 7;
        v27 = v18 + 3;
        if (v26 >= 0x4000)
        {
          LOBYTE(v18) = v18[2];
          do
          {
            *(v27 - 1) = v18 | 0x80;
            v18 = (v28 >> 7);
            *v27++ = v28 >> 7;
            v29 = v28 >> 14;
            v28 >>= 7;
          }

          while (v29);
        }
      }

      else
      {
        v27 = v18 + 2;
      }

      v18 = v27;
    }
  }

  if ((*(a1 + 16) & 2) != 0)
  {
    v27 = sub_128AEEC(a3, 10, *(a1 + 680) & 0xFFFFFFFFFFFFFFFELL, v27);
  }

  v30 = *(a1 + 20);
  if ((v30 & 0x400000) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v31 = *(a1 + 1090);
    *v27 = 96;
    v27[1] = v31;
    v27 += 2;
  }

  v32 = *(a1 + 104);
  if (v32)
  {
    for (m = 0; m != v32; ++m)
    {
      if (*a3 <= v27)
      {
        v27 = sub_225EB68(a3, v27);
      }

      v34 = *(*(a1 + 112) + 8 * m + 8);
      *v27 = 106;
      v35 = *(v34 + 20);
      v27[1] = v35;
      if (v35 > 0x7F)
      {
        v36 = sub_19575D0(v35, v27 + 1);
      }

      else
      {
        v36 = v27 + 2;
      }

      v27 = sub_157926C(v34, v36, a3);
    }
  }

  if ((v30 & 0x800000) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v37 = *(a1 + 1091);
    *v27 = 120;
    v27[1] = v37;
    v27 += 2;
  }

  v38 = *(a1 + 120);
  if (v38 < 1)
  {
    v41 = v27;
  }

  else
  {
    for (n = 0; n != v38; ++n)
    {
      if (*a3 <= v27)
      {
        v27 = sub_225EB68(a3, v27);
      }

      v40 = *(*(a1 + 128) + 8 * n);
      *v27 = 384;
      v27[2] = v40;
      if (v40 > 0x7F)
      {
        v27[2] = v40 | 0x80;
        v42 = v40 >> 7;
        v27[3] = v40 >> 7;
        v41 = v27 + 4;
        if (v40 >= 0x4000)
        {
          LOBYTE(v43) = v27[3];
          do
          {
            *(v41 - 1) = v43 | 0x80;
            v43 = v42 >> 7;
            *v41++ = v42 >> 7;
            v44 = v42 >> 14;
            v42 >>= 7;
          }

          while (v44);
        }
      }

      else
      {
        v41 = v27 + 3;
      }

      v27 = v41;
    }
  }

  v45 = *(a1 + 144);
  if (v45 >= 1)
  {
    v46 = 8;
    do
    {
      v47 = *(*(a1 + 152) + v46);
      v48 = *(v47 + 23);
      if (v48 < 0 && (v48 = v47[1], v48 > 127) || (*a3 - v41 + 13) < v48)
      {
        v41 = sub_1957480(a3, 17, v47, v41);
      }

      else
      {
        *v41 = 394;
        v41[2] = v48;
        if (*(v47 + 23) < 0)
        {
          v47 = *v47;
        }

        v49 = v41 + 3;
        memcpy(v41 + 3, v47, v48);
        v41 = &v49[v48];
      }

      v46 += 8;
      --v45;
    }

    while (v45);
  }

  v50 = *(a1 + 168);
  if (v50 >= 1)
  {
    v51 = 8;
    do
    {
      v52 = *(*(a1 + 176) + v51);
      v53 = *(v52 + 23);
      if (v53 < 0 && (v53 = v52[1], v53 > 127) || (*a3 - v41 + 13) < v53)
      {
        v41 = sub_1957480(a3, 18, v52, v41);
      }

      else
      {
        *v41 = 402;
        v41[2] = v53;
        if (*(v52 + 23) < 0)
        {
          v52 = *v52;
        }

        v54 = v41 + 3;
        memcpy(v41 + 3, v52, v53);
        v41 = &v54[v53];
      }

      v51 += 8;
      --v50;
    }

    while (v50);
  }

  if ((v30 & 0x2000000) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v55 = *(a1 + 1096);
    *v41 = 408;
    v41[2] = v55;
    v41 += 3;
  }

  if ((*(a1 + 19) & 2) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v56 = *(a1 + 872);
    *v41 = 418;
    v57 = *(v56 + 20);
    v41[2] = v57;
    if (v57 > 0x7F)
    {
      v58 = sub_19575D0(v57, v41 + 2);
    }

    else
    {
      v58 = v41 + 3;
    }

    v41 = sub_16EE2C4(v56, v58, a3);
  }

  v59 = *(a1 + 20);
  if ((v59 & 0x4000000) == 0)
  {
    if ((v59 & 0x8000000) == 0)
    {
      goto LABEL_115;
    }

LABEL_120:
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v62 = *(a1 + 1098);
    *v41 = 432;
    v41[2] = v62;
    v41 += 3;
    if ((v59 & 0x1000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_123;
  }

  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v61 = *(a1 + 1097);
  *v41 = 424;
  v41[2] = v61;
  v41 += 3;
  if ((v59 & 0x8000000) != 0)
  {
    goto LABEL_120;
  }

LABEL_115:
  if ((v59 & 0x1000000) == 0)
  {
LABEL_116:
    v60 = v41;
    goto LABEL_130;
  }

LABEL_123:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v63 = *(a1 + 1092);
  *v41 = 440;
  v41[2] = v63;
  if (v63 > 0x7F)
  {
    v41[2] = v63 | 0x80;
    v64 = v63 >> 7;
    v41[3] = v63 >> 7;
    v60 = v41 + 4;
    if (v63 >= 0x4000)
    {
      LOBYTE(v41) = v41[3];
      do
      {
        *(v60 - 1) = v41 | 0x80;
        v41 = (v64 >> 7);
        *v60++ = v64 >> 7;
        v65 = v64 >> 14;
        v64 >>= 7;
      }

      while (v65);
    }
  }

  else
  {
    v60 = v41 + 3;
  }

LABEL_130:
  v66 = *(a1 + 192);
  if (v66 >= 1)
  {
    v67 = 8;
    do
    {
      v68 = *(*(a1 + 200) + v67);
      v69 = *(v68 + 23);
      if (v69 < 0 && (v69 = v68[1], v69 > 127) || (*a3 - v60 + 13) < v69)
      {
        v60 = sub_1957480(a3, 24, v68, v60);
      }

      else
      {
        *v60 = 450;
        v60[2] = v69;
        if (*(v68 + 23) < 0)
        {
          v68 = *v68;
        }

        v70 = v60 + 3;
        memcpy(v60 + 3, v68, v69);
        v60 = &v70[v69];
      }

      v67 += 8;
      --v66;
    }

    while (v66);
  }

  v71 = *(a1 + 216);
  if (v71 >= 1)
  {
    v72 = 8;
    do
    {
      v73 = *(*(a1 + 224) + v72);
      v74 = *(v73 + 23);
      if (v74 < 0 && (v74 = v73[1], v74 > 127) || (*a3 - v60 + 13) < v74)
      {
        v60 = sub_1957480(a3, 25, v73, v60);
      }

      else
      {
        *v60 = 458;
        v60[2] = v74;
        if (*(v73 + 23) < 0)
        {
          v73 = *v73;
        }

        v75 = v60 + 3;
        memcpy(v60 + 3, v73, v74);
        v60 = &v75[v74];
      }

      v72 += 8;
      --v71;
    }

    while (v71);
  }

  v76 = *(a1 + 16);
  if ((v76 & 0x4000000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v77 = *(a1 + 880);
    *v60 = 466;
    v78 = *(v77 + 44);
    v60[2] = v78;
    if (v78 > 0x7F)
    {
      v79 = sub_19575D0(v78, v60 + 2);
    }

    else
    {
      v79 = v60 + 3;
    }

    v60 = sub_16E886C(v77, v79, a3);
  }

  v80 = *(a1 + 240);
  if (v80 >= 1)
  {
    v81 = 8;
    do
    {
      v82 = *(*(a1 + 248) + v81);
      v83 = *(v82 + 23);
      if (v83 < 0 && (v83 = v82[1], v83 > 127) || (*a3 - v60 + 13) < v83)
      {
        v60 = sub_1957480(a3, 27, v82, v60);
      }

      else
      {
        *v60 = 474;
        v60[2] = v83;
        if (*(v82 + 23) < 0)
        {
          v82 = *v82;
        }

        v84 = v60 + 3;
        memcpy(v60 + 3, v82, v83);
        v60 = &v84[v83];
      }

      v81 += 8;
      --v80;
    }

    while (v80);
  }

  v85 = *(a1 + 264);
  if (v85 >= 1)
  {
    v86 = 8;
    do
    {
      v87 = *(*(a1 + 272) + v86);
      v88 = *(v87 + 23);
      if (v88 < 0 && (v88 = v87[1], v88 > 127) || (*a3 - v60 + 13) < v88)
      {
        v60 = sub_1957480(a3, 28, v87, v60);
      }

      else
      {
        *v60 = 482;
        v60[2] = v88;
        if (*(v87 + 23) < 0)
        {
          v87 = *v87;
        }

        v89 = v60 + 3;
        memcpy(v60 + 3, v87, v88);
        v60 = &v89[v88];
      }

      v86 += 8;
      --v85;
    }

    while (v85);
  }

  v90 = *(a1 + 288);
  if (v90)
  {
    for (ii = 0; ii != v90; ++ii)
    {
      if (*a3 <= v60)
      {
        v60 = sub_225EB68(a3, v60);
      }

      v92 = *(*(a1 + 296) + 8 * ii + 8);
      *v60 = 490;
      v93 = *(v92 + 20);
      v60[2] = v93;
      if (v93 > 0x7F)
      {
        v94 = sub_19575D0(v93, v60 + 2);
      }

      else
      {
        v94 = v60 + 3;
      }

      v60 = sub_157A5D0(v92, v94, a3);
    }
  }

  if ((v76 & 0x8000000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v95 = *(a1 + 888);
    *v60 = 498;
    v96 = *(v95 + 28);
    v60[2] = v96;
    if (v96 > 0x7F)
    {
      v97 = sub_19575D0(v96, v60 + 2);
    }

    else
    {
      v97 = v60 + 3;
    }

    v60 = sub_1540418(v95, v97, a3);
  }

  if ((*(a1 + 23) & 0x10) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v98 = *(a1 + 1099);
    *v60 = 504;
    v60[2] = v98;
    v60 += 3;
  }

  if ((*(a1 + 19) & 0x10) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v99 = *(a1 + 896);
    *v60 = 650;
    v100 = *(v99 + 40);
    v60[2] = v100;
    if (v100 > 0x7F)
    {
      v101 = sub_19575D0(v100, v60 + 2);
    }

    else
    {
      v101 = v60 + 3;
    }

    v60 = sub_15B79E4(v99, v101, a3);
  }

  v102 = *(a1 + 20);
  if ((v102 & 0x20000000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v103 = *(a1 + 1100);
    *v60 = 656;
    v60[2] = v103;
    v60 += 3;
  }

  if ((v102 & 0x40000000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v104 = *(a1 + 1101);
    *v60 = 664;
    v60[2] = v104;
    v60 += 3;
  }

  if ((*(a1 + 16) & 4) != 0)
  {
    v60 = sub_128AEEC(a3, 37, *(a1 + 688) & 0xFFFFFFFFFFFFFFFELL, v60);
  }

  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v105 = *(a1 + 1102);
    *v60 = 688;
    v60[2] = v105;
    v60 += 3;
  }

  if ((*(a1 + 16) & 8) != 0)
  {
    v60 = sub_128AEEC(a3, 39, *(a1 + 696) & 0xFFFFFFFFFFFFFFFELL, v60);
  }

  v106 = *(a1 + 24);
  if (v106)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v107 = *(a1 + 1103);
    *v60 = 704;
    v60[2] = v107;
    v60 += 3;
    if ((v106 & 2) == 0)
    {
LABEL_225:
      if ((v106 & 4) == 0)
      {
        goto LABEL_226;
      }

      goto LABEL_237;
    }
  }

  else if ((v106 & 2) == 0)
  {
    goto LABEL_225;
  }

  if (*a3 <= v60)
  {
    v60 = sub_225EB68(a3, v60);
  }

  v108 = *(a1 + 1104);
  *v60 = 712;
  v60[2] = v108;
  v60 += 3;
  if ((v106 & 4) == 0)
  {
LABEL_226:
    if ((v106 & 8) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_240;
  }

LABEL_237:
  if (*a3 <= v60)
  {
    v60 = sub_225EB68(a3, v60);
  }

  v109 = *(a1 + 1105);
  *v60 = 728;
  v60[2] = v109;
  v60 += 3;
  if ((v106 & 8) == 0)
  {
LABEL_227:
    if ((v106 & 0x10) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_243;
  }

LABEL_240:
  if (*a3 <= v60)
  {
    v60 = sub_225EB68(a3, v60);
  }

  v110 = *(a1 + 1106);
  *v60 = 736;
  v60[2] = v110;
  v60 += 3;
  if ((v106 & 0x10) == 0)
  {
LABEL_228:
    if ((v106 & 0x20) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_246;
  }

LABEL_243:
  if (*a3 <= v60)
  {
    v60 = sub_225EB68(a3, v60);
  }

  v111 = *(a1 + 1107);
  *v60 = 744;
  v60[2] = v111;
  v60 += 3;
  if ((v106 & 0x20) == 0)
  {
LABEL_229:
    if ((v106 & 0x40) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_249;
  }

LABEL_246:
  if (*a3 <= v60)
  {
    v60 = sub_225EB68(a3, v60);
  }

  v112 = *(a1 + 1108);
  *v60 = 752;
  v60[2] = v112;
  v60 += 3;
  if ((v106 & 0x40) != 0)
  {
LABEL_249:
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v113 = *(a1 + 1109);
    *v60 = 760;
    v60[2] = v113;
    v60 += 3;
  }

LABEL_252:
  if ((*(a1 + 16) & 0x10) != 0)
  {
    v60 = sub_128AEEC(a3, 48, *(a1 + 704) & 0xFFFFFFFFFFFFFFFELL, v60);
  }

  v114 = *(a1 + 24);
  if ((v114 & 0x80) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v115 = *(a1 + 1110);
    *v60 = 904;
    v60[2] = v115;
    v60 += 3;
  }

  if ((v114 & 0x100) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v116 = *(a1 + 1111);
    *v60 = 912;
    v60[2] = v116;
    v60 += 3;
  }

  if ((*(a1 + 16) & 0x20) != 0)
  {
    v60 = sub_128AEEC(a3, 51, *(a1 + 712) & 0xFFFFFFFFFFFFFFFELL, v60);
  }

  v117 = *(a1 + 24);
  if ((v117 & 0x200) != 0)
  {
    if (*a3 <= v60)
    {
      v60 = sub_225EB68(a3, v60);
    }

    v119 = *(a1 + 1112);
    *v60 = 928;
    v60[2] = v119;
    v60 += 3;
    if ((v117 & 0x400) == 0)
    {
LABEL_266:
      if ((v117 & 0x800) == 0)
      {
        goto LABEL_267;
      }

LABEL_275:
      if (*a3 <= v60)
      {
        v60 = sub_225EB68(a3, v60);
      }

      v121 = *(a1 + 1114);
      *v60 = 944;
      v60[2] = v121;
      v60 += 3;
      if ((v117 & 0x2000) == 0)
      {
        goto LABEL_268;
      }

      goto LABEL_278;
    }
  }

  else if ((v117 & 0x400) == 0)
  {
    goto LABEL_266;
  }

  if (*a3 <= v60)
  {
    v60 = sub_225EB68(a3, v60);
  }

  v120 = *(a1 + 1113);
  *v60 = 936;
  v60[2] = v120;
  v60 += 3;
  if ((v117 & 0x800) != 0)
  {
    goto LABEL_275;
  }

LABEL_267:
  if ((v117 & 0x2000) == 0)
  {
LABEL_268:
    v118 = v60;
    goto LABEL_285;
  }

LABEL_278:
  if (*a3 <= v60)
  {
    v60 = sub_225EB68(a3, v60);
  }

  v122 = *(a1 + 1116);
  *v60 = 952;
  v60[2] = v122;
  if (v122 > 0x7F)
  {
    v60[2] = v122 | 0x80;
    v123 = v122 >> 7;
    v60[3] = v122 >> 7;
    v118 = v60 + 4;
    if (v122 >= 0x4000)
    {
      LOBYTE(v124) = v60[3];
      do
      {
        *(v118 - 1) = v124 | 0x80;
        v124 = v123 >> 7;
        *v118++ = v123 >> 7;
        v125 = v123 >> 14;
        v123 >>= 7;
      }

      while (v125);
    }
  }

  else
  {
    v118 = v60 + 3;
  }

LABEL_285:
  if ((v117 & 0x4000) != 0)
  {
    if (*a3 <= v118)
    {
      v118 = sub_225EB68(a3, v118);
    }

    v127 = *(a1 + 1120);
    *v118 = 960;
    v118[2] = v127;
    if (v127 > 0x7F)
    {
      v118[2] = v127 | 0x80;
      v128 = v127 >> 7;
      v118[3] = v127 >> 7;
      v126 = v118 + 4;
      if (v127 >= 0x4000)
      {
        LOBYTE(v118) = v118[3];
        do
        {
          *(v126 - 1) = v118 | 0x80;
          LODWORD(v118) = v128 >> 7;
          *v126++ = v128 >> 7;
          v129 = v128 >> 14;
          v128 >>= 7;
        }

        while (v129);
      }
    }

    else
    {
      v126 = v118 + 3;
    }
  }

  else
  {
    v126 = v118;
  }

  if ((v117 & 0x1000) != 0)
  {
    if (*a3 <= v126)
    {
      v126 = sub_225EB68(a3, v126);
    }

    v130 = *(a1 + 1115);
    *v126 = 968;
    v126[2] = v130;
    v126 += 3;
    if ((v117 & 0x8000) == 0)
    {
LABEL_296:
      if ((v117 & 0x10000) == 0)
      {
        goto LABEL_307;
      }

      goto LABEL_304;
    }
  }

  else if ((v117 & 0x8000) == 0)
  {
    goto LABEL_296;
  }

  if (*a3 <= v126)
  {
    v126 = sub_225EB68(a3, v126);
  }

  v131 = *(a1 + 1124);
  *v126 = 976;
  v126[2] = v131;
  v126 += 3;
  if ((v117 & 0x10000) != 0)
  {
LABEL_304:
    if (*a3 <= v126)
    {
      v126 = sub_225EB68(a3, v126);
    }

    v132 = *(a1 + 1125);
    *v126 = 984;
    v126[2] = v132;
    v126 += 3;
  }

LABEL_307:
  if ((*(a1 + 19) & 0x20) != 0)
  {
    if (*a3 <= v126)
    {
      v126 = sub_225EB68(a3, v126);
    }

    v133 = *(a1 + 904);
    *v126 = 994;
    v134 = *(v133 + 20);
    v126[2] = v134;
    if (v134 > 0x7F)
    {
      v135 = sub_19575D0(v134, v126 + 2);
    }

    else
    {
      v135 = v126 + 3;
    }

    v126 = sub_15CA4CC(v133, v135, a3);
  }

  if ((*(a1 + 26) & 2) != 0)
  {
    if (*a3 <= v126)
    {
      v126 = sub_225EB68(a3, v126);
    }

    v136 = *(a1 + 1126);
    *v126 = 1000;
    v126[2] = v136;
    v126 += 3;
  }

  if ((*(a1 + 19) & 0x40) != 0)
  {
    if (*a3 <= v126)
    {
      v126 = sub_225EB68(a3, v126);
    }

    v137 = *(a1 + 912);
    *v126 = 1010;
    v138 = *(v137 + 20);
    v126[2] = v138;
    if (v138 > 0x7F)
    {
      v139 = sub_19575D0(v138, v126 + 2);
    }

    else
    {
      v139 = v126 + 3;
    }

    v126 = sub_15BAC90(v137, v139, a3);
  }

  v140 = *(a1 + 24);
  if ((v140 & 0x80000) != 0)
  {
    if (*a3 <= v126)
    {
      v126 = sub_225EB68(a3, v126);
    }

    v142 = *(a1 + 1128);
    *v126 = 1016;
    v126[2] = v142;
    if (v142 > 0x7F)
    {
      v126[2] = v142 | 0x80;
      v143 = v142 >> 7;
      v126[3] = v142 >> 7;
      v141 = v126 + 4;
      if (v142 >= 0x4000)
      {
        LOBYTE(v126) = v126[3];
        do
        {
          *(v141 - 1) = v126 | 0x80;
          LODWORD(v126) = v143 >> 7;
          *v141++ = v143 >> 7;
          v144 = v143 >> 14;
          v143 >>= 7;
        }

        while (v144);
      }
    }

    else
    {
      v141 = v126 + 3;
    }
  }

  else
  {
    v141 = v126;
  }

  if ((v140 & 0x40000) != 0)
  {
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v145 = *(a1 + 1127);
    *v141 = 1160;
    v141[2] = v145;
    v141 += 3;
  }

  v146 = *(a1 + 312);
  if (v146)
  {
    for (jj = 0; jj != v146; ++jj)
    {
      if (*a3 <= v141)
      {
        v141 = sub_225EB68(a3, v141);
      }

      v148 = *(*(a1 + 320) + 8 * jj + 8);
      *v141 = 1170;
      v149 = *(v148 + 20);
      v141[2] = v149;
      if (v149 > 0x7F)
      {
        v150 = sub_19575D0(v149, v141 + 2);
      }

      else
      {
        v150 = v141 + 3;
      }

      v141 = sub_15BF7B0(v148, v150, a3);
    }
  }

  v151 = *(a1 + 336);
  if (v151)
  {
    for (kk = 0; kk != v151; ++kk)
    {
      if (*a3 <= v141)
      {
        v141 = sub_225EB68(a3, v141);
      }

      v153 = *(*(a1 + 344) + 8 * kk + 8);
      *v141 = 1178;
      v154 = *(v153 + 20);
      v141[2] = v154;
      if (v154 > 0x7F)
      {
        v155 = sub_19575D0(v154, v141 + 2);
      }

      else
      {
        v155 = v141 + 3;
      }

      v141 = sub_157926C(v153, v155, a3);
    }
  }

  v156 = *(a1 + 360);
  if (v156)
  {
    for (mm = 0; mm != v156; ++mm)
    {
      if (*a3 <= v141)
      {
        v141 = sub_225EB68(a3, v141);
      }

      v158 = *(*(a1 + 368) + 8 * mm + 8);
      *v141 = 1186;
      v159 = *(v158 + 20);
      v141[2] = v159;
      if (v159 > 0x7F)
      {
        v160 = sub_19575D0(v159, v141 + 2);
      }

      else
      {
        v160 = v141 + 3;
      }

      v141 = sub_157926C(v158, v160, a3);
    }
  }

  v161 = *(a1 + 16);
  if ((v161 & 0x80000000) == 0)
  {
    if ((v161 & 0x40) == 0)
    {
      goto LABEL_365;
    }

    goto LABEL_364;
  }

  if (*a3 <= v141)
  {
    v141 = sub_225EB68(a3, v141);
  }

  v165 = *(a1 + 920);
  *v141 = 1194;
  v166 = *(v165 + 20);
  v141[2] = v166;
  if (v166 > 0x7F)
  {
    v167 = sub_19575D0(v166, v141 + 2);
  }

  else
  {
    v167 = v141 + 3;
  }

  v141 = sub_15B6D94(v165, v167, a3);
  if ((v161 & 0x40) != 0)
  {
LABEL_364:
    v141 = sub_128AEEC(a3, 70, *(a1 + 720) & 0xFFFFFFFFFFFFFFFELL, v141);
  }

LABEL_365:
  if (*(a1 + 20))
  {
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v162 = *(a1 + 928);
    *v141 = 1210;
    v163 = *(v162 + 20);
    v141[2] = v163;
    if (v163 > 0x7F)
    {
      v164 = sub_19575D0(v163, v141 + 2);
    }

    else
    {
      v164 = v141 + 3;
    }

    v141 = sub_15B9FC4(v162, v164, a3);
  }

  if ((*(a1 + 26) & 0x10) != 0)
  {
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v168 = *(a1 + 1132);
    *v141 = 1216;
    v141[2] = v168;
    v141 += 3;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v169 = *(a1 + 936);
    *v141 = 1226;
    v170 = *(v169 + 20);
    v141[2] = v170;
    if (v170 > 0x7F)
    {
      v171 = sub_19575D0(v170, v141 + 2);
    }

    else
    {
      v171 = v141 + 3;
    }

    v141 = sub_15B9FC4(v169, v171, a3);
  }

  v172 = *(a1 + 24);
  if ((v172 & 0x200000) != 0)
  {
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v173 = *(a1 + 1133);
    *v141 = 1232;
    v141[2] = v173;
    v141 += 3;
  }

  if ((v172 & 0x400000) != 0)
  {
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v174 = *(a1 + 1134);
    *v141 = 1240;
    v141[2] = v174;
    v141 += 3;
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v175 = *(a1 + 944);
    *v141 = 1250;
    v176 = *(v175 + 20);
    v141[2] = v176;
    if (v176 > 0x7F)
    {
      v177 = sub_19575D0(v176, v141 + 2);
    }

    else
    {
      v177 = v141 + 3;
    }

    v141 = sub_15C0EC4(v175, v177, a3);
  }

  v178 = *(a1 + 24);
  if ((v178 & 0x800000) != 0)
  {
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v179 = *(a1 + 1135);
    *v141 = 1256;
    v141[2] = v179;
    v141 += 3;
    if ((v178 & 0x2000000) == 0)
    {
LABEL_404:
      if ((v178 & 0x4000000) == 0)
      {
        goto LABEL_415;
      }

      goto LABEL_412;
    }
  }

  else if ((v178 & 0x2000000) == 0)
  {
    goto LABEL_404;
  }

  if (*a3 <= v141)
  {
    v141 = sub_225EB68(a3, v141);
  }

  v180 = *(a1 + 1144);
  *v141 = 1264;
  v141[2] = v180;
  v141 += 3;
  if ((v178 & 0x4000000) != 0)
  {
LABEL_412:
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v181 = *(a1 + 1145);
    *v141 = 1272;
    v141[2] = v181;
    v141 += 3;
  }

LABEL_415:
  v182 = *(a1 + 384);
  if (v182)
  {
    for (nn = 0; nn != v182; ++nn)
    {
      if (*a3 <= v141)
      {
        v141 = sub_225EB68(a3, v141);
      }

      v184 = *(*(a1 + 392) + 8 * nn + 8);
      *v141 = 1410;
      v185 = *(v184 + 20);
      v141[2] = v185;
      if (v185 > 0x7F)
      {
        v186 = sub_19575D0(v185, v141 + 2);
      }

      else
      {
        v186 = v141 + 3;
      }

      v141 = sub_15BB518(v184, v186, a3);
    }
  }

  if ((v178 & 0x8000000) == 0)
  {
    if ((v178 & 0x10000000) == 0)
    {
      goto LABEL_425;
    }

LABEL_430:
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v189 = *(a1 + 1147);
    *v141 = 1456;
    v141[2] = v189;
    v141 += 3;
    if ((v178 & 0x1000000) == 0)
    {
      goto LABEL_426;
    }

    goto LABEL_433;
  }

  if (*a3 <= v141)
  {
    v141 = sub_225EB68(a3, v141);
  }

  v188 = *(a1 + 1146);
  *v141 = 1416;
  v141[2] = v188;
  v141 += 3;
  if ((v178 & 0x10000000) != 0)
  {
    goto LABEL_430;
  }

LABEL_425:
  if ((v178 & 0x1000000) == 0)
  {
LABEL_426:
    v187 = v141;
    goto LABEL_440;
  }

LABEL_433:
  if (*a3 <= v141)
  {
    v141 = sub_225EB68(a3, v141);
  }

  v190 = *(a1 + 1136);
  *v141 = 1464;
  v141[2] = v190;
  if (v190 > 0x7F)
  {
    v141[2] = v190 | 0x80;
    v191 = v190 >> 7;
    v141[3] = v190 >> 7;
    v187 = v141 + 4;
    if (v190 >= 0x4000)
    {
      LOBYTE(v192) = v141[3];
      do
      {
        *(v187 - 1) = v192 | 0x80;
        v192 = v191 >> 7;
        *v187++ = v191 >> 7;
        v193 = v191 >> 14;
        v191 >>= 7;
      }

      while (v193);
    }
  }

  else
  {
    v187 = v141 + 3;
  }

LABEL_440:
  if ((*(a1 + 28) & 2) != 0)
  {
    if (*a3 <= v187)
    {
      v187 = sub_225EB68(a3, v187);
    }

    v195 = *(a1 + 1152);
    *v187 = 1472;
    v187[2] = v195;
    if (v195 > 0x7F)
    {
      v187[2] = v195 | 0x80;
      v196 = v195 >> 7;
      v187[3] = v195 >> 7;
      v194 = v187 + 4;
      if (v195 >= 0x4000)
      {
        LOBYTE(v197) = v187[3];
        do
        {
          *(v194 - 1) = v197 | 0x80;
          v197 = v196 >> 7;
          *v194++ = v196 >> 7;
          v198 = v196 >> 14;
          v196 >>= 7;
        }

        while (v198);
      }
    }

    else
    {
      v194 = v187 + 3;
    }
  }

  else
  {
    v194 = v187;
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v199 = *(a1 + 952);
    *v194 = 1482;
    v200 = *(v199 + 20);
    v194[2] = v200;
    if (v200 > 0x7F)
    {
      v201 = sub_19575D0(v200, v194 + 2);
    }

    else
    {
      v201 = v194 + 3;
    }

    v194 = sub_15B8488(v199, v201, a3);
  }

  v202 = *(a1 + 24);
  if ((v202 & 0x20000000) != 0)
  {
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v203 = *(a1 + 1148);
    *v194 = 1488;
    v194[2] = v203;
    v194 += 3;
  }

  if ((v202 & 0x40000000) != 0)
  {
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v204 = *(a1 + 1149);
    *v194 = 1496;
    v194[2] = v204;
    v194 += 3;
  }

  if ((*(a1 + 16) & 0x80) != 0)
  {
    v194 = sub_128AEEC(a3, 93, *(a1 + 728) & 0xFFFFFFFFFFFFFFFELL, v194);
  }

  if ((*(a1 + 24) & 0x80000000) != 0)
  {
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v205 = *(a1 + 1150);
    *v194 = 1520;
    v194[2] = v205;
    v194 += 3;
  }

  if ((*(a1 + 20) & 0x10) != 0)
  {
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v206 = *(a1 + 960);
    *v194 = 1530;
    v207 = *(v206 + 20);
    v194[2] = v207;
    if (v207 > 0x7F)
    {
      v208 = sub_19575D0(v207, v194 + 2);
    }

    else
    {
      v208 = v194 + 3;
    }

    v194 = sub_15C0EC4(v206, v208, a3);
  }

  if (*(a1 + 17))
  {
    v194 = sub_128AEEC(a3, 96, *(a1 + 736) & 0xFFFFFFFFFFFFFFFELL, v194);
  }

  if ((*(a1 + 20) & 0x20) != 0)
  {
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v209 = *(a1 + 968);
    *v194 = 1674;
    v210 = *(v209 + 20);
    v194[2] = v210;
    if (v210 > 0x7F)
    {
      v211 = sub_19575D0(v210, v194 + 2);
    }

    else
    {
      v211 = v194 + 3;
    }

    v194 = sub_15B7304(v209, v211, a3);
  }

  if (*(a1 + 28))
  {
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v212 = *(a1 + 1151);
    *v194 = 1680;
    v194[2] = v212;
    v194 += 3;
  }

  v213 = *(a1 + 20);
  if ((v213 & 0x40) != 0)
  {
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v214 = *(a1 + 976);
    *v194 = 1690;
    v215 = *(v214 + 20);
    v194[2] = v215;
    if (v215 > 0x7F)
    {
      v216 = sub_19575D0(v215, v194 + 2);
    }

    else
    {
      v216 = v194 + 3;
    }

    v194 = sub_15B6D94(v214, v216, a3);
    if ((v213 & 0x80) == 0)
    {
LABEL_492:
      if ((v213 & 0x100) == 0)
      {
        goto LABEL_512;
      }

      goto LABEL_506;
    }
  }

  else if ((v213 & 0x80) == 0)
  {
    goto LABEL_492;
  }

  if (*a3 <= v194)
  {
    v194 = sub_225EB68(a3, v194);
  }

  v217 = *(a1 + 984);
  *v194 = 1706;
  v218 = *(v217 + 20);
  v194[2] = v218;
  if (v218 > 0x7F)
  {
    v219 = sub_19575D0(v218, v194 + 2);
  }

  else
  {
    v219 = v194 + 3;
  }

  v194 = sub_15B8488(v217, v219, a3);
  if ((v213 & 0x100) != 0)
  {
LABEL_506:
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v220 = *(a1 + 992);
    *v194 = 1714;
    v221 = *(v220 + 20);
    v194[2] = v221;
    if (v221 > 0x7F)
    {
      v222 = sub_19575D0(v221, v194 + 2);
    }

    else
    {
      v222 = v194 + 3;
    }

    v194 = sub_15B8488(v220, v222, a3);
  }

LABEL_512:
  v223 = *(a1 + 28);
  if ((v223 & 0x10) != 0)
  {
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v224 = *(a1 + 1172);
    *v194 = 1728;
    v194[2] = v224;
    v194 += 3;
  }

  if ((v223 & 4) != 0)
  {
    if (*a3 <= v194)
    {
      v194 = sub_225EB68(a3, v194);
    }

    v226 = *(a1 + 1160);
    *v194 = 1736;
    v194[2] = v226;
    if (v226 > 0x7F)
    {
      v194[2] = v226 | 0x80;
      v227 = v226 >> 7;
      v194[3] = v226 >> 7;
      v225 = v194 + 4;
      if (v226 >= 0x4000)
      {
        LOBYTE(v228) = v194[3];
        do
        {
          *(v225 - 1) = v228 | 0x80;
          v228 = v227 >> 7;
          *v225++ = v227 >> 7;
          v229 = v227 >> 14;
          v227 >>= 7;
        }

        while (v229);
      }
    }

    else
    {
      v225 = v194 + 3;
    }
  }

  else
  {
    v225 = v194;
  }

  if ((*(a1 + 21) & 2) != 0)
  {
    if (*a3 <= v225)
    {
      v225 = sub_225EB68(a3, v225);
    }

    v230 = *(a1 + 1000);
    *v225 = 1746;
    v231 = *(v230 + 40);
    v225[2] = v231;
    if (v231 > 0x7F)
    {
      v232 = sub_19575D0(v231, v225 + 2);
    }

    else
    {
      v232 = v225 + 3;
    }

    v225 = sub_15B79E4(v230, v232, a3);
  }

  v233 = *(a1 + 16);
  if ((v233 & 0x200) != 0)
  {
    v225 = sub_128AEEC(a3, 107, *(a1 + 744) & 0xFFFFFFFFFFFFFFFELL, v225);
    if ((v233 & 0x400) == 0)
    {
LABEL_534:
      if ((v233 & 0x800) == 0)
      {
        goto LABEL_536;
      }

      goto LABEL_535;
    }
  }

  else if ((v233 & 0x400) == 0)
  {
    goto LABEL_534;
  }

  v225 = sub_128AEEC(a3, 108, *(a1 + 752) & 0xFFFFFFFFFFFFFFFELL, v225);
  if ((v233 & 0x800) != 0)
  {
LABEL_535:
    v225 = sub_128AEEC(a3, 109, *(a1 + 760) & 0xFFFFFFFFFFFFFFFELL, v225);
  }

LABEL_536:
  v234 = *(a1 + 400);
  if (v234 < 1)
  {
    v237 = v225;
  }

  else
  {
    for (i1 = 0; i1 != v234; ++i1)
    {
      if (*a3 <= v225)
      {
        v225 = sub_225EB68(a3, v225);
      }

      v236 = *(*(a1 + 408) + 8 * i1);
      *v225 = 1776;
      v225[2] = v236;
      if (v236 > 0x7F)
      {
        v225[2] = v236 | 0x80;
        v238 = v236 >> 7;
        v225[3] = v236 >> 7;
        v237 = v225 + 4;
        if (v236 >= 0x4000)
        {
          LOBYTE(v225) = v225[3];
          do
          {
            *(v237 - 1) = v225 | 0x80;
            v225 = (v238 >> 7);
            *v237++ = v238 >> 7;
            v239 = v238 >> 14;
            v238 >>= 7;
          }

          while (v239);
        }
      }

      else
      {
        v237 = v225 + 3;
      }

      v225 = v237;
    }
  }

  v240 = *(a1 + 28);
  if ((v240 & 8) != 0)
  {
    if (*a3 <= v237)
    {
      v237 = sub_225EB68(a3, v237);
    }

    v242 = *(a1 + 1168);
    *v237 = 1784;
    v237[2] = v242;
    if (v242 > 0x7F)
    {
      v237[2] = v242 | 0x80;
      v243 = v242 >> 7;
      v237[3] = v242 >> 7;
      v241 = v237 + 4;
      if (v242 >= 0x4000)
      {
        LOBYTE(v237) = v237[3];
        do
        {
          *(v241 - 1) = v237 | 0x80;
          v237 = (v243 >> 7);
          *v241++ = v243 >> 7;
          v244 = v243 >> 14;
          v243 >>= 7;
        }

        while (v244);
      }
    }

    else
    {
      v241 = v237 + 3;
    }
  }

  else
  {
    v241 = v237;
  }

  if ((v240 & 0x20) != 0)
  {
    if (*a3 <= v241)
    {
      v241 = sub_225EB68(a3, v241);
    }

    v245 = *(a1 + 1173);
    *v241 = 1920;
    v241[2] = v245;
    v241 += 3;
  }

  v246 = *(a1 + 416);
  if (v246 < 1)
  {
    v249 = v241;
  }

  else
  {
    for (i2 = 0; i2 != v246; ++i2)
    {
      if (*a3 <= v241)
      {
        v241 = sub_225EB68(a3, v241);
      }

      v248 = *(*(a1 + 424) + 8 * i2);
      *v241 = 1928;
      v241[2] = v248;
      if (v248 > 0x7F)
      {
        v241[2] = v248 | 0x80;
        v250 = v248 >> 7;
        v241[3] = v248 >> 7;
        v249 = v241 + 4;
        if (v248 >= 0x4000)
        {
          LOBYTE(v251) = v241[3];
          do
          {
            *(v249 - 1) = v251 | 0x80;
            v251 = v250 >> 7;
            *v249++ = v250 >> 7;
            v252 = v250 >> 14;
            v250 >>= 7;
          }

          while (v252);
        }
      }

      else
      {
        v249 = v241 + 3;
      }

      v241 = v249;
    }
  }

  if ((v240 & 0x40) != 0)
  {
    if (*a3 <= v249)
    {
      v249 = sub_225EB68(a3, v249);
    }

    v253 = *(a1 + 1174);
    *v249 = 1936;
    v249[2] = v253;
    v249 += 3;
  }

  if ((*(a1 + 17) & 0x10) != 0)
  {
    v249 = sub_128AEEC(a3, 115, *(a1 + 768) & 0xFFFFFFFFFFFFFFFELL, v249);
  }

  if ((*(a1 + 21) & 4) != 0)
  {
    if (*a3 <= v249)
    {
      v249 = sub_225EB68(a3, v249);
    }

    v254 = *(a1 + 1008);
    *v249 = 1954;
    v255 = *(v254 + 20);
    v249[2] = v255;
    if (v255 > 0x7F)
    {
      v256 = sub_19575D0(v255, v249 + 2);
    }

    else
    {
      v256 = v249 + 3;
    }

    v249 = sub_16D65CC(v254, v256, a3);
  }

  v257 = *(a1 + 28);
  if ((v257 & 0x80) != 0)
  {
    if (*a3 <= v249)
    {
      v249 = sub_225EB68(a3, v249);
    }

    v258 = *(a1 + 1175);
    *v249 = 1960;
    v249[2] = v258;
    v249 += 3;
  }

  if ((v257 & 0x100) != 0)
  {
    if (*a3 <= v249)
    {
      v249 = sub_225EB68(a3, v249);
    }

    v259 = *(a1 + 1176);
    *v249 = 1968;
    v249[2] = v259;
    v249 += 3;
  }

  v260 = *(a1 + 432);
  if (v260 < 1)
  {
    v263 = v249;
  }

  else
  {
    for (i3 = 0; i3 != v260; ++i3)
    {
      if (*a3 <= v249)
      {
        v249 = sub_225EB68(a3, v249);
      }

      v262 = *(*(a1 + 440) + 4 * i3);
      *v249 = 1976;
      v249[2] = v262;
      if (v262 > 0x7F)
      {
        v249[2] = v262 | 0x80;
        v264 = v262 >> 7;
        v249[3] = v262 >> 7;
        v263 = v249 + 4;
        if (v262 >= 0x4000)
        {
          LOBYTE(v265) = v249[3];
          do
          {
            *(v263 - 1) = v265 | 0x80;
            v265 = v264 >> 7;
            *v263++ = v264 >> 7;
            v266 = v264 >> 14;
            v264 >>= 7;
          }

          while (v266);
        }
      }

      else
      {
        v263 = v249 + 3;
      }

      v249 = v263;
    }
  }

  if ((v257 & 0x200) != 0)
  {
    if (*a3 <= v263)
    {
      v263 = sub_225EB68(a3, v263);
    }

    v267 = *(a1 + 1177);
    *v263 = 1984;
    v263[2] = v267;
    v263 += 3;
  }

  if ((*(a1 + 17) & 0x20) != 0)
  {
    v263 = sub_128AEEC(a3, 121, *(a1 + 776) & 0xFFFFFFFFFFFFFFFELL, v263);
  }

  if ((*(a1 + 29) & 4) != 0)
  {
    if (*a3 <= v263)
    {
      v263 = sub_225EB68(a3, v263);
    }

    v268 = *(a1 + 1178);
    *v263 = 2000;
    v263[2] = v268;
    v263 += 3;
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    v263 = sub_128AEEC(a3, 123, *(a1 + 784) & 0xFFFFFFFFFFFFFFFELL, v263);
  }

  v269 = *(a1 + 20);
  if ((v269 & 0x800) != 0)
  {
    if (*a3 <= v263)
    {
      v263 = sub_225EB68(a3, v263);
    }

    v270 = *(a1 + 1016);
    *v263 = 2018;
    v271 = *(v270 + 20);
    v263[2] = v271;
    if (v271 > 0x7F)
    {
      v272 = sub_19575D0(v271, v263 + 2);
    }

    else
    {
      v272 = v263 + 3;
    }

    v263 = sub_15BFCD8(v270, v272, a3);
  }

  v273 = *(a1 + 448);
  if (v273 < 1)
  {
    v276 = v263;
  }

  else
  {
    for (i4 = 0; i4 != v273; ++i4)
    {
      if (*a3 <= v263)
      {
        v263 = sub_225EB68(a3, v263);
      }

      v275 = *(*(a1 + 456) + 8 * i4);
      *v263 = 2024;
      v263[2] = v275;
      if (v275 > 0x7F)
      {
        v263[2] = v275 | 0x80;
        v277 = v275 >> 7;
        v263[3] = v275 >> 7;
        v276 = v263 + 4;
        if (v275 >= 0x4000)
        {
          LOBYTE(v263) = v263[3];
          do
          {
            *(v276 - 1) = v263 | 0x80;
            v263 = (v277 >> 7);
            *v276++ = v277 >> 7;
            v278 = v277 >> 14;
            v277 >>= 7;
          }

          while (v278);
        }
      }

      else
      {
        v276 = v263 + 3;
      }

      v263 = v276;
    }
  }

  if ((v269 & 0x1000) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v279 = *(a1 + 1024);
    *v276 = 2034;
    v280 = *(v279 + 20);
    v276[2] = v280;
    if (v280 > 0x7F)
    {
      v281 = sub_19575D0(v280, v276 + 2);
    }

    else
    {
      v281 = v276 + 3;
    }

    v276 = sub_15B6D94(v279, v281, a3);
  }

  if ((v269 & 0x2000) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v282 = *(a1 + 1032);
    *v276 = 2042;
    v283 = *(v282 + 20);
    v276[2] = v283;
    if (v283 > 0x7F)
    {
      v284 = sub_19575D0(v283, v276 + 2);
    }

    else
    {
      v284 = v276 + 3;
    }

    v276 = sub_15B9FC4(v282, v284, a3);
  }

  v285 = *(a1 + 28);
  if ((v285 & 0x800) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v286 = *(a1 + 1179);
    *v276 = 2176;
    v276[2] = v286;
    v276 += 3;
  }

  if ((v285 & 0x1000) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v287 = *(a1 + 1180);
    *v276 = 2184;
    v276[2] = v287;
    v276 += 3;
  }

  v288 = *(a1 + 472);
  if (v288)
  {
    for (i5 = 0; i5 != v288; ++i5)
    {
      if (*a3 <= v276)
      {
        v276 = sub_225EB68(a3, v276);
      }

      v290 = *(*(a1 + 480) + 8 * i5 + 8);
      *v276 = 2194;
      v291 = *(v290 + 20);
      v276[2] = v291;
      if (v291 > 0x7F)
      {
        v292 = sub_19575D0(v291, v276 + 2);
      }

      else
      {
        v292 = v276 + 3;
      }

      v276 = sub_157A9F4(v290, v292, a3);
    }
  }

  if ((v285 & 0x2000) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v293 = *(a1 + 1181);
    *v276 = 2200;
    v276[2] = v293;
    v276 += 3;
    if ((v285 & 0x4000) == 0)
    {
LABEL_672:
      if ((v285 & 0x8000) == 0)
      {
        goto LABEL_673;
      }

      goto LABEL_683;
    }
  }

  else if ((v285 & 0x4000) == 0)
  {
    goto LABEL_672;
  }

  if (*a3 <= v276)
  {
    v276 = sub_225EB68(a3, v276);
  }

  v294 = *(a1 + 1182);
  *v276 = 2208;
  v276[2] = v294;
  v276 += 3;
  if ((v285 & 0x8000) == 0)
  {
LABEL_673:
    if ((v285 & 0x10000) == 0)
    {
      goto LABEL_674;
    }

    goto LABEL_686;
  }

LABEL_683:
  if (*a3 <= v276)
  {
    v276 = sub_225EB68(a3, v276);
  }

  v295 = *(a1 + 1183);
  *v276 = 2216;
  v276[2] = v295;
  v276 += 3;
  if ((v285 & 0x10000) == 0)
  {
LABEL_674:
    if ((v285 & 0x20000) == 0)
    {
      goto LABEL_675;
    }

    goto LABEL_689;
  }

LABEL_686:
  if (*a3 <= v276)
  {
    v276 = sub_225EB68(a3, v276);
  }

  v296 = *(a1 + 1184);
  *v276 = 2225;
  *(v276 + 2) = v296;
  v276 += 10;
  if ((v285 & 0x20000) == 0)
  {
LABEL_675:
    if ((v285 & 0x40000) == 0)
    {
      goto LABEL_695;
    }

    goto LABEL_692;
  }

LABEL_689:
  if (*a3 <= v276)
  {
    v276 = sub_225EB68(a3, v276);
  }

  v297 = *(a1 + 1192);
  *v276 = 2232;
  v276[2] = v297;
  v276 += 3;
  if ((v285 & 0x40000) != 0)
  {
LABEL_692:
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v298 = *(a1 + 1193);
    *v276 = 2240;
    v276[2] = v298;
    v276 += 3;
  }

LABEL_695:
  v299 = *(a1 + 20);
  if ((v299 & 0x4000) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v300 = *(a1 + 1040);
    *v276 = 2250;
    v301 = *(v300 + 20);
    v276[2] = v301;
    if (v301 > 0x7F)
    {
      v302 = sub_19575D0(v301, v276 + 2);
    }

    else
    {
      v302 = v276 + 3;
    }

    v276 = sub_132C2CC(v300, v302, a3);
  }

  if ((v299 & 0x8000) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v303 = *(a1 + 1048);
    *v276 = 2258;
    v304 = *(v303 + 20);
    v276[2] = v304;
    if (v304 > 0x7F)
    {
      v305 = sub_19575D0(v304, v276 + 2);
    }

    else
    {
      v305 = v276 + 3;
    }

    v276 = sub_132D450(v303, v305, a3);
  }

  v306 = *(a1 + 28);
  if ((v306 & 0x80000) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v307 = *(a1 + 1194);
    *v276 = 2264;
    v276[2] = v307;
    v276 += 3;
    if ((v306 & 0x100000) == 0)
    {
LABEL_711:
      if ((v306 & 0x200000) == 0)
      {
        goto LABEL_722;
      }

      goto LABEL_719;
    }
  }

  else if ((v306 & 0x100000) == 0)
  {
    goto LABEL_711;
  }

  if (*a3 <= v276)
  {
    v276 = sub_225EB68(a3, v276);
  }

  v308 = *(a1 + 1195);
  *v276 = 2272;
  v276[2] = v308;
  v276 += 3;
  if ((v306 & 0x200000) != 0)
  {
LABEL_719:
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v309 = *(a1 + 1196);
    *v276 = 2280;
    v276[2] = v309;
    v276 += 3;
  }

LABEL_722:
  v310 = *(a1 + 496);
  if (v310)
  {
    for (i6 = 0; i6 != v310; ++i6)
    {
      if (*a3 <= v276)
      {
        v276 = sub_225EB68(a3, v276);
      }

      v312 = *(*(a1 + 504) + 8 * i6 + 8);
      *v276 = 2290;
      v313 = *(v312 + 20);
      v276[2] = v313;
      if (v313 > 0x7F)
      {
        v314 = sub_19575D0(v313, v276 + 2);
      }

      else
      {
        v314 = v276 + 3;
      }

      v276 = sub_16EEE1C(v312, v314, a3);
    }
  }

  if ((v306 & 0x400000) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v315 = *(a1 + 1197);
    *v276 = 2296;
    v276[2] = v315;
    v276 += 3;
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    v276 = sub_128AEEC(a3, 144, *(a1 + 792) & 0xFFFFFFFFFFFFFFFELL, v276);
  }

  if (*(a1 + 22))
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v316 = *(a1 + 1056);
    *v276 = 2442;
    v317 = *(v316 + 44);
    v276[2] = v317;
    if (v317 > 0x7F)
    {
      v318 = sub_19575D0(v317, v276 + 2);
    }

    else
    {
      v318 = v276 + 3;
    }

    v276 = sub_153B1D4(v316, v318, a3);
  }

  v319 = *(a1 + 28);
  if ((v319 & 0x800000) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v320 = *(a1 + 1198);
    *v276 = 2448;
    v276[2] = v320;
    v276 += 3;
    if ((v319 & 0x1000000) == 0)
    {
LABEL_745:
      if ((v319 & 0x2000000) == 0)
      {
        goto LABEL_746;
      }

      goto LABEL_755;
    }
  }

  else if ((v319 & 0x1000000) == 0)
  {
    goto LABEL_745;
  }

  if (*a3 <= v276)
  {
    v276 = sub_225EB68(a3, v276);
  }

  v321 = *(a1 + 1199);
  *v276 = 2456;
  v276[2] = v321;
  v276 += 3;
  if ((v319 & 0x2000000) == 0)
  {
LABEL_746:
    if ((v319 & 0x4000000) == 0)
    {
      goto LABEL_747;
    }

    goto LABEL_758;
  }

LABEL_755:
  if (*a3 <= v276)
  {
    v276 = sub_225EB68(a3, v276);
  }

  v322 = *(a1 + 1200);
  *v276 = 2464;
  v276[2] = v322;
  v276 += 3;
  if ((v319 & 0x4000000) == 0)
  {
LABEL_747:
    if ((v319 & 0x8000000) == 0)
    {
      goto LABEL_764;
    }

    goto LABEL_761;
  }

LABEL_758:
  if (*a3 <= v276)
  {
    v276 = sub_225EB68(a3, v276);
  }

  v323 = *(a1 + 1201);
  *v276 = 2472;
  v276[2] = v323;
  v276 += 3;
  if ((v319 & 0x8000000) != 0)
  {
LABEL_761:
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v324 = *(a1 + 1202);
    *v276 = 2480;
    v276[2] = v324;
    v276 += 3;
  }

LABEL_764:
  if ((*(a1 + 22) & 2) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v325 = *(a1 + 1064);
    *v276 = 2490;
    v326 = *(v325 + 40);
    v276[2] = v326;
    if (v326 > 0x7F)
    {
      v327 = sub_19575D0(v326, v276 + 2);
    }

    else
    {
      v327 = v276 + 3;
    }

    v276 = sub_167E8A4(v325, v327, a3);
  }

  if ((*(a1 + 31) & 0x10) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v328 = *(a1 + 1203);
    *v276 = 2496;
    v276[2] = v328;
    v276 += 3;
  }

  v329 = *(a1 + 16);
  if ((v329 & 0x10000) != 0)
  {
    v276 = sub_128AEEC(a3, 153, *(a1 + 800) & 0xFFFFFFFFFFFFFFFELL, v276);
  }

  if ((v329 & 0x20000) != 0)
  {
    v276 = sub_128AEEC(a3, 154, *(a1 + 808) & 0xFFFFFFFFFFFFFFFELL, v276);
  }

  if ((*(a1 + 31) & 0x20) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v330 = *(a1 + 1204);
    *v276 = 2520;
    v276[2] = v330;
    v276 += 3;
  }

  v331 = *(a1 + 16);
  if ((v331 & 0x40000) != 0)
  {
    v276 = sub_128AEEC(a3, 156, *(a1 + 816) & 0xFFFFFFFFFFFFFFFELL, v276);
    if ((v331 & 0x80000) == 0)
    {
LABEL_785:
      if ((v331 & 0x100000) == 0)
      {
        goto LABEL_786;
      }

      goto LABEL_813;
    }
  }

  else if ((v331 & 0x80000) == 0)
  {
    goto LABEL_785;
  }

  v276 = sub_128AEEC(a3, 157, *(a1 + 824) & 0xFFFFFFFFFFFFFFFELL, v276);
  if ((v331 & 0x100000) == 0)
  {
LABEL_786:
    if ((v331 & 0x200000) == 0)
    {
      goto LABEL_788;
    }

    goto LABEL_787;
  }

LABEL_813:
  v276 = sub_128AEEC(a3, 158, *(a1 + 832) & 0xFFFFFFFFFFFFFFFELL, v276);
  if ((v331 & 0x200000) != 0)
  {
LABEL_787:
    v276 = sub_128AEEC(a3, 159, *(a1 + 840) & 0xFFFFFFFFFFFFFFFELL, v276);
  }

LABEL_788:
  v332 = *(a1 + 28);
  if ((v332 & 0x40000000) != 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v333 = *(a1 + 1205);
    *v276 = 2688;
    v276[2] = v333;
    v276 += 3;
  }

  if (v332 < 0)
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v334 = *(a1 + 1206);
    *v276 = 2696;
    v276[2] = v334;
    v276 += 3;
  }

  if (*(a1 + 32))
  {
    if (*a3 <= v276)
    {
      v276 = sub_225EB68(a3, v276);
    }

    v335 = *(a1 + 1207);
    *v276 = 2704;
    v276[2] = v335;
    v276 += 3;
  }

  v336 = *(a1 + 512);
  if (v336 < 1)
  {
    v339 = v276;
  }

  else
  {
    for (i7 = 0; i7 != v336; ++i7)
    {
      if (*a3 <= v276)
      {
        v276 = sub_225EB68(a3, v276);
      }

      v338 = *(*(a1 + 520) + 8 * i7);
      *v276 = 2712;
      v276[2] = v338;
      if (v338 > 0x7F)
      {
        v276[2] = v338 | 0x80;
        v340 = v338 >> 7;
        v276[3] = v338 >> 7;
        v339 = v276 + 4;
        if (v338 >= 0x4000)
        {
          LOBYTE(v341) = v276[3];
          do
          {
            *(v339 - 1) = v341 | 0x80;
            v341 = v340 >> 7;
            *v339++ = v340 >> 7;
            v342 = v340 >> 14;
            v340 >>= 7;
          }

          while (v342);
        }
      }

      else
      {
        v339 = v276 + 3;
      }

      v276 = v339;
    }
  }

  v343 = *(a1 + 528);
  if (v343 < 1)
  {
    v346 = v339;
  }

  else
  {
    for (i8 = 0; i8 != v343; ++i8)
    {
      if (*a3 <= v339)
      {
        v339 = sub_225EB68(a3, v339);
      }

      v345 = *(*(a1 + 536) + 8 * i8);
      *v339 = 2720;
      v339[2] = v345;
      if (v345 > 0x7F)
      {
        v339[2] = v345 | 0x80;
        v347 = v345 >> 7;
        v339[3] = v345 >> 7;
        v346 = v339 + 4;
        if (v345 >= 0x4000)
        {
          LOBYTE(v348) = v339[3];
          do
          {
            *(v346 - 1) = v348 | 0x80;
            v348 = v347 >> 7;
            *v346++ = v347 >> 7;
            v349 = v347 >> 14;
            v347 >>= 7;
          }

          while (v349);
        }
      }

      else
      {
        v346 = v339 + 3;
      }

      v339 = v346;
    }
  }

  v350 = *(a1 + 544);
  if (v350 < 1)
  {
    v353 = v346;
  }

  else
  {
    for (i9 = 0; i9 != v350; ++i9)
    {
      if (*a3 <= v346)
      {
        v346 = sub_225EB68(a3, v346);
      }

      v352 = *(*(a1 + 552) + 8 * i9);
      *v346 = 2728;
      v346[2] = v352;
      if (v352 > 0x7F)
      {
        v346[2] = v352 | 0x80;
        v354 = v352 >> 7;
        v346[3] = v352 >> 7;
        v353 = v346 + 4;
        if (v352 >= 0x4000)
        {
          LOBYTE(v346) = v346[3];
          do
          {
            *(v353 - 1) = v346 | 0x80;
            v346 = (v354 >> 7);
            *v353++ = v354 >> 7;
            v355 = v354 >> 14;
            v354 >>= 7;
          }

          while (v355);
        }
      }

      else
      {
        v353 = v346 + 3;
      }

      v346 = v353;
    }
  }

  v356 = *(a1 + 560);
  if (v356 < 1)
  {
    v359 = v353;
  }

  else
  {
    for (i10 = 0; i10 != v356; ++i10)
    {
      if (*a3 <= v353)
      {
        v353 = sub_225EB68(a3, v353);
      }

      v358 = *(*(a1 + 568) + 8 * i10);
      *v353 = 2736;
      v353[2] = v358;
      if (v358 > 0x7F)
      {
        v353[2] = v358 | 0x80;
        v360 = v358 >> 7;
        v353[3] = v358 >> 7;
        v359 = v353 + 4;
        if (v358 >= 0x4000)
        {
          LOBYTE(v361) = v353[3];
          do
          {
            *(v359 - 1) = v361 | 0x80;
            v361 = v360 >> 7;
            *v359++ = v360 >> 7;
            v362 = v360 >> 14;
            v360 >>= 7;
          }

          while (v362);
        }
      }

      else
      {
        v359 = v353 + 3;
      }

      v353 = v359;
    }
  }

  v363 = *(a1 + 576);
  if (v363 < 1)
  {
    v366 = v359;
  }

  else
  {
    for (i11 = 0; i11 != v363; ++i11)
    {
      if (*a3 <= v359)
      {
        v359 = sub_225EB68(a3, v359);
      }

      v365 = *(*(a1 + 584) + 8 * i11);
      *v359 = 2744;
      v359[2] = v365;
      if (v365 > 0x7F)
      {
        v359[2] = v365 | 0x80;
        v367 = v365 >> 7;
        v359[3] = v365 >> 7;
        v366 = v359 + 4;
        if (v365 >= 0x4000)
        {
          LOBYTE(v359) = v359[3];
          do
          {
            *(v366 - 1) = v359 | 0x80;
            v359 = (v367 >> 7);
            *v366++ = v367 >> 7;
            v368 = v367 >> 14;
            v367 >>= 7;
          }

          while (v368);
        }
      }

      else
      {
        v366 = v359 + 3;
      }

      v359 = v366;
    }
  }

  v369 = *(a1 + 592);
  if (v369 < 1)
  {
    v372 = v366;
  }

  else
  {
    for (i12 = 0; i12 != v369; ++i12)
    {
      if (*a3 <= v366)
      {
        v366 = sub_225EB68(a3, v366);
      }

      v371 = *(*(a1 + 600) + 8 * i12);
      *v366 = 2752;
      v366[2] = v371;
      if (v371 > 0x7F)
      {
        v366[2] = v371 | 0x80;
        v373 = v371 >> 7;
        v366[3] = v371 >> 7;
        v372 = v366 + 4;
        if (v371 >= 0x4000)
        {
          LOBYTE(v366) = v366[3];
          do
          {
            *(v372 - 1) = v366 | 0x80;
            v366 = (v373 >> 7);
            *v372++ = v373 >> 7;
            v374 = v373 >> 14;
            v373 >>= 7;
          }

          while (v374);
        }
      }

      else
      {
        v372 = v366 + 3;
      }

      v366 = v372;
    }
  }

  v375 = *(a1 + 608);
  if (v375 < 1)
  {
    v378 = v372;
  }

  else
  {
    for (i13 = 0; i13 != v375; ++i13)
    {
      if (*a3 <= v372)
      {
        v372 = sub_225EB68(a3, v372);
      }

      v377 = *(*(a1 + 616) + 4 * i13);
      *v372 = 2760;
      v372[2] = v377;
      if (v377 > 0x7F)
      {
        v372[2] = v377 | 0x80;
        v379 = v377 >> 7;
        v372[3] = v377 >> 7;
        v378 = v372 + 4;
        if (v377 >= 0x4000)
        {
          LOBYTE(v380) = v372[3];
          do
          {
            *(v378 - 1) = v380 | 0x80;
            v380 = v379 >> 7;
            *v378++ = v379 >> 7;
            v381 = v379 >> 14;
            v379 >>= 7;
          }

          while (v381);
        }
      }

      else
      {
        v378 = v372 + 3;
      }

      v372 = v378;
    }
  }

  if ((*(a1 + 18) & 0x40) != 0)
  {
    v378 = sub_128AEEC(a3, 170, *(a1 + 848) & 0xFFFFFFFFFFFFFFFELL, v378);
  }

  v382 = *(a1 + 624);
  if (v382 < 1)
  {
    v385 = v378;
  }

  else
  {
    for (i14 = 0; i14 != v382; ++i14)
    {
      if (*a3 <= v378)
      {
        v378 = sub_225EB68(a3, v378);
      }

      v384 = *(*(a1 + 632) + 8 * i14);
      *v378 = 2776;
      v378[2] = v384;
      if (v384 > 0x7F)
      {
        v378[2] = v384 | 0x80;
        v386 = v384 >> 7;
        v378[3] = v384 >> 7;
        v385 = v378 + 4;
        if (v384 >= 0x4000)
        {
          LOBYTE(v387) = v378[3];
          do
          {
            *(v385 - 1) = v387 | 0x80;
            v387 = v386 >> 7;
            *v385++ = v386 >> 7;
            v388 = v386 >> 14;
            v386 >>= 7;
          }

          while (v388);
        }
      }

      else
      {
        v385 = v378 + 3;
      }

      v378 = v385;
    }
  }

  if ((*(a1 + 22) & 4) != 0)
  {
    if (*a3 <= v385)
    {
      v385 = sub_225EB68(a3, v385);
    }

    v389 = *(a1 + 1072);
    *v385 = 2786;
    v390 = *(v389 + 40);
    v385[2] = v390;
    if (v390 > 0x7F)
    {
      v391 = sub_19575D0(v390, v385 + 2);
    }

    else
    {
      v391 = v385 + 3;
    }

    v385 = sub_167E8A4(v389, v391, a3);
  }

  if ((*(a1 + 32) & 8) != 0)
  {
    if (*a3 <= v385)
    {
      v385 = sub_225EB68(a3, v385);
    }

    v392 = *(a1 + 1210);
    *v385 = 2792;
    v385[2] = v392;
    v385 += 3;
  }

  if ((*(a1 + 22) & 8) != 0)
  {
    if (*a3 <= v385)
    {
      v385 = sub_225EB68(a3, v385);
    }

    v393 = *(a1 + 1080);
    *v385 = 2802;
    v394 = *(v393 + 44);
    v385[2] = v394;
    if (v394 > 0x7F)
    {
      v395 = sub_19575D0(v394, v385 + 2);
    }

    else
    {
      v395 = v385 + 3;
    }

    v385 = sub_16E5070(v393, v395, a3);
  }

  v396 = *(a1 + 640);
  if (v396 < 1)
  {
    v399 = v385;
  }

  else
  {
    for (i15 = 0; i15 != v396; ++i15)
    {
      if (*a3 <= v385)
      {
        v385 = sub_225EB68(a3, v385);
      }

      v398 = *(*(a1 + 648) + 4 * i15);
      *v385 = 2808;
      v385[2] = v398;
      if (v398 > 0x7F)
      {
        v385[2] = v398 | 0x80;
        v400 = v398 >> 7;
        v385[3] = v398 >> 7;
        v399 = v385 + 4;
        if (v398 >= 0x4000)
        {
          LOBYTE(v385) = v385[3];
          do
          {
            *(v399 - 1) = v385 | 0x80;
            v385 = (v400 >> 7);
            *v399++ = v400 >> 7;
            v401 = v400 >> 14;
            v400 >>= 7;
          }

          while (v401);
        }
      }

      else
      {
        v399 = v385 + 3;
      }

      v385 = v399;
    }
  }

  v402 = *(a1 + 32);
  if ((v402 & 0x10) != 0)
  {
    if (*a3 <= v399)
    {
      v399 = sub_225EB68(a3, v399);
    }

    v403 = *(a1 + 1211);
    *v399 = 2944;
    v399[2] = v403;
    v399 += 3;
  }

  if ((v402 & 0x20) != 0)
  {
    if (*a3 <= v399)
    {
      v399 = sub_225EB68(a3, v399);
    }

    v404 = *(a1 + 1212);
    *v399 = 2952;
    v399[2] = v404;
    v399 += 3;
  }

  v405 = *(a1 + 656);
  if (v405 < 1)
  {
    v408 = v399;
  }

  else
  {
    for (i16 = 0; i16 != v405; ++i16)
    {
      if (*a3 <= v399)
      {
        v399 = sub_225EB68(a3, v399);
      }

      v407 = *(*(a1 + 664) + 8 * i16);
      *v399 = 2960;
      v399[2] = v407;
      if (v407 > 0x7F)
      {
        v399[2] = v407 | 0x80;
        v409 = v407 >> 7;
        v399[3] = v407 >> 7;
        v408 = v399 + 4;
        if (v407 >= 0x4000)
        {
          LOBYTE(v399) = v399[3];
          do
          {
            *(v408 - 1) = v399 | 0x80;
            v399 = (v409 >> 7);
            *v408++ = v409 >> 7;
            v410 = v409 >> 14;
            v409 >>= 7;
          }

          while (v410);
        }
      }

      else
      {
        v408 = v399 + 3;
      }

      v399 = v408;
    }
  }

  if ((*(a1 + 18) & 0x80) != 0)
  {
    v408 = sub_128AEEC(a3, 179, *(a1 + 856) & 0xFFFFFFFFFFFFFFFELL, v408);
  }

  v411 = *(a1 + 32);
  if ((v411 & 0x80) != 0)
  {
    if (*a3 <= v408)
    {
      v408 = sub_225EB68(a3, v408);
    }

    v413 = *(a1 + 1216);
    *v408 = 2976;
    v408[2] = v413;
    if (v413 > 0x7F)
    {
      v408[2] = v413 | 0x80;
      v414 = v413 >> 7;
      v408[3] = v413 >> 7;
      v412 = v408 + 4;
      if (v413 >= 0x4000)
      {
        LOBYTE(v415) = v408[3];
        do
        {
          *(v412 - 1) = v415 | 0x80;
          v415 = v414 >> 7;
          *v412++ = v414 >> 7;
          v416 = v414 >> 14;
          v414 >>= 7;
        }

        while (v416);
      }
    }

    else
    {
      v412 = v408 + 3;
    }
  }

  else
  {
    v412 = v408;
  }

  if ((v411 & 0x40) != 0)
  {
    if (*a3 <= v412)
    {
      v412 = sub_225EB68(a3, v412);
    }

    v417 = *(a1 + 1213);
    *v412 = 2984;
    v412[2] = v417;
    v412 += 3;
    if ((v411 & 2) == 0)
    {
LABEL_965:
      if ((v411 & 4) == 0)
      {
        goto LABEL_976;
      }

      goto LABEL_973;
    }
  }

  else if ((v411 & 2) == 0)
  {
    goto LABEL_965;
  }

  if (*a3 <= v412)
  {
    v412 = sub_225EB68(a3, v412);
  }

  v418 = *(a1 + 1208);
  *v412 = 2992;
  v412[2] = v418;
  v412 += 3;
  if ((v411 & 4) != 0)
  {
LABEL_973:
    if (*a3 <= v412)
    {
      v412 = sub_225EB68(a3, v412);
    }

    v419 = *(a1 + 1209);
    *v412 = 3000;
    v412[2] = v419;
    v412 += 3;
  }

LABEL_976:
  v420 = *(a1 + 8);
  if ((v420 & 1) == 0)
  {
    return v412;
  }

  v422 = v420 & 0xFFFFFFFFFFFFFFFCLL;
  v423 = *(v422 + 31);
  if (v423 < 0)
  {
    v424 = *(v422 + 8);
    v423 = *(v422 + 16);
  }

  else
  {
    v424 = (v422 + 8);
  }

  if ((*a3 - v412) >= v423)
  {
    v425 = v423;
    memcpy(v412, v424, v423);
    v412 += v425;
    return v412;
  }

  return sub_1957130(a3, v424, v423, v412);
}

uint64_t sub_15C6544(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
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
      v7 = sub_16D5774(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = sub_1959F14((a1 + 64));
  v9 = *(a1 + 64);
  v10 = sub_1959F14((a1 + 80));
  v11 = *(a1 + 104);
  v12 = v8 + v2 + v10 + v9 + *(a1 + 80) + v11;
  v13 = *(a1 + 112);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = sub_1579354(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = sub_1959F14((a1 + 120));
  v19 = *(a1 + 144);
  v20 = v18 + v12 + 2 * (v19 + *(a1 + 120));
  if (v19 >= 1)
  {
    v21 = (*(a1 + 152) + 8);
    do
    {
      v22 = *v21++;
      v23 = *(v22 + 23);
      v24 = *(v22 + 8);
      if ((v23 & 0x80u) == 0)
      {
        v24 = v23;
      }

      v20 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      --v19;
    }

    while (v19);
  }

  v25 = *(a1 + 168);
  v26 = v20 + 2 * v25;
  if (v25 >= 1)
  {
    v27 = (*(a1 + 176) + 8);
    do
    {
      v28 = *v27++;
      v29 = *(v28 + 23);
      v30 = *(v28 + 8);
      if ((v29 & 0x80u) == 0)
      {
        v30 = v29;
      }

      v26 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      --v25;
    }

    while (v25);
  }

  v31 = *(a1 + 192);
  v32 = v26 + 2 * v31;
  if (v31 >= 1)
  {
    v33 = (*(a1 + 200) + 8);
    do
    {
      v34 = *v33++;
      v35 = *(v34 + 23);
      v36 = *(v34 + 8);
      if ((v35 & 0x80u) == 0)
      {
        v36 = v35;
      }

      v32 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      --v31;
    }

    while (v31);
  }

  v37 = *(a1 + 216);
  v38 = v32 + 2 * v37;
  if (v37 >= 1)
  {
    v39 = (*(a1 + 224) + 8);
    do
    {
      v40 = *v39++;
      v41 = *(v40 + 23);
      v42 = *(v40 + 8);
      if ((v41 & 0x80u) == 0)
      {
        v42 = v41;
      }

      v38 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      --v37;
    }

    while (v37);
  }

  v43 = *(a1 + 240);
  v44 = v38 + 2 * v43;
  if (v43 >= 1)
  {
    v45 = (*(a1 + 248) + 8);
    do
    {
      v46 = *v45++;
      v47 = *(v46 + 23);
      v48 = *(v46 + 8);
      if ((v47 & 0x80u) == 0)
      {
        v48 = v47;
      }

      v44 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6);
      --v43;
    }

    while (v43);
  }

  v49 = *(a1 + 264);
  v50 = v44 + 2 * v49;
  if (v49 >= 1)
  {
    v51 = (*(a1 + 272) + 8);
    do
    {
      v52 = *v51++;
      v53 = *(v52 + 23);
      v54 = *(v52 + 8);
      if ((v53 & 0x80u) == 0)
      {
        v54 = v53;
      }

      v50 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6);
      --v49;
    }

    while (v49);
  }

  v55 = *(a1 + 288);
  v56 = v50 + 2 * v55;
  v57 = *(a1 + 296);
  if (v57)
  {
    v58 = (v57 + 8);
  }

  else
  {
    v58 = 0;
  }

  if (v55)
  {
    v59 = 8 * v55;
    do
    {
      v60 = *v58++;
      v61 = sub_157A6D0(v60);
      v56 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6);
      v59 -= 8;
    }

    while (v59);
  }

  v62 = *(a1 + 312);
  v63 = v56 + 2 * v62;
  v64 = *(a1 + 320);
  if (v64)
  {
    v65 = (v64 + 8);
  }

  else
  {
    v65 = 0;
  }

  if (v62)
  {
    v66 = 8 * v62;
    do
    {
      v67 = *v65++;
      v68 = sub_15BF8B0(v67);
      v63 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6);
      v66 -= 8;
    }

    while (v66);
  }

  v69 = *(a1 + 336);
  v70 = v63 + 2 * v69;
  v71 = *(a1 + 344);
  if (v71)
  {
    v72 = (v71 + 8);
  }

  else
  {
    v72 = 0;
  }

  if (v69)
  {
    v73 = 8 * v69;
    do
    {
      v74 = *v72++;
      v75 = sub_1579354(v74);
      v70 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6);
      v73 -= 8;
    }

    while (v73);
  }

  v76 = *(a1 + 360);
  v77 = v70 + 2 * v76;
  v78 = *(a1 + 368);
  if (v78)
  {
    v79 = (v78 + 8);
  }

  else
  {
    v79 = 0;
  }

  if (v76)
  {
    v80 = 8 * v76;
    do
    {
      v81 = *v79++;
      v82 = sub_1579354(v81);
      v77 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6);
      v80 -= 8;
    }

    while (v80);
  }

  v83 = *(a1 + 384);
  v84 = v77 + 2 * v83;
  v85 = *(a1 + 392);
  if (v85)
  {
    v86 = (v85 + 8);
  }

  else
  {
    v86 = 0;
  }

  if (v83)
  {
    v87 = 8 * v83;
    do
    {
      v88 = *v86++;
      v89 = sub_15BB73C(v88);
      v84 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6);
      v87 -= 8;
    }

    while (v87);
  }

  v90 = sub_1959F14((a1 + 400));
  v91 = *(a1 + 400);
  v92 = sub_1959F14((a1 + 416));
  v93 = *(a1 + 416);
  v94 = sub_1959E04((a1 + 432));
  v95 = *(a1 + 432);
  v96 = sub_1959F14((a1 + 448));
  v97 = *(a1 + 472);
  v98 = v90 + v92 + v94 + v96 + v84 + 2 * (v93 + v91 + v95 + *(a1 + 448) + v97);
  v99 = *(a1 + 480);
  if (v99)
  {
    v100 = (v99 + 8);
  }

  else
  {
    v100 = 0;
  }

  if (v97)
  {
    v101 = 8 * v97;
    do
    {
      v102 = *v100++;
      v103 = sub_157AB54(v102);
      v98 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6);
      v101 -= 8;
    }

    while (v101);
  }

  v104 = *(a1 + 496);
  v105 = v98 + 2 * v104;
  v106 = *(a1 + 504);
  if (v106)
  {
    v107 = (v106 + 8);
  }

  else
  {
    v107 = 0;
  }

  if (v104)
  {
    v108 = 8 * v104;
    do
    {
      v109 = *v107++;
      v110 = sub_16EEF64(v109);
      v105 += v110 + ((9 * (__clz(v110 | 1) ^ 0x1F) + 73) >> 6);
      v108 -= 8;
    }

    while (v108);
  }

  v262 = sub_1959F14((a1 + 512));
  v260 = *(a1 + 512);
  v261 = sub_1959F14((a1 + 528));
  v257 = *(a1 + 528);
  v259 = sub_1959F14((a1 + 544));
  v256 = *(a1 + 544);
  v258 = sub_1959F14((a1 + 560));
  v253 = *(a1 + 560);
  v255 = sub_1959F14((a1 + 576));
  v111 = *(a1 + 576);
  v254 = sub_1959F14((a1 + 592));
  v112 = *(a1 + 592);
  v113 = *(a1 + 608);
  if (v113)
  {
    v114 = 0;
    v115 = 0;
    do
    {
      v116 = *(*(a1 + 616) + 4 * v114);
      if (v116 < 0)
      {
        v117 = 10;
      }

      else
      {
        v117 = (9 * (__clz(v116 | 1) ^ 0x1F) + 73) >> 6;
      }

      v115 += v117;
      ++v114;
    }

    while (v113 != v114);
  }

  else
  {
    v115 = 0;
  }

  v118 = sub_1959F14((a1 + 624));
  v120 = *(a1 + 640);
  if (v120)
  {
    v121 = 0;
    v122 = 0;
    do
    {
      v123 = *(*(a1 + 648) + 4 * v121);
      if (v123 < 0)
      {
        v124 = 10;
      }

      else
      {
        v124 = (9 * (__clz(v123 | 1) ^ 0x1F) + 73) >> 6;
      }

      v122 += v124;
      ++v121;
    }

    while (v120 != v121);
  }

  else
  {
    v122 = 0;
  }

  v119 = *(a1 + 624);
  v125 = v262 + v105 + v261 + v259 + v258 + v255 + v254 + v115 + v118 + v122 + sub_1959F14((a1 + 656)) + 2 * (v257 + v260 + v256 + v253 + v111 + v112 + v113 + v119 + v120 + *(a1 + 656));
  v126 = *(a1 + 16);
  if (!v126)
  {
    goto LABEL_115;
  }

  if (v126)
  {
    v143 = *(a1 + 672) & 0xFFFFFFFFFFFFFFFELL;
    v144 = *(v143 + 23);
    v145 = *(v143 + 8);
    if ((v144 & 0x80u) == 0)
    {
      v145 = v144;
    }

    v125 += v145 + ((9 * (__clz(v145 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v126 & 2) == 0)
    {
LABEL_106:
      if ((v126 & 4) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_185;
    }
  }

  else if ((v126 & 2) == 0)
  {
    goto LABEL_106;
  }

  v146 = *(a1 + 680) & 0xFFFFFFFFFFFFFFFELL;
  v147 = *(v146 + 23);
  v148 = *(v146 + 8);
  if ((v147 & 0x80u) == 0)
  {
    v148 = v147;
  }

  v125 += v148 + ((9 * (__clz(v148 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v126 & 4) == 0)
  {
LABEL_107:
    if ((v126 & 8) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_188;
  }

LABEL_185:
  v149 = *(a1 + 688) & 0xFFFFFFFFFFFFFFFELL;
  v150 = *(v149 + 23);
  v151 = *(v149 + 8);
  if ((v150 & 0x80u) == 0)
  {
    v151 = v150;
  }

  v125 += v151 + ((9 * (__clz(v151 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 8) == 0)
  {
LABEL_108:
    if ((v126 & 0x10) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_191;
  }

LABEL_188:
  v152 = *(a1 + 696) & 0xFFFFFFFFFFFFFFFELL;
  v153 = *(v152 + 23);
  v154 = *(v152 + 8);
  if ((v153 & 0x80u) == 0)
  {
    v154 = v153;
  }

  v125 += v154 + ((9 * (__clz(v154 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x10) == 0)
  {
LABEL_109:
    if ((v126 & 0x20) == 0)
    {
      goto LABEL_110;
    }

LABEL_194:
    v158 = *(a1 + 712) & 0xFFFFFFFFFFFFFFFELL;
    v159 = *(v158 + 23);
    v160 = *(v158 + 8);
    if ((v159 & 0x80u) == 0)
    {
      v160 = v159;
    }

    v125 += v160 + ((9 * (__clz(v160 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v126 & 0x40) == 0)
    {
LABEL_111:
      if ((v126 & 0x80) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_112;
    }

    goto LABEL_197;
  }

LABEL_191:
  v155 = *(a1 + 704) & 0xFFFFFFFFFFFFFFFELL;
  v156 = *(v155 + 23);
  v157 = *(v155 + 8);
  if ((v156 & 0x80u) == 0)
  {
    v157 = v156;
  }

  v125 += v157 + ((9 * (__clz(v157 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x20) != 0)
  {
    goto LABEL_194;
  }

LABEL_110:
  if ((v126 & 0x40) == 0)
  {
    goto LABEL_111;
  }

LABEL_197:
  v161 = *(a1 + 720) & 0xFFFFFFFFFFFFFFFELL;
  v162 = *(v161 + 23);
  v163 = *(v161 + 8);
  if ((v162 & 0x80u) == 0)
  {
    v163 = v162;
  }

  v125 += v163 + ((9 * (__clz(v163 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x80) != 0)
  {
LABEL_112:
    v127 = *(a1 + 728) & 0xFFFFFFFFFFFFFFFELL;
    v128 = *(v127 + 23);
    v129 = *(v127 + 8);
    if ((v128 & 0x80u) == 0)
    {
      v129 = v128;
    }

    v125 += v129 + ((9 * (__clz(v129 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_115:
  if ((v126 & 0xFF00) == 0)
  {
    goto LABEL_127;
  }

  if ((v126 & 0x100) != 0)
  {
    v164 = *(a1 + 736) & 0xFFFFFFFFFFFFFFFELL;
    v165 = *(v164 + 23);
    v166 = *(v164 + 8);
    if ((v165 & 0x80u) == 0)
    {
      v166 = v165;
    }

    v125 += v166 + ((9 * (__clz(v166 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v126 & 0x200) == 0)
    {
LABEL_118:
      if ((v126 & 0x400) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_207;
    }
  }

  else if ((v126 & 0x200) == 0)
  {
    goto LABEL_118;
  }

  v167 = *(a1 + 744) & 0xFFFFFFFFFFFFFFFELL;
  v168 = *(v167 + 23);
  v169 = *(v167 + 8);
  if ((v168 & 0x80u) == 0)
  {
    v169 = v168;
  }

  v125 += v169 + ((9 * (__clz(v169 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x400) == 0)
  {
LABEL_119:
    if ((v126 & 0x800) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_210;
  }

LABEL_207:
  v170 = *(a1 + 752) & 0xFFFFFFFFFFFFFFFELL;
  v171 = *(v170 + 23);
  v172 = *(v170 + 8);
  if ((v171 & 0x80u) == 0)
  {
    v172 = v171;
  }

  v125 += v172 + ((9 * (__clz(v172 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x800) == 0)
  {
LABEL_120:
    if ((v126 & 0x1000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_213;
  }

LABEL_210:
  v173 = *(a1 + 760) & 0xFFFFFFFFFFFFFFFELL;
  v174 = *(v173 + 23);
  v175 = *(v173 + 8);
  if ((v174 & 0x80u) == 0)
  {
    v175 = v174;
  }

  v125 += v175 + ((9 * (__clz(v175 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x1000) == 0)
  {
LABEL_121:
    if ((v126 & 0x2000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_216;
  }

LABEL_213:
  v176 = *(a1 + 768) & 0xFFFFFFFFFFFFFFFELL;
  v177 = *(v176 + 23);
  v178 = *(v176 + 8);
  if ((v177 & 0x80u) == 0)
  {
    v178 = v177;
  }

  v125 += v178 + ((9 * (__clz(v178 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x2000) == 0)
  {
LABEL_122:
    if ((v126 & 0x4000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_219;
  }

LABEL_216:
  v179 = *(a1 + 776) & 0xFFFFFFFFFFFFFFFELL;
  v180 = *(v179 + 23);
  v181 = *(v179 + 8);
  if ((v180 & 0x80u) == 0)
  {
    v181 = v180;
  }

  v125 += v181 + ((9 * (__clz(v181 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x4000) == 0)
  {
LABEL_123:
    if ((v126 & 0x8000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_124;
  }

LABEL_219:
  v182 = *(a1 + 784) & 0xFFFFFFFFFFFFFFFELL;
  v183 = *(v182 + 23);
  v184 = *(v182 + 8);
  if ((v183 & 0x80u) == 0)
  {
    v184 = v183;
  }

  v125 += v184 + ((9 * (__clz(v184 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x8000) != 0)
  {
LABEL_124:
    v130 = *(a1 + 792) & 0xFFFFFFFFFFFFFFFELL;
    v131 = *(v130 + 23);
    v132 = *(v130 + 8);
    if ((v131 & 0x80u) == 0)
    {
      v132 = v131;
    }

    v125 += v132 + ((9 * (__clz(v132 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_127:
  if ((v126 & 0xFF0000) == 0)
  {
    goto LABEL_139;
  }

  if ((v126 & 0x10000) != 0)
  {
    v185 = *(a1 + 800) & 0xFFFFFFFFFFFFFFFELL;
    v186 = *(v185 + 23);
    v187 = *(v185 + 8);
    if ((v186 & 0x80u) == 0)
    {
      v187 = v186;
    }

    v125 += v187 + ((9 * (__clz(v187 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v126 & 0x20000) == 0)
    {
LABEL_130:
      if ((v126 & 0x40000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_229;
    }
  }

  else if ((v126 & 0x20000) == 0)
  {
    goto LABEL_130;
  }

  v188 = *(a1 + 808) & 0xFFFFFFFFFFFFFFFELL;
  v189 = *(v188 + 23);
  v190 = *(v188 + 8);
  if ((v189 & 0x80u) == 0)
  {
    v190 = v189;
  }

  v125 += v190 + ((9 * (__clz(v190 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x40000) == 0)
  {
LABEL_131:
    if ((v126 & 0x80000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_232;
  }

LABEL_229:
  v191 = *(a1 + 816) & 0xFFFFFFFFFFFFFFFELL;
  v192 = *(v191 + 23);
  v193 = *(v191 + 8);
  if ((v192 & 0x80u) == 0)
  {
    v193 = v192;
  }

  v125 += v193 + ((9 * (__clz(v193 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x80000) == 0)
  {
LABEL_132:
    if ((v126 & 0x100000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_235;
  }

LABEL_232:
  v194 = *(a1 + 824) & 0xFFFFFFFFFFFFFFFELL;
  v195 = *(v194 + 23);
  v196 = *(v194 + 8);
  if ((v195 & 0x80u) == 0)
  {
    v196 = v195;
  }

  v125 += v196 + ((9 * (__clz(v196 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x100000) == 0)
  {
LABEL_133:
    if ((v126 & 0x200000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_238;
  }

LABEL_235:
  v197 = *(a1 + 832) & 0xFFFFFFFFFFFFFFFELL;
  v198 = *(v197 + 23);
  v199 = *(v197 + 8);
  if ((v198 & 0x80u) == 0)
  {
    v199 = v198;
  }

  v125 += v199 + ((9 * (__clz(v199 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x200000) == 0)
  {
LABEL_134:
    if ((v126 & 0x400000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_241;
  }

LABEL_238:
  v200 = *(a1 + 840) & 0xFFFFFFFFFFFFFFFELL;
  v201 = *(v200 + 23);
  v202 = *(v200 + 8);
  if ((v201 & 0x80u) == 0)
  {
    v202 = v201;
  }

  v125 += v202 + ((9 * (__clz(v202 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x400000) == 0)
  {
LABEL_135:
    if ((v126 & 0x800000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_136;
  }

LABEL_241:
  v203 = *(a1 + 848) & 0xFFFFFFFFFFFFFFFELL;
  v204 = *(v203 + 23);
  v205 = *(v203 + 8);
  if ((v204 & 0x80u) == 0)
  {
    v205 = v204;
  }

  v125 += v205 + ((9 * (__clz(v205 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x800000) != 0)
  {
LABEL_136:
    v133 = *(a1 + 856) & 0xFFFFFFFFFFFFFFFELL;
    v134 = *(v133 + 23);
    v135 = *(v133 + 8);
    if ((v134 & 0x80u) == 0)
    {
      v135 = v134;
    }

    v125 += v135 + ((9 * (__clz(v135 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_139:
  if (!HIBYTE(v126))
  {
    goto LABEL_148;
  }

  if ((v126 & 0x1000000) != 0)
  {
    v223 = sub_15B7B24(*(a1 + 864));
    v125 += v223 + ((9 * (__clz(v223 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v126 & 0x2000000) == 0)
    {
LABEL_142:
      if ((v126 & 0x4000000) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_267;
    }
  }

  else if ((v126 & 0x2000000) == 0)
  {
    goto LABEL_142;
  }

  v224 = sub_16EE474(*(a1 + 872));
  v125 += v224 + ((9 * (__clz(v224 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x4000000) == 0)
  {
LABEL_143:
    if ((v126 & 0x8000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_268;
  }

LABEL_267:
  v225 = sub_16E8DA4(*(a1 + 880));
  v125 += v225 + ((9 * (__clz(v225 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x8000000) == 0)
  {
LABEL_144:
    if ((v126 & 0x10000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_269;
  }

LABEL_268:
  v226 = sub_1541FC0(*(a1 + 888));
  v125 += v226 + ((9 * (__clz(v226 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x10000000) == 0)
  {
LABEL_145:
    if ((v126 & 0x20000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_270;
  }

LABEL_269:
  v227 = sub_15B7B24(*(a1 + 896));
  v125 += v227 + ((9 * (__clz(v227 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x20000000) == 0)
  {
LABEL_146:
    if ((v126 & 0x40000000) == 0)
    {
      goto LABEL_147;
    }

LABEL_271:
    v229 = sub_15BAE20(*(a1 + 912));
    v125 += v229 + ((9 * (__clz(v229 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v126 & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_272;
  }

LABEL_270:
  v228 = sub_15CA674(*(a1 + 904));
  v125 += v228 + ((9 * (__clz(v228 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v126 & 0x40000000) != 0)
  {
    goto LABEL_271;
  }

LABEL_147:
  if ((v126 & 0x80000000) == 0)
  {
    goto LABEL_148;
  }

LABEL_272:
  v230 = sub_15B6F44(*(a1 + 920));
  v125 += v230 + ((9 * (__clz(v230 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_148:
  v136 = *(a1 + 20);
  if (!v136)
  {
    goto LABEL_158;
  }

  if (v136)
  {
    v206 = sub_15BA218(*(a1 + 928));
    v125 += v206 + ((9 * (__clz(v206 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v136 & 2) == 0)
    {
LABEL_151:
      if ((v136 & 4) == 0)
      {
        goto LABEL_152;
      }

      goto LABEL_247;
    }
  }

  else if ((v136 & 2) == 0)
  {
    goto LABEL_151;
  }

  v207 = sub_15BA218(*(a1 + 936));
  v125 += v207 + ((9 * (__clz(v207 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 4) == 0)
  {
LABEL_152:
    if ((v136 & 8) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_248;
  }

LABEL_247:
  v208 = sub_15C1228(*(a1 + 944));
  v125 += v208 + ((9 * (__clz(v208 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 8) == 0)
  {
LABEL_153:
    if ((v136 & 0x10) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_249;
  }

LABEL_248:
  v209 = sub_15B8BFC(*(a1 + 952));
  v125 += v209 + ((9 * (__clz(v209 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x10) == 0)
  {
LABEL_154:
    if ((v136 & 0x20) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_250;
  }

LABEL_249:
  v210 = sub_15C1228(*(a1 + 960));
  v125 += v210 + ((9 * (__clz(v210 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x20) == 0)
  {
LABEL_155:
    if ((v136 & 0x40) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_251;
  }

LABEL_250:
  v211 = sub_15B7514(*(a1 + 968));
  v125 += v211 + ((9 * (__clz(v211 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x40) == 0)
  {
LABEL_156:
    if ((v136 & 0x80) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_157;
  }

LABEL_251:
  v212 = sub_15B6F44(*(a1 + 976));
  v125 += v212 + ((9 * (__clz(v212 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x80) != 0)
  {
LABEL_157:
    v137 = sub_15B8BFC(*(a1 + 984));
    v125 += v137 + ((9 * (__clz(v137 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_158:
  if ((v136 & 0xFF00) == 0)
  {
    goto LABEL_168;
  }

  if ((v136 & 0x100) != 0)
  {
    v213 = sub_15B8BFC(*(a1 + 992));
    v125 += v213 + ((9 * (__clz(v213 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v136 & 0x200) == 0)
    {
LABEL_161:
      if ((v136 & 0x400) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_255;
    }
  }

  else if ((v136 & 0x200) == 0)
  {
    goto LABEL_161;
  }

  v214 = sub_15B7B24(*(a1 + 1000));
  v125 += v214 + ((9 * (__clz(v214 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x400) == 0)
  {
LABEL_162:
    if ((v136 & 0x800) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_256;
  }

LABEL_255:
  v215 = sub_16D683C(*(a1 + 1008));
  v125 += v215 + ((9 * (__clz(v215 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x800) == 0)
  {
LABEL_163:
    if ((v136 & 0x1000) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_257;
  }

LABEL_256:
  v216 = sub_15BFDEC(*(a1 + 1016));
  v125 += v216 + ((9 * (__clz(v216 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x1000) == 0)
  {
LABEL_164:
    if ((v136 & 0x2000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_258;
  }

LABEL_257:
  v217 = sub_15B6F44(*(a1 + 1024));
  v125 += v217 + ((9 * (__clz(v217 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x2000) == 0)
  {
LABEL_165:
    if ((v136 & 0x4000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_259;
  }

LABEL_258:
  v218 = sub_15BA218(*(a1 + 1032));
  v125 += v218 + ((9 * (__clz(v218 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x4000) == 0)
  {
LABEL_166:
    if ((v136 & 0x8000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_167;
  }

LABEL_259:
  v219 = sub_132C4EC(*(a1 + 1040));
  v125 += v219 + ((9 * (__clz(v219 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x8000) != 0)
  {
LABEL_167:
    v138 = sub_132D638(*(a1 + 1048));
    v125 += v138 + ((9 * (__clz(v138 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_168:
  if ((v136 & 0xFF0000) == 0)
  {
    goto LABEL_175;
  }

  if ((v136 & 0x10000) != 0)
  {
    v220 = sub_153B4A4(*(a1 + 1056));
    v125 += v220 + ((9 * (__clz(v220 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v136 & 0x20000) == 0)
    {
LABEL_171:
      if ((v136 & 0x40000) == 0)
      {
        goto LABEL_172;
      }

LABEL_263:
      v222 = sub_167E9E4(*(a1 + 1072));
      v125 += v222 + ((9 * (__clz(v222 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v136 & 0x80000) == 0)
      {
        goto LABEL_174;
      }

      goto LABEL_173;
    }
  }

  else if ((v136 & 0x20000) == 0)
  {
    goto LABEL_171;
  }

  v221 = sub_167E9E4(*(a1 + 1064));
  v125 += v221 + ((9 * (__clz(v221 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v136 & 0x40000) != 0)
  {
    goto LABEL_263;
  }

LABEL_172:
  if ((v136 & 0x80000) != 0)
  {
LABEL_173:
    v139 = sub_16E51F0(*(a1 + 1080));
    v125 += v139 + ((9 * (__clz(v139 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_174:
  v140.i64[0] = 0x200000002;
  v140.i64[1] = 0x200000002;
  v125 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v136), xmmword_233A990), v140));
LABEL_175:
  if (HIBYTE(v136))
  {
    if ((v136 & 0x1000000) != 0)
    {
      v141 = *(a1 + 1092);
      if (v141 < 0)
      {
        v142 = 12;
      }

      else
      {
        v142 = ((9 * (__clz(v141 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v125 += v142;
    }

    v231 = v125 + 3;
    if ((v136 & 0x2000000) == 0)
    {
      v231 = v125;
    }

    if ((v136 & 0x4000000) != 0)
    {
      v231 += 3;
    }

    if ((v136 & 0x8000000) != 0)
    {
      v231 += 3;
    }

    if ((v136 & 0x10000000) != 0)
    {
      v231 += 3;
    }

    if ((v136 & 0x20000000) != 0)
    {
      v231 += 3;
    }

    if ((v136 & 0x40000000) != 0)
    {
      v231 += 3;
    }

    if (v136 >= 0)
    {
      v125 = v231;
    }

    else
    {
      v125 = v231 + 3;
    }
  }

  v232 = *(a1 + 24);
  if (v232)
  {
    v233 = v125 + 3;
    if ((v232 & 1) == 0)
    {
      v233 = v125;
    }

    if ((v232 & 2) != 0)
    {
      v233 += 3;
    }

    if ((v232 & 4) != 0)
    {
      v233 += 3;
    }

    if ((v232 & 8) != 0)
    {
      v233 += 3;
    }

    if ((v232 & 0x10) != 0)
    {
      v233 += 3;
    }

    if ((v232 & 0x20) != 0)
    {
      v233 += 3;
    }

    if ((v232 & 0x40) != 0)
    {
      v233 += 3;
    }

    if ((v232 & 0x80) != 0)
    {
      v125 = v233 + 3;
    }

    else
    {
      v125 = v233;
    }
  }

  if ((v232 & 0xFF00) != 0)
  {
    v234 = v125 + 3;
    if ((v232 & 0x100) == 0)
    {
      v234 = v125;
    }

    if ((v232 & 0x200) != 0)
    {
      v234 += 3;
    }

    if ((v232 & 0x400) != 0)
    {
      v234 += 3;
    }

    if ((v232 & 0x800) != 0)
    {
      v234 += 3;
    }

    if ((v232 & 0x1000) != 0)
    {
      v234 += 3;
    }

    if ((v232 & 0x2000) != 0)
    {
      v235 = *(a1 + 1116);
      if (v235 < 0)
      {
        v236 = 12;
      }

      else
      {
        v236 = ((9 * (__clz(v235 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v234 += v236;
    }

    if ((v232 & 0x4000) != 0)
    {
      v234 += ((9 * (__clz(*(a1 + 1120) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v232 & 0x8000) != 0)
    {
      v125 = v234 + 3;
    }

    else
    {
      v125 = v234;
    }
  }

  if ((v232 & 0xFF0000) != 0)
  {
    v237 = v125 + 3;
    if ((v232 & 0x10000) == 0)
    {
      v237 = v125;
    }

    if ((v232 & 0x20000) != 0)
    {
      v237 += 3;
    }

    if ((v232 & 0x40000) != 0)
    {
      v237 += 3;
    }

    if ((v232 & 0x80000) != 0)
    {
      v237 += ((9 * (__clz(*(a1 + 1128) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v232 & 0x100000) != 0)
    {
      v237 += 3;
    }

    if ((v232 & 0x200000) != 0)
    {
      v237 += 3;
    }

    if ((v232 & 0x400000) != 0)
    {
      v237 += 3;
    }

    if ((v232 & 0x800000) != 0)
    {
      v125 = v237 + 3;
    }

    else
    {
      v125 = v237;
    }
  }

  if (HIBYTE(v232))
  {
    if ((v232 & 0x1000000) != 0)
    {
      v125 += ((9 * (__clz(*(a1 + 1136) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    v238 = v125 + 3;
    if ((v232 & 0x2000000) == 0)
    {
      v238 = v125;
    }

    if ((v232 & 0x4000000) != 0)
    {
      v238 += 3;
    }

    if ((v232 & 0x8000000) != 0)
    {
      v238 += 3;
    }

    if ((v232 & 0x10000000) != 0)
    {
      v238 += 3;
    }

    if ((v232 & 0x20000000) != 0)
    {
      v238 += 3;
    }

    if ((v232 & 0x40000000) != 0)
    {
      v238 += 3;
    }

    if (v232 >= 0)
    {
      v125 = v238;
    }

    else
    {
      v125 = v238 + 3;
    }
  }

  v239 = *(a1 + 28);
  if (v239)
  {
    v240 = v125 + 3;
    if ((v239 & 1) == 0)
    {
      v240 = v125;
    }

    if ((v239 & 2) != 0)
    {
      v240 += ((9 * (__clz(*(a1 + 1152) | 1) ^ 0x3F) + 73) >> 6) + 2;
      if ((v239 & 4) == 0)
      {
LABEL_370:
        if ((v239 & 8) == 0)
        {
          goto LABEL_378;
        }

        goto LABEL_374;
      }
    }

    else if ((v239 & 4) == 0)
    {
      goto LABEL_370;
    }

    v240 += ((9 * (__clz(*(a1 + 1160) | 1) ^ 0x3F) + 73) >> 6) + 2;
    if ((v239 & 8) == 0)
    {
LABEL_378:
      if ((v239 & 0x10) != 0)
      {
        v240 += 3;
      }

      if ((v239 & 0x20) != 0)
      {
        v240 += 3;
      }

      if ((v239 & 0x40) != 0)
      {
        v240 += 3;
      }

      if ((v239 & 0x80) != 0)
      {
        v125 = v240 + 3;
      }

      else
      {
        v125 = v240;
      }

      goto LABEL_387;
    }

LABEL_374:
    v241 = *(a1 + 1168);
    if (v241 < 0)
    {
      v242 = 12;
    }

    else
    {
      v242 = ((9 * (__clz(v241 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v240 += v242;
    goto LABEL_378;
  }

LABEL_387:
  if ((v239 & 0xFF00) != 0)
  {
    v243 = v125 + 3;
    if ((v239 & 0x100) == 0)
    {
      v243 = v125;
    }

    if ((v239 & 0x200) != 0)
    {
      v243 += 3;
    }

    if ((v239 & 0x400) != 0)
    {
      v243 += 3;
    }

    if ((v239 & 0x800) != 0)
    {
      v243 += 3;
    }

    if ((v239 & 0x1000) != 0)
    {
      v243 += 3;
    }

    if ((v239 & 0x2000) != 0)
    {
      v243 += 3;
    }

    if ((v239 & 0x4000) != 0)
    {
      v243 += 3;
    }

    if ((v239 & 0x8000) != 0)
    {
      v125 = v243 + 3;
    }

    else
    {
      v125 = v243;
    }
  }

  if ((v239 & 0xFF0000) != 0)
  {
    v244 = v125 + 10;
    if ((v239 & 0x10000) == 0)
    {
      v244 = v125;
    }

    if ((v239 & 0x20000) != 0)
    {
      v244 += 3;
    }

    if ((v239 & 0x40000) != 0)
    {
      v244 += 3;
    }

    if ((v239 & 0x80000) != 0)
    {
      v244 += 3;
    }

    if ((v239 & 0x100000) != 0)
    {
      v244 += 3;
    }

    if ((v239 & 0x200000) != 0)
    {
      v244 += 3;
    }

    if ((v239 & 0x400000) != 0)
    {
      v244 += 3;
    }

    if ((v239 & 0x800000) != 0)
    {
      v125 = v244 + 3;
    }

    else
    {
      v125 = v244;
    }
  }

  if (HIBYTE(v239))
  {
    v245 = v125 + 3;
    if ((v239 & 0x1000000) == 0)
    {
      v245 = v125;
    }

    if ((v239 & 0x2000000) != 0)
    {
      v245 += 3;
    }

    if ((v239 & 0x4000000) != 0)
    {
      v245 += 3;
    }

    if ((v239 & 0x8000000) != 0)
    {
      v245 += 3;
    }

    if ((v239 & 0x10000000) != 0)
    {
      v245 += 3;
    }

    if ((v239 & 0x20000000) != 0)
    {
      v245 += 3;
    }

    if ((v239 & 0x40000000) != 0)
    {
      v245 += 3;
    }

    if (v239 >= 0)
    {
      v125 = v245;
    }

    else
    {
      v125 = v245 + 3;
    }
  }

  if (*(a1 + 32))
  {
    v246 = v125 + 3;
    if ((*(a1 + 32) & 1) == 0)
    {
      v246 = v125;
    }

    if ((*(a1 + 32) & 2) != 0)
    {
      v246 += 3;
    }

    if ((*(a1 + 32) & 4) != 0)
    {
      v246 += 3;
    }

    if ((*(a1 + 32) & 8) != 0)
    {
      v246 += 3;
    }

    if ((*(a1 + 32) & 0x10) != 0)
    {
      v246 += 3;
    }

    if ((*(a1 + 32) & 0x20) != 0)
    {
      v246 += 3;
    }

    if ((*(a1 + 32) & 0x40) != 0)
    {
      v125 = v246 + 3;
    }

    else
    {
      v125 = v246;
    }

    if ((*(a1 + 32) & 0x80) != 0)
    {
      v247 = *(a1 + 1216);
      if (v247 < 0)
      {
        v248 = 12;
      }

      else
      {
        v248 = ((9 * (__clz(v247 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v125 += v248;
    }
  }

  v249 = *(a1 + 8);
  if (v249)
  {
    v251 = v249 & 0xFFFFFFFFFFFFFFFCLL;
    v252 = *((v249 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v252 < 0)
    {
      v252 = *(v251 + 16);
    }

    v125 += v252;
  }

  *(a1 + 36) = v125;
  return v125;
}