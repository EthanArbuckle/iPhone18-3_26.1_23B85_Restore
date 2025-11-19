void *sub_17E2230(void *a1)
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

  sub_17E22D4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_193B2D4(a1 + 9);
  sub_193B250(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_17E22D4(uint64_t a1)
{
  v3 = *(a1 + 96);
  v2 = (a1 + 96);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
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

  if (a1 != &off_2784608)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_17BC934(v5);
      operator delete();
    }

    if (*(a1 + 128))
    {
      sub_16E4E08();
      operator delete();
    }

    result = *(a1 + 136);
    if (result)
    {
      sub_17C11D8(result);

      operator delete();
    }
  }

  return result;
}

void sub_17E23C0(void *a1)
{
  sub_17E2230(a1);

  operator delete();
}

uint64_t sub_17E23F8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17DF044(v5);
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
      result = sub_17E16F8(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 40);
  if ((v9 & 0x3F) == 0)
  {
    goto LABEL_17;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    v13 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v9 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v9 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_13:
    if ((v9 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    result = sub_17BCA00(*(a1 + 120));
    if ((v9 & 0x10) == 0)
    {
LABEL_15:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_34;
  }

  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_12:
  if ((v9 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:
  v14 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v14 + 23) < 0)
  {
    **v14 = 0;
    *(v14 + 8) = 0;
    if ((v9 & 8) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v14 = 0;
    *(v14 + 23) = 0;
    if ((v9 & 8) != 0)
    {
      goto LABEL_33;
    }
  }

LABEL_14:
  if ((v9 & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:
  result = sub_16E4E44(*(a1 + 128));
  if ((v9 & 0x20) != 0)
  {
LABEL_16:
    result = sub_17C12B8(*(a1 + 136));
  }

LABEL_17:
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 136) = 0;
  *(v10 + 32) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_17E2584(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v49 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v49, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v49 + 1);
    v8 = **v49;
    if (**v49 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v49, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v49 + 2);
      }
    }

    *v49 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_78;
          }

          *(a1 + 40) |= 8u;
          v30 = *(a1 + 120);
          if (!v30)
          {
            v31 = *(a1 + 8);
            v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31)
            {
              v32 = *v32;
            }

            v30 = sub_185F28C(v32);
            *(a1 + 120) = v30;
            v7 = *v49;
          }

          v25 = sub_2244C0C(a3, v30, v7);
        }

        else
        {
          if (v11 != 4 || v8 != 34)
          {
            goto LABEL_78;
          }

          *(a1 + 40) |= 0x10u;
          v22 = *(a1 + 128);
          if (!v22)
          {
            v23 = *(a1 + 8);
            v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
            if (v23)
            {
              v24 = *v24;
            }

            v22 = sub_16F5828(v24);
            *(a1 + 128) = v22;
            v7 = *v49;
          }

          v25 = sub_21F4D60(a3, v22, v7);
        }
      }

      else
      {
        if (v11 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_78;
          }

          *(a1 + 40) |= 1u;
          v29 = *(a1 + 8);
          v20 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v20 = *v20;
          }

          v21 = (a1 + 96);
        }

        else
        {
          if (v11 != 2 || v8 != 18)
          {
            goto LABEL_78;
          }

          *(a1 + 40) |= 2u;
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v21 = (a1 + 104);
        }

LABEL_71:
        v40 = sub_194DB04(v21, v20);
        v25 = sub_1958890(v40, *v49, a3);
      }

      goto LABEL_87;
    }

    if (v8 >> 3 > 7)
    {
      if (v11 == 8)
      {
        if (v8 == 66)
        {
          v33 = v7 - 1;
          while (1)
          {
            v34 = v33 + 1;
            *v49 = v33 + 1;
            v35 = *(a1 + 64);
            if (v35 && (v36 = *(a1 + 56), v36 < *v35))
            {
              *(a1 + 56) = v36 + 1;
              v37 = *&v35[2 * v36 + 2];
            }

            else
            {
              v38 = sub_1861228(*(a1 + 48));
              v37 = sub_19593CC(a1 + 48, v38);
              v34 = *v49;
            }

            v33 = sub_2246308(a3, v37, v34);
            *v49 = v33;
            if (!v33)
            {
              goto LABEL_95;
            }

            if (*a3 <= v33 || *v33 != 66)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_78;
      }

      if (v11 != 9)
      {
        if (v11 == 10 && v8 == 82)
        {
          v12 = (v7 - 1);
          while (1)
          {
            v13 = (v12 + 1);
            *v49 = v12 + 1;
            v14 = *(a1 + 88);
            if (v14 && (v15 = *(a1 + 80), v15 < *v14))
            {
              *(a1 + 80) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              v17 = sub_18615D8(*(a1 + 72));
              v16 = sub_19593CC(a1 + 72, v17);
              v13 = *v49;
            }

            v12 = sub_22464B8(a3, v16, v13);
            *v49 = v12;
            if (!v12)
            {
              goto LABEL_95;
            }

            if (*a3 <= v12 || *v12 != 82)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_78;
      }

      if (v8 != 74)
      {
        goto LABEL_78;
      }

      *(a1 + 40) |= 0x20u;
      v41 = *(a1 + 136);
      if (!v41)
      {
        v42 = *(a1 + 8);
        v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v43 = *v43;
        }

        v41 = sub_185F5BC(v43);
        *(a1 + 136) = v41;
        v7 = *v49;
      }

      v25 = sub_2246428(a3, v41, v7);
LABEL_87:
      *v49 = v25;
      if (!v25)
      {
        goto LABEL_95;
      }

      goto LABEL_88;
    }

    if (v11 == 5)
    {
      break;
    }

    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_78;
    }

    v5 |= 0x40u;
    v26 = (v7 + 1);
    v27 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v28 = *v26;
    v27 = v27 + (v28 << 7) - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v26 = (v7 + 2);
LABEL_46:
      *v49 = v26;
      *(a1 + 144) = v27;
      goto LABEL_88;
    }

    v47 = sub_1958770(v7, v27);
    *v49 = v47;
    *(a1 + 144) = v48;
    if (!v47)
    {
      goto LABEL_95;
    }

LABEL_88:
    if (sub_195ADC0(a3, v49, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 42)
  {
    *(a1 + 40) |= 4u;
    v39 = *(a1 + 8);
    v20 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v20 = *v20;
    }

    v21 = (a1 + 112);
    goto LABEL_71;
  }

LABEL_78:
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
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v45 = *(a1 + 8);
      if (v45)
      {
        v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v46 = sub_11F1920((a1 + 8));
        v7 = *v49;
      }

      v25 = sub_1952690(v8, v46, v7, a3);
    }

    else
    {
      v25 = sub_19525AC((a1 + 16), v8, v7, &off_2784608, (a1 + 8), a3);
    }

    goto LABEL_87;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_95:
  *v49 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v49;
}

char *sub_17E2A50(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
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

  v4 = sub_128AEEC(a3, 2, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 120);
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

  v4 = sub_17BCE90(v8, v10, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v4 = sub_128AEEC(a3, 5, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 128);
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

  v4 = sub_16E5070(v11, v13, a3);
  if ((v6 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    v7 = v4;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 144);
  *v4 = 48;
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v7 = v4 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v16) = v4[2];
      do
      {
        *(v7 - 1) = v16 | 0x80;
        v16 = v15 >> 7;
        *v7++ = v15 >> 7;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_30:
  v18 = *(a1 + 56);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v20 = *(*(a1 + 64) + 8 * i + 8);
      *v7 = 66;
      v21 = *(v20 + 44);
      v7[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v7 + 1);
      }

      else
      {
        v22 = v7 + 2;
      }

      v7 = sub_17DF2D0(v20, v22, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v23 = *(a1 + 136);
    *v7 = 74;
    v24 = *(v23 + 44);
    v7[1] = v24;
    if (v24 > 0x7F)
    {
      v25 = sub_19575D0(v24, v7 + 1);
    }

    else
    {
      v25 = v7 + 2;
    }

    v7 = sub_17C14B4(v23, v25, a3);
  }

  v26 = *(a1 + 80);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v28 = *(*(a1 + 88) + 8 * j + 8);
      *v7 = 82;
      v29 = *(v28 + 20);
      v7[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v7 + 1);
      }

      else
      {
        v30 = v7 + 2;
      }

      v7 = sub_17E1990(v28, v30, a3);
    }
  }

  if (*(a1 + 26))
  {
    v7 = sub_1953428(a1 + 16, 1000, 2000, v7, a3);
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v34)
  {
    v36 = v34;
    memcpy(v7, v35, v34);
    v7 += v36;
    return v7;
  }

  return sub_1957130(a3, v35, v34, v7);
}

