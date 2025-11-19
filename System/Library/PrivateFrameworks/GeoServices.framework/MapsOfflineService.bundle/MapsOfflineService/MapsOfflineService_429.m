void sub_17754BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13BA13C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1578288((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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
    sub_13B9F2C((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 7) != 0)
  {
    if (v19)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 96);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_1570D50(v23);
        *(a1 + 96) = v21;
      }

      if (*(a2 + 96))
      {
        v24 = *(a2 + 96);
      }

      else
      {
        v24 = &off_27774D0;
      }

      sub_156F880(v21, v24);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
LABEL_15:
          *(a1 + 16) |= v19;
          goto LABEL_16;
        }

LABEL_14:
        *(a1 + 112) = *(a2 + 112);
        goto LABEL_15;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 104) = *(a2 + 104);
    if ((v19 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_17756B8(uint64_t a1, uint64_t a2)
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

        sub_1778080(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2781940;
      }

      sub_17760C8(v5, v8);
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

uint64_t sub_1775788(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 64);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_16EF064(*(*(a1 + 72) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_17758AC(a1 + 80);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 136);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_1775910(*(*(a1 + 144) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 40);
    if ((v9 & 0x2000) != 0)
    {
      result = sub_16EE510(*(a1 + 328));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x4000) != 0)
    {
      result = sub_16E5370(*(a1 + 336));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x8000) != 0)
    {
      result = sub_17758AC(*(a1 + 344) + 24);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x40000) != 0)
    {
      result = sub_1775910(*(a1 + 368));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x80000) != 0)
    {
      result = sub_16E6614(*(a1 + 376));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x100000) != 0)
    {
      result = sub_17758AC(*(a1 + 384) + 24);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x400000) == 0)
    {
      return 1;
    }

    result = sub_16F35C0(*(a1 + 400));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_17758AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 17))
    {
      result = sub_16E5370(*(v3 + 88));
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

uint64_t sub_1775910(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 24);
  if ((*(v1 + 17) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(v1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_177595C(uint64_t a1)
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
  if (a1 != &off_2781918)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_17764B8(v6);
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

void sub_1775A14(uint64_t a1)
{
  sub_177595C(a1);

  operator delete();
}

uint64_t sub_1775A4C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v4 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v8 = *(result + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v10 = *(result + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
      }

      goto LABEL_42;
    }

    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v5 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v7 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v9 = *(result + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v2 & 0xF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_16E4E44(*(result + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  result = sub_1839D48(*(v1 + 96));
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_56:
  result = sub_1395368(*(v1 + 104));
  if ((v2 & 0x800) != 0)
  {
LABEL_47:
    result = sub_16D2658(*(v1 + 112));
  }

LABEL_48:
  if ((v2 & 0x7000) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
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

char *sub_1775C98(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v15 = v6 + 1;
        v16 = *v6;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v15;
        v18 = (v17 << 7) + v16;
        LODWORD(v16) = v18 - 128;
        if (v17 < 0)
        {
          v25 = sub_19587DC(v6, (v18 - 128));
          if (!v25)
          {
            return 0;
          }

          LODWORD(v16) = v23;
        }

        else
        {
          v15 = v6 + 2;
LABEL_23:
          v25 = v15;
        }

        if (sub_13AFAA4(v16))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v16;
        }

        else
        {
          sub_12E8418();
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
          return v25;
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
        v6 = v25;
      }

      v14 = sub_1952690(v7, v13, v6, a3);
      goto LABEL_31;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

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

      sub_1778080(v21);
      v19 = v22;
      *(a1 + 24) = v22;
      v6 = v25;
    }

    v14 = sub_22049A0(a3, v19, v6);
LABEL_31:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v25;
}

char *sub_1775E74(uint64_t a1, char *__dst, unint64_t *a3)
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

    __dst = sub_1776C6C(v6, v8, a3);
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

  if ((*a3 - v9) >= v17)
  {
    v19 = v17;
    memcpy(v9, v18, v17);
    v9 += v19;
    return v9;
  }

  return sub_1957130(a3, v18, v17, v9);
}

uint64_t sub_1776000(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_1777144(*(a1 + 24));
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

void sub_17760C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_35;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_20:
  v14 = *(a2 + 48);
  *(a1 + 16) |= 8u;
  v15 = *(a1 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_23:
  v17 = *(a2 + 56);
  *(a1 + 16) |= 0x10u;
  v18 = *(a1 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a1 + 56), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_26:
  v20 = *(a2 + 64);
  *(a1 + 16) |= 0x20u;
  v21 = *(a1 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA1C((a1 + 64), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_29:
  v23 = *(a2 + 72);
  *(a1 + 16) |= 0x40u;
  v24 = *(a1 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a1 + 72), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
  if ((v4 & 0x80) != 0)
  {
LABEL_32:
    v26 = *(a2 + 80);
    *(a1 + 16) |= 0x80u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    sub_194EA1C((a1 + 80), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
  }

LABEL_35:
  if ((v4 & 0x7F00) == 0)
  {
    goto LABEL_45;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v30 = *(a1 + 88);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_16F5828(v32);
      *(a1 + 88) = v30;
    }

    if (*(a2 + 88))
    {
      v33 = *(a2 + 88);
    }

    else
    {
      v33 = &off_277E5E8;
    }

    sub_16E527C(v30, v33);
    if ((v4 & 0x200) == 0)
    {
LABEL_38:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_65;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  *(a1 + 16) |= 0x200u;
  v34 = *(a1 + 96);
  if (!v34)
  {
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_1864918(v36);
    *(a1 + 96) = v34;
  }

  if (*(a2 + 96))
  {
    v37 = *(a2 + 96);
  }

  else
  {
    v37 = &off_2786948;
  }

  sub_183A338(v34, v37);
  if ((v4 & 0x400) == 0)
  {
LABEL_39:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_73;
  }

LABEL_65:
  *(a1 + 16) |= 0x400u;
  v38 = *(a1 + 104);
  if (!v38)
  {
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    v38 = sub_13AE3BC(v40);
    *(a1 + 104) = v38;
  }

  if (*(a2 + 104))
  {
    v41 = *(a2 + 104);
  }

  else
  {
    v41 = &off_276D878;
  }

  sub_128E5DC(v38, v41);
  if ((v4 & 0x800) == 0)
  {
LABEL_40:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_81;
  }

LABEL_73:
  *(a1 + 16) |= 0x800u;
  v42 = *(a1 + 112);
  if (!v42)
  {
    v43 = *(a1 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    sub_16D4990(v44);
    *(a1 + 112) = v42;
  }

  if (*(a2 + 112))
  {
    v45 = *(a2 + 112);
  }

  else
  {
    v45 = &off_277DFF0;
  }

  sub_16D4400(v42, v45);
  if ((v4 & 0x1000) == 0)
  {
LABEL_41:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

LABEL_82:
    *(a1 + 128) = *(a2 + 128);
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_81:
  *(a1 + 120) = *(a2 + 120);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_82;
  }

LABEL_42:
  if ((v4 & 0x4000) != 0)
  {
LABEL_43:
    *(a1 + 136) = *(a2 + 136);
  }

LABEL_44:
  *(a1 + 16) |= v4;
LABEL_45:
  v29 = *(a2 + 8);
  if (v29)
  {

    sub_1957EF4((a1 + 8), (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1776478(uint64_t a1)
{
  if ((*(a1 + 17) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_17764B8(void *a1)
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

  sub_177653C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_177653C(uint64_t a1)
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

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
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

  if (a1 != &off_2781940)
  {
    if (*(a1 + 88))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 96))
    {
      sub_1839D0C();
      operator delete();
    }

    v5 = *(a1 + 104);
    if (v5)
    {
      sub_139532C(v5);
      operator delete();
    }

    result = *(a1 + 112);
    if (result)
    {
      sub_16D261C(result);

      operator delete();
    }
  }

  return result;
}

void sub_17766AC(void *a1)
{
  sub_17764B8(a1);

  operator delete();
}

uint64_t sub_17766E4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v54, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v54 + 1);
    v8 = **v54;
    if (**v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v54 + 2);
      }
    }

    *v54 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 24);
        goto LABEL_79;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 2u;
        v32 = *(a1 + 8);
        v12 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v12 = *v12;
        }

        v13 = (a1 + 32);
        goto LABEL_79;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 4u;
        v29 = *(a1 + 8);
        v12 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v12 = *v12;
        }

        v13 = (a1 + 40);
        goto LABEL_79;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 8u;
        v30 = *(a1 + 8);
        v12 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_79;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 0x100u;
        v22 = *(a1 + 88);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_16F5828(v24);
          *(a1 + 88) = v22;
          v7 = *v54;
        }

        v18 = sub_21F4D60(a3, v22, v7);
        goto LABEL_80;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_83;
        }

        v5 |= 0x1000u;
        v34 = (v7 + 1);
        v33 = *v7;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_60;
        }

        v35 = *v34;
        v33 = (v35 << 7) + v33 - 128;
        if (v35 < 0)
        {
          v48 = sub_19587DC(v7, v33);
          *v54 = v48;
          *(a1 + 120) = v49;
          if (!v48)
          {
            goto LABEL_99;
          }
        }

        else
        {
          v34 = (v7 + 2);
LABEL_60:
          *v54 = v34;
          *(a1 + 120) = v33;
        }

        goto LABEL_81;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_83;
        }

        v5 |= 0x2000u;
        v40 = (v7 + 1);
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_70;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v52 = sub_19587DC(v7, v39);
          *v54 = v52;
          *(a1 + 128) = v53;
          if (!v52)
          {
            goto LABEL_99;
          }
        }

        else
        {
          v40 = (v7 + 2);
LABEL_70:
          *v54 = v40;
          *(a1 + 128) = v39;
        }

        goto LABEL_81;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 0x10u;
        v31 = *(a1 + 8);
        v12 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v12 = *v12;
        }

        v13 = (a1 + 56);
        goto LABEL_79;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 0x20u;
        v43 = *(a1 + 8);
        v12 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v12 = *v12;
        }

        v13 = (a1 + 64);
        goto LABEL_79;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 0x40u;
        v28 = *(a1 + 8);
        v12 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v12 = *v12;
        }

        v13 = (a1 + 72);
        goto LABEL_79;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 0x80u;
        v42 = *(a1 + 8);
        v12 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v12 = *v12;
        }

        v13 = (a1 + 80);
