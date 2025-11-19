void *sub_143AFA0(void *a1)
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

  sub_143B038(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144D334(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_143B038(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = (a1 + 72);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 80);
  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2771078)
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      sub_13F0C4C(v5);
      operator delete();
    }

    v6 = *(a1 + 96);
    if (v6)
    {
      sub_14913C4(v6);
      operator delete();
    }

    result = *(a1 + 104);
    if (result)
    {
      sub_1433FFC(result);

      operator delete();
    }
  }

  return result;
}

void sub_143B110(void *a1)
{
  sub_143AFA0(a1);

  operator delete();
}

uint64_t sub_143B148(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1438218(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 0x1F) != 0)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      v8 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

    v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    result = sub_13F0C88(*(a1 + 88));
    if ((v6 & 8) == 0)
    {
LABEL_10:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_21:
    result = sub_1491400(*(a1 + 96));
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    v9 = *(a1 + 104);
    v10 = *(v9 + 8);
    result = v9 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v10)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_24:
  v12 = *(a1 + 8);
  v11 = a1 + 8;
  *(v11 + 104) = 0;
  *(v11 + 32) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

uint64_t sub_143B288(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  if (sub_195ADC0(a3, v42, a3[11].i32[1]))
  {
    return *v42;
  }

  while (1)
  {
    v6 = (*v42 + 1);
    v7 = **v42;
    if (**v42 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v42, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v42 + 2);
      }
    }

    *v42 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 3)
    {
      break;
    }

    if (v7 >> 3 > 5)
    {
      if (v10 == 6)
      {
        if (v7 == 50)
        {
          *(a1 + 40) |= 2u;
          v33 = *(a1 + 8);
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
          if (v33)
          {
            v34 = *v34;
          }

          v35 = (a1 + 80);
LABEL_65:
          v37 = sub_194DB04(v35, v34);
          v14 = sub_1958890(v37, *v42, a3);
          goto LABEL_66;
        }

        goto LABEL_69;
      }

      if (v10 != 32 || v7 != 2)
      {
        goto LABEL_69;
      }

      *(a1 + 40) |= 0x10u;
      v21 = *(a1 + 104);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_1436310(v23);
        *(a1 + 104) = v21;
        v6 = *v42;
      }

      v14 = sub_220B658(a3, v21, v6);
    }

    else if (v10 == 4)
    {
      if (v7 != 34)
      {
        goto LABEL_69;
      }

      *(a1 + 40) |= 4u;
      v30 = *(a1 + 88);
      if (!v30)
      {
        v31 = *(a1 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        v30 = sub_13F1010(v32);
        *(a1 + 88) = v30;
        v6 = *v42;
      }

      v14 = sub_220B538(a3, v30, v6);
    }

    else
    {
      if (v10 != 5 || v7 != 42)
      {
        goto LABEL_69;
      }

      *(a1 + 40) |= 8u;
      v11 = *(a1 + 96);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_14BD794(v13);
        *(a1 + 96) = v11;
        v6 = *v42;
      }

      v14 = sub_220B5C8(a3, v11, v6);
    }

LABEL_66:
    *v42 = v14;
    if (!v14)
    {
      goto LABEL_84;
    }

LABEL_67:
    if (sub_195ADC0(a3, v42, a3[11].i32[1]))
    {
      return *v42;
    }
  }

  if (v10 == 1)
  {
    if (v7 == 10)
    {
      v24 = (v6 - 1);
      while (1)
      {
        v25 = (v24 + 1);
        *v42 = v24 + 1;
        v26 = *(a1 + 64);
        if (v26 && (v27 = *(a1 + 56), v27 < *v26))
        {
          *(a1 + 56) = v27 + 1;
          v28 = *&v26[2 * v27 + 2];
        }

        else
        {
          v29 = sub_143C118(*(a1 + 48));
          v28 = sub_19593CC(a1 + 48, v29);
          v25 = *v42;
        }

        v24 = sub_220B4A8(a3, v28, v25);
        *v42 = v24;
        if (!v24)
        {
          goto LABEL_84;
        }

        if (*a3 <= v24 || *v24 != 10)
        {
          goto LABEL_67;
        }
      }
    }
  }

  else if (v10 == 2)
  {
    if (v7 == 18)
    {
      *(a1 + 40) |= 1u;
      v36 = *(a1 + 8);
      v34 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v34 = *v34;
      }

      v35 = (a1 + 72);
      goto LABEL_65;
    }
  }

  else if (v10 == 3 && v7 == 24)
  {
    v16 = (v6 + 1);
    v17 = *v6;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v18 = *v16;
    v19 = (v18 << 7) + v17;
    LODWORD(v17) = v19 - 128;
    if (v18 < 0)
    {
      *v42 = sub_19587DC(v6, (v19 - 128));
      if (!*v42)
      {
        goto LABEL_84;
      }

      LODWORD(v17) = v41;
    }

    else
    {
      v16 = (v6 + 2);
LABEL_27:
      *v42 = v16;
    }

    if (sub_14CB318(v17))
    {
      *(a1 + 40) |= 0x20u;
      *(a1 + 112) = v17;
    }

    else
    {
      sub_1313740();
    }

    goto LABEL_67;
  }

LABEL_69:
  if (v7)
  {
    v38 = (v7 & 7) == 4;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    if (v7 - 8000 > 0xF9F)
    {
      v39 = *(a1 + 8);
      if (v39)
      {
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v40 = sub_11F1920((a1 + 8));
        v6 = *v42;
      }

      v14 = sub_1952690(v7, v40, v6, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v7, v6, &off_2771078, (a1 + 8), a3);
    }

    goto LABEL_66;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v42;
  }

LABEL_84:
  *v42 = 0;
  return *v42;
}

char *sub_143B68C(uint64_t a1, char *a2, unint64_t *a3)
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

      a2 = sub_1438694(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    a2 = sub_128AEEC(a3, 2, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

  if ((v11 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 112);
    *a2 = 24;
    a2[1] = v13;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      a2[2] = v13 >> 7;
      v12 = a2 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = a2[2];
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
      v12 = a2 + 2;
    }
  }

  else
  {
    v12 = a2;
  }

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 88);
    *v12 = 34;
    v18 = *(v17 + 20);
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v12 + 1);
    }

    else
    {
      v19 = v12 + 2;
    }

    v12 = sub_13F0E14(v17, v19, a3);
    if ((v11 & 8) == 0)
    {
LABEL_22:
      if ((v11 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }
  }

  else if ((v11 & 8) == 0)
  {
    goto LABEL_22;
  }

  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v20 = *(a1 + 96);
  *v12 = 42;
  v21 = *(v20 + 20);
  v12[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v12 + 1);
  }

  else
  {
    v22 = v12 + 2;
  }

  v12 = sub_149160C(v20, v22, a3);
  if ((v11 & 2) == 0)
  {
LABEL_23:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_37:
  v12 = sub_128AEEC(a3, 6, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v12);
  if ((v11 & 0x10) == 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v23 = *(a1 + 104);
  *v12 = 642;
  v24 = *(v23 + 20);
  v12[2] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v12 + 2);
  }

  else
  {
    v25 = v12 + 3;
  }

  v12 = sub_1434234(v23, v25, a3);
LABEL_44:
  if (*(a1 + 26))
  {
    v12 = sub_1953428(a1 + 16, 1000, 1500, v12, a3);
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v29)
  {
    v31 = v29;
    memcpy(v12, v30, v29);
    v12 += v31;
    return v12;
  }

  return sub_1957130(a3, v30, v29, v12);
}

uint64_t sub_143B9E8(uint64_t a1)
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
      v9 = sub_14389C8(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v10 & 2) == 0)
      {
LABEL_10:
        if ((v10 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

    v14 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

LABEL_21:
    v17 = sub_13F0F3C(*(a1 + 88));
    v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 8) == 0)
    {
LABEL_12:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }

LABEL_22:
    v18 = sub_14917A0(*(a1 + 96));
    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 0x10) == 0)
    {
LABEL_13:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    }

LABEL_23:
    v19 = sub_143435C(*(a1 + 104));
    v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_24:
    v20 = *(a1 + 112);
    if (v20 < 0)
    {
      v21 = 11;
    }

    else
    {
      v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v21;
  }

LABEL_28:
  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v4 += v25;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_143BC04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144D5E8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 0x3F) != 0)
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
          goto LABEL_8;
        }

        goto LABEL_23;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 80);
    *(a1 + 40) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 80), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_23:
    *(a1 + 40) |= 4u;
    v17 = *(a1 + 88);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_13F1010(v19);
      *(a1 + 88) = v17;
    }

    if (*(a2 + 88))
    {
      v20 = *(a2 + 88);
    }

    else
    {
      v20 = &off_276F3A8;
    }

    sub_12B9D50(v17, v20);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(a1 + 40) |= 8u;
    v21 = *(a1 + 96);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_14BD794(v23);
      *(a1 + 96) = v21;
    }

    if (*(a2 + 96))
    {
      v24 = *(a2 + 96);
    }

    else
    {
      v24 = &off_2772DF8;
    }

    sub_1491830(v21, v24);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
LABEL_12:
        *(a1 + 40) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_12;
    }

LABEL_39:
    *(a1 + 40) |= 0x10u;
    v25 = *(a1 + 104);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_1436310(v27);
      *(a1 + 104) = v25;
    }

    if (*(a2 + 104))
    {
      v28 = *(a2 + 104);
    }

    else
    {
      v28 = &off_2770DF0;
    }

    sub_12A7358(v25, v28);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_143BE54(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_143B148(a1);

    sub_143BC04(a1, a2);
  }
}

