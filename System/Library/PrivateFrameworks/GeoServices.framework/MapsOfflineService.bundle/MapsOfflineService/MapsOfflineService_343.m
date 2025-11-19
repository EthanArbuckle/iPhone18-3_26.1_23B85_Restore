uint64_t sub_1427900(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      result += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v8 = *(a1 + 56);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v9;
    if ((v3 & 4) != 0)
    {
LABEL_5:
      result += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_6:
  v4 = *(a1 + 8);
  if (v4)
  {
    v10 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 44) = result;
  return result;
}

uint64_t sub_1427A20(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E1788;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 93) = 0;
  *(a1 + 104) = 1;
  return a1;
}

void sub_1427AA0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1427AD0(uint64_t a1)
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
  if (a1 != &off_2770878)
  {
    v6 = *(a1 + 88);
    if (v6)
    {
      sub_1427330(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 72);
  sub_144AF94((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1427BA4(uint64_t a1)
{
  sub_1427AD0(a1);

  operator delete();
}

unsigned __int8 *sub_1427BDC(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_141A60C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  *(a1 + 72) = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    result = sub_1427410(*(a1 + 88));
  }

  if ((v6 & 0xE) != 0)
  {
    *(a1 + 100) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
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

char *sub_1427C90(uint64_t a1, char *a2, int32x2_t *a3)
{
  v47 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v47, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v47 + 1;
    v8 = *v47;
    if (*v47 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v47, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v47 + 2;
      }
    }

    v47 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_72;
      }

      *(a1 + 40) |= 1u;
      v22 = *(a1 + 88);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_1435C14(v24);
        *(a1 + 88) = v22;
        v7 = v47;
      }

      v25 = sub_2209F48(a3, v22, v7);
LABEL_81:
      v47 = v25;
      if (!v25)
      {
        goto LABEL_88;
      }

      goto LABEL_82;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_72;
      }

      v32 = v7 + 1;
      v33 = *v7;
      if (v33 < 0)
      {
        v34 = *v32;
        v35 = (v34 << 7) + v33;
        LODWORD(v33) = v35 - 128;
        if ((v34 & 0x80000000) == 0)
        {
          v32 = v7 + 2;
          goto LABEL_56;
        }

        v47 = sub_19587DC(v7, (v35 - 128));
        if (!v47)
        {
          goto LABEL_88;
        }

        LODWORD(v33) = v41;
      }

      else
      {
LABEL_56:
        v47 = v32;
      }

      if (sub_144E2A0(v33))
      {
        *(a1 + 40) |= 2u;
        *(a1 + 96) = v33;
      }

      else
      {
        sub_12E8418();
      }

      goto LABEL_82;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_72;
    }

    v5 |= 8u;
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
      v47 = v13;
      *(a1 + 104) = v14;
      goto LABEL_82;
    }

    v39 = sub_1958770(v7, v14);
    v47 = v39;
    *(a1 + 104) = v40;
    if (!v39)
    {
      goto LABEL_88;
    }

LABEL_82:
    if (sub_195ADC0(a3, &v47, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  switch(v11)
  {
    case 4u:
      if (v8 == 34)
      {
        v26 = v7 - 1;
        while (1)
        {
          v27 = (v26 + 1);
          v47 = v26 + 1;
          v28 = *(a1 + 64);
          if (v28 && (v29 = *(a1 + 56), v29 < *v28))
          {
            *(a1 + 56) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            v31 = sub_141C160(*(a1 + 48));
            v30 = sub_19593CC(a1 + 48, v31);
            v27 = v47;
          }

          v26 = sub_2209FD8(a3, v30, v27);
          v47 = v26;
          if (!v26)
          {
            goto LABEL_88;
          }

          if (*a3 <= v26 || *v26 != 34)
          {
            goto LABEL_82;
          }
        }
      }

      break;
    case 5u:
      if (v8 != 40)
      {
        break;
      }

      v5 |= 4u;
      v37 = v7 + 1;
      v36 = *v7;
      if ((v36 & 0x8000000000000000) == 0)
      {
        goto LABEL_63;
      }

      v38 = *v37;
      v36 = (v38 << 7) + v36 - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v37 = v7 + 2;
LABEL_63:
        v47 = v37;
        *(a1 + 100) = v36 != 0;
        goto LABEL_82;
      }

      v42 = sub_19587DC(v7, v36);
      v47 = v42;
      *(a1 + 100) = v43 != 0;
      if (!v42)
      {
        goto LABEL_88;
      }

      goto LABEL_82;
    case 6u:
      if (v8 == 48)
      {
        v16 = v7 - 1;
        while (1)
        {
          v47 = v16 + 1;
          v17 = v16[1];
          if (v16[1] < 0)
          {
            v18 = v17 + (v16[2] << 7);
            v17 = v18 - 128;
            if (v16[2] < 0)
            {
              v16 = sub_1958770((v16 + 1), v18 - 128);
              v17 = v19;
            }

            else
            {
              v16 += 3;
            }
          }

          else
          {
            v16 += 2;
          }

          v47 = v16;
          v20 = *(a1 + 72);
          if (v20 == *(a1 + 76))
          {
            v21 = v20 + 1;
            sub_1958E5C((a1 + 72), v20 + 1);
            *(*(a1 + 80) + 4 * v20) = v17;
            v16 = v47;
          }

          else
          {
            *(*(a1 + 80) + 4 * v20) = v17;
            v21 = v20 + 1;
          }

          *(a1 + 72) = v21;
          if (!v16)
          {
            goto LABEL_88;
          }

          if (*a3 <= v16 || *v16 != 48)
          {
            goto LABEL_82;
          }
        }
      }

      if (v8 == 50)
      {
        v25 = sub_1958918((a1 + 72), v7, a3);
        goto LABEL_81;
      }

      break;
  }

LABEL_72:
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
    if (v8 - 7600 > 0x18F)
    {
      v45 = *(a1 + 8);
      if (v45)
      {
        v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v46 = sub_11F1920((a1 + 8));
        v7 = v47;
      }

      v25 = sub_1952690(v8, v46, v7, a3);
    }

    else
    {
      v25 = sub_19525AC((a1 + 16), v8, v7, &off_2770878, (a1 + 8), a3);
    }

    goto LABEL_81;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_88:
  v47 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v47;
}

char *sub_1428128(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 88);
    *a2 = 10;
    v7 = *(v6 + 44);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_1427710(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 96);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 104);
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
          LODWORD(v9) = v16 >> 7;
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
      *v14 = 34;
      v21 = *(v20 + 44);
      v14[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v14 + 1);
      }

      else
      {
        v22 = v14 + 2;
      }

      v14 = sub_141AA28(v20, v22, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v23 = *(a1 + 100);
    *v14 = 40;
    v14[1] = v23;
    v14 += 2;
  }

  v24 = *(a1 + 72);
  if (v24 < 1)
  {
    v27 = v14;
  }

  else
  {
    for (j = 0; j != v24; ++j)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v26 = *(*(a1 + 80) + 4 * j);
      *v14 = 48;
      v14[1] = v26;
      if (v26 > 0x7F)
      {
        v14[1] = v26 | 0x80;
        v28 = v26 >> 7;
        v14[2] = v26 >> 7;
        v27 = v14 + 3;
        if (v26 >= 0x4000)
        {
          LOBYTE(v14) = v14[2];
          do
          {
            *(v27 - 1) = v14 | 0x80;
            LODWORD(v14) = v28 >> 7;
            *v27++ = v28 >> 7;
            v29 = v28 >> 14;
            v28 >>= 7;
          }

          while (v29);
        }
      }

      else
      {
        v27 = v14 + 2;
      }

      v14 = v27;
    }
  }

  if (*(a1 + 26))
  {
    v27 = sub_1953428(a1 + 16, 950, 1000, v27, a3);
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v27;
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

  if (*a3 - v27 >= v33)
  {
    v35 = v33;
    memcpy(v27, v34, v33);
    v27 += v35;
    return v27;
  }

  return sub_1957130(a3, v34, v33, v27);
}

