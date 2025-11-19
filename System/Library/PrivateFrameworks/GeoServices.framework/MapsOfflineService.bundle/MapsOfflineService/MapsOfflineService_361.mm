char *sub_14D0FD0(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_14589F4(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 48);
    *__dst = 18;
    v12 = *(v11 + 20);
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, __dst + 1);
    }

    else
    {
      v13 = __dst + 2;
    }

    __dst = sub_14589F4(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
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

  if ((*a3 - __dst) >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_1957130(a3, v18, v17, __dst);
}

uint64_t sub_14D1178(uint64_t a1)
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
      v7 = sub_1458DB4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = sub_1458DB4(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_14D1254(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

double sub_14D12C8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26E8340;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  return result;
}

uint64_t sub_14D1308(uint64_t a1)
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

  if (a1 != &off_27744D0)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_14B0590(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_14D0C60(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14D13E4(uint64_t a1)
{
  sub_14D1308(a1);

  operator delete();
}

uint64_t sub_14D141C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_144E5CC(v4);
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
      result = sub_14B0694(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_14D0D5C(*(v1 + 56));
    }
  }

  if ((v5 & 0xFC) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    *(v1 + 88) = 0;
    *(v1 + 80) = 0;
  }

  if ((v5 & 0xF00) != 0)
  {
    *(v1 + 100) = 0;
    *(v1 + 92) = 0;
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

char *sub_14D14E4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v71 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v71, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v71 + 1;
    v8 = *v71;
    if (*v71 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v71, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v71 + 2;
      }
    }

    v71 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_86;
        }

        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if (v13 < 0)
        {
          v71 = sub_19587DC(v7, v11);
          if (!v71)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v12 = v7 + 2;
LABEL_12:
          v71 = v12;
        }

        if (v11 > 6)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 64) = v11;
        }

        goto LABEL_94;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_86;
        }

        v39 = v7 + 1;
        v40 = *v7;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }

        v41 = *v39;
        v42 = (v41 << 7) + v40;
        v40 = (v42 - 128);
        if (v41 < 0)
        {
          v71 = sub_19587DC(v7, (v42 - 128));
          if (!v71)
          {
            goto LABEL_123;
          }

          v40 = v64;
        }

        else
        {
          v39 = v7 + 2;
LABEL_62:
          v71 = v39;
        }

        if (v40 > 0x3C || ((1 << v40) & 0x1004010040100027) == 0)
        {
          v69 = *(a1 + 8);
          if (v69)
          {
            v70 = ((v69 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v70 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(2, v40, v70);
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 68) = v40;
        }

        goto LABEL_94;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_86;
        }

        v5 |= 0x10u;
        v30 = v7 + 1;
        v31 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v32 = *v30;
        v31 = v31 + (v32 << 7) - 128;
        if (v32 < 0)
        {
          v58 = sub_1958770(v7, v31);
          v71 = v58;
          *(a1 + 72) = v59;
          if (!v58)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v30 = v7 + 2;
LABEL_47:
          v71 = v30;
          *(a1 + 72) = v31;
        }

        goto LABEL_94;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_86;
        }

        v5 |= 0x20u;
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
          v60 = sub_1958770(v7, v34);
          v71 = v60;
          *(a1 + 76) = v61;
          if (!v60)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v33 = v7 + 2;
LABEL_52:
          v71 = v33;
          *(a1 + 76) = v34;
        }

        goto LABEL_94;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_86;
        }

        v5 |= 0x80u;
        v18 = v7 + 1;
        v19 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v20 = *v18;
        v19 = v19 + (v20 << 7) - 128;
        if (v20 < 0)
        {
          v56 = sub_1958770(v7, v19);
          v71 = v56;
          *(a1 + 88) = v57;
          if (!v56)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v18 = v7 + 2;
LABEL_25:
          v71 = v18;
          *(a1 + 88) = v19;
        }

        goto LABEL_94;
      case 6u:
        if (v8 != 49)
        {
          goto LABEL_86;
        }

        v5 |= 0x40u;
        *(a1 + 80) = *v7;
        v71 = v7 + 8;
        goto LABEL_94;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_86;
        }

        v5 |= 0x100u;
        v44 = v7 + 1;
        v45 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_74;
        }

        v46 = *v44;
        v45 = v45 + (v46 << 7) - 128;
        if (v46 < 0)
        {
          v65 = sub_1958770(v7, v45);
          v71 = v65;
          *(a1 + 92) = v66;
          if (!v65)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v44 = v7 + 2;
LABEL_74:
          v71 = v44;
          *(a1 + 92) = v45;
        }

        goto LABEL_94;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_86;
        }

        v5 |= 0x200u;
        v36 = v7 + 1;
        v37 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        v38 = *v36;
        v37 = v37 + (v38 << 7) - 128;
        if (v38 < 0)
        {
          v62 = sub_1958770(v7, v37);
          v71 = v62;
          *(a1 + 96) = v63;
          if (!v62)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v36 = v7 + 2;
LABEL_57:
          v71 = v36;
          *(a1 + 96) = v37;
        }

        goto LABEL_94;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_86;
        }

        v5 |= 0x400u;
        v50 = v7 + 1;
        v51 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

        v52 = *v50;
        v51 = v51 + (v52 << 7) - 128;
        if (v52 < 0)
        {
          v67 = sub_1958770(v7, v51);
          v71 = v67;
          *(a1 + 100) = v68;
          if (!v67)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v50 = v7 + 2;
LABEL_85:
          v71 = v50;
          *(a1 + 100) = v51;
        }

        goto LABEL_94;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_86;
        }

        v24 = v7 - 1;
        while (1)
        {
          v25 = (v24 + 1);
          v71 = v24 + 1;
          v26 = *(a1 + 40);
          if (v26 && (v27 = *(a1 + 32), v27 < *v26))
          {
            *(a1 + 32) = v27 + 1;
            v28 = *&v26[2 * v27 + 2];
          }

          else
          {
            sub_14BAE64(*(a1 + 24));
            v28 = sub_19593CC(a1 + 24, v29);
            v25 = v71;
          }

          v24 = sub_22095B8(a3, v28, v25);
          v71 = v24;
          if (!v24)
          {
            goto LABEL_123;
          }

          if (*a3 <= v24 || *v24 != 82)
          {
            goto LABEL_94;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_86;
        }

        *(a1 + 16) |= 1u;
        v47 = *(a1 + 48);
        if (!v47)
        {
          v48 = *(a1 + 8);
          v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
          if (v48)
          {
            v49 = *v49;
          }

          v47 = sub_14BEF24(v49);
          *(a1 + 48) = v47;
          v7 = v71;
        }

        v17 = sub_22147CC(a3, v47, v7);
        goto LABEL_93;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_86;
        }

        *(a1 + 16) |= 2u;
        v14 = *(a1 + 56);
        if (!v14)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v14 = sub_14D5C5C(v16);
          *(a1 + 56) = v14;
          v7 = v71;
        }

        v17 = sub_221485C(a3, v14, v7);
        goto LABEL_93;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_86;
        }

        v22 = v7 + 1;
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          v71 = sub_19587DC(v7, v21);
          if (!v71)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v22 = v7 + 2;
LABEL_30:
          v71 = v22;
        }

        if (v21 > 7)
        {
          sub_144E0C4();
        }

        else
        {
          *(a1 + 16) |= 0x800u;
          *(a1 + 104) = v21;
        }

        goto LABEL_94;
      default:
LABEL_86:
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
            v7 = v71;
          }

          v17 = sub_1952690(v8, v55, v7, a3);
LABEL_93:
          v71 = v17;
          if (!v17)
          {
            goto LABEL_123;
          }

LABEL_94:
          if (sub_195ADC0(a3, &v71, a3[11].i32[1]))
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
LABEL_123:
          v71 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v71;
    }
  }
}

char *sub_14D1B8C(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 68);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 72);
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 76);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 88);
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

    v28 = *(a1 + 80);
    *v24 = 49;
    *(v24 + 1) = v28;
    v24 += 9;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v30 = *(a1 + 92);
    *v24 = 56;
    v24[1] = v30;
    if (v30 > 0x7F)
    {
      v24[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v24[2] = v30 >> 7;
      v29 = v24 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v32) = v24[2];
        do
        {
          *(v29 - 1) = v32 | 0x80;
          v32 = v31 >> 7;
          *v29++ = v31 >> 7;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v29 = v24 + 2;
    }
  }

  else
  {
    v29 = v24;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v29)
    {
      v29 = sub_225EB68(a3, v29);
    }

    v35 = *(a1 + 96);
    *v29 = 64;
    v29[1] = v35;
    if (v35 > 0x7F)
    {
      v29[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v29[2] = v35 >> 7;
      v34 = v29 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v29) = v29[2];
        do
        {
          *(v34 - 1) = v29 | 0x80;
          LODWORD(v29) = v36 >> 7;
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v29 + 2;
    }
  }

  else
  {
    v34 = v29;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v39 = *(a1 + 100);
    *v34 = 72;
    v34[1] = v39;
    if (v39 > 0x7F)
    {
      v34[1] = v39 | 0x80;
      v40 = v39 >> 7;
      v34[2] = v39 >> 7;
      v38 = v34 + 3;
      if (v39 >= 0x4000)
      {
        LOBYTE(v34) = v34[2];
        do
        {
          *(v38 - 1) = v34 | 0x80;
          LODWORD(v34) = v40 >> 7;
          *v38++ = v40 >> 7;
          v41 = v40 >> 14;
          v40 >>= 7;
        }

        while (v41);
      }
    }

    else
    {
      v38 = v34 + 2;
    }
  }

  else
  {
    v38 = v34;
  }

  v42 = *(a1 + 32);
  if (v42)
  {
    for (i = 0; i != v42; ++i)
    {
      if (*a3 <= v38)
      {
        v38 = sub_225EB68(a3, v38);
      }

      v44 = *(*(a1 + 40) + 8 * i + 8);
      *v38 = 82;
      v45 = *(v44 + 20);
      v38[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v38 + 1);
      }

      else
      {
        v46 = v38 + 2;
      }

      v38 = sub_14589F4(v44, v46, a3);
    }
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_87;
    }

LABEL_95:
    if (*a3 <= v38)
    {
      v38 = sub_225EB68(a3, v38);
    }

    v51 = *(a1 + 56);
    *v38 = 98;
    v52 = *(v51 + 20);
    v38[1] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v38 + 1);
    }

    else
    {
      v53 = v38 + 2;
    }

    v38 = sub_14D0FD0(v51, v53, a3);
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_101;
  }

  if (*a3 <= v38)
  {
    v38 = sub_225EB68(a3, v38);
  }

  v48 = *(a1 + 48);
  *v38 = 90;
  v49 = *(v48 + 20);
  v38[1] = v49;
  if (v49 > 0x7F)
  {
    v50 = sub_19575D0(v49, v38 + 1);
  }

  else
  {
    v50 = v38 + 2;
  }

  v38 = sub_14B0990(v48, v50, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_95;
  }

LABEL_87:
  if ((v5 & 0x800) == 0)
  {
LABEL_88:
    v47 = v38;
    goto LABEL_108;
  }

LABEL_101:
  if (*a3 <= v38)
  {
    v38 = sub_225EB68(a3, v38);
  }

  v54 = *(a1 + 104);
  *v38 = 104;
  v38[1] = v54;
  if (v54 > 0x7F)
  {
    v38[1] = v54 | 0x80;
    v55 = v54 >> 7;
    v38[2] = v54 >> 7;
    v47 = v38 + 3;
    if (v54 >= 0x4000)
    {
      LOBYTE(v38) = v38[2];
      do
      {
        *(v47 - 1) = v38 | 0x80;
        v38 = (v55 >> 7);
        *v47++ = v55 >> 7;
        v56 = v55 >> 14;
        v55 >>= 7;
      }

      while (v56);
    }
  }

  else
  {
    v47 = v38 + 2;
  }