BOOL sub_143BEA0(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_1438D5C(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

__n128 sub_143BF08(uint64_t a1, uint64_t a2)
{
  sub_1951F08((a1 + 16), (a2 + 16));
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  v8 = *(a2 + 72);
  *(a2 + 72) = *(a1 + 72);
  *(a1 + 72) = v8;
  v9 = *(a2 + 80);
  *(a2 + 80) = *(a1 + 80);
  *(a1 + 80) = v9;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a2 + 88) = v10;
  *(a2 + 96) = v11;
  v13 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  LODWORD(v13) = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v13;
  return result;
}

void *sub_143BFD8(uint64_t a1)
{
  if (!a1)
  {

    sub_144D674();
  }

  return sub_14364A0(v3, a1, 0);
}

void *sub_143C034(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E2088;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_143C0BC(uint64_t a1)
{
  if (!a1)
  {

    sub_144D6E0();
  }

  return sub_14373AC(v3, a1, 0);
}

uint64_t sub_143C118(uint64_t a1)
{
  if (!a1)
  {

    sub_144D74C();
  }

  return sub_1438044(v3, a1, 0);
}

uint64_t sub_143C174(uint64_t a1)
{
  if (!a1)
  {

    sub_144D7B8();
  }

  return sub_1438E1C(v3, a1, 0);
}

uint64_t sub_143C1D0(uint64_t a1)
{
  if (!a1)
  {

    sub_144D824();
  }

  return sub_143AC38(v3, a1, 0);
}

uint64_t sub_143C22C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 31) = 0;
    *(a1 + 24) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 43) = 0;
    *(a1 + 35) = 0;
    *(a1 + 51) = 0;
  }

  if ((v1 & 0x30000) != 0)
  {
    *(a1 + 52) = 0;
    *(a1 + 56) = 1;
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

std::string *sub_143C27C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
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

        goto LABEL_33;
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

      goto LABEL_34;
    }

LABEL_33:
    result[1].__r_.__value_.__s.__data_[2] = *(a2 + 26);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_35;
    }

LABEL_34:
    result[1].__r_.__value_.__s.__data_[3] = *(a2 + 27);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_35:
    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }

LABEL_36:
    result[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
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
      result[1].__r_.__value_.__s.__data_[10] = *(a2 + 34);
      goto LABEL_11;
    }

LABEL_37:
    result[1].__r_.__value_.__s.__data_[9] = *(a2 + 33);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v2 & 0x100) != 0)
  {
    result[1].__r_.__value_.__s.__data_[11] = *(a2 + 35);
    if ((v2 & 0x200) == 0)
    {
LABEL_15:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  if ((v2 & 0x800) == 0)
  {
LABEL_17:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  result[1].__r_.__value_.__s.__data_[20] = *(a2 + 44);
  if ((v2 & 0x1000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  result[1].__r_.__value_.__s.__data_[21] = *(a2 + 45);
  if ((v2 & 0x2000) == 0)
  {
LABEL_19:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

LABEL_45:
    *(&result[1].__r_.__value_.__s + 23) = *(a2 + 47);
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_44:
  result[1].__r_.__value_.__s.__data_[22] = *(a2 + 46);
  if ((v2 & 0x4000) != 0)
  {
    goto LABEL_45;
  }

LABEL_20:
  if ((v2 & 0x8000) != 0)
  {
LABEL_21:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
  }

LABEL_22:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_23:
  if ((v2 & 0x30000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      result[2].__r_.__value_.__s.__data_[4] = *(a2 + 52);
    }

    if ((v2 & 0x20000) != 0)
    {
      LODWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
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

uint64_t sub_143C3F0(int a1)
{
  result = 1;
  if (a1 > 700)
  {
    if (a1 <= 1200)
    {
      if (a1 > 1000)
      {
        if ((a1 - 1100) >= 0x3E && (a1 - 1001) >= 0x19)
        {
          return 0;
        }
      }

      else if ((a1 - 701) >= 0x2B && (a1 - 801) >= 5 && (a1 - 901) >= 2)
      {
        return 0;
      }

      return result;
    }

    if (a1 <= 1300)
    {
      if ((a1 - 1201) >= 0x28)
      {
        return 0;
      }

      return result;
    }

    if (a1 > 1600)
    {
      if (a1 <= 1800)
      {
        if ((a1 - 1700) >= 9 && a1 != 1601)
        {
          return 0;
        }
      }

      else if ((a1 - 1801) >= 0xA && (a1 - 1900) >= 5)
      {
        return 0;
      }

      return result;
    }

    if ((a1 - 1301) < 0xD || (a1 - 1401) < 7)
    {
      return result;
    }

    v3 = a1 - 1501;
  }

  else if (a1 > 400)
  {
    if ((a1 - 601) < 0x63 || (a1 - 501) < 0xB)
    {
      return result;
    }

    v3 = a1 - 401;
  }

  else
  {
    if (a1 < 0x9C || (a1 - 250) <= 0x38 && ((1 << (a1 + 6)) & 0x1F800000007FFFFLL) != 0)
    {
      return result;
    }

    v3 = a1 - 201;
  }

  if (v3 >= 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_143C53C(int a1)
{
  result = 1;
  if (a1 <= 2029)
  {
    if (a1 <= 355)
    {
      if ((a1 - 10) >= 0x150 && a1 >= 9)
      {
        return 0;
      }

      return result;
    }

    if (a1 <= 1009)
    {
      if ((a1 - 356) >= 0xAE && (a1 - 1001) >= 4)
      {
        return 0;
      }

      return result;
    }

    if ((a1 - 1010) <= 0x37 && ((1 << (a1 + 14)) & 0xFFFFFFFFF00583) != 0 || (a1 - 2001) < 0x1B)
    {
      return result;
    }

    v3 = a1 - 1500;
  }

  else if (a1 > 7000)
  {
    if (a1 > 11000)
    {
      if (a1 <= 16000)
      {
        if (a1 > 12000)
        {
          if (a1 > 14000)
          {
            if ((a1 - 14001) >= 9 && (a1 - 15001) >= 3)
            {
              return 0;
            }
          }

          else if ((a1 - 12001) >= 0xA && (a1 - 13001) >= 7)
          {
            return 0;
          }
        }

        else if ((a1 - 11001) >= 0x1D)
        {
          return 0;
        }
      }

      else if ((a1 - 17001) >= 0x6C && a1 != 16001 && a1 != 90010)
      {
        return 0;
      }

      return result;
    }

    if (a1 <= 9100)
    {
      v5 = (a1 - 9001);
      if ((v5 > 0x27 || v5 == 9) && (a1 - 7001) >= 0x1E && (a1 - 8001) >= 0xB)
      {
        return 0;
      }

      return result;
    }

    if ((a1 - 10101) < 0x5B)
    {
      return result;
    }

    v3 = a1 - 9101;
  }

  else
  {
    if (a1 <= 3000)
    {
      if ((a1 - 2030) >= 0xAB)
      {
        return 0;
      }

      return result;
    }

    if (a1 > 6002)
    {
      if ((a1 - 6036) >= 0x4D)
      {
        v4 = a1 - 6003;
        if (v4 > 0x1F || ((1 << v4) & 0xF5FFB7FF) == 0)
        {
          return 0;
        }
      }

      return result;
    }

    if ((a1 - 3001) < 0x58)
    {
      return result;
    }

    v6 = (a1 - 5001);
    if (v6 <= 0x26 && v6 != 14)
    {
      return result;
    }

    v3 = a1 - 4001;
  }

  if (v3 >= 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_143C794(uint64_t a1)
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

  v5 = (a1 + 168);
  if (*(a1 + 168) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_144DCC0((a1 + 144));
  sub_144DC3C((a1 + 120));
  sub_144DBB8((a1 + 96));
  sub_144DB34((a1 + 72));
  sub_144DAB0((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_143C878(uint64_t a1)
{
  sub_143C794(a1);

  operator delete();
}

uint64_t sub_143C8B0(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_143E2BC(v5);
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
      result = sub_1444AFC(v8);
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
      result = sub_143E438(v11);
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
      result = sub_14409A4(v14);
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
      result = sub_1441DC4(v17);
      --v15;
    }

    while (v15);
    *(a1 + 152) = 0;
  }

  if (*(a1 + 16))
  {
    v18 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
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
  }

  v20 = *(a1 + 8);
  v19 = a1 + 8;
  *(v19 + 168) = 0;
  *(v19 + 8) = 0;
  if (v20)
  {

    return sub_1957EA8(v19);
  }

  return result;
}

uint64_t sub_143CA0C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v63 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v63, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v63 + 1);
    v8 = **v63;
    if (**v63 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v63, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v63 + 2);
      }
    }

    *v63 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v8 == 26)
          {
            v46 = v7 - 1;
            while (1)
            {
              v47 = v46 + 1;
              *v63 = v46 + 1;
              v48 = *(a1 + 64);
              if (v48 && (v49 = *(a1 + 56), v49 < *v48))
              {
                *(a1 + 56) = v49 + 1;
                v50 = *&v48[2 * v49 + 2];
              }

              else
              {
                sub_1446070(*(a1 + 48));
                v50 = sub_19593CC(a1 + 48, v51);
                v47 = *v63;
              }

              v46 = sub_220B808(a3, v50, v47);
              *v63 = v46;
              if (!v46)
              {
                goto LABEL_107;
              }

              if (*a3 <= v46 || *v46 != 26)
              {
                goto LABEL_100;
              }
            }
          }
        }

        else if (v11 == 4 && v8 == 34)
        {
          v27 = v7 - 1;
          while (1)
          {
            v28 = v27 + 1;
            *v63 = v27 + 1;
            v29 = *(a1 + 88);
            if (v29 && (v30 = *(a1 + 80), v30 < *v29))
            {
              *(a1 + 80) = v30 + 1;
              v31 = *&v29[2 * v30 + 2];
            }

            else
            {
              sub_1446568(*(a1 + 72));
              v31 = sub_19593CC(a1 + 72, v32);
              v28 = *v63;
            }

            v27 = sub_220B898(a3, v31, v28);
            *v63 = v27;
            if (!v27)
            {
              goto LABEL_107;
            }

            if (*a3 <= v27 || *v27 != 34)
            {
              goto LABEL_100;
            }
          }
        }

        goto LABEL_92;
      }

      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            *v63 = v13 + 1;
            v15 = *(a1 + 40);
            if (v15 && (v16 = *(a1 + 32), v16 < *v15))
            {
              *(a1 + 32) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = *(a1 + 24);
              if (!v18)
              {
                operator new();
              }

              *v20 = v19;
              v20[1] = sub_195A650;
              *v19 = 0;
              v19[1] = 0;
              v19[2] = 0;
              v17 = sub_19593CC(a1 + 24, v19);
              v14 = *v63;
            }

            v13 = sub_1958890(v17, v14, a3);
            *v63 = v13;
            if (!v13)
            {
              goto LABEL_107;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_100;
            }
          }
        }

        goto LABEL_92;
      }

      if (v8 != 10)
      {
        goto LABEL_92;
      }

      *(a1 + 16) |= 1u;
      v36 = *(a1 + 8);
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      v38 = sub_194DB04((a1 + 168), v37);
      v39 = sub_1958890(v38, *v63, a3);
LABEL_99:
      *v63 = v39;
      if (!v39)
      {
        goto LABEL_107;
      }

      goto LABEL_100;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 == 42)
        {
          v40 = v7 - 1;
          while (1)
          {
            v41 = (v40 + 1);
            *v63 = v40 + 1;
            v42 = *(a1 + 112);
            if (v42 && (v43 = *(a1 + 104), v43 < *v42))
            {
              *(a1 + 104) = v43 + 1;
              v44 = *&v42[2 * v43 + 2];
            }

            else
            {
              sub_144610C(*(a1 + 96));
              v44 = sub_19593CC(a1 + 96, v45);
              v41 = *v63;
            }

            v40 = sub_220B928(a3, v44, v41);
            *v63 = v40;
            if (!v40)
            {
              goto LABEL_107;
            }

            if (*a3 <= v40 || *v40 != 42)
            {
              goto LABEL_100;
            }
          }
        }
      }

      else if (v11 == 6 && v8 == 50)
      {
        v21 = v7 - 1;
        while (1)
        {
          v22 = v21 + 1;
          *v63 = v21 + 1;
          v23 = *(a1 + 136);
          if (v23 && (v24 = *(a1 + 128), v24 < *v23))
          {
            *(a1 + 128) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            sub_14461A0(*(a1 + 120));
            v25 = sub_19593CC(a1 + 120, v26);
            v22 = *v63;
          }

          v21 = sub_220B9B8(a3, v25, v22);
          *v63 = v21;
          if (!v21)
          {
            goto LABEL_107;
          }

          if (*a3 <= v21 || *v21 != 50)
          {
            goto LABEL_100;
          }
        }
      }

      goto LABEL_92;
    }

    if (v11 == 7)
    {
      break;
    }

    if (v11 != 8 || v8 != 64)
    {
      goto LABEL_92;
    }

    v5 |= 2u;
    v34 = v7 + 1;
    v33 = *v7;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_57;
    }

    v35 = *v34;
    v33 = (v35 << 7) + v33 - 128;
    if ((v35 & 0x80000000) == 0)
    {
      v34 = v7 + 2;
LABEL_57:
      *v63 = v34;
      *(a1 + 176) = v33 != 0;
      goto LABEL_100;
    }

    v61 = sub_19587DC(v7, v33);
    *v63 = v61;
    *(a1 + 176) = v62 != 0;
    if (!v61)
    {
      goto LABEL_107;
    }