uint64_t sub_14284DC(uint64_t a1)
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
      v9 = sub_141ACC4(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = sub_1959E5C((a1 + 72)) + *(a1 + 72) + v4;
  v11 = *(a1 + 40);
  if ((v11 & 0xF) != 0)
  {
    if (v11)
    {
      v12 = sub_1427900(*(a1 + 88));
      v10 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v11 & 2) != 0)
    {
      v13 = *(a1 + 96);
      if (v13 < 0)
      {
        v14 = 11;
      }

      else
      {
        v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v10 += v14;
    }

    v10 += (v11 >> 1) & 2;
    if ((v11 & 8) != 0)
    {
      v10 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v10 += v18;
  }

  *(a1 + 44) = v10;
  return v10;
}

void sub_1428640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144BFD0((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v10 + v9);
    v11 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v11 + 4 * v10), *(a2 + 80), 4 * *(a2 + 72));
  }

  v12 = *(a2 + 40);
  if ((v12 & 0xF) != 0)
  {
    if (v12)
    {
      *(a1 + 40) |= 1u;
      v14 = *(a1 + 88);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_1435C14(v16);
        *(a1 + 88) = v14;
      }

      if (*(a2 + 88))
      {
        v17 = *(a2 + 88);
      }

      else
      {
        v17 = &off_2770838;
      }

      sub_140BB00(v14, v17);
      if ((v12 & 2) == 0)
      {
LABEL_9:
        if ((v12 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_26;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(a1 + 96) = *(a2 + 96);
    if ((v12 & 4) == 0)
    {
LABEL_10:
      if ((v12 & 8) == 0)
      {
LABEL_12:
        *(a1 + 40) |= v12;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_12;
    }

LABEL_26:
    *(a1 + 100) = *(a2 + 100);
    if ((v12 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  sub_225EA0C(a1 + 16, a2 + 16);
  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14287E4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_195228C(*(*(a1 + 64) + 8 * v3) + 16);
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 88) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_142886C(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E1808;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void sub_14288D0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1428900(uint64_t a1)
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
  if (a1 != &off_27708E8)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1427330(v6);
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

void sub_14289C0(uint64_t a1)
{
  sub_1428900(a1);

  operator delete();
}

unsigned __int8 *sub_14289F8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if (*(a1 + 40))
  {
    result = sub_1427410(*(a1 + 48));
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

char *sub_1428A5C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  if (sub_195ADC0(a3, &v17, a3[11].i32[1]))
  {
    return v17;
  }

  while (1)
  {
    v5 = v17 + 1;
    v6 = *v17;
    if (*v17 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(v17, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = v17 + 2;
      }
    }

    v17 = v5;
    if (v6 != 10)
    {
      break;
    }

    *(a1 + 40) |= 1u;
    v11 = *(a1 + 48);
    if (!v11)
    {
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_1435C14(v13);
      *(a1 + 48) = v11;
      v5 = v17;
    }

    v10 = sub_2209F48(a3, v11, v5);
LABEL_21:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }

    if (sub_195ADC0(a3, &v17, a3[11].i32[1]))
    {
      return v17;
    }
  }

  if (v6)
  {
    v9 = (v6 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (v6 - 7600 > 0x18F)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v15 = sub_11F1920((a1 + 8));
        v5 = v17;
      }

      v10 = sub_1952690(v6, v15, v5, a3);
    }

    else
    {
      v10 = sub_19525AC((a1 + 16), v6, v5, &off_27708E8, (a1 + 8), a3);
    }

    goto LABEL_21;
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return v17;
  }

  return 0;
}

char *sub_1428BEC(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  if (*(a1 + 40))
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *v4 = 10;
    v7 = *(v6 + 44);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_1427710(v6, v8, a3);
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 950, 1000, v4, a3);
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

uint64_t sub_1428D1C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  if (*(a1 + 40))
  {
    v3 = sub_1427900(*(a1 + 48));
    v2 += v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v2 += v7;
  }

  *(a1 + 44) = v2;
  return v2;
}

void sub_1428DA8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 48);
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

      v5 = sub_1435C14(v7);
      *(a1 + 48) = v5;
      v4 = *(a2 + 48);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2770838;
    }

    sub_140BB00(v5, v8);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1428E5C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 48) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_1428EB4(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26E1888;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0x100000000;
  return a1;
}

void sub_1428F28(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1428F58(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144B018(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1428FE0(void *a1)
{
  sub_1428F58(a1);

  operator delete();
}

unsigned __int8 *sub_1429018(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14289F8(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if ((*(a1 + 40) & 3) != 0)
  {
    *(a1 + 72) = 0x100000000;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_14290B8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
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
      v33 = v19;
      *(a1 + 76) = v20;
      goto LABEL_44;
    }

    v31 = sub_1958770(v7, v20);
    v33 = v31;
    *(a1 + 76) = v32;
    if (!v31)
    {
      goto LABEL_54;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v15 = v7 + 1;
    v16 = *v7;
    if (v16 < 0)
    {
      v17 = *v15;
      v18 = (v17 << 7) + v16;
      LODWORD(v16) = v18 - 128;
      if (v17 < 0)
      {
        v33 = sub_19587DC(v7, (v18 - 128));
        if (!v33)
        {
          goto LABEL_54;
        }

        LODWORD(v16) = v30;
        goto LABEL_24;
      }

      v15 = v7 + 2;
    }

    v33 = v15;
LABEL_24:
    if (sub_144E2A0(v16))
    {
      *(a1 + 40) |= 1u;
      *(a1 + 72) = v16;
    }

    else
    {
      sub_12E8418();
    }

    goto LABEL_44;
  }

  if (v11 == 1 && v8 == 10)
  {
    v22 = v7 - 1;
    while (1)
    {
      v23 = (v22 + 1);
      v33 = v22 + 1;
      v24 = *(a1 + 64);
      if (v24 && (v25 = *(a1 + 56), v25 < *v24))
      {
        *(a1 + 56) = v25 + 1;
        v26 = *&v24[2 * v25 + 2];
      }

      else
      {
        v27 = sub_1435CCC(*(a1 + 48));
        v26 = sub_19593CC(a1 + 48, v27);
        v23 = v33;
      }

      v22 = sub_220A068(a3, v26, v23);
      v33 = v22;
      if (!v22)
      {
        goto LABEL_54;
      }

      if (*a3 <= v22 || *v22 != 10)
      {
        goto LABEL_44;
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
    if (v8 - 7600 > 0x18F)
    {
      v28 = *(a1 + 8);
      if (v28)
      {
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v29 = sub_11F1920((a1 + 8));
        v7 = v33;
      }

      v14 = sub_1952690(v8, v29, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_2770920, (a1 + 8), a3);
    }

    v33 = v14;
    if (!v14)
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  v33 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v33;
}

char *sub_1429394(uint64_t a1, char *a2, void *a3)
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

      a2 = sub_1428BEC(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 72);
    *a2 = 16;
    a2[1] = v13;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      a2[2] = v13 >> 7;
      v12 = a2 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v12 - 1) = a2 | 0x80;
          a2 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
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

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 76);
    *v12 = 24;
    v12[1] = v17;
    if (v17 > 0x7F)
    {
      v12[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[2] = v17 >> 7;
      v16 = v12 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v16 - 1) = v12 | 0x80;
          LODWORD(v12) = v18 >> 7;
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v12 + 2;
    }
  }

  else
  {
    v16 = v12;
  }

  if (*(a1 + 26))
  {
    v16 = sub_1953428(a1 + 16, 950, 1000, v16, a3);
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

uint64_t sub_1429600(uint64_t a1)
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
      v9 = sub_1428D1C(v8);
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
      v11 = *(a1 + 72);
      if (v11 < 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v12;
    }

    if ((v10 & 2) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v4 += v16;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1429714(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144C05C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
      *(a1 + 72) = *(a2 + 72);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 76) = *(a2 + 76);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_142980C(uint64_t a1)
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
    v5 = sub_1428E5C(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

void *sub_1429884(void *a1)
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

void sub_14298F8(void *a1)
{
  sub_1429884(a1);

  operator delete();
}

uint64_t sub_1429930(uint64_t a1)
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

char *sub_1429958(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 32) = v16;
      goto LABEL_29;
    }

    v21 = sub_1958770(v7, v16);
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

char *sub_1429B3C(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_1429CEC(uint64_t a1)
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void *sub_1429DA0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_144B09C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1429E20(void *a1)
{
  sub_1429DA0(a1);

  operator delete();
}

uint64_t sub_1429E58(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1429930(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1429ED4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  if ((sub_195ADC0(a3, &v19, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v19 + 1;
      v6 = *v19;
      if (*v19 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v19, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v19 + 2;
        }
      }

      v19 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          v19 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_1435D84(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_220A0F8(a3, v16, v13);
          v19 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_23;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v11 = sub_11F1920((a1 + 8));
        v5 = v19;
      }

      v19 = sub_1952690(v6, v11, v5, a3);
      if (!v19)
      {
        return 0;
      }

LABEL_23:
      if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
      {
        return v19;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v19;
    }

    return 0;
  }

  return v19;
}

char *sub_142A064(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
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

      __dst = sub_1429B3C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_142A1A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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
      v7 = sub_1429CEC(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

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

  *(a1 + 40) = v2;
  return v2;
}

std::string *sub_142A24C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_144C0E8(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_142A320(uint64_t a1)
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

void sub_142A3C0(uint64_t a1)
{
  sub_142A320(a1);

  operator delete();
}

uint64_t sub_142A3F8(uint64_t a1)
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

  if ((v1 & 0x1E) != 0)
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

uint64_t sub_142A44C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v40 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v40, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v40 + 1);
    v8 = **v40;
    if (**v40 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v40, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v40 + 2);
      }
    }

    *v40 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_40;
      }

      v5 |= 2u;
      v27 = v7 + 1;
      v26 = *v7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_39:
        *v40 = v27;
        *(a1 + 32) = v26;
        goto LABEL_48;
      }

      v36 = sub_19587DC(v7, v26);
      *v40 = v36;
      *(a1 + 32) = v37;
      if (!v36)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_40;
      }

      v5 |= 4u;
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
        *v40 = v18;
        *(a1 + 40) = v17;
        goto LABEL_48;
      }

      v38 = sub_19587DC(v7, v17);
      *v40 = v38;
      *(a1 + 40) = v39;
      if (!v38)
      {
        goto LABEL_61;
      }
    }

LABEL_48:
    if (sub_195ADC0(a3, v40, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_40;
    }

    v5 |= 8u;
    v20 = v7 + 1;
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_29:
      *v40 = v20;
      *(a1 + 48) = v21;
      goto LABEL_48;
    }

    v32 = sub_1958770(v7, v21);
    *v40 = v32;
    *(a1 + 48) = v33;
    if (!v32)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_40;
    }

    v5 |= 0x10u;
    v23 = v7 + 1;
    v24 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v23;
    v24 = v24 + (v25 << 7) - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_34:
      *v40 = v23;
      *(a1 + 52) = v24;
      goto LABEL_48;
    }

    v34 = sub_1958770(v7, v24);
    *v40 = v34;
    *(a1 + 52) = v35;
    if (!v34)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 1u;
    v12 = *(a1 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v14 = sub_194DB04((a1 + 24), v13);
    v15 = sub_1958890(v14, *v40, a3);
LABEL_47:
    *v40 = v15;
    if (!v15)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
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
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v7 = *v40;
    }

    v15 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_47;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  *v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v40;
}

char *sub_142A74C(uint64_t a1, char *__dst, void *a3)
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

    v12 = *(a1 + 40);
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

    v16 = *(a1 + 48);
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

    v20 = *(a1 + 52);
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

  if (v5)
  {
    v19 = sub_128AEEC(a3, 5, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v19);
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

uint64_t sub_142AA28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_14;
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
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_12:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_12;
  }

  v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_13:
    v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

std::string *sub_142AB5C(std::string *result, uint64_t a2)
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

        goto LABEL_17;
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

      goto LABEL_18;
    }

LABEL_17:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
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

LABEL_18:
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
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