LABEL_108:
  v57 = *(a1 + 8);
  if ((v57 & 1) == 0)
  {
    return v47;
  }

  v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
  v60 = *(v59 + 31);
  if (v60 < 0)
  {
    v61 = *(v59 + 8);
    v60 = *(v59 + 16);
  }

  else
  {
    v61 = (v59 + 8);
  }

  if ((*a3 - v47) >= v60)
  {
    v62 = v60;
    memcpy(v47, v61, v60);
    v47 += v62;
    return v47;
  }

  return sub_1957130(a3, v61, v60, v47);
}

uint64_t sub_14D228C(uint64_t a1)
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
      v7 = sub_1458DB4(v6);
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
  if (!v8)
  {
    goto LABEL_21;
  }

  if (v8)
  {
    v9 = sub_14B0B24(*(a1 + 48));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_14D1178(*(a1 + 56));
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_29:
  v11 = *(a1 + 64);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v12;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_46:
    v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_38:
  v15 = *(a1 + 68);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v16;
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_46;
  }

LABEL_15:
  if ((v8 & 0x20) != 0)
  {
LABEL_16:
    v2 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v8 & 0x40) != 0)
  {
    v2 += 9;
  }

  if ((v8 & 0x80) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_21:
  if ((v8 & 0xF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v8 & 0x100) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x200) == 0)
    {
LABEL_24:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v2 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x400) == 0)
  {
LABEL_25:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

LABEL_33:
  v2 += ((9 * (__clz(*(a1 + 100) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x800) == 0)
  {
    goto LABEL_42;
  }

LABEL_34:
  v13 = *(a1 + 104);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v14;
LABEL_42:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_14D2568(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144A454((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 48);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_14BEF24(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_2773880;
      }

      sub_14B0C78(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_42;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 16) |= 2u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_14D5C5C(v17);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_2774498;
    }

    sub_149C4F0(v15, v18);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(a1 + 64) = *(a2 + 64);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(a1 + 68) = *(a2 + 68);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(a1 + 72) = *(a2 + 72);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(a1 + 76) = *(a2 + 76);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_14;
    }

LABEL_46:
    *(a1 + 80) = *(a2 + 80);
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
    *(a1 + 92) = *(a2 + 92);
    if ((v9 & 0x200) == 0)
    {
LABEL_18:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_19;
      }

LABEL_50:
      *(a1 + 100) = *(a2 + 100);
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

  *(a1 + 96) = *(a2 + 96);
  if ((v9 & 0x400) != 0)
  {
    goto LABEL_50;
  }

LABEL_19:
  if ((v9 & 0x800) != 0)
  {
LABEL_20:
    *(a1 + 104) = *(a2 + 104);
  }

LABEL_21:
  *(a1 + 16) |= v9;
LABEL_22:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14D2790(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_14D141C(a1);

    sub_14D2568(a1, a2);
  }
}

uint64_t sub_14D27DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_144F560(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_14D1254(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 sub_14D2840(uint64_t a1, uint64_t a2)
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
  v11 = *(a1 + 88);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  *(a2 + 80) = v10;
  *(a2 + 88) = v11;
  v13 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v13;
  LODWORD(v13) = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  return result;
}

uint64_t sub_14D28E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_14EB434(v4);
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
      result = sub_154F92C(v8);
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
      result = sub_1543CB4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 16);
  if ((v12 & 7) == 0)
  {
    goto LABEL_18;
  }

  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v15 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v15 + 23) & 0x80000000) == 0)
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_30;
    }