LABEL_100:
    if (sub_195ADC0(a3, v63, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 58)
  {
    v52 = v7 - 1;
    while (1)
    {
      v53 = (v52 + 1);
      *v63 = v52 + 1;
      v54 = *(a1 + 160);
      if (v54 && (v55 = *(a1 + 152), v55 < *v54))
      {
        *(a1 + 152) = v55 + 1;
        v56 = *&v54[2 * v55 + 2];
      }

      else
      {
        v57 = sub_144623C(*(a1 + 144));
        v56 = sub_19593CC(a1 + 144, v57);
        v53 = *v63;
      }

      v52 = sub_220BA48(a3, v56, v53);
      *v63 = v52;
      if (!v52)
      {
        goto LABEL_107;
      }

      if (*a3 <= v52 || *v52 != 58)
      {
        goto LABEL_100;
      }
    }
  }

LABEL_92:
  if (v8)
  {
    v58 = (v8 & 7) == 4;
  }

  else
  {
    v58 = 1;
  }

  if (!v58)
  {
    v59 = *(a1 + 8);
    if (v59)
    {
      v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v60 = sub_11F1920((a1 + 8));
      v7 = *v63;
    }

    v39 = sub_1952690(v8, v60, v7, a3);
    goto LABEL_99;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_107:
  *v63 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v63;
}

char *sub_143CFD0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v4 = sub_1355F54(a3, 2, *(*(a1 + 40) + v8), v4);
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v11 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 26;
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

      v4 = sub_143EBD4(v11, v13, a3);
    }
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v16 = *(*(a1 + 88) + 8 * j + 8);
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

      v4 = sub_14452E0(v16, v18, a3);
    }
  }

  v19 = *(a1 + 104);
  if (v19)
  {
    for (k = 0; k != v19; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v21 = *(*(a1 + 112) + 8 * k + 8);
      *v4 = 42;
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

      v4 = sub_1440034(v21, v23, a3);
    }
  }

  v24 = *(a1 + 128);
  if (v24)
  {
    for (m = 0; m != v24; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v26 = *(*(a1 + 136) + 8 * m + 8);
      *v4 = 50;
      v27 = *(v26 + 20);
      v4[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v4 + 1);
      }

      else
      {
        v28 = v4 + 2;
      }

      v4 = sub_14410E0(v26, v28, a3);
    }
  }

  v29 = *(a1 + 152);
  if (v29)
  {
    for (n = 0; n != v29; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v31 = *(*(a1 + 160) + 8 * n + 8);
      *v4 = 58;
      v32 = *(v31 + 20);
      v4[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v4 + 1);
      }

      else
      {
        v33 = v4 + 2;
      }

      v4 = sub_1442098(v31, v33, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v34 = *(a1 + 176);
    *v4 = 64;
    v4[1] = v34;
    v4 += 2;
  }

  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v4;
  }

  v37 = v35 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = *(v37 + 31);
  if (v38 < 0)
  {
    v39 = *(v37 + 8);
    v38 = *(v37 + 16);
  }

  else
  {
    v39 = (v37 + 8);
  }

  if ((*a3 - v4) >= v38)
  {
    v40 = v38;
    memcpy(v4, v39, v38);
    v4 += v40;
    return v4;
  }

  return sub_1957130(a3, v39, v38, v4);
}

uint64_t sub_143D3B4(uint64_t a1)
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
      v14 = sub_143F254(v13);
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
      v21 = sub_1445900(v20);
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
      v28 = sub_1440604(v27);
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
      v35 = sub_144164C(v34);
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
      v42 = sub_1442268(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 16);
  if ((v43 & 3) != 0)
  {
    if (v43)
    {
      v44 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
      v45 = *(v44 + 23);
      v46 = *(v44 + 8);
      if ((v45 & 0x80u) == 0)
      {
        v46 = v45;
      }

      v37 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v37 += v43 & 2;
  }

  v47 = *(a1 + 8);
  if (v47)
  {
    v49 = v47 & 0xFFFFFFFFFFFFFFFCLL;
    v50 = *((v47 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v50 < 0)
    {
      v50 = *(v49 + 16);
    }

    v37 += v50;
  }

  *(a1 + 20) = v37;
  return v37;
}

void sub_143D650(uint64_t a1, uint64_t a2)
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
    sub_144DD44((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_144DDD0((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_144DE5C((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
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
    sub_144DEE8((a1 + 120), v26, (v25 + 8), v24, **(a1 + 136) - *(a1 + 128));
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
    sub_144DF74((a1 + 144), v31, (v30 + 8), v29, **(a1 + 160) - *(a1 + 152));
    v32 = *(a1 + 152) + v29;
    *(a1 + 152) = v32;
    v33 = *(a1 + 160);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 16);
  if ((v34 & 3) != 0)
  {
    if (v34)
    {
      v35 = *(a2 + 168);
      *(a1 + 16) |= 1u;
      v36 = *(a1 + 8);
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      sub_194EA1C((a1 + 168), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
    }

    if ((v34 & 2) != 0)
    {
      *(a1 + 176) = *(a2 + 176);
    }

    *(a1 + 16) |= v34;
  }

  v38 = *(a2 + 8);
  if (v38)
  {

    sub_1957EF4((a1 + 8), (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_143D938(uint64_t a1)
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
        v7 = sub_149EC98(*(*(v4 + 40) + 8 * v5));
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

void *sub_143D9D4(void *a1)
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

void sub_143DA48(void *a1)
{
  sub_143D9D4(a1);

  operator delete();
}

uint64_t sub_143DA80(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

char *sub_143DAA4(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_35;
      }

      v5 |= 4u;
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
        v36 = v22;
        *(a1 + 32) = v23;
        goto LABEL_42;
      }

      v34 = sub_1958770(v7, v23);
      v36 = v34;
      *(a1 + 32) = v35;
      if (!v34)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_35;
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
        v36 = v16;
        *(a1 + 36) = v17;
        goto LABEL_42;
      }

      v28 = sub_1958770(v7, v17);
      v36 = v28;
      *(a1 + 36) = v29;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

LABEL_42:
    if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_35;
    }

    v5 |= 1u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_29:
      v36 = v19;
      *(a1 + 24) = v20;
      goto LABEL_42;
    }

    v32 = sub_1958770(v7, v20);
    v36 = v32;
    *(a1 + 24) = v33;
    if (!v32)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 2u;
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
      v36 = v13;
      *(a1 + 28) = v14;
      goto LABEL_42;
    }

    v30 = sub_1958770(v7, v14);
    v36 = v30;
    *(a1 + 28) = v31;
    if (!v30)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (v8)
  {
    v25 = (v8 & 7) == 4;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = v36;
    }

    v36 = sub_1952690(v8, v27, v7, a3);
    if (!v36)
    {
      goto LABEL_55;
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_143DD58(uint64_t a1, char *__dst, _DWORD *a3)
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

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v19;
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

  if (*a3 - v19 >= v27)
  {
    v29 = v27;
    memcpy(v19, v28, v27);
    v19 += v29;
    return v19;
  }

  return sub_1957130(a3, v28, v27, v19);
}

uint64_t sub_143E014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_11;
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

void *sub_143E120(void *a1)
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

  sub_143E1A4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_143E1A4(uint64_t a1)
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

  if (a1 != &off_2771118)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      sub_143F9B8(v5);
      operator delete();
    }

    result = *(a1 + 64);
    if (result)
    {
      sub_143D9D4(result);

      operator delete();
    }
  }

  return result;
}

void sub_143E284(void *a1)
{
  sub_143E120(a1);

  operator delete();
}

uint64_t sub_143E2BC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
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

    goto LABEL_35;
  }

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

LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *v8 = 0;
  *(v8 + 23) = 0;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_35:
  result = sub_143E438(*(result + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result = sub_143DA80(*(v1 + 64));
  }

LABEL_9:
  if ((v2 & 0xC0) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 72) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 92) = 0;
    *(v1 + 84) = 0;
    *(v1 + 100) = 0;
  }

  if ((v2 & 0x30000) != 0)
  {
    *(v1 + 112) = 0;
    *(v1 + 104) = 0;
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

uint64_t sub_143E438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  if ((v1 & 0x3F00) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 84) = -1;
    *(a1 + 96) = 0xBFF0000000000000;
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_143E488(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v82 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v82, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v82 + 1);
    v8 = **v82;
    if (**v82 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v82, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v82 + 2);
      }
    }

    *v82 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_97;
        }

        v5 |= 0x80u;
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
          *v82 = v11;
          *(a1 + 80) = v12;
          goto LABEL_68;
        }

        v74 = sub_1958770(v7, v12);
        *v82 = v74;
        *(a1 + 80) = v75;
        if (v74)
        {
          goto LABEL_68;
        }

        goto LABEL_128;
      case 2u:
        if (v8 != 17)
        {
          goto LABEL_97;
        }

        v40 = *v7;
        v14 = v7 + 8;
        v5 |= 0x40u;
        *(a1 + 72) = v40;
        goto LABEL_61;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_97;
        }

        v5 |= 0x200u;
        v33 = (v7 + 1);
        v32 = *v7;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v70 = sub_19587DC(v7, v32);
          *v82 = v70;
          *(a1 + 88) = v71 != 0;
          if (!v70)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v33 = (v7 + 2);