uint64_t sub_142AC64(uint64_t a1)
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
  if (a1 != &off_27709D8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_142A320(v6);
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

void sub_142AD1C(uint64_t a1)
{
  sub_142AC64(a1);

  operator delete();
}

uint64_t sub_142AD54(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_142A3F8(*(result + 24));
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

char *sub_142ADB0(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_1435EA0(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_220A188(a3, v14, v6);
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

char *sub_142AEF4(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_142A74C(v6, v8, a3);
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

  if ((*a3 - v4) >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_142B000(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_142AA28(*(a1 + 24));
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

std::string *sub_142B080(std::string *result, uint64_t a2)
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

      data = sub_1435EA0(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_27709A0;
    }

    result = sub_142AB5C(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_142B140(void *a1)
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

void sub_142B1B4(void *a1)
{
  sub_142B140(a1);

  operator delete();
}

uint64_t sub_142B1EC(uint64_t a1)
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

char *sub_142B204(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v17, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v17 + 1;
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v17, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v17 + 2;
      }
    }

    v17 = v6;
    if (v7 == 8)
    {
      v14 = v6 + 1;
      v13 = *v6;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if (v15 < 0)
      {
        v17 = sub_19587DC(v6, v13);
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        v14 = v6 + 2;
LABEL_19:
        v17 = v14;
      }

      if (v13 > 4)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v13;
      }

      continue;
    }

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
        return v17;
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
      v6 = v17;
    }

    v17 = sub_1952690(v7, v12, v6, a3);
    if (!v17)
    {
      return 0;
    }
  }

  return v17;
}

char *sub_142B36C(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_142B494(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
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

    v1 += v6;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_142B518(uint64_t a1)
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

  if (a1 != &off_2770A18 && *(a1 + 40))
  {
    sub_145847C();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_142B5D8(uint64_t a1)
{
  sub_142B518(a1);

  operator delete();
}

uint64_t sub_142B610(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_144E5CC(*(result + 40));
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

char *sub_142B674(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 40);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        sub_14BAE64(v25);
        v23 = v26;
        *(a1 + 40) = v26;
        v7 = v32;
      }

      v16 = sub_22095B8(a3, v23, v7);
LABEL_40:
      v32 = v16;
      if (!v16)
      {
        goto LABEL_55;
      }

      goto LABEL_46;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v27 = v7 + 1;
    v28 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v29 = *v27;
    v28 = v28 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_45:
      v32 = v27;
      *(a1 + 48) = v28;
      goto LABEL_46;
    }

    v30 = sub_1958770(v7, v28);
    v32 = v30;
    *(a1 + 48) = v31;
    if (!v30)
    {
      goto LABEL_55;
    }

LABEL_46:
    if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 16)
  {
    v17 = v7 - 1;
    while (1)
    {
      v32 = v17 + 1;
      v18 = v17[1];
      if (v17[1] < 0)
      {
        v19 = v18 + (v17[2] << 7);
        v18 = v19 - 128;
        if (v17[2] < 0)
        {
          v17 = sub_1958770((v17 + 1), v19 - 128);
          v18 = v20;
        }

        else
        {
          v17 += 3;
        }
      }

      else
      {
        v17 += 2;
      }

      v32 = v17;
      v21 = *(a1 + 24);
      if (v21 == *(a1 + 28))
      {
        v22 = v21 + 1;
        sub_1958E5C((a1 + 24), v21 + 1);
        *(*(a1 + 32) + 4 * v21) = v18;
        v17 = v32;
      }

      else
      {
        *(*(a1 + 32) + 4 * v21) = v18;
        v22 = v21 + 1;
      }

      *(a1 + 24) = v22;
      if (!v17)
      {
        goto LABEL_55;
      }

      if (*a3 <= v17 || *v17 != 16)
      {
        goto LABEL_46;
      }
    }
  }

  if (v8 == 18)
  {
    v16 = sub_1958918((a1 + 24), v7, a3);
    goto LABEL_40;
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
      v7 = v32;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_142B934(uint64_t a1, char *a2, unint64_t *a3)
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
            LODWORD(v6) = v15 >> 7;
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

  if (v5)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v17 = *(a1 + 40);
    *v14 = 26;
    v18 = *(v17 + 20);
    v14[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, v14 + 1);
    }

    else
    {
      v19 = v14 + 2;
    }

    v14 = sub_14589F4(v17, v19, a3);
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v14;
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

  if ((*a3 - v14) >= v23)
  {
    v25 = v23;
    memcpy(v14, v24, v23);
    v14 += v25;
    return v14;
  }

  return sub_1957130(a3, v24, v23, v14);
}

uint64_t sub_142BB80(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = sub_1458DB4(*(a1 + 40));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v2 += v8;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_142BC48(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      *(a1 + 16) |= 1u;
      v9 = *(a1 + 40);
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        sub_14BAE64(v11);
        *(a1 + 40) = v9;
      }

      if (*(a2 + 40))
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = &off_2771738;
      }

      sub_144EF20(v9, v12);
    }

    if ((v8 & 2) != 0)
    {
      *(a1 + 48) = *(a2 + 48);
    }

    *(a1 + 16) |= v8;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_142BD5C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_142BD9C(uint64_t a1)
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

  sub_142BE20(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_142BE20(uint64_t (***result)()))()
{
  if (result != &off_2770A50)
  {
    v1 = result;
    if (result[3])
    {
      sub_145847C();
      operator delete();
    }

    if (result[4])
    {
      sub_145847C();
      operator delete();
    }

    v2 = result[5];
    if (v2)
    {
      sub_142B140(v2);
      operator delete();
    }

    v3 = v1[6];
    if (v3)
    {
      sub_142B518(v3);
      operator delete();
    }

    if (v1[7])
    {
      sub_145DD98();
      operator delete();
    }

    result = v1[8];
    if (result)
    {
      sub_145DD98();

      operator delete();
    }
  }

  return result;
}

void sub_142BF1C(uint64_t a1)
{
  sub_142BD9C(a1);

  operator delete();
}

uint64_t sub_142BF54(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_14;
  }

  if (v2)
  {
    result = sub_144E5CC(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      v3 = *(v1 + 40);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_144E5CC(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ((v2 & 8) != 0)
  {
    result = sub_142B610(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_12:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_12;
  }

  result = sub_145DDD4(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_13:
    result = sub_145DDD4(*(v1 + 64));
  }

LABEL_14:
  if ((v2 & 0xC0) != 0)
  {
    *(v1 + 76) = 0;
    *(v1 + 72) = 0;
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

char *sub_142C02C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v45, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v45 + 1;
    v8 = *v45;
    if (*v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v45 + 2;
      }
    }

    v45 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 != 3)
      {
        if (v11 == 4 && v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v20 = *(a1 + 40);
          if (!v20)
          {
            v21 = *(a1 + 8);
            v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if (v21)
            {
              v22 = *v22;
            }

            v20 = sub_1435FA0(v22);
            *(a1 + 40) = v20;
            v7 = v45;
          }

          v23 = sub_220A218(a3, v20, v7);
          goto LABEL_74;
        }

        goto LABEL_67;
      }

      if (v8 != 26)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 2u;
      v13 = *(a1 + 32);
      if (!v13)
      {
        v33 = *(a1 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        sub_14BAE64(v34);
        v13 = v35;
        *(a1 + 32) = v35;
        goto LABEL_58;
      }

LABEL_59:
      v23 = sub_22095B8(a3, v13, v7);
      goto LABEL_74;
    }

    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_67;
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

        sub_14BAE64(v15);
        v13 = v16;
        *(a1 + 24) = v16;
LABEL_58:
        v7 = v45;
        goto LABEL_59;
      }

      goto LABEL_59;
    }

    if (v8 != 8)
    {
      goto LABEL_67;
    }

    v5 |= 0x40u;
    v27 = v7 + 1;
    v28 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v29 = *v27;
    v28 = v28 + (v29 << 7) - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_46:
      v45 = v27;
      *(a1 + 72) = v28;
      goto LABEL_75;
    }

    v41 = sub_1958770(v7, v28);
    v45 = v41;
    *(a1 + 72) = v42;
    if (!v41)
    {
      goto LABEL_84;
    }

LABEL_75:
    if (sub_195ADC0(a3, &v45, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 6)
  {
    if (v11 == 7)
    {
      if (v8 != 58)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 0x10u;
      v24 = *(a1 + 56);
      if (!v24)
      {
        v36 = *(a1 + 8);
        v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if (v36)
        {
          v37 = *v37;
        }

        v24 = sub_14BB324(v37);
        *(a1 + 56) = v24;
        goto LABEL_65;
      }
    }

    else
    {
      if (v11 != 8 || v8 != 66)
      {
        goto LABEL_67;
      }

      *(a1 + 16) |= 0x20u;
      v24 = *(a1 + 64);
      if (!v24)
      {
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v24 = sub_14BB324(v26);
        *(a1 + 64) = v24;
LABEL_65:
        v7 = v45;
      }
    }

    v23 = sub_220A338(a3, v24, v7);
    goto LABEL_74;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_67;
    }

    v5 |= 0x80u;
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
      v45 = v18;
      *(a1 + 76) = v17 != 0;
      goto LABEL_75;
    }

    v43 = sub_19587DC(v7, v17);
    v45 = v43;
    *(a1 + 76) = v44 != 0;
    if (!v43)
    {
      goto LABEL_84;
    }

    goto LABEL_75;
  }

  if (v8 == 42)
  {
    *(a1 + 16) |= 8u;
    v30 = *(a1 + 48);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_143601C(v32);
      *(a1 + 48) = v30;
      v7 = v45;
    }

    v23 = sub_220A2A8(a3, v30, v7);
LABEL_74:
    v45 = v23;
    if (!v23)
    {
      goto LABEL_84;
    }

    goto LABEL_75;
  }

LABEL_67:
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
      v7 = v45;
    }

    v23 = sub_1952690(v8, v40, v7, a3);
    goto LABEL_74;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_84:
  v45 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v45;
}

char *sub_142C430(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 72);
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

    v6 = sub_14589F4(v11, v13, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v14 = *(a1 + 32);
  *v6 = 26;
  v15 = *(v14 + 20);
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v6 + 1);
  }

  else
  {
    v16 = v6 + 2;
  }

  v6 = sub_14589F4(v14, v16, a3);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_30:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v17 = *(a1 + 40);
  *v6 = 34;
  v18 = *(v17 + 20);
  v6[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v6 + 1);
  }

  else
  {
    v19 = v6 + 2;
  }

  v6 = sub_142B36C(v17, v19, a3);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_36:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 48);
  *v6 = 42;
  v21 = *(v20 + 20);
  v6[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v6 + 1);
  }

  else
  {
    v22 = v6 + 2;
  }

  v6 = sub_142B934(v20, v22, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v23 = *(a1 + 76);
  *v6 = 48;
  v6[1] = v23;
  v6 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

LABEL_45:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v24 = *(a1 + 56);
  *v6 = 58;
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

  v6 = sub_145E07C(v24, v26, a3);
  if ((v5 & 0x20) != 0)
  {
LABEL_51:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v27 = *(a1 + 64);
    *v6 = 66;
    v28 = *(v27 + 20);
    v6[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v6 + 1);
    }

    else
    {
      v29 = v6 + 2;
    }

    v6 = sub_145E07C(v27, v29, a3);
  }

LABEL_57:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v33)
  {
    v35 = v33;
    memcpy(v6, v34, v33);
    v6 += v35;
    return v6;
  }

  return sub_1957130(a3, v34, v33, v6);
}

