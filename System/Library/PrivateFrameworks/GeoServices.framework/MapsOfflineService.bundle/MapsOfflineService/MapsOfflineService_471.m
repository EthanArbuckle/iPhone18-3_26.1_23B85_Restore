uint64_t sub_1916454(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_271CC58;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  return a1;
}

uint64_t sub_1916558(uint64_t a1)
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

  if (a1 != &off_278B830 && *(a1 + 24))
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

void sub_1916610(uint64_t a1)
{
  sub_1916558(a1);

  operator delete();
}

unsigned __int8 *sub_1916648(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E4E44(*(result + 3));
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 4) = 0;
    *(v1 + 5) = 0;
    v1[56] = 0;
    *(v1 + 6) = 0;
    *(v1 + 15) = 1;
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

char *sub_19166C0(uint64_t a1, char *a2, int32x2_t *a3)
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
        goto LABEL_55;
      }

      v5 |= 2u;
      v22 = v7 + 1;
      v21 = *v7;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_36:
        v49 = v22;
        *(a1 + 32) = v21;
        goto LABEL_67;
      }

      v38 = sub_19587DC(v7, v21);
      v49 = v38;
      *(a1 + 32) = v39;
      if (!v38)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_55;
        }

        *(a1 + 16) |= 1u;
        v31 = *(a1 + 24);
        if (!v31)
        {
          v32 = *(a1 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_16F5828(v33);
          *(a1 + 24) = v31;
          v7 = v49;
        }

        v34 = sub_21F4D60(a3, v31, v7);
LABEL_62:
        v49 = v34;
        if (!v34)
        {
          goto LABEL_85;
        }

        goto LABEL_67;
      }

      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_55;
      }

      v5 |= 8u;
      LODWORD(v16) = *v7;
      if ((v16 & 0x80000000) == 0)
      {
        v17 = v7 + 1;
LABEL_66:
        v49 = v17;
        *(a1 + 48) = v16;
        goto LABEL_67;
      }

      v16 = (v7[1] << 7) + v16 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v17 = v7 + 2;
        goto LABEL_66;
      }

      v47 = sub_19587DC(v7, v16);
      v49 = v47;
      *(a1 + 48) = v48;
      if (!v47)
      {
        goto LABEL_85;
      }
    }

LABEL_67:
    if (sub_195ADC0(a3, &v49, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 0x31)
  {
    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_55;
      }

      v5 |= 4u;
      v25 = v7 + 1;
      v24 = *v7;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = v7 + 2;
LABEL_41:
        v49 = v25;
        *(a1 + 40) = v24;
        goto LABEL_67;
      }

      v40 = sub_19587DC(v7, v24);
      v49 = v40;
      *(a1 + 40) = v41;
      if (!v40)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_55;
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
        v49 = v12;
        *(a1 + 52) = v13;
        goto LABEL_67;
      }

      v43 = sub_1958770(v7, v13);
      v49 = v43;
      *(a1 + 52) = v44;
      if (!v43)
      {
        goto LABEL_85;
      }
    }

    goto LABEL_67;
  }

  if (v11 != 50)
  {
    if (v11 != 51 || v8 != 152)
    {
      goto LABEL_55;
    }

    v5 |= 0x20u;
    v19 = v7 + 1;
    v18 = *v7;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v20 = *v19;
    v18 = (v20 << 7) + v18 - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_31:
      v49 = v19;
      *(a1 + 56) = v18 != 0;
      goto LABEL_67;
    }

    v45 = sub_19587DC(v7, v18);
    v49 = v45;
    *(a1 + 56) = v46 != 0;
    if (!v45)
    {
      goto LABEL_85;
    }

    goto LABEL_67;
  }

  if (v8 == 144)
  {
    v27 = v7 + 1;
    v28 = *v7;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

    v29 = *v27;
    v30 = (v29 << 7) + v28;
    LODWORD(v28) = v30 - 128;
    if (v29 < 0)
    {
      v49 = sub_19587DC(v7, (v30 - 128));
      if (!v49)
      {
        goto LABEL_85;
      }

      LODWORD(v28) = v42;
    }

    else
    {
      v27 = v7 + 2;
LABEL_46:
      v49 = v27;
    }

    if (sub_15528B4(v28))
    {
      *(a1 + 16) |= 0x40u;
      *(a1 + 60) = v28;
    }

    else
    {
      sub_1948254();
    }

    goto LABEL_67;
  }

LABEL_55:
  if (v8)
  {
    v35 = (v8 & 7) == 4;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = v49;
    }

    v34 = sub_1952690(v8, v37, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_85:
  v49 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v49;
}

char *sub_1916AD8(uint64_t a1, char *__dst, _DWORD *a3)
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

    v15 = *(a1 + 48);
    *v6 = 24;
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

  if ((v5 & 4) != 0)
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

    v23 = *(a1 + 52);
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
        LOBYTE(v18) = v18[2];
        do
        {
          *(v22 - 1) = v18 | 0x80;
          LODWORD(v18) = v24 >> 7;
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 60);
    *v22 = 912;
    v22[2] = v27;
    if (v27 > 0x7F)
    {
      v22[2] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[3] = v27 >> 7;
      v26 = v22 + 4;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v22[3];
        do
        {
          *(v26 - 1) = v29 | 0x80;
          v29 = v28 >> 7;
          *v26++ = v28 >> 7;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v26 = v22 + 3;
    }
  }

  else
  {
    v26 = v22;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 56);
    *v26 = 920;
    v26[2] = v31;
    v26 += 3;
  }

  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return v26;
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

  if (*a3 - v26 >= v35)
  {
    v37 = v35;
    memcpy(v26, v36, v35);
    v26 += v37;
    return v26;
  }

  return sub_1957130(a3, v36, v35, v26);
}

uint64_t sub_1916EB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
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
    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v10 = *(a1 + 48);
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
LABEL_11:
    v3 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 0x20) != 0)
  {
    result = v3 + 3;
  }

  else
  {
    result = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v6 = *(a1 + 60);
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 12;
    }

    result += v8;
  }

LABEL_20:
  v9 = *(a1 + 8);
  if (v9)
  {
    v12 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    result += v13;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_191703C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) != 0)
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

        goto LABEL_24;
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

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 40) = *(a2 + 40);
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
    *(a1 + 48) = *(a2 + 48);
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
    *(a1 + 52) = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        *(a1 + 16) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_10;
    }

LABEL_27:
    *(a1 + 56) = *(a2 + 56);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1917164(uint64_t a1)
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

uint64_t sub_19171A4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_271CCD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void sub_191720C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_191723C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_271CCD8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  if (*(a2 + 40))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_1917370(uint64_t a1)
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
  if (a1 != &off_278B870)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1916558(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1917430(uint64_t a1)
{
  sub_1917370(a1);

  operator delete();
}

char *sub_1917468(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  if (sub_195ADC0(a3, &v22, a3[11].i32[1]))
  {
    return v22;
  }

  while (1)
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
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 40) |= 1u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      sub_191B9D8(v20);
      v18 = v21;
      *(a1 + 48) = v21;
      v6 = v22;
    }

    v14 = sub_225CE78(a3, v18, v6);
LABEL_34:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v22, a3[11].i32[1]))
    {
      return v22;
    }
  }

  if (v7 == 16)
  {
    v16 = v6 + 1;
    v15 = *v6;
    if (v15 < 0)
    {
      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if (v17 < 0)
      {
        v22 = sub_19587DC(v6, v15);
        if (!v22)
        {
          return 0;
        }

        goto LABEL_26;
      }

      v16 = v6 + 2;
    }

    v22 = v16;
LABEL_26:
    if (v15 > 5)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 40) |= 2u;
      *(a1 + 56) = v15;
    }

    goto LABEL_35;
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

  if (!v11)
  {
    if (v7 - 4000 < 0x640 || (v7 - 8000) >> 6 <= 0x7C)
    {
      v14 = sub_19525AC((a1 + 16), v7, v6, &off_278B870, (a1 + 8), a3);
    }

    else
    {
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
    }

    goto LABEL_34;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v22;
  }

  return 0;
}

char *sub_1917694(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
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

    a2 = sub_1916AD8(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 56);
    *a2 = 16;
    a2[1] = v10;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      a2[2] = v10 >> 7;
      v9 = a2 + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = a2[2];
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
      v9 = a2 + 2;
    }
  }

  else
  {
    v9 = a2;
  }

  if (*(a1 + 26))
  {
    v9 = sub_1953428(a1 + 16, 500, 2000, v9, a3);
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

uint64_t sub_1917844(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = sub_1916EB8(*(a1 + 48));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 56);
      if (v5 < 0)
      {
        v6 = 11;
      }

      else
      {
        v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v6;
    }
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

    v2 += v10;
  }

  *(a1 + 44) = v2;
  return v2;
}

void sub_1917914(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_17A82BC(a1);

    sub_17A8DBC(a1, a2);
  }
}

uint64_t sub_1917970(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_271CD58;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_19179EC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1917A1C(void *a1)
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

void sub_1917A90(void *a1)
{
  sub_1917A1C(a1);

  operator delete();
}

uint64_t sub_1917AC8(uint64_t a1)
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

char *sub_1917AE0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v14 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v14, a3[11].i32[1]))
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = v14 + 1;
    v7 = *v14;
    if (*v14 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v14, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v14 + 2;
      }
    }

    v14 = v6;
    if (v7 == 9)
    {
      *(a1 + 24) = *v6;
      v14 = v6 + 8;
      v5 = 1;
      goto LABEL_16;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v14;
    }

    v14 = sub_1952690(v7, v12, v6, a3);
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_16:
    if (sub_195ADC0(a3, &v14, a3[11].i32[1]))
    {
      goto LABEL_21;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_21;
  }

LABEL_22:
  v14 = 0;
LABEL_21:
  *(a1 + 16) |= v5;
  return v14;
}