LABEL_45:
          *v82 = v33;
          *(a1 + 88) = v32 != 0;
        }

        goto LABEL_68;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_97;
        }

        *(a1 + 16) |= 1u;
        v38 = *(a1 + 8);
        v17 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v17 = *v17;
        }

        v18 = (a1 + 24);
        goto LABEL_66;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_97;
        }

        v5 |= 0x100u;
        v22 = (v7 + 1);
        v23 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v24 = *v22;
        v23 = v23 + (v24 << 7) - 128;
        if (v24 < 0)
        {
          v65 = sub_1958770(v7, v23);
          *v82 = v65;
          *(a1 + 84) = v66;
          if (!v65)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v22 = (v7 + 2);
LABEL_28:
          *v82 = v22;
          *(a1 + 84) = v23;
        }

        goto LABEL_68;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_97;
        }

        *(a1 + 16) |= 0x10u;
        v44 = *(a1 + 56);
        if (!v44)
        {
          v45 = *(a1 + 8);
          v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
          if (v45)
          {
            v46 = *v46;
          }

          sub_144610C(v46);
          v44 = v47;
          *(a1 + 56) = v47;
          v7 = *v82;
        }

        v43 = sub_220B928(a3, v44, v7);
        goto LABEL_67;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_97;
        }

        v5 |= 0x400u;
        v52 = (v7 + 1);
        v51 = *v7;
        if ((v51 & 0x8000000000000000) == 0)
        {
          goto LABEL_85;
        }

        v53 = *v52;
        v51 = (v53 << 7) + v51 - 128;
        if (v53 < 0)
        {
          v78 = sub_19587DC(v7, v51);
          *v82 = v78;
          *(a1 + 89) = v79 != 0;
          if (!v78)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v52 = (v7 + 2);
LABEL_85:
          *v82 = v52;
          *(a1 + 89) = v51 != 0;
        }

        goto LABEL_68;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_97;
        }

        *(a1 + 16) |= 2u;
        v39 = *(a1 + 8);
        v17 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_66;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_97;
        }

        v5 |= 0x800u;
        v58 = (v7 + 1);
        v57 = *v7;
        if ((v57 & 0x8000000000000000) == 0)
        {
          goto LABEL_96;
        }

        v59 = *v58;
        v57 = (v59 << 7) + v57 - 128;
        if (v59 < 0)
        {
          v80 = sub_19587DC(v7, v57);
          *v82 = v80;
          *(a1 + 90) = v81 != 0;
          if (!v80)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v58 = (v7 + 2);
LABEL_96:
          *v82 = v58;
          *(a1 + 90) = v57 != 0;
        }

        goto LABEL_68;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_97;
        }

        v5 |= 0x1000u;
        v30 = (v7 + 1);
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_40;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          v68 = sub_19587DC(v7, v29);
          *v82 = v68;
          *(a1 + 91) = v69 != 0;
          if (!v68)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v30 = (v7 + 2);
LABEL_40:
          *v82 = v30;
          *(a1 + 91) = v29 != 0;
        }

        goto LABEL_68;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_97;
        }

        *(a1 + 16) |= 0x20u;
        v54 = *(a1 + 64);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_1445FF4(v56);
          *(a1 + 64) = v54;
          v7 = *v82;
        }

        v43 = sub_220BAD8(a3, v54, v7);
        goto LABEL_67;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_97;
        }

        v5 |= 0x2000u;
        v19 = (v7 + 1);
        v20 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        v21 = *v19;
        v20 = v20 + (v21 << 7) - 128;
        if (v21 < 0)
        {
          v63 = sub_1958770(v7, v20);
          *v82 = v63;
          *(a1 + 92) = v64;
          if (!v63)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v19 = (v7 + 2);
LABEL_23:
          *v82 = v19;
          *(a1 + 92) = v20;
        }

        goto LABEL_68;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_97;
        }

        v25 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v27 = *v25;
        v28 = (v27 << 7) + v26;
        LODWORD(v26) = v28 - 128;
        if (v27 < 0)
        {
          *v82 = sub_19587DC(v7, (v28 - 128));
          if (!*v82)
          {
            goto LABEL_128;
          }

          LODWORD(v26) = v67;
        }

        else
        {
          v25 = (v7 + 2);
LABEL_33:
          *v82 = v25;
        }

        if (sub_1454008(v26))
        {
          *(a1 + 16) |= 0x4000u;
          *(a1 + 96) = v26;
        }

        else
        {
          sub_144E0C4();
        }

        goto LABEL_68;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_97;
        }

        v5 |= 0x8000u;
        v48 = (v7 + 1);
        v49 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_80;
        }

        v50 = *v48;
        v49 = v49 + (v50 << 7) - 128;
        if (v50 < 0)
        {
          v76 = sub_1958770(v7, v49);
          *v82 = v76;
          *(a1 + 100) = v77;
          if (!v76)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v48 = (v7 + 2);
LABEL_80:
          *v82 = v48;
          *(a1 + 100) = v49;
        }

        goto LABEL_68;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_97;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 40);
        goto LABEL_66;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_97;
        }

        v5 |= 0x20000u;
        v36 = (v7 + 1);
        LODWORD(v35) = *v7;
        if ((v35 & 0x80) == 0)
        {
          goto LABEL_50;
        }

        v37 = *v36;
        v35 = v35 + (v37 << 7) - 128;
        if (v37 < 0)
        {
          v72 = sub_19587DC(v7, v35);
          *v82 = v72;
          *(a1 + 112) = v73;
          if (!v72)
          {
            goto LABEL_128;
          }
        }

        else
        {
          v36 = (v7 + 2);
LABEL_50:
          *v82 = v36;
          *(a1 + 112) = v35;
        }

        goto LABEL_68;
      case 0x11u:
        if (v8 != 137)
        {
          goto LABEL_97;
        }

        v15 = *v7;
        v14 = v7 + 8;
        v5 |= 0x10000u;
        *(a1 + 104) = v15;
LABEL_61:
        *v82 = v14;
        goto LABEL_68;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_97;
        }

        *(a1 + 16) |= 8u;
        v41 = *(a1 + 8);
        v17 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v17 = *v17;
        }

        v18 = (a1 + 48);
LABEL_66:
        v42 = sub_194DB04(v18, v17);
        v43 = sub_1958890(v42, *v82, a3);
        goto LABEL_67;
      default:
LABEL_97:
        if (v8)
        {
          v60 = (v8 & 7) == 4;
        }

        else
        {
          v60 = 1;
        }

        if (!v60)
        {
          v61 = *(a1 + 8);
          if (v61)
          {
            v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v62 = sub_11F1920((a1 + 8));
            v7 = *v82;
          }

          v43 = sub_1952690(v8, v62, v7, a3);
LABEL_67:
          *v82 = v43;
          if (!v43)
          {
            goto LABEL_128;
          }

LABEL_68:
          if (sub_195ADC0(a3, v82, a3[11].i32[1]))
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
          *v82 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v82;
    }
  }
}