uint64_t sub_17E2E58(uint64_t a1)
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
      v9 = sub_17DF42C(v8);
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
      v16 = sub_17E1B8C(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 40);
  if ((v17 & 0x7F) == 0)
  {
    goto LABEL_22;
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

      goto LABEL_30;
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

  v11 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 4) == 0)
  {
LABEL_17:
    if ((v17 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_30:
  v26 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(v26 + 23);
  v28 = *(v26 + 8);
  if ((v27 & 0x80u) == 0)
  {
    v28 = v27;
  }

  v11 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 8) == 0)
  {
LABEL_18:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_34:
    v30 = sub_16E51F0(*(a1 + 128));
    v11 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 0x20) == 0)
    {
LABEL_20:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_33:
  v29 = sub_17BD1FC(*(a1 + 120));
  v11 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 0x10) != 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  if ((v17 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_35:
  v31 = sub_17C15A0(*(a1 + 136));
  v11 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 0x40) != 0)
  {
LABEL_21:
    v11 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
  v18 = *(a1 + 8);
  if (v18)
  {
    v32 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v33 < 0)
    {
      v33 = *(v32 + 16);
    }

    v11 += v33;
  }

  *(a1 + 44) = v11;
  return v11;
}

void sub_17E3100(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193D434((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_193D4C0((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0x7F) != 0)
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

        goto LABEL_27;
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

      goto LABEL_30;
    }

LABEL_27:
    v22 = *(a2 + 112);
    *(a1 + 40) |= 4u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    sub_194EA1C((a1 + 112), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 40) |= 8u;
    v25 = *(a1 + 120);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_185F28C(v27);
      *(a1 + 120) = v25;
    }

    if (*(a2 + 120))
    {
      v28 = *(a2 + 120);
    }

    else
    {
      v28 = &off_2783528;
    }

    sub_17BD384(v25, v28);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 40) |= 0x10u;
    v29 = *(a1 + 128);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_16F5828(v31);
      *(a1 + 128) = v29;
    }

    if (*(a2 + 128))
    {
      v32 = *(a2 + 128);
    }

    else
    {
      v32 = &off_277E5E8;
    }

    sub_16E527C(v29, v32);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
LABEL_16:
        *(a1 + 40) |= v14;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 144) = *(a2 + 144);
      goto LABEL_16;
    }

LABEL_46:
    *(a1 + 40) |= 0x20u;
    v33 = *(a1 + 136);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_185F5BC(v35);
      *(a1 + 136) = v33;
    }

    if (*(a2 + 136))
    {
      v36 = *(a2 + 136);
    }

    else
    {
      v36 = &off_2783780;
    }

    sub_14B7610(v33, v36);
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17E33E4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_17DF5FC(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 80);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_17E1DB8(*(*(a1 + 88) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 40);
    if ((v9 & 8) != 0)
    {
      result = sub_195228C(*(a1 + 120) + 16);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x10) != 0)
    {
      result = sub_16E5370(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 0x20) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 136) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_17E34BC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17E3538(void *a1)
{
  sub_17E34BC(a1);

  operator delete();
}

uint64_t sub_17E3570(uint64_t a1)
{
  *(a1 + 24) = 0;
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 44) = 0x300000003;
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

char *sub_17E35A0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v39, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v39 + 1;
    v9 = *v39;
    if (*v39 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v39, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v39 + 2;
      }
    }

    v39 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 > 2)
    {
      break;
    }

    if (v13 == 1)
    {
      if (v9 != 8)
      {
        goto LABEL_58;
      }

      v5 |= 2u;
      LODWORD(v26) = *v8;
      if ((v26 & 0x80000000) != 0)
      {
        v26 = (v8[1] << 7) + v26 - 128;
        if (v8[1] < 0)
        {
          v32 = sub_19587DC(v8, v26);
          v39 = v32;
          *(a1 + 44) = v33;
          if (!v32)
          {
            goto LABEL_71;
          }

          goto LABEL_66;
        }

        v27 = v8 + 2;
      }

      else
      {
        v27 = v8 + 1;
      }

      v39 = v27;
      *(a1 + 44) = v26;
    }

    else
    {
      if (v13 != 2 || v9 != 16)
      {
        goto LABEL_58;
      }

      v5 |= 1u;
      v16 = v8 + 1;
      v15 = *v8;
      if (v15 < 0)
      {
        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v30 = sub_19587DC(v8, v15);
          v39 = v30;
          *(a1 + 40) = v31 != 0;
          if (!v30)
          {
            goto LABEL_71;
          }

          goto LABEL_66;
        }

        v16 = v8 + 2;
      }

      v39 = v16;
      *(a1 + 40) = v15 != 0;
    }

LABEL_66:
    if (sub_195ADC0(a3, &v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 == 3)
  {
    if (v9 != 24)
    {
      goto LABEL_58;
    }

    v5 |= 4u;
    LODWORD(v28) = *v8;
    if ((v28 & 0x80000000) != 0)
    {
      v28 = (v8[1] << 7) + v28 - 128;
      if (v8[1] < 0)
      {
        v34 = sub_19587DC(v8, v28);
        v39 = v34;
        *(a1 + 48) = v35;
        if (!v34)
        {
          goto LABEL_71;
        }

        goto LABEL_66;
      }

      v29 = v8 + 2;
    }

    else
    {
      v29 = v8 + 1;
    }

    v39 = v29;
    *(a1 + 48) = v28;
    goto LABEL_66;
  }

  if (v13 == 4)
  {
    if (v9 == 32)
    {
      v18 = v8 - 1;
      while (1)
      {
        v39 = v18 + 1;
        v19 = v18[1];
        v20 = v18 + 2;
        if (v19 < 0)
        {
          v21 = *v20;
          v22 = (v21 << 7) + v19;
          LODWORD(v19) = v22 - 128;
          if (v21 < 0)
          {
            v39 = sub_19587DC((v18 + 1), (v22 - 128));
            if (!v39)
            {
              goto LABEL_71;
            }

            LODWORD(v19) = v25;
            goto LABEL_27;
          }

          v20 = v18 + 3;
        }

        v39 = v20;
LABEL_27:
        if (v19 > 9)
        {
          sub_12E8500();
        }

        else
        {
          v23 = *(a1 + 24);
          if (v23 == *(a1 + 28))
          {
            v24 = v23 + 1;
            sub_1958E5C((a1 + 24), v23 + 1);
            *(*(a1 + 32) + 4 * v23) = v19;
          }

          else
          {
            *(*(a1 + 32) + 4 * v23) = v19;
            v24 = v23 + 1;
          }

          *(a1 + 24) = v24;
        }

        v18 = v39;
        if (*a3 <= v39 || *v39 != 32)
        {
          goto LABEL_66;
        }
      }
    }

    if (v9 == 34)
    {
      *&v40 = a1 + 24;
      *(&v40 + 1) = sub_1792D28;
      v41 = a1 + 8;
      v42 = 4;
      v36 = sub_1216588(a3, v8, &v40);
      goto LABEL_65;
    }
  }

LABEL_58:
  if (v9)
  {
    v37 = (v9 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    if (*v7)
    {
      v38 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v38 = sub_11F1920((a1 + 8));
      v8 = v39;
    }

    v36 = sub_1952690(v9, v38, v8, a3);
LABEL_65:
    v39 = v36;
    if (!v36)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_71:
    v39 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

char *sub_17E3938(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 44);
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

    v11 = *(a1 + 40);
    *v6 = 16;
    v6[1] = v11;
    v6 += 2;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v13 = *(a1 + 48);
    *v6 = 24;
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v6[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v6[2] = v13 >> 7;
      v12 = v6 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v12 - 1) = v6 | 0x80;
          v6 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = v6 + 2;
    }
  }

  else
  {
    v12 = v6;
  }

  v16 = *(a1 + 24);
  if (v16 < 1)
  {
    v19 = v12;
  }

  else
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v18 = *(*(a1 + 32) + 4 * i);
      *v12 = 32;
      v12[1] = v18;
      if (v18 > 0x7F)
      {
        v12[1] = v18 | 0x80;
        v20 = v18 >> 7;
        v12[2] = v18 >> 7;
        v19 = v12 + 3;
        if (v18 >= 0x4000)
        {
          LOBYTE(v12) = v12[2];
          do
          {
            *(v19 - 1) = v12 | 0x80;
            v12 = (v20 >> 7);
            *v19++ = v20 >> 7;
            v21 = v20 >> 14;
            v20 >>= 7;
          }

          while (v21);
        }
      }

      else
      {
        v19 = v12 + 2;
      }

      v12 = v19;
    }
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v19;
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

  if (*a3 - v19 >= v25)
  {
    v27 = v25;
    memcpy(v19, v26, v25);
    v19 += v27;
    return v19;
  }

  return sub_1957130(a3, v26, v25, v19);
}