char *sub_1917C14(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 9;
    *(v4 + 1) = v6;
    v4 += 9;
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

uint64_t sub_1917CF4(uint64_t a1)
{
  v1 = 9;
  if ((*(a1 + 16) & 1) == 0)
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

uint64_t sub_1917D4C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_271CDD8;
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
    sub_12E5E34((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 88) = &qword_278E990;
  if ((v11 & 0x20) != 0)
  {
    v17 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 88), (*(a2 + 88) & 0xFFFFFFFFFFFFFFFELL), v17);
    v11 = *(a2 + 16);
  }

  *(a1 + 96) = &qword_278E990;
  if ((v11 & 0x40) != 0)
  {
    v18 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v18 = *v18;
    }

    sub_194EA1C((a1 + 96), (*(a2 + 96) & 0xFFFFFFFFFFFFFFFELL), v18);
    v11 = *(a2 + 16);
  }

  *(a1 + 104) = &qword_278E990;
  if ((v11 & 0x80) != 0)
  {
    v19 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 104), (*(a2 + 104) & 0xFFFFFFFFFFFFFFFELL), v19);
    v11 = *(a2 + 16);
  }

  if ((v11 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  if ((v11 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v11 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  v20 = *(a2 + 136);
  v21 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v21;
  *(a1 + 136) = v20;
  return a1;
}

void *sub_1918108(void *a1)
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

  sub_1918198(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_12E5CA0(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1918198(uint64_t a1)
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

  result = (a1 + 104);
  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_278B8D0)
  {
    if (*(a1 + 112))
    {
      sub_16EE080();
      operator delete();
    }

    if (*(a1 + 120))
    {
      sub_16F2FF4();
      operator delete();
    }

    result = *(a1 + 128);
    if (result)
    {
      sub_16F285C();

      operator delete();
    }
  }

  return result;
}

void sub_19182E8(void *a1)
{
  sub_1918108(a1);

  operator delete();
}

uint64_t sub_1918320(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
        if (v8 != 10)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_92;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 2u;
        v40 = *(a1 + 8);
        v12 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
        if (v40)
        {
          v12 = *v12;
        }

        v13 = (a1 + 56);
        goto LABEL_92;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 4u;
        v32 = *(a1 + 8);
        v12 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v12 = *v12;
        }

        v13 = (a1 + 64);
        goto LABEL_92;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 8u;
        v36 = *(a1 + 8);
        v12 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if (v36)
        {
          v12 = *v12;
        }

        v13 = (a1 + 72);
        goto LABEL_92;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x10u;
        v22 = *(a1 + 8);
        v12 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v12 = *v12;
        }

        v13 = (a1 + 80);
        goto LABEL_92;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_119;
        }

        v5 |= 0x4000u;
        v45 = (v7 + 1);
        v44 = *v7;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_82;
        }

        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if (v46 < 0)
        {
          v70 = sub_19587DC(v7, v44);
          *v82 = v70;
          *(a1 + 152) = v71 != 0;
          if (!v70)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v45 = (v7 + 2);
LABEL_82:
          *v82 = v45;
          *(a1 + 152) = v44 != 0;
        }

        goto LABEL_94;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_119;
        }

        v5 |= 0x8000u;
        v53 = (v7 + 1);
        v52 = *v7;
        if ((v52 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        v54 = *v53;
        v52 = (v54 << 7) + v52 - 128;
        if (v54 < 0)
        {
          v74 = sub_19587DC(v7, v52);
          *v82 = v74;
          *(a1 + 153) = v75 != 0;
          if (!v74)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v53 = (v7 + 2);
LABEL_100:
          *v82 = v53;
          *(a1 + 153) = v52 != 0;
        }

        goto LABEL_94;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x100u;
        v37 = *(a1 + 112);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          v37 = sub_16F5F38(v39);
          *(a1 + 112) = v37;
          v7 = *v82;
        }

        v17 = sub_21F4CD0(a3, v37, v7);
        goto LABEL_93;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_119;
        }

        v5 |= 0x800u;
        v59 = (v7 + 1);
        v60 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_113;
        }

        v61 = *v59;
        v60 = v60 + (v61 << 7) - 128;
        if (v61 < 0)
        {
          v78 = sub_1958770(v7, v60);
          *v82 = v78;
          *(a1 + 136) = v79;
          if (!v78)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v59 = (v7 + 2);
LABEL_113:
          *v82 = v59;
          *(a1 + 136) = v60;
        }

        goto LABEL_94;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_119;
        }

        v30 = (v7 + 1);
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          *v82 = sub_19587DC(v7, v29);
          if (!*v82)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v30 = (v7 + 2);
LABEL_45:
          *v82 = v30;
        }

        if (v29 > 0x17)
        {
          sub_156E728();
        }

        else
        {
          *(a1 + 16) |= 0x1000u;
          *(a1 + 140) = v29;
        }

        goto LABEL_94;
      case 0xBu:
        if (v8 != 89)
        {
          goto LABEL_119;
        }

        v58 = *v7;
        v41 = v7 + 8;
        v5 |= 0x2000u;
        *(a1 + 144) = v58;
        goto LABEL_108;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_119;
        }

        v5 |= 0x10000u;
        v20 = (v7 + 1);
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v68 = sub_19587DC(v7, v19);
          *v82 = v68;
          *(a1 + 154) = v69 != 0;
          if (!v68)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v20 = (v7 + 2);
LABEL_26:
          *v82 = v20;
          *(a1 + 154) = v19 != 0;
        }

        goto LABEL_94;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_119;
        }

        v23 = v7 - 1;
        while (1)
        {
          v24 = v23 + 1;
          *v82 = v23 + 1;
          v25 = *(a1 + 40);
          if (v25 && (v26 = *(a1 + 32), v26 < *v25))
          {
            *(a1 + 32) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            v28 = sub_16F6038(*(a1 + 24));
            v27 = sub_19593CC(a1 + 24, v28);
            v24 = *v82;
          }

          v23 = sub_21F5B70(a3, v27, v24);
          *v82 = v23;
          if (!v23)
          {
            goto LABEL_146;
          }

          if (*a3 <= v23 || *v23 != 106)
          {
            goto LABEL_94;
          }
        }

      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x20u;
        v50 = *(a1 + 8);
        v12 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if (v50)
        {
          v12 = *v12;
        }

        v13 = (a1 + 88);
        goto LABEL_92;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x40u;
        v18 = *(a1 + 8);
        v12 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v12 = *v12;
        }

        v13 = (a1 + 96);
        goto LABEL_92;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x200u;
        v33 = *(a1 + 120);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v33 = sub_16F63DC(v35);
          *(a1 + 120) = v33;
          v7 = *v82;
        }

        v17 = sub_221BC88(a3, v33, v7);
        goto LABEL_93;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x400u;
        v14 = *(a1 + 128);
        if (!v14)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v14 = sub_16F6380(v16);
          *(a1 + 128) = v14;
          v7 = *v82;
        }

        v17 = sub_221BD18(a3, v14, v7);
        goto LABEL_93;
      case 0x12u:
        if (v8 != 145)
        {
          goto LABEL_119;
        }

        v42 = *v7;
        v41 = v7 + 8;
        v5 |= 0x80000u;
        *(a1 + 160) = v42;
LABEL_108:
        *v82 = v41;
        goto LABEL_94;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_119;
        }

        v5 |= 0x20000u;
        v56 = (v7 + 1);
        v55 = *v7;
        if ((v55 & 0x8000000000000000) == 0)
        {
          goto LABEL_105;
        }

        v57 = *v56;
        v55 = (v57 << 7) + v55 - 128;
        if (v57 < 0)
        {
          v76 = sub_19587DC(v7, v55);
          *v82 = v76;
          *(a1 + 155) = v77 != 0;
          if (!v76)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v56 = (v7 + 2);
LABEL_105:
          *v82 = v56;
          *(a1 + 155) = v55 != 0;
        }

        goto LABEL_94;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_119;
        }

        v5 |= 0x40000u;
        v62 = (v7 + 1);
        v63 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_118;
        }

        v64 = *v62;
        v63 = v63 + (v64 << 7) - 128;
        if (v64 < 0)
        {
          v80 = sub_1958770(v7, v63);
          *v82 = v80;
          *(a1 + 156) = v81;
          if (!v80)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v62 = (v7 + 2);
LABEL_118:
          *v82 = v62;
          *(a1 + 156) = v63;
        }

        goto LABEL_94;
      case 0x15u:
        if (v8 != 170)
        {
          goto LABEL_119;
        }

        *(a1 + 16) |= 0x80u;
        v43 = *(a1 + 8);
        v12 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v12 = *v12;
        }

        v13 = (a1 + 104);
LABEL_92:
        v51 = sub_194DB04(v13, v12);
        v17 = sub_1958890(v51, *v82, a3);
        goto LABEL_93;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_119;
        }

        v5 |= 0x100000u;
        v48 = (v7 + 1);
        v47 = *v7;
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_87;
        }

        v49 = *v48;
        v47 = (v49 << 7) + v47 - 128;
        if (v49 < 0)
        {
          v72 = sub_19587DC(v7, v47);
          *v82 = v72;
          *(a1 + 168) = v73;
          if (!v72)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v48 = (v7 + 2);
LABEL_87:
          *v82 = v48;
          *(a1 + 168) = v47;
        }

        goto LABEL_94;
      default:
LABEL_119:
        if (v8)
        {
          v65 = (v8 & 7) == 4;
        }

        else
        {
          v65 = 1;
        }

        if (!v65)
        {
          v66 = *(a1 + 8);
          if (v66)
          {
            v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v67 = sub_11F1920((a1 + 8));
            v7 = *v82;
          }

          v17 = sub_1952690(v8, v67, v7, a3);
LABEL_93:
          *v82 = v17;
          if (!v17)
          {
            goto LABEL_146;
          }

LABEL_94:
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
LABEL_146:
          *v82 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v82;
    }
  }
}

char *sub_1918B64(uint64_t a1, char *__dst, void *a3)
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

      goto LABEL_13;
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

    goto LABEL_14;
  }

LABEL_13:
  v4 = sub_128AEEC(a3, 3, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = sub_128AEEC(a3, 4, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = sub_128AEEC(a3, 5, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x4000) == 0)
  {
LABEL_7:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 152);
  *v4 = 48;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x8000) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_22:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 112);
    *v4 = 66;
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

    v4 = sub_16EE2C4(v10, v12, a3);
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 153);
  *v4 = 56;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v6 & 0x800) == 0)
  {
LABEL_10:
    v7 = v4;
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 136);
  *v4 = 72;
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v4[1] = v13 | 0x80;
    v14 = v13 >> 7;
    v4[2] = v13 >> 7;
    v7 = v4 + 3;
    if (v13 >= 0x4000)
    {
      LOBYTE(v15) = v4[2];
      do
      {
        *(v7 - 1) = v15 | 0x80;
        v15 = v14 >> 7;
        *v7++ = v14 >> 7;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_35:
  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 140);
    *v7 = 80;
    v7[1] = v18;
    if (v18 > 0x7F)
    {
      v7[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v7[2] = v18 >> 7;
      v17 = v7 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v7[2];
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
      v17 = v7 + 2;
    }
  }

  else
  {
    v17 = v7;
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 144);
    *v17 = 89;
    *(v17 + 1) = v22;
    v17 += 9;
  }

  if ((v6 & 0x10000) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v23 = *(a1 + 154);
    *v17 = 96;
    v17[1] = v23;
    v17 += 2;
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*a3 <= v17)
      {
        v17 = sub_225EB68(a3, v17);
      }

      v26 = *(*(a1 + 40) + 8 * i + 8);
      *v17 = 106;
      v27 = *(v26 + 20);
      v17[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v17 + 1);
      }

      else
      {
        v28 = v17 + 2;
      }

      v17 = sub_16EEE1C(v26, v28, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    v17 = sub_128AEEC(a3, 14, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v17);
    if ((v6 & 0x40) == 0)
    {
LABEL_62:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_70;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_62;
  }

  v17 = sub_128AEEC(a3, 15, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v17);
  if ((v6 & 0x200) == 0)
  {
LABEL_63:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_70:
  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v30 = *(a1 + 120);
  *v17 = 386;
  v31 = *(v30 + 44);
  v17[2] = v31;
  if (v31 > 0x7F)
  {
    v32 = sub_19575D0(v31, v17 + 2);
  }

  else
  {
    v32 = v17 + 3;
  }

  v17 = sub_16F32C8(v30, v32, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_64:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_82;
  }

LABEL_76:
  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v33 = *(a1 + 128);
  *v17 = 394;
  v34 = *(v33 + 44);
  v17[2] = v34;
  if (v34 > 0x7F)
  {
    v35 = sub_19575D0(v34, v17 + 2);
  }

  else
  {
    v35 = v17 + 3;
  }

  v17 = sub_16F2AE0(v33, v35, a3);
  if ((v6 & 0x80000) == 0)
  {
LABEL_65:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_66;
    }

LABEL_85:
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v37 = *(a1 + 155);
    *v17 = 408;
    v17[2] = v37;
    v17 += 3;
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_88;
  }

LABEL_82:
  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v36 = *(a1 + 160);
  *v17 = 401;
  *(v17 + 2) = v36;
  v17 += 10;
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_85;
  }