LABEL_79:
        v44 = sub_194DB04(v13, v12);
        v18 = sub_1958890(v44, *v54, a3);
        goto LABEL_80;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 0x200u;
        v19 = *(a1 + 96);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_1864918(v21);
          *(a1 + 96) = v19;
          v7 = *v54;
        }

        v18 = sub_2208718(a3, v19, v7);
        goto LABEL_80;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 0x400u;
        v25 = *(a1 + 104);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_13AE3BC(v27);
          *(a1 + 104) = v25;
          v7 = *v54;
        }

        v18 = sub_2208CB8(a3, v25, v7);
        goto LABEL_80;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_83;
        }

        v5 |= 0x4000u;
        v37 = (v7 + 1);
        LODWORD(v36) = *v7;
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_65;
        }

        v38 = *v37;
        v36 = v36 + (v38 << 7) - 128;
        if (v38 < 0)
        {
          v50 = sub_19587DC(v7, v36);
          *v54 = v50;
          *(a1 + 136) = v51;
          if (!v50)
          {
            goto LABEL_99;
          }
        }

        else
        {
          v37 = (v7 + 2);
LABEL_65:
          *v54 = v37;
          *(a1 + 136) = v36;
        }

        goto LABEL_81;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 0x800u;
        v14 = *(a1 + 112);
        if (!v14)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          sub_16D4990(v16);
          v14 = v17;
          *(a1 + 112) = v17;
          v7 = *v54;
        }

        v18 = sub_2204C70(a3, v14, v7);
        goto LABEL_80;
      default:
LABEL_83:
        if (v8)
        {
          v45 = (v8 & 7) == 4;
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
            v7 = *v54;
          }

          v18 = sub_1952690(v8, v47, v7, a3);
LABEL_80:
          *v54 = v18;
          if (!v18)
          {
            goto LABEL_99;
          }

LABEL_81:
          if (sub_195ADC0(a3, v54, a3[11].i32[1]))
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
LABEL_99:
          *v54 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v54;
    }
  }
}

char *sub_1776C6C(uint64_t a1, char *__dst, unint64_t *a3)
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
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 88);
    *v4 = 42;
    v9 = *(v8 + 44);
    v4[1] = v9;
    if (v9 > 0x7F)
    {
      v10 = sub_19575D0(v9, v4 + 1);
    }

    else
    {
      v10 = v4 + 2;
    }

    v4 = sub_16E5070(v8, v10, a3);
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x1000) == 0)
  {
LABEL_7:
    v7 = v4;
    goto LABEL_25;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 120);
  *v4 = 48;
  v4[1] = v11;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    v4[2] = v11 >> 7;
    v7 = v4 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = v4[2];
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
    v7 = v4 + 2;
  }

LABEL_25:
  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v16 = *(a1 + 128);
    *v7 = 56;
    v7[1] = v16;
    if (v16 > 0x7F)
    {
      v7[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v7[2] = v16 >> 7;
      v15 = v7 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v7[2];
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
      v15 = v7 + 2;
    }
  }

  else
  {
    v15 = v7;
  }

  if ((v6 & 0x10) != 0)
  {
    v15 = sub_128AEEC(a3, 8, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v15);
    if ((v6 & 0x20) == 0)
    {
LABEL_36:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_36;
  }

  v15 = sub_128AEEC(a3, 9, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v15);
  if ((v6 & 0x40) == 0)
  {
LABEL_37:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_45;
  }

LABEL_44:
  v15 = sub_128AEEC(a3, 10, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v15);
  if ((v6 & 0x80) == 0)
  {
LABEL_38:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_46;
  }

LABEL_45:
  v15 = sub_128AEEC(a3, 11, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v15);
  if ((v6 & 0x200) == 0)
  {
LABEL_39:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_40;
    }

LABEL_52:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v24 = *(a1 + 104);
    *v15 = 106;
    v25 = *(v24 + 20);
    v15[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v15 + 1);
    }

    else
    {
      v26 = v15 + 2;
    }

    v15 = sub_13955E4(v24, v26, a3);
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_58;
  }

LABEL_46:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v21 = *(a1 + 96);
  *v15 = 98;
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

  v15 = sub_183A034(v21, v23, a3);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_52;
  }

LABEL_40:
  if ((v6 & 0x4000) == 0)
  {
LABEL_41:
    v20 = v15;
    goto LABEL_65;
  }

LABEL_58:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v27 = *(a1 + 136);
  *v15 = 112;
  v15[1] = v27;
  if (v27 > 0x7F)
  {
    v15[1] = v27 | 0x80;
    v28 = v27 >> 7;
    v15[2] = v27 >> 7;
    v20 = v15 + 3;
    if (v27 >= 0x4000)
    {
      LOBYTE(v29) = v15[2];
      do
      {
        *(v20 - 1) = v29 | 0x80;
        v29 = v28 >> 7;
        *v20++ = v28 >> 7;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
    }
  }

  else
  {
    v20 = v15 + 2;
  }

LABEL_65:
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v31 = *(a1 + 112);
    *v20 = 122;
    v32 = *(v31 + 20);
    v20[1] = v32;
    if (v32 > 0x7F)
    {
      v33 = sub_19575D0(v32, v20 + 1);
    }

    else
    {
      v33 = v20 + 2;
    }

    v20 = sub_16D353C(v31, v33, a3);
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v20;
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

  if ((*a3 - v20) >= v37)
  {
    v39 = v37;
    memcpy(v20, v38, v37);
    v20 += v39;
    return v20;
  }

  return sub_1957130(a3, v38, v37, v20);
}

uint64_t sub_1777144(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
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
    v13 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_36:
  v19 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_39:
  v22 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_42:
  v25 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_21:
  if ((v2 & 0x7F00) == 0)
  {
    goto LABEL_56;
  }

  if ((v2 & 0x100) != 0)
  {
    v28 = sub_16E51F0(*(a1 + 88));
    v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_24:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v29 = sub_183A234(*(a1 + 96));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_25:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  v30 = sub_1395750(*(a1 + 104));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) == 0)
  {
LABEL_26:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

LABEL_49:
  v31 = sub_16D3F3C(*(a1 + 112));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x1000) == 0)
  {
LABEL_27:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_50:
  v3 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x2000) == 0)
  {
LABEL_28:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_51:
  v3 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x4000) == 0)
  {
    goto LABEL_56;
  }

LABEL_52:
  v32 = *(a1 + 136);
  if (v32 < 0)
  {
    v33 = 11;
  }

  else
  {
    v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v33;
LABEL_56:
  v34 = *(a1 + 8);
  if (v34)
  {
    v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *((v34 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v37 < 0)
    {
      v37 = *(v36 + 16);
    }

    v3 += v37;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_177755C(uint64_t a1)
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

  if (a1 != &off_27819D0 && *(a1 + 96))
  {
    sub_156FCCC();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_13B9D04((a1 + 72));
  sub_1578204((a1 + 48));
  sub_13BA02C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1777638(uint64_t a1)
{
  sub_177755C(a1);

  operator delete();
}

char *sub_1777670(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_63;
      }

      v5 |= 4u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_41:
        v48 = v26;
        *(a1 + 112) = v25 != 0;
        goto LABEL_71;
      }

      v44 = sub_19587DC(v7, v25);
      v48 = v44;
      *(a1 + 112) = v45 != 0;
      if (!v44)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v11 != 2)
      {
        if (v11 == 3 && v8 == 26)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            v48 = v13 + 1;
            v15 = *(a1 + 40);
            if (v15 && (v16 = *(a1 + 32), v16 < *v15))
            {
              *(a1 + 32) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              sub_1778080(*(a1 + 24));
              v17 = sub_19593CC(a1 + 24, v18);
              v14 = v48;
            }

            v13 = sub_22049A0(a3, v17, v14);
            v48 = v13;
            if (!v13)
            {
              goto LABEL_80;
            }

            if (*a3 <= v13 || *v13 != 26)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_63;
      }

      if (v8 != 16)
      {
        goto LABEL_63;
      }

      v5 |= 2u;
      v35 = v7 + 1;
      v34 = *v7;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_56;
      }

      v36 = *v35;
      v34 = (v36 << 7) + v34 - 128;
      if ((v36 & 0x80000000) == 0)
      {
        v35 = v7 + 2;
LABEL_56:
        v48 = v35;
        *(a1 + 104) = v34;
        goto LABEL_71;
      }

      v46 = sub_19587DC(v7, v34);
      v48 = v46;
      *(a1 + 104) = v47;
      if (!v46)
      {
        goto LABEL_80;
      }
    }

