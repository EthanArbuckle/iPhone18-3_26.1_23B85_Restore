char *sub_140C50C(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
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

uint64_t sub_140C5EC(uint64_t a1)
{
  v1 = 2 * (*(a1 + 16) & 1);
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

std::string *sub_140C624(std::string *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    result[1].__r_.__value_.__s.__data_[0] = v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_140C674(void *a1)
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

void sub_140C6E8(void *a1)
{
  sub_140C674(a1);

  operator delete();
}

uint64_t sub_140C720(uint64_t a1)
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

char *sub_140C744(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_140C928(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_140CAD8(uint64_t a1)
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

uint64_t sub_140CB8C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E0588;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = &qword_278E990;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return a1;
}

void sub_140CC20(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_140CC50(void *a1)
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

  sub_140CCE8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144A03C(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_140CCE8(uint64_t a1)
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

  if (a1 != &off_276FD90)
  {
    if (*(a1 + 88))
    {
      sub_14B662C();
      operator delete();
    }

    if (*(a1 + 96))
    {
      sub_14B662C();
      operator delete();
    }

    if (*(a1 + 104))
    {
      sub_153BF18();
      operator delete();
    }

    v5 = *(a1 + 112);
    if (v5)
    {
      sub_140C2C4(v5);
      operator delete();
    }

    if (*(a1 + 120))
    {
      sub_14B662C();
      operator delete();
    }

    result = *(a1 + 128);
    if (result)
    {
      sub_14B662C();

      operator delete();
    }
  }

  return result;
}

void sub_140CE00(void *a1)
{
  sub_140CC50(a1);

  operator delete();
}

uint64_t sub_140CE38(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_140C720(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_17:
      v8 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_21;
        }
      }

LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

    v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_21:
    result = sub_144E6A8(*(a1 + 88));
    if ((v6 & 8) == 0)
    {
LABEL_10:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

LABEL_22:
    result = sub_144E6A8(*(a1 + 96));
    if ((v6 & 0x10) == 0)
    {
LABEL_11:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

LABEL_23:
    result = sub_144E31C(*(a1 + 104));
    if ((v6 & 0x20) == 0)
    {
LABEL_26:
      if ((v6 & 0x40) != 0)
      {
        result = sub_144E6A8(*(a1 + 120));
      }

      if ((v6 & 0x80) != 0)
      {
        result = sub_144E6A8(*(a1 + 128));
      }

      goto LABEL_30;
    }

LABEL_24:
    v9 = *(a1 + 112);
    v10 = *(v9 + 8);
    result = v9 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v10)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_26;
  }

LABEL_30:
  if ((v6 & 0x7F00) != 0)
  {
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
  }

  v12 = *(a1 + 8);
  v11 = a1 + 8;
  *(v11 + 32) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

uint64_t sub_140CFB0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v70 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v70, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
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
    switch(v8 >> 3)
    {
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_106;
        }

        *(a1 + 40) |= 4u;
        v11 = *(a1 + 88);
        if (v11)
        {
          goto LABEL_102;
        }

        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_14BF484(v13);
        *(a1 + 88) = v11;
        goto LABEL_101;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_106;
        }

        *(a1 + 40) |= 8u;
        v11 = *(a1 + 96);
        if (v11)
        {
          goto LABEL_102;
        }

        v42 = *(a1 + 8);
        v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v43 = *v43;
        }

        v11 = sub_14BF484(v43);
        *(a1 + 96) = v11;
        goto LABEL_101;
      case 5u:
      case 6u:
      case 8u:
      case 9u:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0x11u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
        goto LABEL_106;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_106;
        }

        v5 |= 0x100u;
        v37 = (v7 + 1);
        v36 = *v7;
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_58;
        }

        v38 = *v37;
        v36 = (v38 << 7) + v36 - 128;
        if (v38 < 0)
        {
          v64 = sub_19587DC(v7, v36);
          *v70 = v64;
          *(a1 + 136) = v65;
          if (!v64)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v37 = (v7 + 2);
LABEL_58:
          *v70 = v37;
          *(a1 + 136) = v36;
        }

        goto LABEL_104;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_106;
        }

        v31 = (v7 + 1);
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          *v70 = sub_19587DC(v7, v30);
          if (!*v70)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v31 = (v7 + 2);
LABEL_44:
          *v70 = v31;
        }

        if (v30 > 2)
        {
          sub_12E8488();
        }

        else
        {
          *(a1 + 40) |= 0x200u;
          *(a1 + 144) = v30;
        }

        goto LABEL_104;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_106;
        }

        *(a1 + 40) |= 1u;
        v39 = *(a1 + 8);
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v40 = *v40;
        }

        v41 = (a1 + 72);
        goto LABEL_88;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_106;
        }

        v5 |= 0x400u;
        v49 = (v7 + 1);
        v50 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        v51 = *v49;
        v50 = v50 + (v51 << 7) - 128;
        if (v51 < 0)
        {
          v66 = sub_1958770(v7, v50);
          *v70 = v66;
          *(a1 + 148) = v67;
          if (!v66)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v49 = (v7 + 2);
LABEL_83:
          *v70 = v49;
          *(a1 + 148) = v50;
        }

        goto LABEL_104;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_106;
        }

        v5 |= 0x800u;
        v28 = (v7 + 1);
        LODWORD(v27) = *v7;
        if ((v27 & 0x80) == 0)
        {
          goto LABEL_39;
        }

        v29 = *v28;
        v27 = v27 + (v29 << 7) - 128;
        if (v29 < 0)
        {
          v62 = sub_19587DC(v7, v27);
          *v70 = v62;
          *(a1 + 152) = v63;
          if (!v62)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v28 = (v7 + 2);
LABEL_39:
          *v70 = v28;
          *(a1 + 152) = v27;
        }

        goto LABEL_104;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_106;
        }

        v34 = (v7 + 1);
        v33 = *v7;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v35 = *v34;
        v33 = (v35 << 7) + v33 - 128;
        if (v35 < 0)
        {
          *v70 = sub_19587DC(v7, v33);
          if (!*v70)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v34 = (v7 + 2);
LABEL_51:
          *v70 = v34;
        }

        if (v33 > 4)
        {
          sub_13ED138();
        }

        else
        {
          *(a1 + 40) |= 0x1000u;
          *(a1 + 156) = v33;
        }

        goto LABEL_104;
      case 0x19u:
        if (v8 != 202)
        {
          goto LABEL_106;
        }

        *(a1 + 40) |= 0x10u;
        v17 = *(a1 + 104);
        if (!v17)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v17 = sub_1551A70(v19);
          *(a1 + 104) = v17;
          v7 = *v70;
        }

        v20 = sub_22030E0(a3, v17, v7);
        goto LABEL_103;
      case 0x1Au:
        if (v8 != 210)
        {
          goto LABEL_106;
        }

        v21 = (v7 - 2);
        while (1)
        {
          v22 = (v21 + 2);
          *v70 = v21 + 2;
          v23 = *(a1 + 64);
          if (v23 && (v24 = *(a1 + 56), v24 < *v23))
          {
            *(a1 + 56) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = sub_141BAA8(*(a1 + 48));
            v25 = sub_19593CC(a1 + 48, v26);
            v22 = *v70;
          }

          v21 = sub_22091C8(a3, v25, v22);
          *v70 = v21;
          if (!v21)
          {
            goto LABEL_135;
          }

          if (*a3 <= v21 || *v21 != 466)
          {
            goto LABEL_104;
          }
        }

      case 0x1Bu:
        if (v8 != 218)
        {
          goto LABEL_106;
        }

        *(a1 + 40) |= 0x20u;
        v44 = *(a1 + 112);
        if (!v44)
        {
          v45 = *(a1 + 8);
          v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
          if (v45)
          {
            v46 = *v46;
          }

          v44 = sub_141BA2C(v46);
          *(a1 + 112) = v44;
          v7 = *v70;
        }

        v20 = sub_2209258(a3, v44, v7);
        goto LABEL_103;
      case 0x1Cu:
        if (v8 != 226)
        {
          goto LABEL_106;
        }

        *(a1 + 40) |= 2u;
        v52 = *(a1 + 8);
        v40 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v40 = *v40;
        }

        v41 = (a1 + 80);
LABEL_88:
        v53 = sub_194DB04(v41, v40);
        v20 = sub_1958890(v53, *v70, a3);
        goto LABEL_103;
      case 0x1Du:
        if (v8 != 232)
        {
          goto LABEL_106;
        }

        v55 = (v7 + 1);
        v54 = *v7;
        if ((v54 & 0x8000000000000000) == 0)
        {
          goto LABEL_93;
        }

        v56 = *v55;
        v54 = (v56 << 7) + v54 - 128;
        if (v56 < 0)
        {
          *v70 = sub_19587DC(v7, v54);
          if (!*v70)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v55 = (v7 + 2);
LABEL_93:
          *v70 = v55;
        }

        if (v54 > 2)
        {
          sub_144E084();
        }

        else
        {
          *(a1 + 40) |= 0x2000u;
          *(a1 + 160) = v54;
        }

        goto LABEL_104;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_106;
        }

        *(a1 + 40) |= 0x40u;
        v11 = *(a1 + 120);
        if (v11)
        {
          goto LABEL_102;
        }

        v57 = *(a1 + 8);
        v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
        if (v57)
        {
          v58 = *v58;
        }

        v11 = sub_14BF484(v58);
        *(a1 + 120) = v11;
        goto LABEL_101;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_106;
        }

        *(a1 + 40) |= 0x80u;
        v11 = *(a1 + 128);
        if (v11)
        {
          goto LABEL_102;
        }

        v47 = *(a1 + 8);
        v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v48 = *v48;
        }

        v11 = sub_14BF484(v48);
        *(a1 + 128) = v11;
LABEL_101:
        v7 = *v70;