LABEL_66:
  if ((v6 & 0x40000) == 0)
  {
LABEL_67:
    v29 = v17;
    goto LABEL_95;
  }

LABEL_88:
  if (*a3 <= v17)
  {
    v17 = sub_225EB68(a3, v17);
  }

  v38 = *(a1 + 156);
  *v17 = 416;
  v17[2] = v38;
  if (v38 > 0x7F)
  {
    v17[2] = v38 | 0x80;
    v39 = v38 >> 7;
    v17[3] = v38 >> 7;
    v29 = v17 + 4;
    if (v38 >= 0x4000)
    {
      LOBYTE(v40) = v17[3];
      do
      {
        *(v29 - 1) = v40 | 0x80;
        v40 = v39 >> 7;
        *v29++ = v39 >> 7;
        v41 = v39 >> 14;
        v39 >>= 7;
      }

      while (v41);
    }
  }

  else
  {
    v29 = v17 + 3;
  }

LABEL_95:
  if ((v6 & 0x80) != 0)
  {
    v29 = sub_128AEEC(a3, 21, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v29);
  }

  if ((v6 & 0x100000) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v43 = *(a1 + 168);
    *v29 = 432;
    v29[2] = v43;
    if (v43 > 0x7F)
    {
      v29[2] = v43 | 0x80;
      v44 = v43 >> 7;
      v29[3] = v43 >> 7;
      v42 = v29 + 4;
      if (v43 >= 0x4000)
      {
        LOBYTE(v29) = v29[3];
        do
        {
          *(v42 - 1) = v29 | 0x80;
          v29 = (v44 >> 7);
          *v42++ = v44 >> 7;
          v45 = v44 >> 14;
          v44 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v42 = v29 + 3;
    }
  }

  else
  {
    v42 = v29;
  }

  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v42;
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

  if (*a3 - v42 >= v49)
  {
    v51 = v49;
    memcpy(v42, v50, v49);
    v42 += v51;
    return v42;
  }

  return sub_1957130(a3, v50, v49, v42);
}

uint64_t sub_191925C(uint64_t a1)
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
      v7 = sub_16EEF64(v6);
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
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  if (v8)
  {
    v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_34;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v15 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_34:
  v18 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_37:
  v21 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_40:
  v24 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  v26 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  v2 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) == 0)
  {
LABEL_16:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_43:
  v27 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v2 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x40) == 0)
  {
LABEL_17:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_46:
  v30 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(v30 + 23);
  v32 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v32 = v31;
  }

  v2 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    v9 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_61;
  }

  if ((v8 & 0x100) != 0)
  {
    v33 = sub_16EE474(*(a1 + 112));
    v2 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x200) == 0)
    {
LABEL_24:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_52;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v34 = sub_16F3438(*(a1 + 120));
  v2 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x400) == 0)
  {
LABEL_25:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  v35 = sub_16F2C64(*(a1 + 128));
  v2 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x800) == 0)
  {
LABEL_26:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_58;
    }

LABEL_54:
    v36 = *(a1 + 140);
    if (v36 < 0)
    {
      v37 = 11;
    }

    else
    {
      v37 = ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v37;
    goto LABEL_58;
  }

LABEL_53:
  v2 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x1000) != 0)
  {
    goto LABEL_54;
  }

LABEL_58:
  v38 = v2 + 9;
  if ((v8 & 0x2000) == 0)
  {
    v38 = v2;
  }

  v2 = v38 + ((v8 >> 14) & 2) + ((v8 >> 13) & 2);