uint64_t sub_17E3BD4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 32) + 4 * v2);
      if (v4 < 0)
      {
        v5 = 10;
      }

      else
      {
        v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v5;
      ++v2;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = 0;
  }

  v6 = v3 + v1;
  v7 = *(a1 + 16);
  if ((v7 & 7) != 0)
  {
    v6 += 2 * (v7 & 1);
    if ((v7 & 2) != 0)
    {
      v8 = *(a1 + 44);
      if (v8 < 0)
      {
        v9 = 11;
      }

      else
      {
        v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v6 += v9;
    }

    if ((v7 & 4) != 0)
    {
      v10 = *(a1 + 48);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v6 += v11;
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

    v6 += v15;
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_17E3CD8(std::string *result, uint64_t a2)
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v3[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
LABEL_8:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17E3DDC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_270ED58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_17E3E54(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17E3E84(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270ED58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 48) = &qword_278E990;
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v8);
    v7 = *(a2 + 40);
  }

  if ((v7 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v7 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v7 & 8) != 0)
  {
    operator new();
  }

  v9 = *(a2 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = v9;
  return a1;
}

uint64_t sub_17E407C(uint64_t a1)
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

  if (a1 != &off_27846D8)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      sub_1917370(v6);
      operator delete();
    }

    if (*(a1 + 64))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 72))
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
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17E4190(uint64_t a1)
{
  sub_17E407C(a1);

  operator delete();
}

uint64_t sub_17E41C8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    result = sub_17A82BC(*(a1 + 56));
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  result = sub_16E4E44(*(a1 + 64));
  if ((v3 & 8) != 0)
  {
LABEL_6:
    result = sub_144E31C(*(a1 + 72));
  }

LABEL_7:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 72) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_17E4290(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v34, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v34 + 1);
    v8 = **v34;
    if (**v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v34 + 2);
      }
    }

    *v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_43;
        }

        *(a1 + 40) |= 2u;
        v26 = *(a1 + 56);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          v26 = sub_191BA60(v28);
          *(a1 + 56) = v26;
          v7 = *v34;
        }

        v19 = sub_2201310(a3, v26, v7);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_43;
        }

        *(a1 + 40) |= 1u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = sub_194DB04((a1 + 48), v17);
        v19 = sub_1958890(v18, *v34, a3);
      }

LABEL_52:
      *v34 = v19;
      if (!v19)
      {
        goto LABEL_60;
      }

      goto LABEL_53;
    }

    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_43;
      }

      *(a1 + 40) |= 4u;
      v20 = *(a1 + 64);
      if (!v20)
      {
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v20 = sub_16F5828(v22);
        *(a1 + 64) = v20;
        v7 = *v34;
      }

      v19 = sub_21F4D60(a3, v20, v7);
      goto LABEL_52;
    }

    if (v11 == 4)
    {
      break;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_43;
    }

    v5 |= 0x10u;
    v13 = (v7 + 1);
    v12 = *v7;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    v14 = *v13;
    v12 = (v14 << 7) + v12 - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v13 = (v7 + 2);
LABEL_15:
      *v34 = v13;
      *(a1 + 80) = v12;
      goto LABEL_53;
    }

    v32 = sub_19587DC(v7, v12);
    *v34 = v32;
    *(a1 + 80) = v33;
    if (!v32)
    {
      goto LABEL_60;
    }

LABEL_53:
    if (sub_195ADC0(a3, v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 34)
  {
    *(a1 + 40) |= 8u;
    v23 = *(a1 + 72);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_1551A70(v25);
      *(a1 + 72) = v23;
      v7 = *v34;
    }

    v19 = sub_22030E0(a3, v23, v7);
    goto LABEL_52;
  }

LABEL_43:
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
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v30 = *(a1 + 8);
      if (v30)
      {
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v31 = sub_11F1920((a1 + 8));
        v7 = *v34;
      }

      v19 = sub_1952690(v8, v31, v7, a3);
    }

    else
    {
      v19 = sub_19525AC((a1 + 16), v8, v7, &off_27846D8, (a1 + 8), a3);
    }

    goto LABEL_52;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_60:
  *v34 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v34;
}

char *sub_17E45AC(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 56);
    *v4 = 10;
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

    v4 = sub_1917694(v8, v10, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v14 = *(a1 + 72);
    *v4 = 34;
    v15 = *(v14 + 44);
    v4[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v4 + 1);
    }

    else
    {
      v16 = v4 + 2;
    }

    v4 = sub_153C1A4(v14, v16, a3);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 64);
  *v4 = 26;
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

  v4 = sub_16E5070(v11, v13, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_33;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 80);
  *v4 = 40;
  v4[1] = v17;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    v4[2] = v17 >> 7;
    v7 = v4 + 3;
    if (v17 >= 0x4000)
    {
      LOBYTE(v19) = v4[2];
      do
      {
        *(v7 - 1) = v19 | 0x80;
        v19 = v18 >> 7;
        *v7++ = v18 >> 7;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_33:
  if (*(a1 + 26))
  {
    v7 = sub_1953428(a1 + 16, 1000, 2000, v7, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v7;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v7 >= v24)
  {
    v26 = v24;
    memcpy(v7, v25, v24);
    v7 += v26;
    return v7;
  }

  return sub_1957130(a3, v25, v24, v7);
}

uint64_t sub_17E4858(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if ((v4 & 0x1F) == 0)
  {
    goto LABEL_8;
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

LABEL_14:
      v11 = sub_16E51F0(*(a1 + 64));
      v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v4 & 8) == 0)
      {
LABEL_6:
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v10 = sub_1917844(*(a1 + 56));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v4 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  v12 = sub_153C388(*(a1 + 72));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) != 0)
  {
LABEL_7:
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  v5 = *(a1 + 8);
  if (v5)
  {
    v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    v3 += v14;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_17E49D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x1F) != 0)
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

        goto LABEL_24;
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

      v9 = sub_191BA60(v11);
      *(a1 + 56) = v9;
    }

    if (*(a2 + 56))
    {
      v12 = *(a2 + 56);
    }

    else
    {
      v12 = &off_278B870;
    }

    sub_17A8DBC(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }

LABEL_24:
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

      v13 = sub_16F5828(v15);
      *(a1 + 64) = v13;
    }

    if (*(a2 + 64))
    {
      v16 = *(a2 + 64);
    }

    else
    {
      v16 = &off_277E5E8;
    }

    sub_16E527C(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 40) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_8;
    }

LABEL_32:
    *(a1 + 40) |= 8u;
    v17 = *(a1 + 72);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_1551A70(v19);
      *(a1 + 72) = v17;
    }

    if (*(a2 + 72))
    {
      v20 = *(a2 + 72);
    }

    else
    {
      v20 = &off_2776880;
    }

    sub_144F404(v17, v20);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17E4B8C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) != 0)
    {
      result = sub_17A8EF8(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 4) != 0)
    {
      result = sub_16E5370(*(a1 + 64));
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

    result = sub_144F674(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_17E4C08(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270EDD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_17E4C80(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17E4CB0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270EDD8;
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
    sub_193D54C((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
    sub_193D54C((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
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
  if (*(a2 + 40))
  {
    operator new();
  }

  v17 = *(a2 + 104);
  *(a1 + 96) = 0;
  *(a1 + 104) = v17;
  return a1;
}

uint64_t sub_17E4EE4(uint64_t a1)
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
  if (a1 != &off_2784730)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      sub_17E407C(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_193B358((a1 + 72));
  sub_193B358((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17E4FBC(uint64_t a1)
{
  sub_17E4EE4(a1);

  operator delete();
}

uint64_t sub_17E4FF4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17E41C8(v5);
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
      result = sub_17E41C8(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  if (*(a1 + 40))
  {
    result = sub_17E41C8(*(a1 + 96));
  }

  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 96) = 0;
  *(v9 + 32) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

char *sub_17E50B8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v37 + 1;
    v8 = *v37;
    if (*v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v37 + 2;
      }
    }

    v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            v37 = v13 + 1;
            v15 = *(a1 + 64);
            if (v15 && (v16 = *(a1 + 56), v16 < *v15))
            {
              *(a1 + 56) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = sub_1861758(*(a1 + 48));
              v17 = sub_19593CC(a1 + 48, v18);
              v14 = v37;
            }

            v13 = sub_2246548(a3, v17, v14);
            v37 = v13;
            if (!v13)
            {
              goto LABEL_63;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_46;
      }

      if (v8 != 10)
      {
        goto LABEL_46;
      }

      *(a1 + 40) |= 1u;
      v25 = *(a1 + 96);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v25 = sub_1861758(v27);
        *(a1 + 96) = v25;
        v7 = v37;
      }

      v28 = sub_2246548(a3, v25, v7);
LABEL_55:
      v37 = v28;
      if (!v28)
      {
        goto LABEL_63;
      }

      goto LABEL_56;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_46;
    }

    v5 |= 2u;
    v30 = v7 + 1;
    v29 = *v7;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    v31 = *v30;
    v29 = (v31 << 7) + v29 - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_45:
      v37 = v30;
      *(a1 + 104) = v29;
      goto LABEL_56;
    }

    v35 = sub_19587DC(v7, v29);
    v37 = v35;
    *(a1 + 104) = v36;
    if (!v35)
    {
      goto LABEL_63;
    }

LABEL_56:
    if (sub_195ADC0(a3, &v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = (v19 + 1);
      v37 = v19 + 1;
      v21 = *(a1 + 88);
      if (v21 && (v22 = *(a1 + 80), v22 < *v21))
      {
        *(a1 + 80) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_1861758(*(a1 + 72));
        v23 = sub_19593CC(a1 + 72, v24);
        v20 = v37;
      }

      v19 = sub_2246548(a3, v23, v20);
      v37 = v19;
      if (!v19)
      {
        goto LABEL_63;
      }

      if (*a3 <= v19 || *v19 != 34)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_46:
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
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v33 = *(a1 + 8);
      if (v33)
      {
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v34 = sub_11F1920((a1 + 8));
        v7 = v37;
      }

      v28 = sub_1952690(v8, v34, v7, a3);
    }

    else
    {
      v28 = sub_19525AC((a1 + 16), v8, v7, &off_2784730, (a1 + 8), a3);
    }

    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  v37 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v37;
}

char *sub_17E5400(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 96);
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

    v4 = sub_17E45AC(v7, v9, a3);
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

      v4 = sub_17E45AC(v12, v14, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 104);
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

  v19 = *(a1 + 80);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 88) + 8 * j + 8);
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

      v15 = sub_17E45AC(v21, v23, a3);
    }
  }

  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 1000, 2000, v15, a3);
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

uint64_t sub_17E56D8(uint64_t a1)
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
      v9 = sub_17E4858(v8);
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
      v16 = sub_17E4858(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 40);
  if ((v17 & 3) != 0)
  {
    if (v17)
    {
      v18 = sub_17E4858(*(a1 + 96));
      v11 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v17 & 2) != 0)
    {
      v11 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v11 += v22;
  }

  *(a1 + 44) = v11;
  return v11;
}

void sub_17E5834(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193D54C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_193D54C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 96);
      if (!v15)
      {
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v15 = sub_1861758(v17);
        *(a1 + 96) = v15;
      }

      if (*(a2 + 96))
      {
        v18 = *(a2 + 96);
      }

      else
      {
        v18 = &off_27846D8;
      }

      sub_17E49D0(v15, v18);
    }

    if ((v14 & 2) != 0)
    {
      *(a1 + 104) = *(a2 + 104);
    }

    *(a1 + 40) |= v14;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17E59C8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_17E4B8C(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 80);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_17E4B8C(*(*(a1 + 88) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_17E4B8C(*(a1 + 96));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_17E5A70(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_270EE58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_17E5AD4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17E5B04(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17E5B80(void *a1)
{
  sub_17E5B04(a1);

  operator delete();
}

unsigned __int8 *sub_17E5BB8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_17E5C08(uint64_t a1, char *a2, int32x2_t *a3)
{
  v14 = a2;
  if ((sub_195ADC0(a3, &v14, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v14 + 1;
      v6 = *v14;
      if (*v14 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v14, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v14 + 2;
        }
      }

      v14 = v5;
      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      if ((v6 - 8000) >> 6 > 0x7C)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v12 = sub_11F1920((a1 + 8));
          v5 = v14;
        }

        v10 = sub_1952690(v6, v12, v5, a3);
      }

      else
      {
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_27847A0, (a1 + 8), a3);
      }

      v14 = v10;
      if (!v10)
      {
        return 0;
      }

      if (sub_195ADC0(a3, &v14, a3[11].i32[1]))
      {
        return v14;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v14;
    }

    return 0;
  }

  return v14;
}

char *sub_17E5D50(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, a2, a3);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if (*a3 - v4 >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}

uint64_t sub_17E5E18(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    result += v5;
  }

  *(a1 + 40) = result;
  return result;
}

uint64_t sub_17E5E80(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_270EED8;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  return a1;
}

void sub_17E5F04(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17E5F34(void *a1)
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

void sub_17E5FA8(void *a1)
{
  sub_17E5F34(a1);

  operator delete();
}

uint64_t sub_17E5FE0(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
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

char *sub_17E6008(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_32:
      v29 = v19;
      *(a1 + 32) = v20;
      goto LABEL_39;
    }

    v27 = sub_1958770(v7, v20);
    v29 = v27;
    *(a1 + 32) = v28;
    if (!v27)
    {
      goto LABEL_52;
    }

LABEL_39:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
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

    v17 = v7 + 1;
    v16 = *v7;
    if (v16 < 0)
    {
      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if (v18 < 0)
      {
        v29 = sub_19587DC(v7, v16);
        if (!v29)
        {
          goto LABEL_52;
        }

        goto LABEL_26;
      }

      v17 = v7 + 2;
    }

    v29 = v17;
LABEL_26:
    if (v16 > 2)
    {
      sub_12E8418();
    }

    else
    {
      *(a1 + 16) |= 2u;
      *(a1 + 28) = v16;
    }

    goto LABEL_39;
  }

  if (v11 == 1 && v8 == 8)
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
      v29 = sub_19587DC(v7, (v25 - 128));
      if (!v29)
      {
        goto LABEL_52;
      }

      LODWORD(v23) = v26;
    }

    else
    {
      v22 = v7 + 2;
LABEL_36:
      v29 = v22;
    }

    if (sub_14CB318(v23))
    {
      *(a1 + 16) |= 1u;
      *(a1 + 24) = v23;
    }

    else
    {
      sub_12E8450();
    }

    goto LABEL_39;
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
      v7 = v29;
    }

    v29 = sub_1952690(v8, v15, v7, a3);
    if (!v29)
    {
      goto LABEL_52;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_52:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_17E6290(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17E64C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_16;
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
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
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

uint64_t sub_17E65C0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_270EF58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_17E6624(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17E6654(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17E66D0(void *a1)
{
  sub_17E6654(a1);

  operator delete();
}

unsigned __int8 *sub_17E6708(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_17E6758(uint64_t a1, char *a2, int32x2_t *a3)
{
  v14 = a2;
  if ((sub_195ADC0(a3, &v14, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v14 + 1;
      v6 = *v14;
      if (*v14 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v14, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v14 + 2;
        }
      }

      v14 = v5;
      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      if ((v6 - 8000) >> 6 > 0x7C)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v12 = sub_11F1920((a1 + 8));
          v5 = v14;
        }

        v10 = sub_1952690(v6, v12, v5, a3);
      }

      else
      {
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_27847F8, (a1 + 8), a3);
      }

      v14 = v10;
      if (!v10)
      {
        return 0;
      }

      if (sub_195ADC0(a3, &v14, a3[11].i32[1]))
      {
        return v14;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v14;
    }

    return 0;
  }

  return v14;
}

char *sub_17E68A0(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, a2, a3);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if (*a3 - v4 >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}

uint64_t sub_17E6968(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    result += v5;
  }

  *(a1 + 40) = result;
  return result;
}

uint64_t sub_17E69D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_270EFD8;
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
  }

  return a1;
}