LABEL_102:
        v20 = sub_2209138(a3, v11, v7);
        goto LABEL_103;
      default:
        if (v8 >> 3 == 2047 && v8 == 248)
        {
          v5 |= 0x4000u;
          v14 = (v7 + 1);
          v15 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          v16 = *v14;
          v15 = v15 + (v16 << 7) - 128;
          if ((v16 & 0x80000000) == 0)
          {
            v14 = (v7 + 2);
LABEL_18:
            *v70 = v14;
            *(a1 + 164) = v15;
            goto LABEL_104;
          }

          v68 = sub_1958770(v7, v15);
          *v70 = v68;
          *(a1 + 164) = v69;
          if (!v68)
          {
            goto LABEL_135;
          }

LABEL_104:
          if (sub_195ADC0(a3, v70, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_106:
        if (v8)
        {
          v59 = (v8 & 7) == 4;
        }

        else
        {
          v59 = 1;
        }

        if (!v59)
        {
          if (v8 - 8000 > 0xF9F)
          {
            v60 = *(a1 + 8);
            if (v60)
            {
              v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v61 = sub_11F1920((a1 + 8));
              v7 = *v70;
            }

            v20 = sub_1952690(v8, v61, v7, a3);
          }

          else
          {
            v20 = sub_19525AC((a1 + 16), v8, v7, &off_276FD90, (a1 + 8), a3);
          }

LABEL_103:
          *v70 = v20;
          if (!v20)
          {
            goto LABEL_135;
          }

          goto LABEL_104;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_135:
          *v70 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v70;
    }
  }
}

char *sub_140D73C(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 96);
    *v4 = 34;
    v12 = *(v11 + 44);
    v4[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v4 + 1);
    }

    else
    {
      v13 = v4 + 2;
    }

    v4 = sub_14B6D24(v11, v13, a3);
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= a2)
  {
    v4 = sub_225EB68(a3, a2);
  }

  v8 = *(a1 + 88);
  *v4 = 26;
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

  v4 = sub_14B6D24(v8, v10, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 0x100) == 0)
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

  v14 = *(a1 + 136);
  *v4 = 56;
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
  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v18 = *(a1 + 144);
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
        LOBYTE(v7) = v7[2];
        do
        {
          *(v17 - 1) = v7 | 0x80;
          v7 = (v19 >> 7);
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

  if (v6)
  {
    v17 = sub_128AEEC(a3, 11, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v17);
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 148);
    *v17 = 120;
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

  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v27 = *(a1 + 152);
    *v21 = 384;
    v21[2] = v27;
    if (v27 > 0x7F)
    {
      v21[2] = v27 | 0x80;
      v28 = v27 >> 7;
      v21[3] = v27 >> 7;
      v26 = v21 + 4;
      if (v27 >= 0x4000)
      {
        LOBYTE(v21) = v21[3];
        do
        {
          *(v26 - 1) = v21 | 0x80;
          v21 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v21 + 3;
    }
  }

  else
  {
    v26 = v21;
  }

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 156);
    *v26 = 400;
    v26[2] = v31;
    if (v31 > 0x7F)
    {
      v26[2] = v31 | 0x80;
      v32 = v31 >> 7;
      v26[3] = v31 >> 7;
      v30 = v26 + 4;
      if (v31 >= 0x4000)
      {
        LOBYTE(v33) = v26[3];
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
      v30 = v26 + 3;
    }
  }

  else
  {
    v30 = v26;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v35 = *(a1 + 104);
    *v30 = 458;
    v36 = *(v35 + 44);
    v30[2] = v36;
    if (v36 > 0x7F)
    {
      v37 = sub_19575D0(v36, v30 + 2);
    }

    else
    {
      v37 = v30 + 3;
    }

    v30 = sub_153C1A4(v35, v37, a3);
  }

  v38 = *(a1 + 56);
  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      if (*a3 <= v30)
      {
        v30 = sub_225EB68(a3, v30);
      }

      v40 = *(*(a1 + 64) + 8 * i + 8);
      *v30 = 466;
      v41 = *(v40 + 20);
      v30[2] = v41;
      if (v41 > 0x7F)
      {
        v42 = sub_19575D0(v41, v30 + 2);
      }

      else
      {
        v42 = v30 + 3;
      }

      v30 = sub_140C928(v40, v42, a3);
    }
  }

  if ((v6 & 0x20) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_79;
    }

LABEL_87:
    v30 = sub_128AEEC(a3, 28, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v30);
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_88;
  }

  if (*a3 <= v30)
  {
    v30 = sub_225EB68(a3, v30);
  }

  v44 = *(a1 + 112);
  *v30 = 474;
  v45 = *(v44 + 20);
  v30[2] = v45;
  if (v45 > 0x7F)
  {
    v46 = sub_19575D0(v45, v30 + 2);
  }

  else
  {
    v46 = v30 + 3;
  }

  v30 = sub_140C50C(v44, v46, a3);
  if ((v6 & 2) != 0)
  {
    goto LABEL_87;
  }

LABEL_79:
  if ((v6 & 0x2000) == 0)
  {
LABEL_80:
    v43 = v30;
    goto LABEL_95;
  }

LABEL_88:
  if (*a3 <= v30)
  {
    v30 = sub_225EB68(a3, v30);
  }

  v47 = *(a1 + 160);
  *v30 = 488;
  v30[2] = v47;
  if (v47 > 0x7F)
  {
    v30[2] = v47 | 0x80;
    v48 = v47 >> 7;
    v30[3] = v47 >> 7;
    v43 = v30 + 4;
    if (v47 >= 0x4000)
    {
      LOBYTE(v49) = v30[3];
      do
      {
        *(v43 - 1) = v49 | 0x80;
        v49 = v48 >> 7;
        *v43++ = v48 >> 7;
        v50 = v48 >> 14;
        v48 >>= 7;
      }

      while (v50);
    }
  }

  else
  {
    v43 = v30 + 3;
  }