LABEL_61:
  if ((v8 & 0x1F0000) != 0)
  {
    v39 = v2 + ((v8 >> 15) & 2);
    if ((v8 & 0x20000) != 0)
    {
      v39 += 3;
    }

    if ((v8 & 0x40000) != 0)
    {
      v39 += ((9 * (__clz(*(a1 + 156) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v8 & 0x80000) != 0)
    {
      v2 = v39 + 10;
    }

    else
    {
      v2 = v39;
    }

    if ((v8 & 0x100000) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 168) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }
  }

  v40 = *(a1 + 8);
  if (v40)
  {
    v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
    v43 = *((v40 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v43 < 0)
    {
      v43 = *(v42 + 16);
    }

    v2 += v43;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_1919704(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_271CE58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = &qword_278E990;
  *(a1 + 216) = &qword_278E990;
  *(a1 + 224) = &qword_278E990;
  *(a1 + 232) = &qword_278E990;
  *(a1 + 240) = &qword_278E990;
  *(a1 + 248) = &qword_278E990;
  *(a1 + 256) = &qword_278E990;
  *(a1 + 264) = &qword_278E990;
  *(a1 + 329) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 348) = 1;
  return a1;
}

void sub_19197E4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1919818(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v43 = a1 + 16;
  *a1 = off_271CE58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48(a1 + 48, v7, (v6 + 8), v5, **(a1 + 64) - *(a1 + 56));
    v8 = *(a1 + 56) + v5;
    *(a1 + 56) = v8;
    v9 = *(a1 + 64);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v10 = *(a2 + 80);
  if (v10)
  {
    v11 = *(a2 + 88);
    v12 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1409AF8((a1 + 72), v12, (v11 + 8), v10, **(a1 + 88) - *(a1 + 80));
    v13 = *(a1 + 80) + v10;
    *(a1 + 80) = v13;
    v14 = *(a1 + 88);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v15 = *(a2 + 96);
  if (v15)
  {
    sub_1958E5C((a1 + 96), v15);
    v16 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy(v16, *(a2 + 104), 4 * *(a2 + 96));
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v17 = *(a2 + 112);
  if (v17)
  {
    sub_1958E5C((a1 + 112), v17);
    v18 = *(a1 + 120);
    *(a1 + 112) += *(a2 + 112);
    memcpy(v18, *(a2 + 120), 4 * *(a2 + 112));
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v19 = *(a2 + 136);
  if (v19)
  {
    v20 = *(a2 + 144);
    v21 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1201B48(a1 + 128, v21, (v20 + 8), v19, **(a1 + 144) - *(a1 + 136));
    v22 = *(a1 + 136) + v19;
    *(a1 + 136) = v22;
    v23 = *(a1 + 144);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v24 = *(a2 + 152);
  if (v24)
  {
    sub_1958E5C((a1 + 152), v24);
    v25 = *(a1 + 160);
    *(a1 + 152) += *(a2 + 152);
    memcpy(v25, *(a2 + 160), 4 * *(a2 + 152));
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v26 = *(a2 + 168);
  if (v26)
  {
    sub_1958E5C((a1 + 168), v26);
    v27 = *(a1 + 176);
    *(a1 + 168) += *(a2 + 168);
    memcpy(v27, *(a2 + 176), 4 * *(a2 + 168));
  }

  *(a1 + 192) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  v28 = *(a2 + 192);
  if (v28)
  {
    sub_1958E5C((a1 + 192), v28);
    v29 = *(a1 + 200);
    *(a1 + 192) += *(a2 + 192);
    memcpy(v29, *(a2 + 200), 4 * *(a2 + 192));
  }

  v30 = *(a2 + 8);
  if (v30)
  {
    sub_1957EF4(v4, (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v43, a2 + 16);
  *(a1 + 208) = &qword_278E990;
  v31 = *(a2 + 40);
  if (v31)
  {
    v32 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v32 = *v32;
    }

    sub_194EA1C((a1 + 208), (*(a2 + 208) & 0xFFFFFFFFFFFFFFFELL), v32);
    v31 = *(a2 + 40);
  }

  *(a1 + 216) = &qword_278E990;
  if ((v31 & 2) != 0)
  {
    v33 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v33 = *v33;
    }

    sub_194EA1C((a1 + 216), (*(a2 + 216) & 0xFFFFFFFFFFFFFFFELL), v33);
    v31 = *(a2 + 40);
  }

  *(a1 + 224) = &qword_278E990;
  if ((v31 & 4) != 0)
  {
    v34 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v34 = *v34;
    }

    sub_194EA1C((a1 + 224), (*(a2 + 224) & 0xFFFFFFFFFFFFFFFELL), v34);
    v31 = *(a2 + 40);
  }

  *(a1 + 232) = &qword_278E990;
  if ((v31 & 8) != 0)
  {
    v35 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v35 = *v35;
    }

    sub_194EA1C((a1 + 232), (*(a2 + 232) & 0xFFFFFFFFFFFFFFFELL), v35);
    v31 = *(a2 + 40);
  }

  *(a1 + 240) = &qword_278E990;
  if ((v31 & 0x10) != 0)
  {
    v36 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v36 = *v36;
    }

    sub_194EA1C((a1 + 240), (*(a2 + 240) & 0xFFFFFFFFFFFFFFFELL), v36);
    v31 = *(a2 + 40);
  }

  *(a1 + 248) = &qword_278E990;
  if ((v31 & 0x20) != 0)
  {
    v37 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v37 = *v37;
    }

    sub_194EA1C((a1 + 248), (*(a2 + 248) & 0xFFFFFFFFFFFFFFFELL), v37);
    v31 = *(a2 + 40);
  }

  *(a1 + 256) = &qword_278E990;
  if ((v31 & 0x40) != 0)
  {
    v38 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v38 = *v38;
    }

    sub_194EA1C((a1 + 256), (*(a2 + 256) & 0xFFFFFFFFFFFFFFFELL), v38);
    v31 = *(a2 + 40);
  }

  *(a1 + 264) = &qword_278E990;
  if ((v31 & 0x80) != 0)
  {
    v39 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v39 = *v39;
    }

    sub_194EA1C((a1 + 264), (*(a2 + 264) & 0xFFFFFFFFFFFFFFFELL), v39);
    v31 = *(a2 + 40);
  }

  if ((v31 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 272) = 0;
  if ((v31 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 280) = 0;
  if ((v31 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 288) = 0;
  if ((v31 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 296) = 0;
  if ((v31 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 304) = 0;
  v40 = *(a2 + 312);
  v41 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 312) = v40;
  *(a1 + 328) = v41;
  return a1;
}

void *sub_1919F20(void *a1)
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

  sub_1919FF0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956ABC((a1 + 24));
  sub_1956ABC((a1 + 21));
  sub_1956ABC((a1 + 19));
  sub_1956AFC(a1 + 16);
  sub_1956ABC((a1 + 14));
  sub_1956ABC((a1 + 12));
  sub_140996C(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1919FF0(uint64_t a1)
{
  v3 = *(a1 + 208);
  v2 = (a1 + 208);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 216) != &qword_278E990)
  {
    sub_194E89C((a1 + 216));
  }

  if (*(a1 + 224) != &qword_278E990)
  {
    sub_194E89C((a1 + 224));
  }

  if (*(a1 + 232) != &qword_278E990)
  {
    sub_194E89C((a1 + 232));
  }

  if (*(a1 + 240) != &qword_278E990)
  {
    sub_194E89C((a1 + 240));
  }

  result = (a1 + 248);
  if (*(a1 + 248) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (*(a1 + 256) != &qword_278E990)
  {
    sub_194E89C((a1 + 256));
  }

  if (*(a1 + 264) != &qword_278E990)
  {
    sub_194E89C((a1 + 264));
  }

  if (a1 != &off_278B980)
  {
    if (*(a1 + 272))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 280))
    {
      sub_15503E0();
      operator delete();
    }

    if (*(a1 + 288))
    {
      sub_16E8374();
      operator delete();
    }

    if (*(a1 + 296))
    {
      sub_16F4484();
      operator delete();
    }

    result = *(a1 + 304);
    if (result)
    {
      sub_1917A1C(result);

      operator delete();
    }
  }

  return result;
}

void sub_191A180(void *a1)
{
  sub_1919F20(a1);

  operator delete();
}

char *sub_191A244(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 272);
  *v4 = 18;
  v14 = *(v13 + 44);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_16E5070(v13, v15, a3);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  v4 = sub_128AEEC(a3, 3, *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_32:
  v4 = sub_128AEEC(a3, 4, *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) != 0)
  {
LABEL_6:
    v4 = sub_128AEEC(a3, 5, *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_7:
  v7 = *(a1 + 56);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a1 + 64) + v8);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = v9[1], v10 > 127) || *a3 - v4 + 14 < v10)
      {
        v4 = sub_1957480(a3, 6, v9, v4);
      }

      else
      {
        *v4 = 50;
        v4[1] = v10;
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v11 = v4 + 2;
        memcpy(v4 + 2, v9, v10);
        v4 = &v11[v10];
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 312);
    *v4 = 64;
    v4[1] = v16;
    if (v16 > 0x7F)
    {
      v4[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v4[2] = v16 >> 7;
      v12 = v4 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v4[2];
        do
        {
          *(v12 - 1) = v18 | 0x80;
          v18 = v17 >> 7;
          *v12++ = v17 >> 7;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v12 = v4 + 2;
    }
  }

  else
  {
    v12 = v4;
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v20 = *(a1 + 280);
    *v12 = 74;
    v21 = *(v20 + 64);
    v12[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v12 + 1);
    }

    else
    {
      v22 = v12 + 2;
    }

    v12 = sub_15506E0(v20, v22, a3);
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v24 = *(a1 + 316);
    *v12 = 80;
    v12[1] = v24;
    if (v24 > 0x7F)
    {
      v12[1] = v24 | 0x80;
      v25 = v24 >> 7;
      v12[2] = v24 >> 7;
      v23 = v12 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v23 - 1) = v12 | 0x80;
          v12 = (v25 >> 7);
          *v23++ = v25 >> 7;
          v26 = v25 >> 14;
          v25 >>= 7;
        }

        while (v26);
      }
    }

    else
    {
      v23 = v12 + 2;
    }
  }

  else
  {
    v23 = v12;
  }

  if ((v6 & 0x8000) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v28 = *(a1 + 320);
    *v23 = 88;
    v23[1] = v28;
    if (v28 > 0x7F)
    {
      v23[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v23[2] = v28 >> 7;
      v27 = v23 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v23) = v23[2];
        do
        {
          *(v27 - 1) = v23 | 0x80;
          LODWORD(v23) = v29 >> 7;
          *v27++ = v29 >> 7;
          v30 = v29 >> 14;
          v29 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v27 = v23 + 2;
    }
  }

  else
  {
    v27 = v23;
  }

  if ((v6 & 0x10000) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v32 = *(a1 + 324);
    *v27 = 96;
    v27[1] = v32;
    if (v32 > 0x7F)
    {
      v27[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v27[2] = v32 >> 7;
      v31 = v27 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v34) = v27[2];
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
      v31 = v27 + 2;
    }
  }

  else
  {
    v31 = v27;
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v36 = *(a1 + 288);
    *v31 = 106;
    v37 = *(v36 + 44);
    v31[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v31 + 1);
    }

    else
    {
      v38 = v31 + 2;
    }

    v31 = sub_16E886C(v36, v38, a3);
  }

  if ((v6 & 0x20000) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v40 = *(a1 + 328);
    *v31 = 112;
    v31[1] = v40;
    if (v40 > 0x7F)
    {
      v31[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v31[2] = v40 >> 7;
      v39 = v31 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v31) = v31[2];
        do
        {
          *(v39 - 1) = v31 | 0x80;
          v31 = (v41 >> 7);
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v31 + 2;
    }
  }

  else
  {
    v39 = v31;
  }

  v43 = *(a1 + 80);
  if (v43)
  {
    for (i = 0; i != v43; ++i)
    {
      if (*a3 <= v39)
      {
        v39 = sub_225EB68(a3, v39);
      }

      v45 = *(*(a1 + 88) + 8 * i + 8);
      *v39 = 122;
      v46 = *(v45 + 44);
      v39[1] = v46;
      if (v46 > 0x7F)
      {
        v47 = sub_19575D0(v46, v39 + 1);
      }

      else
      {
        v47 = v39 + 2;
      }

      v39 = sub_16E886C(v45, v47, a3);
    }
  }

  if ((v6 & 0x2000000) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v49 = *(a1 + 348);
    *v39 = 384;
    v39[2] = v49;
    if (v49 > 0x7F)
    {
      v39[2] = v49 | 0x80;
      v50 = v49 >> 7;
      v39[3] = v49 >> 7;
      v48 = v39 + 4;
      if (v49 >= 0x4000)
      {
        LOBYTE(v39) = v39[3];
        do
        {
          *(v48 - 1) = v39 | 0x80;
          v39 = (v50 >> 7);
          *v48++ = v50 >> 7;
          v51 = v50 >> 14;
          v50 >>= 7;
        }

        while (v51);
      }
    }

    else
    {
      v48 = v39 + 3;
    }
  }

  else
  {
    v48 = v39;
  }

  if ((v6 & 0x10) != 0)
  {
    v48 = sub_128AEEC(a3, 17, *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL, v48);
  }

  v52 = *(a1 + 96);
  if (v52 < 1)
  {
    v55 = v48;
  }

  else
  {
    for (j = 0; j != v52; ++j)
    {
      if (*a3 <= v48)
      {
        v48 = sub_225EB68(a3, v48);
      }

      v54 = *(*(a1 + 104) + 4 * j);
      *v48 = 400;
      v48[2] = v54;
      if (v54 > 0x7F)
      {
        v48[2] = v54 | 0x80;
        v56 = v54 >> 7;
        v48[3] = v54 >> 7;
        v55 = v48 + 4;
        if (v54 >= 0x4000)
        {
          LOBYTE(v57) = v48[3];
          do
          {
            *(v55 - 1) = v57 | 0x80;
            v57 = v56 >> 7;
            *v55++ = v56 >> 7;
            v58 = v56 >> 14;
            v56 >>= 7;
          }

          while (v58);
        }
      }

      else
      {
        v55 = v48 + 3;
      }

      v48 = v55;
    }
  }

  if ((v6 & 0x80000) != 0)
  {
    if (*a3 <= v55)
    {
      v55 = sub_225EB68(a3, v55);
    }

    v59 = *(a1 + 336);
    *v55 = 408;
    v55[2] = v59;
    v55 += 3;
  }

  v60 = *(a1 + 112);
  if (v60 < 1)
  {
    v63 = v55;
  }

  else
  {
    for (k = 0; k != v60; ++k)
    {
      if (*a3 <= v55)
      {
        v55 = sub_225EB68(a3, v55);
      }

      v62 = *(*(a1 + 120) + 4 * k);
      *v55 = 416;
      v55[2] = v62;
      if (v62 > 0x7F)
      {
        v55[2] = v62 | 0x80;
        v64 = v62 >> 7;
        v55[3] = v62 >> 7;
        v63 = v55 + 4;
        if (v62 >= 0x4000)
        {
          LOBYTE(v65) = v55[3];
          do
          {
            *(v63 - 1) = v65 | 0x80;
            v65 = v64 >> 7;
            *v63++ = v64 >> 7;
            v66 = v64 >> 14;
            v64 >>= 7;
          }

          while (v66);
        }
      }

      else
      {
        v63 = v55 + 3;
      }

      v55 = v63;
    }
  }

  v67 = *(a1 + 136);
  if (v67 >= 1)
  {
    v68 = 8;
    do
    {
      v69 = *(*(a1 + 144) + v68);
      v70 = *(v69 + 23);
      if (v70 < 0 && (v70 = v69[1], v70 > 127) || *a3 - v63 + 13 < v70)
      {
        v63 = sub_1957480(a3, 21, v69, v63);
      }

      else
      {
        *v63 = 426;
        v63[2] = v70;
        if (*(v69 + 23) < 0)
        {
          v69 = *v69;
        }

        v71 = v63 + 3;
        memcpy(v63 + 3, v69, v70);
        v63 = &v71[v70];
      }

      v68 += 8;
      --v67;
    }

    while (v67);
  }

  if ((v6 & 0x40000) != 0)
  {
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v73 = *(a1 + 332);
    *v63 = 432;
    v63[2] = v73;
    if (v73 > 0x7F)
    {
      v63[2] = v73 | 0x80;
      v74 = v73 >> 7;
      v63[3] = v73 >> 7;
      v72 = v63 + 4;
      if (v73 >= 0x4000)
      {
        LOBYTE(v75) = v63[3];
        do
        {
          *(v72 - 1) = v75 | 0x80;
          v75 = v74 >> 7;
          *v72++ = v74 >> 7;
          v76 = v74 >> 14;
          v74 >>= 7;
        }

        while (v76);
      }
    }

    else
    {
      v72 = v63 + 3;
    }
  }

  else
  {
    v72 = v63;
  }

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v72)
    {
      v72 = sub_225EB68(a3, v72);
    }

    v77 = *(a1 + 296);
    *v72 = 442;
    v78 = *(v77 + 20);
    v72[2] = v78;
    if (v78 > 0x7F)
    {
      v79 = sub_19575D0(v78, v72 + 2);
    }

    else
    {
      v79 = v72 + 3;
    }

    v72 = sub_16F47A4(v77, v79, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_156:
      if ((v6 & 0x100000) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_165;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_156;
  }

  v72 = sub_128AEEC(a3, 24, *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL, v72);
  if ((v6 & 0x100000) == 0)
  {
    goto LABEL_168;
  }

LABEL_165:
  if (*a3 <= v72)
  {
    v72 = sub_225EB68(a3, v72);
  }

  v80 = *(a1 + 337);
  *v72 = 456;
  v72[2] = v80;
  v72 += 3;
LABEL_168:
  v81 = *(a1 + 152);
  if (v81 < 1)
  {
    v84 = v72;
  }

  else
  {
    for (m = 0; m != v81; ++m)
    {
      if (*a3 <= v72)
      {
        v72 = sub_225EB68(a3, v72);
      }

      v83 = *(*(a1 + 160) + 4 * m);
      *v72 = 464;
      v72[2] = v83;
      if (v83 > 0x7F)
      {
        v72[2] = v83 | 0x80;
        v85 = v83 >> 7;
        v72[3] = v83 >> 7;
        v84 = v72 + 4;
        if (v83 >= 0x4000)
        {
          LOBYTE(v72) = v72[3];
          do
          {
            *(v84 - 1) = v72 | 0x80;
            v72 = (v85 >> 7);
            *v84++ = v85 >> 7;
            v86 = v85 >> 14;
            v85 >>= 7;
          }

          while (v86);
        }
      }

      else
      {
        v84 = v72 + 3;
      }

      v72 = v84;
    }
  }

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v84)
    {
      v84 = sub_225EB68(a3, v84);
    }

    v87 = *(a1 + 304);
    *v84 = 474;
    v88 = *(v87 + 20);
    v84[2] = v88;
    if (v88 > 0x7F)
    {
      v89 = sub_19575D0(v88, v84 + 2);
    }

    else
    {
      v89 = v84 + 3;
    }

    v84 = sub_1917C14(v87, v89, a3);
  }

  v90 = *(a1 + 184);
  if (v90 >= 1)
  {
    if (*a3 <= v84)
    {
      v84 = sub_225EB68(a3, v84);
    }

    *v84 = 482;
    v91 = v84 + 2;
    if (v90 >= 0x80)
    {
      do
      {
        *v91++ = v90 | 0x80;
        v92 = v90 >> 7;
        v121 = v90 >> 14;
        v90 >>= 7;
      }

      while (v121);
    }

    else
    {
      LOBYTE(v92) = v90;
    }

    *v91 = v92;
    v93 = *(a1 + 176);
    v94 = &v93[*(a1 + 168)];
    v95 = v91 + 1;
    do
    {
      if (*a3 <= v95)
      {
        v95 = sub_225EB68(a3, v95);
      }

      v97 = *v93++;
      v96 = v97;
      *v95 = v97;
      if (v97 > 0x7F)
      {
        *v95 = v96 | 0x80;
        v98 = v96 >> 7;
        v95[1] = v96 >> 7;
        v84 = v95 + 2;
        if (v96 >= 0x4000)
        {
          LOBYTE(v99) = v95[1];
          do
          {
            *(v84 - 1) = v99 | 0x80;
            v99 = v98 >> 7;
            *v84++ = v98 >> 7;
            v100 = v98 >> 14;
            v98 >>= 7;
          }

          while (v100);
        }
      }

      else
      {
        v84 = v95 + 1;
      }

      v95 = v84;
    }

    while (v93 < v94);
  }

  if ((v6 & 0x40) != 0)
  {
    v84 = sub_128AEEC(a3, 29, *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL, v84);
    if ((v6 & 0x80) == 0)
    {
LABEL_203:
      if ((v6 & 0x200000) == 0)
      {
        goto LABEL_204;
      }

LABEL_208:
      if (*a3 <= v84)
      {
        v84 = sub_225EB68(a3, v84);
      }

      v102 = *(a1 + 338);
      *v84 = 504;
      v84[2] = v102;
      v84 += 3;
      if ((v6 & 0x800000) == 0)
      {
        goto LABEL_205;
      }

      goto LABEL_211;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_203;
  }

  v84 = sub_128AEEC(a3, 30, *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL, v84);
  if ((v6 & 0x200000) != 0)
  {
    goto LABEL_208;
  }

LABEL_204:
  if ((v6 & 0x800000) == 0)
  {
LABEL_205:
    v101 = v84;
    goto LABEL_218;
  }

LABEL_211:
  if (*a3 <= v84)
  {
    v84 = sub_225EB68(a3, v84);
  }

  v103 = *(a1 + 340);
  *v84 = 640;
  v84[2] = v103;
  if (v103 > 0x7F)
  {
    v84[2] = v103 | 0x80;
    v104 = v103 >> 7;
    v84[3] = v103 >> 7;
    v101 = v84 + 4;
    if (v103 >= 0x4000)
    {
      LOBYTE(v105) = v84[3];
      do
      {
        *(v101 - 1) = v105 | 0x80;
        v105 = v104 >> 7;
        *v101++ = v104 >> 7;
        v106 = v104 >> 14;
        v104 >>= 7;
      }

      while (v106);
    }
  }

  else
  {
    v101 = v84 + 3;
  }

LABEL_218:
  v107 = *(a1 + 192);
  if (v107 < 1)
  {
    v110 = v101;
  }

  else
  {
    for (n = 0; n != v107; ++n)
    {
      if (*a3 <= v101)
      {
        v101 = sub_225EB68(a3, v101);
      }

      v109 = *(*(a1 + 200) + 4 * n);
      *v101 = 648;
      v101[2] = v109;
      if (v109 > 0x7F)
      {
        v101[2] = v109 | 0x80;
        v111 = v109 >> 7;
        v101[3] = v109 >> 7;
        v110 = v101 + 4;
        if (v109 >= 0x4000)
        {
          LOBYTE(v112) = v101[3];
          do
          {
            *(v110 - 1) = v112 | 0x80;
            v112 = v111 >> 7;
            *v110++ = v111 >> 7;
            v113 = v111 >> 14;
            v111 >>= 7;
          }

          while (v113);
        }
      }

      else
      {
        v110 = v101 + 3;
      }

      v101 = v110;
    }
  }

  if ((v6 & 0x400000) != 0)
  {
    if (*a3 <= v110)
    {
      v110 = sub_225EB68(a3, v110);
    }

    v114 = *(a1 + 339);
    *v110 = 656;
    v110[2] = v114;
    v110 += 3;
  }

  if ((v6 & 0x1000000) != 0)
  {
    if (*a3 <= v110)
    {
      v110 = sub_225EB68(a3, v110);
    }

    v115 = *(a1 + 344);
    *v110 = 664;
    v110[2] = v115;
    v110 += 3;
  }

  if (*(a1 + 26))
  {
    v110 = sub_1953428(a1 + 16, 100, 200, v110, a3);
  }

  v116 = *(a1 + 8);
  if ((v116 & 1) == 0)
  {
    return v110;
  }

  v118 = v116 & 0xFFFFFFFFFFFFFFFCLL;
  v119 = *(v118 + 31);
  if (v119 < 0)
  {
    v120 = *(v118 + 8);
    v119 = *(v118 + 16);
  }

  else
  {
    v120 = (v118 + 8);
  }

  if (*a3 - v110 >= v119)
  {
    v122 = v119;
    memcpy(v110, v120, v119);
    v110 += v122;
    return v110;
  }

  return sub_1957130(a3, v120, v119, v110);
}