uint64_t sub_142C810(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = sub_1458DB4(*(a1 + 24));
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
    v6 = sub_1458DB4(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v8 = sub_142B494(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v9 = sub_142BB80(*(a1 + 48));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v11 = sub_145E23C(*(a1 + 64));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  v10 = sub_145E23C(*(a1 + 56));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v2 & 0x40) != 0)
  {
LABEL_13:
    v3 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  result = v3 + ((v2 >> 6) & 2);
LABEL_15:
  v7 = *(a1 + 8);
  if (v7)
  {
    v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    result += v13;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_142C9E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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

        sub_14BAE64(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2771738;
      }

      sub_144EF20(v5, v8);
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

    *(a1 + 16) |= 2u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_14BAE64(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2771738;
    }

    sub_144EF20(v9, v12);
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
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_1435FA0(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_27709F8;
    }

    sub_12B9D50(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_39:
      if ((v4 & 0x10) != 0)
      {
        *(a1 + 16) |= 0x10u;
        v22 = *(a1 + 56);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_14BB324(v24);
          *(a1 + 56) = v22;
        }

        if (*(a2 + 56))
        {
          v25 = *(a2 + 56);
        }

        else
        {
          v25 = &off_27719B0;
        }

        sub_145E314(v22, v25);
        if ((v4 & 0x20) == 0)
        {
LABEL_41:
          if ((v4 & 0x40) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_65;
        }
      }

      else if ((v4 & 0x20) == 0)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 0x20u;
      v26 = *(a1 + 64);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_14BB324(v28);
        *(a1 + 64) = v26;
      }

      if (*(a2 + 64))
      {
        v29 = *(a2 + 64);
      }

      else
      {
        v29 = &off_27719B0;
      }

      sub_145E314(v26, v29);
      if ((v4 & 0x40) == 0)
      {
LABEL_42:
        if ((v4 & 0x80) == 0)
        {
LABEL_44:
          *(a1 + 16) |= v4;
          goto LABEL_45;
        }

LABEL_43:
        *(a1 + 76) = *(a2 + 76);
        goto LABEL_44;
      }

LABEL_65:
      *(a1 + 72) = *(a2 + 72);
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

LABEL_31:
    *(a1 + 16) |= 8u;
    v17 = *(a1 + 48);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_143601C(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_2770A18;
    }

    sub_142BC48(v17, v20);
    goto LABEL_39;
  }

LABEL_45:
  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_142CC4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F560(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    v4 = *(a1 + 48);
    if (*(v4 + 16))
    {
      result = sub_144F560(*(v4 + 40));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_145E434(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = sub_145E434(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_142CCF0(uint64_t a1)
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

  sub_142CD80(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144B120((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_142CD80(uint64_t (***result)()))()
{
  if (result != &off_2770AA0)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      sub_142B518(v2);
      operator delete();
    }

    if (v1[7])
    {
      sub_145DD98();
      operator delete();
    }

    if (v1[8])
    {
      sub_145DD98();
      operator delete();
    }

    result = v1[9];
    if (result)
    {
      sub_145DD98();

      operator delete();
    }
  }

  return result;
}

void sub_142CE38(uint64_t a1)
{
  sub_142CCF0(a1);

  operator delete();
}

uint64_t sub_142CE70(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_142BF54(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = sub_145DDD4(*(v1 + 56));
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  result = sub_142B610(*(v1 + 48));
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  result = sub_145DDD4(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = sub_145DDD4(*(v1 + 72));
  }

LABEL_11:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_142CF3C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v33, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v33 + 1;
    v7 = *v33;
    if (*v33 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v33, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v33 + 2;
      }
    }

    v33 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 3)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          v23 = v6 - 1;
          while (1)
          {
            v24 = (v23 + 1);
            v33 = v23 + 1;
            v25 = *(a1 + 40);
            if (v25 && (v26 = *(a1 + 32), v26 < *v25))
            {
              *(a1 + 32) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              sub_14360B8(*(a1 + 24));
              v27 = sub_19593CC(a1 + 24, v28);
              v24 = v33;
            }

            v23 = sub_220A3C8(a3, v27, v24);
            v33 = v23;
            if (!v23)
            {
              return 0;
            }

            if (*a3 <= v23 || *v23 != 10)
            {
              goto LABEL_57;
            }
          }
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_143601C(v17);
          *(a1 + 48) = v15;
          v6 = v33;
        }

        v18 = sub_220A2A8(a3, v15, v6);
        goto LABEL_56;
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 2u;
        v11 = *(a1 + 56);
        if (v11)
        {
          goto LABEL_38;
        }

        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v11 = sub_14BB324(v20);
        *(a1 + 56) = v11;
LABEL_37:
        v6 = v33;
        goto LABEL_38;
      }
    }

    else if (v10 == 5)
    {
      if (v7 == 42)
      {
        *(a1 + 16) |= 4u;
        v11 = *(a1 + 64);
        if (v11)
        {
          goto LABEL_38;
        }

        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v11 = sub_14BB324(v22);
        *(a1 + 64) = v11;
        goto LABEL_37;
      }
    }

    else if (v10 == 6 && v7 == 50)
    {
      *(a1 + 16) |= 8u;
      v11 = *(a1 + 72);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_14BB324(v13);
        *(a1 + 72) = v11;
        goto LABEL_37;
      }

LABEL_38:
      v18 = sub_220A338(a3, v11, v6);
      goto LABEL_56;
    }

    if (v7)
    {
      v29 = (v7 & 7) == 4;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v33;
      }

      return 0;
    }

    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v6 = v33;
    }

    v18 = sub_1952690(v7, v31, v6, a3);
LABEL_56:
    v33 = v18;
    if (!v18)
    {
      return 0;
    }

LABEL_57:
    ;
  }

  return v33;
}