LABEL_95:
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v51 = *(a1 + 120);
    *v43 = 498;
    v52 = *(v51 + 44);
    v43[2] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v43 + 2);
    }

    else
    {
      v53 = v43 + 3;
    }

    v43 = sub_14B6D24(v51, v53, a3);
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v54 = *(a1 + 128);
    *v43 = 506;
    v55 = *(v54 + 44);
    v43[2] = v55;
    if (v55 > 0x7F)
    {
      v56 = sub_19575D0(v55, v43 + 2);
    }

    else
    {
      v56 = v43 + 3;
    }

    v43 = sub_14B6D24(v54, v56, a3);
  }

  if (*(a1 + 26))
  {
    v43 = sub_1953428(a1 + 16, 1000, 1500, v43, a3);
  }

  if ((v6 & 0x4000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v58 = *(a1 + 164);
    *v43 = 32760;
    v43[2] = v58;
    if (v58 > 0x7F)
    {
      v43[2] = v58 | 0x80;
      v59 = v58 >> 7;
      v43[3] = v58 >> 7;
      v57 = v43 + 4;
      if (v58 >= 0x4000)
      {
        LOBYTE(v43) = v43[3];
        do
        {
          *(v57 - 1) = v43 | 0x80;
          LODWORD(v43) = v59 >> 7;
          *v57++ = v59 >> 7;
          v60 = v59 >> 14;
          v59 >>= 7;
        }

        while (v60);
      }
    }

    else
    {
      v57 = v43 + 3;
    }
  }

  else
  {
    v57 = v43;
  }

  v61 = *(a1 + 8);
  if ((v61 & 1) == 0)
  {
    return v57;
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

  if (*a3 - v57 >= v64)
  {
    v66 = v64;
    memcpy(v57, v65, v64);
    v57 += v66;
    return v57;
  }

  return sub_1957130(a3, v65, v64, v57);
}

uint64_t sub_140DEF8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + 2 * v3;
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
      v9 = sub_140CAD8(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if (!v10)
  {
    goto LABEL_17;
  }

  if (v10)
  {
    v14 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_34;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v17 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = sub_14B71B8(*(a1 + 88));
  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = sub_14B71B8(*(a1 + 96));
  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x10) == 0)
  {
LABEL_13:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_37:
    v23 = *(a1 + 112);
    v24 = 2 * (*(v23 + 16) & 1);
    v25 = *(v23 + 8);
    if (v25)
    {
      v37 = v25 & 0xFFFFFFFFFFFFFFFCLL;
      v38 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v38 < 0)
      {
        v38 = *(v37 + 16);
      }

      v24 += v38;
    }

    *(v23 + 20) = v24;
    v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 0x40) == 0)
    {
LABEL_15:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_36:
  v22 = sub_153C388(*(a1 + 104));
  v4 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_14:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_39:
  v26 = sub_14B71B8(*(a1 + 120));
  v4 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x80) != 0)
  {
LABEL_16:
    v11 = sub_14B71B8(*(a1 + 128));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_17:
  if ((v10 & 0x7F00) == 0)
  {
    goto LABEL_26;
  }

  if ((v10 & 0x100) != 0)
  {
    v4 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 0x200) == 0)
    {
LABEL_20:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_46;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v27 = *(a1 + 144);
  if (v27 < 0)
  {
    v28 = 11;
  }

  else
  {
    v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 += v28;
  if ((v10 & 0x400) == 0)
  {
LABEL_21:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v4 += ((9 * (__clz(*(a1 + 148) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x800) == 0)
  {
LABEL_22:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_47:
  v29 = *(a1 + 152);
  if (v29 < 0)
  {
    v30 = 12;
  }

  else
  {
    v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v4 += v30;
  if ((v10 & 0x1000) == 0)
  {
LABEL_23:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_51:
  v31 = *(a1 + 156);
  if (v31 < 0)
  {
    v32 = 12;
  }

  else
  {
    v32 = ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v4 += v32;
  if ((v10 & 0x2000) == 0)
  {
LABEL_24:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_55:
  v33 = *(a1 + 160);
  if (v33 < 0)
  {
    v34 = 12;
  }

  else
  {
    v34 = ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v4 += v34;
  if ((v10 & 0x4000) != 0)
  {
LABEL_25:
    v4 += ((9 * (__clz(*(a1 + 164) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  v12 = *(a1 + 8);
  if (v12)
  {
    v35 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v36 < 0)
    {
      v36 = *(v35 + 16);
    }

    v4 += v36;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_140E308(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A2D0((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if (!v9)
  {
    goto LABEL_68;
  }

  if (v9)
  {
    v10 = *(a2 + 72);
    *(a1 + 40) |= 1u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 72), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
  }

  if ((v9 & 2) != 0)
  {
    v13 = *(a2 + 80);
    *(a1 + 40) |= 2u;
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 80), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
  }

  if ((v9 & 4) != 0)
  {
    *(a1 + 40) |= 4u;
    v16 = *(a1 + 88);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_14BF484(v18);
      *(a1 + 88) = v16;
    }

    if (*(a2 + 88))
    {
      v19 = *(a2 + 88);
    }

    else
    {
      v19 = &off_2773AC8;
    }

    sub_144F194(v16, v19);
    if ((v9 & 8) == 0)
    {
LABEL_15:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((v9 & 8) == 0)
  {
    goto LABEL_15;
  }

  *(a1 + 40) |= 8u;
  v20 = *(a1 + 96);
  if (!v20)
  {
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    v20 = sub_14BF484(v22);
    *(a1 + 96) = v20;
  }

  if (*(a2 + 96))
  {
    v23 = *(a2 + 96);
  }

  else
  {
    v23 = &off_2773AC8;
  }

  sub_144F194(v20, v23);
  if ((v9 & 0x10) == 0)
  {
LABEL_16:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_44:
    *(a1 + 40) |= 0x20u;
    v28 = *(a1 + 112);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_141BA2C(v30);
      *(a1 + 112) = v28;
    }

    if (*(a2 + 112))
    {
      v31 = *(a2 + 112);
    }

    else
    {
      v31 = &off_276FD70;
    }

    sub_140C624(v28, v31);
    if ((v9 & 0x40) == 0)
    {
LABEL_18:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_60;
    }

    goto LABEL_52;
  }

LABEL_36:
  *(a1 + 40) |= 0x10u;
  v24 = *(a1 + 104);
  if (!v24)
  {
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    v24 = sub_1551A70(v26);
    *(a1 + 104) = v24;
  }

  if (*(a2 + 104))
  {
    v27 = *(a2 + 104);
  }

  else
  {
    v27 = &off_2776880;
  }

  sub_144F404(v24, v27);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_44;
  }

LABEL_17:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_52:
  *(a1 + 40) |= 0x40u;
  v32 = *(a1 + 120);
  if (!v32)
  {
    v33 = *(a1 + 8);
    v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v34 = *v34;
    }

    v32 = sub_14BF484(v34);
    *(a1 + 120) = v32;
  }

  if (*(a2 + 120))
  {
    v35 = *(a2 + 120);
  }

  else
  {
    v35 = &off_2773AC8;
  }

  sub_144F194(v32, v35);
  if ((v9 & 0x80) != 0)
  {
LABEL_60:
    *(a1 + 40) |= 0x80u;
    v36 = *(a1 + 128);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_14BF484(v38);
      *(a1 + 128) = v36;
    }

    if (*(a2 + 128))
    {
      v39 = *(a2 + 128);
    }

    else
    {
      v39 = &off_2773AC8;
    }

    sub_144F194(v36, v39);
  }

LABEL_68:
  if ((v9 & 0x7F00) == 0)
  {
    goto LABEL_78;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 136) = *(a2 + 136);
    if ((v9 & 0x200) == 0)
    {
LABEL_71:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_84;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_71;
  }

  *(a1 + 144) = *(a2 + 144);
  if ((v9 & 0x400) == 0)
  {
LABEL_72:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(a1 + 148) = *(a2 + 148);
  if ((v9 & 0x800) == 0)
  {
LABEL_73:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(a1 + 152) = *(a2 + 152);
  if ((v9 & 0x1000) == 0)
  {
LABEL_74:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_75;
    }

LABEL_87:
    *(a1 + 160) = *(a2 + 160);
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

LABEL_86:
  *(a1 + 156) = *(a2 + 156);
  if ((v9 & 0x2000) != 0)
  {
    goto LABEL_87;
  }

LABEL_75:
  if ((v9 & 0x4000) != 0)
  {
LABEL_76:
    *(a1 + 164) = *(a2 + 164);
  }

LABEL_77:
  *(a1 + 40) |= v9;
LABEL_78:
  sub_225EA0C(a1 + 16, a2 + 16);
  v40 = *(a2 + 8);
  if (v40)
  {

    sub_1957EF4((a1 + 8), (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_140E690(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 4) != 0)
    {
      result = sub_144F5D0(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_144F5D0(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_144F674(*(a1 + 104));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) != 0)
    {
      result = sub_144F5D0(*(a1 + 120));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80) == 0)
    {
      return 1;
    }

    result = sub_144F5D0(*(a1 + 128));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_140E734(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26E0608;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = &qword_278E990;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0xFFFFFFFF00000000;
  return a1;
}

void sub_140E7B8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_140E7E8(uint64_t a1)
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

  if (a1 != &off_276FE38 && *(a1 + 80))
  {
    sub_16E4E08();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_144A0C0((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_140E8C8(uint64_t a1)
{
  sub_140E7E8(a1);

  operator delete();
}

uint64_t sub_140E900(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_140BDC0(v5);
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
      result = sub_16E4E44(*(a1 + 80));
    }
  }

LABEL_11:
  if ((v6 & 0x1C) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0xFFFFFFFF00000000;
  }

  v9 = *(a1 + 8);
  v8 = a1 + 8;
  *(v8 + 32) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_140E9E0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 0xB)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 40) |= 2u;
          v28 = *(a1 + 80);
          if (!v28)
          {
            v29 = *(a1 + 8);
            v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v30 = *v30;
            }

            v28 = sub_16F5828(v30);
            *(a1 + 80) = v28;
            v7 = *v45;
          }

          v31 = sub_21F4D60(a3, v28, v7);
          goto LABEL_60;
        }
      }

      else if (v11 == 8 && v8 == 64)
      {
        v12 = (v7 + 1);
        v13 = *v7;
        if ((v13 & 0x8000000000000000) != 0)
        {
          v14 = *v12;
          v15 = (v14 << 7) + v13;
          v13 = (v15 - 128);
          if (v14 < 0)
          {
            *v45 = sub_19587DC(v7, (v15 - 128));
            if (!*v45)
            {
              goto LABEL_76;
            }

            v13 = v42;
            goto LABEL_16;
          }

          v12 = (v7 + 2);
        }

        *v45 = v12;
LABEL_16:
        if ((v13 + 1) > 5)
        {
          v38 = *(a1 + 8);
          if (v38)
          {
            v39 = ((v38 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v39 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(8, v13, v39);
        }

        else
        {
          *(a1 + 40) |= 0x10u;
          *(a1 + 100) = v13;
        }

        goto LABEL_61;
      }

      goto LABEL_51;
    }

    if (v8 != 24)
    {
      goto LABEL_51;
    }

    v5 |= 4u;
    v20 = (v7 + 1);
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = (v7 + 2);
LABEL_30:
      *v45 = v20;
      *(a1 + 88) = v19;
      goto LABEL_61;
    }

    v40 = sub_19587DC(v7, v19);
    *v45 = v40;
    *(a1 + 88) = v41;
    if (!v40)
    {
      goto LABEL_76;
    }

LABEL_61:
    if (sub_195ADC0(a3, v45, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 12)
  {
    if (v8 == 98)
    {
      v22 = v7 - 1;
      while (1)
      {
        v23 = v22 + 1;
        *v45 = v22 + 1;
        v24 = *(a1 + 64);
        if (v24 && (v25 = *(a1 + 56), v25 < *v24))
        {
          *(a1 + 56) = v25 + 1;
          v26 = *&v24[2 * v25 + 2];
        }

        else
        {
          v27 = sub_141B9A4(*(a1 + 48));
          v26 = sub_19593CC(a1 + 48, v27);
          v23 = *v45;
        }

        v22 = sub_22092E8(a3, v26, v23);
        *v45 = v22;
        if (!v22)
        {
          goto LABEL_76;
        }

        if (*a3 <= v22 || *v22 != 98)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_51;
  }

  if (v11 != 13)
  {
    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_51;
    }

    v5 |= 8u;
    v16 = (v7 + 1);
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = (v7 + 2);
LABEL_25:
      *v45 = v16;
      *(a1 + 96) = v17;
      goto LABEL_61;
    }

    v43 = sub_1958770(v7, v17);
    *v45 = v43;
    *(a1 + 96) = v44;
    if (!v43)
    {
      goto LABEL_76;
    }

    goto LABEL_61;
  }

  if (v8 == 106)
  {
    *(a1 + 40) |= 1u;
    v32 = *(a1 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v34 = sub_194DB04((a1 + 72), v33);
    v31 = sub_1958890(v34, *v45, a3);
LABEL_60:
    *v45 = v31;
    if (!v31)
    {
      goto LABEL_76;
    }

    goto LABEL_61;
  }

LABEL_51:
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
    if (v8 - 8000 > 0xF9F)
    {
      v36 = *(a1 + 8);
      if (v36)
      {
        v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v37 = sub_11F1920((a1 + 8));
        v7 = *v45;
      }

      v31 = sub_1952690(v8, v37, v7, a3);
    }

    else
    {
      v31 = sub_19525AC((a1 + 16), v8, v7, &off_276FE38, (a1 + 8), a3);
    }

    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_76:
  *v45 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v45;
}

char *sub_140EDF0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 88);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 80);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 100);
    *v6 = 64;
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

  v18 = *(a1 + 56);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v20 = *(*(a1 + 64) + 8 * i + 8);
      *v14 = 98;
      v21 = *(v20 + 20);
      v14[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v14 + 1);
      }

      else
      {
        v22 = v14 + 2;
      }

      v14 = sub_140C048(v20, v22, a3);
    }
  }

  if (v5)
  {
    v14 = sub_128AEEC(a3, 13, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v14);
  }

  if (*(a1 + 26))
  {
    v14 = sub_1953428(a1 + 16, 1000, 1500, v14, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v24 = *(a1 + 96);
    *v14 = 32760;
    v14[2] = v24;
    if (v24 > 0x7F)
    {
      v14[2] = v24 | 0x80;
      v25 = v24 >> 7;
      v14[3] = v24 >> 7;
      v23 = v14 + 4;
      if (v24 >= 0x4000)
      {
        LOBYTE(v26) = v14[3];
        do
        {
          *(v23 - 1) = v26 | 0x80;
          v26 = v25 >> 7;
          *v23++ = v25 >> 7;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v23 = v14 + 3;
    }
  }

  else
  {
    v23 = v14;
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v23;
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

  if (*a3 - v23 >= v31)
  {
    v33 = v31;
    memcpy(v23, v32, v31);
    v23 += v33;
    return v23;
  }

  return sub_1957130(a3, v32, v31, v23);
}

uint64_t sub_140F164(uint64_t a1)
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
      v9 = sub_140C1B0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 0x1F) != 0)
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

        goto LABEL_18;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

    v14 = sub_16E51F0(*(a1 + 80));
    v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

LABEL_18:
    v4 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 8) == 0)
    {
LABEL_12:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_19:
    v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    v15 = *(a1 + 100);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v16;
  }

LABEL_24:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v4 += v20;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_140F324(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A34C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 0x1F) != 0)
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

        goto LABEL_27;
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

      v14 = sub_16F5828(v16);
      *(a1 + 80) = v14;
    }

    if (*(a2 + 80))
    {
      v17 = *(a2 + 80);
    }

    else
    {
      v17 = &off_277E5E8;
    }

    sub_16E527C(v14, v17);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 88) = *(a2 + 88);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
LABEL_11:
        *(a1 + 40) |= v9;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 100) = *(a2 + 100);
      goto LABEL_11;
    }

LABEL_28:
    *(a1 + 96) = *(a2 + 96);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_140F4BC(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 2) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(a1 + 80));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_140F510(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E0688;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_140F584(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_140F5B4(uint64_t a1)
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

  if (a1 != &off_276FEA0 && *(a1 + 56))
  {
    sub_153BF18();
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

void sub_140F688(uint64_t a1)
{
  sub_140F5B4(a1);

  operator delete();
}

uint64_t sub_140F6C0(uint64_t a1)
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
      result = sub_144E31C(*(a1 + 56));
    }
  }

LABEL_7:
  if ((v3 & 0xC) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_140F76C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 9)
    {
      break;
    }

    if (v11 != 4)
    {
      if (v11 == 9 && v8 == 74)
      {
        *(a1 + 40) |= 2u;
        v12 = *(a1 + 56);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_1551A70(v14);
          *(a1 + 56) = v12;
          v7 = *v32;
        }

        v15 = sub_22030E0(a3, v12, v7);
        goto LABEL_41;
      }

      goto LABEL_32;
    }

    if (v8 != 32)
    {
      goto LABEL_32;
    }

    v5 |= 4u;
    v20 = (v7 + 1);
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = (v7 + 2);
LABEL_27:
      *v32 = v20;
      *(a1 + 64) = v19;
      goto LABEL_42;
    }

    v30 = sub_19587DC(v7, v19);
    *v32 = v30;
    *(a1 + 64) = v31;
    if (!v30)
    {
      goto LABEL_51;
    }

LABEL_42:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 10)
  {
    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_32;
    }

    v5 |= 8u;
    v16 = (v7 + 1);
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = (v7 + 2);
LABEL_22:
      *v32 = v16;
      *(a1 + 72) = v17;
      goto LABEL_42;
    }

    v28 = sub_1958770(v7, v17);
    *v32 = v28;
    *(a1 + 72) = v29;
    if (!v28)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

  if (v8 == 82)
  {
    *(a1 + 40) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v24 = sub_194DB04((a1 + 48), v23);
    v15 = sub_1958890(v24, *v32, a3);
LABEL_41:
    *v32 = v15;
    if (!v15)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

LABEL_32:
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
    if (v8 - 8000 > 0xF9F)
    {
      v26 = *(a1 + 8);
      if (v26)
      {
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v27 = sub_11F1920((a1 + 8));
        v7 = *v32;
      }

      v15 = sub_1952690(v8, v27, v7, a3);
    }

    else
    {
      v15 = sub_19525AC((a1 + 16), v8, v7, &off_276FEA0, (a1 + 8), a3);
    }

    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_51:
  *v32 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v32;
}

char *sub_140FA3C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 64);
    *__dst = 32;
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

    v11 = *(a1 + 56);
    *v6 = 74;
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

    v6 = sub_153C1A4(v11, v13, a3);
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 10, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if (*(a1 + 26))
  {
    v6 = sub_1953428(a1 + 16, 1000, 1500, v6, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 72);
    *v6 = 32760;
    v6[2] = v15;
    if (v15 > 0x7F)
    {
      v6[2] = v15 | 0x80;
      v16 = v15 >> 7;
      v6[3] = v15 >> 7;
      v14 = v6 + 4;
      if (v15 >= 0x4000)
      {
        LOBYTE(v17) = v6[3];
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
      v14 = v6 + 3;
    }
  }

  else
  {
    v14 = v6;
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v14;
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

  if (*a3 - v14 >= v22)
  {
    v24 = v22;
    memcpy(v14, v23, v22);
    v14 += v24;
    return v14;
  }

  return sub_1957130(a3, v23, v22, v14);
}

uint64_t sub_140FC8C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    v10 = sub_153C388(*(a1 + 56));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  v9 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  v3 = v2 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v4 & 8) != 0)
  {
LABEL_6:
    v3 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_7:
  v5 = *(a1 + 8);
  if (v5)
  {
    v11 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v3 += v12;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_140FDC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0xF) != 0)
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
          goto LABEL_5;
        }

        goto LABEL_23;
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

      v9 = sub_1551A70(v11);
      *(a1 + 56) = v9;
    }

    if (*(a2 + 56))
    {
      v12 = *(a2 + 56);
    }

    else
    {
      v12 = &off_2776880;
    }

    sub_144F404(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 40) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_7;
    }