LABEL_71:
    if (sub_195ADC0(a3, &v48, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 == 34)
    {
      v28 = v7 - 1;
      while (1)
      {
        v29 = (v28 + 1);
        v48 = v28 + 1;
        v30 = *(a1 + 64);
        if (v30 && (v31 = *(a1 + 56), v31 < *v30))
        {
          *(a1 + 56) = v31 + 1;
          v32 = *&v30[2 * v31 + 2];
        }

        else
        {
          v33 = sub_15720DC(*(a1 + 48));
          v32 = sub_19593CC(a1 + 48, v33);
          v29 = v48;
        }

        v28 = sub_221E75C(a3, v32, v29);
        v48 = v28;
        if (!v28)
        {
          goto LABEL_80;
        }

        if (*a3 <= v28 || *v28 != 34)
        {
          goto LABEL_71;
        }
      }
    }
  }

  else
  {
    if (v11 == 5)
    {
      if (v8 != 42)
      {
        goto LABEL_63;
      }

      *(a1 + 16) |= 1u;
      v37 = *(a1 + 96);
      if (!v37)
      {
        v38 = *(a1 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v39 = *v39;
        }

        v37 = sub_1570D50(v39);
        *(a1 + 96) = v37;
        v7 = v48;
      }

      v40 = sub_21F4970(a3, v37, v7);
LABEL_70:
      v48 = v40;
      if (!v40)
      {
        goto LABEL_80;
      }

      goto LABEL_71;
    }

    if (v11 == 6 && v8 == 50)
    {
      v19 = v7 - 1;
      while (1)
      {
        v20 = (v19 + 1);
        v48 = v19 + 1;
        v21 = *(a1 + 88);
        if (v21 && (v22 = *(a1 + 80), v22 < *v21))
        {
          *(a1 + 80) = v22 + 1;
          v23 = *&v21[2 * v22 + 2];
        }

        else
        {
          v24 = sub_17862E8(*(a1 + 72));
          v23 = sub_19593CC(a1 + 72, v24);
          v20 = v48;
        }

        v19 = sub_2204880(a3, v23, v20);
        v48 = v19;
        if (!v19)
        {
          goto LABEL_80;
        }

        if (*a3 <= v19 || *v19 != 50)
        {
          goto LABEL_71;
        }
      }
    }
  }

LABEL_63:
  if (v8)
  {
    v41 = (v8 & 7) == 4;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v42 = *(a1 + 8);
    if (v42)
    {
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v43 = sub_11F1920((a1 + 8));
      v7 = v48;
    }

    v40 = sub_1952690(v8, v43, v7, a3);
    goto LABEL_70;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  v48 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v48;
}

char *sub_1777A80(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 112);
    *__dst = 8;
    __dst[1] = v6;
    __dst += 2;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 104);
    *__dst = 16;
    __dst[1] = v8;
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v7 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
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
      v7 = __dst + 2;
    }
  }

  else
  {
    v7 = __dst;
  }

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
      *v7 = 26;
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

      v7 = sub_1776C6C(v14, v16, a3);
    }
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v19 = *(*(a1 + 64) + 8 * j + 8);
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

      v7 = sub_1571E14(v19, v21, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v22 = *(a1 + 96);
    *v7 = 42;
    v23 = *(v22 + 20);
    v7[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v7 + 1);
    }

    else
    {
      v24 = v7 + 2;
    }

    v7 = sub_157028C(v22, v24, a3);
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v27 = *(*(a1 + 88) + 8 * k + 8);
      *v7 = 50;
      v28 = *(v27 + 20);
      v7[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v7 + 1);
      }

      else
      {
        v29 = v7 + 2;
      }

      v7 = sub_1785B84(v27, v29, a3);
    }
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v33)
  {
    v35 = v33;
    memcpy(v7, v34, v33);
    v7 += v35;
    return v7;
  }

  return sub_1957130(a3, v34, v33, v7);
}

uint64_t sub_1777DE4(uint64_t a1)
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
      v7 = sub_1777144(v6);
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
      v14 = sub_1571F5C(v13);
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
      v21 = sub_1785C6C(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 7) != 0)
  {
    if (v22)
    {
      v23 = sub_15705D4(*(a1 + 96));
      v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v22 & 2) != 0)
    {
      v16 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v16 += (v22 >> 1) & 2;
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v27 < 0)
    {
      v27 = *(v26 + 16);
    }

    v16 += v27;
  }

  *(a1 + 20) = v16;
  return v16;
}

uint64_t sub_1777FA8(uint64_t a1)
{
  if (!a1)
  {

    sub_1786D40();
  }

  return sub_1772008(v3, a1, 0);
}

uint64_t sub_1778004(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2708CC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1778080(uint64_t a1)
{
  if (!a1)
  {

    sub_1786DAC();
  }

  *v3 = &off_2708D40;
  *(v3 + 8) = a1;
  *(v3 + 16) = 0;
  *(v3 + 24) = &qword_278E990;
  *(v3 + 32) = &qword_278E990;
  *(v3 + 40) = &qword_278E990;
  *(v3 + 48) = &qword_278E990;
  *(v3 + 56) = &qword_278E990;
  *(v3 + 64) = &qword_278E990;
  *(v3 + 72) = &qword_278E990;
  *(v3 + 80) = &qword_278E990;
  result = 0.0;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0;
  return result;
}

uint64_t sub_1778110(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2708DC0;
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
  *(result + 112) = 0;
  return result;
}

uint64_t sub_17781C0(uint64_t a1)
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

void sub_177828C(uint64_t a1)
{
  sub_17781C0(a1);

  operator delete();
}

uint64_t sub_17782C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    if ((v1 & 1) == 0)
    {
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
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

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
  }

LABEL_17:
  if ((v1 & 0xF8) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 69) = 0;
    *(a1 + 64) = 0;
  }

  if ((v1 & 0x300) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = -1;
  }

  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_17783A4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v8 >> 3 <= 2)
      {
        if (v11 != 1)
        {
          if (v11 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 1u;
            v19 = *(a1 + 8);
            v16 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
            if (v19)
            {
              v16 = *v16;
            }

            v17 = (a1 + 24);
            goto LABEL_40;
          }

          goto LABEL_66;
        }

        if (v8 != 8)
        {
          goto LABEL_66;
        }

        v5 |= 8u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v24 = v7 + 2;
LABEL_45:
          *v51 = v24;
          *(a1 + 48) = v23;
          goto LABEL_74;
        }

        v41 = sub_19587DC(v7, v23);
        *v51 = v41;
        *(a1 + 48) = v42;
        if (!v41)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v11 == 3)
        {
          if (v8 != 25)
          {
            goto LABEL_66;
          }

          v30 = *v7;
          v29 = v7 + 2;
          v5 |= 0x10u;
          *(a1 + 56) = v30;
          goto LABEL_65;
        }

        if (v11 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_66;
          }

          v5 |= 0x20u;
          v35 = v7 + 1;
          v34 = *v7;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_62;
          }

          v36 = *v35;
          v34 = (v36 << 7) + v34 - 128;
          if ((v36 & 0x80000000) == 0)
          {
            v35 = v7 + 2;
LABEL_62:
            *v51 = v35;
            *(a1 + 64) = v34;
            goto LABEL_74;
          }

          v49 = sub_19587DC(v7, v34);
          *v51 = v49;
          *(a1 + 64) = v50;
          if (!v49)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v11 != 5 || v8 != 40)
          {
            goto LABEL_66;
          }

          v5 |= 0x40u;
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
            *v51 = v13;
            *(a1 + 72) = v12;
            goto LABEL_74;
          }

          v47 = sub_19587DC(v7, v12);
          *v51 = v47;
          *(a1 + 72) = v48;
          if (!v47)
          {
            goto LABEL_89;
          }
        }
      }

      goto LABEL_74;
    }

    if (v8 >> 3 <= 7)
    {
      break;
    }

    if (v11 != 8)
    {
      if (v11 != 9)
      {
        if (v11 == 10 && v8 == 82)
        {
          *(a1 + 16) |= 4u;
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v17 = (a1 + 40);
          goto LABEL_40;
        }

        goto LABEL_66;
      }

      if (v8 != 73)
      {
        goto LABEL_66;
      }

      v37 = *v7;
      v29 = v7 + 2;
      v5 |= 0x100u;
      *(a1 + 80) = v37;
LABEL_65:
      *v51 = v29;
      goto LABEL_74;
    }

    if (v8 != 64)
    {
      goto LABEL_66;
    }

    v5 |= 0x80u;
    v32 = v7 + 1;
    v31 = *v7;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_57;
    }

    v33 = *v32;
    v31 = (v33 << 7) + v31 - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v32 = v7 + 2;
LABEL_57:
      *v51 = v32;
      *(a1 + 76) = v31 != 0;
      goto LABEL_74;
    }

    v45 = sub_19587DC(v7, v31);
    *v51 = v45;
    *(a1 + 76) = v46 != 0;
    if (!v45)
    {
      goto LABEL_89;
    }

LABEL_74:
    if (sub_195ADC0(a3, v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_66;
    }

    v5 |= 0x200u;
    v27 = v7 + 1;
    LODWORD(v26) = *v7;
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    v28 = *v27;
    v26 = v26 + (v28 << 7) - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_50:
      *v51 = v27;
      *(a1 + 88) = v26;
      goto LABEL_74;
    }

    v43 = sub_19587DC(v7, v26);
    *v51 = v43;
    *(a1 + 88) = v44;
    if (!v43)
    {
      goto LABEL_89;
    }

    goto LABEL_74;
  }

  if (v11 == 7 && v8 == 58)
  {
    *(a1 + 16) |= 2u;
    v20 = *(a1 + 8);
    v16 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v16 = *v16;
    }

    v17 = (a1 + 32);