char *sub_142D218(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_142C430(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 18;
    v13 = *(v12 + 20);
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, __dst + 1);
    }

    else
    {
      v14 = __dst + 2;
    }

    __dst = sub_142B934(v12, v14, a3);
    if ((v11 & 2) == 0)
    {
LABEL_11:
      if ((v11 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v15 = *(a1 + 56);
  *__dst = 34;
  v16 = *(v15 + 20);
  __dst[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, __dst + 1);
  }

  else
  {
    v17 = __dst + 2;
  }

  __dst = sub_145E07C(v15, v17, a3);
  if ((v11 & 4) == 0)
  {
LABEL_12:
    if ((v11 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v18 = *(a1 + 64);
  *__dst = 42;
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

  __dst = sub_145E07C(v18, v20, a3);
  if ((v11 & 8) != 0)
  {
LABEL_32:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v21 = *(a1 + 72);
    *__dst = 50;
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

    __dst = sub_145E07C(v21, v23, a3);
  }

LABEL_38:
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

  if ((*a3 - __dst) >= v27)
  {
    v29 = v27;
    memcpy(__dst, v28, v27);
    __dst += v29;
    return __dst;
  }

  return sub_1957130(a3, v28, v27, __dst);
}

uint64_t sub_142D4FC(uint64_t a1)
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
      v7 = sub_142C810(v6);
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v13 = sub_145E23C(*(a1 + 56));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v12 = sub_142BB80(*(a1 + 48));
  v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  v14 = sub_145E23C(*(a1 + 64));
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
LABEL_14:
    v9 = sub_145E23C(*(a1 + 72));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v10 = *(a1 + 8);
  if (v10)
  {
    v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v2 += v16;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_142D680(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144C164((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 48);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_143601C(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_2770A18;
      }

      sub_142BC48(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
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

        v14 = sub_14BB324(v16);
        *(a1 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_27719B0;
      }

      sub_145E314(v14, v17);
      if ((v9 & 4) == 0)
      {
LABEL_16:
        if ((v9 & 8) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_34;
      }
    }

    else if ((v9 & 4) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 16) |= 4u;
    v18 = *(a1 + 64);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_14BB324(v20);
      *(a1 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v21 = *(a2 + 64);
    }

    else
    {
      v21 = &off_27719B0;
    }

    sub_145E314(v18, v21);
    if ((v9 & 8) != 0)
    {
LABEL_34:
      *(a1 + 16) |= 8u;
      v22 = *(a1 + 72);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_14BB324(v24);
        *(a1 + 72) = v22;
      }

      if (*(a2 + 72))
      {
        v25 = *(a2 + 72);
      }

      else
      {
        v25 = &off_27719B0;
      }

      sub_145E314(v22, v25);
    }
  }

LABEL_42:
  v26 = *(a2 + 8);
  if (v26)
  {

    sub_1957EF4((a1 + 8), (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_142D874(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_142CC4C(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 48);
    if (*(v7 + 16))
    {
      result = sub_144F560(*(v7 + 40));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 16);
    }
  }

  if ((v6 & 2) != 0)
  {
    result = sub_145E434(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) != 0)
  {
    result = sub_145E434(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) == 0)
  {
    return 1;
  }

  result = sub_145E434(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_142D930(uint64_t a1)
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

  if (a1 != &off_2770AF0)
  {
    if (*(a1 + 24))
    {
      sub_14B662C();
      operator delete();
    }

    if (*(a1 + 32))
    {
      sub_145847C();
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

void sub_142DA00(uint64_t a1)
{
  sub_142D930(a1);

  operator delete();
}

uint64_t sub_142DA38(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_144E6A8(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_144E5CC(*(v1 + 32));
    }
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

char *sub_142DAA8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v23, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v23 + 1;
    v7 = *v23;
    if (*v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v23 + 2;
      }
    }

    v23 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_14BAE64(v17);
          v15 = v18;
          *(a1 + 32) = v18;
          v6 = v23;
        }

        v14 = sub_22095B8(a3, v15, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
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

        v19 = sub_14BF484(v21);
        *(a1 + 24) = v19;
        v6 = v23;
      }

      v14 = sub_2209138(a3, v19, v6);
      goto LABEL_30;
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
        return v23;
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
      v6 = v23;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_30:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

char *sub_142DC50(uint64_t a1, unint64_t __dst, unint64_t *a3)
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
    v8 = *(v7 + 44);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_14B6D24(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
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

    v4 = sub_14589F4(v10, v12, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_142DDCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_14B71B8(*(a1 + 24));
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
    v5 = sub_1458DB4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v3 += v9;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_142DE9C(uint64_t a1, uint64_t a2)
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

        v5 = sub_14BF484(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2773AC8;
      }

      sub_144F194(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        sub_14BAE64(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_2771738;
      }

      sub_144EF20(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_142DFA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_144F5D0(*(a1 + 24));
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

  result = sub_144F560(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_142DFFC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E1D88;
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
  *(a1 + 112) = 0u;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = &qword_278E990;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  return a1;
}

void sub_142E0B8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_142E0E8(void *a1)
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

  sub_142E1C0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144B3B4(a1 + 22);
  sub_144B330(a1 + 19);
  sub_1956ABC((a1 + 17));
  sub_1956ABC((a1 + 15));
  sub_144B2AC(a1 + 12);
  sub_144B228(a1 + 9);
  sub_144B1A4(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_142E1C0(uint64_t a1)
{
  v3 = *(a1 + 200);
  result = (a1 + 200);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2770B18)
  {
    v4 = *(a1 + 208);
    if (v4)
    {
      sub_1425630(v4);
      operator delete();
    }

    if (*(a1 + 216))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 224))
    {
      sub_14609A0();
      operator delete();
    }

    v5 = *(a1 + 232);
    if (v5)
    {
      sub_1427AD0(v5);
      operator delete();
    }

    v6 = *(a1 + 240);
    if (v6)
    {
      sub_1428F58(v6);
      operator delete();
    }

    v7 = *(a1 + 248);
    if (v7)
    {
      sub_1429DA0(v7);
      operator delete();
    }

    v8 = *(a1 + 256);
    if (v8)
    {
      sub_142AC64(v8);
      operator delete();
    }

    v9 = *(a1 + 264);
    if (v9)
    {
      sub_142CCF0(v9);
      operator delete();
    }

    result = *(a1 + 272);
    if (result)
    {
      sub_1481624();

      operator delete();
    }
  }

  return result;
}

void sub_142E344(void *a1)
{
  sub_142E0E8(a1);

  operator delete();
}

uint64_t sub_142E37C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_14261A4(v5);
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
      result = sub_14246C0(v8);
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
      result = sub_1425084(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  v12 = *(a1 + 160);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 168) + 8);
    do
    {
      v14 = *v13++;
      result = sub_142DA38(v14);
      --v12;
    }

    while (v12);
    *(a1 + 160) = 0;
  }

  v15 = *(a1 + 184);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 192) + 8);
    do
    {
      v17 = *v16++;
      result = sub_1434D24(v17);
      --v15;
    }

    while (v15);
    *(a1 + 184) = 0;
  }

  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_36;
  }

  if (v18)
  {
    v19 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v19 + 23) < 0)
    {
      **v19 = 0;
      *(v19 + 8) = 0;
      if ((v18 & 2) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    *v19 = 0;
    *(v19 + 23) = 0;
  }

  if ((v18 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v20 = *(a1 + 208);
  v21 = *(v20 + 8);
  result = v20 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v21)
  {
    result = sub_1957EA8(result);
  }

LABEL_29:
  if ((v18 & 4) != 0)
  {
    result = sub_16E4E44(*(a1 + 216));
    if ((v18 & 8) == 0)
    {
LABEL_31:
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_51;
    }
  }

  else if ((v18 & 8) == 0)
  {
    goto LABEL_31;
  }

  result = sub_14609DC(*(a1 + 224));
  if ((v18 & 0x10) == 0)
  {
LABEL_32:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_52:
    result = sub_1429018(*(a1 + 240));
    if ((v18 & 0x40) == 0)
    {
LABEL_34:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_53;
  }

LABEL_51:
  result = sub_1427BDC(*(a1 + 232));
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_52;
  }

LABEL_33:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_53:
  result = sub_1429E58(*(a1 + 248));
  if ((v18 & 0x80) != 0)
  {
LABEL_35:
    result = sub_142AD54(*(a1 + 256));
  }

LABEL_36:
  if ((v18 & 0x300) != 0)
  {
    if ((v18 & 0x100) != 0)
    {
      result = sub_142CE70(*(a1 + 264));
    }

    if ((v18 & 0x200) != 0)
    {
      result = sub_1481660(*(a1 + 272));
    }
  }

  if ((v18 & 0xFC00) != 0)
  {
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
  }

  if ((v18 & 0xFF0000) != 0)
  {
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
  }

  v23 = *(a1 + 8);
  v22 = a1 + 8;
  *(v22 + 328) = 0;
  *(v22 + 32) = 0;
  if (v23)
  {

    return sub_1957EA8(v22);
  }

  return result;
}

uint64_t sub_142E5A8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v159 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v159, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v159 + 1);
      v8 = **v159;
      if (**v159 < 0)
      {
        v8 = v8 + (*v7 << 7) - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(*v159, v8);
        }

        else
        {
          v7 = (*v159 + 2);
        }
      }

      *v159 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_258;
          }

          v10 = (v7 + 1);
          v9 = *v7;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v11 = *v10;
          v9 = (v11 << 7) + v9 - 128;
          if (v11 < 0)
          {
            *v159 = sub_19587DC(v7, v9);
            if (!*v159)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v10 = (v7 + 2);
LABEL_12:
            *v159 = v10;
          }

          if (v9 > 0xA)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 40) |= 0x400u;
            *(a1 + 280) = v9;
          }

          goto LABEL_268;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_258;
          }

          v5 |= 0x800u;
          v64 = (v7 + 1);
          v65 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

          v66 = *v64;
          v65 = v65 + (v66 << 7) - 128;
          if (v66 < 0)
          {
            v141 = sub_1958770(v7, v65);
            *v159 = v141;
            *(a1 + 284) = v142;
            if (!v141)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v64 = (v7 + 2);
LABEL_111:
            *v159 = v64;
            *(a1 + 284) = v65;
          }

          goto LABEL_268;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_258;
          }

          v5 |= 0x1000u;
          v43 = (v7 + 1);
          v44 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_72;
          }

          v45 = *v43;
          v44 = v44 + (v45 << 7) - 128;
          if (v45 < 0)
          {
            v137 = sub_1958770(v7, v44);
            *v159 = v137;
            *(a1 + 288) = v138;
            if (!v137)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_72:
            *v159 = v43;
            *(a1 + 288) = v44;
          }

          goto LABEL_268;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_258;
          }

          v94 = v7 - 1;
          while (1)
          {
            v95 = v94 + 1;
            *v159 = v94 + 1;
            v96 = *(a1 + 64);
            if (v96 && (v97 = *(a1 + 56), v97 < *v96))
            {
              *(a1 + 56) = v97 + 1;
              v98 = *&v96[2 * v97 + 2];
            }

            else
            {
              v99 = sub_1435BB8(*(a1 + 48));
              v98 = sub_19593CC(a1 + 48, v99);
              v95 = *v159;
            }

            v94 = sub_220A458(a3, v98, v95);
            *v159 = v94;
            if (!v94)
            {
              goto LABEL_275;
            }

            if (*a3 <= v94 || *v94 != 34)
            {
              goto LABEL_268;
            }
          }

        case 6u:
          if (v8 != 48)
          {
            goto LABEL_258;
          }

          v5 |= 0x2000u;
          v101 = (v7 + 1);
          v100 = *v7;
          if ((v100 & 0x8000000000000000) == 0)
          {
            goto LABEL_175;
          }

          v102 = *v101;
          v100 = (v102 << 7) + v100 - 128;
          if (v102 < 0)
          {
            v145 = sub_19587DC(v7, v100);
            *v159 = v145;
            *(a1 + 292) = v146 != 0;
            if (!v145)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v101 = (v7 + 2);
LABEL_175:
            *v159 = v101;
            *(a1 + 292) = v100 != 0;
          }

          goto LABEL_268;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_258;
          }

          v5 |= 0x4000u;
          v55 = (v7 + 1);
          v56 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_93;
          }

          v57 = *v55;
          v56 = v56 + (v57 << 7) - 128;
          if (v57 < 0)
          {
            v139 = sub_1958770(v7, v56);
            *v159 = v139;
            *(a1 + 296) = v140;
            if (!v139)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v55 = (v7 + 2);
LABEL_93:
            *v159 = v55;
            *(a1 + 296) = v56;
          }

          goto LABEL_268;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_258;
          }

          v67 = (v7 - 1);
          while (1)
          {
            v68 = (v67 + 1);
            *v159 = v67 + 1;
            v69 = *(a1 + 88);
            if (v69 && (v70 = *(a1 + 80), v70 < *v69))
            {
              *(a1 + 80) = v70 + 1;
              v71 = *&v69[2 * v70 + 2];
            }

            else
            {
              v72 = sub_1435A28(*(a1 + 72));
              v71 = sub_19593CC(a1 + 72, v72);
              v68 = *v159;
            }

            v67 = sub_220A4E8(a3, v71, v68);
            *v159 = v67;
            if (!v67)
            {
              goto LABEL_275;
            }

            if (*a3 <= v67 || *v67 != 74)
            {
              goto LABEL_268;
            }
          }

        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_258;
          }

          v73 = (v7 - 1);
          while (1)
          {
            v74 = (v73 + 1);
            *v159 = v73 + 1;
            v75 = *(a1 + 112);
            if (v75 && (v76 = *(a1 + 104), v76 < *v75))
            {
              *(a1 + 104) = v76 + 1;
              v77 = *&v75[2 * v76 + 2];
            }

            else
            {
              v78 = sub_1435A84(*(a1 + 96));
              v77 = sub_19593CC(a1 + 96, v78);
              v74 = *v159;
            }

            v73 = sub_220A578(a3, v77, v74);
            *v159 = v73;
            if (!v73)
            {
              goto LABEL_275;
            }

            if (*a3 <= v73 || *v73 != 82)
            {
              goto LABEL_268;
            }
          }

        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_258;
          }

          v5 |= 0x8000u;
          v106 = (v7 + 1);
          v107 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_186;
          }

          v108 = *v106;
          v107 = v107 + (v108 << 7) - 128;
          if (v108 < 0)
          {
            v147 = sub_1958770(v7, v107);
            *v159 = v147;
            *(a1 + 300) = v148;
            if (!v147)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v106 = (v7 + 2);
LABEL_186:
            *v159 = v106;
            *(a1 + 300) = v107;
          }

          goto LABEL_268;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 2u;
          v103 = *(a1 + 208);
          if (!v103)
          {
            v104 = *(a1 + 8);
            v105 = (v104 & 0xFFFFFFFFFFFFFFFCLL);
            if (v104)
            {
              v105 = *v105;
            }

            v103 = sub_1435AE0(v105);
            *(a1 + 208) = v103;
            v7 = *v159;
          }

          v24 = sub_220A608(a3, v103, v7);
          goto LABEL_267;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 4u;
          v28 = *(a1 + 216);
          if (!v28)
          {
            v29 = *(a1 + 8);
            v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v30 = *v30;
            }

            v28 = sub_16F5828(v30);
            *(a1 + 216) = v28;
            v7 = *v159;
          }

          v24 = sub_21F4D60(a3, v28, v7);
          goto LABEL_267;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_258;
          }

          v59 = (v7 + 1);
          v58 = *v7;
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_98;
          }

          v60 = *v59;
          v58 = (v60 << 7) + v58 - 128;
          if (v60 < 0)
          {
            *v159 = sub_19587DC(v7, v58);
            if (!*v159)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v59 = (v7 + 2);
LABEL_98:
            *v159 = v59;
          }

          if (v58 > 5)
          {
            sub_12E8538();
          }

          else
          {
            *(a1 + 40) |= 0x10000u;
            *(a1 + 304) = v58;
          }

          goto LABEL_268;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 8u;
          v37 = *(a1 + 224);
          if (!v37)
          {
            v38 = *(a1 + 8);
            v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
            if (v38)
            {
              v39 = *v39;
            }

            v37 = sub_14BB45C(v39);
            *(a1 + 224) = v37;
            v7 = *v159;
          }

          v24 = sub_220A698(a3, v37, v7);
          goto LABEL_267;
        case 0x13u:
          if (v8 != 152)
          {
            goto LABEL_258;
          }

          v5 |= 0x20000u;
          v18 = (v7 + 1);
          v19 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          v20 = *v18;
          v19 = v19 + (v20 << 7) - 128;
          if (v20 < 0)
          {
            v131 = sub_1958770(v7, v19);
            *v159 = v131;
            *(a1 + 308) = v132;
            if (!v131)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v18 = (v7 + 2);
LABEL_29:
            *v159 = v18;
            *(a1 + 308) = v19;
          }

          goto LABEL_268;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_258;
          }

          v5 |= 0x40000u;
          v79 = (v7 + 1);
          v80 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_136;
          }

          v81 = *v79;
          v80 = v80 + (v81 << 7) - 128;
          if (v81 < 0)
          {
            v143 = sub_1958770(v7, v80);
            *v159 = v143;
            *(a1 + 312) = v144;
            if (!v143)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v79 = (v7 + 2);
LABEL_136:
            *v159 = v79;
            *(a1 + 312) = v80;
          }

          goto LABEL_268;
        case 0x16u:
          if (v8 == 176)
          {
            v82 = (v7 - 2);
            while (1)
            {
              *v159 = v82 + 2;
              v83 = *(v82 + 2);
              if (*(v82 + 2) < 0)
              {
                v84 = v83 + (*(v82 + 3) << 7);
                v83 = v84 - 128;
                if (*(v82 + 3) < 0)
                {
                  v82 = sub_1958770(v82 + 2, v84 - 128);
                  v83 = v85;
                }

                else
                {
                  v82 += 4;
                }
              }

              else
              {
                v82 += 3;
              }

              *v159 = v82;
              v86 = *(a1 + 120);
              if (v86 == *(a1 + 124))
              {
                v87 = v86 + 1;
                sub_1958E5C((a1 + 120), v86 + 1);
                *(*(a1 + 128) + 4 * v86) = v83;
                v82 = *v159;
              }

              else
              {
                *(*(a1 + 128) + 4 * v86) = v83;
                v87 = v86 + 1;
              }

              *(a1 + 120) = v87;
              if (!v82)
              {
                goto LABEL_275;
              }

              if (*a3 <= v82 || *v82 != 432)
              {
                goto LABEL_268;
              }
            }
          }

          if (v8 == 178)
          {
            v153 = (a1 + 120);
LABEL_257:
            v24 = sub_1958918(v153, v7, a3);
          }

          else
          {
LABEL_258:
            if (v8)
            {
              v154 = (v8 & 7) == 4;
            }

            else
            {
              v154 = 1;
            }

            if (v154)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_275:
              *v159 = 0;
              goto LABEL_2;
            }

            if (v8 - 7600 > 0x18F)
            {
              v155 = *(a1 + 8);
              if (v155)
              {
                v156 = (v155 & 0xFFFFFFFFFFFFFFFCLL) + 8;
              }

              else
              {
                v157 = v8;
                v158 = sub_11F1920((a1 + 8));
                v8 = v157;
                v156 = v158;
                v7 = *v159;
              }

              v24 = sub_1952690(v8, v156, v7, a3);
            }

            else
            {
              v24 = sub_19525AC((a1 + 16), v8, v7, &off_2770B18, (a1 + 8), a3);
            }
          }