char *sub_143EBD4(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80) != 0)
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 72);
    *v6 = 17;
    *(v6 + 1) = v12;
    v6 += 9;
    if ((v5 & 0x200) == 0)
    {
LABEL_12:
      if ((v5 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_21:
      v6 = sub_128AEEC(a3, 4, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v13 = *(a1 + 88);
  *v6 = 24;
  v6[1] = v13;
  v6 += 2;
  if (v5)
  {
    goto LABEL_21;
  }

LABEL_13:
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_29;
  }

LABEL_22:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v14 = *(a1 + 84);
  *v6 = 40;
  v6[1] = v14;
  if (v14 > 0x7F)
  {
    v6[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v6[2] = v14 >> 7;
    v11 = v6 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        LODWORD(v6) = v15 >> 7;
        *v11++ = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_29:
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v18 = *(a1 + 56);
    *v11 = 50;
    v19 = *(v18 + 20);
    v11[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v11 + 1);
    }

    else
    {
      v20 = v11 + 2;
    }

    v11 = sub_1440034(v18, v20, a3);
    if ((v5 & 0x400) == 0)
    {
LABEL_31:
      if ((v5 & 2) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_46;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_31;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v21 = *(a1 + 89);
  *v11 = 56;
  v11[1] = v21;
  v11 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_32:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = sub_128AEEC(a3, 8, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x800) == 0)
  {
LABEL_33:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v22 = *(a1 + 90);
  *v11 = 72;
  v11[1] = v22;
  v11 += 2;
  if ((v5 & 0x1000) == 0)
  {
LABEL_34:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_35;
    }

LABEL_53:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v24 = *(a1 + 64);
    *v11 = 90;
    v25 = *(v24 + 20);
    v11[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v11 + 1);
    }

    else
    {
      v26 = v11 + 2;
    }

    v11 = sub_143DD58(v24, v26, a3);
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_59;
  }

LABEL_50:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v23 = *(a1 + 91);
  *v11 = 80;
  v11[1] = v23;
  v11 += 2;
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_35:
  if ((v5 & 0x2000) == 0)
  {
LABEL_36:
    v17 = v11;
    goto LABEL_66;
  }

LABEL_59:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v27 = *(a1 + 92);
  *v11 = 96;
  v11[1] = v27;
  if (v27 > 0x7F)
  {
    v11[1] = v27 | 0x80;
    v28 = v27 >> 7;
    v11[2] = v27 >> 7;
    v17 = v11 + 3;
    if (v27 >= 0x4000)
    {
      LOBYTE(v29) = v11[2];
      do
      {
        *(v17 - 1) = v29 | 0x80;
        v29 = v28 >> 7;
        *v17++ = v28 >> 7;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
    }
  }

  else
  {
    v17 = v11 + 2;
  }

LABEL_66:
  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v32 = *(a1 + 96);
    *v17 = 104;
    v17[1] = v32;
    if (v32 > 0x7F)
    {
      v17[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v17[2] = v32 >> 7;
      v31 = v17 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v34) = v17[2];
        do
        {
          *(v31 - 1) = v34 | 0x80;
          v34 = v33 >> 7;
          *v31++ = v33 >> 7;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
      }
    }

    else
    {
      v31 = v17 + 2;
    }
  }

  else
  {
    v31 = v17;
  }

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v37 = *(a1 + 100);
    *v31 = 112;
    v31[1] = v37;
    if (v37 > 0x7F)
    {
      v31[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v31[2] = v37 >> 7;
      v36 = v31 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v31) = v31[2];
        do
        {
          *(v36 - 1) = v31 | 0x80;
          LODWORD(v31) = v38 >> 7;
          *v36++ = v38 >> 7;
          v39 = v38 >> 14;
          v38 >>= 7;
        }

        while (v39);
      }
    }

    else
    {
      v36 = v31 + 2;
    }
  }

  else
  {
    v36 = v31;
  }

  if ((v5 & 4) != 0)
  {
    v36 = sub_128AEEC(a3, 15, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v36);
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v41 = *(a1 + 112);
    *v36 = 384;
    v36[2] = v41;
    if (v41 > 0x7F)
    {
      v36[2] = v41 | 0x80;
      v42 = v41 >> 7;
      v36[3] = v41 >> 7;
      v40 = v36 + 4;
      if (v41 >= 0x4000)
      {
        LOBYTE(v43) = v36[3];
        do
        {
          *(v40 - 1) = v43 | 0x80;
          v43 = v42 >> 7;
          *v40++ = v42 >> 7;
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
      }
    }

    else
    {
      v40 = v36 + 3;
    }
  }

  else
  {
    v40 = v36;
  }

  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v45 = *(a1 + 104);
    *v40 = 393;
    *(v40 + 2) = v45;
    v40 += 10;
  }

  if ((v5 & 8) != 0)
  {
    v40 = sub_128AEEC(a3, 18, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v40);
  }

  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v40;
  }

  v48 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v49 = *(v48 + 31);
  if (v49 < 0)
  {
    v50 = *(v48 + 8);
    v49 = *(v48 + 16);
  }

  else
  {
    v50 = (v48 + 8);
  }

  if (*a3 - v40 >= v49)
  {
    v51 = v49;
    memcpy(v40, v50, v49);
    v40 += v51;
    return v40;
  }

  return sub_1957130(a3, v50, v49, v40);
}

uint64_t sub_143F254(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_22;
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
    v17 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_45;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v20 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_45:
  v23 = sub_1440604(*(a1 + 56));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_16:
    v11 = sub_143E014(*(a1 + 64));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0x40) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

  if ((v2 & 0x80) != 0)
  {
    result += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v2 & 0x100) != 0)
  {
    result += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v12.i64[0] = 0x200000002;
  v12.i64[1] = 0x200000002;
  result += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_23342A0), v12));
  if ((v2 & 0x2000) != 0)
  {
    result += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x4000) == 0)
    {
LABEL_27:
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 0x4000) == 0)
  {
    goto LABEL_27;
  }

  v24 = *(a1 + 96);
  v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v24 >= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 11;
  }

  result += v26;
  if ((v2 & 0x8000) != 0)
  {
LABEL_28:
    result += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_29:
  if ((v2 & 0x30000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      result += 10;
    }

    if ((v2 & 0x20000) != 0)
    {
      v13 = *(a1 + 112);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 12;
      }

      result += v15;
    }
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v27 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    result += v28;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_143F5A0(std::string *result, uint64_t a2)
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

        goto LABEL_39;
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

      goto LABEL_42;
    }

LABEL_39:
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

      goto LABEL_45;
    }

LABEL_42:
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

      goto LABEL_53;
    }

LABEL_45:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v18 = v3[2].__r_.__value_.__l.__size_;
    if (!v18)
    {
      v19 = v3->__r_.__value_.__l.__size_;
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      sub_144610C(v20);
      v3[2].__r_.__value_.__l.__size_ = v18;
    }

    if (*(a2 + 56))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = &off_2771190;
    }

    result = sub_143F878(v18, v21);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_61;
    }

LABEL_53:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v22 = v3[2].__r_.__value_.__r.__words[2];
    if (!v22)
    {
      v23 = v3->__r_.__value_.__l.__size_;
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_1445FF4(v24);
      v3[2].__r_.__value_.__r.__words[2] = v22;
    }

    if (*(a2 + 64))
    {
      v25 = *(a2 + 64);
    }

    else
    {
      v25 = &off_27710F0;
    }

    result = sub_12095D8(v22, v25);
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