LABEL_40:
    v21 = sub_194DB04(v17, v16);
    v22 = sub_1958890(v21, *v51, a3);
LABEL_73:
    *v51 = v22;
    if (!v22)
    {
      goto LABEL_89;
    }

    goto LABEL_74;
  }

LABEL_66:
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
      v7 = *v51;
    }

    v22 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_73;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_89:
  *v51 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v51;
}

char *sub_17787E4(uint64_t a1, char *__dst, void *a3)
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

  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 56);
    *v6 = 25;
    *(v6 + 1) = v12;
    v6 += 9;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    v11 = v6;
    goto LABEL_25;
  }

LABEL_18:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v13 = *(a1 + 64);
  *v6 = 32;
  v6[1] = v13;
  if (v13 > 0x7F)
  {
    v6[1] = v13 | 0x80;
    v14 = v13 >> 7;
    v6[2] = v13 >> 7;
    v11 = v6 + 3;
    if (v13 >= 0x4000)
    {
      LOBYTE(v15) = v6[2];
      do
      {
        *(v11 - 1) = v15 | 0x80;
        v15 = v14 >> 7;
        *v11++ = v14 >> 7;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_25:
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v18 = *(a1 + 72);
    *v11 = 40;
    v11[1] = v18;
    if (v18 > 0x7F)
    {
      v11[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v11[2] = v18 >> 7;
      v17 = v11 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v20) = v11[2];
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
      v17 = v11 + 2;
    }
  }

  else
  {
    v17 = v11;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v23 = *(a1 + 88);
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

  if ((v5 & 2) != 0)
  {
    v22 = sub_128AEEC(a3, 7, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v22);
    if ((v5 & 0x80) == 0)
    {
LABEL_45:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_54;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_45;
  }

  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v28 = *(a1 + 76);
  *v22 = 64;
  v22[1] = v28;
  v22 += 2;
  if ((v5 & 0x100) == 0)
  {
LABEL_46:
    if ((v5 & 4) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_54:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v29 = *(a1 + 80);
  *v22 = 73;
  *(v22 + 1) = v29;
  v22 += 9;
  if ((v5 & 4) != 0)
  {
LABEL_47:
    v22 = sub_128AEEC(a3, 10, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v22);
  }

LABEL_48:
  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v22;
  }

  v30 = v26 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v22 >= v31)
  {
    v33 = v31;
    memcpy(v22, v32, v31);
    v22 += v33;
    return v22;
  }

  return sub_1957130(a3, v32, v31, v22);
}

uint64_t sub_1778BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_29;
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
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v12 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v1 & 8) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v1 & 0x10) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0x20) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  if ((v1 & 0x40) != 0)
  {
    v10 = *(a1 + 72);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v11;
  }

  v3 = v2 + ((v1 >> 6) & 2);
LABEL_29:
  if ((v1 & 0x300) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v3 += 9;
    }

    if ((v1 & 0x200) != 0)
    {
      v15 = *(a1 + 88);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 11;
      }

      v3 += v17;
    }
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v3 += v21;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_1778DB8(std::string *result, uint64_t a2)
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

      goto LABEL_32;
    }

LABEL_31:
    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_33;
    }

LABEL_32:
    v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

LABEL_33:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
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
      v3[3].__r_.__value_.__s.__data_[4] = *(a2 + 76);
      goto LABEL_11;
    }

LABEL_34:
    LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
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
      v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
    }

    if ((v4 & 0x200) != 0)
    {
      LODWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
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

uint64_t sub_1778F6C(uint64_t a1)
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

  if (a1 != &off_2781A48 && *(a1 + 32))
  {
    sub_16E4E08();
    operator delete();
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

void sub_1779038(uint64_t a1)
{
  sub_1778F6C(a1);

  operator delete();
}

unsigned __int8 *sub_1779070(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_16E4E44(*(result + 4));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 5) = 0;
  }

  v5 = v1[8];
  v4 = v1 + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1779110(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v22 = sub_194DB04((a1 + 24), v21);
        v19 = sub_1958890(v22, *v33, a3);
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_35;
    }

    v5 |= 4u;
    v14 = (v7 + 1);
    LODWORD(v13) = *v7;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = v13 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = (v7 + 2);
LABEL_17:
      *v33 = v14;
      *(a1 + 40) = v13;
      goto LABEL_43;
    }

    v29 = sub_19587DC(v7, v13);
    *v33 = v29;
    *(a1 + 40) = v30;
    if (!v29)
    {
      goto LABEL_52;
    }

LABEL_43:
    if (sub_195ADC0(a3, v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_35;
    }

    v5 |= 8u;
    v24 = (v7 + 1);
    LODWORD(v23) = *v7;
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v24;
    v23 = v23 + (v25 << 7) - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = (v7 + 2);
LABEL_34:
      *v33 = v24;
      *(a1 + 44) = v23;
      goto LABEL_43;
    }

    v31 = sub_19587DC(v7, v23);
    *v33 = v31;
    *(a1 + 44) = v32;
    if (!v31)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 2u;
    v16 = *(a1 + 32);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_16F5828(v18);
      *(a1 + 32) = v16;
      v7 = *v33;
    }

    v19 = sub_21F4D60(a3, v16, v7);
LABEL_42:
    *v33 = v19;
    if (!v19)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

LABEL_35:
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
      v7 = *v33;
    }

    v19 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_1779398(uint64_t a1, char *__dst, void *a3)
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

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 32);
    *v12 = 34;
    v18 = *(v17 + 44);
    v12[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v12 + 1);
    }

    else
    {
      v19 = v12 + 2;
    }

    v12 = sub_16E5070(v17, v19, a3);
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v12;
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

  if (*a3 - v12 >= v23)
  {
    v25 = v23;
    memcpy(v12, v24, v23);
    v12 += v25;
    return v12;
  }

  return sub_1957130(a3, v24, v23, v12);
}

uint64_t sub_17795CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_16E51F0(*(a1 + 32));
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

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
  if ((v2 & 8) != 0)
  {
LABEL_17:
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
  }

LABEL_21:
  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v3 += v15;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_1779720(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1779760(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_16;
    }
  }

  else if (v4)
  {
    goto LABEL_16;
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

  if (a1 != &off_2781A78 && *(a1 + 56))
  {
    sub_16E4E08();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1779870(uint64_t a1)
{
  sub_1779760(a1);

  operator delete();
}

unsigned __int8 *sub_17798A8(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v6 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  v7 = *(result + 5) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  v8 = *(result + 6) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = sub_16E4E44(*(result + 7));
    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v4 = v1[8];
  v3 = v1 + 8;
  *(v3 + 7) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_17799E4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 4u;
        v20 = *(a1 + 8);
        v14 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v14 = *v14;
        }

        v15 = (a1 + 40);
      }

      else
      {
        if (v11 == 5)
        {
          if (v8 != 42)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 0x10u;
          v24 = *(a1 + 56);
          if (!v24)
          {
            v25 = *(a1 + 8);
            v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v25)
            {
              v26 = *v26;
            }

            v24 = sub_16F5828(v26);
            *(a1 + 56) = v24;
            v7 = *v32;
          }

          v23 = sub_21F4D60(a3, v24, v7);
LABEL_39:
          *v32 = v23;
          if (!v23)
          {
            goto LABEL_60;
          }

          goto LABEL_40;
        }

        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 8u;
        v16 = *(a1 + 8);
        v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v14 = *v14;
        }

        v15 = (a1 + 48);
      }

LABEL_38:
      v22 = sub_194DB04(v15, v14);
      v23 = sub_1958890(v22, *v32, a3);
      goto LABEL_39;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_48;
    }

    v5 |= 0x20u;
    v18 = (v7 + 1);
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = (v7 + 2);
LABEL_29:
      *v32 = v18;
      *(a1 + 64) = v17;
      goto LABEL_40;
    }

    v30 = sub_19587DC(v7, v17);
    *v32 = v30;
    *(a1 + 64) = v31;
    if (!v30)
    {
      goto LABEL_60;
    }

LABEL_40:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 18)
    {
      goto LABEL_48;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 8);
    v14 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v14 = *v14;
    }

    v15 = (a1 + 24);
    goto LABEL_38;
  }

  if (v11 == 3 && v8 == 26)
  {
    *(a1 + 16) |= 2u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v15 = (a1 + 32);
    goto LABEL_38;
  }

LABEL_48:
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
      v7 = *v32;
    }

    v23 = sub_1952690(v8, v29, v7, a3);
    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_60:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_1779CC4(uint64_t a1, char *__dst, void *a3)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = sub_128AEEC(a3, 4, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_21:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v13 = *(a1 + 56);
  *v6 = 42;
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

  v6 = sub_16E5070(v13, v15, a3);
  if ((v5 & 8) != 0)
  {
LABEL_15:
    v6 = sub_128AEEC(a3, 6, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

LABEL_16:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
  }

  v16 = v11 & 0xFFFFFFFFFFFFFFFCLL;
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

uint64_t sub_1779EF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_17;
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

      goto LABEL_25;
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
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_25:
  v18 = sub_16E51F0(*(a1 + 56));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_16:
    v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_17:
  v10 = *(a1 + 8);
  if (v10)
  {
    v19 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v3 += v20;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_177A0D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 32), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_20:
    v12 = *(a2 + 40);
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 40), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_23:
    v15 = *(a2 + 48);
    *(a1 + 16) |= 8u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 48), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 16) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_9;
    }