LABEL_267:
          *v159 = v24;
          if (!v24)
          {
            goto LABEL_275;
          }

LABEL_268:
          if (sub_195ADC0(a3, v159, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 0x17u:
          if (v8 == 184)
          {
            v112 = (v7 - 2);
            while (1)
            {
              *v159 = v112 + 2;
              v113 = *(v112 + 2);
              if (*(v112 + 2) < 0)
              {
                v114 = v113 + (*(v112 + 3) << 7);
                v113 = v114 - 128;
                if (*(v112 + 3) < 0)
                {
                  v112 = sub_1958770(v112 + 2, v114 - 128);
                  v113 = v115;
                }

                else
                {
                  v112 += 4;
                }
              }

              else
              {
                v112 += 3;
              }

              *v159 = v112;
              v116 = *(a1 + 136);
              if (v116 == *(a1 + 140))
              {
                v117 = v116 + 1;
                sub_1958E5C((a1 + 136), v116 + 1);
                *(*(a1 + 144) + 4 * v116) = v113;
                v112 = *v159;
              }

              else
              {
                *(*(a1 + 144) + 4 * v116) = v113;
                v117 = v116 + 1;
              }

              *(a1 + 136) = v117;
              if (!v112)
              {
                goto LABEL_275;
              }

              if (*a3 <= v112 || *v112 != 440)
              {
                goto LABEL_268;
              }
            }
          }

          if (v8 != 186)
          {
            goto LABEL_258;
          }

          v153 = (a1 + 136);
          goto LABEL_257;
        case 0x18u:
          if (v8 != 192)
          {
            goto LABEL_258;
          }

          v5 |= 0x80000u;
          v109 = (v7 + 1);
          v110 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_191;
          }

          v111 = *v109;
          v110 = v110 + (v111 << 7) - 128;
          if (v111 < 0)
          {
            v149 = sub_1958770(v7, v110);
            *v159 = v149;
            *(a1 + 316) = v150;
            if (!v149)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v109 = (v7 + 2);
LABEL_191:
            *v159 = v109;
            *(a1 + 316) = v110;
          }

          goto LABEL_268;
        case 0x19u:
          if (v8 != 200)
          {
            goto LABEL_258;
          }

          v5 |= 0x100000u;
          v12 = (v7 + 1);
          v13 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          v14 = *v12;
          v13 = v13 + (v14 << 7) - 128;
          if (v14 < 0)
          {
            v127 = sub_1958770(v7, v13);
            *v159 = v127;
            *(a1 + 320) = v128;
            if (!v127)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v12 = (v7 + 2);
LABEL_19:
            *v159 = v12;
            *(a1 + 320) = v13;
          }

          goto LABEL_268;
        case 0x1Au:
          if (v8 != 208)
          {
            goto LABEL_258;
          }

          v5 |= 0x200000u;
          v40 = (v7 + 1);
          v41 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_67;
          }

          v42 = *v40;
          v41 = v41 + (v42 << 7) - 128;
          if (v42 < 0)
          {
            v135 = sub_1958770(v7, v41);
            *v159 = v135;
            *(a1 + 324) = v136;
            if (!v135)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v40 = (v7 + 2);
LABEL_67:
            *v159 = v40;
            *(a1 + 324) = v41;
          }

          goto LABEL_268;
        case 0x1Bu:
          if (v8 != 216)
          {
            goto LABEL_258;
          }

          v5 |= 0x400000u;
          v118 = (v7 + 1);
          v119 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_210;
          }

          v120 = *v118;
          v119 = v119 + (v120 << 7) - 128;
          if (v120 < 0)
          {
            v151 = sub_1958770(v7, v119);
            *v159 = v151;
            *(a1 + 328) = v152;
            if (!v151)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v118 = (v7 + 2);
LABEL_210:
            *v159 = v118;
            *(a1 + 328) = v119;
          }

          goto LABEL_268;
        case 0x1Cu:
          if (v8 != 224)
          {
            goto LABEL_258;
          }

          v5 |= 0x800000u;
          v15 = (v7 + 1);
          v16 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v15;
          v16 = v16 + (v17 << 7) - 128;
          if (v17 < 0)
          {
            v129 = sub_1958770(v7, v16);
            *v159 = v129;
            *(a1 + 332) = v130;
            if (!v129)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v15 = (v7 + 2);
LABEL_24:
            *v159 = v15;
            *(a1 + 332) = v16;
          }

          goto LABEL_268;
        case 0x1Du:
          if (v8 != 232)
          {
            goto LABEL_258;
          }

          v5 |= 0x1000000u;
          v34 = (v7 + 1);
          v35 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          v36 = *v34;
          v35 = v35 + (v36 << 7) - 128;
          if (v36 < 0)
          {
            v133 = sub_1958770(v7, v35);
            *v159 = v133;
            *(a1 + 336) = v134;
            if (!v133)
            {
              goto LABEL_275;
            }
          }

          else
          {
            v34 = (v7 + 2);
LABEL_56:
            *v159 = v34;
            *(a1 + 336) = v35;
          }

          goto LABEL_268;
        case 0x1Eu:
          if (v8 != 242)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x10u;
          v25 = *(a1 + 232);
          if (!v25)
          {
            v26 = *(a1 + 8);
            v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
            if (v26)
            {
              v27 = *v27;
            }

            v25 = sub_1435C70(v27);
            *(a1 + 232) = v25;
            v7 = *v159;
          }

          v24 = sub_220A728(a3, v25, v7);
          goto LABEL_267;
        case 0x1Fu:
          if (v8 != 250)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x20u;
          v61 = *(a1 + 240);
          if (!v61)
          {
            v62 = *(a1 + 8);
            v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
            if (v62)
            {
              v63 = *v63;
            }

            v61 = sub_1435D28(v63);
            *(a1 + 240) = v61;
            v7 = *v159;
          }

          v24 = sub_220A7B8(a3, v61, v7);
          goto LABEL_267;
        case 0x20u:
          if (v8 != 2)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 1u;
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v23 = sub_194DB04((a1 + 200), v22);
          v24 = sub_1958890(v23, *v159, a3);
          goto LABEL_267;
        case 0x21u:
          if (v8 != 10)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x40u;
          v124 = *(a1 + 248);
          if (!v124)
          {
            v125 = *(a1 + 8);
            v126 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
            if (v125)
            {
              v126 = *v126;
            }

            v124 = sub_1435E00(v126);
            *(a1 + 248) = v124;
            v7 = *v159;
          }

          v24 = sub_220A848(a3, v124, v7);
          goto LABEL_267;
        case 0x22u:
          if (v8 != 18)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x80u;
          v121 = *(a1 + 256);
          if (!v121)
          {
            v122 = *(a1 + 8);
            v123 = (v122 & 0xFFFFFFFFFFFFFFFCLL);
            if (v122)
            {
              v123 = *v123;
            }

            v121 = sub_1435F28(v123);
            *(a1 + 256) = v121;
            v7 = *v159;
          }

          v24 = sub_220A8D8(a3, v121, v7);
          goto LABEL_267;
        case 0x23u:
          if (v8 != 26)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x100u;
          v31 = *(a1 + 264);
          if (!v31)
          {
            v32 = *(a1 + 8);
            v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
            if (v32)
            {
              v33 = *v33;
            }

            v31 = sub_143613C(v33);
            *(a1 + 264) = v31;
            v7 = *v159;
          }

          v24 = sub_220A968(a3, v31, v7);
          goto LABEL_267;
        case 0x24u:
          if (v8 != 34)
          {
            goto LABEL_258;
          }

          v46 = (v7 - 2);
          while (1)
          {
            v47 = (v46 + 2);
            *v159 = v46 + 2;
            v48 = *(a1 + 168);
            if (v48 && (v49 = *(a1 + 160), v49 < *v48))
            {
              *(a1 + 160) = v49 + 1;
              v50 = *&v48[2 * v49 + 2];
            }

            else
            {
              v51 = sub_14361DC(*(a1 + 152));
              v50 = sub_19593CC(a1 + 152, v51);
              v47 = *v159;
            }

            v46 = sub_220A9F8(a3, v50, v47);
            *v159 = v46;
            if (!v46)
            {
              goto LABEL_275;
            }

            if (*a3 <= v46 || *v46 != 674)
            {
              goto LABEL_268;
            }
          }

        case 0x25u:
          if (v8 != 42)
          {
            goto LABEL_258;
          }

          v88 = (v7 - 2);
          while (1)
          {
            v89 = (v88 + 2);
            *v159 = v88 + 2;
            v90 = *(a1 + 192);
            if (v90 && (v91 = *(a1 + 184), v91 < *v90))
            {
              *(a1 + 184) = v91 + 1;
              v92 = *&v90[2 * v91 + 2];
            }

            else
            {
              v93 = sub_1436404(*(a1 + 176));
              v92 = sub_19593CC(a1 + 176, v93);
              v89 = *v159;
            }

            v88 = sub_220AA88(a3, v92, v89);
            *v159 = v88;
            if (!v88)
            {
              goto LABEL_275;
            }

            if (*a3 <= v88 || *v88 != 682)
            {
              goto LABEL_268;
            }
          }

        case 0x26u:
          if (v8 != 50)
          {
            goto LABEL_258;
          }

          *(a1 + 40) |= 0x200u;
          v52 = *(a1 + 272);
          if (!v52)
          {
            v53 = *(a1 + 8);
            v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
            if (v53)
            {
              v54 = *v54;
            }

            v52 = sub_14BCF4C(v54);
            *(a1 + 272) = v52;
            v7 = *v159;
          }

          v24 = sub_2209D08(a3, v52, v7);
          goto LABEL_267;
        default:
          goto LABEL_258;
      }
    }
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return *v159;
}