uint64_t sub_191B0B0(uint64_t a1)
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
      v15 = sub_16E8DA4(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(*(a1 + 104) + 4 * v18);
      if (v19 < 0)
      {
        v20 = 10;
      }

      else
      {
        v20 = (9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6;
      }

      v17 += v20;
      ++v18;
    }

    while (v16 != v18);
  }

  else
  {
    v17 = 0;
  }

  v21 = *(a1 + 112);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(*(a1 + 120) + 4 * v23);
      if (v24 < 0)
      {
        v25 = 10;
      }

      else
      {
        v25 = (9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6;
      }

      v22 += v25;
      ++v23;
    }

    while (v21 != v23);
  }

  else
  {
    v22 = 0;
  }

  v26 = *(a1 + 136);
  v27 = v17 + v10 + v22 + 2 * (v21 + v16 + v26);
  if (v26 >= 1)
  {
    v28 = (*(a1 + 144) + 8);
    do
    {
      v29 = *v28++;
      v30 = *(v29 + 23);
      v31 = *(v29 + 8);
      if ((v30 & 0x80u) == 0)
      {
        v31 = v30;
      }

      v27 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      --v26;
    }

    while (v26);
  }

  v32 = *(a1 + 152);
  if (v32)
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(a1 + 160) + 4 * v33);
      if (v35 < 0)
      {
        v36 = 10;
      }

      else
      {
        v36 = (9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6;
      }

      v34 += v36;
      ++v33;
    }

    while (v32 != v33);
  }

  else
  {
    v34 = 0;
  }

  v37 = v27 + 2 * v32 + v34;
  v38 = *(a1 + 168);
  if (v38)
  {
    v39 = 0;
    v40 = 0;
    do
    {
      v41 = *(*(a1 + 176) + 4 * v39);
      if (v41 < 0)
      {
        v42 = 10;
      }

      else
      {
        v42 = (9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6;
      }

      v40 += v42;
      ++v39;
    }

    while (v38 != v39);
    if (v40)
    {
      if ((v40 & 0x80000000) != 0)
      {
        v43 = 12;
      }

      else
      {
        v43 = ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v37 += v43;
      v38 = v40;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  *(a1 + 184) = v38;
  v44 = *(a1 + 192);
  if (v44)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v47 = *(*(a1 + 200) + 4 * v45);
      if (v47 < 0)
      {
        v48 = 10;
      }

      else
      {
        v48 = (9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6;
      }

      v46 += v48;
      ++v45;
    }

    while (v44 != v45);
  }

  else
  {
    v46 = 0;
  }

  v49 = v37 + v40 + 2 * v44 + v46;
  v50 = *(a1 + 40);
  if (!v50)
  {
    goto LABEL_74;
  }

  if (v50)
  {
    v54 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v55 = *(v54 + 23);
    v56 = *(v54 + 8);
    if ((v55 & 0x80u) == 0)
    {
      v56 = v55;
    }

    v49 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v50 & 2) == 0)
    {
LABEL_65:
      if ((v50 & 4) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_95;
    }
  }

  else if ((v50 & 2) == 0)
  {
    goto LABEL_65;
  }

  v57 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
  v58 = *(v57 + 23);
  v59 = *(v57 + 8);
  if ((v58 & 0x80u) == 0)
  {
    v59 = v58;
  }

  v49 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 4) == 0)
  {
LABEL_66:
    if ((v50 & 8) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_98;
  }

LABEL_95:
  v60 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
  v61 = *(v60 + 23);
  v62 = *(v60 + 8);
  if ((v61 & 0x80u) == 0)
  {
    v62 = v61;
  }

  v49 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 8) == 0)
  {
LABEL_67:
    if ((v50 & 0x10) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_101;
  }

LABEL_98:
  v63 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
  v64 = *(v63 + 23);
  v65 = *(v63 + 8);
  if ((v64 & 0x80u) == 0)
  {
    v65 = v64;
  }

  v49 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 0x10) == 0)
  {
LABEL_68:
    if ((v50 & 0x20) == 0)
    {
      goto LABEL_69;
    }

LABEL_104:
    v69 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
    v70 = *(v69 + 23);
    v71 = *(v69 + 8);
    if ((v70 & 0x80u) == 0)
    {
      v71 = v70;
    }

    v49 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v50 & 0x40) == 0)
    {
LABEL_70:
      if ((v50 & 0x80) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    goto LABEL_107;
  }

LABEL_101:
  v66 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
  v67 = *(v66 + 23);
  v68 = *(v66 + 8);
  if ((v67 & 0x80u) == 0)
  {
    v68 = v67;
  }

  v49 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v50 & 0x20) != 0)
  {
    goto LABEL_104;
  }

LABEL_69:
  if ((v50 & 0x40) == 0)
  {
    goto LABEL_70;
  }