void sub_17E6A7C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17E6AAC(uint64_t a1)
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

void sub_17E6B4C(uint64_t a1)
{
  sub_17E6AAC(a1);

  operator delete();
}

uint64_t sub_17E6B84(uint64_t a1)
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
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_17E6BC8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v18 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v18, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v18 + 1);
    v7 = **v18;
    if (**v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v18, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v18 + 2);
      }
    }

    *v18 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v16 = sub_194DB04((a1 + 24), v15);
      v13 = sub_1958890(v16, *v18, a3);
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
          return *v18;
        }

LABEL_24:
        *v18 = 0;
        return *v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = *v18;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    *v18 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  return *v18;
}

char *sub_17E6D00(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    return v4;
  }

  v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(v8 + 31);
  if (v9 < 0)
  {
    v10 = *(v8 + 8);
    v9 = *(v8 + 16);
  }

  else
  {
    v10 = (v8 + 8);
  }

  if (*a3 - v4 >= v9)
  {
    v11 = v9;
    memcpy(v4, v10, v9);
    v4 += v11;
    return v4;
  }

  return sub_1957130(a3, v10, v9, v4);
}

uint64_t sub_17E6DC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

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

void *sub_17E6E5C(void *a1)
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

void sub_17E6ED0(void *a1)
{
  sub_17E6E5C(a1);

  operator delete();
}

uint64_t *sub_17E6F08(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17E6F18(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17E6FAC(uint64_t a1)
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

std::string *sub_17E6FD8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17E700C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_270F0D8;
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
    sub_1201B48(a1 + 24, v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  return a1;
}

void sub_17E712C(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17E716C(uint64_t a1)
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

void sub_17E7214(uint64_t a1)
{
  sub_17E716C(a1);

  operator delete();
}

uint64_t sub_17E724C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_17E72D0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  if (sub_195ADC0(a3, v26, a3[11].i32[1]))
  {
    return *v26;
  }

  while (1)
  {
    v6 = (*v26 + 1);
    v7 = **v26;
    if (**v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v26 + 2);
      }
    }

    *v26 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 48), v24);
    v14 = sub_1958890(v25, *v26, a3);
LABEL_34:
    *v26 = v14;
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_35:
    if (sub_195ADC0(a3, v26, a3[11].i32[1]))
    {
      return *v26;
    }
  }

  if (v7 == 18)
  {
    v15 = v6 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      *v26 = v15 + 1;
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
        v16 = *v26;
      }

      v15 = sub_1958890(v19, v16, a3);
      *v26 = v15;
      if (!v15)
      {
        goto LABEL_40;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_35;
      }
    }
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
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v26;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_34;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v26;
  }

LABEL_40:
  *v26 = 0;
  return *v26;
}

char *sub_17E7514(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - v4 + 14 < v9)
      {
        v4 = sub_1957480(a3, 2, v8, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = v4 + 2;
        memcpy(v10, v8, v9);
        v4 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_17E768C(uint64_t a1)
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

  if (*(a1 + 16))
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v3 += v13;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_17E777C(void *a1)
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

void sub_17E77F0(void *a1)
{
  sub_17E777C(a1);

  operator delete();
}

uint64_t *sub_17E7828(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17E7838(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17E78CC(uint64_t a1)
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

std::string *sub_17E78F8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_17E792C(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_270F1D8;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = &qword_278E990;
  a1[10] = &qword_278E990;
  a1[11] = &qword_278E990;
  a1[12] = &qword_278E990;
  a1[13] = 0;
  *(a1 + 109) = 0;
  return a1;
}

void sub_17E79B0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17E79E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270F1D8;
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
    sub_13EC520((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
  *(a1 + 72) = &qword_278E990;
  v12 = *(a2 + 40);
  if (v12)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v13);
    v12 = *(a2 + 40);
  }

  *(a1 + 80) = &qword_278E990;
  if ((v12 & 2) != 0)
  {
    v14 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 80), (*(a2 + 80) & 0xFFFFFFFFFFFFFFFELL), v14);
    v12 = *(a2 + 40);
  }

  *(a1 + 88) = &qword_278E990;
  if ((v12 & 4) != 0)
  {
    v15 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 88), (*(a2 + 88) & 0xFFFFFFFFFFFFFFFELL), v15);
    v12 = *(a2 + 40);
  }

  *(a1 + 96) = &qword_278E990;
  if ((v12 & 8) != 0)
  {
    v16 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 96), (*(a2 + 96) & 0xFFFFFFFFFFFFFFFELL), v16);
    v12 = *(a2 + 40);
  }

  if ((v12 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  v17 = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 112) = v17;
  return a1;
}

uint64_t sub_17E7C64(uint64_t a1)
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

  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C((a1 + 96));
  }

  if (a1 != &off_27848B0 && *(a1 + 104))
  {
    sub_16F0320();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_13EBFF8((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17E7D88(uint64_t a1)
{
  sub_17E7C64(a1);

  operator delete();
}

uint64_t sub_17E7DC0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17C2B34(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 0x1F) == 0)
  {
    goto LABEL_12;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v6 & 4) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_26:
  v11 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v11 + 23) & 0x80000000) == 0)
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v6 & 8) != 0)
    {
      goto LABEL_30;
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  **v11 = 0;
  *(v11 + 8) = 0;
  if ((v6 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_30:
  v12 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v12 + 23) & 0x80000000) == 0)
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_16F035C(*(a1 + 104));
    goto LABEL_12;
  }

  **v12 = 0;
  *(v12 + 8) = 0;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if ((v6 & 0x60) != 0)
  {
    *(a1 + 116) = 0;
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

uint64_t sub_17E7F44(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_69;
          }

          *(a1 + 40) |= 1u;
          v26 = *(a1 + 8);
          v14 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v14 = *v14;
          }

          v15 = (a1 + 72);
        }

        else
        {
          if (v11 != 2 || v8 != 18)
          {
            goto LABEL_69;
          }

          *(a1 + 40) |= 2u;
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v15 = (a1 + 80);
        }