LABEL_26:
    *(a1 + 16) |= 0x10u;
    v18 = *(a1 + 56);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_16F5828(v20);
      *(a1 + 56) = v18;
    }

    if (*(a2 + 56))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = &off_277E5E8;
    }

    sub_16E527C(v18, v21);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_177A28C(uint64_t a1)
{
  if ((*(a1 + 16) & 0x10) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_177A2CC(uint64_t a1)
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

  v5 = (a1 + 112);
  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2781AC0)
  {
    if (*(a1 + 120))
    {
      sub_156FCCC();
      operator delete();
    }

    if (*(a1 + 128))
    {
      sub_1839D0C();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_13B9D04((a1 + 88));
  sub_1578204((a1 + 64));
  sub_1956ABC(a1 + 48);
  sub_13B9B78((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_177A3E4(uint64_t a1)
{
  sub_177A2CC(a1);

  operator delete();
}

uint64_t sub_177A41C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17798A8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  v5 = *(v1 + 72);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 80) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1571C00(v7);
      --v5;
    }

    while (v5);
    *(v1 + 72) = 0;
  }

  v8 = *(v1 + 96);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 104) + 8);
    do
    {
      v10 = *v9++;
      result = sub_1785988(v10);
      --v8;
    }

    while (v8);
    *(v1 + 96) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 7) == 0)
  {
    goto LABEL_18;
  }

  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v14 = *(v1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v14 + 23) < 0)
  {
    **v14 = 0;
    *(v14 + 8) = 0;
    if ((v11 & 2) != 0)
    {
      goto LABEL_30;
    }

LABEL_16:
    if ((v11 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *v14 = 0;
  *(v14 + 23) = 0;
  if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_30:
  result = sub_156EFA0(*(v1 + 120));
  if ((v11 & 4) != 0)
  {
LABEL_17:
    result = sub_1839D48(*(v1 + 128));
  }

LABEL_18:
  if ((v11 & 0xF8) != 0)
  {
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
  }

  if ((v11 & 0x300) != 0)
  {
    *(v1 + 160) = 0;
    *(v1 + 152) = 0;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_177A56C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v83 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v83, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v83 + 1);
      v8 = **v83;
      if (**v83 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(*v83, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = (*v83 + 2);
        }
      }

      *v83 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_119;
          }

          v5 |= 0x20u;
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
            *v83 = v12;
            *(a1 + 144) = v11 != 0;
            goto LABEL_127;
          }

          v72 = sub_19587DC(v7, v11);
          *v83 = v72;
          *(a1 + 144) = v73 != 0;
          if (!v72)
          {
            goto LABEL_132;
          }

          goto LABEL_127;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_119;
          }

          v5 |= 8u;
          v45 = v7 + 1;
          v46 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_72;
          }

          v47 = *v45;
          v46 = v46 + (v47 << 7) - 128;
          if (v47 < 0)
          {
            v74 = sub_1958770(v7, v46);
            *v83 = v74;
            *(a1 + 136) = v75;
            if (!v74)
            {
              goto LABEL_132;
            }
          }

          else
          {
            v45 = v7 + 2;
LABEL_72:
            *v83 = v45;
            *(a1 + 136) = v46;
          }

          goto LABEL_127;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_119;
          }

          v5 |= 0x10u;
          v33 = v7 + 1;
          v34 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          v35 = *v33;
          v34 = v34 + (v35 << 7) - 128;
          if (v35 < 0)
          {
            v68 = sub_1958770(v7, v34);
            *v83 = v68;
            *(a1 + 140) = v69;
            if (!v68)
            {
              goto LABEL_132;
            }
          }

          else
          {
            v33 = v7 + 2;
LABEL_52:
            *v83 = v33;
            *(a1 + 140) = v34;
          }

          goto LABEL_127;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_119;
          }

          v36 = v7 - 1;
          while (1)
          {
            v37 = (v36 + 1);
            *v83 = v36 + 1;
            v38 = *(a1 + 40);
            if (v38 && (v39 = *(a1 + 32), v39 < *v38))
            {
              *(a1 + 32) = v39 + 1;
              v40 = *&v38[2 * v39 + 2];
            }

            else
            {
              v41 = sub_1784D78(*(a1 + 24));
              v40 = sub_19593CC(a1 + 24, v41);
              v37 = *v83;
            }

            v36 = sub_22046D0(a3, v40, v37);
            *v83 = v36;
            if (!v36)
            {
              goto LABEL_132;
            }

            if (*a3 <= v36 || *v36 != 34)
            {
              goto LABEL_127;
            }
          }

        case 5u:
          if (v8 == 40)
          {
            v18 = v7 - 1;
            while (1)
            {
              *v83 = v18 + 1;
              v19 = v18[1];
              if (v19 < 0)
              {
                v20 = (v18[2] << 7) + v19;
                v19 = (v20 - 128);
                if (v18[2] < 0)
                {
                  v18 = sub_19587DC((v18 + 1), (v20 - 128));
                  v19 = v21;
                }

                else
                {
                  v18 += 3;
                }
              }

              else
              {
                v18 += 2;
              }

              *v83 = v18;
              v22 = *(a1 + 48);
              if (v22 == *(a1 + 52))
              {
                v23 = v22 + 1;
                sub_1959094((a1 + 48), v22 + 1);
                *(*(a1 + 56) + 8 * v22) = v19;
                v18 = *v83;
              }

              else
              {
                *(*(a1 + 56) + 8 * v22) = v19;
                v23 = v22 + 1;
              }

              *(a1 + 48) = v23;
              if (!v18)
              {
                goto LABEL_132;
              }

              if (*a3 <= v18 || *v18 != 40)
              {
                goto LABEL_127;
              }
            }
          }

          if (v8 == 42)
          {
            v17 = sub_1958938((a1 + 48), v7, a3);
          }

          else
          {
LABEL_119:
            if (v8)
            {
              v80 = (v8 & 7) == 4;
            }

            else
            {
              v80 = 1;
            }

            if (v80)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_132:
              *v83 = 0;
              goto LABEL_2;
            }

            v81 = *(a1 + 8);
            if (v81)
            {
              v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v82 = sub_11F1920((a1 + 8));
              v7 = *v83;
            }

            v17 = sub_1952690(v8, v82, v7, a3);
          }

LABEL_126:
          *v83 = v17;
          if (!v17)
          {
            goto LABEL_132;
          }

LABEL_127:
          if (sub_195ADC0(a3, v83, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_119;
          }

          v5 |= 0x80u;
          v49 = v7 + 1;
          LODWORD(v48) = *v7;
          if ((v48 & 0x80) == 0)
          {
            goto LABEL_77;
          }

          v50 = *v49;
          v48 = v48 + (v50 << 7) - 128;
          if (v50 < 0)
          {
            v76 = sub_19587DC(v7, v48);
            *v83 = v76;
            *(a1 + 148) = v77;
            if (!v76)
            {
              goto LABEL_132;
            }
          }

          else
          {
            v49 = v7 + 2;
LABEL_77:
            *v83 = v49;
            *(a1 + 148) = v48;
          }

          goto LABEL_127;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_119;
          }

          v5 |= 0x40u;
          v55 = v7 + 1;
          v54 = *v7;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_88;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v78 = sub_19587DC(v7, v54);
            *v83 = v78;
            *(a1 + 145) = v79 != 0;
            if (!v78)
            {
              goto LABEL_132;
            }
          }

          else
          {
            v55 = v7 + 2;
LABEL_88:
            *v83 = v55;
            *(a1 + 145) = v54 != 0;
          }

          goto LABEL_127;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_119;
          }

          v5 |= 0x200u;
          v42 = v7 + 1;
          v43 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_67;
          }

          v44 = *v42;
          v43 = v43 + (v44 << 7) - 128;
          if (v44 < 0)
          {
            v70 = sub_1958770(v7, v43);
            *v83 = v70;
            *(a1 + 160) = v71;
            if (!v70)
            {
              goto LABEL_132;
            }
          }

          else
          {
            v42 = v7 + 2;
LABEL_67:
            *v83 = v42;
            *(a1 + 160) = v43;
          }

          goto LABEL_127;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_119;
          }

          *(a1 + 16) |= 1u;
          v63 = *(a1 + 8);
          v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
          if (v63)
          {
            v64 = *v64;
          }

          v65 = sub_194DB04((a1 + 112), v64);
          v17 = sub_1958890(v65, *v83, a3);
          goto LABEL_126;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_119;
          }

          v27 = v7 - 1;
          while (1)
          {
            v28 = (v27 + 1);
            *v83 = v27 + 1;
            v29 = *(a1 + 80);
            if (v29 && (v30 = *(a1 + 72), v30 < *v29))
            {
              *(a1 + 72) = v30 + 1;
              v31 = *&v29[2 * v30 + 2];
            }

            else
            {
              v32 = sub_15720DC(*(a1 + 64));
              v31 = sub_19593CC(a1 + 64, v32);
              v28 = *v83;
            }

            v27 = sub_221E75C(a3, v31, v28);
            *v83 = v27;
            if (!v27)
            {
              goto LABEL_132;
            }

            if (*a3 <= v27 || *v27 != 82)
            {
              goto LABEL_127;
            }
          }

        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_119;
          }

          v57 = v7 - 1;
          while (1)
          {
            v58 = (v57 + 1);
            *v83 = v57 + 1;
            v59 = *(a1 + 104);
            if (v59 && (v60 = *(a1 + 96), v60 < *v59))
            {
              *(a1 + 96) = v60 + 1;
              v61 = *&v59[2 * v60 + 2];
            }

            else
            {
              v62 = sub_17862E8(*(a1 + 88));
              v61 = sub_19593CC(a1 + 88, v62);
              v58 = *v83;
            }

            v57 = sub_2204880(a3, v61, v58);
            *v83 = v57;
            if (!v57)
            {
              goto LABEL_132;
            }

            if (*a3 <= v57 || *v57 != 90)
            {
              goto LABEL_127;
            }
          }

        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_119;
          }

          *(a1 + 16) |= 2u;
          v14 = *(a1 + 120);
          if (!v14)
          {
            v15 = *(a1 + 8);
            v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
            if (v15)
            {
              v16 = *v16;
            }

            v14 = sub_1570D50(v16);
            *(a1 + 120) = v14;
            v7 = *v83;
          }

          v17 = sub_21F4970(a3, v14, v7);
          goto LABEL_126;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_119;
          }

          v5 |= 0x100u;
          v25 = v7 + 1;
          v24 = *v7;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v66 = sub_19587DC(v7, v24);
            *v83 = v66;
            *(a1 + 152) = v67;
            if (!v66)
            {
              goto LABEL_132;
            }
          }

          else
          {
            v25 = v7 + 2;
LABEL_37:
            *v83 = v25;
            *(a1 + 152) = v24;
          }

          goto LABEL_127;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_119;
          }

          *(a1 + 16) |= 4u;
          v51 = *(a1 + 128);
          if (!v51)
          {
            v52 = *(a1 + 8);
            v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
            if (v52)
            {
              v53 = *v53;
            }

            v51 = sub_1864918(v53);
            *(a1 + 128) = v51;
            v7 = *v83;
          }

          v17 = sub_2208718(a3, v51, v7);
          goto LABEL_126;
        default:
          goto LABEL_119;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return *v83;
}