LABEL_107:
  v72 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
  v73 = *(v72 + 23);
  v74 = *(v72 + 8);
  if ((v73 & 0x80u) == 0)
  {
    v74 = v73;
  }

  v49 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v50 & 0x80) != 0)
  {
LABEL_71:
    v51 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    v52 = *(v51 + 23);
    v53 = *(v51 + 8);
    if ((v52 & 0x80u) == 0)
    {
      v53 = v52;
    }

    v49 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_74:
  if ((v50 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v50 & 0x100) != 0)
  {
    v75 = sub_16E51F0(*(a1 + 272));
    v49 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v50 & 0x200) == 0)
    {
LABEL_77:
      if ((v50 & 0x400) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_113;
    }
  }

  else if ((v50 & 0x200) == 0)
  {
    goto LABEL_77;
  }

  v76 = sub_15508CC(*(a1 + 280));
  v49 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 0x400) == 0)
  {
LABEL_78:
    if ((v50 & 0x800) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_114;
  }

LABEL_113:
  v77 = sub_16E8DA4(*(a1 + 288));
  v49 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 0x800) == 0)
  {
LABEL_79:
    if ((v50 & 0x1000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_115;
  }

LABEL_114:
  v78 = sub_16F4930(*(a1 + 296));
  v49 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v50 & 0x1000) == 0)
  {
LABEL_80:
    if ((v50 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_119;
  }

LABEL_115:
  v79 = *(a1 + 304);
  v80 = 9;
  if ((*(v79 + 16) & 1) == 0)
  {
    v80 = 0;
  }

  v81 = *(v79 + 8);
  if (v81)
  {
    v98 = v81 & 0xFFFFFFFFFFFFFFFCLL;
    v99 = *((v81 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v99 < 0)
    {
      v99 = *(v98 + 16);
    }

    v80 += v99;
  }

  *(v79 + 20) = v80;
  v49 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v50 & 0x2000) == 0)
  {
LABEL_81:
    if ((v50 & 0x4000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_120;
  }

LABEL_119:
  v49 += ((9 * (__clz(*(a1 + 312) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 0x4000) == 0)
  {
LABEL_82:
    if ((v50 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_120:
  v82 = *(a1 + 316);
  if (v82 < 0)
  {
    v83 = 11;
  }

  else
  {
    v83 = ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v49 += v83;
  if ((v50 & 0x8000) != 0)
  {
LABEL_83:
    v49 += ((9 * (__clz(*(a1 + 320) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_84:
  if ((v50 & 0xFF0000) == 0)
  {
    goto LABEL_148;
  }

  if ((v50 & 0x10000) == 0)
  {
    if ((v50 & 0x20000) == 0)
    {
      goto LABEL_87;
    }

LABEL_123:
    v84 = *(a1 + 328);
    if (v84 < 0)
    {
      v85 = 11;
    }

    else
    {
      v85 = ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v49 += v85;
    if ((v50 & 0x40000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_130;
  }

  v49 += ((9 * (__clz(*(a1 + 324) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v50 & 0x20000) != 0)
  {
    goto LABEL_123;
  }

LABEL_87:
  if ((v50 & 0x40000) != 0)
  {
LABEL_130:
    v86 = *(a1 + 332);
    if (v86 < 0)
    {
      v87 = 12;
    }

    else
    {
      v87 = ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v49 += v87;
  }

LABEL_134:
  v88 = v49 + 3;
  if ((v50 & 0x80000) == 0)
  {
    v88 = v49;
  }

  if ((v50 & 0x100000) != 0)
  {
    v88 += 3;
  }

  if ((v50 & 0x200000) != 0)
  {
    v88 += 3;
  }

  if ((v50 & 0x400000) != 0)
  {
    v49 = v88 + 3;
  }

  else
  {
    v49 = v88;
  }

  if ((v50 & 0x800000) != 0)
  {
    v89 = *(a1 + 340);
    v90 = ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v89 >= 0)
    {
      v91 = v90;
    }

    else
    {
      v91 = 12;
    }

    v49 += v91;
  }

LABEL_148:
  if ((v50 & 0x3000000) != 0)
  {
    if ((v50 & 0x1000000) != 0)
    {
      v49 += 3;
    }

    if ((v50 & 0x2000000) != 0)
    {
      v92 = *(a1 + 348);
      if (v92 < 0)
      {
        v93 = 12;
      }

      else
      {
        v93 = ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v49 += v93;
    }
  }

  v94 = *(a1 + 8);
  if (v94)
  {
    v96 = v94 & 0xFFFFFFFFFFFFFFFCLL;
    v97 = *((v94 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v97 < 0)
    {
      v97 = *(v96 + 16);
    }

    v49 += v97;
  }

  *(a1 + 44) = v49;
  return v49;
}

void sub_191B97C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_18F9CE4(a1);

    sub_18FC364(a1, a2);
  }
}

double sub_191B9D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_271CC58;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 41) = 0u;
  *(v2 + 60) = 1;
  return result;
}

uint64_t sub_191BA60(uint64_t a1)
{
  if (!a1)
  {

    sub_1947280();
  }

  return sub_19171A4(v3, a1, 0);
}

void *sub_191BABC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_271CD58;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_191BB34(uint64_t a1)
{
  if (!a1)
  {

    sub_19472EC();
  }

  *v3 = off_271CDD8;
  *(v3 + 8) = a1;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = &qword_278E990;
  *(v3 + 56) = &qword_278E990;
  *(v3 + 64) = &qword_278E990;
  *(v3 + 72) = &qword_278E990;
  *(v3 + 80) = &qword_278E990;
  *(v3 + 88) = &qword_278E990;
  *(v3 + 96) = &qword_278E990;
  *(v3 + 104) = &qword_278E990;
  result = 0.0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  return result;
}

uint64_t sub_191BBC4(uint64_t a1)
{
  if (!a1)
  {

    sub_194735C();
  }

  return sub_1919704(v3, a1, 0);
}

void *sub_191BC20(void *a1)
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

void sub_191BC94(void *a1)
{
  sub_191BC20(a1);

  operator delete();
}

uint64_t sub_191BCCC(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
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

char *sub_191BCF0(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 32) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 32) = v22;
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

char *sub_191BED4(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_191C084(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

uint64_t sub_191C134(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_271CF58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  return a1;
}

void sub_191C1AC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_191C1DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_271CF58;
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
    sub_19474D0((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  v12 = *(a2 + 40);
  if (v12)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t sub_191C3E0(uint64_t a1)
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

  if (a1 != &off_278BAE0)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      sub_15547E8(v5);
      operator delete();
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      sub_1557E54(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_19473C8((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_191C4C4(uint64_t a1)
{
  sub_191C3E0(a1);

  operator delete();
}

char *sub_191C4FC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v34 + 1;
    v8 = *v34;
    if (*v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v34 + 2;
      }
    }

    v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_40;
        }

        *(a1 + 40) |= 1u;
        v23 = *(a1 + 72);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          sub_155A57C(v25);
          v23 = v26;
          *(a1 + 72) = v26;
          v7 = v34;
        }

        v16 = sub_221E24C(a3, v23, v7);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_40;
        }

        *(a1 + 40) |= 2u;
        v13 = *(a1 + 80);
        if (!v13)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_155A8BC(v15);
          *(a1 + 80) = v13;
          v7 = v34;
        }

        v16 = sub_2206260(a3, v13, v7);
      }

LABEL_49:
      v34 = v16;
      if (!v16)
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_40;
    }

    v5 |= 4u;
    LODWORD(v27) = *v7;
    if ((v27 & 0x80000000) == 0)
    {
      v28 = v7 + 1;
LABEL_53:
      v34 = v28;
      *(a1 + 88) = v27;
      goto LABEL_54;
    }

    v27 = (v7[1] << 7) + v27 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v28 = v7 + 2;
      goto LABEL_53;
    }

    v32 = sub_19587DC(v7, v27);
    v34 = v32;
    *(a1 + 88) = v33;
    if (!v32)
    {
      goto LABEL_61;
    }

LABEL_54:
    if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    v17 = v7 - 1;
    while (1)
    {
      v18 = (v17 + 1);
      v34 = v17 + 1;
      v19 = *(a1 + 64);
      if (v19 && (v20 = *(a1 + 56), v20 < *v19))
      {
        *(a1 + 56) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = sub_191F840(*(a1 + 48));
        v21 = sub_19593CC(a1 + 48, v22);
        v18 = v34;
      }

      v17 = sub_225DEC4(a3, v21, v18);
      v34 = v17;
      if (!v17)
      {
        goto LABEL_61;
      }

      if (*a3 <= v17 || *v17 != 34)
      {
        goto LABEL_54;
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
    if (v8 - 1600 > 0x647)
    {
      v30 = *(a1 + 8);
      if (v30)
      {
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v31 = sub_11F1920((a1 + 8));
        v7 = v34;
      }

      v16 = sub_1952690(v8, v31, v7, a3);
    }

    else
    {
      v16 = sub_19525AC((a1 + 16), v8, v7, &off_278BAE0, (a1 + 8), a3);
    }

    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v34 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v34;
}

char *sub_191C804(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
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

    v11 = *(a1 + 80);
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

    v4 = sub_15585F8(v11, v13, a3);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= a2)
  {
    v4 = sub_225EB68(a3, a2);
  }

  v8 = *(a1 + 72);
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

  v4 = sub_1554A54(v8, v10, a3);
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

  v14 = *(a1 + 88);
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
        v4 = (v15 >> 7);
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
  v17 = *(a1 + 56);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v19 = *(*(a1 + 64) + 8 * i + 8);
      *v7 = 34;
      v20 = *(v19 + 20);
      v7[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v7 + 1);
      }

      else
      {
        v21 = v7 + 2;
      }

      v7 = sub_191BED4(v19, v21, a3);
    }
  }

  if (*(a1 + 26))
  {
    v7 = sub_1953428(a1 + 16, 200, 401, v7, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v25)
  {
    v27 = v25;
    memcpy(v7, v26, v25);
    v7 += v27;
    return v7;
  }

  return sub_1957130(a3, v26, v25, v7);
}

uint64_t sub_191CAC4(uint64_t a1)
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
      v9 = sub_191C084(v8);
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
      v11 = sub_1554C64(*(a1 + 72));
      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v10 & 2) == 0)
      {
LABEL_10:
        if ((v10 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

    v12 = sub_1558C60(*(a1 + 80));
    v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_14:
    v13 = *(a1 + 88);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v14;
  }

LABEL_18:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v4 += v18;
  }

  *(a1 + 44) = v4;
  return v4;
}

void *sub_191CC2C(void *a1)
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

void sub_191CCA0(void *a1)
{
  sub_191CC2C(a1);

  operator delete();
}

char *sub_191CCD8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_191CD6C(uint64_t a1)
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

std::string *sub_191CD98(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_191CDCC(void *a1)
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

void sub_191CE40(void *a1)
{
  sub_191CDCC(a1);

  operator delete();
}

char *sub_191CE78(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_191CF0C(uint64_t a1)
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

std::string *sub_191CF38(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_191CF6C(void *a1)
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

void sub_191CFE0(void *a1)
{
  sub_191CF6C(a1);

  operator delete();
}

char *sub_191D018(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_191D0AC(uint64_t a1)
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

std::string *sub_191D0D8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_191D10C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_271D158;
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

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_191D27C(uint64_t a1)
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

  if (a1 != &off_278BB88)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_191DE0C(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_191DE0C(v7);
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

void sub_191D368(uint64_t a1)
{
  sub_191D27C(a1);

  operator delete();
}

uint64_t sub_191D3A0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    result = sub_1554824(*(a1 + 48));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      result = sub_1554824(*(a1 + 64));
      if ((v3 & 8) == 0)
      {
LABEL_6:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_1557E90(*(a1 + 56));
  if ((v3 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  result = sub_14F37E0(*(a1 + 72));
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result = sub_14F37E0(*(a1 + 80));
  }

LABEL_8:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 80) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_191D454(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 6)
    {
      if (v7 == 50)
      {
        *(a1 + 16) |= 1u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = sub_194DB04((a1 + 24), v18);
        v16 = sub_1958890(v19, *v24, a3);
        goto LABEL_33;
      }
    }

    else if (v10 == 5)
    {
      if (v7 == 42)
      {
        *(a1 + 16) |= 4u;
        v11 = *(a1 + 40);
        if (!v11)
        {
          v14 = *(a1 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v11 = sub_191FB08(v15);
          *(a1 + 40) = v11;
LABEL_20:
          v6 = *v24;
        }

LABEL_21:
        v16 = sub_225E170(a3, v11, v6);
        goto LABEL_33;
      }
    }

    else if (v10 == 4 && v7 == 34)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_191FB08(v13);
        *(a1 + 32) = v11;
        goto LABEL_20;
      }

      goto LABEL_21;
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

LABEL_39:
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

    v16 = sub_1952690(v7, v22, v6, a3);
LABEL_33:
    *v24 = v16;
    if (!v16)
    {
      goto LABEL_39;
    }
  }

  return *v24;
}

char *sub_191D640(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v9 = *(a1 + 32);
    *v4 = 34;
    v10 = *(v9 + 44);
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v11 = sub_19575D0(v10, v4 + 1);
    }

    else
    {
      v11 = v4 + 2;
    }

    v4 = sub_191E310(v9, v11, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 40);
  *v4 = 42;
  v13 = *(v12 + 44);
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v4 + 1);
  }

  else
  {
    v14 = v4 + 2;
  }

  v4 = sub_191E310(v12, v14, a3);
  if (v6)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 6, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_5:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
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

uint64_t sub_191D7E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_12;
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
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = sub_191E678(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = sub_191E678(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_191D8FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      *(a1 + 40) |= 1u;
      v5 = *(a1 + 48);
      if (!v5)
      {
        v6 = *(a1 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        sub_155A57C(v7);
        *(a1 + 48) = v5;
      }

      if (*(a2 + 48))
      {
        v8 = *(a2 + 48);
      }

      else
      {
        v8 = &off_27771C8;
      }

      sub_1554CF0(v5, v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
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

      v9 = sub_155A8BC(v11);
      *(a1 + 56) = v9;
    }

    if (*(a2 + 56))
    {
      v12 = *(a2 + 56);
    }

    else
    {
      v12 = &off_2777350;
    }

    sub_1558F14(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_30:
      if ((v4 & 8) != 0)
      {
        *(a1 + 40) |= 8u;
        v18 = *(a1 + 72);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          sub_155A500(v20);
          *(a1 + 72) = v18;
        }

        if (*(a2 + 72))
        {
          v21 = *(a2 + 72);
        }

        else
        {
          v21 = &off_2777198;
        }

        sub_14F406C(v18, v21);
        if ((v4 & 0x10) == 0)
        {
LABEL_32:
          if ((v4 & 0x20) == 0)
          {
LABEL_34:
            *(a1 + 40) |= v4;
            goto LABEL_35;
          }

LABEL_33:
          *(a1 + 88) = *(a2 + 88);
          goto LABEL_34;
        }
      }

      else if ((v4 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      *(a1 + 40) |= 0x10u;
      v22 = *(a1 + 80);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        sub_155A500(v24);
        *(a1 + 80) = v22;
      }

      if (*(a2 + 80))
      {
        v25 = *(a2 + 80);
      }

      else
      {
        v25 = &off_2777198;
      }

      sub_14F406C(v22, v25);
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_22:
    *(a1 + 40) |= 4u;
    v13 = *(a1 + 64);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_155A57C(v15);
      *(a1 + 64) = v13;
    }

    if (*(a2 + 64))
    {
      v16 = *(a2 + 64);
    }

    else
    {
      v16 = &off_27771C8;
    }

    sub_1554CF0(v13, v16);
    goto LABEL_30;
  }

LABEL_35:
  sub_225EA0C(a1 + 16, a2 + 16);
  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_191DB28(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_271D1D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_191DB9C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_191DBCC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_271D1D8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  v6 = *(a2 + 40);
  if (v6)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v6 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  v7 = *(a2 + 88);
  *(a1 + 80) = 0;
  *(a1 + 88) = v7;
  return a1;
}

uint64_t sub_191DE0C(uint64_t a1)
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

  sub_191DE98(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_191DE98(uint64_t (***result)()))()
{
  if (result != &off_278BBB8)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      sub_15547E8(v2);
      operator delete();
    }

    v3 = v1[7];
    if (v3)
    {
      sub_1557E54(v3);
      operator delete();
    }

    v4 = v1[8];
    if (v4)
    {
      sub_15547E8(v4);
      operator delete();
    }

    v5 = v1[9];
    if (v5)
    {
      sub_155431C(v5);
      operator delete();
    }

    result = v1[10];
    if (result)
    {
      sub_155431C(result);

      operator delete();
    }
  }

  return result;
}

void sub_191DF74(uint64_t a1)
{
  sub_191DE0C(a1);

  operator delete();
}

char *sub_191DFAC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v38 + 1;
    v8 = *v38;
    if (*v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v38 + 2;
      }
    }

    v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_52;
        }

        *(a1 + 40) |= 4u;
        v19 = *(a1 + 64);
        if (!v19)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          sub_155A57C(v24);
          v19 = v25;
          *(a1 + 64) = v25;
          goto LABEL_34;
        }

LABEL_35:
        v26 = sub_221E24C(a3, v19, v7);
        goto LABEL_49;
      }

      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_52;
        }

        *(a1 + 40) |= 8u;
        v15 = *(a1 + 72);
        if (!v15)
        {
          v30 = *(a1 + 8);
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          sub_155A500(v31);
          v15 = v32;
          *(a1 + 72) = v32;
          goto LABEL_47;
        }
      }

      else
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_52;
        }

        *(a1 + 40) |= 0x10u;
        v15 = *(a1 + 80);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_155A500(v17);
          v15 = v18;
          *(a1 + 80) = v18;
LABEL_47:
          v7 = v38;
        }
      }

      v26 = sub_22179F8(a3, v15, v7);
      goto LABEL_49;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_52;
      }

      *(a1 + 40) |= 1u;
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        sub_155A57C(v21);
        v19 = v22;
        *(a1 + 48) = v22;
LABEL_34:
        v7 = v38;
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_52;
    }

    v5 |= 0x20u;
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
      v38 = v13;
      *(a1 + 88) = v12;
      goto LABEL_50;
    }

    v36 = sub_19587DC(v7, v12);
    v38 = v36;
    *(a1 + 88) = v37;
    if (!v36)
    {
      goto LABEL_66;
    }

LABEL_50:
    if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 40) |= 2u;
    v27 = *(a1 + 56);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_155A8BC(v29);
      *(a1 + 56) = v27;
      v7 = v38;
    }

    v26 = sub_2206260(a3, v27, v7);