LABEL_16:
    if ((v12 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  **v15 = 0;
  *(v15 + 8) = 0;
  if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_30:
  v16 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v16 + 23) & 0x80000000) == 0)
  {
    *v16 = 0;
    *(v16 + 23) = 0;
    if ((v12 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = sub_16E5B70(*(a1 + 136));
    goto LABEL_18;
  }

  **v16 = 0;
  *(v16 + 8) = 0;
  if ((v12 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v12 & 0xF8) != 0)
  {
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  if ((v12 & 0x300) != 0)
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = 1;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_14D2A60(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E83C0;
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
    sub_15683EC((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1568478((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    sub_1957EF4(v4, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t sub_14D2C68(uint64_t a1)
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
  if (a1 != &off_2774540)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_1547774(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15680C4((a1 + 48));
  sub_1568040((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14D2D38(uint64_t a1)
{
  sub_14D2C68(a1);

  operator delete();
}

uint64_t sub_14D2D70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_14D141C(v4);
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
      result = sub_149EE04(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if (v8)
  {
    result = sub_14D28E4(*(v1 + 72));
  }

  if ((v8 & 0x1E) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
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

char *sub_14D2E34(uint64_t a1, char *a2, int32x2_t *a3)
{
  v56 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v56, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v56 + 1;
    v8 = *v56;
    if (*v56 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v56, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v56 + 2;
      }
    }

    v56 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 == 6)
      {
        if (v8 == 50)
        {
          v35 = v7 - 1;
          while (1)
          {
            v36 = (v35 + 1);
            v56 = v35 + 1;
            v37 = *(a1 + 40);
            if (v37 && (v38 = *(a1 + 32), v38 < *v37))
            {
              *(a1 + 32) = v38 + 1;
              v39 = *&v37[2 * v38 + 2];
            }

            else
            {
              v40 = sub_14D5CF8(*(a1 + 24));
              v39 = sub_19593CC(a1 + 24, v40);
              v36 = v56;
            }

            v35 = sub_22148EC(a3, v39, v36);
            v56 = v35;
            if (!v35)
            {
              goto LABEL_95;
            }

            if (*a3 <= v35 || *v35 != 50)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v11 == 7 && v8 == 58)
      {
        v19 = v7 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v56 = v19 + 1;
          v21 = *(a1 + 64);
          if (v21 && (v22 = *(a1 + 56), v22 < *v21))
          {
            *(a1 + 56) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_14BDEB8(*(a1 + 48));
            v23 = sub_19593CC(a1 + 48, v24);
            v20 = v56;
          }

          v19 = sub_221497C(a3, v23, v20);
          v56 = v19;
          if (!v19)
          {
            goto LABEL_95;
          }

          if (*a3 <= v19 || *v19 != 58)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_70;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_70;
      }

      *(a1 + 16) |= 1u;
      v30 = *(a1 + 72);
      if (!v30)
      {
        v31 = *(a1 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_155218C(v32);
        v30 = v33;
        *(a1 + 72) = v33;
        v7 = v56;
      }

      v34 = sub_21F36E0(a3, v30, v7);
LABEL_77:
      v56 = v34;
      if (!v34)
      {
        goto LABEL_95;
      }

      goto LABEL_78;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_70;
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
      v56 = v12;
      *(a1 + 92) = v13;
      goto LABEL_78;
    }

    v48 = sub_1958770(v7, v13);
    v56 = v48;
    *(a1 + 92) = v49;
    if (!v48)
    {
      goto LABEL_95;
    }

LABEL_78:
    if (sub_195ADC0(a3, &v56, a3[11].i32[1]))
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
        goto LABEL_70;
      }

      v5 |= 4u;
      v41 = v7 + 1;
      v42 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      v43 = *v41;
      v42 = v42 + (v43 << 7) - 128;
      if ((v43 & 0x80000000) == 0)
      {
        v41 = v7 + 2;
LABEL_69:
        v56 = v41;
        *(a1 + 84) = v42;
        goto LABEL_78;
      }

      v52 = sub_1958770(v7, v42);
      v56 = v52;
      *(a1 + 84) = v53;
      if (!v52)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_70;
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
        v56 = v16;
        *(a1 + 88) = v17;
        goto LABEL_78;
      }

      v50 = sub_1958770(v7, v17);
      v56 = v50;
      *(a1 + 88) = v51;
      if (!v50)
      {
        goto LABEL_95;
      }
    }

    goto LABEL_78;
  }

  if (v8 == 8)
  {
    v25 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_43;
    }

    v27 = *v25;
    v28 = (v27 << 7) + v26;
    v26 = (v28 - 128);
    if (v27 < 0)
    {
      v56 = sub_19587DC(v7, (v28 - 128));
      if (!v56)
      {
        goto LABEL_95;
      }

      v26 = v47;
    }

    else
    {
      v25 = v7 + 2;
LABEL_43:
      v56 = v25;
    }

    if (v26 > 0x3C || ((1 << v26) & 0x1004010040100027) == 0)
    {
      v54 = *(a1 + 8);
      if (v54)
      {
        v55 = ((v54 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v55 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(1, v26, v55);
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 80) = v26;
    }

    goto LABEL_78;
  }

LABEL_70:
  if (v8)
  {
    v44 = (v8 & 7) == 4;
  }

  else
  {
    v44 = 1;
  }

  if (!v44)
  {
    v45 = *(a1 + 8);
    if (v45)
    {
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v46 = sub_11F1920((a1 + 8));
      v7 = v56;
    }

    v34 = sub_1952690(v8, v46, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_95:
  v56 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

char *sub_14D32E0(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 88);
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
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 72);
    *v15 = 34;
    v20 = *(v19 + 20);
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v15 + 1);
    }

    else
    {
      v21 = v15 + 2;
    }

    v15 = sub_15480D4(v19, v21, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v23 = *(a1 + 92);
    *v15 = 40;
    v15[1] = v23;
    if (v23 > 0x7F)
    {
      v15[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v15[2] = v23 >> 7;
      v22 = v15 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v22 - 1) = v15 | 0x80;
          LODWORD(v15) = v24 >> 7;
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v15 + 2;
    }
  }

  else
  {
    v22 = v15;
  }

  v26 = *(a1 + 32);
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*a3 <= v22)
      {
        v22 = sub_225EB68(a3, v22);
      }

      v28 = *(*(a1 + 40) + 8 * i + 8);
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

      v22 = sub_14D1B8C(v28, v30, a3);
    }
  }

  v31 = *(a1 + 56);
  if (v31)
  {
    for (j = 0; j != v31; ++j)
    {
      if (*a3 <= v22)
      {
        v22 = sub_225EB68(a3, v22);
      }

      v33 = *(*(a1 + 64) + 8 * j + 8);
      *v22 = 58;
      v34 = *(v33 + 20);
      v22[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v22 + 1);
      }

      else
      {
        v35 = v22 + 2;
      }

      v22 = sub_149F03C(v33, v35, a3);
    }
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v22;
  }

  v38 = v36 & 0xFFFFFFFFFFFFFFFCLL;
  v39 = *(v38 + 31);
  if (v39 < 0)
  {
    v40 = *(v38 + 8);
    v39 = *(v38 + 16);
  }

  else
  {
    v40 = (v38 + 8);
  }

  if ((*a3 - v22) >= v39)
  {
    v41 = v39;
    memcpy(v22, v40, v39);
    v22 += v41;
    return v22;
  }

  return sub_1957130(a3, v40, v39, v22);
}

uint64_t sub_14D3724(uint64_t a1)
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
      v7 = sub_14D228C(v6);
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
      v14 = sub_149F1C8(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0x1F) == 0)
  {
    goto LABEL_22;
  }

  if (v15)
  {
    v18 = sub_1548710(*(a1 + 72));
    v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 2) == 0)
    {
LABEL_18:
      if ((v15 & 4) == 0)
      {
        goto LABEL_19;
      }

LABEL_29:
      v9 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 8) == 0)
      {
LABEL_20:
        if ((v15 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      goto LABEL_30;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  v19 = *(a1 + 80);
  v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v19 >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 11;
  }

  v9 += v21;
  if ((v15 & 4) != 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  if ((v15 & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_30:
  v9 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 0x10) != 0)
  {
LABEL_21:
    v9 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
  v16 = *(a1 + 8);
  if (v16)
  {
    v22 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v9 += v23;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_14D3918(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15683EC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1568478((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
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
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 72);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        sub_155218C(v18);
        *(a1 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v19 = *(a2 + 72);
      }

      else
      {
        v19 = &off_2776D50;
      }

      sub_14D3AD8(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_28;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 80) = *(a2 + 80);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 84) = *(a2 + 84);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v14;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 92) = *(a2 + 92);
      goto LABEL_14;
    }

LABEL_29:
    *(a1 + 88) = *(a2 + 88);
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

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14D3AD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156DC34((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_156DCC0((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
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
    sub_131206C((a1 + 96), v21, (v20 + 8), v19, **(a1 + 112) - *(a1 + 104));
    v22 = *(a1 + 104) + v19;
    *(a1 + 104) = v22;
    v23 = *(a1 + 112);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 16);
  if (v24)
  {
    if (v24)
    {
      v26 = *(a2 + 120);
      *(a1 + 16) |= 1u;
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_194EA1C((a1 + 120), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
      if ((v24 & 2) == 0)
      {
LABEL_16:
        if ((v24 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_40;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_16;
    }

    v29 = *(a2 + 128);
    *(a1 + 16) |= 2u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    sub_194EA1C((a1 + 128), (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
    if ((v24 & 4) == 0)
    {
LABEL_17:
      if ((v24 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_48;
    }

LABEL_40:
    *(a1 + 16) |= 4u;
    v32 = *(a1 + 136);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      sub_16F58FC(v34);
      *(a1 + 136) = v32;
    }

    if (*(a2 + 136))
    {
      v35 = *(a2 + 136);
    }

    else
    {
      v35 = &off_277E650;
    }

    sub_16E645C(v32, v35);
    if ((v24 & 8) == 0)
    {
LABEL_18:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(a1 + 144) = *(a2 + 144);
    if ((v24 & 0x10) == 0)
    {
LABEL_19:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_50;
    }

LABEL_49:
    *(a1 + 148) = *(a2 + 148);
    if ((v24 & 0x20) == 0)
    {
LABEL_20:
      if ((v24 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(a1 + 152) = *(a2 + 152);
    if ((v24 & 0x40) == 0)
    {
LABEL_21:
      if ((v24 & 0x80) == 0)
      {
LABEL_23:
        *(a1 + 16) |= v24;
        goto LABEL_24;
      }

LABEL_22:
      *(a1 + 156) = *(a2 + 156);
      goto LABEL_23;
    }

LABEL_51:
    *(a1 + 153) = *(a2 + 153);
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  if ((v24 & 0x300) != 0)
  {
    if ((v24 & 0x100) != 0)
    {
      *(a1 + 160) = *(a2 + 160);
    }

    if ((v24 & 0x200) != 0)
    {
      *(a1 + 168) = *(a2 + 168);
    }

    *(a1 + 16) |= v24;
  }

  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((a1 + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14D3DFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_14D27DC(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_14D3E6C(a1 + 48);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_14D3EC8(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14D3E6C(uint64_t a1)
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
      result = sub_149EC98(*(v3 + 24));
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

uint64_t sub_14D3EC8(uint64_t a1)
{
  if ((*(a1 + 16) & 8) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    v5 = sub_14EC4F4(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_1548A88(a1 + 72);
  if (result)
  {
    v6 = *(a1 + 104);
    while (v6 >= 1)
    {
      v7 = *(*(a1 + 112) + 8 * v6--);
      if ((~*(v7 + 16) & 3) != 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 16) & 4) == 0)
    {
      return 1;
    }

    result = sub_16E6614(*(a1 + 136));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14D3F88(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E8440;
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
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return a1;
}

void sub_14D4018(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14D404C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E8440;
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
    sub_1568504((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
    sub_1568370((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
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
    sub_1568504((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
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

  if ((v22 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
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
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

void *sub_14D4410(void *a1)
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

  sub_14D44C0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1568148(a1 + 12);
  sub_1567FBC(a1 + 9);
  sub_1568148(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_14D44C0(uint64_t a1)
{
  v3 = *(a1 + 120);
  result = (a1 + 120);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27745A0)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      sub_1547774(v4);
      operator delete();
    }

    v5 = *(a1 + 136);
    if (v5)
    {
      sub_14D2C68(v5);
      operator delete();
    }

    v6 = *(a1 + 144);
    if (v6)
    {
      sub_13F0C4C(v6);
      operator delete();
    }

    result = *(a1 + 152);
    if (result)
    {
      sub_14BA020(result);

      operator delete();
    }
  }

  return result;
}

void sub_14D459C(void *a1)
{
  sub_14D4410(a1);

  operator delete();
}

uint64_t sub_14D45D4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14D2D70(v5);
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
      result = sub_14A52E8(v8);
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
      result = sub_14D2D70(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 40);
  if ((v12 & 0x1F) != 0)
  {
    if ((v12 & 1) == 0)
    {
      if ((v12 & 2) == 0)
      {
        goto LABEL_16;
      }

LABEL_24:
      result = sub_14D28E4(*(a1 + 128));
      if ((v12 & 4) == 0)
      {
LABEL_17:
        if ((v12 & 8) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_26;
      }

LABEL_25:
      result = sub_14D2D70(*(a1 + 136));
      if ((v12 & 8) == 0)
      {
LABEL_18:
        if ((v12 & 0x10) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

LABEL_26:
      result = sub_13F0C88(*(a1 + 144));
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_29;
      }

LABEL_27:
      v14 = *(a1 + 152);
      v15 = *(v14 + 8);
      result = v14 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v15)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_29;
    }

    v13 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v12 & 2) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_16:
    if ((v12 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_29:
  v17 = *(a1 + 8);
  v16 = a1 + 8;
  *(v16 + 152) = 0;
  *(v16 + 32) = 0;
  if (v17)
  {

    return sub_1957EA8(v16);
  }

  return result;
}

uint64_t sub_14D4740(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v59 = a2;
  if (sub_195ADC0(a3, v59, a3[11].i32[1]))
  {
    return *v59;
  }

  while (1)
  {
    v6 = (*v59 + 1);
    v7 = **v59;
    if (**v59 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v59, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v59 + 2);
      }
    }

    *v59 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 4)
    {
      break;
    }

    if (v7 >> 3 <= 6)
    {
      if (v10 != 5)
      {
        if (v10 == 6 && v7 == 50)
        {
          v28 = (v6 - 1);
          while (1)
          {
            v29 = (v28 + 1);
            *v59 = v28 + 1;
            v30 = *(a1 + 112);
            if (v30 && (v31 = *(a1 + 104), v31 < *v30))
            {
              *(a1 + 104) = v31 + 1;
              v32 = *&v30[2 * v31 + 2];
            }

            else
            {
              sub_14D5D9C(*(a1 + 96));
              v32 = sub_19593CC(a1 + 96, v33);
              v29 = *v59;
            }

            v28 = sub_2214A0C(a3, v32, v29);
            *v59 = v28;
            if (!v28)
            {
              goto LABEL_111;
            }

            if (*a3 <= v28 || *v28 != 50)
            {
              goto LABEL_100;
            }
          }
        }

        goto LABEL_90;
      }

      if (v7 != 42)
      {
        goto LABEL_90;
      }

      *(a1 + 40) |= 4u;
      v46 = *(a1 + 136);
      if (!v46)
      {
        v47 = *(a1 + 8);
        v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v48 = *v48;
        }

        sub_14D5D9C(v48);
        v46 = v49;
        *(a1 + 136) = v49;
        v6 = *v59;
      }

      v14 = sub_2214A0C(a3, v46, v6);
    }

    else if (v10 == 7)
    {
      if (v7 != 58)
      {
        goto LABEL_90;
      }

      *(a1 + 40) |= 8u;
      v43 = *(a1 + 144);
      if (!v43)
      {
        v44 = *(a1 + 8);
        v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v45 = *v45;
        }

        v43 = sub_13F1010(v45);
        *(a1 + 144) = v43;
        v6 = *v59;
      }

      v14 = sub_220B538(a3, v43, v6);
    }

    else if (v10 == 8)
    {
      if (v7 != 66)
      {
        goto LABEL_90;
      }

      *(a1 + 40) |= 1u;
      v50 = *(a1 + 8);
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
      if (v50)
      {
        v51 = *v51;
      }

      v52 = sub_194DB04((a1 + 120), v51);
      v14 = sub_1958890(v52, *v59, a3);
    }

    else
    {
      if (v10 != 9 || v7 != 74)
      {
        goto LABEL_90;
      }

      *(a1 + 40) |= 0x10u;
      v11 = *(a1 + 152);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_14BF800(v13);
        *(a1 + 152) = v11;
        v6 = *v59;
      }

      v14 = sub_2213760(a3, v11, v6);
    }

LABEL_99:
    *v59 = v14;
    if (!v14)
    {
      goto LABEL_111;
    }

LABEL_100:
    if (sub_195ADC0(a3, v59, a3[11].i32[1]))
    {
      return *v59;
    }
  }

  if (v7 >> 3 <= 2)
  {
    if (v10 != 1)
    {
      if (v10 == 2 && v7 == 18)
      {
        v16 = (v6 - 1);
        while (1)
        {
          v17 = (v16 + 1);
          *v59 = v16 + 1;
          v18 = *(a1 + 64);
          if (v18 && (v19 = *(a1 + 56), v19 < *v18))
          {
            *(a1 + 56) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            sub_14D5D9C(*(a1 + 48));
            v20 = sub_19593CC(a1 + 48, v21);
            v17 = *v59;
          }

          v16 = sub_2214A0C(a3, v20, v17);
          *v59 = v16;
          if (!v16)
          {
            goto LABEL_111;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_100;
          }
        }
      }

      goto LABEL_90;
    }

    if (v7 != 8)
    {
      goto LABEL_90;
    }

    v34 = (v6 + 1);
    v35 = *v6;
    if ((v35 & 0x8000000000000000) != 0)
    {
      v36 = *v34;
      v37 = (v36 << 7) + v35;
      v35 = (v37 - 128);
      if (v36 < 0)
      {
        *v59 = sub_19587DC(v6, (v37 - 128));
        if (!*v59)
        {
          goto LABEL_111;
        }

        v35 = v56;
        goto LABEL_63;
      }

      v34 = (v6 + 2);
    }

    *v59 = v34;
LABEL_63:
    if (v35 > 0x3C || ((1 << v35) & 0x1004010040100027) == 0)
    {
      v57 = *(a1 + 8);
      if (v57)
      {
        v58 = ((v57 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v58 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(1, v35, v58);
    }

    else
    {
      *(a1 + 40) |= 0x20u;
      *(a1 + 160) = v35;
    }

    goto LABEL_100;
  }

  if (v10 == 3)
  {
    if (v7 != 26)
    {
      goto LABEL_90;
    }

    *(a1 + 40) |= 2u;
    v39 = *(a1 + 128);
    if (!v39)
    {
      v40 = *(a1 + 8);
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
      if (v40)
      {
        v41 = *v41;
      }

      sub_155218C(v41);
      v39 = v42;
      *(a1 + 128) = v42;
      v6 = *v59;
    }

    v14 = sub_21F36E0(a3, v39, v6);
    goto LABEL_99;
  }

  if (v10 == 4 && v7 == 34)
  {
    v22 = (v6 - 1);
    while (1)
    {
      v23 = (v22 + 1);
      *v59 = v22 + 1;
      v24 = *(a1 + 88);
      if (v24 && (v25 = *(a1 + 80), v25 < *v24))
      {
        *(a1 + 80) = v25 + 1;
        v26 = *&v24[2 * v25 + 2];
      }

      else
      {
        sub_14BE448(*(a1 + 72));
        v26 = sub_19593CC(a1 + 72, v27);
        v23 = *v59;
      }

      v22 = sub_2213640(a3, v26, v23);
      *v59 = v22;
      if (!v22)
      {
        goto LABEL_111;
      }

      if (*a3 <= v22 || *v22 != 34)
      {
        goto LABEL_100;
      }
    }
  }

LABEL_90:
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
    if (v7 - 8000 > 0x647)
    {
      v54 = *(a1 + 8);
      if (v54)
      {
        v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v55 = sub_11F1920((a1 + 8));
        v6 = *v59;
      }

      v14 = sub_1952690(v7, v55, v6, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v7, v6, &off_27745A0, (a1 + 8), a3);
    }

    goto LABEL_99;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v59;
  }

LABEL_111:
  *v59 = 0;
  return *v59;
}

char *sub_14D4CDC(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 160);
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

      v6 = sub_14D32E0(v13, v15, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 128);
    *v6 = 26;
    v17 = *(v16 + 20);
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v6 + 1);
    }

    else
    {
      v18 = v6 + 2;
    }

    v6 = sub_15480D4(v16, v18, a3);
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v21 = *(*(a1 + 88) + 8 * j + 8);
      *v6 = 34;
      v22 = *(v21 + 20);
      v6[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v6 + 1);
      }

      else
      {
        v23 = v6 + 2;
      }

      v6 = sub_14A5550(v21, v23, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v24 = *(a1 + 136);
    *v6 = 42;
    v25 = *(v24 + 20);
    v6[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v6 + 1);
    }

    else
    {
      v26 = v6 + 2;
    }

    v6 = sub_14D32E0(v24, v26, a3);
  }

  v27 = *(a1 + 104);
  if (v27)
  {
    for (k = 0; k != v27; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v29 = *(*(a1 + 112) + 8 * k + 8);
      *v6 = 50;
      v30 = *(v29 + 20);
      v6[1] = v30;
      if (v30 > 0x7F)
      {
        v31 = sub_19575D0(v30, v6 + 1);
      }

      else
      {
        v31 = v6 + 2;
      }

      v6 = sub_14D32E0(v29, v31, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v32 = *(a1 + 144);
    *v6 = 58;
    v33 = *(v32 + 20);
    v6[1] = v33;
    if (v33 > 0x7F)
    {
      v34 = sub_19575D0(v33, v6 + 1);
    }

    else
    {
      v34 = v6 + 2;
    }

    v6 = sub_13F0E14(v32, v34, a3);
    if ((v5 & 1) == 0)
    {
LABEL_50:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_59;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_50;
  }

  v6 = sub_128AEEC(a3, 8, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_65;
  }

LABEL_59:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v35 = *(a1 + 152);
  *v6 = 74;
  v36 = *(v35 + 20);
  v6[1] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, v6 + 1);
  }

  else
  {
    v37 = v6 + 2;
  }

  v6 = sub_14BA25C(v35, v37, a3);
LABEL_65:
  if (*(a1 + 26))
  {
    v6 = sub_1953428(a1 + 16, 1000, 1201, v6, a3);
  }

  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return v6;
  }

  v40 = v38 & 0xFFFFFFFFFFFFFFFCLL;
  v41 = *(v40 + 31);
  if (v41 < 0)
  {
    v42 = *(v40 + 8);
    v41 = *(v40 + 16);
  }

  else
  {
    v42 = (v40 + 8);
  }

  if ((*a3 - v6) >= v41)
  {
    v43 = v41;
    memcpy(v6, v42, v41);
    v6 += v43;
    return v6;
  }

  return sub_1957130(a3, v42, v41, v6);
}

uint64_t sub_14D5188(uint64_t a1)
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
      v9 = sub_14D3724(v8);
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
      v16 = sub_14A5700(v15);
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
      v23 = sub_14D3724(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 40);
  if ((v24 & 0x3F) != 0)
  {
    if (v24)
    {
      v30 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      v31 = *(v30 + 23);
      v32 = *(v30 + 8);
      if ((v31 & 0x80u) == 0)
      {
        v32 = v31;
      }

      v18 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v24 & 2) == 0)
      {
LABEL_22:
        if ((v24 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_36;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_22;
    }

    v33 = sub_1548710(*(a1 + 128));
    v18 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 4) == 0)
    {
LABEL_23:
      if ((v24 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_37;
    }

LABEL_36:
    v34 = sub_14D3724(*(a1 + 136));
    v18 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 8) == 0)
    {
LABEL_24:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }

LABEL_37:
    v35 = sub_13F0F3C(*(a1 + 144));
    v18 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 0x10) == 0)
    {
LABEL_25:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_30;
      }

LABEL_26:
      v25 = *(a1 + 160);
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v25 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 11;
      }

      v18 += v27;
      goto LABEL_30;
    }

LABEL_38:
    v36 = sub_14BA384(*(a1 + 152));
    v18 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_30:
  v28 = *(a1 + 8);
  if (v28)
  {
    v37 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *((v28 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v38 < 0)
    {
      v38 = *(v37 + 16);
    }

    v18 += v38;
  }

  *(a1 + 44) = v18;
  return v18;
}

void sub_14D5430(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1568504((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1568370((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_1568504((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 40);
  if ((v19 & 0x3F) != 0)
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

        goto LABEL_34;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 40) |= 2u;
    v24 = *(a1 + 128);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_155218C(v26);
      *(a1 + 128) = v24;
    }

    if (*(a2 + 128))
    {
      v27 = *(a2 + 128);
    }

    else
    {
      v27 = &off_2776D50;
    }

    sub_14D3AD8(v24, v27);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(a1 + 40) |= 4u;
    v28 = *(a1 + 136);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      sub_14D5D9C(v30);
      *(a1 + 136) = v28;
    }

    if (*(a2 + 136))
    {
      v31 = *(a2 + 136);
    }

    else
    {
      v31 = &off_2774540;
    }

    sub_14D3918(v28, v31);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 40) |= 8u;
    v32 = *(a1 + 144);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_13F1010(v34);
      *(a1 + 144) = v32;
    }

    if (*(a2 + 144))
    {
      v35 = *(a2 + 144);
    }

    else
    {
      v35 = &off_276F3A8;
    }

    sub_12B9D50(v32, v35);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
LABEL_18:
        *(a1 + 40) |= v19;
        goto LABEL_19;
      }

LABEL_17:
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_18;
    }

LABEL_50:
    *(a1 + 40) |= 0x10u;
    v36 = *(a1 + 152);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_14BF800(v38);
      *(a1 + 152) = v36;
    }

    if (*(a2 + 152))
    {
      v39 = *(a2 + 152);
    }

    else
    {
      v39 = &off_2773C88;
    }

    sub_12B9D50(v36, v39);
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  sub_225EA0C(a1 + 16, a2 + 16);
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14D5750(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_14D45D4(a1);

    sub_14D5430(a1, a2);
  }
}

uint64_t sub_14D579C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_14D3DFC(*(*(a1 + 64) + 8 * v3));
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
      v8 = sub_14D3DFC(*(*(a1 + 112) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 40);
    if ((v9 & 2) != 0)
    {
      result = sub_14D3EC8(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 4) == 0)
    {
      return 1;
    }

    result = sub_14D3DFC(*(a1 + 136));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 sub_14D5848(uint64_t a1, uint64_t a2)
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
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  v10 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v10;
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v11;
  *(a2 + 104) = v12;
  v13 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v13;
  v14 = *(a2 + 120);
  *(a2 + 120) = *(a1 + 120);
  *(a1 + 120) = v14;
  v15 = *(a1 + 128);
  v16 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v15;
  *(a2 + 136) = v16;
  v17 = *(a1 + 144);
  v18 = *(a1 + 152);
  result = *(a2 + 144);
  *(a1 + 144) = result;
  *(a2 + 144) = v17;
  *(a2 + 152) = v18;
  LODWORD(v17) = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v17;
  return result;
}

uint64_t sub_14D5948(uint64_t a1)
{
  if (!a1)
  {

    sub_1568590();
  }

  return sub_14BF87C(v3, a1, 0);
}

uint64_t sub_14D59A4(uint64_t a1)
{
  if (!a1)
  {

    sub_15685FC();
  }

  return sub_14C07CC(v3, a1, 0);
}

double sub_14D5A00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26E8040;
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
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = a1;
  *(v2 + 160) = 0;
  result = 0.0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  return result;
}

uint64_t sub_14D5ACC(uint64_t a1)
{
  if (!a1)
  {

    sub_1568668();
  }

  return sub_14C5A5C(v3, a1, 0);
}

uint64_t sub_14D5B28(uint64_t a1)
{
  if (!a1)
  {

    sub_15686D4();
  }

  return sub_14C9FCC(v3, a1, 0);
}

uint64_t sub_14D5B84(uint64_t a1)
{
  if (!a1)
  {

    sub_1568740();
  }

  return sub_14CC748(v3, a1, 0);
}

uint64_t sub_14D5BE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E8240;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_14D5C5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E82C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_14D5CF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E8340;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 92) = 0u;
  return result;
}

double sub_14D5D9C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26E83C0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  return result;
}

uint64_t sub_14D5E50(uint64_t a1)
{
  if (!a1)
  {

    sub_15687AC();
  }

  return sub_14D3F88(v3, a1, 0);
}

uint64_t sub_14D5EAC(uint64_t a1)
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

  if (a1 != &off_2774648 && *(a1 + 24))
  {
    sub_16EE080();
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

void sub_14D5F64(uint64_t a1)
{
  sub_14D5EAC(a1);

  operator delete();
}

uint64_t sub_14D5F9C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_16EE0BC(*(result + 24));
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 64) = 0;
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

char *sub_14D600C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 > 6)
    {
      if (v11 == 7)
      {
        if (v8 != 56)
        {
          goto LABEL_53;
        }

        v5 |= 0x40u;
        LODWORD(v29) = *v7;
        if ((v29 & 0x80000000) == 0)
        {
          v30 = v7 + 1;
LABEL_67:
          v44 = v30;
          *(a1 + 60) = v29;
          goto LABEL_74;
        }

        v29 = (v7[1] << 7) + v29 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v30 = v7 + 2;
          goto LABEL_67;
        }

        v38 = sub_19587DC(v7, v29);
        v44 = v38;
        *(a1 + 60) = v39;
        if (!v38)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v11 != 8 || v8 != 64)
        {
          goto LABEL_53;
        }

        v5 |= 0x80u;
        LODWORD(v22) = *v7;
        if ((v22 & 0x80000000) == 0)
        {
          v23 = v7 + 1;
LABEL_73:
          v44 = v23;
          *(a1 + 64) = v22;
          goto LABEL_74;
        }

        v22 = (v7[1] << 7) + v22 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v23 = v7 + 2;
          goto LABEL_73;
        }

        v42 = sub_19587DC(v7, v22);
        v44 = v42;
        *(a1 + 64) = v43;
        if (!v42)
        {
          goto LABEL_92;
        }
      }
    }

    else if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_53;
      }

      v5 |= 0x10u;
      LODWORD(v24) = *v7;
      if ((v24 & 0x80000000) == 0)
      {
        v25 = v7 + 1;
LABEL_64:
        v44 = v25;
        *(a1 + 52) = v24;
        goto LABEL_74;
      }

      v24 = (v7[1] << 7) + v24 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v25 = v7 + 2;
        goto LABEL_64;
      }

      v36 = sub_19587DC(v7, v24);
      v44 = v36;
      *(a1 + 52) = v37;
      if (!v36)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_53;
      }

      v5 |= 0x20u;
      LODWORD(v17) = *v7;
      if ((v17 & 0x80000000) == 0)
      {
        v18 = v7 + 1;
LABEL_70:
        v44 = v18;
        *(a1 + 56) = v17;
        goto LABEL_74;
      }

      v17 = (v7[1] << 7) + v17 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v18 = v7 + 2;
        goto LABEL_70;
      }

      v40 = sub_19587DC(v7, v17);
      v44 = v40;
      *(a1 + 56) = v41;
      if (!v40)
      {
        goto LABEL_92;
      }
    }

LABEL_74:
    if (sub_195ADC0(a3, &v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 2)
  {
    if (v11 == 1)
    {
      if (v8 == 9)
      {
        v5 |= 2u;
        *(a1 + 32) = *v7;
        v44 = v7 + 8;
        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v11 != 2 || v8 != 18)
    {
      goto LABEL_53;
    }

    *(a1 + 16) |= 1u;
    v13 = *(a1 + 24);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_16F5F38(v15);
      *(a1 + 24) = v13;
      v7 = v44;
    }

    v16 = sub_21F4CD0(a3, v13, v7);
LABEL_60:
    v44 = v16;
    if (!v16)
    {
      goto LABEL_92;
    }

    goto LABEL_74;
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_53;
    }

    v5 |= 4u;
    v27 = v7 + 1;
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_49:
      v44 = v27;
      *(a1 + 40) = v26;
      goto LABEL_74;
    }

    v34 = sub_19587DC(v7, v26);
    v44 = v34;
    *(a1 + 40) = v35;
    if (!v34)
    {
      goto LABEL_92;
    }

    goto LABEL_74;
  }

  if (v11 == 4 && v8 == 32)
  {
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if (v21 < 0)
    {
      v44 = sub_19587DC(v7, v19);
      if (!v44)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v20 = v7 + 2;
LABEL_32:
      v44 = v20;
    }

    if (v19 > 3)
    {
      sub_12E8500();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 48) = v19;
    }

    goto LABEL_74;
  }

LABEL_53:
  if (v8)
  {
    v31 = (v8 & 7) == 4;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v7 = v44;
    }

    v16 = sub_1952690(v8, v33, v7, a3);
    goto LABEL_60;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_92:
  v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

char *sub_14D6440(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 24);
    *__dst = 18;
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

    __dst = sub_16EE2C4(v8, v10, a3);
    if ((v5 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v7 = *(a1 + 32);
  *__dst = 9;
  *(__dst + 1) = v7;
  __dst += 9;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
LABEL_4:
    v6 = __dst;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v11 = *(a1 + 40);
  *__dst = 24;
  __dst[1] = v11;
  if (v11 > 0x7F)
  {
    __dst[1] = v11 | 0x80;
    v12 = v11 >> 7;
    __dst[2] = v11 >> 7;
    v6 = __dst + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = __dst[2];
      do
      {
        *(v6 - 1) = v13 | 0x80;
        v13 = v12 >> 7;
        *v6++ = v12 >> 7;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
    }
  }

  else
  {
    v6 = __dst + 2;
  }

LABEL_21:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 48);
    *v6 = 32;
    v6[1] = v16;
    if (v16 > 0x7F)
    {
      v6[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v6[2] = v16 >> 7;
      v15 = v6 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v15 - 1) = v6 | 0x80;
          v6 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v6 + 2;
    }
  }

  else
  {
    v15 = v6;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 52);
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 56);
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
          v19 = (v26 >> 7);
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

    v29 = *(a1 + 60);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v34 = *(a1 + 64);
    *v28 = 64;
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
          v28 = (v35 >> 7);
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

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v33;
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

  if (*a3 - v33 >= v40)
  {
    v42 = v40;
    memcpy(v33, v41, v40);
    v33 += v42;
    return v33;
  }

  return sub_1957130(a3, v41, v40, v33);
}

uint64_t sub_14D68A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_37;
  }

  if (*(a1 + 16))
  {
    v5 = sub_16EE474(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 2) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 48);
  if (v6 < 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v7;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_21:
  v8 = *(a1 + 52);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v9;
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_25:
  v10 = *(a1 + 56);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v11;
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(a1 + 60);
  if (v12 < 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v13;
  if (v2 < 0)
  {
LABEL_33:
    v14 = *(a1 + 64);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v15;
  }

LABEL_37:
  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    result += v18;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_14D6A80(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
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

        data = sub_16F5F38(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E980;
      }

      result = sub_121721C(data, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_25;
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

      goto LABEL_26;
    }

LABEL_25:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }

LABEL_26:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }

LABEL_27:
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }

LABEL_28:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
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
      LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
      goto LABEL_11;
    }

LABEL_29:
    HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_14D6BB8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16EE510(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

double sub_14D6BF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E84C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t sub_14D6D2C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_150E02C(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 40) = 0;
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

uint64_t sub_14D6DD0(uint64_t a1)
{
  sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  v2 = *(a1 + 72);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 80) + 8);
    do
    {
      v4 = *v3++;
      sub_151BFB8(v4);
      --v2;
    }

    while (v2);
    *(a1 + 72) = 0;
  }

  v5 = *(a1 + 96);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 104) + 8);
    do
    {
      v7 = *v6++;
      sub_151BFB8(v7);
      --v5;
    }

    while (v5);
    *(a1 + 96) = 0;
  }

  v8 = *(a1 + 120);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 128) + 8);
    do
    {
      v10 = *v9++;
      sub_14F5244(v10);
      --v8;
    }

    while (v8);
    *(a1 + 120) = 0;
  }

  v11 = *(a1 + 144);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 152) + 8);
    do
    {
      v13 = *v12++;
      sub_16E72AC(v13);
      --v11;
    }

    while (v11);
    *(a1 + 144) = 0;
  }

  v14 = *(a1 + 168);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 176) + 8);
    do
    {
      v16 = *v15++;
      sub_151B838(v16);
      --v14;
    }

    while (v14);
    *(a1 + 168) = 0;
  }

  v17 = *(a1 + 192);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 200) + 8);
    do
    {
      v19 = *v18++;
      sub_14D9150(v19);
      --v17;
    }

    while (v17);
    *(a1 + 192) = 0;
  }

  v20 = *(a1 + 216);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 224) + 8);
    do
    {
      v22 = *v21++;
      sub_14F5244(v22);
      --v20;
    }

    while (v20);
    *(a1 + 216) = 0;
  }

  *(a1 + 232) = 0;
  v23 = *(a1 + 256);
  if (v23 >= 1)
  {
    v24 = (*(a1 + 264) + 8);
    do
    {
      v25 = *v24++;
      sub_151C59C(v25);
      --v23;
    }

    while (v23);
    *(a1 + 256) = 0;
  }

  v26 = *(a1 + 280);
  if (v26 >= 1)
  {
    v27 = (*(a1 + 288) + 8);
    do
    {
      v28 = *v27++;
      sub_151D570(v28);
      --v26;
    }

    while (v26);
    *(a1 + 280) = 0;
  }

  v29 = *(a1 + 304);
  if (v29 >= 1)
  {
    v30 = (*(a1 + 312) + 8);
    do
    {
      v31 = *v30++;
      sub_16E72AC(v31);
      --v29;
    }

    while (v29);
    *(a1 + 304) = 0;
  }

  v32 = *(a1 + 328);
  if (v32 >= 1)
  {
    v33 = (*(a1 + 336) + 8);
    do
    {
      v34 = *v33++;
      sub_151E64C(v34);
      --v32;
    }

    while (v32);
    *(a1 + 328) = 0;
  }

  v35 = *(a1 + 352);
  if (v35 >= 1)
  {
    v36 = (*(a1 + 360) + 8);
    do
    {
      v37 = *v36++;
      sub_1524920(v37);
      --v35;
    }

    while (v35);
    *(a1 + 352) = 0;
  }

  sub_12A41D0(a1 + 368);
  result = sub_12A41D0(a1 + 392);
  v39 = *(a1 + 424);
  if (v39 >= 1)
  {
    v40 = (*(a1 + 432) + 8);
    do
    {
      v41 = *v40++;
      result = sub_151BFB8(v41);
      --v39;
    }

    while (v39);
    *(a1 + 424) = 0;
  }

  v42 = *(a1 + 448);
  if (v42 >= 1)
  {
    v43 = (*(a1 + 456) + 8);
    do
    {
      v44 = *v43++;
      result = sub_151FBB0(v44);
      --v42;
    }

    while (v42);
    *(a1 + 448) = 0;
  }

  v45 = *(a1 + 40);
  if ((v45 & 0x3F) == 0)
  {
    goto LABEL_65;
  }

  if ((v45 & 1) == 0)
  {
    if ((v45 & 2) == 0)
    {
      goto LABEL_60;
    }

LABEL_77:
    v49 = *(a1 + 472) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v49 + 23) < 0)
    {
      **v49 = 0;
      *(v49 + 8) = 0;
      if ((v45 & 4) != 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *v49 = 0;
      *(v49 + 23) = 0;
      if ((v45 & 4) != 0)
      {
        goto LABEL_81;
      }
    }

LABEL_61:
    if ((v45 & 8) == 0)
    {
      goto LABEL_62;
    }

LABEL_82:
    result = sub_14F6E84(*(a1 + 488));
    if ((v45 & 0x10) == 0)
    {
LABEL_63:
      if ((v45 & 0x20) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    goto LABEL_83;
  }

  v48 = *(a1 + 464) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v48 + 23) < 0)
  {
    **v48 = 0;
    *(v48 + 8) = 0;
    if ((v45 & 2) != 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    *v48 = 0;
    *(v48 + 23) = 0;
    if ((v45 & 2) != 0)
    {
      goto LABEL_77;
    }
  }

LABEL_60:
  if ((v45 & 4) == 0)
  {
    goto LABEL_61;
  }

LABEL_81:
  result = sub_14EAE84(*(a1 + 480));
  if ((v45 & 8) != 0)
  {
    goto LABEL_82;
  }

LABEL_62:
  if ((v45 & 0x10) == 0)
  {
    goto LABEL_63;
  }

LABEL_83:
  result = sub_151ED68(*(a1 + 496));
  if ((v45 & 0x20) != 0)
  {
LABEL_64:
    result = sub_151B244(*(a1 + 504));
  }

LABEL_65:
  if ((v45 & 0xC0) != 0)
  {
    *(a1 + 512) = 0u;
  }

  if ((v45 & 0xFF00) != 0)
  {
    *(a1 + 560) = 0;
    *(a1 + 528) = 0u;
    *(a1 + 544) = 0u;
  }

  v47 = *(a1 + 8);
  v46 = a1 + 8;
  *(v46 + 560) = 0;
  *(v46 + 32) = 0;
  if (v47)
  {

    return sub_1957EA8(v46);
  }

  return result;
}