LABEL_61:
    v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
    if ((v4 & 0x200) == 0)
    {
LABEL_15:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_65;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  v3[3].__r_.__value_.__s.__data_[16] = *(a2 + 88);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  v3[3].__r_.__value_.__s.__data_[17] = *(a2 + 89);
  if ((v4 & 0x800) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  v3[3].__r_.__value_.__s.__data_[18] = *(a2 + 90);
  if ((v4 & 0x1000) == 0)
  {
LABEL_18:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  v3[3].__r_.__value_.__s.__data_[19] = *(a2 + 91);
  if ((v4 & 0x2000) == 0)
  {
LABEL_19:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

LABEL_69:
    LODWORD(v3[4].__r_.__value_.__l.__data_) = *(a2 + 96);
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_68:
  HIDWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 92);
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_69;
  }

LABEL_20:
  if ((v4 & 0x8000) != 0)
  {
LABEL_21:
    HIDWORD(v3[4].__r_.__value_.__r.__words[0]) = *(a2 + 100);
  }

LABEL_22:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
LABEL_23:
  if ((v4 & 0x30000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      v3[4].__r_.__value_.__l.__size_ = *(a2 + 104);
    }

    if ((v4 & 0x20000) != 0)
    {
      LODWORD(v3[4].__r_.__value_.__r.__words[2]) = *(a2 + 112);
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

std::string *sub_143F878(std::string *result, uint64_t a2)
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

        goto LABEL_25;
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

      goto LABEL_26;
    }

LABEL_25:
    result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
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
    result[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }

LABEL_27:
    result[2].__r_.__value_.__s.__data_[1] = *(a2 + 49);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }

LABEL_28:
    result[2].__r_.__value_.__s.__data_[2] = *(a2 + 50);
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
      result[2].__r_.__value_.__l.__size_ = *(a2 + 56);
      goto LABEL_11;
    }

LABEL_29:
    HIDWORD(result[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x3F00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    result[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v2 & 0x200) == 0)
    {
LABEL_15:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  result[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  LODWORD(result[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
  if ((v2 & 0x800) == 0)
  {
LABEL_17:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

LABEL_35:
    LODWORD(result[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_34:
  HIDWORD(result[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
  if ((v2 & 0x1000) != 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  if ((v2 & 0x2000) != 0)
  {
LABEL_19:
    result[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
  }

LABEL_20:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_21:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_143F9B8(void *a1)
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

void sub_143FA2C(void *a1)
{
  sub_143F9B8(a1);

  operator delete();
}

char *sub_143FA64(uint64_t a1, char *a2, int32x2_t *a3)
{
  v67 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v67, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v67 + 1;
    v8 = *v67;
    if (*v67 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v67, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v67 + 2;
      }
    }

    v67 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_71;
        }

        v5 |= 8u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_12:
          v67 = v12;
          *(a1 + 48) = v11 != 0;
          goto LABEL_69;
        }

        v61 = sub_19587DC(v7, v11);
        v67 = v61;
        *(a1 + 48) = v62 != 0;
        if (v61)
        {
          goto LABEL_69;
        }

        goto LABEL_103;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_71;
        }

        v5 |= 0x10u;
        v35 = v7 + 1;
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_49;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if (v36 < 0)
        {
          v63 = sub_19587DC(v7, v34);
          v67 = v63;
          *(a1 + 49) = v64 != 0;
          if (!v63)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v35 = v7 + 2;
LABEL_49:
          v67 = v35;
          *(a1 + 49) = v34 != 0;
        }

        goto LABEL_69;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_71;
        }

        v5 |= 1u;
        v26 = v7 + 1;
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          v55 = sub_19587DC(v7, v25);
          v67 = v55;
          *(a1 + 24) = v56;
          if (!v55)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v26 = v7 + 2;
LABEL_34:
          v67 = v26;
          *(a1 + 24) = v25;
        }

        goto LABEL_69;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_71;
        }

        v5 |= 2u;
        v29 = v7 + 1;
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if (v30 < 0)
        {
          v57 = sub_19587DC(v7, v28);
          v67 = v57;
          *(a1 + 32) = v58;
          if (!v57)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v29 = v7 + 2;
LABEL_39:
          v67 = v29;
          *(a1 + 32) = v28;
        }

        goto LABEL_69;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_71;
        }

        v5 |= 4u;
        v18 = v7 + 1;
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v51 = sub_19587DC(v7, v17);
          v67 = v51;
          *(a1 + 40) = v52;
          if (!v51)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_22:
          v67 = v18;
          *(a1 + 40) = v17;
        }

        goto LABEL_69;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_71;
        }

        v38 = v7 + 1;
        v37 = *v7;
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v39 = *v38;
        v37 = (v39 << 7) + v37 - 128;
        if (v39 < 0)
        {
          v67 = sub_19587DC(v7, v37);
          if (!v67)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v38 = v7 + 2;
LABEL_54:
          v67 = v38;
        }

        if (v37 > 2)
        {
          sub_13137B8();
        }

        else
        {
          *(a1 + 16) |= 0x40u;
          *(a1 + 52) = v37;
        }

        goto LABEL_69;
      case 7u:
        if (v8 != 57)
        {
          goto LABEL_71;
        }

        v43 = *v7;
        v20 = v7 + 8;
        v5 |= 0x80u;
        *(a1 + 56) = v43;
        goto LABEL_68;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_71;
        }

        v5 |= 0x800u;
        v32 = v7 + 1;
        LODWORD(v31) = *v7;
        if ((v31 & 0x80) == 0)
        {
          goto LABEL_44;
        }

        v33 = *v32;
        v31 = v31 + (v33 << 7) - 128;
        if (v33 < 0)
        {
          v59 = sub_19587DC(v7, v31);
          v67 = v59;
          *(a1 + 84) = v60;
          if (!v59)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_44:
          v67 = v32;
          *(a1 + 84) = v31;
        }

        goto LABEL_69;
      case 9u:
        if (v8 != 73)
        {
          goto LABEL_71;
        }

        v45 = *v7;
        v20 = v7 + 8;
        v5 |= 0x100u;
        *(a1 + 64) = v45;
        goto LABEL_68;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_71;
        }

        v5 |= 0x1000u;
        v23 = v7 + 1;
        LODWORD(v22) = *v7;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v24 = *v23;
        v22 = v22 + (v24 << 7) - 128;
        if (v24 < 0)
        {
          v53 = sub_19587DC(v7, v22);
          v67 = v53;
          *(a1 + 88) = v54;
          if (!v53)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v23 = v7 + 2;
LABEL_29:
          v67 = v23;
          *(a1 + 88) = v22;
        }

        goto LABEL_69;
      case 0xBu:
        if (v8 != 89)
        {
          goto LABEL_71;
        }

        v44 = *v7;
        v20 = v7 + 8;
        v5 |= 0x2000u;
        *(a1 + 96) = v44;
        goto LABEL_68;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_71;
        }

        v5 |= 0x20u;
        v15 = v7 + 1;
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v49 = sub_19587DC(v7, v14);
          v67 = v49;
          *(a1 + 50) = v50 != 0;
          if (!v49)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v15 = v7 + 2;
LABEL_17:
          v67 = v15;
          *(a1 + 50) = v14 != 0;
        }

        goto LABEL_69;
      case 0xDu:
        if (v8 != 105)
        {
          goto LABEL_71;
        }

        v21 = *v7;
        v20 = v7 + 8;
        v5 |= 0x200u;
        *(a1 + 72) = v21;
LABEL_68:
        v67 = v20;
        goto LABEL_69;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_71;
        }

        v5 |= 0x400u;
        v40 = v7 + 1;
        v41 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        v42 = *v40;
        v41 = v41 + (v42 << 7) - 128;
        if (v42 < 0)
        {
          v65 = sub_1958770(v7, v41);
          v67 = v65;
          *(a1 + 80) = v66;
          if (!v65)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v40 = v7 + 2;
LABEL_61:
          v67 = v40;
          *(a1 + 80) = v41;
        }

        goto LABEL_69;
      default:
LABEL_71:
        if (v8)
        {
          v46 = (v8 & 7) == 4;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          v47 = *(a1 + 8);
          if (v47)
          {
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v48 = sub_11F1920((a1 + 8));
            v7 = v67;
          }

          v67 = sub_1952690(v8, v48, v7, a3);
          if (!v67)
          {
            goto LABEL_103;
          }

LABEL_69:
          if (sub_195ADC0(a3, &v67, a3[11].i32[1]))
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
LABEL_103:
          v67 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v67;
    }
  }
}