LABEL_65:
        v36 = sub_194DB04(v15, v14);
        v30 = sub_1958890(v36, *v43, a3);
        goto LABEL_66;
      }

      if (v11 != 3)
      {
        if (v11 == 4 && v8 == 34)
        {
          v19 = (v7 - 1);
          while (1)
          {
            v20 = (v19 + 1);
            *v43 = v19 + 1;
            v21 = *(a1 + 64);
            if (v21 && (v22 = *(a1 + 56), v22 < *v21))
            {
              *(a1 + 56) = v22 + 1;
              v23 = *&v21[2 * v22 + 2];
            }

            else
            {
              v24 = sub_185F788(*(a1 + 48));
              v23 = sub_19593CC(a1 + 48, v24);
              v20 = *v43;
            }

            v19 = sub_2205BA0(a3, v23, v20);
            *v43 = v19;
            if (!v19)
            {
              goto LABEL_86;
            }

            if (*a3 <= v19 || *v19 != 34)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_69;
      }

      if (v8 != 24)
      {
        goto LABEL_69;
      }

      v31 = (v7 + 1);
      v32 = *v7;
      if (v32 < 0)
      {
        v33 = *v31;
        v34 = (v33 << 7) + v32;
        LODWORD(v32) = v34 - 128;
        if (v33 < 0)
        {
          *v43 = sub_19587DC(v7, (v34 - 128));
          if (!*v43)
          {
            goto LABEL_86;
          }

          LODWORD(v32) = v40;
          goto LABEL_59;
        }

        v31 = (v7 + 2);
      }

      *v43 = v31;
LABEL_59:
      if (sub_1393054(v32))
      {
        *(a1 + 40) |= 0x20u;
        *(a1 + 112) = v32;
      }

      else
      {
        sub_1313740();
      }

      goto LABEL_67;
    }

    if (v8 >> 3 > 6)
    {
      if (v11 == 7)
      {
        if (v8 != 58)
        {
          goto LABEL_69;
        }

        *(a1 + 40) |= 4u;
        v35 = *(a1 + 8);
        v14 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v14 = *v14;
        }

        v15 = (a1 + 88);
      }

      else
      {
        if (v11 != 8 || v8 != 66)
        {
          goto LABEL_69;
        }

        *(a1 + 40) |= 8u;
        v25 = *(a1 + 8);
        v14 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v14 = *v14;
        }

        v15 = (a1 + 96);
      }

      goto LABEL_65;
    }

    if (v11 == 5)
    {
      break;
    }

    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_69;
    }

    v5 |= 0x40u;
    v17 = (v7 + 1);
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = (v7 + 2);
LABEL_25:
      *v43 = v17;
      *(a1 + 116) = v16 != 0;
      goto LABEL_67;
    }

    v41 = sub_19587DC(v7, v16);
    *v43 = v41;
    *(a1 + 116) = v42 != 0;
    if (!v41)
    {
      goto LABEL_86;
    }

LABEL_67:
    if (sub_195ADC0(a3, v43, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 42)
  {
    *(a1 + 40) |= 0x10u;
    v27 = *(a1 + 104);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_16F6144(v29);
      *(a1 + 104) = v27;
      v7 = *v43;
    }

    v30 = sub_21FC730(a3, v27, v7);
LABEL_66:
    *v43 = v30;
    if (!v30)
    {
      goto LABEL_86;
    }

    goto LABEL_67;
  }

LABEL_69:
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
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v38 = *(a1 + 8);
      if (v38)
      {
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v39 = sub_11F1920((a1 + 8));
        v7 = *v43;
      }

      v30 = sub_1952690(v8, v39, v7, a3);
    }

    else
    {
      v30 = sub_19525AC((a1 + 16), v8, v7, &off_27848B0, (a1 + 8), a3);
    }

    goto LABEL_66;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_86:
  *v43 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v43;
}

char *sub_17E83A4(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = sub_128AEEC(a3, 2, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 112);
  *v4 = 24;
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

LABEL_14:
  v12 = *(a1 + 56);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v14 = *(*(a1 + 64) + 8 * i + 8);
      *v7 = 34;
      v15 = *(v14 + 44);
      v7[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v7 + 1);
      }

      else
      {
        v16 = v7 + 2;
      }

      v7 = sub_17C2F98(v14, v16, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 104);
    *v7 = 42;
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

    v7 = sub_16F04D8(v19, v21, a3);
    if ((v6 & 0x40) == 0)
    {
LABEL_24:
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_24;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v22 = *(a1 + 116);
  *v7 = 48;
  v7[1] = v22;
  v7 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_25:
    if ((v6 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_40:
  v7 = sub_128AEEC(a3, 7, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v7);
  if ((v6 & 8) != 0)
  {
LABEL_26:
    v7 = sub_128AEEC(a3, 8, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

LABEL_27:
  if (*(a1 + 26))
  {
    v7 = sub_1953428(a1 + 16, 1000, 2000, v7, a3);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v7;
  }

  v23 = v17 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v7 >= v24)
  {
    v26 = v24;
    memcpy(v7, v25, v24);
    v7 += v26;
    return v7;
  }

  return sub_1957130(a3, v25, v24, v7);
}

uint64_t sub_17E86C0(uint64_t a1)
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
      v9 = sub_17C3204(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 0x7F) != 0)
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

      goto LABEL_24;
    }

LABEL_21:
    v17 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 8) == 0)
    {
LABEL_12:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

LABEL_24:
    v20 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v21 = *(v20 + 23);
    v22 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v22 = v21;
    }

    v4 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 0x10) == 0)
    {
LABEL_13:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

LABEL_27:
    v23 = sub_16F05A0(*(a1 + 104));
    v4 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 0x20) == 0)
    {
LABEL_32:
      v4 += (v10 >> 5) & 2;
      goto LABEL_33;
    }

LABEL_28:
    v24 = *(a1 + 112);
    if (v24 < 0)
    {
      v25 = 11;
    }

    else
    {
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v25;
    goto LABEL_32;
  }

LABEL_33:
  v26 = *(a1 + 8);
  if (v26)
  {
    v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v4 += v29;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_17E8910(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13EC520((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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

      goto LABEL_27;
    }

LABEL_24:
    v17 = *(a2 + 88);
    *(a1 + 40) |= 4u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 88), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    }

LABEL_27:
    v20 = *(a2 + 96);
    *(a1 + 40) |= 8u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 96), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 40) |= 0x10u;
    v23 = *(a1 + 104);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_16F6144(v25);
      *(a1 + 104) = v23;
    }

    if (*(a2 + 104))
    {
      v26 = *(a2 + 104);
    }

    else
    {
      v26 = &off_277EA18;
    }

    sub_132DE2C(v23, v26);
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

LABEL_38:
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

uint64_t sub_17E8B40(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_17C34A0(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 0x10) == 0)
    {
      return 1;
    }

    result = sub_16F061C(*(a1 + 104));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_17E8BC0(void *a1)
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

void sub_17E8C34(void *a1)
{
  sub_17E8BC0(a1);

  operator delete();
}