LABEL_49:
    v38 = v26;
    if (!v26)
    {
      goto LABEL_66;
    }

    goto LABEL_50;
  }

LABEL_52:
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
    if (v8 - 1600 > 0x327)
    {
      v34 = *(a1 + 8);
      if (v34)
      {
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v35 = sub_11F1920((a1 + 8));
        v7 = v38;
      }

      v26 = sub_1952690(v8, v35, v7, a3);
    }

    else
    {
      v26 = sub_19525AC((a1 + 16), v8, v7, &off_278BBB8, (a1 + 8), a3);
    }

    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_66:
  v38 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v38;
}

char *sub_191E310(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
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

    v11 = *(a1 + 56);
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

    v4 = sub_15585F8(v11, v13, a3);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= a2)
  {
    v4 = sub_225EB68(a3, a2);
  }

  v8 = *(a1 + 48);
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

  v4 = sub_1554A54(v8, v10, a3);
  if ((v6 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 0x20) == 0)
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

  v14 = *(a1 + 88);
  *v4 = 32;
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
        v4 = (v15 >> 7);
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
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v17 = *(a1 + 64);
    *v7 = 42;
    v18 = *(v17 + 20);
    v7[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v7 + 1);
    }

    else
    {
      v19 = v7 + 2;
    }

    v7 = sub_1554A54(v17, v19, a3);
    if ((v6 & 8) == 0)
    {
LABEL_26:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_26;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v20 = *(a1 + 72);
  *v7 = 50;
  v21 = *(v20 + 20);
  v7[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v7 + 1);
  }

  else
  {
    v22 = v7 + 2;
  }

  v7 = sub_15544E4(v20, v22, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_40:
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v23 = *(a1 + 80);
    *v7 = 58;
    v24 = *(v23 + 20);
    v7[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v7 + 1);
    }

    else
    {
      v25 = v7 + 2;
    }

    v7 = sub_15544E4(v23, v25, a3);
  }

LABEL_46:
  if (*(a1 + 26))
  {
    v7 = sub_1953428(a1 + 16, 200, 301, v7, a3);
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v29)
  {
    v31 = v29;
    memcpy(v7, v30, v29);
    v7 += v31;
    return v7;
  }

  return sub_1957130(a3, v30, v29, v7);
}

uint64_t sub_191E678(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    v6 = sub_1554C64(*(a1 + 48));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v7 = sub_1558C60(*(a1 + 56));
  v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v9 = sub_1554640(*(a1 + 72));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x10) == 0)
    {
LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v8 = sub_1554C64(*(a1 + 64));
  v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  v10 = sub_1554640(*(a1 + 80));
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
LABEL_8:
    v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_9:
  v4 = *(a1 + 8);
  if (v4)
  {
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 44) = v2;
  return v2;
}

uint64_t sub_191E820(uint64_t a1)
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
  if (a1 != &off_278BC18)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_1555890(v6);
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

void sub_191E8D8(uint64_t a1)
{
  sub_191E820(a1);

  operator delete();
}