char *sub_177ACF8(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 144);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 136);
    *a2 = 16;
    a2[1] = v8;
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v9 = v8 >> 7;
      a2[2] = v8 >> 7;
      v7 = a2 + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = a2[2];
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
      v7 = a2 + 2;
    }
  }

  else
  {
    v7 = a2;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 140);
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
        LOBYTE(v7) = v7[2];
        do
        {
          *(v12 - 1) = v7 | 0x80;
          LODWORD(v7) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
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

  v16 = *(a1 + 32);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v18 = *(*(a1 + 40) + 8 * i + 8);
      *v12 = 34;
      v19 = *(v18 + 20);
      v12[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, v12 + 1);
      }

      else
      {
        v20 = v12 + 2;
      }

      v12 = sub_1779CC4(v18, v20, a3);
    }
  }

  v21 = *(a1 + 48);
  if (v21 < 1)
  {
    v24 = v12;
  }

  else
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v23 = *(*(a1 + 56) + 8 * j);
      *v12 = 40;
      v12[1] = v23;
      if (v23 > 0x7F)
      {
        v12[1] = v23 | 0x80;
        v25 = v23 >> 7;
        v12[2] = v23 >> 7;
        v24 = v12 + 3;
        if (v23 >= 0x4000)
        {
          LOBYTE(v12) = v12[2];
          do
          {
            *(v24 - 1) = v12 | 0x80;
            v12 = (v25 >> 7);
            *v24++ = v25 >> 7;
            v26 = v25 >> 14;
            v25 >>= 7;
          }

          while (v26);
        }
      }

      else
      {
        v24 = v12 + 2;
      }

      v12 = v24;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v28 = *(a1 + 148);
    *v24 = 48;
    v24[1] = v28;
    if (v28 > 0x7F)
    {
      v24[1] = v28 | 0x80;
      v29 = v28 >> 7;
      v24[2] = v28 >> 7;
      v27 = v24 + 3;
      if (v28 >= 0x4000)
      {
        LOBYTE(v24) = v24[2];
        do
        {
          *(v27 - 1) = v24 | 0x80;
          v24 = (v29 >> 7);
          *v27++ = v29 >> 7;
          v30 = v29 >> 14;
          v29 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v27 = v24 + 2;
    }
  }

  else
  {
    v27 = v24;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v31 = *(a1 + 145);
    *v27 = 56;
    v27[1] = v31;
    v27 += 2;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v27)
    {
      v27 = sub_225EB68(a3, v27);
    }

    v33 = *(a1 + 160);
    *v27 = 64;
    v27[1] = v33;
    if (v33 > 0x7F)
    {
      v27[1] = v33 | 0x80;
      v34 = v33 >> 7;
      v27[2] = v33 >> 7;
      v32 = v27 + 3;
      if (v33 >= 0x4000)
      {
        LOBYTE(v35) = v27[2];
        do
        {
          *(v32 - 1) = v35 | 0x80;
          v35 = v34 >> 7;
          *v32++ = v34 >> 7;
          v36 = v34 >> 14;
          v34 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v32 = v27 + 2;
    }
  }

  else
  {
    v32 = v27;
  }

  if (v5)
  {
    v32 = sub_128AEEC(a3, 9, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v32);
  }

  v37 = *(a1 + 72);
  if (v37)
  {
    for (k = 0; k != v37; ++k)
    {
      if (*a3 <= v32)
      {
        v32 = sub_225EB68(a3, v32);
      }

      v39 = *(*(a1 + 80) + 8 * k + 8);
      *v32 = 82;
      v40 = *(v39 + 20);
      v32[1] = v40;
      if (v40 > 0x7F)
      {
        v41 = sub_19575D0(v40, v32 + 1);
      }

      else
      {
        v41 = v32 + 2;
      }

      v32 = sub_1571E14(v39, v41, a3);
    }
  }

  v42 = *(a1 + 96);
  if (v42)
  {
    for (m = 0; m != v42; ++m)
    {
      if (*a3 <= v32)
      {
        v32 = sub_225EB68(a3, v32);
      }

      v44 = *(*(a1 + 104) + 8 * m + 8);
      *v32 = 90;
      v45 = *(v44 + 20);
      v32[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v32 + 1);
      }

      else
      {
        v46 = v32 + 2;
      }

      v32 = sub_1785B84(v44, v46, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v32)
    {
      v32 = sub_225EB68(a3, v32);
    }

    v47 = *(a1 + 120);
    *v32 = 98;
    v48 = *(v47 + 20);
    v32[1] = v48;
    if (v48 > 0x7F)
    {
      v49 = sub_19575D0(v48, v32 + 1);
    }

    else
    {
      v49 = v32 + 2;
    }

    v32 = sub_157028C(v47, v49, a3);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v32)
    {
      v32 = sub_225EB68(a3, v32);
    }

    v51 = *(a1 + 152);
    *v32 = 104;
    v32[1] = v51;
    if (v51 > 0x7F)
    {
      v32[1] = v51 | 0x80;
      v52 = v51 >> 7;
      v32[2] = v51 >> 7;
      v50 = v32 + 3;
      if (v51 >= 0x4000)
      {
        LOBYTE(v53) = v32[2];
        do
        {
          *(v50 - 1) = v53 | 0x80;
          v53 = v52 >> 7;
          *v50++ = v52 >> 7;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v50 = v32 + 2;
    }
  }

  else
  {
    v50 = v32;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v50)
    {
      v50 = sub_225EB68(a3, v50);
    }

    v55 = *(a1 + 128);
    *v50 = 114;
    v56 = *(v55 + 20);
    v50[1] = v56;
    if (v56 > 0x7F)
    {
      v57 = sub_19575D0(v56, v50 + 1);
    }

    else
    {
      v57 = v50 + 2;
    }

    v50 = sub_183A034(v55, v57, a3);
  }

  v58 = *(a1 + 8);
  if ((v58 & 1) == 0)
  {
    return v50;
  }

  v60 = v58 & 0xFFFFFFFFFFFFFFFCLL;
  v61 = *(v60 + 31);
  if (v61 < 0)
  {
    v62 = *(v60 + 8);
    v61 = *(v60 + 16);
  }

  else
  {
    v62 = (v60 + 8);
  }

  if ((*a3 - v50) >= v61)
  {
    v63 = v61;
    memcpy(v50, v62, v61);
    v50 += v63;
    return v50;
  }

  return sub_1957130(a3, v62, v61, v50);
}

uint64_t sub_177B3D4(uint64_t a1)
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
      v7 = sub_1779EF0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = sub_1959F14((a1 + 48));
  v9 = *(a1 + 72);
  v10 = v8 + v2 + *(a1 + 48) + v9;
  v11 = *(a1 + 80);
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
      v15 = sub_1571F5C(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 96);
  v17 = v10 + v16;
  v18 = *(a1 + 104);
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
      v22 = sub_1785C6C(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 16);
  if (v23)
  {
    if (v23)
    {
      v29 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
      v30 = *(v29 + 23);
      v31 = *(v29 + 8);
      if ((v30 & 0x80u) == 0)
      {
        v31 = v30;
      }

      v17 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v23 & 2) == 0)
      {
LABEL_24:
        if ((v23 & 4) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_44;
      }
    }

    else if ((v23 & 2) == 0)
    {
      goto LABEL_24;
    }

    v32 = sub_15705D4(*(a1 + 120));
    v17 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 4) == 0)
    {
LABEL_25:
      if ((v23 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }

LABEL_44:
    v33 = sub_183A234(*(a1 + 128));
    v17 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 8) == 0)
    {
LABEL_26:
      if ((v23 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_45:
    v17 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 0x10) == 0)
    {
LABEL_28:
      v17 += ((v23 >> 5) & 2) + ((v23 >> 4) & 2);
      if ((v23 & 0x80) != 0)
      {
        v24 = *(a1 + 148);
        v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v24 >= 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 11;
        }

        v17 += v26;
      }

      goto LABEL_33;
    }