uint64_t *sub_17E8C6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17E8C7C(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17E8D10(uint64_t a1)
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

std::string *sub_17E8D3C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_17E8D70(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_270F2D8;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = &qword_278E990;
  a1[7] = &qword_278E990;
  a1[8] = &qword_278E990;
  a1[9] = &qword_278E990;
  a1[10] = &qword_278E990;
  a1[11] = 0x100000001;
  return a1;
}

void sub_17E8DF0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17E8E20(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270F2D8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = 0;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 48) = &qword_278E990;
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v8);
    v7 = *(a2 + 40);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v7 & 2) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v9);
    v7 = *(a2 + 40);
  }

  *(a1 + 64) = &qword_278E990;
  if ((v7 & 4) != 0)
  {
    v10 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v10);
    v7 = *(a2 + 40);
  }

  *(a1 + 72) = &qword_278E990;
  if ((v7 & 8) != 0)
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v11);
    v7 = *(a2 + 40);
  }

  *(a1 + 80) = &qword_278E990;
  if ((v7 & 0x10) != 0)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 80), (*(a2 + 80) & 0xFFFFFFFFFFFFFFFELL), v12);
  }

  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void sub_17E8FB8(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17E8FF4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    goto LABEL_15;
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

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17E90F0(uint64_t a1)
{
  sub_17E8FF4(a1);

  operator delete();
}

unsigned __int8 *sub_17E9128(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 0x7F) != 0)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_20:
      v7 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v3 & 0x10) == 0)
        {
LABEL_27:
          *(a1 + 88) = 0x100000001;
          goto LABEL_28;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
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

      goto LABEL_27;
    }

    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v6 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_28:
  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 32) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_17E9290(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 > 3)
    {
      if (v7 >> 3 <= 5)
      {
        if (v10 != 4)
        {
          if (v10 == 5 && v7 == 40)
          {
            v12 = v6 + 1;
            v11 = *v6;
            if (v11 < 0)
            {
              v13 = *v12;
              v11 = (v13 << 7) + v11 - 128;
              if (v13 < 0)
              {
                *v30 = sub_19587DC(v6, v11);
                if (!*v30)
                {
                  goto LABEL_75;
                }

                goto LABEL_16;
              }

              v12 = v6 + 2;
            }

            *v30 = v12;
LABEL_16:
            if (v11 > 2)
            {
              sub_12E85B8();
            }

            else
            {
              *(a1 + 40) |= 0x20u;
              *(a1 + 88) = v11;
            }

            goto LABEL_55;
          }

          goto LABEL_57;
        }

        if (v7 != 34)
        {
          goto LABEL_57;
        }

        *(a1 + 40) |= 8u;
        v20 = *(a1 + 8);
        v16 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v16 = *v16;
        }

        v17 = (a1 + 72);
LABEL_53:
        v25 = sub_194DB04(v17, v16);
        v26 = sub_1958890(v25, *v30, a3);
        goto LABEL_54;
      }

      if (v10 != 6)
      {
        if (v10 != 7 || v7 != 58)
        {
          goto LABEL_57;
        }

        *(a1 + 40) |= 0x10u;
        v18 = *(a1 + 8);
        v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v16 = *v16;
        }

        v17 = (a1 + 80);
        goto LABEL_53;
      }

      if (v7 != 48)
      {
        goto LABEL_57;
      }

      v22 = v6 + 1;
      v21 = *v6;
      if (v21 < 0)
      {
        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          *v30 = sub_19587DC(v6, v21);
          if (!*v30)
          {
            goto LABEL_75;
          }

          goto LABEL_47;
        }

        v22 = v6 + 2;
      }

      *v30 = v22;
LABEL_47:
      if ((v21 - 1) > 2)
      {
        sub_12E84C8();
      }

      else
      {
        *(a1 + 40) |= 0x40u;
        *(a1 + 92) = v21;
      }

      goto LABEL_55;
    }

    if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 40) |= 1u;
        v19 = *(a1 + 8);
        v16 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v16 = *v16;
        }

        v17 = (a1 + 48);
        goto LABEL_53;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 40) |= 2u;
        v24 = *(a1 + 8);
        v16 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v16 = *v16;
        }

        v17 = (a1 + 56);
        goto LABEL_53;
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      *(a1 + 40) |= 4u;
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v17 = (a1 + 64);
      goto LABEL_53;
    }

LABEL_57:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if ((v7 - 8000) >> 6 > 0x7C)
    {
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

      v26 = sub_1952690(v7, v29, v6, a3);
    }

    else
    {
      v26 = sub_19525AC((a1 + 16), v7, v6, &off_2784940, (a1 + 8), a3);
    }

LABEL_54:
    *v30 = v26;
    if (!v26)
    {
      goto LABEL_75;
    }

LABEL_55:
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

LABEL_75:
  *v30 = 0;
  return *v30;
}

char *sub_17E9624(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, a2);
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
    if ((v6 & 0x20) == 0)
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
  if ((v6 & 0x20) == 0)
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

  v8 = *(a1 + 88);
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
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 92);
    *v7 = 48;
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

  if ((v6 & 0x10) != 0)
  {
    v12 = sub_128AEEC(a3, 7, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v12);
  }

  if (*(a1 + 26))
  {
    v12 = sub_1953428(a1 + 16, 1000, 2000, v12, a3);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v12;
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

  if (*a3 - v12 >= v20)
  {
    v22 = v20;
    memcpy(v12, v21, v20);
    v12 += v22;
    return v12;
  }

  return sub_1957130(a3, v21, v20, v12);
}

uint64_t sub_17E989C(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_33;
  }

  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  v9 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  result += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v11 = *(v10 + 23);
  v12 = *(v10 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v12 = v11;
  }

  result += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_19:
  v13 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  result += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_22:
  v16 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  result += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_25:
  v19 = *(a1 + 88);
  if (v19 < 0)
  {
    v20 = 11;
  }

  else
  {
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v20;
  if ((v3 & 0x40) != 0)
  {
LABEL_29:
    v21 = *(a1 + 92);
    if (v21 < 0)
    {
      v22 = 11;
    }

    else
    {
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v22;
  }

LABEL_33:
  v23 = *(a1 + 8);
  if (v23)
  {
    v24 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    result += v25;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_17E9AD0(uint64_t a1, uint64_t a2)
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

      goto LABEL_24;
    }

LABEL_21:
    v12 = *(a2 + 64);
    *(a1 + 40) |= 4u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 64), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }

LABEL_24:
    v15 = *(a2 + 72);
    *(a1 + 40) |= 8u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    sub_194EA1C((a1 + 72), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_27:
    v18 = *(a2 + 80);
    *(a1 + 40) |= 0x10u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 80), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
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

LABEL_30:
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