char *sub_142F4EC(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 280);
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

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 284);
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

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 288);
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

  v19 = *(a1 + 56);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 64) + 8 * i + 8);
      *v15 = 34;
      v22 = *(v21 + 44);
      v15[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v15 + 1);
      }

      else
      {
        v23 = v15 + 2;
      }

      v15 = sub_14267C8(v21, v23, a3);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v24 = *(a1 + 292);
    *v15 = 48;
    v15[1] = v24;
    v15 += 2;
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v26 = *(a1 + 296);
    *v15 = 56;
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
          LODWORD(v15) = v27 >> 7;
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

  v29 = *(a1 + 80);
  if (v29)
  {
    for (j = 0; j != v29; ++j)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v31 = *(*(a1 + 88) + 8 * j + 8);
      *v25 = 74;
      v32 = *(v31 + 44);
      v25[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v25 + 1);
      }

      else
      {
        v33 = v25 + 2;
      }

      v25 = sub_1424A9C(v31, v33, a3);
    }
  }

  v34 = *(a1 + 104);
  if (v34)
  {
    for (k = 0; k != v34; ++k)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v36 = *(*(a1 + 112) + 8 * k + 8);
      *v25 = 82;
      v37 = *(v36 + 44);
      v25[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v25 + 1);
      }

      else
      {
        v38 = v25 + 2;
      }

      v25 = sub_142530C(v36, v38, a3);
    }
  }

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v40 = *(a1 + 300);
    *v25 = 88;
    v25[1] = v40;
    if (v40 > 0x7F)
    {
      v25[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v25[2] = v40 >> 7;
      v39 = v25 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v25) = v25[2];
        do
        {
          *(v39 - 1) = v25 | 0x80;
          LODWORD(v25) = v41 >> 7;
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v25 + 2;
    }
  }

  else
  {
    v39 = v25;
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_76;
    }

LABEL_84:
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v47 = *(a1 + 216);
    *v39 = 114;
    v48 = *(v47 + 44);
    v39[1] = v48;
    if (v48 > 0x7F)
    {
      v49 = sub_19575D0(v48, v39 + 1);
    }

    else
    {
      v49 = v39 + 2;
    }

    v39 = sub_16E5070(v47, v49, a3);
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_90;
  }

  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v44 = *(a1 + 208);
  *v39 = 98;
  v45 = *(v44 + 20);
  v39[1] = v45;
  if (v45 > 0x7F)
  {
    v46 = sub_19575D0(v45, v39 + 1);
  }

  else
  {
    v46 = v39 + 2;
  }

  v39 = sub_142585C(v44, v46, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_84;
  }

LABEL_76:
  if ((v5 & 0x10000) == 0)
  {
LABEL_77:
    v43 = v39;
    goto LABEL_97;
  }

LABEL_90:
  if (*a3 <= v39)
  {
    v39 = sub_225EB68(a3, v39);
  }

  v50 = *(a1 + 304);
  *v39 = 120;
  v39[1] = v50;
  if (v50 > 0x7F)
  {
    v39[1] = v50 | 0x80;
    v51 = v50 >> 7;
    v39[2] = v50 >> 7;
    v43 = v39 + 3;
    if (v50 >= 0x4000)
    {
      LOBYTE(v39) = v39[2];
      do
      {
        *(v43 - 1) = v39 | 0x80;
        v39 = (v51 >> 7);
        *v43++ = v51 >> 7;
        v52 = v51 >> 14;
        v51 >>= 7;
      }

      while (v52);
    }
  }

  else
  {
    v43 = v39 + 2;
  }

LABEL_97:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v53 = *(a1 + 224);
    *v43 = 394;
    v54 = *(v53 + 44);
    v43[2] = v54;
    if (v54 > 0x7F)
    {
      v55 = sub_19575D0(v54, v43 + 2);
    }

    else
    {
      v55 = v43 + 3;
    }

    v43 = sub_1460F40(v53, v55, a3);
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v57 = *(a1 + 308);
    *v43 = 408;
    v43[2] = v57;
    if (v57 > 0x7F)
    {
      v43[2] = v57 | 0x80;
      v58 = v57 >> 7;
      v43[3] = v57 >> 7;
      v56 = v43 + 4;
      if (v57 >= 0x4000)
      {
        LOBYTE(v43) = v43[3];
        do
        {
          *(v56 - 1) = v43 | 0x80;
          LODWORD(v43) = v58 >> 7;
          *v56++ = v58 >> 7;
          v59 = v58 >> 14;
          v58 >>= 7;
        }

        while (v59);
      }
    }

    else
    {
      v56 = v43 + 3;
    }
  }

  else
  {
    v56 = v43;
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v61 = *(a1 + 312);
    *v56 = 416;
    v56[2] = v61;
    if (v61 > 0x7F)
    {
      v56[2] = v61 | 0x80;
      v62 = v61 >> 7;
      v56[3] = v61 >> 7;
      v60 = v56 + 4;
      if (v61 >= 0x4000)
      {
        LOBYTE(v56) = v56[3];
        do
        {
          *(v60 - 1) = v56 | 0x80;
          LODWORD(v56) = v62 >> 7;
          *v60++ = v62 >> 7;
          v63 = v62 >> 14;
          v62 >>= 7;
        }

        while (v63);
      }
    }

    else
    {
      v60 = v56 + 3;
    }
  }

  else
  {
    v60 = v56;
  }

  v64 = *(a1 + 120);
  if (v64 < 1)
  {
    v67 = v60;
  }

  else
  {
    for (m = 0; m != v64; ++m)
    {
      if (*a3 <= v60)
      {
        v60 = sub_225EB68(a3, v60);
      }

      v66 = *(*(a1 + 128) + 4 * m);
      *v60 = 432;
      v60[2] = v66;
      if (v66 > 0x7F)
      {
        v60[2] = v66 | 0x80;
        v68 = v66 >> 7;
        v60[3] = v66 >> 7;
        v67 = v60 + 4;
        if (v66 >= 0x4000)
        {
          LOBYTE(v60) = v60[3];
          do
          {
            *(v67 - 1) = v60 | 0x80;
            LODWORD(v60) = v68 >> 7;
            *v67++ = v68 >> 7;
            v69 = v68 >> 14;
            v68 >>= 7;
          }

          while (v69);
        }
      }

      else
      {
        v67 = v60 + 3;
      }

      v60 = v67;
    }
  }

  v70 = *(a1 + 136);
  if (v70 < 1)
  {
    v73 = v67;
  }

  else
  {
    for (n = 0; n != v70; ++n)
    {
      if (*a3 <= v67)
      {
        v67 = sub_225EB68(a3, v67);
      }

      v72 = *(*(a1 + 144) + 4 * n);
      *v67 = 440;
      v67[2] = v72;
      if (v72 > 0x7F)
      {
        v67[2] = v72 | 0x80;
        v74 = v72 >> 7;
        v67[3] = v72 >> 7;
        v73 = v67 + 4;
        if (v72 >= 0x4000)
        {
          LOBYTE(v75) = v67[3];
          do
          {
            *(v73 - 1) = v75 | 0x80;
            v75 = v74 >> 7;
            *v73++ = v74 >> 7;
            v76 = v74 >> 14;
            v74 >>= 7;
          }

          while (v76);
        }
      }

      else
      {
        v73 = v67 + 3;
      }

      v67 = v73;
    }
  }

  if ((v5 & 0x80000) != 0)
  {
    if (*a3 <= v73)
    {
      v73 = sub_225EB68(a3, v73);
    }

    v78 = *(a1 + 316);
    *v73 = 448;
    v73[2] = v78;
    if (v78 > 0x7F)
    {
      v73[2] = v78 | 0x80;
      v79 = v78 >> 7;
      v73[3] = v78 >> 7;
      v77 = v73 + 4;
      if (v78 >= 0x4000)
      {
        LOBYTE(v73) = v73[3];
        do
        {
          *(v77 - 1) = v73 | 0x80;
          LODWORD(v73) = v79 >> 7;
          *v77++ = v79 >> 7;
          v80 = v79 >> 14;
          v79 >>= 7;
        }

        while (v80);
      }
    }

    else
    {
      v77 = v73 + 3;
    }
  }

  else
  {
    v77 = v73;
  }

  if ((v5 & 0x100000) != 0)
  {
    if (*a3 <= v77)
    {
      v77 = sub_225EB68(a3, v77);
    }

    v82 = *(a1 + 320);
    *v77 = 456;
    v77[2] = v82;
    if (v82 > 0x7F)
    {
      v77[2] = v82 | 0x80;
      v83 = v82 >> 7;
      v77[3] = v82 >> 7;
      v81 = v77 + 4;
      if (v82 >= 0x4000)
      {
        LOBYTE(v84) = v77[3];
        do
        {
          *(v81 - 1) = v84 | 0x80;
          v84 = v83 >> 7;
          *v81++ = v83 >> 7;
          v85 = v83 >> 14;
          v83 >>= 7;
        }

        while (v85);
      }
    }

    else
    {
      v81 = v77 + 3;
    }
  }

  else
  {
    v81 = v77;
  }

  if ((v5 & 0x200000) != 0)
  {
    if (*a3 <= v81)
    {
      v81 = sub_225EB68(a3, v81);
    }

    v87 = *(a1 + 324);
    *v81 = 464;
    v81[2] = v87;
    if (v87 > 0x7F)
    {
      v81[2] = v87 | 0x80;
      v88 = v87 >> 7;
      v81[3] = v87 >> 7;
      v86 = v81 + 4;
      if (v87 >= 0x4000)
      {
        LOBYTE(v81) = v81[3];
        do
        {
          *(v86 - 1) = v81 | 0x80;
          LODWORD(v81) = v88 >> 7;
          *v86++ = v88 >> 7;
          v89 = v88 >> 14;
          v88 >>= 7;
        }

        while (v89);
      }
    }

    else
    {
      v86 = v81 + 3;
    }
  }

  else
  {
    v86 = v81;
  }

  if ((v5 & 0x400000) != 0)
  {
    if (*a3 <= v86)
    {
      v86 = sub_225EB68(a3, v86);
    }

    v91 = *(a1 + 328);
    *v86 = 472;
    v86[2] = v91;
    if (v91 > 0x7F)
    {
      v86[2] = v91 | 0x80;
      v92 = v91 >> 7;
      v86[3] = v91 >> 7;
      v90 = v86 + 4;
      if (v91 >= 0x4000)
      {
        LOBYTE(v93) = v86[3];
        do
        {
          *(v90 - 1) = v93 | 0x80;
          v93 = v92 >> 7;
          *v90++ = v92 >> 7;
          v94 = v92 >> 14;
          v92 >>= 7;
        }

        while (v94);
      }
    }

    else
    {
      v90 = v86 + 3;
    }
  }

  else
  {
    v90 = v86;
  }

  if ((v5 & 0x800000) != 0)
  {
    if (*a3 <= v90)
    {
      v90 = sub_225EB68(a3, v90);
    }

    v96 = *(a1 + 332);
    *v90 = 480;
    v90[2] = v96;
    if (v96 > 0x7F)
    {
      v90[2] = v96 | 0x80;
      v97 = v96 >> 7;
      v90[3] = v96 >> 7;
      v95 = v90 + 4;
      if (v96 >= 0x4000)
      {
        LOBYTE(v90) = v90[3];
        do
        {
          *(v95 - 1) = v90 | 0x80;
          LODWORD(v90) = v97 >> 7;
          *v95++ = v97 >> 7;
          v98 = v97 >> 14;
          v97 >>= 7;
        }

        while (v98);
      }
    }

    else
    {
      v95 = v90 + 3;
    }
  }

  else
  {
    v95 = v90;
  }

  if ((v5 & 0x1000000) != 0)
  {
    if (*a3 <= v95)
    {
      v95 = sub_225EB68(a3, v95);
    }

    v100 = *(a1 + 336);
    *v95 = 488;
    v95[2] = v100;
    if (v100 > 0x7F)
    {
      v95[2] = v100 | 0x80;
      v101 = v100 >> 7;
      v95[3] = v100 >> 7;
      v99 = v95 + 4;
      if (v100 >= 0x4000)
      {
        LOBYTE(v102) = v95[3];
        do
        {
          *(v99 - 1) = v102 | 0x80;
          v102 = v101 >> 7;
          *v99++ = v101 >> 7;
          v103 = v101 >> 14;
          v101 >>= 7;
        }

        while (v103);
      }
    }

    else
    {
      v99 = v95 + 3;
    }
  }

  else
  {
    v99 = v95;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v99)
    {
      v99 = sub_225EB68(a3, v99);
    }

    v104 = *(a1 + 232);
    *v99 = 498;
    v105 = *(v104 + 44);
    v99[2] = v105;
    if (v105 > 0x7F)
    {
      v106 = sub_19575D0(v105, v99 + 2);
    }

    else
    {
      v106 = v99 + 3;
    }

    v99 = sub_1428128(v104, v106, a3);
    if ((v5 & 0x20) == 0)
    {
LABEL_202:
      if ((v5 & 1) == 0)
      {
        goto LABEL_203;
      }

      goto LABEL_219;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_202;
  }

  if (*a3 <= v99)
  {
    v99 = sub_225EB68(a3, v99);
  }

  v107 = *(a1 + 240);
  *v99 = 506;
  v108 = *(v107 + 44);
  v99[2] = v108;
  if (v108 > 0x7F)
  {
    v109 = sub_19575D0(v108, v99 + 2);
  }

  else
  {
    v109 = v99 + 3;
  }

  v99 = sub_1429394(v107, v109, a3);
  if ((v5 & 1) == 0)
  {
LABEL_203:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_220;
  }