uint64_t sub_14D7154(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_1502A38(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_15035C0(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 88) + 8);
    do
    {
      v10 = *v9++;
      sub_1504E8C(v10);
      --v8;
    }

    while (v8);
    *(a1 + 80) = 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  v11 = *(a1 + 136);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 144) + 8);
    do
    {
      v13 = *v12++;
      sub_150AD4C(v13);
      --v11;
    }

    while (v11);
    *(a1 + 136) = 0;
  }

  sub_12A41D0(a1 + 152);
  sub_12A41D0(a1 + 176);
  sub_12A41D0(a1 + 200);
  sub_12A41D0(a1 + 224);
  result = sub_12A41D0(a1 + 248);
  v15 = *(a1 + 280);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 288) + 8);
    do
    {
      v17 = *v16++;
      result = sub_1506644(v17);
      --v15;
    }

    while (v15);
    *(a1 + 280) = 0;
  }

  v18 = *(a1 + 304);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 312) + 8);
    do
    {
      v20 = *v19++;
      result = sub_150579C(v20);
      --v18;
    }

    while (v18);
    *(a1 + 304) = 0;
  }

  v21 = *(a1 + 16);
  if (!v21)
  {
    goto LABEL_35;
  }

  if ((v21 & 1) == 0)
  {
    if ((v21 & 2) == 0)
    {
      goto LABEL_28;
    }

LABEL_51:
    v27 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v27 + 23) < 0)
    {
      **v27 = 0;
      *(v27 + 8) = 0;
      if ((v21 & 4) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *v27 = 0;
      *(v27 + 23) = 0;
      if ((v21 & 4) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_29:
    if ((v21 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

  v26 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v26 + 23) < 0)
  {
    **v26 = 0;
    *(v26 + 8) = 0;
    if ((v21 & 2) != 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *v26 = 0;
    *(v26 + 23) = 0;
    if ((v21 & 2) != 0)
    {
      goto LABEL_51;
    }
  }

LABEL_28:
  if ((v21 & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_55:
  result = sub_15071A4(*(a1 + 336));
  if ((v21 & 8) == 0)
  {
LABEL_30:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = sub_14F3A88(*(a1 + 344));
  if ((v21 & 0x10) == 0)
  {
LABEL_31:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_58:
    result = sub_1508268(*(a1 + 360));
    if ((v21 & 0x40) == 0)
    {
LABEL_33:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_59;
  }

LABEL_57:
  result = sub_14F3B14(*(a1 + 352));
  if ((v21 & 0x20) != 0)
  {
    goto LABEL_58;
  }

LABEL_32:
  if ((v21 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_59:
  result = sub_15082EC(*(a1 + 368));
  if ((v21 & 0x80) != 0)
  {
LABEL_34:
    result = sub_14F3B98(*(a1 + 376));
  }

LABEL_35:
  if ((v21 & 0x300) != 0)
  {
    if ((v21 & 0x100) != 0)
    {
      result = sub_1508370(*(a1 + 384));
    }

    if ((v21 & 0x200) != 0)
    {
      v22 = *(a1 + 392);
      v23 = *(v22 + 8);
      result = v22 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v23)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v21 & 0xFC00) != 0)
  {
    *(a1 + 400) = 0;
    *(a1 + 405) = 0;
  }

  v25 = *(a1 + 8);
  v24 = a1 + 8;
  *(v24 + 8) = 0;
  if (v25)
  {

    return sub_1957EA8(v24);
  }

  return result;
}

std::string *sub_14D73E4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

      v9 = sub_152A23C(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2775950;
    }

    result = sub_150E73C(v9, v12);
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
      v3[2].__r_.__value_.__s.__data_[0] = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_23:
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

void sub_14D7504(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 72);
  if (v8)
  {
    v9 = *(a2 + 80);
    v10 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_156C274((a1 + 64), v10, (v9 + 8), v8, **(a1 + 80) - *(a1 + 72));
    v11 = *(a1 + 72) + v8;
    *(a1 + 72) = v11;
    v12 = *(a1 + 80);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 96);
  if (v13)
  {
    v14 = *(a2 + 104);
    v15 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_156C274((a1 + 88), v15, (v14 + 8), v13, **(a1 + 104) - *(a1 + 96));
    v16 = *(a1 + 96) + v13;
    *(a1 + 96) = v16;
    v17 = *(a1 + 104);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 120);
  if (v18)
  {
    v19 = *(a2 + 128);
    v20 = sub_19592E8(a1 + 112, *(a2 + 120));
    sub_156B210((a1 + 112), v20, (v19 + 8), v18, **(a1 + 128) - *(a1 + 120));
    v21 = *(a1 + 120) + v18;
    *(a1 + 120) = v21;
    v22 = *(a1 + 128);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 144);
  if (v23)
  {
    v24 = *(a2 + 152);
    v25 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_13B326C((a1 + 136), v25, (v24 + 8), v23, **(a1 + 152) - *(a1 + 144));
    v26 = *(a1 + 144) + v23;
    *(a1 + 144) = v26;
    v27 = *(a1 + 152);
    if (*v27 < v26)
    {
      *v27 = v26;
    }
  }

  v28 = *(a2 + 168);
  if (v28)
  {
    v29 = *(a2 + 176);
    v30 = sub_19592E8(a1 + 160, *(a2 + 168));
    sub_156C17C((a1 + 160), v30, (v29 + 8), v28, **(a1 + 176) - *(a1 + 168));
    v31 = *(a1 + 168) + v28;
    *(a1 + 168) = v31;
    v32 = *(a1 + 176);
    if (*v32 < v31)
    {
      *v32 = v31;
    }
  }

  v33 = *(a2 + 192);
  if (v33)
  {
    v34 = *(a2 + 200);
    v35 = sub_19592E8(a1 + 184, *(a2 + 192));
    sub_13486C4((a1 + 184), v35, (v34 + 8), v33, **(a1 + 200) - *(a1 + 192));
    v36 = *(a1 + 192) + v33;
    *(a1 + 192) = v36;
    v37 = *(a1 + 200);
    if (*v37 < v36)
    {
      *v37 = v36;
    }
  }

  v38 = *(a2 + 216);
  if (v38)
  {
    v39 = *(a2 + 224);
    v40 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_156B210((a1 + 208), v40, (v39 + 8), v38, **(a1 + 224) - *(a1 + 216));
    v41 = *(a1 + 216) + v38;
    *(a1 + 216) = v41;
    v42 = *(a1 + 224);
    if (*v42 < v41)
    {
      *v42 = v41;
    }
  }

  v43 = *(a2 + 232);
  if (v43)
  {
    v44 = *(a1 + 232);
    sub_1959094((a1 + 232), v44 + v43);
    v45 = *(a1 + 240);
    *(a1 + 232) += *(a2 + 232);
    memcpy((v45 + 8 * v44), *(a2 + 240), 8 * *(a2 + 232));
  }

  v46 = *(a2 + 256);
  if (v46)
  {
    v47 = *(a2 + 264);
    v48 = sub_19592E8(a1 + 248, *(a2 + 256));
    sub_156C2F0((a1 + 248), v48, (v47 + 8), v46, **(a1 + 264) - *(a1 + 256));
    v49 = *(a1 + 256) + v46;
    *(a1 + 256) = v49;
    v50 = *(a1 + 264);
    if (*v50 < v49)
    {
      *v50 = v49;
    }
  }

  v51 = *(a2 + 280);
  if (v51)
  {
    v52 = *(a2 + 288);
    v53 = sub_19592E8(a1 + 272, *(a2 + 280));
    sub_156C37C((a1 + 272), v53, (v52 + 8), v51, **(a1 + 288) - *(a1 + 280));
    v54 = *(a1 + 280) + v51;
    *(a1 + 280) = v54;
    v55 = *(a1 + 288);
    if (*v55 < v54)
    {
      *v55 = v54;
    }
  }

  v56 = *(a2 + 304);
  if (v56)
  {
    v57 = *(a2 + 312);
    v58 = sub_19592E8(a1 + 296, *(a2 + 304));
    sub_13B326C((a1 + 296), v58, (v57 + 8), v56, **(a1 + 312) - *(a1 + 304));
    v59 = *(a1 + 304) + v56;
    *(a1 + 304) = v59;
    v60 = *(a1 + 312);
    if (*v60 < v59)
    {
      *v60 = v59;
    }
  }

  v61 = *(a2 + 328);
  if (v61)
  {
    v62 = *(a2 + 336);
    v63 = sub_19592E8(a1 + 320, *(a2 + 328));
    sub_156C408((a1 + 320), v63, (v62 + 8), v61, **(a1 + 336) - *(a1 + 328));
    v64 = *(a1 + 328) + v61;
    *(a1 + 328) = v64;
    v65 = *(a1 + 336);
    if (*v65 < v64)
    {
      *v65 = v64;
    }
  }

  v66 = *(a2 + 352);
  if (v66)
  {
    v67 = *(a2 + 360);
    v68 = sub_19592E8(a1 + 344, *(a2 + 352));
    sub_156BF6C((a1 + 344), v68, (v67 + 8), v66, **(a1 + 360) - *(a1 + 352));
    v69 = *(a1 + 352) + v66;
    *(a1 + 352) = v69;
    v70 = *(a1 + 360);
    if (*v70 < v69)
    {
      *v70 = v69;
    }
  }

  v71 = *(a2 + 376);
  if (v71)
  {
    v72 = *(a2 + 384);
    v73 = sub_19592E8(a1 + 368, *(a2 + 376));
    sub_1201B48(a1 + 368, v73, (v72 + 8), v71, **(a1 + 384) - *(a1 + 376));
    v74 = *(a1 + 376) + v71;
    *(a1 + 376) = v74;
    v75 = *(a1 + 384);
    if (*v75 < v74)
    {
      *v75 = v74;
    }
  }

  v76 = *(a2 + 400);
  if (v76)
  {
    v77 = *(a2 + 408);
    v78 = sub_19592E8(a1 + 392, *(a2 + 400));
    sub_1201B48(a1 + 392, v78, (v77 + 8), v76, **(a1 + 408) - *(a1 + 400));
    v79 = *(a1 + 400) + v76;
    *(a1 + 400) = v79;
    v80 = *(a1 + 408);
    if (*v80 < v79)
    {
      *v80 = v79;
    }
  }

  v81 = *(a2 + 424);
  if (v81)
  {
    v82 = *(a2 + 432);
    v83 = sub_19592E8(a1 + 416, *(a2 + 424));
    sub_156C274((a1 + 416), v83, (v82 + 8), v81, **(a1 + 432) - *(a1 + 424));
    v84 = *(a1 + 424) + v81;
    *(a1 + 424) = v84;
    v85 = *(a1 + 432);
    if (*v85 < v84)
    {
      *v85 = v84;
    }
  }

  v86 = *(a2 + 448);
  if (v86)
  {
    v87 = *(a2 + 456);
    v88 = sub_19592E8(a1 + 440, *(a2 + 448));
    sub_156C494((a1 + 440), v88, (v87 + 8), v86, **(a1 + 456) - *(a1 + 448));
    v89 = *(a1 + 448) + v86;
    *(a1 + 448) = v89;
    v90 = *(a1 + 456);
    if (*v90 < v89)
    {
      *v90 = v89;
    }
  }

  v91 = *(a2 + 40);
  if (v91)
  {
    if (v91)
    {
      v94 = *(a2 + 464);
      *(a1 + 40) |= 1u;
      v95 = *(a1 + 8);
      v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
      if (v95)
      {
        v96 = *v96;
      }

      sub_194EA1C((a1 + 464), (v94 & 0xFFFFFFFFFFFFFFFELL), v96);
      if ((v91 & 2) == 0)
      {
LABEL_56:
        if ((v91 & 4) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_87;
      }
    }

    else if ((v91 & 2) == 0)
    {
      goto LABEL_56;
    }

    v97 = *(a2 + 472);
    *(a1 + 40) |= 2u;
    v98 = *(a1 + 8);
    v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
    if (v98)
    {
      v99 = *v99;
    }

    sub_194EA1C((a1 + 472), (v97 & 0xFFFFFFFFFFFFFFFELL), v99);
    if ((v91 & 4) == 0)
    {
LABEL_57:
      if ((v91 & 8) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_95;
    }

LABEL_87:
    *(a1 + 40) |= 4u;
    v100 = *(a1 + 480);
    if (!v100)
    {
      v101 = *(a1 + 8);
      v102 = (v101 & 0xFFFFFFFFFFFFFFFCLL);
      if (v101)
      {
        v102 = *v102;
      }

      v100 = sub_15281FC(v102);
      *(a1 + 480) = v100;
    }

    if (*(a2 + 480))
    {
      v103 = *(a2 + 480);
    }

    else
    {
      v103 = &off_2774C70;
    }

    sub_135B4C0(v100, v103);
    if ((v91 & 8) == 0)
    {
LABEL_58:
      if ((v91 & 0x10) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_103;
    }

LABEL_95:
    *(a1 + 40) |= 8u;
    v104 = *(a1 + 488);
    if (!v104)
    {
      v105 = *(a1 + 8);
      v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
      if (v105)
      {
        v106 = *v106;
      }

      v104 = sub_1528C84(v106);
      *(a1 + 488) = v104;
    }

    if (*(a2 + 488))
    {
      v107 = *(a2 + 488);
    }

    else
    {
      v107 = &off_27750E0;
    }

    sub_14F753C(v104, v107);
    if ((v91 & 0x10) == 0)
    {
LABEL_59:
      if ((v91 & 0x20) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_111;
    }

LABEL_103:
    *(a1 + 40) |= 0x10u;
    v108 = *(a1 + 496);
    if (!v108)
    {
      v109 = *(a1 + 8);
      v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
      if (v109)
      {
        v110 = *v110;
      }

      v108 = sub_152B054(v110);
      *(a1 + 496) = v108;
    }

    if (*(a2 + 496))
    {
      v111 = *(a2 + 496);
    }

    else
    {
      v111 = &off_2775F68;
    }

    sub_151F4C4(v108, v111);
    if ((v91 & 0x20) == 0)
    {
LABEL_60:
      if ((v91 & 0x40) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_119;
    }

LABEL_111:
    *(a1 + 40) |= 0x20u;
    v112 = *(a1 + 504);
    if (!v112)
    {
      v113 = *(a1 + 8);
      v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
      if (v113)
      {
        v114 = *v114;
      }

      v112 = sub_152ACC0(v114);
      *(a1 + 504) = v112;
    }

    if (*(a2 + 504))
    {
      v115 = *(a2 + 504);
    }

    else
    {
      v115 = &off_2775E28;
    }

    sub_151B638(v112, v115);
    if ((v91 & 0x40) == 0)
    {
LABEL_61:
      if ((v91 & 0x80) == 0)
      {
LABEL_63:
        *(a1 + 40) |= v91;
        goto LABEL_64;
      }

LABEL_62:
      *(a1 + 520) = *(a2 + 520);
      goto LABEL_63;
    }

LABEL_119:
    *(a1 + 512) = *(a2 + 512);
    if ((v91 & 0x80) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_64:
  if ((v91 & 0xFF00) == 0)
  {
    goto LABEL_75;
  }

  if ((v91 & 0x100) != 0)
  {
    *(a1 + 528) = *(a2 + 528);
    if ((v91 & 0x200) == 0)
    {
LABEL_67:
      if ((v91 & 0x400) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_123;
    }
  }

  else if ((v91 & 0x200) == 0)
  {
    goto LABEL_67;
  }

  *(a1 + 536) = *(a2 + 536);
  if ((v91 & 0x400) == 0)
  {
LABEL_68:
    if ((v91 & 0x800) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(a1 + 544) = *(a2 + 544);
  if ((v91 & 0x800) == 0)
  {
LABEL_69:
    if ((v91 & 0x1000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_125;
  }

LABEL_124:
  *(a1 + 545) = *(a2 + 545);
  if ((v91 & 0x1000) == 0)
  {
LABEL_70:
    if ((v91 & 0x2000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_126;
  }

LABEL_125:
  *(a1 + 548) = *(a2 + 548);
  if ((v91 & 0x2000) == 0)
  {
LABEL_71:
    if ((v91 & 0x4000) == 0)
    {
      goto LABEL_72;
    }

LABEL_127:
    *(a1 + 556) = *(a2 + 556);
    if ((v91 & 0x8000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_126:
  *(a1 + 552) = *(a2 + 552);
  if ((v91 & 0x4000) != 0)
  {
    goto LABEL_127;
  }

LABEL_72:
  if ((v91 & 0x8000) != 0)
  {
LABEL_73:
    *(a1 + 560) = *(a2 + 560);
  }

LABEL_74:
  *(a1 + 40) |= v91;
LABEL_75:
  if ((v91 & 0x10000) != 0)
  {
    v92 = *(a2 + 568);
    *(a1 + 40) |= 0x10000u;
    *(a1 + 568) = v92;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v93 = *(a2 + 8);
  if (v93)
  {

    sub_1957EF4((a1 + 8), (v93 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_14D7E4C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156B998(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_156BA14(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
    result = sub_156B880(v3 + 3, v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    data_low = SLODWORD(v3[4].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[4], data_low + v19);
    size = v3[4].__r_.__value_.__l.__size_;
    LODWORD(v3[4].__r_.__value_.__l.__data_) += *(a2 + 96);
    result = memcpy((size + 4 * data_low), *(a2 + 104), 4 * *(a2 + 96));
  }

  v22 = *(a2 + 112);
  if (v22)
  {
    v23 = SLODWORD(v3[4].__r_.__value_.__r.__words[2]);
    sub_1958E5C(&v3[4].__r_.__value_.__r.__words[2], v23 + v22);
    data = v3[5].__r_.__value_.__l.__data_;
    LODWORD(v3[4].__r_.__value_.__r.__words[2]) += *(a2 + 112);
    result = memcpy(&data[4 * v23], *(a2 + 120), 4 * *(a2 + 112));
  }

  v25 = *(a2 + 136);
  if (v25)
  {
    v26 = *(a2 + 144);
    v27 = sub_19592E8(&v3[5].__r_.__value_.__l.__size_, *(a2 + 136));
    result = sub_156BAA0((v3 + 128), v27, (v26 + 8), v25, *v3[6].__r_.__value_.__l.__data_ - LODWORD(v3[5].__r_.__value_.__r.__words[2]));
    v28 = LODWORD(v3[5].__r_.__value_.__r.__words[2]) + v25;
    LODWORD(v3[5].__r_.__value_.__r.__words[2]) = v28;
    v29 = v3[6].__r_.__value_.__l.__data_;
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 160);
  if (v30)
  {
    v31 = *(a2 + 168);
    v32 = sub_19592E8(&v3[6].__r_.__value_.__l.__size_, *(a2 + 160));
    result = sub_1201B48(&v3[6].__r_.__value_.__l.__size_, v32, (v31 + 8), v30, *v3[7].__r_.__value_.__l.__data_ - LODWORD(v3[6].__r_.__value_.__r.__words[2]));
    v33 = LODWORD(v3[6].__r_.__value_.__r.__words[2]) + v30;
    LODWORD(v3[6].__r_.__value_.__r.__words[2]) = v33;
    v34 = v3[7].__r_.__value_.__l.__data_;
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 184);
  if (v35)
  {
    v36 = *(a2 + 192);
    v37 = sub_19592E8(&v3[7].__r_.__value_.__l.__size_, *(a2 + 184));
    result = sub_1201B48(&v3[7].__r_.__value_.__l.__size_, v37, (v36 + 8), v35, *v3[8].__r_.__value_.__l.__data_ - LODWORD(v3[7].__r_.__value_.__r.__words[2]));
    v38 = LODWORD(v3[7].__r_.__value_.__r.__words[2]) + v35;
    LODWORD(v3[7].__r_.__value_.__r.__words[2]) = v38;
    v39 = v3[8].__r_.__value_.__l.__data_;
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 208);
  if (v40)
  {
    v41 = *(a2 + 216);
    v42 = sub_19592E8(&v3[8].__r_.__value_.__l.__size_, *(a2 + 208));
    result = sub_1201B48(&v3[8].__r_.__value_.__l.__size_, v42, (v41 + 8), v40, *v3[9].__r_.__value_.__l.__data_ - LODWORD(v3[8].__r_.__value_.__r.__words[2]));
    v43 = LODWORD(v3[8].__r_.__value_.__r.__words[2]) + v40;
    LODWORD(v3[8].__r_.__value_.__r.__words[2]) = v43;
    v44 = v3[9].__r_.__value_.__l.__data_;
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 232);
  if (v45)
  {
    v46 = *(a2 + 240);
    v47 = sub_19592E8(&v3[9].__r_.__value_.__l.__size_, *(a2 + 232));
    result = sub_1201B48(&v3[9].__r_.__value_.__l.__size_, v47, (v46 + 8), v45, *v3[10].__r_.__value_.__l.__data_ - LODWORD(v3[9].__r_.__value_.__r.__words[2]));
    v48 = LODWORD(v3[9].__r_.__value_.__r.__words[2]) + v45;
    LODWORD(v3[9].__r_.__value_.__r.__words[2]) = v48;
    v49 = v3[10].__r_.__value_.__l.__data_;
    if (*v49 < v48)
    {
      *v49 = v48;
    }
  }

  v50 = *(a2 + 256);
  if (v50)
  {
    v51 = *(a2 + 264);
    v52 = sub_19592E8(&v3[10].__r_.__value_.__l.__size_, *(a2 + 256));
    result = sub_1201B48(&v3[10].__r_.__value_.__l.__size_, v52, (v51 + 8), v50, *v3[11].__r_.__value_.__l.__data_ - LODWORD(v3[10].__r_.__value_.__r.__words[2]));
    v53 = LODWORD(v3[10].__r_.__value_.__r.__words[2]) + v50;
    LODWORD(v3[10].__r_.__value_.__r.__words[2]) = v53;
    v54 = v3[11].__r_.__value_.__l.__data_;
    if (*v54 < v53)
    {
      *v54 = v53;
    }
  }

  v55 = *(a2 + 280);
  if (v55)
  {
    v56 = *(a2 + 288);
    v57 = sub_19592E8(&v3[11].__r_.__value_.__l.__size_, *(a2 + 280));
    result = sub_156BB2C(&v3[11].__r_.__value_.__l.__size_, v57, (v56 + 8), v55, *v3[12].__r_.__value_.__l.__data_ - LODWORD(v3[11].__r_.__value_.__r.__words[2]));
    v58 = LODWORD(v3[11].__r_.__value_.__r.__words[2]) + v55;
    LODWORD(v3[11].__r_.__value_.__r.__words[2]) = v58;
    v59 = v3[12].__r_.__value_.__l.__data_;
    if (*v59 < v58)
    {
      *v59 = v58;
    }
  }

  v60 = *(a2 + 304);
  if (v60)
  {
    v61 = *(a2 + 312);
    v62 = sub_19592E8(&v3[12].__r_.__value_.__l.__size_, *(a2 + 304));
    result = sub_156BBB8(&v3[12].__r_.__value_.__l.__size_, v62, (v61 + 8), v60, *v3[13].__r_.__value_.__l.__data_ - LODWORD(v3[12].__r_.__value_.__r.__words[2]));
    v63 = LODWORD(v3[12].__r_.__value_.__r.__words[2]) + v60;
    LODWORD(v3[12].__r_.__value_.__r.__words[2]) = v63;
    v64 = v3[13].__r_.__value_.__l.__data_;
    if (*v64 < v63)
    {
      *v64 = v63;
    }
  }

  v65 = *(a2 + 16);
  if (!v65)
  {
    goto LABEL_102;
  }

  if (v65)
  {
    v66 = *(a2 + 320);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v67 = v3->__r_.__value_.__l.__size_;
    v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
    if (v67)
    {
      v68 = *v68;
    }

    result = sub_194EA1C(&v3[13].__r_.__value_.__l.__size_, (v66 & 0xFFFFFFFFFFFFFFFELL), v68);
    if ((v65 & 2) == 0)
    {
LABEL_41:
      if ((v65 & 4) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }
  }

  else if ((v65 & 2) == 0)
  {
    goto LABEL_41;
  }

  v69 = *(a2 + 328);
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  v70 = v3->__r_.__value_.__l.__size_;
  v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
  if (v70)
  {
    v71 = *v71;
  }

  result = sub_194EA1C(&v3[13].__r_.__value_.__r.__words[2], (v69 & 0xFFFFFFFFFFFFFFFELL), v71);
  if ((v65 & 4) == 0)
  {
LABEL_42:
    if ((v65 & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_62;
  }

LABEL_54:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v72 = v3[14].__r_.__value_.__l.__data_;
  if (!v72)
  {
    v73 = v3->__r_.__value_.__l.__size_;
    v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
    if (v73)
    {
      v74 = *v74;
    }

    v72 = sub_1529BF8(v74);
    v3[14].__r_.__value_.__r.__words[0] = v72;
  }

  if (*(a2 + 336))
  {
    v75 = *(a2 + 336);
  }

  else
  {
    v75 = &off_2775648;
  }

  result = sub_13E88F4(v72, v75);
  if ((v65 & 8) == 0)
  {
LABEL_43:
    if ((v65 & 0x10) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_70;
  }

LABEL_62:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v76 = v3[14].__r_.__value_.__l.__size_;
  if (!v76)
  {
    v77 = v3->__r_.__value_.__l.__size_;
    v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
    if (v77)
    {
      v78 = *v78;
    }

    v76 = sub_1529624(v78);
    v3[14].__r_.__value_.__l.__size_ = v76;
  }

  if (*(a2 + 344))
  {
    v79 = *(a2 + 344);
  }

  else
  {
    v79 = &off_27754A8;
  }

  result = sub_14F4308(v76, v79);
  if ((v65 & 0x10) == 0)
  {
LABEL_44:
    if ((v65 & 0x20) == 0)
    {
      goto LABEL_45;
    }

LABEL_78:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v84 = v3[15].__r_.__value_.__l.__data_;
    if (!v84)
    {
      v85 = v3->__r_.__value_.__l.__size_;
      v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
      if (v85)
      {
        v86 = *v86;
      }

      v84 = sub_152B480(v86);
      v3[15].__r_.__value_.__r.__words[0] = v84;
    }

    if (*(a2 + 360))
    {
      v87 = *(a2 + 360);
    }

    else
    {
      v87 = &off_2776288;
    }

    result = sub_12A9C84(v84, v87);
    if ((v65 & 0x40) == 0)
    {
LABEL_46:
      if ((v65 & 0x80) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_94;
    }

    goto LABEL_86;
  }

LABEL_70:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
  v80 = v3[14].__r_.__value_.__r.__words[2];
  if (!v80)
  {
    v81 = v3->__r_.__value_.__l.__size_;
    v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL);
    if (v81)
    {
      v82 = *v82;
    }

    v80 = sub_1529E24(v82);
    v3[14].__r_.__value_.__r.__words[2] = v80;
  }

  if (*(a2 + 352))
  {
    v83 = *(a2 + 352);
  }

  else
  {
    v83 = &off_2775818;
  }

  result = sub_12A9C84(v80, v83);
  if ((v65 & 0x20) != 0)
  {
    goto LABEL_78;
  }

LABEL_45:
  if ((v65 & 0x40) == 0)
  {
    goto LABEL_46;
  }

LABEL_86:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
  v88 = v3[15].__r_.__value_.__l.__size_;
  if (!v88)
  {
    v89 = v3->__r_.__value_.__l.__size_;
    v90 = (v89 & 0xFFFFFFFFFFFFFFFCLL);
    if (v89)
    {
      v90 = *v90;
    }

    v88 = sub_1529EC8(v90);
    v3[15].__r_.__value_.__l.__size_ = v88;
  }

  if (*(a2 + 368))
  {
    v91 = *(a2 + 368);
  }

  else
  {
    v91 = &off_2775850;
  }

  result = sub_12A9C84(v88, v91);
  if ((v65 & 0x80) != 0)
  {
LABEL_94:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x80u;
    v92 = v3[15].__r_.__value_.__r.__words[2];
    if (!v92)
    {
      v93 = v3->__r_.__value_.__l.__size_;
      v94 = (v93 & 0xFFFFFFFFFFFFFFFCLL);
      if (v93)
      {
        v94 = *v94;
      }

      v92 = sub_1529F6C(v94);
      v3[15].__r_.__value_.__r.__words[2] = v92;
    }

    if (*(a2 + 376))
    {
      v95 = *(a2 + 376);
    }

    else
    {
      v95 = &off_2775888;
    }

    result = sub_12A9C84(v92, v95);
  }

LABEL_102:
  if ((v65 & 0xFF00) == 0)
  {
    goto LABEL_113;
  }

  if ((v65 & 0x100) != 0)
  {
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v97 = v3[16].__r_.__value_.__l.__data_;
    if (!v97)
    {
      v98 = v3->__r_.__value_.__l.__size_;
      v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
      if (v98)
      {
        v99 = *v99;
      }

      v97 = sub_152A010(v99);
      v3[16].__r_.__value_.__r.__words[0] = v97;
    }

    if (*(a2 + 384))
    {
      v100 = *(a2 + 384);
    }

    else
    {
      v100 = &off_27758C0;
    }

    result = sub_12A9C84(v97, v100);
    if ((v65 & 0x200) == 0)
    {
LABEL_105:
      if ((v65 & 0x400) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_133;
    }
  }

  else if ((v65 & 0x200) == 0)
  {
    goto LABEL_105;
  }

  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x200u;
  v101 = v3[16].__r_.__value_.__l.__size_;
  if (!v101)
  {
    v102 = v3->__r_.__value_.__l.__size_;
    v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
    if (v102)
    {
      v103 = *v103;
    }

    v101 = sub_1529B7C(v103);
    v3[16].__r_.__value_.__l.__size_ = v101;
  }

  if (*(a2 + 392))
  {
    v104 = *(a2 + 392);
  }

  else
  {
    v104 = &off_2775628;
  }

  result = sub_140C624(v101, v104);
  if ((v65 & 0x400) == 0)
  {
LABEL_106:
    if ((v65 & 0x800) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_134;
  }

LABEL_133:
  v3[16].__r_.__value_.__r.__words[2] = *(a2 + 400);
  if ((v65 & 0x800) == 0)
  {
LABEL_107:
    if ((v65 & 0x1000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_135;
  }

LABEL_134:
  v3[17].__r_.__value_.__s.__data_[0] = *(a2 + 408);
  if ((v65 & 0x1000) == 0)
  {
LABEL_108:
    if ((v65 & 0x2000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_136;
  }

LABEL_135:
  v3[17].__r_.__value_.__s.__data_[1] = *(a2 + 409);
  if ((v65 & 0x2000) == 0)
  {
LABEL_109:
    if ((v65 & 0x4000) == 0)
    {
      goto LABEL_110;
    }

LABEL_137:
    v3[17].__r_.__value_.__s.__data_[3] = *(a2 + 411);
    if ((v65 & 0x8000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

LABEL_136:
  v3[17].__r_.__value_.__s.__data_[2] = *(a2 + 410);
  if ((v65 & 0x4000) != 0)
  {
    goto LABEL_137;
  }

LABEL_110:
  if ((v65 & 0x8000) != 0)
  {
LABEL_111:
    v3[17].__r_.__value_.__s.__data_[4] = *(a2 + 412);
  }

LABEL_112:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v65;
LABEL_113:
  v96 = *(a2 + 8);
  if (v96)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v96 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14D8698(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_150EABC(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_14D86C8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    result = sub_1523738(a1 + 248);
    if (result)
    {
      v3 = *(a1 + 280);
      while (v3 >= 1)
      {
        v4 = v3 - 1;
        v5 = sub_151E4EC(*(*(a1 + 288) + 8 * v3));
        v3 = v4;
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v6 = *(a1 + 352);
      while (v6 >= 1)
      {
        v7 = v6 - 1;
        v8 = sub_1525B30(*(*(a1 + 360) + 8 * v6));
        v6 = v7;
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      v9 = *(a1 + 40);
      return ((v9 & 4) == 0 || (~*(*(a1 + 480) + 16) & 3) == 0) && ((v9 & 8) == 0 || (~*(*(a1 + 488) + 16) & 9) == 0);
    }
  }

  return result;
}

uint64_t sub_14D8790(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = *(*(a1 + 40) + 8 * v3--);
    if ((*(v4 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = *(*(a1 + 64) + 8 * v5--);
    if ((*(v6 + 16) & 0x10) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 80);
  while (v7 >= 1)
  {
    v8 = *(*(a1 + 88) + 8 * v7--);
    if ((*(v8 + 16) & 2) == 0)
    {
      return 0;
    }
  }

  result = sub_150A9C0(a1 + 128);
  if (result)
  {
    v9 = *(a1 + 304);
    do
    {
      result = v9 < 1;
      if (v9 < 1)
      {
        break;
      }

      v10 = *(*(a1 + 312) + 8 * v9--);
    }

    while ((*(v10 + 16) & 2) != 0);
  }

  return result;
}

uint64_t sub_14D8864(uint64_t a1)
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

  if (a1 != &off_2774690 && *(a1 + 24))
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

void sub_14D891C(uint64_t a1)
{
  sub_14D8864(a1);

  operator delete();
}

unsigned __int8 *sub_14D8954(unsigned __int8 *result)
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
    *(v1 + 5) = 0x100000000;
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

char *sub_14D89C0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v33 + 1;
    v8 = *v33;
    if (*v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v33 + 2;
      }
    }

    v33 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_38;
      }

      v5 |= 2u;
      v24 = v7 + 1;
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_37:
        v33 = v24;
        *(a1 + 32) = v23;
        goto LABEL_46;
      }

      v31 = sub_19587DC(v7, v23);
      v33 = v31;
      *(a1 + 32) = v32;
      if (!v31)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_38;
      }

      v5 |= 4u;
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
        v33 = v16;
        *(a1 + 40) = v17;
        goto LABEL_46;
      }

      v29 = sub_1958770(v7, v17);
      v33 = v29;
      *(a1 + 40) = v30;
      if (!v29)
      {
        goto LABEL_58;
      }
    }

LABEL_46:
    if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
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
        v7 = v33;
      }

      v22 = sub_21F4D60(a3, v19, v7);
LABEL_45:
      v33 = v22;
      if (!v22)
      {
        goto LABEL_58;
      }

      goto LABEL_46;
    }
  }

  else if (v11 == 2 && v8 == 16)
  {
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if (v15 < 0)
    {
      v33 = sub_19587DC(v7, v13);
      if (!v33)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v14 = v7 + 2;
LABEL_17:
      v33 = v14;
    }

    if ((v13 - 1) > 2)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 44) = v13;
    }

    goto LABEL_46;
  }

LABEL_38:
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
      v7 = v33;
    }

    v22 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

char *sub_14D8C84(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 44);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v19 = *(a1 + 40);
    *v14 = 40;
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v14[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v14[2] = v19 >> 7;
      v18 = v14 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v21) = v14[2];
        do
        {
          *(v18 - 1) = v21 | 0x80;
          v21 = v20 >> 7;
          *v18++ = v20 >> 7;
          v22 = v20 >> 14;
          v20 >>= 7;
        }

        while (v22);
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

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v18;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = *(v25 + 31);
  if (v26 < 0)
  {
    v27 = *(v25 + 8);
    v26 = *(v25 + 16);
  }

  else
  {
    v27 = (v25 + 8);
  }

  if (*a3 - v18 >= v26)
  {
    v28 = v26;
    memcpy(v18, v27, v26);
    v18 += v28;
    return v18;
  }

  return sub_1957130(a3, v27, v26, v18);
}

uint64_t sub_14D8F1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_16;
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
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v5 = *(a1 + 44);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_16:
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

uint64_t sub_14D9038(uint64_t a1)
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

uint64_t sub_14D9078(uint64_t a1)
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

void sub_14D9118(uint64_t a1)
{
  sub_14D9078(a1);

  operator delete();
}

uint64_t sub_14D9150(uint64_t a1)
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

  if ((v1 & 6) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
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

uint64_t sub_14D91A0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v25, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v25 + 1);
    v8 = **v25;
    if (**v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v25 + 2);
      }
    }

    *v25 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_26:
      *v25 = v18;
      *(a1 + 40) = v17;
      goto LABEL_31;
    }

    v23 = sub_19587DC(v7, v17);
    *v25 = v23;
    *(a1 + 40) = v24;
    if (!v23)
    {
      goto LABEL_38;
    }

LABEL_31:
    if (sub_195ADC0(a3, v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 == 17)
    {
      v5 |= 2u;
      *(a1 + 32) = *v7;
      *v25 = v7 + 2;
      goto LABEL_31;
    }
  }

  else if (v11 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v16 = sub_1958890(v22, *v25, a3);
LABEL_30:
    *v25 = v16;
    if (!v16)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
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
      v7 = *v25;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_30;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_38:
  *v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v25;
}

char *sub_14D9394(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 17;
    *(v4 + 1) = v8;
    v4 += 9;
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
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

  v9 = *(a1 + 40);
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

uint64_t sub_14D9520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
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

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

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

std::string *sub_14D95DC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
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
LABEL_6:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
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

void *sub_14D96C4(void *a1)
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

void sub_14D9738(void *a1)
{
  sub_14D96C4(a1);

  operator delete();
}

uint64_t sub_14D9770(uint64_t a1)
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

char *sub_14D9798(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v28 + 1;
    v8 = *v28;
    if (*v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v28 + 2;
      }
    }

    v28 = v7;
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
      v28 = v16;
      *(a1 + 28) = v15 != 0;
      goto LABEL_35;
    }

    v23 = sub_19587DC(v7, v15);
    v28 = v23;
    *(a1 + 28) = v24 != 0;
    if (!v23)
    {
      goto LABEL_48;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v18 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v21 = (v20 << 7) + v19;
    v19 = (v21 - 128);
    if (v20 < 0)
    {
      v28 = sub_19587DC(v7, (v21 - 128));
      if (!v28)
      {
        goto LABEL_48;
      }

      v19 = v25;
    }

    else
    {
      v18 = v7 + 2;
LABEL_28:
      v28 = v18;
    }

    if ((v19 - 2) < 0xE || v19 == 0)
    {
      *(a1 + 16) |= 1u;
      *(a1 + 24) = v19;
    }

    else
    {
      v26 = *(a1 + 8);
      if (v26)
      {
        v27 = ((v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v27 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(1, v19, v27);
    }

    goto LABEL_35;
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
      v7 = v28;
    }

    v28 = sub_1952690(v8, v14, v7, a3);
    if (!v28)
    {
      goto LABEL_48;
    }

    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

char *sub_14D99D8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_14D9B38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
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

    v3 = v2 + (v1 & 2);
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