uint64_t sub_17E9CA4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270F358;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_17E9D18(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17E9D48(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270F358;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    v8 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193D5D8((a1 + 40), v8, (v7 + 8), v6, **(a1 + 56) - *(a1 + 48));
    v9 = *(a1 + 48) + v6;
    *(a1 + 48) = v9;
    v10 = *(a1 + 56);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v11 = *(a2 + 72);
  if (v11)
  {
    v12 = *(a2 + 80);
    v13 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_193D5D8((a1 + 64), v13, (v12 + 8), v11, **(a1 + 80) - *(a1 + 72));
    v14 = *(a1 + 72) + v11;
    *(a1 + 72) = v14;
    v15 = *(a1 + 80);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 88) = 0;
  v16 = *(a2 + 8);
  if (v16)
  {
    sub_1957EF4(v4, (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  return a1;
}

void sub_17E9EAC(_Unwind_Exception *a1)
{
  sub_193B3DC(v1 + 5);
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17E9F10(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_193B3DC(a1 + 8);
  sub_193B3DC(a1 + 5);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17E9FA4(void *a1)
{
  sub_17E9F10(a1);

  operator delete();
}

unsigned __int8 *sub_17E9FDC(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 56) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17E9128(v5);
      --v3;
    }

    while (v3);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 72);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 80) + 8);
    do
    {
      v8 = *v7++;
      result = sub_17E9128(v8);
      --v6;
    }

    while (v6);
    *(a1 + 72) = 0;
  }

  v10 = *(a1 + 8);
  v9 = (a1 + 8);
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

char *sub_17EA088(uint64_t a1, char *a2, int32x2_t *a3)
{
  v27 = a2;
  if ((sub_195ADC0(a3, &v27, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v27 + 1;
      v7 = *v27;
      if (*v27 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(v27, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = v27 + 2;
        }
      }

      v27 = v6;
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v13 = v6 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            v27 = v13 + 1;
            v15 = *(a1 + 80);
            if (v15 && (v16 = *(a1 + 72), v16 < *v15))
            {
              *(a1 + 72) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = sub_1861C30(*(a1 + 64));
              v17 = sub_19593CC(a1 + 64, v18);
              v14 = v27;
            }

            v13 = sub_222F3C0(a3, v17, v14);
            v27 = v13;
            if (!v13)
            {
              return 0;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_41;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v27 = v19 + 1;
          v21 = *(a1 + 56);
          if (v21 && (v22 = *(a1 + 48), v22 < *v21))
          {
            *(a1 + 48) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_1861C30(*(a1 + 40));
            v23 = sub_19593CC(a1 + 40, v24);
            v20 = v27;
          }

          v19 = sub_222F3C0(a3, v23, v20);
          v27 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_41;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      if ((v7 - 8000) >> 6 > 0x7C)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v26 = sub_11F1920((a1 + 8));
          v6 = v27;
        }

        v12 = sub_1952690(v7, v26, v6, a3);
      }

      else
      {
        v12 = sub_19525AC((a1 + 16), v7, v6, &off_27849A0, (a1 + 8), a3);
      }

      v27 = v12;
      if (!v12)
      {
        return 0;
      }

LABEL_41:
      if (sub_195ADC0(a3, &v27, a3[11].i32[1]))
      {
        return v27;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v27;
    }

    return 0;
  }

  return v27;
}

char *sub_17EA2FC(uint64_t a1, char *a2, void *a3)
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

      a2 = sub_17E9624(v8, v10, a3);
    }
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v13 = *(*(a1 + 80) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 44);
      a2[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, a2 + 1);
      }

      else
      {
        v15 = a2 + 2;
      }

      a2 = sub_17E9624(v13, v15, a3);
    }
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 1000, 2000, a2, a3);
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if (*a3 - a2 >= v19)
  {
    v21 = v19;
    memcpy(a2, v20, v19);
    a2 += v21;
    return a2;
  }

  return sub_1957130(a3, v20, v19, a2);
}

uint64_t sub_17EA4E4(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
  v5 = *(a1 + 56);
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
      v9 = sub_17E989C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 72);
  v11 = v4 + v10;
  v12 = *(a1 + 80);
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
      v16 = sub_17E989C(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v11 += v20;
  }

  *(a1 + 88) = v11;
  return v11;
}

void sub_17EA5E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193D5D8((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_193D5D8((a1 + 64), v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_17EA704(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_195228C(*(*(a1 + 56) + 8 * v2) + 16);
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 72);
  do
  {
    v5 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = sub_195228C(*(*(a1 + 80) + 8 * v7) + 16);
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  return v5;
}

void *sub_17EA7A8(void *a1)
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

void sub_17EA81C(void *a1)
{
  sub_17EA7A8(a1);

  operator delete();
}

uint64_t sub_17EA854(uint64_t a1)
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

char *sub_17EA86C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
  {
    goto LABEL_27;
  }

  while (1)
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
    if (v7 == 8)
    {
      LODWORD(v13) = *v6;
      if ((v13 & 0x80000000) != 0)
      {
        v13 = (v6[1] << 7) + v13 - 128;
        if (v6[1] < 0)
        {
          v15 = sub_19587DC(v6, v13);
          v18 = v15;
          *(a1 + 24) = v16;
          v5 = 1;
          if (!v15)
          {
            goto LABEL_28;
          }

          goto LABEL_20;
        }

        v14 = v6 + 2;
      }

      else
      {
        v14 = v6 + 1;
      }

      v18 = v14;
      *(a1 + 24) = v13;
      v5 = 1;
      goto LABEL_20;
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
      v6 = v18;
    }

    v18 = sub_1952690(v7, v12, v6, a3);
    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
    {
      goto LABEL_27;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_27;
  }

LABEL_28:
  v18 = 0;
LABEL_27:
  *(a1 + 16) |= v5;
  return v18;
}

char *sub_17EA9E4(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17EAB0C(uint64_t a1)
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

uint64_t sub_17EAB90(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_270F458;
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
    sub_13B5364((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  v11 = *(a2 + 16);
  if (v11)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_17EAD50(uint64_t a1)
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

  if (a1 != &off_2784A20)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_16E5B34(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_13B52E0((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17EAE2C(uint64_t a1)
{
  sub_17EAD50(a1);

  operator delete();
}

unsigned __int8 *sub_17EAE64(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E5B70(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = sub_16E5B70(*(v1 + 6));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_16E5B70(*(v1 + 7));
    }
  }

  v7 = v1[8];
  v6 = v1 + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_17EAF08(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v30, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v30 + 1;
    v7 = *v30;
    if (*v30 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v30, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v30 + 2;
      }
    }

    v30 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = (v20 + 1);
          v30 = v20 + 1;
          v22 = *(a1 + 40);
          if (v22 && (v23 = *(a1 + 32), v23 < *v22))
          {
            *(a1 + 32) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            sub_16F58FC(*(a1 + 24));
            v24 = sub_19593CC(a1 + 24, v25);
            v21 = v30;
          }

          v20 = sub_21F86E8(a3, v24, v21);
          v30 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 26)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 56);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          sub_16F58FC(v18);
          v16 = v19;
          *(a1 + 56) = v19;
LABEL_39:
          v6 = v30;
        }

LABEL_40:
        v15 = sub_21F86E8(a3, v16, v6);
        goto LABEL_41;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 48);
      if (!v16)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        sub_16F58FC(v27);
        v16 = v28;
        *(a1 + 48) = v28;
        goto LABEL_39;
      }

      goto LABEL_40;
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
        return v30;
      }

      return 0;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = v30;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_41:
    v30 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  return v30;
}

char *sub_17EB138(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 48);
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

    v4 = sub_16E5FE0(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 56);
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

    v4 = sub_16E5FE0(v10, v12, a3);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v16 = *(v15 + 20);
      v4[1] = v16;
      if (v16 > 0x7F)
      {
        v17 = sub_19575D0(v16, v4 + 1);
      }

      else
      {
        v17 = v4 + 2;
      }

      v4 = sub_16E5FE0(v15, v17, a3);
    }
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v21)
  {
    v23 = v21;
    memcpy(v4, v22, v21);
    v4 += v23;
    return v4;
  }

  return sub_1957130(a3, v22, v21, v4);
}

uint64_t sub_17EB344(uint64_t a1)
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
      v7 = sub_16E62F4(v6);
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
      v9 = sub_16E62F4(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_16E62F4(*(a1 + 56));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_17EB458(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B5364((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
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

        sub_16F58FC(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E650;
      }

      sub_16E645C(v10, v13);
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

        sub_16F58FC(v16);
        *(a1 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_277E650;
      }

      sub_16E645C(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_17EB5B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16E6614(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if (!v4)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_16E6614(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_17EB638(void *a1)
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

void sub_17EB6AC(void *a1)
{
  sub_17EB638(a1);

  operator delete();
}

uint64_t *sub_17EB6E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17EB6F4(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17EB788(uint64_t a1)
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

std::string *sub_17EB7B4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17EB7E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_270F558;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_193D664(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
    v9 = *(a1 + 24) + v6;
    *(a1 + 24) = v9;
    v10 = *(a1 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 40) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_17EB8C8(_Unwind_Exception *a1)
{
  sub_193B460(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_17EB90C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_193B460(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17EB98C(void *a1)
{
  sub_17EB90C(a1);

  operator delete();
}

uint64_t sub_17EB9C4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1752AA4(v4);
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

char *sub_17EBA40(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_1753488(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_22468A8(a3, v16, v13);
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

char *sub_17EBBD0(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_1752D30(v8, v10, a3);
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

uint64_t sub_17EBD10(uint64_t a1)
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
      v7 = sub_1752F1C(v6);
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

void sub_17EBDB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_193D664((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}