char *sub_1440034(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 49);
    *__dst = 16;
    __dst[1] = v8;
    __dst += 2;
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 48);
  *__dst = 8;
  __dst[1] = v7;
  __dst += 2;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 1) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v9 = *(a1 + 24);
  *__dst = 24;
  __dst[1] = v9;
  if (v9 > 0x7F)
  {
    __dst[1] = v9 | 0x80;
    v10 = v9 >> 7;
    __dst[2] = v9 >> 7;
    v6 = __dst + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = __dst[2];
      do
      {
        *(v6 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v6++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_18:
  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 32);
    *v6 = 32;
    v6[1] = v14;
    if (v14 > 0x7F)
    {
      v6[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v6[2] = v14 >> 7;
      v13 = v6 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v13 - 1) = v6 | 0x80;
          v6 = (v15 >> 7);
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = v6 + 2;
    }
  }

  else
  {
    v13 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v18 = *(a1 + 40);
    *v13 = 40;
    v13[1] = v18;
    if (v18 > 0x7F)
    {
      v13[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v13[2] = v18 >> 7;
      v17 = v13 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v13[2];
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
      v17 = v13 + 2;
    }
  }

  else
  {
    v17 = v13;
  }

  if ((v5 & 0x40) != 0)
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
        LOBYTE(v17) = v17[2];
        do
        {
          *(v22 - 1) = v17 | 0x80;
          v17 = (v24 >> 7);
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v26 = *(a1 + 56);
    *v22 = 57;
    *(v22 + 1) = v26;
    v22 += 9;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v28 = *(a1 + 84);
    *v22 = 64;
    v22[1] = v28;
    if (v28 > 0x7F)
    {
      v22[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v22[2] = v28 >> 7;
      v27 = v22 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v30) = v22[2];
        do
        {
          *(v27 - 1) = v30 | 0x80;
          v30 = v29 >> 7;
          *v27++ = v29 >> 7;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v27 = v22 + 2;
    }
  }

  else
  {
    v27 = v22;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v32 = *(a1 + 64);
    *v27 = 73;
    *(v27 + 1) = v32;
    v27 += 9;
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v34 = *(a1 + 88);
    *v27 = 80;
    v27[1] = v34;
    if (v34 > 0x7F)
    {
      v27[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v27[2] = v34 >> 7;
      v33 = v27 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v27) = v27[2];
        do
        {
          *(v33 - 1) = v27 | 0x80;
          v27 = (v35 >> 7);
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v27 + 2;
    }
  }

  else
  {
    v33 = v27;
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v38 = *(a1 + 96);
    *v33 = 89;
    *(v33 + 1) = v38;
    v33 += 9;
    if ((v5 & 0x20) == 0)
    {
LABEL_73:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_74;
      }

LABEL_82:
      if (*a3 <= v33)
      {
        v33 = sub_225EB68(a3, v33);
      }

      v40 = *(a1 + 72);
      *v33 = 105;
      *(v33 + 1) = v40;
      v33 += 9;
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_85;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_73;
  }

  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v39 = *(a1 + 50);
  *v33 = 96;
  v33[1] = v39;
  v33 += 2;
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_82;
  }

LABEL_74:
  if ((v5 & 0x400) == 0)
  {
LABEL_75:
    v37 = v33;
    goto LABEL_92;
  }

LABEL_85:
  if (*a3 <= v33)
  {
    v33 = sub_225EB68(a3, v33);
  }

  v41 = *(a1 + 80);
  *v33 = 112;
  v33[1] = v41;
  if (v41 > 0x7F)
  {
    v33[1] = v41 | 0x80;
    v42 = v41 >> 7;
    v33[2] = v41 >> 7;
    v37 = v33 + 3;
    if (v41 >= 0x4000)
    {
      LOBYTE(v43) = v33[2];
      do
      {
        *(v37 - 1) = v43 | 0x80;
        v43 = v42 >> 7;
        *v37++ = v42 >> 7;
        v44 = v42 >> 14;
        v42 >>= 7;
      }

      while (v44);
    }
  }

  else
  {
    v37 = v33 + 2;
  }

LABEL_92:
  v45 = *(a1 + 8);
  if ((v45 & 1) == 0)
  {
    return v37;
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

  if (*a3 - v37 >= v48)
  {
    v50 = v48;
    memcpy(v37, v49, v48);
    v37 += v50;
    return v37;
  }

  return sub_1957130(a3, v49, v48, v37);
}

unint64_t sub_1440604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v3 = v2 + ((v1 >> 3) & 2) + ((v1 >> 2) & 2) + ((v1 >> 4) & 2);
  if ((v1 & 0x40) != 0)
  {
    v4 = *(a1 + 52);
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 11;
    }

    v3 += v6;
  }

  if ((v1 & 0x80) != 0)
  {
    v3 += 9;
  }

LABEL_17:
  if ((v1 & 0x3F00) == 0)
  {
    goto LABEL_31;
  }

  if ((v1 & 0x100) != 0)
  {
    v3 += 9;
  }

  if ((v1 & 0x200) != 0)
  {
    v3 += 9;
  }

  if ((v1 & 0x400) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x800) == 0)
    {
LABEL_24:
      if ((v1 & 0x1000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  else if ((v1 & 0x800) == 0)
  {
    goto LABEL_24;
  }

  v12 = *(a1 + 84);
  v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v12 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 11;
  }

  v3 += v14;
  if ((v1 & 0x1000) != 0)
  {
LABEL_25:
    v7 = *(a1 + 88);
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 11;
    }

    v3 += v9;
  }

LABEL_29:
  if ((v1 & 0x2000) != 0)
  {
    v3 += 9;
  }

LABEL_31:
  v10 = *(a1 + 8);
  if (v10)
  {
    v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v3 += v16;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1440804(void *a1)
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

  sub_1440888(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1440888(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27711F8)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_144296C(v4);
      operator delete();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      sub_144238C(v5);
      operator delete();
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1442E74(v6);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_1443380(result);

      operator delete();
    }
  }

  return result;
}

void sub_144096C(void *a1)
{
  sub_1440804(a1);

  operator delete();
}

uint64_t sub_14409A4(uint64_t result)
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
        goto LABEL_20;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_21:
    result = sub_1440AC0(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_22;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  result = sub_1440A98(*(result + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_22:
  result = sub_1440B30(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1440B88(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  if ((v2 & 0x1F00) != 0)
  {
    *(v1 + 84) = 0;
    *(v1 + 76) = 0;
    *(v1 + 92) = 4;
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

uint64_t sub_1440A98(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = -1;
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

uint64_t sub_1440AC0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1440B88(*(result + 24));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 36) = -1;
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

uint64_t sub_1440B30(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1440B88(uint64_t a1)
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

uint64_t sub_1440BD0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v56, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v56 + 1);
    v8 = **v56;
    if (**v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v56 + 2);
      }
    }

    *v56 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_67;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = sub_194DB04((a1 + 24), v12);
        v14 = sub_1958890(v13, *v56, a3);
        goto LABEL_74;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_67;
        }

        v5 |= 0x20u;
        v37 = (v7 + 1);
        v38 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        v39 = *v37;
        v38 = v38 + (v39 << 7) - 128;
        if (v39 < 0)
        {
          v54 = sub_1958770(v7, v38);
          *v56 = v54;
          *(a1 + 64) = v55;
          if (!v54)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v37 = (v7 + 2);
LABEL_53:
          *v56 = v37;
          *(a1 + 64) = v38;
        }

        goto LABEL_75;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_67;
        }

        v5 |= 0x40u;
        v27 = (v7 + 1);
        v28 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        v29 = *v27;
        v28 = v28 + (v29 << 7) - 128;
        if (v29 < 0)
        {
          v49 = sub_1958770(v7, v28);
          *v56 = v49;
          *(a1 + 68) = v50;
          if (!v49)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v27 = (v7 + 2);
LABEL_36:
          *v56 = v27;
          *(a1 + 68) = v28;
        }

        goto LABEL_75;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_67;
        }

        v5 |= 0x80u;
        v30 = (v7 + 1);
        v31 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        v32 = *v30;
        v31 = v31 + (v32 << 7) - 128;
        if (v32 < 0)
        {
          v51 = sub_1958770(v7, v31);
          *v56 = v51;
          *(a1 + 72) = v52;
          if (!v51)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v30 = (v7 + 2);
LABEL_41:
          *v56 = v30;
          *(a1 + 72) = v31;
        }

        goto LABEL_75;
      case 5u:
        if (v8 != 45)
        {
          goto LABEL_67;
        }

        v19 = *v7;
        v18 = v7 + 4;
        v5 |= 0x100u;
        *(a1 + 76) = v19;
        goto LABEL_66;
      case 6u:
        if (v8 != 53)
        {
          goto LABEL_67;
        }

        v40 = *v7;
        v18 = v7 + 4;
        v5 |= 0x200u;
        *(a1 + 80) = v40;
        goto LABEL_66;
      case 7u:
        if (v8 != 61)
        {
          goto LABEL_67;
        }

        v41 = *v7;
        v18 = v7 + 4;
        v5 |= 0x400u;
        *(a1 + 84) = v41;
        goto LABEL_66;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_67;
        }

        v33 = (v7 + 1);
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v35 = *v33;
        v36 = (v35 << 7) + v34;
        LODWORD(v34) = v36 - 128;
        if (v35 < 0)
        {
          *v56 = sub_19587DC(v7, (v36 - 128));
          if (!*v56)
          {
            goto LABEL_89;
          }

          LODWORD(v34) = v53;
        }

        else
        {
          v33 = (v7 + 2);
LABEL_46:
          *v56 = v33;
        }

        if (sub_144E2E8(v34))
        {
          *(a1 + 16) |= 0x1000u;
          *(a1 + 92) = v34;
        }

        else
        {
          sub_12E85F0();
        }

        goto LABEL_75;
      case 9u:
        if (v8 != 77)
        {
          goto LABEL_67;
        }

        v45 = *v7;
        v18 = v7 + 4;
        v5 |= 0x800u;
        *(a1 + 88) = v45;
LABEL_66:
        *v56 = v18;
        goto LABEL_75;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_67;
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

          sub_144633C(v25);
          v23 = v26;
          *(a1 + 32) = v26;
          v7 = *v56;
        }

        v14 = sub_220BB68(a3, v23, v7);
        goto LABEL_74;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_67;
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

          v42 = sub_14462B8(v44);
          *(a1 + 40) = v42;
          v7 = *v56;
        }

        v14 = sub_220BBF8(a3, v42, v7);
        goto LABEL_74;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_67;
        }

        *(a1 + 16) |= 8u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_14463BC(v17);
          *(a1 + 48) = v15;
          v7 = *v56;
        }

        v14 = sub_220BC88(a3, v15, v7);
        goto LABEL_74;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_67;
        }

        *(a1 + 16) |= 0x10u;
        v20 = *(a1 + 56);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_1446458(v22);
          *(a1 + 56) = v20;
          v7 = *v56;
        }

        v14 = sub_220BD18(a3, v20, v7);
        goto LABEL_74;
      default:
LABEL_67:
        if (v8)
        {
          v46 = (v8 & 7) == 4;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          v47 = *(a1 + 8);
          if (v47)
          {
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v48 = sub_11F1920((a1 + 8));
            v7 = *v56;
          }

          v14 = sub_1952690(v8, v48, v7, a3);
LABEL_74:
          *v56 = v14;
          if (!v14)
          {
            goto LABEL_89;
          }

LABEL_75:
          if (sub_195ADC0(a3, v56, a3[11].i32[1]))
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
LABEL_89:
          *v56 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v56;
    }
  }
}

char *sub_14410E0(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 64);
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

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 68);
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

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 72);
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
          LODWORD(v12) = v19 >> 7;
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

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 76);
    *v17 = 45;
    *(v17 + 1) = v22;
    v17 += 5;
    if ((v6 & 0x200) == 0)
    {
LABEL_32:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_33;
      }

LABEL_41:
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v24 = *(a1 + 84);
      *v17 = 61;
      *(v17 + 1) = v24;
      v17 += 5;
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v23 = *(a1 + 80);
  *v17 = 53;
  *(v17 + 1) = v23;
  v17 += 5;
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_41;
  }

LABEL_33:
  if ((v6 & 0x1000) == 0)
  {
LABEL_34:
    v21 = v17;
    goto LABEL_51;
  }

LABEL_44:
  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v25 = *(a1 + 92);
  *v17 = 64;
  v17[1] = v25;
  if (v25 > 0x7F)
  {
    v17[1] = v25 | 0x80;
    v26 = v25 >> 7;
    v17[2] = v25 >> 7;
    v21 = v17 + 3;
    if (v25 >= 0x4000)
    {
      LOBYTE(v27) = v17[2];
      do
      {
        *(v21 - 1) = v27 | 0x80;
        v27 = v26 >> 7;
        *v21++ = v26 >> 7;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
    }
  }

  else
  {
    v21 = v17 + 2;
  }

LABEL_51:
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v29 = *(a1 + 88);
    *v21 = 77;
    *(v21 + 1) = v29;
    v21 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_53:
      if ((v6 & 4) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_53;
  }

  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v30 = *(a1 + 32);
  *v21 = 82;
  v31 = *(v30 + 20);
  v21[1] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v21 + 1);
  }

  else
  {
    v32 = v21 + 2;
  }

  v21 = sub_1442BF4(v30, v32, a3);
  if ((v6 & 4) == 0)
  {
LABEL_54:
    if ((v6 & 8) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_72;
  }

LABEL_66:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v33 = *(a1 + 40);
  *v21 = 90;
  v34 = *(v33 + 20);
  v21[1] = v34;
  if (v34 > 0x7F)
  {
    v35 = sub_19575D0(v34, v21 + 1);
  }

  else
  {
    v35 = v21 + 2;
  }

  v21 = sub_14426C4(v33, v35, a3);
  if ((v6 & 8) == 0)
  {
LABEL_55:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_78;
  }

LABEL_72:
  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v36 = *(a1 + 48);
  *v21 = 98;
  v37 = *(v36 + 20);
  v21[1] = v37;
  if (v37 > 0x7F)
  {
    v38 = sub_19575D0(v37, v21 + 1);
  }

  else
  {
    v38 = v21 + 2;
  }

  v21 = sub_14431A8(v36, v38, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_78:
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v39 = *(a1 + 56);
    *v21 = 106;
    v40 = *(v39 + 20);
    v21[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v21 + 1);
    }

    else
    {
      v41 = v21 + 2;
    }

    v21 = sub_1443618(v39, v41, a3);
  }