LABEL_27:
    v17 += ((9 * (__clz(*(a1 + 140) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_28;
  }

LABEL_33:
  if ((v23 & 0x300) != 0)
  {
    if ((v23 & 0x100) != 0)
    {
      v17 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v23 & 0x200) != 0)
    {
      v17 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v27 = *(a1 + 8);
  if (v27)
  {
    v34 = v27 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v27 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v17 += v35;
  }

  *(a1 + 20) = v17;
  return v17;
}

void sub_177B6E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B9D88((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    sub_1959094((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 8 * v10), *(a2 + 56), 8 * *(a2 + 48));
  }

  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = *(a2 + 80);
    v14 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_1578288((a1 + 64), v14, (v13 + 8), v12, **(a1 + 80) - *(a1 + 72));
    v15 = *(a1 + 72) + v12;
    *(a1 + 72) = v15;
    v16 = *(a1 + 80);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a2 + 104);
    v19 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_13B9F2C((a1 + 88), v19, (v18 + 8), v17, **(a1 + 104) - *(a1 + 96));
    v20 = *(a1 + 96) + v17;
    *(a1 + 96) = v20;
    v21 = *(a1 + 104);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 16);
  if (v22)
  {
    if (v22)
    {
      v24 = *(a2 + 112);
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_194EA1C((a1 + 112), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
      if ((v22 & 2) == 0)
      {
LABEL_15:
        if ((v22 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_44;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_15;
    }

    *(a1 + 16) |= 2u;
    v27 = *(a1 + 120);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_1570D50(v29);
      *(a1 + 120) = v27;
    }

    if (*(a2 + 120))
    {
      v30 = *(a2 + 120);
    }

    else
    {
      v30 = &off_27774D0;
    }

    sub_156F880(v27, v30);
    if ((v22 & 4) == 0)
    {
LABEL_16:
      if ((v22 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_52;
    }

LABEL_44:
    *(a1 + 16) |= 4u;
    v31 = *(a1 + 128);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_1864918(v33);
      *(a1 + 128) = v31;
    }

    if (*(a2 + 128))
    {
      v34 = *(a2 + 128);
    }

    else
    {
      v34 = &off_2786948;
    }

    sub_183A338(v31, v34);
    if ((v22 & 8) == 0)
    {
LABEL_17:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(a1 + 136) = *(a2 + 136);
    if ((v22 & 0x10) == 0)
    {
LABEL_18:
      if ((v22 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(a1 + 140) = *(a2 + 140);
    if ((v22 & 0x20) == 0)
    {
LABEL_19:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(a1 + 144) = *(a2 + 144);
    if ((v22 & 0x40) == 0)
    {
LABEL_20:
      if ((v22 & 0x80) == 0)
      {
LABEL_22:
        *(a1 + 16) |= v22;
        goto LABEL_23;
      }

LABEL_21:
      *(a1 + 148) = *(a2 + 148);
      goto LABEL_22;
    }

LABEL_55:
    *(a1 + 145) = *(a2 + 145);
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  if ((v22 & 0x300) != 0)
  {
    if ((v22 & 0x100) != 0)
    {
      *(a1 + 152) = *(a2 + 152);
    }

    if ((v22 & 0x200) != 0)
    {
      *(a1 + 160) = *(a2 + 160);
    }

    *(a1 + 16) |= v22;
  }

  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4((a1 + 8), (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_177BA20(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_177BAE0(uint64_t a1)
{
  sub_177BA20(a1);

  operator delete();
}

uint64_t sub_177BB18(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
    v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v3 & 0xC) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_177BBE0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v11 == 3)
      {
        if (v8 != 25)
        {
          goto LABEL_42;
        }

        v25 = *v7;
        v24 = v7 + 2;
        v5 |= 4u;
        *(a1 + 64) = v25;
      }

      else
      {
        if (v11 != 4)
        {
          if (v11 == 5 && v8 == 42)
          {
            v12 = v7 - 1;
            while (1)
            {
              v13 = (v12 + 1);
              *v33 = v12 + 1;
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
                v13 = *v33;
              }

              v12 = sub_1958890(v16, v13, a3);
              *v33 = v12;
              if (!v12)
              {
                goto LABEL_55;
              }

              if (*a3 <= v12 || *v12 != 42)
              {
                goto LABEL_50;
              }
            }
          }

          goto LABEL_42;
        }

        if (v8 != 33)
        {
          goto LABEL_42;
        }

        v26 = *v7;
        v24 = v7 + 2;
        v5 |= 8u;
        *(a1 + 72) = v26;
      }

      *v33 = v24;
      goto LABEL_50;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v27 = *(a1 + 8);
        v22 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v22 = *v22;
        }

        v23 = (a1 + 48);
        goto LABEL_41;
      }
    }

    else if (v11 == 2 && v8 == 18)
    {
      *(a1 + 16) |= 2u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = (a1 + 56);
LABEL_41:
      v28 = sub_194DB04(v23, v22);
      v29 = sub_1958890(v28, *v33, a3);
      goto LABEL_49;
    }

LABEL_42:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v7 = *v33;
    }

    v29 = sub_1952690(v8, v32, v7, a3);
LABEL_49:
    *v33 = v29;
    if (!v29)
    {
      goto LABEL_55;
    }

LABEL_50:
    if (sub_195ADC0(a3, v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_177BEC4(uint64_t a1, char *__dst, void *a3)
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

      goto LABEL_8;
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
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_8:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 64);
  *v4 = 25;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 8) != 0)
  {
LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 72);
    *v4 = 33;
    *(v4 + 1) = v8;
    v4 += 9;
  }

LABEL_14:
  v9 = *(a1 + 32);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = *(*(a1 + 40) + v10);
      v12 = *(v11 + 23);
      if (v12 < 0 && (v12 = v11[1], v12 > 127) || *a3 - v4 + 14 < v12)
      {
        v4 = sub_1957480(a3, 5, v11, v4);
      }

      else
      {
        *v4 = 42;
        v4[1] = v12;
        if (*(v11 + 23) < 0)
        {
          v11 = *v11;
        }

        v13 = v4 + 2;
        memcpy(v13, v11, v12);
        v4 = &v13[v12];
      }

      v10 += 8;
      --v9;
    }

    while (v9);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return sub_1957130(a3, v18, v17, v4);
}

uint64_t sub_177C0DC(uint64_t a1)
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
  if ((v7 & 0xF) != 0)
  {
    if (v7)
    {
      v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v7 & 2) != 0)
    {
      v11 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v7 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v7 & 8) != 0)
    {
      v3 += 9;
    }
  }

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

std::string *sub_177C218(std::string *result, uint64_t a2)
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

        goto LABEL_21;
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
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_21:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
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

uint64_t sub_177C394(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_177C454(uint64_t a1)
{
  sub_177C394(a1);

  operator delete();
}

uint64_t sub_177C48C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
    v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v3 & 0xC) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_177C554(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_44;
      }

      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = (a1 + 48);
LABEL_36:
      v25 = sub_194DB04(v23, v22);
      v26 = sub_1958890(v25, *v35, a3);
LABEL_51:
      *v35 = v26;
      if (!v26)
      {
        goto LABEL_59;
      }

      goto LABEL_52;
    }

    if (v8 != 8)
    {
      goto LABEL_44;
    }

    v5 |= 4u;
    v28 = v7 + 1;
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_43;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_43:
      *v35 = v28;
      *(a1 + 64) = v27;
      goto LABEL_52;
    }

    v33 = sub_19587DC(v7, v27);
    *v35 = v33;
    *(a1 + 64) = v34;
    if (!v33)
    {
      goto LABEL_59;
    }

LABEL_52:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_44;
    }

    *(a1 + 16) |= 2u;
    v24 = *(a1 + 8);
    v22 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v22 = *v22;
    }

    v23 = (a1 + 56);
    goto LABEL_36;
  }

  if (v11 == 4)
  {
    if (v8 == 33)
    {
      v5 |= 8u;
      *(a1 + 72) = *v7;
      *v35 = v7 + 2;
      goto LABEL_52;
    }
  }

  else if (v11 == 5 && v8 == 42)
  {
    v12 = v7 - 1;
    while (1)
    {
      v13 = (v12 + 1);
      *v35 = v12 + 1;
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
        v13 = *v35;
      }

      v12 = sub_1958890(v16, v13, a3);
      *v35 = v12;
      if (!v12)
      {
        goto LABEL_59;
      }

      if (*a3 <= v12 || *v12 != 42)
      {
        goto LABEL_52;
      }
    }
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
      v7 = *v35;
    }

    v26 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_51;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_59:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_177C878(uint64_t a1, char *__dst, void *a3)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v11 = *(a1 + 72);
  *v6 = 33;
  *(v6 + 1) = v11;
  v6 += 9;