LABEL_23:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_140FEF4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 2) == 0)
    {
      return 1;
    }

    result = sub_144F674(*(a1 + 56));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_140FF48(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E0708;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void sub_140FFC0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_140FFF0(uint64_t a1)
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

  if (a1 != &off_276FEF0)
  {
    if (*(a1 + 64))
    {
      sub_153BF18();
      operator delete();
    }

    if (*(a1 + 72))
    {
      sub_14B662C();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1410100(uint64_t a1)
{
  sub_140FFF0(a1);

  operator delete();
}

uint64_t sub_1410138(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
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
        goto LABEL_17;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_21;
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v7 = 0;
  *(v7 + 23) = 0;
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  result = sub_144E31C(*(a1 + 64));
  if ((v3 & 8) != 0)
  {
LABEL_6:
    result = sub_144E6A8(*(a1 + 72));
  }

LABEL_7:
  if ((v3 & 0x70) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
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

uint64_t sub_141022C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v42, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v42 + 1);
    v8 = **v42;
    if (**v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v42 + 2);
      }
    }

    *v42 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0xD)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_55;
        }

        *(a1 + 40) |= 1u;
        v31 = *(a1 + 8);
        v29 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v29 = *v29;
        }

        v30 = (a1 + 48);
LABEL_51:
        v32 = sub_194DB04(v30, v29);
        v15 = sub_1958890(v32, *v42, a3);
      }

      else
      {
        if (v11 != 13 || v8 != 106)
        {
          goto LABEL_55;
        }

        *(a1 + 40) |= 4u;
        v16 = *(a1 + 64);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_1551A70(v18);
          *(a1 + 64) = v16;
          v7 = *v42;
        }

        v15 = sub_22030E0(a3, v16, v7);
      }

LABEL_52:
      *v42 = v15;
      if (!v15)
      {
        goto LABEL_73;
      }

      goto LABEL_53;
    }

    if (v8 != 8)
    {
      goto LABEL_55;
    }

    v5 |= 0x10u;
    v23 = (v7 + 1);
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = (v7 + 2);
LABEL_37:
      *v42 = v23;
      *(a1 + 80) = v22;
      goto LABEL_53;
    }

    v36 = sub_19587DC(v7, v22);
    *v42 = v36;
    *(a1 + 80) = v37;
    if (!v36)
    {
      goto LABEL_73;
    }

LABEL_53:
    if (sub_195ADC0(a3, v42, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 0xF)
  {
    if (v11 != 14)
    {
      if (v11 != 15 || v8 != 122)
      {
        goto LABEL_55;
      }

      *(a1 + 40) |= 8u;
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
        v7 = *v42;
      }

      v15 = sub_2209138(a3, v12, v7);
      goto LABEL_52;
    }

    if (v8 != 112)
    {
      goto LABEL_55;
    }

    v5 |= 0x20u;
    v25 = (v7 + 1);
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = (v7 + 2);
LABEL_42:
      *v42 = v25;
      *(a1 + 88) = v26;
      goto LABEL_53;
    }

    v38 = sub_1958770(v7, v26);
    *v42 = v38;
    *(a1 + 88) = v39;
    if (!v38)
    {
      goto LABEL_73;
    }

    goto LABEL_53;
  }

  if (v11 != 16)
  {
    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_55;
    }

    v5 |= 0x40u;
    v19 = (v7 + 1);
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = (v7 + 2);
LABEL_32:
      *v42 = v19;
      *(a1 + 92) = v20;
      goto LABEL_53;
    }

    v40 = sub_1958770(v7, v20);
    *v42 = v40;
    *(a1 + 92) = v41;
    if (!v40)
    {
      goto LABEL_73;
    }

    goto LABEL_53;
  }

  if (v8 == 130)
  {
    *(a1 + 40) |= 2u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v30 = (a1 + 56);
    goto LABEL_51;
  }

LABEL_55:
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
    if (v8 - 8000 > 0xF9F)
    {
      v34 = *(a1 + 8);
      if (v34)
      {
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v35 = sub_11F1920((a1 + 8));
        v7 = *v42;
      }

      v15 = sub_1952690(v8, v35, v7, a3);
    }

    else
    {
      v15 = sub_19525AC((a1 + 16), v8, v7, &off_276FEF0, (a1 + 8), a3);
    }

    goto LABEL_52;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_73:
  *v42 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v42;
}

char *sub_14105FC(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 40);
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

  if ((v5 & 1) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 64);
    *v6 = 106;
    v13 = *(v12 + 44);
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v6 + 1);
    }

    else
    {
      v14 = v6 + 2;
    }

    v6 = sub_153C1A4(v12, v14, a3);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

  v6 = sub_128AEEC(a3, 5, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    v11 = v6;
    goto LABEL_28;
  }

LABEL_21:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 88);
  *v6 = 112;
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v6[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v6[2] = v15 >> 7;
    v11 = v6 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        LODWORD(v6) = v16 >> 7;
        *v11++ = v16 >> 7;
        v17 = v16 >> 14;
        v16 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_28:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v18 = *(a1 + 72);
    *v11 = 122;
    v19 = *(v18 + 44);
    v11[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v11 + 1);
    }

    else
    {
      v20 = v11 + 2;
    }

    v11 = sub_14B6D24(v18, v20, a3);
  }

  if ((v5 & 2) != 0)
  {
    v11 = sub_128AEEC(a3, 16, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 1000, 1500, v11, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v22 = *(a1 + 92);
    *v11 = 32760;
    v11[2] = v22;
    if (v22 > 0x7F)
    {
      v11[2] = v22 | 0x80;
      v23 = v22 >> 7;
      v11[3] = v22 >> 7;
      v21 = v11 + 4;
      if (v22 >= 0x4000)
      {
        LOBYTE(v24) = v11[3];
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
      v21 = v11 + 3;
    }
  }

  else
  {
    v21 = v11;
  }

  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return v21;
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

  if (*a3 - v21 >= v29)
  {
    v31 = v29;
    memcpy(v21, v30, v29);
    v21 += v31;
    return v21;
  }

  return sub_1957130(a3, v30, v29, v21);
}

uint64_t sub_1410960(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if ((v4 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 = v2 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v10 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v10 + 23);
  v12 = *(v10 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v12 = v11;
  }

  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
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
  v13 = sub_153C388(*(a1 + 64));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  v14 = sub_14B71B8(*(a1 + 72));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  v3 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x40) != 0)
  {
LABEL_9:
    v3 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_10:
  v5 = *(a1 + 8);
  if (v5)
  {
    v15 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v3 += v16;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_1410B44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x7F) != 0)
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
          goto LABEL_5;
        }

        goto LABEL_21;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 56);
    *(a1 + 40) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 56), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }

LABEL_21:
    *(a1 + 40) |= 4u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_1551A70(v14);
      *(a1 + 64) = v12;
    }

    if (*(a2 + 64))
    {
      v15 = *(a2 + 64);
    }

    else
    {
      v15 = &off_2776880;
    }

    sub_144F404(v12, v15);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(a1 + 40) |= 8u;
    v16 = *(a1 + 72);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_14BF484(v18);
      *(a1 + 72) = v16;
    }

    if (*(a2 + 72))
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = &off_2773AC8;
    }

    sub_144F194(v16, v19);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        *(a1 + 40) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 92) = *(a2 + 92);
      goto LABEL_10;
    }

LABEL_38:
    *(a1 + 88) = *(a2 + 88);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1410D08(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 4) != 0)
    {
      result = sub_144F674(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) == 0)
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

void *sub_1410D70(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26E0788;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a2;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = &qword_278E990;
  a1[13] = &qword_278E990;
  a1[15] = 0;
  a1[16] = 0;
  a1[14] = 0;
  return a1;
}

void sub_1410DF8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1410E28(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (a1 != &off_276FF50 && *(a1 + 112))
  {
    sub_16E4E08();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_144A0C0((a1 + 72));
  sub_144A0C0((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1410F30(uint64_t a1)
{
  sub_1410E28(a1);

  operator delete();
}

uint64_t sub_1410F68(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_140BDC0(v5);
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
      result = sub_140BDC0(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 40);
  if ((v9 & 7) == 0)
  {
    goto LABEL_14;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v12 + 23) & 0x80000000) == 0)
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_24;
    }

LABEL_12:
    if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  **v12 = 0;
  *(v12 + 8) = 0;
  if ((v9 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_24:
  v13 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v13 + 23) & 0x80000000) == 0)
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v9 & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_16E4E44(*(a1 + 112));
    goto LABEL_14;
  }

  **v13 = 0;
  *(v13 + 8) = 0;
  if ((v9 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if ((v9 & 0x38) != 0)
  {
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
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

uint64_t sub_14110A8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 0xD)
    {
      break;
    }

    if (v8 >> 3 > 4)
    {
      if (v11 != 5)
      {
        if (v11 == 13 && v8 == 106)
        {
          v19 = v7 - 1;
          while (1)
          {
            v20 = v19 + 1;
            *v51 = v19 + 1;
            v21 = *(a1 + 64);
            if (v21 && (v22 = *(a1 + 56), v22 < *v21))
            {
              *(a1 + 56) = v22 + 1;
              v23 = *&v21[2 * v22 + 2];
            }

            else
            {
              v24 = sub_141B9A4(*(a1 + 48));
              v23 = sub_19593CC(a1 + 48, v24);
              v20 = *v51;
            }

            v19 = sub_22092E8(a3, v23, v20);
            *v51 = v19;
            if (!v19)
            {
              goto LABEL_89;
            }

            if (*a3 <= v19 || *v19 != 106)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_71;
      }

      if (v8 != 40)
      {
        goto LABEL_71;
      }

      v5 |= 0x10u;
      v37 = (v7 + 1);
      v38 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      v39 = *v37;
      v38 = v38 + (v39 << 7) - 128;
      if ((v39 & 0x80000000) == 0)
      {
        v37 = (v7 + 2);
LABEL_62:
        *v51 = v37;
        *(a1 + 128) = v38;
        goto LABEL_69;
      }

      v47 = sub_1958770(v7, v38);
      *v51 = v47;
      *(a1 + 128) = v48;
      if (!v47)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v11 != 1)
      {
        if (v11 == 4 && v8 == 34)
        {
          *(a1 + 40) |= 4u;
          v12 = *(a1 + 112);
          if (!v12)
          {
            v13 = *(a1 + 8);
            v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
            if (v13)
            {
              v14 = *v14;
            }

            v12 = sub_16F5828(v14);
            *(a1 + 112) = v12;
            v7 = *v51;
          }

          v15 = sub_21F4D60(a3, v12, v7);
          goto LABEL_68;
        }

        goto LABEL_71;
      }

      if (v8 != 8)
      {
        goto LABEL_71;
      }

      v5 |= 8u;
      v29 = (v7 + 1);
      v28 = *v7;
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_47;
      }

      v30 = *v29;
      v28 = (v30 << 7) + v28 - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v29 = (v7 + 2);
LABEL_47:
        *v51 = v29;
        *(a1 + 120) = v28;
        goto LABEL_69;
      }

      v45 = sub_19587DC(v7, v28);
      *v51 = v45;
      *(a1 + 120) = v46;
      if (!v45)
      {
        goto LABEL_89;
      }
    }

LABEL_69:
    if (sub_195ADC0(a3, v51, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 0xF)
  {
    if (v11 == 14)
    {
      if (v8 == 114)
      {
        v31 = v7 - 1;
        while (1)
        {
          v32 = v31 + 1;
          *v51 = v31 + 1;
          v33 = *(a1 + 88);
          if (v33 && (v34 = *(a1 + 80), v34 < *v33))
          {
            *(a1 + 80) = v34 + 1;
            v35 = *&v33[2 * v34 + 2];
          }

          else
          {
            v36 = sub_141B9A4(*(a1 + 72));
            v35 = sub_19593CC(a1 + 72, v36);
            v32 = *v51;
          }

          v31 = sub_22092E8(a3, v35, v32);
          *v51 = v31;
          if (!v31)
          {
            goto LABEL_89;
          }

          if (*a3 <= v31 || *v31 != 114)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v11 == 15 && v8 == 122)
    {
      *(a1 + 40) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v18 = (a1 + 96);
      goto LABEL_67;
    }

    goto LABEL_71;
  }

  if (v11 != 16)
  {
    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_71;
    }

    v5 |= 0x20u;
    v25 = (v7 + 1);
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = (v7 + 2);
LABEL_42:
      *v51 = v25;
      *(a1 + 132) = v26;
      goto LABEL_69;
    }

    v49 = sub_1958770(v7, v26);
    *v51 = v49;
    *(a1 + 132) = v50;
    if (!v49)
    {
      goto LABEL_89;
    }

    goto LABEL_69;
  }

  if (v8 == 130)
  {
    *(a1 + 40) |= 2u;
    v40 = *(a1 + 8);
    v17 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v17 = *v17;
    }

    v18 = (a1 + 104);
LABEL_67:
    v41 = sub_194DB04(v18, v17);
    v15 = sub_1958890(v41, *v51, a3);
LABEL_68:
    *v51 = v15;
    if (!v15)
    {
      goto LABEL_89;
    }

    goto LABEL_69;
  }

LABEL_71:
  if (v8)
  {
    v42 = (v8 & 7) == 4;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    if (v8 - 8000 > 0xF9F)
    {
      v43 = *(a1 + 8);
      if (v43)
      {
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v44 = sub_11F1920((a1 + 8));
        v7 = *v51;
      }

      v15 = sub_1952690(v8, v44, v7, a3);
    }

    else
    {
      v15 = sub_19525AC((a1 + 16), v8, v7, &off_276FF50, (a1 + 8), a3);
    }

    goto LABEL_68;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_89:
  *v51 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v51;
}

char *sub_1411550(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 120);
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

    v11 = *(a1 + 112);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 128);
    *v6 = 40;
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
          LODWORD(v6) = v16 >> 7;
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

  v18 = *(a1 + 56);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v20 = *(*(a1 + 64) + 8 * i + 8);
      *v14 = 106;
      v21 = *(v20 + 20);
      v14[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v14 + 1);
      }

      else
      {
        v22 = v14 + 2;
      }

      v14 = sub_140C048(v20, v22, a3);
    }
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    for (j = 0; j != v23; ++j)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v25 = *(*(a1 + 88) + 8 * j + 8);
      *v14 = 114;
      v26 = *(v25 + 20);
      v14[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, v14 + 1);
      }

      else
      {
        v27 = v14 + 2;
      }

      v14 = sub_140C048(v25, v27, a3);
    }
  }

  if (v5)
  {
    v14 = sub_128AEEC(a3, 15, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v14);
  }

  if ((v5 & 2) != 0)
  {
    v14 = sub_128AEEC(a3, 16, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v14);
  }

  if (*(a1 + 26))
  {
    v14 = sub_1953428(a1 + 16, 1000, 1500, v14, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v29 = *(a1 + 132);
    *v14 = 32760;
    v14[2] = v29;
    if (v29 > 0x7F)
    {
      v14[2] = v29 | 0x80;
      v30 = v29 >> 7;
      v14[3] = v29 >> 7;
      v28 = v14 + 4;
      if (v29 >= 0x4000)
      {
        LOBYTE(v31) = v14[3];
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
      v28 = v14 + 3;
    }
  }

  else
  {
    v28 = v14;
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

uint64_t sub_1411964(uint64_t a1)
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
      v9 = sub_140C1B0(v8);
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
      v16 = sub_140C1B0(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 40);
  if ((v17 & 0x3F) == 0)
  {
    goto LABEL_21;
  }

  if (v17)
  {
    v20 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v21 = *(v20 + 23);
    v22 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v22 = v21;
    }

    v11 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 2) == 0)
    {
LABEL_16:
      if ((v17 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_16;
  }

  v23 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 23);
  v25 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v25 = v24;
  }

  v11 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v17 & 4) == 0)
  {
LABEL_17:
    if ((v17 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    v11 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v17 & 0x10) == 0)
    {
LABEL_19:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_29:
  v26 = sub_16E51F0(*(a1 + 112));
  v11 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  if ((v17 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_31:
  v11 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 0x20) != 0)
  {
LABEL_20:
    v11 += ((9 * (__clz(*(a1 + 132) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  v18 = *(a1 + 8);
  if (v18)
  {
    v27 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v11 += v28;
  }

  *(a1 + 44) = v11;
  return v11;
}

void sub_1411BB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A34C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_144A34C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0x3F) != 0)
  {
    if (v14)
    {
      v16 = *(a2 + 96);
      *(a1 + 40) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a1 + 96), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_26;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v19 = *(a2 + 104);
    *(a1 + 40) |= 2u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 104), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }

LABEL_26:
    *(a1 + 40) |= 4u;
    v22 = *(a1 + 112);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16F5828(v24);
      *(a1 + 112) = v22;
    }

    if (*(a2 + 112))
    {
      v25 = *(a2 + 112);
    }

    else
    {
      v25 = &off_277E5E8;
    }

    sub_16E527C(v22, v25);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 120) = *(a2 + 120);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
LABEL_15:
        *(a1 + 40) |= v14;
        goto LABEL_16;
      }