LABEL_219:
  v99 = sub_128AEEC(a3, 32, *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL, v99);
  if ((v5 & 0x40) == 0)
  {
LABEL_204:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_226;
  }

LABEL_220:
  if (*a3 <= v99)
  {
    v99 = sub_225EB68(a3, v99);
  }

  v110 = *(a1 + 248);
  *v99 = 650;
  v111 = *(v110 + 40);
  v99[2] = v111;
  if (v111 > 0x7F)
  {
    v112 = sub_19575D0(v111, v99 + 2);
  }

  else
  {
    v112 = v99 + 3;
  }

  v99 = sub_142A064(v110, v112, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_205:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_232;
  }

LABEL_226:
  if (*a3 <= v99)
  {
    v99 = sub_225EB68(a3, v99);
  }

  v113 = *(a1 + 256);
  *v99 = 658;
  v114 = *(v113 + 20);
  v99[2] = v114;
  if (v114 > 0x7F)
  {
    v115 = sub_19575D0(v114, v99 + 2);
  }

  else
  {
    v115 = v99 + 3;
  }

  v99 = sub_142AEF4(v113, v115, a3);
  if ((v5 & 0x100) != 0)
  {
LABEL_232:
    if (*a3 <= v99)
    {
      v99 = sub_225EB68(a3, v99);
    }

    v116 = *(a1 + 264);
    *v99 = 666;
    v117 = *(v116 + 20);
    v99[2] = v117;
    if (v117 > 0x7F)
    {
      v118 = sub_19575D0(v117, v99 + 2);
    }

    else
    {
      v118 = v99 + 3;
    }

    v99 = sub_142D218(v116, v118, a3);
  }

LABEL_238:
  v119 = *(a1 + 160);
  if (v119)
  {
    for (ii = 0; ii != v119; ++ii)
    {
      if (*a3 <= v99)
      {
        v99 = sub_225EB68(a3, v99);
      }

      v121 = *(*(a1 + 168) + 8 * ii + 8);
      *v99 = 674;
      v122 = *(v121 + 20);
      v99[2] = v122;
      if (v122 > 0x7F)
      {
        v123 = sub_19575D0(v122, v99 + 2);
      }

      else
      {
        v123 = v99 + 3;
      }

      v99 = sub_142DC50(v121, v123, a3);
    }
  }

  v124 = *(a1 + 184);
  if (v124)
  {
    for (jj = 0; jj != v124; ++jj)
    {
      if (*a3 <= v99)
      {
        v99 = sub_225EB68(a3, v99);
      }

      v126 = *(*(a1 + 192) + 8 * jj + 8);
      *v99 = 682;
      v127 = *(v126 + 20);
      v99[2] = v127;
      if (v127 > 0x7F)
      {
        v128 = sub_19575D0(v127, v99 + 2);
      }

      else
      {
        v128 = v99 + 3;
      }

      v99 = sub_1434F98(v126, v128, a3);
    }
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v99)
    {
      v99 = sub_225EB68(a3, v99);
    }

    v129 = *(a1 + 272);
    *v99 = 690;
    v130 = *(v129 + 20);
    v99[2] = v130;
    if (v130 > 0x7F)
    {
      v131 = sub_19575D0(v130, v99 + 2);
    }

    else
    {
      v131 = v99 + 3;
    }

    v99 = sub_1481B84(v129, v131, a3);
  }

  if (*(a1 + 26))
  {
    v99 = sub_1953428(a1 + 16, 950, 1000, v99, a3);
  }

  v132 = *(a1 + 8);
  if ((v132 & 1) == 0)
  {
    return v99;
  }

  v134 = v132 & 0xFFFFFFFFFFFFFFFCLL;
  v135 = *(v134 + 31);
  if (v135 < 0)
  {
    v136 = *(v134 + 8);
    v135 = *(v134 + 16);
  }

  else
  {
    v136 = (v134 + 8);
  }

  if ((*a3 - v99) >= v135)
  {
    v137 = v135;
    memcpy(v99, v136, v135);
    v99 += v137;
    return v99;
  }

  return sub_1957130(a3, v136, v135, v99);
}

uint64_t sub_1430508(uint64_t a1)
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
      v9 = sub_1426DA8(v8);
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
      v16 = sub_1424D60(v15);
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
      v23 = sub_14254E0(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = sub_1959E5C((a1 + 120));
  v25 = *(a1 + 120);
  v26 = sub_1959E5C((a1 + 136));
  v27 = *(a1 + 160);
  v28 = v24 + v26 + v18 + 2 * (*(a1 + 136) + v25 + v27);
  v29 = *(a1 + 168);
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
      v33 = sub_142DDCC(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 184);
  v35 = v28 + 2 * v34;
  v36 = *(a1 + 192);
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
      v40 = sub_1435140(v39);
      v35 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6);
      v38 -= 8;
    }

    while (v38);
  }

  v41 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_41;
  }

  if (v41)
  {
    v45 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
    v46 = *(v45 + 23);
    v47 = *(v45 + 8);
    if ((v46 & 0x80u) == 0)
    {
      v47 = v46;
    }

    v35 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v41 & 2) == 0)
    {
LABEL_34:
      if ((v41 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_70;
    }
  }

  else if ((v41 & 2) == 0)
  {
    goto LABEL_34;
  }

  v48 = sub_1425984(*(a1 + 208));
  v35 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v41 & 4) == 0)
  {
LABEL_35:
    if ((v41 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_71;
  }

LABEL_70:
  v49 = sub_16E51F0(*(a1 + 216));
  v35 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v41 & 8) == 0)
  {
LABEL_36:
    if ((v41 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_72;
  }

LABEL_71:
  v50 = sub_14613D4(*(a1 + 224));
  v35 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x10) == 0)
  {
LABEL_37:
    if ((v41 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_73:
    v52 = sub_1429600(*(a1 + 240));
    v35 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v41 & 0x40) == 0)
    {
LABEL_39:
      if ((v41 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    goto LABEL_74;
  }

LABEL_72:
  v51 = sub_14284DC(*(a1 + 232));
  v35 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x20) != 0)
  {
    goto LABEL_73;
  }

LABEL_38:
  if ((v41 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_74:
  v53 = sub_142A1A4(*(a1 + 248));
  v35 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x80) != 0)
  {
LABEL_40:
    v42 = sub_142B000(*(a1 + 256));
    v35 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_41:
  if ((v41 & 0xFF00) == 0)
  {
    goto LABEL_52;
  }

  if ((v41 & 0x100) != 0)
  {
    v54 = sub_142D4FC(*(a1 + 264));
    v35 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v41 & 0x200) == 0)
    {
LABEL_44:
      if ((v41 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_78;
    }
  }

  else if ((v41 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v55 = sub_1481F08(*(a1 + 272));
  v35 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x400) == 0)
  {
LABEL_45:
    if ((v41 & 0x800) == 0)
    {
      goto LABEL_46;
    }

LABEL_82:
    v35 += ((9 * (__clz(*(a1 + 284) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v41 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_78:
  v56 = *(a1 + 280);
  v57 = ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v56 >= 0)
  {
    v58 = v57;
  }

  else
  {
    v58 = 11;
  }

  v35 += v58;
  if ((v41 & 0x800) != 0)
  {
    goto LABEL_82;
  }

LABEL_46:
  if ((v41 & 0x1000) != 0)
  {
LABEL_47:
    v35 += ((9 * (__clz(*(a1 + 288) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_48:
  v35 += (v41 >> 12) & 2;
  if ((v41 & 0x4000) != 0)
  {
    v35 += ((9 * (__clz(*(a1 + 296) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v41 & 0x8000) != 0)
  {
    v35 += ((9 * (__clz(*(a1 + 300) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_52:
  if ((v41 & 0xFF0000) == 0)
  {
    goto LABEL_62;
  }

  if ((v41 & 0x10000) != 0)
  {
    v59 = *(a1 + 304);
    v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v59 >= 0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 11;
    }

    v35 += v61;
    if ((v41 & 0x20000) == 0)
    {
LABEL_55:
      if ((v41 & 0x40000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_89;
    }
  }

  else if ((v41 & 0x20000) == 0)
  {
    goto LABEL_55;
  }

  v35 += ((9 * (__clz(*(a1 + 308) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x40000) == 0)
  {
LABEL_56:
    if ((v41 & 0x80000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_90;
  }

LABEL_89:
  v35 += ((9 * (__clz(*(a1 + 312) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x80000) == 0)
  {
LABEL_57:
    if ((v41 & 0x100000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_91;
  }

LABEL_90:
  v35 += ((9 * (__clz(*(a1 + 316) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x100000) == 0)
  {
LABEL_58:
    if ((v41 & 0x200000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_92;
  }

LABEL_91:
  v35 += ((9 * (__clz(*(a1 + 320) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x200000) == 0)
  {
LABEL_59:
    if ((v41 & 0x400000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_93;
  }

LABEL_92:
  v35 += ((9 * (__clz(*(a1 + 324) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x400000) == 0)
  {
LABEL_60:
    if ((v41 & 0x800000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_93:
  v35 += ((9 * (__clz(*(a1 + 328) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v41 & 0x800000) != 0)
  {
LABEL_61:
    v35 += ((9 * (__clz(*(a1 + 332) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_62:
  if ((v41 & 0x1000000) != 0)
  {
    v35 += ((9 * (__clz(*(a1 + 336) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v43 = *(a1 + 8);
  if (v43)
  {
    v62 = v43 & 0xFFFFFFFFFFFFFFFCLL;
    v63 = *((v43 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v63 < 0)
    {
      v63 = *(v62 + 16);
    }

    v35 += v63;
  }

  *(a1 + 44) = v35;
  return v35;
}