LABEL_19:
  v12 = *(a1 + 32);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = *(*(a1 + 40) + v13);
      v15 = *(v14 + 23);
      if (v15 < 0 && (v15 = v14[1], v15 > 127) || *a3 - v6 + 14 < v15)
      {
        v6 = sub_1957480(a3, 5, v14, v6);
      }

      else
      {
        *v6 = 42;
        v6[1] = v15;
        if (*(v14 + 23) < 0)
        {
          v14 = *v14;
        }

        v16 = v6 + 2;
        memcpy(v16, v14, v15);
        v6 = &v16[v15];
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v20)
  {
    v22 = v20;
    memcpy(v6, v21, v20);
    v6 += v22;
    return v6;
  }

  return sub_1957130(a3, v21, v20, v6);
}

uint64_t sub_177CAD4(uint64_t a1)
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
  if ((v7 & 0xF) != 0)
  {
    if (v7)
    {
      v10 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v7 & 2) == 0)
      {
LABEL_11:
        if ((v7 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
LABEL_13:
    if ((v7 & 8) != 0)
    {
      v3 += 9;
    }
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v16 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v3 += v17;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_177CC34(std::string *result, uint64_t a2)
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

        goto LABEL_21;
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
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_21:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
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

uint64_t sub_177CDB0(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1786E24((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_177CE64(uint64_t a1)
{
  sub_177CDB0(a1);

  operator delete();
}

uint64_t sub_177CE9C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_177C48C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v6 & 0xE) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_177CF64(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
        *v44 = v24;
        *(a1 + 80) = v23;
        goto LABEL_63;
      }

      v40 = sub_19587DC(v7, v23);
      *v44 = v40;
      *(a1 + 80) = v41;
      if (!v40)
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (v11 != 2)
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_55;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = sub_194DB04((a1 + 72), v14);
        v16 = sub_1958890(v15, *v44, a3);
LABEL_62:
        *v44 = v16;
        if (!v16)
        {
          goto LABEL_72;
        }

        goto LABEL_63;
      }

      if (v8 != 16)
      {
        goto LABEL_55;
      }

      v5 |= 4u;
      v27 = v7 + 1;
      v26 = *v7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_42;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_42:
        *v44 = v27;
        *(a1 + 88) = v26;
        goto LABEL_63;
      }

      v42 = sub_19587DC(v7, v26);
      *v44 = v42;
      *(a1 + 88) = v43;
      if (!v42)
      {
        goto LABEL_72;
      }
    }

LABEL_63:
    if (sub_195ADC0(a3, v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 == 33)
    {
      v5 |= 8u;
      *(a1 + 96) = *v7;
      *v44 = v7 + 2;
      goto LABEL_63;
    }
  }

  else if (v11 == 5)
  {
    if (v8 == 42)
    {
      v29 = v7 - 1;
      while (1)
      {
        v30 = (v29 + 1);
        *v44 = v29 + 1;
        v31 = *(a1 + 40);
        if (v31 && (v32 = *(a1 + 32), v32 < *v31))
        {
          *(a1 + 32) = v32 + 1;
          v33 = *&v31[2 * v32 + 2];
        }

        else
        {
          v34 = *(a1 + 24);
          if (!v34)
          {
            operator new();
          }

          *v36 = v35;
          v36[1] = sub_195A650;
          *v35 = 0;
          v35[1] = 0;
          v35[2] = 0;
          v33 = sub_19593CC(a1 + 24, v35);
          v30 = *v44;
        }

        v29 = sub_1958890(v33, v30, a3);
        *v44 = v29;
        if (!v29)
        {
          goto LABEL_72;
        }

        if (*a3 <= v29 || *v29 != 42)
        {
          goto LABEL_63;
        }
      }
    }
  }

  else if (v11 == 6 && v8 == 50)
  {
    v17 = v7 - 1;
    while (1)
    {
      v18 = v17 + 1;
      *v44 = v17 + 1;
      v19 = *(a1 + 64);
      if (v19 && (v20 = *(a1 + 56), v20 < *v19))
      {
        *(a1 + 56) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = sub_1784F78(*(a1 + 48));
        v21 = sub_19593CC(a1 + 48, v22);
        v18 = *v44;
      }

      v17 = sub_224008C(a3, v21, v18);
      *v44 = v17;
      if (!v17)
      {
        goto LABEL_72;
      }

      if (*a3 <= v17 || *v17 != 50)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_55:
  if (v8)
  {
    v37 = (v8 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    v38 = *(a1 + 8);
    if (v38)
    {
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v39 = sub_11F1920((a1 + 8));
      v7 = *v44;
    }

    v16 = sub_1952690(v8, v39, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_72:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_177D344(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 88);
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

  if (v5)
  {
    v11 = sub_128AEEC(a3, 3, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 96);
    *v11 = 33;
    *(v11 + 1) = v15;
    v11 += 9;
  }

  v16 = *(a1 + 32);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 40) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || *a3 - v11 + 14 < v19)
      {
        v11 = sub_1957480(a3, 5, v18, v11);
      }

      else
      {
        *v11 = 42;
        v11[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = v11 + 2;
        memcpy(v20, v18, v19);
        v11 = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v23 = *(*(a1 + 64) + 8 * i + 8);
      *v11 = 50;
      v24 = *(v23 + 20);
      v11[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, v11 + 1);
      }

      else
      {
        v25 = v11 + 2;
      }

      v11 = sub_177C878(v23, v25, a3);
    }
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v29)
  {
    v31 = v29;
    memcpy(v11, v30, v29);
    v11 += v31;
    return v11;
  }

  return sub_1957130(a3, v30, v29, v11);
}

uint64_t sub_177D680(uint64_t a1)
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
      v14 = sub_177CAD4(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0xF) != 0)
  {
    if (v15)
    {
      v18 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_17:
        if ((v15 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_17;
    }

    v9 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_19:
      if ((v15 & 8) != 0)
      {
        v9 += 9;
      }

      goto LABEL_21;
    }

LABEL_18:
    v9 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_19;
  }

LABEL_21:
  v16 = *(a1 + 8);
  if (v16)
  {
    v21 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v9 += v22;
  }

  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_177D834(std::string *result, uint64_t a2)
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
    result = sub_17870B8(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0xF) != 0)
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

        goto LABEL_22;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
LABEL_13:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
        goto LABEL_14;
      }

LABEL_12:
      v3[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
      goto LABEL_13;
    }

LABEL_22:
    v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    if ((v14 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_177D9E4(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*(a1 + 88) != &qword_278E990)
  {
    sub_194E89C((a1 + 88));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  sub_1786EA8((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_177DAC4(uint64_t a1)
{
  sub_177D9E4(a1);

  operator delete();
}

uint64_t sub_177DAFC(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_177CE9C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 16);
  if ((v6 & 7) != 0)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v8 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v9 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
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
  }

LABEL_21:
  if ((v6 & 0x38) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_177DC38(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v45, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v45 + 1);
    v8 = **v45;
    if (**v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v45 + 2);
      }
    }

    *v45 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_66;
        }

        *(a1 + 16) |= 2u;
        v29 = *(a1 + 8);
        v14 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v14 = *v14;
        }

        v15 = (a1 + 80);
      }

      else
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_66;
        }

        *(a1 + 16) |= 4u;
        v18 = *(a1 + 8);
        v14 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v14 = *v14;
        }

        v15 = (a1 + 88);
      }

      goto LABEL_53;
    }

    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_66;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v15 = (a1 + 72);
LABEL_53:
      v30 = sub_194DB04(v15, v14);
      v31 = sub_1958890(v30, *v45, a3);
LABEL_73:
      *v45 = v31;
      if (!v31)
      {
        goto LABEL_81;
      }

      goto LABEL_74;
    }

    if (v8 != 8)
    {
      goto LABEL_66;
    }

    v5 |= 8u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_45:
      *v45 = v26;
      *(a1 + 96) = v25;
      goto LABEL_74;
    }

    v43 = sub_19587DC(v7, v25);
    *v45 = v43;
    *(a1 + 96) = v44;
    if (!v43)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (sub_195ADC0(a3, v45, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 != 41)
      {
        goto LABEL_66;
      }

      v28 = *v7;
      v16 = v7 + 2;
      v5 |= 0x10u;
      *(a1 + 104) = v28;
    }

    else
    {
      if (v11 != 6 || v8 != 49)
      {
        goto LABEL_66;
      }

      v17 = *v7;
      v16 = v7 + 2;
      v5 |= 0x20u;
      *(a1 + 112) = v17;
    }

    *v45 = v16;
    goto LABEL_74;
  }

  if (v11 == 7)
  {
    if (v8 == 58)
    {
      v32 = v7 - 1;
      while (1)
      {
        v33 = (v32 + 1);
        *v45 = v32 + 1;
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
          v33 = *v45;
        }

        v32 = sub_1958890(v36, v33, a3);
        *v45 = v32;
        if (!v32)
        {
          goto LABEL_81;
        }

        if (*a3 <= v32 || *v32 != 58)
        {
          goto LABEL_74;
        }
      }
    }
  }

  else if (v11 == 8 && v8 == 66)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = v19 + 1;
      *v45 = v19 + 1;
      v21 = *(a1 + 64);
      if (v21 && (v22 = *(a1 + 56), v22 < *v21))
      {
        *(a1 + 56) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_1785020(*(a1 + 48));
        v23 = sub_19593CC(a1 + 48, v24);
        v20 = *v45;
      }

      v19 = sub_224011C(a3, v23, v20);
      *v45 = v19;
      if (!v19)
      {
        goto LABEL_81;
      }

      if (*a3 <= v19 || *v19 != 66)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_66:
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
      v7 = *v45;
    }

    v31 = sub_1952690(v8, v42, v7, a3);
    goto LABEL_73;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_81:
  *v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v45;
}