uint64_t sub_191E910(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_15558CC(*(result + 24));
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

char *sub_191E970(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v28, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v28 + 1;
    v7 = *v28;
    if (*v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v28 + 2;
      }
    }

    v28 = v6;
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 == 1 && v7 == 8)
      {
        v19 = v6 + 1;
        v20 = *v6;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v19;
        v22 = (v21 << 7) + v20;
        v20 = (v22 - 128);
        if (v21 < 0)
        {
          v28 = sub_19587DC(v6, (v22 - 128));
          if (!v28)
          {
            return 0;
          }

          v20 = v26;
        }

        else
        {
          v19 = v6 + 2;
LABEL_30:
          v28 = v19;
        }

        if (v20 > 5 || v20 == 3)
        {
          v24 = *(a1 + 8);
          if (v24)
          {
            v25 = ((v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v25 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(1, v20, v25);
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v20;
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
          return v28;
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
        v6 = v28;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_25;
    }

    if (v7 != 18)
    {
      goto LABEL_12;
    }

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

      sub_155A67C(v17);
      v15 = v18;
      *(a1 + 24) = v18;
      v6 = v28;
    }

    v14 = sub_220DE48(a3, v15, v6);
LABEL_25:
    v28 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v28;
}

char *sub_191EB6C(uint64_t a1, char *__dst, _DWORD *a3)
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

    v6 = sub_1555B24(v11, v13, a3);
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

uint64_t sub_191ECF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1555CF4(*(a1 + 24));
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

std::string *sub_191EDC0(std::string *result, uint64_t a2)
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

        sub_155A67C(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2777240;
      }

      result = sub_1555DA8(data, v8);
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

uint64_t sub_191EEA8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_271D2D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_191EF1C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_191EF4C(uint64_t a1)
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
  if (a1 != &off_278BC40)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_1555890(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_194744C((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_191F018(uint64_t a1)
{
  sub_191EF4C(a1);

  operator delete();
}

uint64_t sub_191F050(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_191E910(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 40))
  {
    result = sub_15558CC(*(a1 + 72));
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 72) = 0;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_191F0EC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v32 + 1;
    v8 = *v32;
    if (*v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v32 + 2;
      }
    }

    v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_33:
      v32 = v22;
      *(a1 + 80) = v21;
      goto LABEL_43;
    }

    v30 = sub_19587DC(v7, v21);
    v32 = v30;
    *(a1 + 80) = v31;
    if (!v30)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 == 18)
    {
      v15 = v7 - 1;
      while (1)
      {
        v16 = (v15 + 1);
        v32 = v15 + 1;
        v17 = *(a1 + 64);
        if (v17 && (v18 = *(a1 + 56), v18 < *v17))
        {
          *(a1 + 56) = v18 + 1;
          v19 = *&v17[2 * v18 + 2];
        }

        else
        {
          v20 = sub_191FB64(*(a1 + 48));
          v19 = sub_19593CC(a1 + 48, v20);
          v16 = v32;
        }

        v15 = sub_225E200(a3, v19, v16);
        v32 = v15;
        if (!v15)
        {
          goto LABEL_50;
        }

        if (*a3 <= v15 || *v15 != 18)
        {
          goto LABEL_43;
        }
      }
    }
  }

  else if (v11 == 1 && v8 == 10)
  {
    *(a1 + 40) |= 1u;
    v24 = *(a1 + 72);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_155A67C(v26);
      v24 = v27;
      *(a1 + 72) = v27;
      v7 = v32;
    }

    v14 = sub_220DE48(a3, v24, v7);
LABEL_42:
    v32 = v14;
    if (!v14)
    {
      goto LABEL_50;
    }

    goto LABEL_43;
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
    if (v8 - 1600 > 0x327)
    {
      v28 = *(a1 + 8);
      if (v28)
      {
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v29 = sub_11F1920((a1 + 8));
        v7 = v32;
      }

      v14 = sub_1952690(v8, v29, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_278BC40, (a1 + 8), a3);
    }

    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_50:
  v32 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v32;
}

char *sub_191F390(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 72);
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

    v4 = sub_1555B24(v7, v9, a3);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 64) + 8 * i + 8);
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

      v4 = sub_191EB6C(v12, v14, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 80);
    *v4 = 24;
    v4[1] = v16;
    if (v16 > 0x7F)
    {
      v4[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v4[2] = v16 >> 7;
      v15 = v4 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
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
      v15 = v4 + 2;
    }
  }

  else
  {
    v15 = v4;
  }

  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 200, 301, v15, a3);
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

uint64_t sub_191F5E4(uint64_t a1)
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
      v9 = sub_191ECF8(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = sub_1555CF4(*(a1 + 72));
      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v4 += v15;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_191F6F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_194754C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_155A67C(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_2777240;
      }

      sub_1555DA8(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_191F840(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_271CED8;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_191F8BC(uint64_t a1)
{
  if (!a1)
  {

    sub_19475D8();
  }

  return sub_191C134(v3, a1, 0);
}

uint64_t sub_191F918(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271CFD8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_191F990(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271D058;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_191FA08(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271D0D8;
  *(result + 16) = 0;
  return result;
}

void *sub_191FA80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_271D158;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_191FB08(uint64_t a1)
{
  if (!a1)
  {

    sub_1947644();
  }

  return sub_191DB28(v3, a1, 0);
}

uint64_t sub_191FB64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_271D258;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_191FBE0(uint64_t a1)
{
  if (!a1)
  {

    sub_19476B0();
  }

  return sub_191EEA8(v3, a1, 0);
}

uint64_t sub_191FC3C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_271D358;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return a1;
}

void sub_191FCBC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_191FCEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_271D358;
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
    sub_194792C((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
    sub_19479B8((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 8);
  if (v16)
  {
    sub_1957EF4(v4, (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  v17 = *(a2 + 40);
  if (v17)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v17 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v17 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  v18 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v18;
  return a1;
}

uint64_t sub_191FFBC(uint64_t a1)
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

  if (a1 != &off_278BC98)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      sub_19226D4(v5);
      operator delete();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      sub_1928E9C(v6);
      operator delete();
    }

    v7 = *(a1 + 112);
    if (v7)
    {
      sub_1921390(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_19477A0((a1 + 72));
  sub_194771C((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_19200CC(uint64_t a1)
{
  sub_191FFBC(a1);

  operator delete();
}

unsigned __int8 *sub_1920104(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      result = sub_1922804(*(a1 + 48));
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_19228C4(*(a1 + 56));
    if ((v3 & 4) != 0)
    {
LABEL_5:
      result = sub_1922970(*(a1 + 64));
    }
  }

LABEL_6:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1920194(uint64_t a1)
{
  sub_1951124((a1 + 16));
  result = sub_12A41D0(a1 + 48);
  if (*(a1 + 40))
  {
    v3 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

unsigned __int8 *sub_1920220(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if ((*(a1 + 40) & 3) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_1920288(uint64_t a1, char *a2, int32x2_t *a3)
{
  v48 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v48, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v48 + 1;
    v8 = *v48;
    if (*v48 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v48, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v48 + 2;
      }
    }

    v48 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 != 5)
      {
        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_76;
        }

        *(a1 + 40) |= 4u;
        v16 = *(a1 + 112);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_1929500(v18);
          *(a1 + 112) = v16;
          v7 = v48;
        }

        v19 = sub_225E3B0(a3, v16, v7);
        goto LABEL_85;
      }

      if (v8 != 40)
      {
        goto LABEL_76;
      }

      v32 = v7 + 1;
      v31 = *v7;
      if (v31 < 0)
      {
        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if ((v33 & 0x80000000) == 0)
        {
          v32 = v7 + 2;
          goto LABEL_57;
        }

        v48 = sub_19587DC(v7, v31);
        if (!v48)
        {
          goto LABEL_102;
        }
      }

      else
      {
LABEL_57:
        v48 = v32;
      }

      if (v31 > 2)
      {
        sub_12E85B8();
      }

      else
      {
        *(a1 + 40) |= 0x10u;
        *(a1 + 124) = v31;
      }

      goto LABEL_86;
    }

    if (v11 == 7)
    {
      if (v8 == 58)
      {
        v37 = v7 - 1;
        while (1)
        {
          v38 = (v37 + 1);
          v48 = v37 + 1;
          v39 = *(a1 + 88);
          if (v39 && (v40 = *(a1 + 80), v40 < *v39))
          {
            *(a1 + 80) = v40 + 1;
            v41 = *&v39[2 * v40 + 2];
          }

          else
          {
            v42 = sub_192955C(*(a1 + 72));
            v41 = sub_19593CC(a1 + 72, v42);
            v38 = v48;
          }

          v37 = sub_225E440(a3, v41, v38);
          v48 = v37;
          if (!v37)
          {
            goto LABEL_102;
          }

          if (*a3 <= v37 || *v37 != 58)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_76;
    }

    if (v11 != 8 || v8 != 64)
    {
      goto LABEL_76;
    }

    v5 |= 0x20u;
    LODWORD(v23) = *v7;
    if ((v23 & 0x80000000) == 0)
    {
      v24 = v7 + 1;
LABEL_90:
      v48 = v24;
      *(a1 + 128) = v23;
      goto LABEL_86;
    }

    v23 = (v7[1] << 7) + v23 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v24 = v7 + 2;
      goto LABEL_90;
    }

    v46 = sub_19587DC(v7, v23);
    v48 = v46;
    *(a1 + 128) = v47;
    if (!v46)
    {
      goto LABEL_102;
    }

LABEL_86:
    if (sub_195ADC0(a3, &v48, a3[11].i32[1]))
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
        goto LABEL_76;
      }

      *(a1 + 40) |= 1u;
      v34 = *(a1 + 96);
      if (!v34)
      {
        v35 = *(a1 + 8);
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v36 = *v36;
        }

        v34 = sub_1929630(v36);
        *(a1 + 96) = v34;
        v7 = v48;
      }

      v19 = sub_225E290(a3, v34, v7);
    }

    else
    {
      if (v11 != 4 || v8 != 34)
      {
        goto LABEL_76;
      }

      *(a1 + 40) |= 2u;
      v20 = *(a1 + 104);
      if (!v20)
      {
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v20 = sub_192996C(v22);
        *(a1 + 104) = v20;
        v7 = v48;
      }

      v19 = sub_225E320(a3, v20, v7);
    }

LABEL_85:
    v48 = v19;
    if (!v19)
    {
      goto LABEL_102;
    }

    goto LABEL_86;
  }

  if (v11 == 1)
  {
    if (v8 == 10)
    {
      v25 = v7 - 1;
      while (1)
      {
        v26 = (v25 + 1);
        v48 = v25 + 1;
        v27 = *(a1 + 64);
        if (v27 && (v28 = *(a1 + 56), v28 < *v27))
        {
          *(a1 + 56) = v28 + 1;
          v29 = *&v27[2 * v28 + 2];
        }

        else
        {
          v30 = sub_1447C28(*(a1 + 48));
          v29 = sub_19593CC(a1 + 48, v30);
          v26 = v48;
        }

        v25 = sub_2202E10(a3, v29, v26);
        v48 = v25;
        if (!v25)
        {
          goto LABEL_102;
        }

        if (*a3 <= v25 || *v25 != 10)
        {
          goto LABEL_86;
        }
      }
    }
  }

  else if (v11 == 2 && v8 == 16)
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
      v48 = sub_19587DC(v7, v13);
      if (!v48)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v14 = v7 + 2;
LABEL_18:
      v48 = v14;
    }

    if (v13 > 4)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 40) |= 8u;
      *(a1 + 120) = v13;
    }

    goto LABEL_86;
  }

LABEL_76:
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
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v44 = *(a1 + 8);
      if (v44)
      {
        v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v45 = sub_11F1920((a1 + 8));
        v7 = v48;
      }

      v19 = sub_1952690(v8, v45, v7, a3);
    }

    else
    {
      v19 = sub_19525AC((a1 + 16), v8, v7, &off_278BC98, (a1 + 8), a3);
    }

    goto LABEL_85;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_102:
  v48 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v48;
}