LABEL_14:
      *(a1 + 132) = *(a2 + 132);
      goto LABEL_15;
    }

LABEL_35:
    *(a1 + 128) = *(a2 + 128);
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1411DDC(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 4) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(a1 + 112));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1411E30(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E0808;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = &qword_278E990;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

void sub_1411EB8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1411EE8(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (a1 != &off_276FFD8)
  {
    if (*(a1 + 88))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 96))
    {
      sub_153BF18();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_144A0C0((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1412004(uint64_t a1)
{
  sub_1411EE8(a1);

  operator delete();
}

uint64_t sub_141203C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_140BDC0(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v6 & 4) != 0)
    {
      goto LABEL_25;
    }

LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *v10 = 0;
  *(v10 + 23) = 0;
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_25:
  result = sub_16E4E44(*(a1 + 88));
  if ((v6 & 8) != 0)
  {
LABEL_10:
    result = sub_144E31C(*(a1 + 96));
  }

LABEL_11:
  if ((v6 & 0x70) != 0)
  {
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_1412164(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v48 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v48, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v48 + 1);
    v8 = **v48;
    if (**v48 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v48, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v48 + 2);
      }
    }

    *v48 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0xE)
    {
      break;
    }

    if (v8 >> 3 > 6)
    {
      if (v11 == 7)
      {
        if (v8 == 58)
        {
          *(a1 + 40) |= 1u;
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          v36 = (a1 + 72);
          goto LABEL_63;
        }
      }

      else if (v11 == 14 && v8 == 114)
      {
        *(a1 + 40) |= 8u;
        v22 = *(a1 + 96);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_1551A70(v24);
          *(a1 + 96) = v22;
          v7 = *v48;
        }

        v15 = sub_22030E0(a3, v22, v7);
        goto LABEL_64;
      }

      goto LABEL_67;
    }

    if (v11 != 1)
    {
      if (v11 == 4 && v8 == 34)
      {
        *(a1 + 40) |= 4u;
        v12 = *(a1 + 88);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_16F5828(v14);
          *(a1 + 88) = v12;
          v7 = *v48;
        }

        v15 = sub_21F4D60(a3, v12, v7);
        goto LABEL_64;
      }

      goto LABEL_67;
    }

    if (v8 != 8)
    {
      goto LABEL_67;
    }

    v5 |= 0x10u;
    v29 = (v7 + 1);
    v28 = *v7;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v30 = *v29;
    v28 = (v30 << 7) + v28 - 128;
    if ((v30 & 0x80000000) == 0)
    {
      v29 = (v7 + 2);
LABEL_49:
      *v48 = v29;
      *(a1 + 104) = v28;
      goto LABEL_65;
    }

    v42 = sub_19587DC(v7, v28);
    *v48 = v42;
    *(a1 + 104) = v43;
    if (!v42)
    {
      goto LABEL_85;
    }

LABEL_65:
    if (sub_195ADC0(a3, v48, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 0x10)
  {
    if (v11 != 15)
    {
      if (v11 == 16 && v8 == 130)
      {
        v16 = v7 - 2;
        while (1)
        {
          v17 = v16 + 2;
          *v48 = v16 + 2;
          v18 = *(a1 + 64);
          if (v18 && (v19 = *(a1 + 56), v19 < *v18))
          {
            *(a1 + 56) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_141B9A4(*(a1 + 48));
            v20 = sub_19593CC(a1 + 48, v21);
            v17 = *v48;
          }

          v16 = sub_22092E8(a3, v20, v17);
          *v48 = v16;
          if (!v16)
          {
            goto LABEL_85;
          }

          if (*a3 <= v16 || *v16 != 386)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_67;
    }

    if (v8 != 120)
    {
      goto LABEL_67;
    }

    v5 |= 0x20u;
    v31 = (v7 + 1);
    v32 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    v33 = *v31;
    v32 = v32 + (v33 << 7) - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v31 = (v7 + 2);
LABEL_54:
      *v48 = v31;
      *(a1 + 112) = v32;
      goto LABEL_65;
    }

    v44 = sub_1958770(v7, v32);
    *v48 = v44;
    *(a1 + 112) = v45;
    if (!v44)
    {
      goto LABEL_85;
    }

    goto LABEL_65;
  }

  if (v11 != 17)
  {
    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_67;
    }

    v5 |= 0x40u;
    v25 = (v7 + 1);
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = (v7 + 2);
LABEL_44:
      *v48 = v25;
      *(a1 + 116) = v26;
      goto LABEL_65;
    }

    v46 = sub_1958770(v7, v26);
    *v48 = v46;
    *(a1 + 116) = v47;
    if (!v46)
    {
      goto LABEL_85;
    }

    goto LABEL_65;
  }

  if (v8 == 138)
  {
    *(a1 + 40) |= 2u;
    v37 = *(a1 + 8);
    v35 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
    if (v37)
    {
      v35 = *v35;
    }

    v36 = (a1 + 80);
LABEL_63:
    v38 = sub_194DB04(v36, v35);
    v15 = sub_1958890(v38, *v48, a3);
LABEL_64:
    *v48 = v15;
    if (!v15)
    {
      goto LABEL_85;
    }

    goto LABEL_65;
  }

LABEL_67:
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
    if (v8 - 8000 > 0xF9F)
    {
      v40 = *(a1 + 8);
      if (v40)
      {
        v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v41 = sub_11F1920((a1 + 8));
        v7 = *v48;
      }

      v15 = sub_1952690(v8, v41, v7, a3);
    }

    else
    {
      v15 = sub_19525AC((a1 + 16), v8, v7, &off_276FFD8, (a1 + 8), a3);
    }

    goto LABEL_64;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_85:
  *v48 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v48;
}

char *sub_14125D0(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x10) != 0)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 88);
    *v6 = 34;
    v13 = *(v12 + 44);
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v6 + 1);
    }

    else
    {
      v14 = v6 + 2;
    }

    v6 = sub_16E5070(v12, v14, a3);
    if ((v5 & 1) == 0)
    {
LABEL_12:
      if ((v5 & 8) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v15 = *(a1 + 96);
      *v6 = 114;
      v16 = *(v15 + 44);
      v6[1] = v16;
      if (v16 > 0x7F)
      {
        v17 = sub_19575D0(v16, v6 + 1);
      }

      else
      {
        v17 = v6 + 2;
      }

      v6 = sub_153C1A4(v15, v17, a3);
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 7, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v5 & 0x20) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_35;
  }

LABEL_28:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 112);
  *v6 = 120;
  v6[1] = v18;
  if (v18 > 0x7F)
  {
    v6[1] = v18 | 0x80;
    v19 = v18 >> 7;
    v6[2] = v18 >> 7;
    v11 = v6 + 3;
    if (v18 >= 0x4000)
    {
      LOBYTE(v20) = v6[2];
      do
      {
        *(v11 - 1) = v20 | 0x80;
        v20 = v19 >> 7;
        *v11++ = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_35:
  v22 = *(a1 + 56);
  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v24 = *(*(a1 + 64) + 8 * i + 8);
      *v11 = 386;
      v25 = *(v24 + 20);
      v11[2] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, v11 + 2);
      }

      else
      {
        v26 = v11 + 3;
      }

      v11 = sub_140C048(v24, v26, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    v11 = sub_128AEEC(a3, 17, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 1000, 1500, v11, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v28 = *(a1 + 116);
    *v11 = 32760;
    v11[2] = v28;
    if (v28 > 0x7F)
    {
      v11[2] = v28 | 0x80;
      v29 = v28 >> 7;
      v11[3] = v28 >> 7;
      v27 = v11 + 4;
      if (v28 >= 0x4000)
      {
        LOBYTE(v11) = v11[3];
        do
        {
          *(v27 - 1) = v11 | 0x80;
          LODWORD(v11) = v29 >> 7;
          *v27++ = v29 >> 7;
          v30 = v29 >> 14;
          v29 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v27 = v11 + 3;
    }
  }

  else
  {
    v27 = v11;
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v27;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if (*a3 - v27 >= v34)
  {
    v36 = v34;
    memcpy(v27, v35, v34);
    v27 += v36;
    return v27;
  }

  return sub_1957130(a3, v35, v34, v27);
}

uint64_t sub_14129D8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + 2 * v3;
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
      v9 = sub_140C1B0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 0x7F) == 0)
  {
    goto LABEL_16;
  }

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
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v16 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v19 = sub_16E51F0(*(a1 + 88));
  v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 0x20) == 0)
    {
LABEL_14:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_25:
  v20 = sub_153C388(*(a1 + 96));
  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v10 & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_27:
  v4 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x40) != 0)
  {
LABEL_15:
    v4 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_16:
  v11 = *(a1 + 8);
  if (v11)
  {
    v21 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v4 += v22;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1412C08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A34C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 0x7F) != 0)
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

        goto LABEL_24;
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

      goto LABEL_32;
    }

LABEL_24:
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

      v17 = sub_16F5828(v19);
      *(a1 + 88) = v17;
    }

    if (*(a2 + 88))
    {
      v20 = *(a2 + 88);
    }

    else
    {
      v20 = &off_277E5E8;
    }

    sub_16E527C(v17, v20);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_40;
    }

LABEL_32:
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

      v21 = sub_1551A70(v23);
      *(a1 + 96) = v21;
    }

    if (*(a2 + 96))
    {
      v24 = *(a2 + 96);
    }

    else
    {
      v24 = &off_2776880;
    }

    sub_144F404(v21, v24);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(a1 + 104) = *(a2 + 104);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
LABEL_13:
        *(a1 + 40) |= v9;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 116) = *(a2 + 116);
      goto LABEL_13;
    }