LABEL_84:
  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return v21;
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

  if (*a3 - v21 >= v45)
  {
    v47 = v45;
    memcpy(v21, v46, v45);
    v21 += v47;
    return v21;
  }

  return sub_1957130(a3, v46, v45, v21);
}

uint64_t sub_144164C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_1442DA4(*(a1 + 32));
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
    v14 = sub_1442888(*(a1 + 40));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v15 = sub_14432CC(*(a1 + 48));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = sub_1443764(*(a1 + 56));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_38:
  v3 += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v3 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0x1F00) != 0)
  {
    v8 = v3 + 5;
    if ((v2 & 0x100) == 0)
    {
      v8 = v3;
    }

    if ((v2 & 0x200) != 0)
    {
      v8 += 5;
    }

    if ((v2 & 0x400) != 0)
    {
      v8 += 5;
    }

    if ((v2 & 0x800) != 0)
    {
      v3 = v8 + 5;
    }

    else
    {
      v3 = v8;
    }

    if ((v2 & 0x1000) != 0)
    {
      v9 = *(a1 + 92);
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 11;
      }

      v3 += v11;
    }
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v3 += v18;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_14418BC(std::string *result, uint64_t a2)
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

      sub_144633C(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2771280;
    }

    result = sub_128F8FC(v9, v12);
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

      v13 = sub_14462B8(v15);
      v3[1].__r_.__value_.__r.__words[2] = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2771258;
    }

    result = sub_1441B40(v13, v16);
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

      data = sub_14463BC(v19);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_27712A0;
    }

    result = sub_1441C28(data, v20);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_59;
    }

LABEL_51:
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

      v21 = sub_1446458(v23);
      v3[2].__r_.__value_.__l.__size_ = v21;
    }

    if (*(a2 + 56))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = &off_27712D8;
    }

    result = sub_12B0A14(v21, v24);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_60;
    }

LABEL_59:
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

LABEL_60:
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

      goto LABEL_64;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_65:
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_64:
  HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_65;
  }

LABEL_17:
  if ((v4 & 0x1000) != 0)
  {
LABEL_18:
    HIDWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 92);
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

std::string *sub_1441B40(std::string *result, uint64_t a2)
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

        data = sub_1446458(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_27712D8;
      }

      result = sub_12B0A14(data, v9);
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

    v3[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
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

std::string *sub_1441C28(std::string *result, uint64_t a2)
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

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v3[2].__r_.__value_.__s.__data_[0] = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1441D18(void *a1)
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

void sub_1441D8C(void *a1)
{
  sub_1441D18(a1);

  operator delete();
}

uint64_t sub_1441DC4(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
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

char *sub_1441DE8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 9)
      {
        v5 |= 1u;
        *(a1 + 24) = *v7;
        v29 = v7 + 8;
        goto LABEL_41;
      }

      goto LABEL_34;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_34;
    }

    v5 |= 2u;
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
      v29 = v14;
      *(a1 + 32) = v13 != 0;
      goto LABEL_41;
    }

    v25 = sub_19587DC(v7, v13);
    v29 = v25;
    *(a1 + 32) = v26 != 0;
    if (!v25)
    {
      goto LABEL_53;
    }

LABEL_41:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_34;
    }

    v5 |= 4u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_33:
      v29 = v20;
      *(a1 + 33) = v19 != 0;
      goto LABEL_41;
    }

    v27 = sub_19587DC(v7, v19);
    v29 = v27;
    *(a1 + 33) = v28 != 0;
    if (!v27)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  if (v11 == 4 && v8 == 32)
  {
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if (v18 < 0)
    {
      v29 = sub_19587DC(v7, v16);
      if (!v29)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v17 = v7 + 2;
LABEL_24:
      v29 = v17;
    }

    if (v16 > 2)
    {
      sub_12E8500();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 36) = v16;
    }

    goto LABEL_41;
  }

LABEL_34:
  if (v8)
  {
    v22 = (v8 & 7) == 4;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v7 = v29;
    }

    v29 = sub_1952690(v8, v24, v7, a3);
    if (!v29)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_1442098(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 9;
    *(__dst + 1) = v7;
    __dst += 9;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v9 = *(a1 + 33);
      *__dst = 24;
      __dst[1] = v9;
      __dst += 2;
      if ((v5 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 32);
  *__dst = 16;
  __dst[1] = v8;
  __dst += 2;
  if ((v5 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
LABEL_5:
    v6 = __dst;
    goto LABEL_22;
  }

LABEL_15:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v10 = *(a1 + 36);
  *__dst = 32;
  __dst[1] = v10;
  if (v10 > 0x7F)
  {
    __dst[1] = v10 | 0x80;
    v11 = v10 >> 7;
    __dst[2] = v10 >> 7;
    v6 = __dst + 3;
    if (v10 >= 0x4000)
    {
      LOBYTE(v12) = __dst[2];
      do
      {
        *(v6 - 1) = v12 | 0x80;
        v12 = v11 >> 7;
        *v6++ = v11 >> 7;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_22:
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

uint64_t sub_1442268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    v3 = (v2 | v1 & 2) + ((v1 >> 1) & 2);
    if ((v1 & 8) != 0)
    {
      v4 = *(a1 + 36);
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v4 >= 0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 11;
      }

      v3 += v6;
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

std::string *sub_1442300(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

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

LABEL_12:
      result[1].__r_.__value_.__s.__data_[9] = *(a2 + 33);
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

  result[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
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

uint64_t sub_144238C(uint64_t a1)
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
  if (a1 != &off_2771258)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1443380(v6);
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

void sub_1442444(uint64_t a1)
{
  sub_144238C(a1);

  operator delete();
}

char *sub_144247C(uint64_t a1, char *a2, int32x2_t *a3)
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
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v18 = v7 + 1;
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = v7 + 2;
LABEL_24:
        v30 = v18;
        *(a1 + 32) = v17 != 0;
        goto LABEL_37;
      }

      v26 = sub_19587DC(v7, v17);
      v30 = v26;
      *(a1 + 32) = v27 != 0;
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

      v5 |= 4u;
      v24 = v7 + 1;
      LODWORD(v23) = *v7;
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      v25 = *v24;
      v23 = v23 + (v25 << 7) - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_36:
        v30 = v24;
        *(a1 + 36) = v23;
        goto LABEL_37;
      }

      v28 = sub_19587DC(v7, v23);
      v30 = v28;
      *(a1 + 36) = v29;
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

      v20 = sub_1446458(v22);
      *(a1 + 24) = v20;
      v7 = v30;
    }

    v16 = sub_220BD18(a3, v20, v7);
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

char *sub_14426C4(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 36);
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

    v11 = *(a1 + 32);
    *v6 = 16;
    v6[1] = v11;
    v6 += 2;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 24);
    *v6 = 26;
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

    v6 = sub_1443618(v12, v14, a3);
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v18)
  {
    v20 = v18;
    memcpy(v6, v19, v18);
    v6 += v20;
    return v6;
  }

  return sub_1957130(a3, v19, v18, v6);
}

uint64_t sub_1442888(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = sub_1443764(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    result = v3 + (v2 & 2);
    if ((v2 & 4) != 0)
    {
      v6 = *(a1 + 36);
      if (v6 < 0)
      {
        v7 = 11;
      }

      else
      {
        v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v7;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    result += v10;
  }

  *(a1 + 20) = result;
  return result;
}

void *sub_144296C(void *a1)
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

void sub_14429E0(void *a1)
{
  sub_144296C(a1);

  operator delete();
}

char *sub_1442A18(uint64_t a1, char *a2, int32x2_t *a3)
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
    LODWORD(v15) = *v7;
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v15 = v15 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_24:
      v25 = v16;
      *(a1 + 28) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
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
    LODWORD(v18) = *v7;
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = v18 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      v25 = v19;
      *(a1 + 24) = v18;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
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

char *sub_1442BF4(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1442DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
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

void *sub_1442E74(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1442EF0(void *a1)
{
  sub_1442E74(a1);

  operator delete();
}

uint64_t sub_1442F28(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

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
      *v28 = v24;
      *(a1 + 48) = v23 != 0;
      v5 = 1;
      goto LABEL_36;
    }

    v26 = sub_19587DC(v7, v23);
    *v28 = v26;
    *(a1 + 48) = v27 != 0;
    v5 = 1;
    if (!v26)
    {
      goto LABEL_43;
    }

LABEL_36:
    if (sub_195ADC0(a3, v28, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    v15 = v7 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      *v28 = v15 + 1;
      v17 = *(a1 + 40);
      if (v17 && (v18 = *(a1 + 32), v18 < *v17))
      {
        *(a1 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        *v22 = v21;
        v22[1] = sub_195A650;
        *v21 = 0;
        v21[1] = 0;
        v21[2] = 0;
        v19 = sub_19593CC(a1 + 24, v21);
        v16 = *v28;
      }

      v15 = sub_1958890(v19, v16, a3);
      *v28 = v15;
      if (!v15)
      {
        goto LABEL_43;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_36;
      }
    }
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
      v7 = *v28;
    }

    *v28 = sub_1952690(v8, v14, v7, a3);
    if (!*v28)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_43:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_14431A8(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
  }

  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v4 = sub_1355F54(a3, 2, *(*(a1 + 40) + v8), v4);
      v8 += 8;
      --v7;
    }

    while (v7);
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

uint64_t sub_14432CC(uint64_t a1)
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

  v7 = v3 + 2 * (*(a1 + 16) & 1);
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v7 += v11;
  }

  *(a1 + 20) = v7;
  return v7;
}

uint64_t sub_1443380(uint64_t a1)
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