LABEL_41:
    *(a1 + 112) = *(a2 + 112);
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1412E28(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 4) != 0)
    {
      result = sub_16E5370(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = sub_144F674(*(a1 + 96));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1412E90(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E0888;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_1412F10(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1412F40(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2770050)
  {
    if (*(a1 + 80))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 88))
    {
      sub_153BF18();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_144A0C0((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1413040(uint64_t a1)
{
  sub_1412F40(a1);

  operator delete();
}

uint64_t sub_1413078(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_140BDC0(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v9 = 0;
  *(v9 + 23) = 0;
  if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  result = sub_16E4E44(*(a1 + 80));
  if ((v6 & 4) != 0)
  {
LABEL_9:
    result = sub_144E31C(*(a1 + 88));
  }

LABEL_10:
  if ((v6 & 0x38) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_141316C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v47 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v47, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v47 + 1);
    v8 = **v47;
    if (**v47 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v47, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v47 + 2);
      }
    }

    *v47 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 <= 7)
    {
      if (v11 == 6)
      {
        if (v8 == 50)
        {
          v26 = v7 - 1;
          while (1)
          {
            v27 = v26 + 1;
            *v47 = v26 + 1;
            v28 = *(a1 + 64);
            if (v28 && (v29 = *(a1 + 56), v29 < *v28))
            {
              *(a1 + 56) = v29 + 1;
              v30 = *&v28[2 * v29 + 2];
            }

            else
            {
              v31 = sub_141B9A4(*(a1 + 48));
              v30 = sub_19593CC(a1 + 48, v31);
              v27 = *v47;
            }

            v26 = sub_22092E8(a3, v30, v27);
            *v47 = v26;
            if (!v26)
            {
              goto LABEL_81;
            }

            if (*a3 <= v26 || *v26 != 50)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v11 == 7 && v8 == 58)
      {
        *(a1 + 40) |= 4u;
        v12 = *(a1 + 88);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_1551A70(v14);
          *(a1 + 88) = v12;
          v7 = *v47;
        }

        v15 = sub_22030E0(a3, v12, v7);
        goto LABEL_69;
      }

      goto LABEL_60;
    }

    if (v11 == 8)
    {
      if (v8 == 66)
      {
        *(a1 + 40) |= 1u;
        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        v34 = sub_194DB04((a1 + 72), v33);
        v15 = sub_1958890(v34, *v47, a3);
        goto LABEL_69;
      }

      goto LABEL_60;
    }

    if (v11 != 2047 || v8 != 248)
    {
      goto LABEL_60;
    }

    v5 |= 0x20u;
    v20 = (v7 + 1);
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = (v7 + 2);
LABEL_35:
      *v47 = v20;
      *(a1 + 108) = v21;
      goto LABEL_70;
    }

    v43 = sub_1958770(v7, v21);
    *v47 = v43;
    *(a1 + 108) = v44;
    if (!v43)
    {
      goto LABEL_81;
    }

LABEL_70:
    if (sub_195ADC0(a3, v47, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_60;
    }

    v5 |= 8u;
    v24 = (v7 + 1);
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = (v7 + 2);
LABEL_40:
      *v47 = v24;
      *(a1 + 96) = v23;
      goto LABEL_70;
    }

    v41 = sub_19587DC(v7, v23);
    *v47 = v41;
    *(a1 + 96) = v42;
    if (!v41)
    {
      goto LABEL_81;
    }

    goto LABEL_70;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_60;
    }

    v5 |= 0x10u;
    v35 = (v7 + 1);
    v36 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    v37 = *v35;
    v36 = v36 + (v37 << 7) - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v35 = (v7 + 2);
LABEL_59:
      *v47 = v35;
      *(a1 + 104) = v36;
      goto LABEL_70;
    }

    v45 = sub_1958770(v7, v36);
    *v47 = v45;
    *(a1 + 104) = v46;
    if (!v45)
    {
      goto LABEL_81;
    }

    goto LABEL_70;
  }

  if (v11 == 3 && v8 == 26)
  {
    *(a1 + 40) |= 2u;
    v17 = *(a1 + 80);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_16F5828(v19);
      *(a1 + 80) = v17;
      v7 = *v47;
    }

    v15 = sub_21F4D60(a3, v17, v7);
LABEL_69:
    *v47 = v15;
    if (!v15)
    {
      goto LABEL_81;
    }

    goto LABEL_70;
  }

LABEL_60:
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
    if (v8 - 8000 > 0xF9F)
    {
      v39 = *(a1 + 8);
      if (v39)
      {
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v40 = sub_11F1920((a1 + 8));
        v7 = *v47;
      }

      v15 = sub_1952690(v8, v40, v7, a3);
    }

    else
    {
      v15 = sub_19525AC((a1 + 16), v8, v7, &off_2770050, (a1 + 8), a3);
    }

    goto LABEL_69;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_81:
  *v47 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v47;
}

char *sub_1413590(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 8) != 0)
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 104);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 80);
    *v11 = 26;
    v16 = *(v15 + 44);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_16E5070(v15, v17, a3);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v20 = *(*(a1 + 64) + 8 * i + 8);
      *v11 = 50;
      v21 = *(v20 + 20);
      v11[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v11 + 1);
      }

      else
      {
        v22 = v11 + 2;
      }

      v11 = sub_140C048(v20, v22, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v23 = *(a1 + 88);
    *v11 = 58;
    v24 = *(v23 + 44);
    v11[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v11 + 1);
    }

    else
    {
      v25 = v11 + 2;
    }

    v11 = sub_153C1A4(v23, v25, a3);
  }

  if (v5)
  {
    v11 = sub_128AEEC(a3, 8, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 1000, 1500, v11, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v27 = *(a1 + 108);
    *v11 = 32760;
    v11[2] = v27;
    if (v27 > 0x7F)
    {
      v11[2] = v27 | 0x80;
      v28 = v27 >> 7;
      v11[3] = v27 >> 7;
      v26 = v11 + 4;
      if (v27 >= 0x4000)
      {
        LOBYTE(v29) = v11[3];
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
      v26 = v11 + 3;
    }
  }

  else
  {
    v26 = v11;
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v26;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if (*a3 - v26 >= v34)
  {
    v36 = v34;
    memcpy(v26, v35, v34);
    v26 += v36;
    return v26;
  }

  return sub_1957130(a3, v35, v34, v26);
}

uint64_t sub_1413968(uint64_t a1)
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
      v9 = sub_140C1B0(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 0x3F) == 0)
  {
    goto LABEL_15;
  }

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
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v16 = sub_16E51F0(*(a1 + 80));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 0x10) == 0)
    {
LABEL_13:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_21:
  v17 = sub_153C388(*(a1 + 88));
  v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v10 & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_23:
  v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x20) != 0)
  {
LABEL_14:
    v4 += ((9 * (__clz(*(a1 + 108) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_15:
  v11 = *(a1 + 8);
  if (v11)
  {
    v18 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v4 += v19;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1413B50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A34C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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

        goto LABEL_28;
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

      v14 = sub_16F5828(v16);
      *(a1 + 80) = v14;
    }

    if (*(a2 + 80))
    {
      v17 = *(a2 + 80);
    }

    else
    {
      v17 = &off_277E5E8;
    }

    sub_16E527C(v14, v17);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(a1 + 40) |= 4u;
    v18 = *(a1 + 88);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1551A70(v20);
      *(a1 + 88) = v18;
    }

    if (*(a2 + 88))
    {
      v21 = *(a2 + 88);
    }

    else
    {
      v21 = &off_2776880;
    }

    sub_144F404(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(a1 + 96) = *(a2 + 96);
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
      *(a1 + 108) = *(a2 + 108);
      goto LABEL_12;
    }

LABEL_37:
    *(a1 + 104) = *(a2 + 104);
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

uint64_t sub_1413D38(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) != 0)
    {
      result = sub_16E5370(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = sub_144F674(*(a1 + 88));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1413DA0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E0908;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = &qword_278E990;
  *(a1 + 72) = 0;
  return a1;
}

void sub_1413E18(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1413E48(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E0908;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  v6 = *(a2 + 48);
  if (v6)
  {
    sub_1958E5C((a1 + 48), v6);
    v7 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v7, *(a2 + 56), 4 * *(a2 + 48));
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    sub_1957EF4(v4, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 64) = &qword_278E990;
  if (*(a2 + 40))
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_1413F60(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1413FB0(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1414060(uint64_t a1)
{
  sub_1413FB0(a1);

  operator delete();
}

unsigned __int8 *sub_1414098(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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
  *(v4 + 64) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1414124(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v31 + 1);
    v8 = **v31;
    if (**v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v31 + 2);
      }
    }

    *v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 2047)
    {
      break;
    }

    if (v8 != 248)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v21 = v7 + 1;
    v22 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    v23 = *v21;
    v22 = v22 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_37:
      *v31 = v21;
      *(a1 + 72) = v22;
      goto LABEL_45;
    }

    v29 = sub_1958770(v7, v22);
    *v31 = v29;
    *(a1 + 72) = v30;
    if (!v29)
    {
      goto LABEL_54;
    }

LABEL_45:
    if (sub_195ADC0(a3, v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 == 16)
    {
      v15 = v7 - 1;
      while (1)
      {
        *v31 = v15 + 1;
        v16 = v15[1];
        if (v15[1] < 0)
        {
          v17 = v16 + (v15[2] << 7);
          v16 = v17 - 128;
          if (v15[2] < 0)
          {
            v15 = sub_1958770((v15 + 1), v17 - 128);
            v16 = v18;
          }

          else
          {
            v15 += 3;
          }
        }

        else
        {
          v15 += 2;
        }

        *v31 = v15;
        v19 = *(a1 + 48);
        if (v19 == *(a1 + 52))
        {
          v20 = v19 + 1;
          sub_1958E5C((a1 + 48), v19 + 1);
          *(*(a1 + 56) + 4 * v19) = v16;
          v15 = *v31;
        }

        else
        {
          *(*(a1 + 56) + 4 * v19) = v16;
          v20 = v19 + 1;
        }

        *(a1 + 48) = v20;
        if (!v15)
        {
          goto LABEL_54;
        }

        if (*a3 <= v15 || *v15 != 16)
        {
          goto LABEL_45;
        }
      }
    }

    if (v8 == 18)
    {
      v14 = sub_1958918((a1 + 48), v7, a3);
      goto LABEL_44;
    }
  }

  else if (v11 == 1 && v8 == 10)
  {
    *(a1 + 40) |= 1u;
    v24 = *(a1 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v26 = sub_194DB04((a1 + 64), v25);
    v14 = sub_1958890(v26, *v31, a3);
LABEL_44:
    *v31 = v14;
    if (!v14)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
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
    if (v8 - 8000 > 0xF9F)
    {
      v27 = *(a1 + 8);
      if (v27)
      {
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v28 = sub_11F1920((a1 + 8));
        v7 = *v31;
      }

      v14 = sub_1952690(v8, v28, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_27700C0, (a1 + 8), a3);
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v31 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v31;
}

char *sub_1414414(uint64_t a1, char *a2, void *a3)
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
          LOBYTE(v4) = v4[2];
          do
          {
            *(v10 - 1) = v4 | 0x80;
            LODWORD(v4) = v11 >> 7;
            *v10++ = v11 >> 7;
            v12 = v11 >> 14;
            v11 >>= 7;
          }

          while (v12);
        }
      }

      else
      {
        v10 = v4 + 2;
      }

      v4 = v10;
    }
  }

  if (*(a1 + 26))
  {
    v10 = sub_1953428(a1 + 16, 1000, 1500, v10, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v10)
    {
      v10 = sub_225EB68(a3, v10);
    }

    v14 = *(a1 + 72);
    *v10 = 32760;
    v10[2] = v14;
    if (v14 > 0x7F)
    {
      v10[2] = v14 | 0x80;
      v15 = v14 >> 7;
      v10[3] = v14 >> 7;
      v13 = v10 + 4;
      if (v14 >= 0x4000)
      {
        LOBYTE(v16) = v10[3];
        do
        {
          *(v13 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v13++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v13 = v10 + 3;
    }
  }

  else
  {
    v13 = v10;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v13;
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

  if (*a3 - v13 >= v21)
  {
    v23 = v21;
    memcpy(v13, v22, v21);
    v13 += v23;
    return v13;
  }

  return sub_1957130(a3, v22, v21, v13);
}

uint64_t sub_1414638(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  result = sub_1959E5C((a1 + 48)) + v2 + *(a1 + 48);
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

      result += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v4 & 2) != 0)
    {
      result += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
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

  *(a1 + 44) = result;
  return result;
}

void sub_1414718(uint64_t a1, uint64_t a2)
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
      *(a1 + 72) = *(a2 + 72);
    }

    *(a1 + 40) |= v8;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1414838(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E0988;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = &qword_278E990;
  *(a1 + 88) = &qword_278E990;
  *(a1 + 96) = &qword_278E990;
  *(a1 + 104) = &qword_278E990;
  *(a1 + 112) = &qword_278E990;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 148) = 0u;
  return a1;
}

void sub_14148CC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14148FC(void *a1)
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

  sub_1414994(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144A144(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1414994(uint64_t a1)
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

  result = (a1 + 112);
  if (*(a1 + 112) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2770110)
  {
    result = *(a1 + 120);
    if (result)
    {
      sub_14B662C();

      operator delete();
    }
  }

  return result;
}

void sub_1414A7C(void *a1)
{
  sub_14148FC(a1);

  operator delete();
}

uint64_t sub_1414AB4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14167A4(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 0x7F) == 0)
  {
    goto LABEL_14;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_24:
    v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_11:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

  v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  v11 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v6 & 8) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v6 & 8) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_10:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_36:
  v13 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v13 + 23) & 0x80000000) == 0)
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_40;
    }

LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  **v13 = 0;
  *(v13 + 8) = 0;
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_40:
  v14 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v14 + 23) & 0x80000000) == 0)
  {
    *v14 = 0;
    *(v14 + 23) = 0;
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_144E6A8(*(a1 + 120));
    goto LABEL_14;
  }

  **v14 = 0;
  *(v14 + 8) = 0;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  *(a1 + 128) = 0;
  if ((v6 & 0x7F00) != 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    *(a1 + 152) = 0;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_1414CA8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v71 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v71, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v71 + 1);
    v8 = **v71;
    if (**v71 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v71, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v71 + 2);
      }
    }

    *v71 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_95;
        }

        v5 |= 0x80u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_12:
          *v71 = v12;
          *(a1 + 128) = v11;
          goto LABEL_93;
        }

        v57 = sub_19587DC(v7, v11);
        *v71 = v57;
        *(a1 + 128) = v58;
        if (!v57)
        {
          goto LABEL_124;
        }

        goto LABEL_93;
      case 2u:
      case 3u:
      case 4u:
        goto LABEL_95;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_95;
        }

        v40 = (v7 + 1);
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_61;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          *v71 = sub_19587DC(v7, v39);
          if (!*v71)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v40 = (v7 + 2);
LABEL_61:
          *v71 = v40;
        }

        if (v39 > 1)
        {
          sub_1313700();
        }

        else
        {
          *(a1 + 40) |= 0x100u;
          *(a1 + 136) = v39;
        }

        goto LABEL_93;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_95;
        }

        v5 |= 0x200u;
        v33 = (v7 + 1);
        v34 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        v35 = *v33;
        v34 = v34 + (v35 << 7) - 128;
        if (v35 < 0)
        {
          v63 = sub_1958770(v7, v34);
          *v71 = v63;
          *(a1 + 140) = v64;
          if (!v63)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v33 = (v7 + 2);
LABEL_51:
          *v71 = v33;
          *(a1 + 140) = v34;
        }

        goto LABEL_93;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_95;
        }

        v5 |= 0x400u;
        v27 = (v7 + 1);
        v28 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        v29 = *v27;
        v28 = v28 + (v29 << 7) - 128;
        if (v29 < 0)
        {
          v59 = sub_1958770(v7, v28);
          *v71 = v59;
          *(a1 + 144) = v60;
          if (!v59)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v27 = (v7 + 2);
LABEL_41:
          *v71 = v27;
          *(a1 + 144) = v28;
        }

        goto LABEL_93;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_95;
        }

        v5 |= 0x800u;
        v36 = (v7 + 1);
        v37 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        v38 = *v36;
        v37 = v37 + (v38 << 7) - 128;
        if (v38 < 0)
        {
          v65 = sub_1958770(v7, v37);
          *v71 = v65;
          *(a1 + 148) = v66;
          if (!v65)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v36 = (v7 + 2);
LABEL_56:
          *v71 = v36;
          *(a1 + 148) = v37;
        }

        goto LABEL_93;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_95;
        }

        v5 |= 0x1000u;
        v47 = (v7 + 1);
        v48 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_78;
        }

        v49 = *v47;
        v48 = v48 + (v49 << 7) - 128;
        if (v49 < 0)
        {
          v67 = sub_1958770(v7, v48);
          *v71 = v67;
          *(a1 + 152) = v68;
          if (!v67)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v47 = (v7 + 2);
LABEL_78:
          *v71 = v47;
          *(a1 + 152) = v48;
        }

        goto LABEL_93;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_95;
        }

        v21 = (v7 - 1);
        while (1)
        {
          v22 = (v21 + 1);
          *v71 = v21 + 1;
          v23 = *(a1 + 64);
          if (v23 && (v24 = *(a1 + 56), v24 < *v23))
          {
            *(a1 + 56) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = sub_141BEF0(*(a1 + 48));
            v25 = sub_19593CC(a1 + 48, v26);
            v22 = *v71;
          }

          v21 = sub_2209378(a3, v25, v22);
          *v71 = v21;
          if (!v21)
          {
            goto LABEL_124;
          }

          if (*a3 <= v21 || *v21 != 82)
          {
            goto LABEL_93;
          }
        }

      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_95;
        }

        v5 |= 0x2000u;
        v31 = (v7 + 1);
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          v61 = sub_19587DC(v7, v30);
          *v71 = v61;
          *(a1 + 156) = v62 != 0;
          if (!v61)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v31 = (v7 + 2);
LABEL_46:
          *v71 = v31;
          *(a1 + 156) = v30 != 0;
        }

        goto LABEL_93;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 1u;
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v19 = (a1 + 72);
        goto LABEL_91;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 2u;
        v20 = *(a1 + 8);
        v18 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v18 = *v18;
        }

        v19 = (a1 + 80);
        goto LABEL_91;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 4u;
        v42 = *(a1 + 8);
        v18 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v18 = *v18;
        }

        v19 = (a1 + 88);
        goto LABEL_91;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 8u;
        v50 = *(a1 + 8);
        v18 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
        if (v50)
        {
          v18 = *v18;
        }

        v19 = (a1 + 96);
        goto LABEL_91;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 0x10u;
        v51 = *(a1 + 8);
        v18 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
        if (v51)
        {
          v18 = *v18;
        }

        v19 = (a1 + 104);
        goto LABEL_91;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 0x20u;
        v52 = *(a1 + 8);
        v18 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v18 = *v18;
        }

        v19 = (a1 + 112);
LABEL_91:
        v53 = sub_194DB04(v19, v18);
        v46 = sub_1958890(v53, *v71, a3);
        goto LABEL_92;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_95;
        }

        *(a1 + 40) |= 0x40u;
        v43 = *(a1 + 120);
        if (!v43)
        {
          v44 = *(a1 + 8);
          v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
          if (v44)
          {
            v45 = *v45;
          }

          v43 = sub_14BF484(v45);
          *(a1 + 120) = v43;
          v7 = *v71;
        }

        v46 = sub_2209138(a3, v43, v7);
        goto LABEL_92;
      default:
        if (v8 >> 3 == 2047 && v8 == 248)
        {
          v5 |= 0x4000u;
          v14 = (v7 + 1);
          v15 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          v16 = *v14;
          v15 = v15 + (v16 << 7) - 128;
          if ((v16 & 0x80000000) == 0)
          {
            v14 = (v7 + 2);
LABEL_18:
            *v71 = v14;
            *(a1 + 160) = v15;
            goto LABEL_93;
          }

          v69 = sub_1958770(v7, v15);
          *v71 = v69;
          *(a1 + 160) = v70;
          if (!v69)
          {
            goto LABEL_124;
          }

LABEL_93:
          if (sub_195ADC0(a3, v71, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_95:
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
          if (v8 - 8000 > 0xF9F)
          {
            v55 = *(a1 + 8);
            if (v55)
            {
              v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v56 = sub_11F1920((a1 + 8));
              v7 = *v71;
            }

            v46 = sub_1952690(v8, v56, v7, a3);
          }

          else
          {
            v46 = sub_19525AC((a1 + 16), v8, v7, &off_2770110, (a1 + 8), a3);
          }

LABEL_92:
          *v71 = v46;
          if (!v46)
          {
            goto LABEL_124;
          }

          goto LABEL_93;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_124:
          *v71 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v71;
    }
  }
}