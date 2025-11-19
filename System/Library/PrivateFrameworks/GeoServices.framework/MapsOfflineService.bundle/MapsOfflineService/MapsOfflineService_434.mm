char *sub_17A5C2C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
  {
    return v29;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v29 + 1;
    v8 = *v29;
    if (*v29 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v29, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v29 + 2;
      }
    }

    v29 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 == 24)
    {
      v19 = v7 - 1;
      while (1)
      {
        v29 = v19 + 1;
        v20 = v19[1];
        v21 = v19 + 2;
        if (v20 < 0)
        {
          v22 = *v21;
          v23 = (v22 << 7) + v20;
          LODWORD(v20) = v23 - 128;
          if (v22 < 0)
          {
            v29 = sub_19587DC((v19 + 1), (v23 - 128));
            if (!v29)
            {
              return 0;
            }

            LODWORD(v20) = v26;
            goto LABEL_33;
          }

          v21 = v19 + 3;
        }

        v29 = v21;
LABEL_33:
        if (v20 > 0x16)
        {
          sub_1313740();
        }

        else
        {
          v24 = *(a1 + 24);
          if (v24 == *(a1 + 28))
          {
            v25 = v24 + 1;
            sub_1958E5C((a1 + 24), v24 + 1);
            *(*(a1 + 32) + 4 * v24) = v20;
          }

          else
          {
            *(*(a1 + 32) + 4 * v24) = v20;
            v25 = v24 + 1;
          }

          *(a1 + 24) = v25;
        }

        v19 = v29;
        if (*a3 <= v29 || *v29 != 24)
        {
          goto LABEL_50;
        }
      }
    }

    if (v8 != 26)
    {
      goto LABEL_14;
    }

    *&v30 = a1 + 24;
    *(&v30 + 1) = sub_17A5F18;
    v31 = a1 + 8;
    v32 = 3;
    v16 = sub_1216588(a3, v7, &v30);
LABEL_49:
    v29 = v16;
    if (!v16)
    {
      return 0;
    }

LABEL_50:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      return v29;
    }
  }

  if (v12 == 2)
  {
    if (v8 == 18)
    {
      *(a1 + 16) |= 2u;
      v17 = *(a1 + 48);
      if (!v17)
      {
        v18 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v6)
        {
          v18 = *v18;
        }

        v17 = sub_185DAF4(v18);
        *(a1 + 48) = v17;
        v7 = v29;
      }

      v16 = sub_2241F8C(a3, v17, v7);
      goto LABEL_49;
    }
  }

  else if (v12 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v27 = *(a1 + 40);
    if (!v27)
    {
      v28 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v6)
      {
        v28 = *v28;
      }

      v27 = sub_16F5828(v28);
      *(a1 + 40) = v27;
      v7 = v29;
    }

    v16 = sub_21F4D60(a3, v27, v7);
    goto LABEL_49;
  }

LABEL_14:
  if (v8)
  {
    v14 = (v8 & 7) == 4;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    if (*v6)
    {
      v15 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v29;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_49;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return v29;
}

char *sub_17A5F24(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 40);
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

    v4 = sub_16E5070(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 48);
    *v4 = 18;
    v11 = *(v10 + 44);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_17A01E4(v10, v12, a3);
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

      v15 = *(*(a1 + 32) + 4 * i);
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

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v16;
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

  if (*a3 - v16 >= v22)
  {
    v24 = v22;
    memcpy(v16, v23, v22);
    v16 += v24;
    return v16;
  }

  return sub_1957130(a3, v23, v22, v16);
}

uint64_t sub_17A6148(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4 + v2;
  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = sub_16E51F0(*(a1 + 40));
      v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = sub_17A046C(*(a1 + 48));
      v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v7 += v14;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_17A6260(uint64_t a1, uint64_t a2)
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

        v9 = sub_16F5828(v11);
        *(a1 + 40) = v9;
      }

      if (*(a2 + 40))
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = &off_277E5E8;
      }

      sub_16E527C(v9, v12);
    }

    if ((v8 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 48);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_185DAF4(v15);
        *(a1 + 48) = v13;
      }

      if (*(a2 + 48))
      {
        v16 = *(a2 + 48);
      }

      else
      {
        v16 = &off_2782860;
      }

      sub_17A058C(v13, v16);
    }
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17A63A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E5370(*(a1 + 40));
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

  result = sub_17A0860(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_17A6404(uint64_t a1)
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

  if (a1 != &off_2782B30)
  {
    if (*(a1 + 72))
    {
      sub_16E4E08();
      operator delete();
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      sub_16E5B34(v5);
      operator delete();
    }

    v6 = *(a1 + 88);
    if (v6)
    {
      sub_139617C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956ABC(a1 + 56);
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17A650C(uint64_t a1)
{
  sub_17A6404(a1);

  operator delete();
}

uint64_t sub_17A6544(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_16E4E44(*(result + 72));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_16E5B70(*(v1 + 80));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_138741C(*(v1 + 88));
    }
  }

LABEL_6:
  if ((v2 & 0x38) != 0)
  {
    *(v1 + 96) = 0xC800000000;
    *(v1 + 104) = 200;
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

char *sub_17A65F4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v57 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, &v57, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    while (1)
    {
      v8 = v57 + 1;
      v9 = *v57;
      if (*v57 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(v57, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = v57 + 2;
        }
      }

      v57 = v8;
      v13 = v9 >> 3;
      if (v9 >> 3 > 4)
      {
        break;
      }

      if (v9 >> 3 > 2)
      {
        if (v13 != 3)
        {
          if (v13 != 4)
          {
            goto LABEL_118;
          }

          if (v9 != 32)
          {
            if (v9 == 34)
            {
              *&v58 = a1 + 24;
              *(&v58 + 1) = sub_17968C4;
              v59 = a1 + 8;
              v60 = 4;
              v36 = sub_1216588(a3, v8, &v58);
              goto LABEL_125;
            }

            goto LABEL_118;
          }

          v20 = v8 - 1;
          while (2)
          {
            v57 = v20 + 1;
            v21 = v20[1];
            v22 = v20 + 2;
            if (v21 < 0)
            {
              v23 = *v22;
              v24 = (v23 << 7) + v21;
              LODWORD(v21) = v24 - 128;
              if ((v23 & 0x80000000) == 0)
              {
                v22 = v20 + 3;
                goto LABEL_36;
              }

              v57 = sub_19587DC((v20 + 1), (v24 - 128));
              if (!v57)
              {
                goto LABEL_132;
              }

              LODWORD(v21) = v27;
            }

            else
            {
LABEL_36:
              v57 = v22;
            }

            if (v21 > 0x17)
            {
              sub_12E8500();
            }

            else
            {
              v25 = *(a1 + 24);
              if (v25 == *(a1 + 28))
              {
                v26 = v25 + 1;
                sub_1958E5C((a1 + 24), v25 + 1);
                *(*(a1 + 32) + 4 * v25) = v21;
              }

              else
              {
                *(*(a1 + 32) + 4 * v25) = v21;
                v26 = v25 + 1;
              }

              *(a1 + 24) = v26;
            }

            v20 = v57;
            if (*a3 <= v57 || *v57 != 32)
            {
              goto LABEL_126;
            }

            continue;
          }
        }

        if (v9 != 24)
        {
          goto LABEL_118;
        }

        v5 |= 0x20u;
        LODWORD(v37) = *v8;
        if ((v37 & 0x80000000) != 0)
        {
          v37 = (v8[1] << 7) + v37 - 128;
          if (v8[1] < 0)
          {
            v52 = sub_19587DC(v8, v37);
            v57 = v52;
            *(a1 + 104) = v53;
            if (!v52)
            {
              goto LABEL_132;
            }

            goto LABEL_126;
          }

          v38 = v8 + 2;
        }

        else
        {
          v38 = v8 + 1;
        }

        v57 = v38;
        *(a1 + 104) = v37;
      }

      else
      {
        if (v13 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_118;
          }

          *(a1 + 16) |= 1u;
          v34 = *(a1 + 72);
          if (!v34)
          {
            v35 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v7)
            {
              v35 = *v35;
            }

            v34 = sub_16F5828(v35);
            *(a1 + 72) = v34;
            v8 = v57;
          }

          v36 = sub_21F4D60(a3, v34, v8);
          goto LABEL_125;
        }

        if (v13 != 2 || v9 != 16)
        {
          goto LABEL_118;
        }

        v5 |= 0x10u;
        LODWORD(v18) = *v8;
        if ((v18 & 0x80000000) != 0)
        {
          v18 = (v8[1] << 7) + v18 - 128;
          if (v8[1] < 0)
          {
            v50 = sub_19587DC(v8, v18);
            v57 = v50;
            *(a1 + 100) = v51;
            if (!v50)
            {
              goto LABEL_132;
            }

            goto LABEL_126;
          }

          v19 = v8 + 2;
        }

        else
        {
          v19 = v8 + 1;
        }

        v57 = v19;
        *(a1 + 100) = v18;
      }

LABEL_126:
      if (sub_195ADC0(a3, &v57, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    if (v9 >> 3 <= 6)
    {
      if (v13 == 5)
      {
        if (v9 == 40)
        {
          v42 = v8 - 1;
          while (1)
          {
            v57 = v42 + 1;
            v43 = v42[1];
            if (v42[1] < 0)
            {
              v44 = v43 + (v42[2] << 7);
              v43 = v44 - 128;
              if (v42[2] < 0)
              {
                v42 = sub_1958770((v42 + 1), v44 - 128);
                v43 = v45;
              }

              else
              {
                v42 += 3;
              }
            }

            else
            {
              v42 += 2;
            }

            v57 = v42;
            v46 = *(a1 + 40);
            if (v46 == *(a1 + 44))
            {
              v47 = v46 + 1;
              sub_1958E5C((a1 + 40), v46 + 1);
              *(*(a1 + 48) + 4 * v46) = v43;
              v42 = v57;
            }

            else
            {
              *(*(a1 + 48) + 4 * v46) = v43;
              v47 = v46 + 1;
            }

            *(a1 + 40) = v47;
            if (!v42)
            {
              goto LABEL_132;
            }

            if (*a3 <= v42 || *v42 != 40)
            {
              goto LABEL_126;
            }
          }
        }

        if (v9 != 42)
        {
          goto LABEL_118;
        }

        v54 = (a1 + 40);
      }

      else
      {
        if (v13 != 6)
        {
          goto LABEL_118;
        }

        if (v9 == 48)
        {
          v28 = v8 - 1;
          while (1)
          {
            v57 = v28 + 1;
            v29 = v28[1];
            if (v28[1] < 0)
            {
              v30 = v29 + (v28[2] << 7);
              v29 = v30 - 128;
              if (v28[2] < 0)
              {
                v28 = sub_1958770((v28 + 1), v30 - 128);
                v29 = v31;
              }

              else
              {
                v28 += 3;
              }
            }

            else
            {
              v28 += 2;
            }

            v57 = v28;
            v32 = *(a1 + 56);
            if (v32 == *(a1 + 60))
            {
              v33 = v32 + 1;
              sub_1958E5C((a1 + 56), v32 + 1);
              *(*(a1 + 64) + 4 * v32) = v29;
              v28 = v57;
            }

            else
            {
              *(*(a1 + 64) + 4 * v32) = v29;
              v33 = v32 + 1;
            }

            *(a1 + 56) = v33;
            if (!v28)
            {
              goto LABEL_132;
            }

            if (*a3 <= v28 || *v28 != 48)
            {
              goto LABEL_126;
            }
          }
        }

        if (v9 != 50)
        {
          goto LABEL_118;
        }

        v54 = (a1 + 56);
      }

      v36 = sub_1958918(v54, v8, a3);
      goto LABEL_125;
    }

    if (v13 != 7)
    {
      if (v13 != 8)
      {
        if (v13 != 9 || v9 != 72)
        {
          goto LABEL_118;
        }

        v15 = v8 + 1;
        v14 = *v8;
        if (v14 < 0)
        {
          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if (v16 < 0)
          {
            v57 = sub_19587DC(v8, v14);
            if (!v57)
            {
              goto LABEL_132;
            }

            goto LABEL_18;
          }

          v15 = v8 + 2;
        }

        v57 = v15;
LABEL_18:
        if (v14 > 2)
        {
          sub_13B6774();
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 96) = v14;
        }

        goto LABEL_126;
      }

      if (v9 == 66)
      {
        *(a1 + 16) |= 4u;
        v48 = *(a1 + 88);
        if (!v48)
        {
          v49 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v49 = *v49;
          }

          v48 = sub_13AE4CC(v49);
          *(a1 + 88) = v48;
          v8 = v57;
        }

        v36 = sub_2202C60(a3, v48, v8);
        goto LABEL_125;
      }

LABEL_118:
      if (v9)
      {
        v55 = (v9 & 7) == 4;
      }

      else
      {
        v55 = 1;
      }

      if (v55)
      {
        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
          goto LABEL_2;
        }

LABEL_132:
        v57 = 0;
        goto LABEL_2;
      }

      if (*v7)
      {
        v56 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v56 = sub_11F1920((a1 + 8));
        v8 = v57;
      }

      v36 = sub_1952690(v9, v56, v8, a3);
      goto LABEL_125;
    }

    if (v9 != 58)
    {
      goto LABEL_118;
    }

    *(a1 + 16) |= 2u;
    v39 = *(a1 + 80);
    if (!v39)
    {
      v40 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v7)
      {
        v40 = *v40;
      }

      sub_16F58FC(v40);
      v39 = v41;
      *(a1 + 80) = v41;
      v8 = v57;
    }

    v36 = sub_21F86E8(a3, v39, v8);
LABEL_125:
    v57 = v36;
    if (!v36)
    {
      goto LABEL_132;
    }

    goto LABEL_126;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v57;
}

char *sub_17A6C6C(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 72);
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

    a2 = sub_16E5070(v6, v8, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 100);
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

  if ((v5 & 0x20) != 0)
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

  v18 = *(a1 + 24);
  if (v18 < 1)
  {
    v21 = v14;
  }

  else
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v20 = *(*(a1 + 32) + 4 * i);
      *v14 = 32;
      v14[1] = v20;
      if (v20 > 0x7F)
      {
        v14[1] = v20 | 0x80;
        v22 = v20 >> 7;
        v14[2] = v20 >> 7;
        v21 = v14 + 3;
        if (v20 >= 0x4000)
        {
          LOBYTE(v14) = v14[2];
          do
          {
            *(v21 - 1) = v14 | 0x80;
            v14 = (v22 >> 7);
            *v21++ = v22 >> 7;
            v23 = v22 >> 14;
            v22 >>= 7;
          }

          while (v23);
        }
      }

      else
      {
        v21 = v14 + 2;
      }

      v14 = v21;
    }
  }

  v24 = *(a1 + 40);
  if (v24 < 1)
  {
    v27 = v21;
  }

  else
  {
    for (j = 0; j != v24; ++j)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v26 = *(*(a1 + 48) + 4 * j);
      *v21 = 40;
      v21[1] = v26;
      if (v26 > 0x7F)
      {
        v21[1] = v26 | 0x80;
        v28 = v26 >> 7;
        v21[2] = v26 >> 7;
        v27 = v21 + 3;
        if (v26 >= 0x4000)
        {
          LOBYTE(v29) = v21[2];
          do
          {
            *(v27 - 1) = v29 | 0x80;
            v29 = v28 >> 7;
            *v27++ = v28 >> 7;
            v30 = v28 >> 14;
            v28 >>= 7;
          }

          while (v30);
        }
      }

      else
      {
        v27 = v21 + 2;
      }

      v21 = v27;
    }
  }

  v31 = *(a1 + 56);
  if (v31 < 1)
  {
    v34 = v27;
  }

  else
  {
    for (k = 0; k != v31; ++k)
    {
      if (*a3 <= v27)
      {
        v27 = sub_225EB68(a3, v27);
      }

      v33 = *(*(a1 + 64) + 4 * k);
      *v27 = 48;
      v27[1] = v33;
      if (v33 > 0x7F)
      {
        v27[1] = v33 | 0x80;
        v35 = v33 >> 7;
        v27[2] = v33 >> 7;
        v34 = v27 + 3;
        if (v33 >= 0x4000)
        {
          LOBYTE(v27) = v27[2];
          do
          {
            *(v34 - 1) = v27 | 0x80;
            LODWORD(v27) = v35 >> 7;
            *v34++ = v35 >> 7;
            v36 = v35 >> 14;
            v35 >>= 7;
          }

          while (v36);
        }
      }

      else
      {
        v34 = v27 + 2;
      }

      v27 = v34;
    }
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_64;
    }

LABEL_72:
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v41 = *(a1 + 88);
    *v34 = 66;
    v42 = *(v41 + 48);
    v34[1] = v42;
    if (v42 > 0x7F)
    {
      v43 = sub_19575D0(v42, v34 + 1);
    }

    else
    {
      v43 = v34 + 2;
    }

    v34 = sub_1396484(v41, v43, a3);
    if ((v5 & 8) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_78;
  }

  if (*a3 <= v34)
  {
    v34 = sub_225EB68(a3, v34);
  }

  v38 = *(a1 + 80);
  *v34 = 58;
  v39 = *(v38 + 20);
  v34[1] = v39;
  if (v39 > 0x7F)
  {
    v40 = sub_19575D0(v39, v34 + 1);
  }

  else
  {
    v40 = v34 + 2;
  }

  v34 = sub_16E5FE0(v38, v40, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_72;
  }

LABEL_64:
  if ((v5 & 8) == 0)
  {
LABEL_65:
    v37 = v34;
    goto LABEL_85;
  }

LABEL_78:
  if (*a3 <= v34)
  {
    v34 = sub_225EB68(a3, v34);
  }

  v44 = *(a1 + 96);
  *v34 = 72;
  v34[1] = v44;
  if (v44 > 0x7F)
  {
    v34[1] = v44 | 0x80;
    v45 = v44 >> 7;
    v34[2] = v44 >> 7;
    v37 = v34 + 3;
    if (v44 >= 0x4000)
    {
      LOBYTE(v34) = v34[2];
      do
      {
        *(v37 - 1) = v34 | 0x80;
        v34 = (v45 >> 7);
        *v37++ = v45 >> 7;
        v46 = v45 >> 14;
        v45 >>= 7;
      }

      while (v46);
    }
  }

  else
  {
    v37 = v34 + 2;
  }

LABEL_85:
  v47 = *(a1 + 8);
  if ((v47 & 1) == 0)
  {
    return v37;
  }

  v49 = v47 & 0xFFFFFFFFFFFFFFFCLL;
  v50 = *(v49 + 31);
  if (v50 < 0)
  {
    v51 = *(v49 + 8);
    v50 = *(v49 + 16);
  }

  else
  {
    v51 = (v49 + 8);
  }

  if (*a3 - v37 >= v50)
  {
    v52 = v50;
    memcpy(v37, v51, v50);
    v37 += v52;
    return v37;
  }

  return sub_1957130(a3, v51, v50, v37);
}

uint64_t sub_17A71D8(uint64_t a1)
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

  v7 = sub_1959E5C((a1 + 40));
  v8 = *(a1 + 40);
  v9 = v3 + v7 + v2 + v8 + sub_1959E5C((a1 + 56)) + *(a1 + 56);
  v10 = *(a1 + 16);
  if ((v10 & 0x3F) == 0)
  {
    goto LABEL_20;
  }

  if (v10)
  {
    v16 = sub_16E51F0(*(a1 + 72));
    v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_12:
      if ((v10 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_12;
  }

  v17 = sub_16E62F4(*(a1 + 80));
  v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_13:
    if ((v10 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v18 = sub_139667C(*(a1 + 88));
  v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_14:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_25:
  v19 = *(a1 + 96);
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
  if ((v10 & 0x10) == 0)
  {
LABEL_15:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_29:
  v22 = *(a1 + 100);
  v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 11;
  }

  v9 += v24;
  if ((v10 & 0x20) != 0)
  {
LABEL_16:
    v11 = *(a1 + 104);
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 11;
    }

    v9 += v13;
  }

LABEL_20:
  v14 = *(a1 + 8);
  if (v14)
  {
    v25 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v9 += v26;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_17A7408(uint64_t a1, uint64_t a2)
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

  v14 = *(a2 + 16);
  if ((v14 & 0x3F) != 0)
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

        v16 = sub_16F5828(v18);
        *(a1 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v19 = *(a2 + 72);
      }

      else
      {
        v19 = &off_277E5E8;
      }

      sub_16E527C(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_36;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 16) |= 2u;
    v20 = *(a1 + 80);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_16F58FC(v22);
      *(a1 + 80) = v20;
    }

    if (*(a2 + 80))
    {
      v23 = *(a2 + 80);
    }

    else
    {
      v23 = &off_277E650;
    }

    sub_16E645C(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_44;
    }

LABEL_36:
    *(a1 + 16) |= 4u;
    v24 = *(a1 + 88);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_13AE4CC(v26);
      *(a1 + 88) = v24;
    }

    if (*(a2 + 88))
    {
      v27 = *(a2 + 88);
    }

    else
    {
      v27 = &off_276D8D8;
    }

    sub_1319618(v24, v27);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(a1 + 96) = *(a2 + 96);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
LABEL_15:
        *(a1 + 16) |= v14;
        goto LABEL_16;
      }

LABEL_14:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_15;
    }

LABEL_45:
    *(a1 + 100) = *(a2 + 100);
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17A766C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E5370(*(a1 + 72));
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

  result = sub_16E6614(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_17A76C8(uint64_t a1)
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

  if (a1 != &off_2782BA0)
  {
    if (*(a1 + 40))
    {
      sub_16E4E08();
      operator delete();
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      sub_1793738(v5);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17A77A0(uint64_t a1)
{
  sub_17A76C8(a1);

  operator delete();
}

uint64_t sub_17A77D8(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      result = sub_16E4E44(*(result + 40));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1792FE8(*(v1 + 48));
    }

    *(v1 + 56) = 0xC8000000C8;
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

char *sub_17A7854(uint64_t a1, char *a2, int32x2_t *a3)
{
  v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v38 + 1;
    v9 = *v38;
    if (*v38 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v38, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v38 + 2;
      }
    }

    v38 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 <= 2)
    {
      break;
    }

    if (v13 != 3)
    {
      if (v13 != 4)
      {
        if (v13 == 5 && v9 == 42)
        {
          *(a1 + 16) |= 2u;
          v14 = *(a1 + 48);
          if (!v14)
          {
            v15 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v7)
            {
              v15 = *v15;
            }

            v14 = sub_185D2C4(v15);
            *(a1 + 48) = v14;
            v8 = v38;
          }

          v16 = sub_224252C(a3, v14, v8);
          goto LABEL_71;
        }

        goto LABEL_64;
      }

      if (v9 != 32)
      {
        if (v9 == 34)
        {
          *&v39 = a1 + 24;
          *(&v39 + 1) = sub_17A7C30;
          v40 = a1 + 8;
          v41 = 4;
          v16 = sub_1216588(a3, v8, &v39);
          goto LABEL_71;
        }

        goto LABEL_64;
      }

      v22 = v8 - 1;
      while (1)
      {
        v38 = v22 + 1;
        v23 = v22[1];
        v24 = v22 + 2;
        if (v23 < 0)
        {
          v25 = *v24;
          v26 = (v25 << 7) + v23;
          LODWORD(v23) = v26 - 128;
          if (v25 < 0)
          {
            v38 = sub_19587DC((v22 + 1), (v26 - 128));
            if (!v38)
            {
              goto LABEL_77;
            }

            LODWORD(v23) = v29;
            goto LABEL_35;
          }

          v24 = v22 + 3;
        }

        v38 = v24;
LABEL_35:
        if (v23 > 0xD)
        {
          sub_12E8500();
        }

        else
        {
          v27 = *(a1 + 24);
          if (v27 == *(a1 + 28))
          {
            v28 = v27 + 1;
            sub_1958E5C((a1 + 24), v27 + 1);
            *(*(a1 + 32) + 4 * v27) = v23;
          }

          else
          {
            *(*(a1 + 32) + 4 * v27) = v23;
            v28 = v27 + 1;
          }

          *(a1 + 24) = v28;
        }

        v22 = v38;
        if (*a3 <= v38 || *v38 != 32)
        {
          goto LABEL_72;
        }
      }
    }

    if (v9 != 24)
    {
      goto LABEL_64;
    }

    v5 |= 8u;
    LODWORD(v20) = *v8;
    if ((v20 & 0x80000000) != 0)
    {
      v20 = (v8[1] << 7) + v20 - 128;
      if (v8[1] < 0)
      {
        v32 = sub_19587DC(v8, v20);
        v38 = v32;
        *(a1 + 60) = v33;
        if (!v32)
        {
          goto LABEL_77;
        }

        goto LABEL_72;
      }

      v21 = v8 + 2;
    }

    else
    {
      v21 = v8 + 1;
    }

    v38 = v21;
    *(a1 + 60) = v20;
LABEL_72:
    if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 != 1)
  {
    if (v13 != 2 || v9 != 16)
    {
      goto LABEL_64;
    }

    v5 |= 4u;
    LODWORD(v18) = *v8;
    if ((v18 & 0x80000000) != 0)
    {
      v18 = (v8[1] << 7) + v18 - 128;
      if (v8[1] < 0)
      {
        v34 = sub_19587DC(v8, v18);
        v38 = v34;
        *(a1 + 56) = v35;
        if (!v34)
        {
          goto LABEL_77;
        }

        goto LABEL_72;
      }

      v19 = v8 + 2;
    }

    else
    {
      v19 = v8 + 1;
    }

    v38 = v19;
    *(a1 + 56) = v18;
    goto LABEL_72;
  }

  if (v9 == 10)
  {
    *(a1 + 16) |= 1u;
    v30 = *(a1 + 40);
    if (!v30)
    {
      v31 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v7)
      {
        v31 = *v31;
      }

      v30 = sub_16F5828(v31);
      *(a1 + 40) = v30;
      v8 = v38;
    }

    v16 = sub_21F4D60(a3, v30, v8);
LABEL_71:
    v38 = v16;
    if (!v16)
    {
      goto LABEL_77;
    }

    goto LABEL_72;
  }

LABEL_64:
  if (v9)
  {
    v36 = (v9 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    if (*v7)
    {
      v37 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v8 = v38;
    }

    v16 = sub_1952690(v9, v37, v8, a3);
    goto LABEL_71;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_77:
    v38 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

char *sub_17A7C3C(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 40);
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

    a2 = sub_16E5070(v6, v8, a3);
  }

  if ((v5 & 4) != 0)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 60);
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

  v18 = *(a1 + 24);
  if (v18 < 1)
  {
    v21 = v14;
  }

  else
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v20 = *(*(a1 + 32) + 4 * i);
      *v14 = 32;
      v14[1] = v20;
      if (v20 > 0x7F)
      {
        v14[1] = v20 | 0x80;
        v22 = v20 >> 7;
        v14[2] = v20 >> 7;
        v21 = v14 + 3;
        if (v20 >= 0x4000)
        {
          LOBYTE(v23) = v14[2];
          do
          {
            *(v21 - 1) = v23 | 0x80;
            v23 = v22 >> 7;
            *v21++ = v22 >> 7;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
        }
      }

      else
      {
        v21 = v14 + 2;
      }

      v14 = v21;
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v25 = *(a1 + 48);
    *v21 = 42;
    v26 = *(v25 + 20);
    v21[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v21 + 1);
    }

    else
    {
      v27 = v21 + 2;
    }

    v21 = sub_17939C8(v25, v27, a3);
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v21;
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

  if (*a3 - v21 >= v31)
  {
    v33 = v31;
    memcpy(v21, v32, v31);
    v21 += v33;
    return v21;
  }

  return sub_1957130(a3, v32, v31, v21);
}

uint64_t sub_17A7F70(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4 + v2;
  v8 = *(a1 + 16);
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_25;
  }

  if (v8)
  {
    v9 = sub_16E51F0(*(a1 + 40));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_1793B78(*(a1 + 48));
  v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_17:
  v11 = *(a1 + 56);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 += v12;
  if ((v8 & 8) != 0)
  {
LABEL_21:
    v13 = *(a1 + 60);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v14;
  }

LABEL_25:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v7 += v18;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_17A8100(uint64_t a1, uint64_t a2)
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
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 40);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_16F5828(v12);
        *(a1 + 40) = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_277E5E8;
      }

      sub_16E527C(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_185D2C4(v16);
      *(a1 + 48) = v14;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &off_27822F0;
    }

    sub_128F8FC(v14, v17);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
LABEL_9:
        *(a1 + 16) |= v8;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_9;
    }

LABEL_30:
    *(a1 + 56) = *(a2 + 56);
    if ((v8 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17A827C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

unsigned __int8 *sub_17A82BC(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if (*(a1 + 40))
  {
    result = sub_1916648(*(a1 + 48));
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_17A8328(uint64_t a1)
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

  if (a1 != &off_2782BE0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      sub_1917370(v5);
      operator delete();
    }

    if (*(a1 + 48))
    {
      sub_16E4E08();
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_179FCF4(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17A8420(uint64_t a1)
{
  sub_17A8328(a1);

  operator delete();
}

uint64_t sub_17A8458(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_17A82BC(*(result + 40));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_16E4E44(*(v1 + 48));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_179FE24(*(v1 + 56));
    }
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

char *sub_17A84E4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    return v31;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v31, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v12 != 3)
    {
      if (v12 == 4 && v8 == 34)
      {
        *(a1 + 16) |= 4u;
        v17 = *(a1 + 56);
        if (!v17)
        {
          v18 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v6)
          {
            v18 = *v18;
          }

          v17 = sub_185DAF4(v18);
          *(a1 + 56) = v17;
          v7 = v31;
        }

        v16 = sub_2241F8C(a3, v17, v7);
        goto LABEL_60;
      }

      goto LABEL_53;
    }

    if (v8 == 24)
    {
      v21 = v7 - 1;
      while (1)
      {
        v31 = v21 + 1;
        v22 = v21[1];
        v23 = v21 + 2;
        if (v22 < 0)
        {
          v24 = *v23;
          v25 = (v24 << 7) + v22;
          LODWORD(v22) = v25 - 128;
          if (v24 < 0)
          {
            v31 = sub_19587DC((v21 + 1), (v25 - 128));
            if (!v31)
            {
              return 0;
            }

            LODWORD(v22) = v28;
            goto LABEL_40;
          }

          v23 = v21 + 3;
        }

        v31 = v23;
LABEL_40:
        if (v22 > 0x17)
        {
          sub_1313740();
        }

        else
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

        v21 = v31;
        if (*a3 <= v31 || *v31 != 24)
        {
          goto LABEL_61;
        }
      }
    }

    if (v8 != 26)
    {
      goto LABEL_53;
    }

    *&v32 = a1 + 24;
    *(&v32 + 1) = sub_17968C4;
    v33 = a1 + 8;
    v34 = 3;
    v16 = sub_1216588(a3, v7, &v32);
LABEL_60:
    v31 = v16;
    if (!v16)
    {
      return 0;
    }

LABEL_61:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      return v31;
    }
  }

  if (v12 == 1)
  {
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 40);
      if (!v19)
      {
        v20 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v6)
        {
          v20 = *v20;
        }

        v19 = sub_191BA60(v20);
        *(a1 + 40) = v19;
        v7 = v31;
      }

      v16 = sub_2201310(a3, v19, v7);
      goto LABEL_60;
    }
  }

  else if (v12 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 2u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      v15 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v6)
      {
        v15 = *v15;
      }

      v14 = sub_16F5828(v15);
      *(a1 + 48) = v14;
      v7 = v31;
    }

    v16 = sub_21F4D60(a3, v14, v7);
    goto LABEL_60;
  }

LABEL_53:
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
    if (*v6)
    {
      v30 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = v31;
    }

    v16 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_60;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return v31;
}

char *sub_17A8834(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 40);
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

    v4 = sub_1917694(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 48);
    *v4 = 18;
    v11 = *(v10 + 44);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_16E5070(v10, v12, a3);
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

      v15 = *(*(a1 + 32) + 4 * i);
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

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v19 = *(a1 + 56);
    *v16 = 34;
    v20 = *(v19 + 44);
    v16[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v16 + 1);
    }

    else
    {
      v21 = v16 + 2;
    }

    v16 = sub_17A01E4(v19, v21, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v16;
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

  if (*a3 - v16 >= v25)
  {
    v27 = v25;
    memcpy(v16, v26, v25);
    v16 += v27;
    return v16;
  }

  return sub_1957130(a3, v26, v25, v16);
}

uint64_t sub_17A8AC8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4 + v2;
  v8 = *(a1 + 16);
  if ((v8 & 7) == 0)
  {
    goto LABEL_14;
  }

  if (v8)
  {
    v12 = sub_1917844(*(a1 + 40));
    v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v13 = sub_16E51F0(*(a1 + 48));
  v7 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
LABEL_13:
    v9 = sub_17A046C(*(a1 + 56));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v10 = *(a1 + 8);
  if (v10)
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v7 += v15;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_17A8C1C(uint64_t a1, uint64_t a2)
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
  if ((v8 & 7) != 0)
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

        v9 = sub_191BA60(v11);
        *(a1 + 40) = v9;
      }

      if (*(a2 + 40))
      {
        v12 = *(a2 + 40);
      }

      else
      {
        v12 = &off_278B870;
      }

      sub_17A8DBC(v9, v12);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_16F5828(v15);
      *(a1 + 48) = v13;
    }

    if (*(a2 + 48))
    {
      v16 = *(a2 + 48);
    }

    else
    {
      v16 = &off_277E5E8;
    }

    sub_16E527C(v13, v16);
    if ((v8 & 4) != 0)
    {
LABEL_24:
      *(a1 + 16) |= 4u;
      v17 = *(a1 + 56);
      if (!v17)
      {
        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v17 = sub_185DAF4(v19);
        *(a1 + 56) = v17;
      }

      if (*(a2 + 56))
      {
        v20 = *(a2 + 56);
      }

      else
      {
        v20 = &off_2782860;
      }

      sub_17A058C(v17, v20);
    }
  }

LABEL_32:
  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_17A8DBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 3) != 0)
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

        sub_191B9D8(v7);
        *(a1 + 48) = v5;
      }

      if (*(a2 + 48))
      {
        v8 = *(a2 + 48);
      }

      else
      {
        v8 = &off_278B830;
      }

      sub_191703C(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 40) |= v4;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17A8E98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_17A8EF8(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_16E5370(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = sub_17A0860(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_17A8EF8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    v3 = *(a1 + 48);
    if ((*(v3 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(v3 + 24));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_17A8F58(void *a1)
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

  sub_17A8FF0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_193A884(a1 + 5);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_17A8FF0(uint64_t result)
{
  if (result != &off_2782C20)
  {
    v1 = result;
    v2 = *(result + 64);
    if (v2)
    {
      sub_1917370(v2);
      operator delete();
    }

    if (v1[9])
    {
      sub_16E4E08();
      operator delete();
    }

    if (v1[10])
    {
      sub_16F0320();
      operator delete();
    }

    result = v1[11];
    if (result)
    {
      sub_1917370(result);

      operator delete();
    }
  }

  return result;
}

void sub_17A90B4(void *a1)
{
  sub_17A8F58(a1);

  operator delete();
}

uint64_t sub_17A90EC(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17C2030(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
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
    result = sub_16E4E44(*(v1 + 72));
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

  result = sub_17A82BC(*(v1 + 64));
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
  result = sub_16F035C(*(v1 + 80));
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = sub_17A82BC(*(v1 + 88));
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

char *sub_17A91BC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v37 = a2;
  if ((sub_195ADC0(a3, &v37, a3[11].i32[1]) & 1) == 0)
  {
    v6 = (a1 + 8);
    do
    {
      v7 = v37 + 1;
      v8 = *v37;
      if (*v37 < 0)
      {
        v9 = *v7;
        v10 = v8 + (v9 << 7);
        v8 = v10 - 128;
        if (v9 < 0)
        {
          v7 = sub_1958824(v37, v10 - 128);
          v8 = v11;
        }

        else
        {
          v7 = v37 + 2;
        }
      }

      v37 = v7;
      v12 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v12 == 4)
        {
          if (v8 == 34)
          {
            v25 = v7 - 1;
            while (1)
            {
              v26 = (v25 + 1);
              v37 = v25 + 1;
              v27 = *(a1 + 56);
              if (v27 && (v28 = *(a1 + 48), v28 < *v27))
              {
                *(a1 + 48) = v28 + 1;
                v29 = *&v27[2 * v28 + 2];
              }

              else
              {
                v30 = sub_185F6EC(*(a1 + 40));
                v29 = sub_19593CC(a1 + 40, v30);
                v26 = v37;
              }

              v25 = sub_2243F88(a3, v29, v26);
              v37 = v25;
              if (!v25)
              {
                return 0;
              }

              if (*a3 <= v25 || *v25 != 34)
              {
                goto LABEL_76;
              }
            }
          }
        }

        else if (v12 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 4u;
            v33 = *(a1 + 80);
            if (!v33)
            {
              v34 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
              if (*v6)
              {
                v34 = *v34;
              }

              v33 = sub_16F6144(v34);
              *(a1 + 80) = v33;
              v7 = v37;
            }

            v24 = sub_21FC730(a3, v33, v7);
            goto LABEL_75;
          }
        }

        else if (v12 == 6 && v8 == 50)
        {
          *(a1 + 16) |= 8u;
          v21 = *(a1 + 88);
          if (!v21)
          {
            v22 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v6)
            {
              v22 = *v22;
            }

            v21 = sub_191BA60(v22);
            *(a1 + 88) = v21;
LABEL_42:
            v7 = v37;
          }

LABEL_43:
          v24 = sub_2201310(a3, v21, v7);
          goto LABEL_75;
        }
      }

      else
      {
        switch(v12)
        {
          case 1u:
            if (v8 == 10)
            {
              *(a1 + 16) |= 1u;
              v21 = *(a1 + 64);
              if (!v21)
              {
                v23 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
                if (*v6)
                {
                  v23 = *v23;
                }

                v21 = sub_191BA60(v23);
                *(a1 + 64) = v21;
                goto LABEL_42;
              }

              goto LABEL_43;
            }

            break;
          case 2u:
            if (v8 == 18)
            {
              *(a1 + 16) |= 2u;
              v31 = *(a1 + 72);
              if (!v31)
              {
                v32 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
                if (*v6)
                {
                  v32 = *v32;
                }

                v31 = sub_16F5828(v32);
                *(a1 + 72) = v31;
                v7 = v37;
              }

              v24 = sub_21F4D60(a3, v31, v7);
              goto LABEL_75;
            }

            break;
          case 3u:
            if (v8 == 24)
            {
              v13 = v7 - 1;
              while (1)
              {
                v37 = v13 + 1;
                v14 = v13[1];
                v15 = v13 + 2;
                if (v14 < 0)
                {
                  v16 = *v15;
                  v17 = (v16 << 7) + v14;
                  LODWORD(v14) = v17 - 128;
                  if (v16 < 0)
                  {
                    v37 = sub_19587DC((v13 + 1), (v17 - 128));
                    if (!v37)
                    {
                      return 0;
                    }

                    LODWORD(v14) = v20;
                    goto LABEL_18;
                  }

                  v15 = v13 + 3;
                }

                v37 = v15;
LABEL_18:
                if (v14 > 0xD)
                {
                  sub_1313740();
                }

                else
                {
                  v18 = *(a1 + 24);
                  if (v18 == *(a1 + 28))
                  {
                    v19 = v18 + 1;
                    sub_1958E5C((a1 + 24), v18 + 1);
                    *(*(a1 + 32) + 4 * v18) = v14;
                  }

                  else
                  {
                    *(*(a1 + 32) + 4 * v18) = v14;
                    v19 = v18 + 1;
                  }

                  *(a1 + 24) = v19;
                }

                v13 = v37;
                if (*a3 <= v37 || *v37 != 24)
                {
                  goto LABEL_76;
                }
              }
            }

            if (v8 == 26)
            {
              *&v38 = a1 + 24;
              *(&v38 + 1) = sub_17A7C30;
              v39 = a1 + 8;
              v40 = 3;
              v24 = sub_1216588(a3, v7, &v38);
              goto LABEL_75;
            }

            break;
        }
      }

      if (v8)
      {
        v35 = (v8 & 7) == 4;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
          return v37;
        }

        return 0;
      }

      if (*v6)
      {
        v36 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v36 = sub_11F1920((a1 + 8));
        v7 = v37;
      }

      v24 = sub_1952690(v8, v36, v7, a3);
LABEL_75:
      v37 = v24;
      if (!v24)
      {
        return 0;
      }

LABEL_76:
      ;
    }

    while ((sub_195ADC0(a3, &v37, a3[11].i32[1]) & 1) == 0);
  }

  return v37;
}

char *sub_17A95F0(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 64);
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

    v4 = sub_1917694(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 72);
    *v4 = 18;
    v11 = *(v10 + 44);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_16E5070(v10, v12, a3);
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

      v15 = *(*(a1 + 32) + 4 * i);
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

  v19 = *(a1 + 48);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v21 = *(*(a1 + 56) + 8 * j + 8);
      *v16 = 34;
      v22 = *(v21 + 20);
      v16[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v16 + 1);
      }

      else
      {
        v23 = v16 + 2;
      }

      v16 = sub_17C2338(v21, v23, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v24 = *(a1 + 80);
    *v16 = 42;
    v25 = *(v24 + 20);
    v16[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v16 + 1);
    }

    else
    {
      v26 = v16 + 2;
    }

    v16 = sub_16F04D8(v24, v26, a3);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v27 = *(a1 + 88);
    *v16 = 50;
    v28 = *(v27 + 44);
    v16[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v16 + 1);
    }

    else
    {
      v29 = v16 + 2;
    }

    v16 = sub_1917694(v27, v29, a3);
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v16;
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

  if (*a3 - v16 >= v33)
  {
    v35 = v33;
    memcpy(v16, v34, v33);
    v16 += v35;
    return v16;
  }

  return sub_1957130(a3, v34, v33, v16);
}

uint64_t sub_17A996C(uint64_t a1)
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

  v7 = v3 + v2;
  v8 = *(a1 + 48);
  v9 = v7 + v8;
  v10 = *(a1 + 56);
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
      v14 = sub_17C2584(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0xF) == 0)
  {
    goto LABEL_21;
  }

  if ((v15 & 1) == 0)
  {
    if ((v15 & 2) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v20 = sub_16E51F0(*(a1 + 72));
    v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_19:
      if ((v15 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_25;
  }

  v19 = sub_1917844(*(a1 + 64));
  v9 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v15 & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_25:
  v21 = sub_16F05A0(*(a1 + 80));
  v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) != 0)
  {
LABEL_20:
    v16 = sub_1917844(*(a1 + 88));
    v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_21:
  v17 = *(a1 + 8);
  if (v17)
  {
    v22 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v9 += v23;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_17A9B44(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 56);
    v10 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193CA20((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if ((v13 & 0xF) == 0)
  {
    goto LABEL_44;
  }

  if ((v13 & 1) == 0)
  {
    if ((v13 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    *(a1 + 16) |= 2u;
    v18 = *(a1 + 72);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_16F5828(v20);
      *(a1 + 72) = v18;
    }

    if (*(a2 + 72))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = &off_277E5E8;
    }

    sub_16E527C(v18, v21);
    if ((v13 & 4) == 0)
    {
LABEL_10:
      if ((v13 & 8) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_36;
    }

    goto LABEL_28;
  }

  *(a1 + 16) |= 1u;
  v14 = *(a1 + 64);
  if (!v14)
  {
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v14 = sub_191BA60(v16);
    *(a1 + 64) = v14;
  }

  if (*(a2 + 64))
  {
    v17 = *(a2 + 64);
  }

  else
  {
    v17 = &off_278B870;
  }

  sub_17A8DBC(v14, v17);
  if ((v13 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  if ((v13 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_28:
  *(a1 + 16) |= 4u;
  v22 = *(a1 + 80);
  if (!v22)
  {
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v22 = sub_16F6144(v24);
    *(a1 + 80) = v22;
  }

  if (*(a2 + 80))
  {
    v25 = *(a2 + 80);
  }

  else
  {
    v25 = &off_277EA18;
  }

  sub_132DE2C(v22, v25);
  if ((v13 & 8) != 0)
  {
LABEL_36:
    *(a1 + 16) |= 8u;
    v26 = *(a1 + 88);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v26 = sub_191BA60(v28);
      *(a1 + 88) = v26;
    }

    if (*(a2 + 88))
    {
      v29 = *(a2 + 88);
    }

    else
    {
      v29 = &off_278B870;
    }

    sub_17A8DBC(v26, v29);
  }

LABEL_44:
  v30 = *(a2 + 8);
  if (v30)
  {

    sub_1957EF4((a1 + 8), (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17A9D88(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_17A8EF8(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_16E5370(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_16F061C(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_17A8EF8(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_17A9E0C(void *a1)
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

void sub_17A9E80(void *a1)
{
  sub_17A9E0C(a1);

  operator delete();
}

uint64_t *sub_17A9EB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_17A9EC8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_17A9F5C(uint64_t a1)
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

std::string *sub_17A9F88(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17A9FBC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270B5D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return a1;
}

void sub_17AA038(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17AA068(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_270B5D8;
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
    sub_193CAAC((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
    sub_193CB38((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
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

  v18 = *(a2 + 120);
  *(a1 + 112) = 0;
  *(a1 + 120) = v18;
  return a1;
}

uint64_t sub_17AA328(uint64_t a1)
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

  if (a1 != &off_2782C98)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      sub_1792E90(v5);
      operator delete();
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      sub_1792E90(v6);
      operator delete();
    }

    v7 = *(a1 + 112);
    if (v7)
    {
      sub_1793738(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_193A98C((a1 + 72));
  sub_193A908((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17AA438(uint64_t a1)
{
  sub_17AA328(a1);

  operator delete();
}

uint64_t sub_17AA470(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17AC758(v5);
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
      result = sub_17ABBF0(v8);
      --v6;
    }

    while (v6);
    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 40);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      result = sub_1792F80(*(a1 + 96));
      if ((v9 & 2) == 0)
      {
LABEL_12:
        if ((v9 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

    result = sub_1792F80(*(a1 + 104));
    if ((v9 & 4) != 0)
    {
LABEL_13:
      result = sub_1792FE8(*(a1 + 112));
    }
  }

LABEL_14:
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 112) = 0;
  *(v10 + 32) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

char *sub_17AA560(uint64_t a1, char *a2, int32x2_t *a3)
{
  v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v42, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v42 + 1;
    v8 = *v42;
    if (*v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v42 + 2;
      }
    }

    v42 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          v22 = v7 - 1;
          while (1)
          {
            v23 = (v22 + 1);
            v42 = v22 + 1;
            v24 = *(a1 + 64);
            if (v24 && (v25 = *(a1 + 56), v25 < *v24))
            {
              *(a1 + 56) = v25 + 1;
              v26 = *&v24[2 * v25 + 2];
            }

            else
            {
              v27 = sub_185E6EC(*(a1 + 48));
              v26 = sub_19593CC(a1 + 48, v27);
              v23 = v42;
            }

            v22 = sub_22440CC(a3, v26, v23);
            v42 = v22;
            if (!v22)
            {
              goto LABEL_77;
            }

            if (*a3 <= v22 || *v22 != 10)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_63;
      }

      if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_63;
        }

        *(a1 + 40) |= 1u;
        v13 = *(a1 + 96);
        if (v13)
        {
          goto LABEL_54;
        }

        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        v13 = sub_185D248(v33);
        *(a1 + 96) = v13;
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_63;
        }

        *(a1 + 40) |= 2u;
        v13 = *(a1 + 104);
        if (v13)
        {
          goto LABEL_54;
        }

        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_185D248(v15);
        *(a1 + 104) = v13;
      }

      v7 = v42;
LABEL_54:
      v31 = sub_224415C(a3, v13, v7);
      goto LABEL_55;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_63;
      }

      *(a1 + 40) |= 4u;
      v28 = *(a1 + 112);
      if (!v28)
      {
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v28 = sub_185D2C4(v30);
        *(a1 + 112) = v28;
        v7 = v42;
      }

      v31 = sub_224252C(a3, v28, v7);
LABEL_55:
      v42 = v31;
      if (!v31)
      {
        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v11 != 5)
    {
      break;
    }

    if (v8 != 40)
    {
      goto LABEL_63;
    }

    v5 |= 8u;
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
      v42 = v35;
      *(a1 + 120) = v34;
      goto LABEL_56;
    }

    v40 = sub_19587DC(v7, v34);
    v42 = v40;
    *(a1 + 120) = v41;
    if (!v40)
    {
      goto LABEL_77;
    }

LABEL_56:
    if (sub_195ADC0(a3, &v42, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6 && v8 == 50)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      v42 = v16 + 1;
      v18 = *(a1 + 88);
      if (v18 && (v19 = *(a1 + 80), v19 < *v18))
      {
        *(a1 + 80) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_185E63C(*(a1 + 72));
        v20 = sub_19593CC(a1 + 72, v21);
        v17 = v42;
      }

      v16 = sub_22441EC(a3, v20, v17);
      v42 = v16;
      if (!v16)
      {
        goto LABEL_77;
      }

      if (*a3 <= v16 || *v16 != 50)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_63:
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
    if (v8 - 1600 > 0xF9F)
    {
      v38 = *(a1 + 8);
      if (v38)
      {
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v39 = sub_11F1920((a1 + 8));
        v7 = v42;
      }

      v31 = sub_1952690(v8, v39, v7, a3);
    }

    else
    {
      v31 = sub_19525AC((a1 + 16), v8, v7, &off_2782C98, (a1 + 8), a3);
    }

    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_77:
  v42 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v42;
}

char *sub_17AA944(uint64_t a1, char *a2, unint64_t *a3)
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

      a2 = sub_17ACFDC(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 96);
    *a2 = 18;
    v14 = *(v13 + 20);
    a2[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, a2 + 1);
    }

    else
    {
      v15 = a2 + 2;
    }

    a2 = sub_1793248(v13, v15, a3);
    if ((v11 & 2) == 0)
    {
LABEL_11:
      if ((v11 & 4) == 0)
      {
        goto LABEL_12;
      }

LABEL_26:
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v19 = *(a1 + 112);
      *a2 = 34;
      v20 = *(v19 + 20);
      a2[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, a2 + 1);
      }

      else
      {
        v21 = a2 + 2;
      }

      a2 = sub_17939C8(v19, v21, a3);
      if ((v11 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_11;
  }

  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v16 = *(a1 + 104);
  *a2 = 26;
  v17 = *(v16 + 20);
  a2[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, a2 + 1);
  }

  else
  {
    v18 = a2 + 2;
  }

  a2 = sub_1793248(v16, v18, a3);
  if ((v11 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  if ((v11 & 8) == 0)
  {
LABEL_13:
    v12 = a2;
    goto LABEL_39;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v22 = *(a1 + 120);
  *a2 = 40;
  a2[1] = v22;
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v23 = v22 >> 7;
    a2[2] = v22 >> 7;
    v12 = a2 + 3;
    if (v22 >= 0x4000)
    {
      LOBYTE(a2) = a2[2];
      do
      {
        *(v12 - 1) = a2 | 0x80;
        a2 = (v23 >> 7);
        *v12++ = v23 >> 7;
        v24 = v23 >> 14;
        v23 >>= 7;
      }

      while (v24);
    }
  }

  else
  {
    v12 = a2 + 2;
  }

LABEL_39:
  v25 = *(a1 + 80);
  if (v25)
  {
    for (j = 0; j != v25; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v27 = *(*(a1 + 88) + 8 * j + 8);
      *v12 = 50;
      v28 = *(v27 + 20);
      v12[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v12 + 1);
      }

      else
      {
        v29 = v12 + 2;
      }

      v12 = sub_17AC008(v27, v29, a3);
    }
  }

  if (*(a1 + 26))
  {
    v12 = sub_1953428(a1 + 16, 200, 700, v12, a3);
  }

  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v12;
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

  if ((*a3 - v12) >= v33)
  {
    v35 = v33;
    memcpy(v12, v34, v33);
    v12 += v35;
    return v12;
  }

  return sub_1957130(a3, v34, v33, v12);
}

uint64_t sub_17AACF0(uint64_t a1)
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
      v9 = sub_17AD560(v8);
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
      v16 = sub_17AC244(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 40);
  if ((v17 & 0xF) == 0)
  {
    goto LABEL_19;
  }

  if ((v17 & 1) == 0)
  {
    if ((v17 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v21 = sub_179345C(*(a1 + 104));
    v11 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 4) == 0)
    {
LABEL_17:
      if ((v17 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_23;
  }

  v20 = sub_179345C(*(a1 + 96));
  v11 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v17 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  v22 = sub_1793B78(*(a1 + 112));
  v11 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v17 & 8) != 0)
  {
LABEL_18:
    v11 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_19:
  v18 = *(a1 + 8);
  if (v18)
  {
    v23 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    v11 += v24;
  }

  *(a1 + 44) = v11;
  return v11;
}

void sub_17AAEBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193CAAC((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_193CB38((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0xF) != 0)
  {
    if (v14)
    {
      *(a1 + 40) |= 1u;
      v16 = *(a1 + 96);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_185D248(v18);
        *(a1 + 96) = v16;
      }

      if (*(a2 + 96))
      {
        v19 = *(a2 + 96);
      }

      else
      {
        v19 = &off_27822C8;
      }

      sub_1793540(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_34;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
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

      v20 = sub_185D248(v22);
      *(a1 + 104) = v20;
    }

    if (*(a2 + 104))
    {
      v23 = *(a2 + 104);
    }

    else
    {
      v23 = &off_27822C8;
    }

    sub_1793540(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
LABEL_13:
        *(a1 + 40) |= v14;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 120) = *(a2 + 120);
      goto LABEL_13;
    }

LABEL_34:
    *(a1 + 40) |= 4u;
    v24 = *(a1 + 112);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_185D2C4(v26);
      *(a1 + 112) = v24;
    }

    if (*(a2 + 112))
    {
      v27 = *(a2 + 112);
    }

    else
    {
      v27 = &off_27822F0;
    }

    sub_128F8FC(v24, v27);
    if ((v14 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17AB0F0(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17ADBD0(*(*(a1 + 64) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_17AB164(a1 + 72);
}

uint64_t sub_17AB164(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 48);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_17B44D8(*(*(v4 + 56) + 8 * v5));
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

uint64_t sub_17AB200(uint64_t a1)
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

  if (a1 != &off_2782D18)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1792E90(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1792E90(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_1793738(v7);
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

void sub_17AB2F0(uint64_t a1)
{
  sub_17AB200(a1);

  operator delete();
}

uint64_t sub_17AB328(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_1792F80(*(result + 24));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_1792F80(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_1792FE8(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_17AB3B4(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_35;
        }

        *(a1 + 16) |= 1u;
        v12 = *(a1 + 24);
        if (!v12)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v12 = sub_185D248(v19);
          *(a1 + 24) = v12;
          goto LABEL_27;
        }
      }

      else
      {
        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_35;
        }

        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_185D248(v14);
          *(a1 + 32) = v12;
LABEL_27:
          v7 = v29;
        }
      }

      v20 = sub_224415C(a3, v12, v7);
      goto LABEL_42;
    }

    if (v11 == 7)
    {
      break;
    }

    if (v11 != 8 || v8 != 64)
    {
      goto LABEL_35;
    }

    v5 |= 8u;
    v16 = v7 + 1;
    v15 = *v7;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

    v17 = *v16;
    v15 = (v17 << 7) + v15 - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_21:
      v29 = v16;
      *(a1 + 48) = v15 != 0;
      goto LABEL_43;
    }

    v27 = sub_19587DC(v7, v15);
    v29 = v27;
    *(a1 + 48) = v28 != 0;
    if (!v27)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 58)
  {
    *(a1 + 16) |= 4u;
    v21 = *(a1 + 40);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_185D2C4(v23);
      *(a1 + 40) = v21;
      v7 = v29;
    }

    v20 = sub_224252C(a3, v21, v7);
LABEL_42:
    v29 = v20;
    if (!v20)
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

LABEL_35:
  if (v8)
  {
    v24 = (v8 & 7) == 4;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v7 = v29;
    }

    v20 = sub_1952690(v8, v26, v7, a3);
    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_50:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_17AB64C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 42;
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

    v4 = sub_1793248(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
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

  v10 = *(a1 + 32);
  *v4 = 50;
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

  v4 = sub_1793248(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 58;
  v14 = *(v13 + 20);
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v15 = sub_19575D0(v14, v4 + 1);
  }

  else
  {
    v15 = v4 + 2;
  }

  v4 = sub_17939C8(v13, v15, a3);
  if ((v6 & 8) != 0)
  {
LABEL_24:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 48);
    *v4 = 64;
    v4[1] = v16;
    v4 += 2;
  }

LABEL_27:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v20)
  {
    v22 = v20;
    memcpy(v4, v21, v20);
    v4 += v22;
    return v4;
  }

  return sub_1957130(a3, v21, v20, v4);
}

uint64_t sub_17AB874(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = sub_179345C(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_179345C(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = sub_1793B78(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 2) & 2);
LABEL_11:
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

std::string *sub_17AB97C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        data = sub_185D248(v8);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_27822C8;
      }

      result = sub_1793540(data, v9);
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

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3[1].__r_.__value_.__l.__size_;
    if (!v10)
    {
      v11 = v3->__r_.__value_.__l.__size_;
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_185D248(v12);
      v3[1].__r_.__value_.__l.__size_ = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_27822C8;
    }

    result = sub_1793540(v10, v13);
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

LABEL_28:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v14 = v3[1].__r_.__value_.__r.__words[2];
    if (!v14)
    {
      v15 = v3->__r_.__value_.__l.__size_;
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_185D2C4(v16);
      v3[1].__r_.__value_.__r.__words[2] = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_27822F0;
    }

    result = sub_128F8FC(v14, v17);
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

uint64_t sub_17ABB04(uint64_t a1)
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
  sub_166EF40((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17ABBB8(uint64_t a1)
{
  sub_17ABB04(a1);

  operator delete();
}

uint64_t sub_17ABBF0(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17B3DC4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_17ABCA8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v37 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v37, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v37 + 1);
    v8 = **v37;
    if (**v37 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v37, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v37 + 2);
      }
    }

    *v37 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 8)
        {
          v23 = v7 - 1;
          while (1)
          {
            *v37 = v23 + 1;
            v24 = v23[1];
            if (v24 < 0)
            {
              v25 = (v23[2] << 7) + v24;
              v24 = (v25 - 128);
              if (v23[2] < 0)
              {
                v23 = sub_19587DC((v23 + 1), (v25 - 128));
                v24 = v26;
              }

              else
              {
                v23 += 3;
              }
            }

            else
            {
              v23 += 2;
            }

            *v37 = v23;
            v27 = *(a1 + 24);
            if (v27 == *(a1 + 28))
            {
              v28 = v27 + 1;
              sub_1959094((a1 + 24), v27 + 1);
              *(*(a1 + 32) + 8 * v27) = v24;
              v23 = *v37;
            }

            else
            {
              *(*(a1 + 32) + 8 * v27) = v24;
              v28 = v27 + 1;
            }

            *(a1 + 24) = v28;
            if (!v23)
            {
              goto LABEL_65;
            }

            if (*a3 <= v23 || *v23 != 8)
            {
              goto LABEL_60;
            }
          }
        }

        if (v8 == 10)
        {
          v22 = sub_1958938((a1 + 24), v7, a3);
          goto LABEL_59;
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        v13 = v7 - 1;
        while (1)
        {
          v14 = (v13 + 1);
          *v37 = v13 + 1;
          v15 = *(a1 + 56);
          if (v15 && (v16 = *(a1 + 48), v16 < *v15))
          {
            *(a1 + 48) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            v18 = sub_185EA2C(*(a1 + 40));
            v17 = sub_19593CC(a1 + 40, v18);
            v14 = *v37;
          }

          v13 = sub_222EA30(a3, v17, v14);
          *v37 = v13;
          if (!v13)
          {
            goto LABEL_65;
          }

          if (*a3 <= v13 || *v13 != 18)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_52;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_52;
    }

    v5 |= 2u;
    v30 = v7 + 1;
    v29 = *v7;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_47;
    }

    v31 = *v30;
    v29 = (v31 << 7) + v29 - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v30 = v7 + 2;
LABEL_47:
      *v37 = v30;
      *(a1 + 72) = v29 != 0;
      goto LABEL_60;
    }

    v32 = sub_19587DC(v7, v29);
    *v37 = v32;
    *(a1 + 72) = v33 != 0;
    if (!v32)
    {
      goto LABEL_65;
    }

LABEL_60:
    if (sub_195ADC0(a3, v37, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 64), v20);
    v22 = sub_1958890(v21, *v37, a3);
LABEL_59:
    *v37 = v22;
    if (!v22)
    {
      goto LABEL_65;
    }

    goto LABEL_60;
  }

LABEL_52:
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
      v7 = *v37;
    }

    v22 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_59;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_65:
  *v37 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v37;
}

char *sub_17AC008(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 24);
  if (v5 < 1)
  {
    v8 = a2;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v7 = *(*(a1 + 32) + 8 * i);
      *a2 = 8;
      a2[1] = v7;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v9 = v7 >> 7;
        a2[2] = v7 >> 7;
        v8 = a2 + 3;
        if (v7 >= 0x4000)
        {
          LOBYTE(v10) = a2[2];
          do
          {
            *(v8 - 1) = v10 | 0x80;
            v10 = v9 >> 7;
            *v8++ = v9 >> 7;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
        }
      }

      else
      {
        v8 = a2 + 2;
      }

      a2 = v8;
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 56) + 8 * j + 8);
      *v8 = 18;
      v15 = *(v14 + 44);
      v8[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v8 + 1);
      }

      else
      {
        v16 = v8 + 2;
      }

      v8 = sub_17B40C0(v14, v16, a3);
    }
  }

  v17 = *(a1 + 16);
  if ((v17 & 2) != 0)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v18 = *(a1 + 72);
    *v8 = 24;
    v8[1] = v18;
    v8 += 2;
  }

  if (v17)
  {
    v8 = sub_128AEEC(a3, 4, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v8);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v22)
  {
    v24 = v22;
    memcpy(v8, v23, v22);
    v8 += v24;
    return v8;
  }

  return sub_1957130(a3, v23, v22, v8);
}

uint64_t sub_17AC244(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
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
      v9 = sub_17B429C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 16);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v10 & 2;
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

    v4 += v17;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_17AC350(uint64_t a1, uint64_t a2)
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
    sub_166F468((a1 + 40), v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 64);
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_194EA1C((a1 + 64), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    }

    if ((v13 & 2) != 0)
    {
      *(a1 + 72) = *(a2 + 72);
    }

    *(a1 + 16) |= v13;
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_17AC4A8(uint64_t a1)
{
  v2 = *(a1 + 48);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_17B44D8(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_17AC510(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_270B758;
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
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = &qword_278E990;
  *(a1 + 144) = &qword_278E990;
  *(a1 + 152) = &qword_278E990;
  *(a1 + 160) = &qword_278E990;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  return a1;
}

void sub_17AC5AC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17AC5DC(uint64_t a1)
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

  v5 = (a1 + 136);
  if (*(a1 + 136) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C((a1 + 144));
  }

  if (*(a1 + 152) != &qword_278E990)
  {
    sub_194E89C((a1 + 152));
  }

  if (*(a1 + 160) != &qword_278E990)
  {
    sub_194E89C((a1 + 160));
  }

  if (a1 != &off_2782D50 && *(a1 + 168))
  {
    sub_14B662C();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_1956ABC(a1 + 120);
  sub_193AB18((a1 + 96));
  sub_193AA94((a1 + 72));
  sub_193AA10((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17AC720(uint64_t a1)
{
  sub_17AC5DC(a1);

  operator delete();
}

uint64_t sub_17AC758(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17ADE24(v5);
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
      result = sub_17AEA84(v8);
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
      result = sub_1792FE8(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  *(a1 + 120) = 0;
  v12 = *(a1 + 40);
  if ((v12 & 0x1F) == 0)
  {
    goto LABEL_20;
  }

  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_30:
    v16 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v16 + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
      if ((v12 & 4) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
      if ((v12 & 4) != 0)
      {
        goto LABEL_34;
      }
    }

LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  v15 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_30;
    }
  }

LABEL_16:
  if ((v12 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_34:
  v17 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v17 + 23) & 0x80000000) == 0)
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_38;
    }

LABEL_18:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  **v17 = 0;
  *(v17 + 8) = 0;
  if ((v12 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_38:
  v18 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v18 + 23) & 0x80000000) == 0)
  {
    *v18 = 0;
    *(v18 + 23) = 0;
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    result = sub_144E6A8(*(a1 + 168));
    goto LABEL_20;
  }

  **v18 = 0;
  *(v18 + 8) = 0;
  if ((v12 & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  if ((v12 & 0xE0) != 0)
  {
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
  }

  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 32) = 0;
  if (v14)
  {

    return sub_1957EA8(v13);
  }

  return result;
}

uint64_t sub_17AC930(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v65 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v65, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v65 + 1);
    v8 = **v65;
    if (**v65 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v65, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v65 + 2);
      }
    }

    *v65 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0xC)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 == 6)
      {
        if (v8 == 50)
        {
          v30 = v7 - 1;
          while (1)
          {
            v31 = (v30 + 1);
            *v65 = v30 + 1;
            v32 = *(a1 + 88);
            if (v32 && (v33 = *(a1 + 80), v33 < *v32))
            {
              *(a1 + 80) = v33 + 1;
              v34 = *&v32[2 * v33 + 2];
            }

            else
            {
              sub_185E7A4(*(a1 + 72));
              v34 = sub_19593CC(a1 + 72, v35);
              v31 = *v65;
            }

            v30 = sub_224430C(a3, v34, v31);
            *v65 = v30;
            if (!v30)
            {
              goto LABEL_128;
            }

            if (*a3 <= v30 || *v30 != 50)
            {
              goto LABEL_105;
            }
          }
        }
      }

      else if (v11 == 11)
      {
        if (v8 == 90)
        {
          v48 = v7 - 1;
          while (1)
          {
            v49 = (v48 + 1);
            *v65 = v48 + 1;
            v50 = *(a1 + 112);
            if (v50 && (v51 = *(a1 + 104), v51 < *v50))
            {
              *(a1 + 104) = v51 + 1;
              v52 = *&v50[2 * v51 + 2];
            }

            else
            {
              v53 = sub_185D2C4(*(a1 + 96));
              v52 = sub_19593CC(a1 + 96, v53);
              v49 = *v65;
            }

            v48 = sub_224252C(a3, v52, v49);
            *v65 = v48;
            if (!v48)
            {
              goto LABEL_128;
            }

            if (*a3 <= v48 || *v48 != 90)
            {
              goto LABEL_105;
            }
          }
        }
      }

      else if (v11 == 12 && v8 == 98)
      {
        *(a1 + 40) |= 1u;
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v24 = (a1 + 136);
        goto LABEL_103;
      }

      goto LABEL_115;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_115;
      }

      v5 |= 0x20u;
      v27 = v7 + 1;
      v26 = *v7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_50;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_50:
        *v65 = v27;
        *(a1 + 176) = v26;
        goto LABEL_105;
      }

      v56 = sub_19587DC(v7, v26);
      *v65 = v56;
      *(a1 + 176) = v57;
      if (!v56)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (v11 != 2)
      {
        if (v11 == 5 && v8 == 42)
        {
          v12 = v7 - 1;
          while (1)
          {
            v13 = (v12 + 1);
            *v65 = v12 + 1;
            v14 = *(a1 + 64);
            if (v14 && (v15 = *(a1 + 56), v15 < *v14))
            {
              *(a1 + 56) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              v17 = sub_185E748(*(a1 + 48));
              v16 = sub_19593CC(a1 + 48, v17);
              v13 = *v65;
            }

            v12 = sub_224427C(a3, v16, v13);
            *v65 = v12;
            if (!v12)
            {
              goto LABEL_128;
            }

            if (*a3 <= v12 || *v12 != 42)
            {
              goto LABEL_105;
            }
          }
        }

        goto LABEL_115;
      }

      if (v8 != 16)
      {
        goto LABEL_115;
      }

      v5 |= 0x40u;
      v40 = v7 + 1;
      v39 = *v7;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_74;
      }

      v41 = *v40;
      v39 = (v41 << 7) + v39 - 128;
      if ((v41 & 0x80000000) == 0)
      {
        v40 = v7 + 2;
LABEL_74:
        *v65 = v40;
        *(a1 + 184) = v39;
        goto LABEL_105;
      }

      v60 = sub_19587DC(v7, v39);
      *v65 = v60;
      *(a1 + 184) = v61;
      if (!v60)
      {
        goto LABEL_128;
      }
    }

LABEL_105:
    if (sub_195ADC0(a3, v65, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 0xF)
  {
    if (v11 == 13)
    {
      if (v8 == 106)
      {
        *(a1 + 40) |= 2u;
        v29 = *(a1 + 8);
        v23 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v23 = *v23;
        }

        v24 = (a1 + 144);
        goto LABEL_103;
      }

      goto LABEL_115;
    }

    if (v11 == 14)
    {
      if (v8 == 112)
      {
        v42 = v7 - 1;
        while (1)
        {
          *v65 = v42 + 1;
          v43 = v42[1];
          if (v43 < 0)
          {
            v44 = (v42[2] << 7) + v43;
            v43 = (v44 - 128);
            if (v42[2] < 0)
            {
              v42 = sub_19587DC((v42 + 1), (v44 - 128));
              v43 = v45;
            }

            else
            {
              v42 += 3;
            }
          }

          else
          {
            v42 += 2;
          }

          *v65 = v42;
          v46 = *(a1 + 120);
          if (v46 == *(a1 + 124))
          {
            v47 = v46 + 1;
            sub_1959094((a1 + 120), v46 + 1);
            *(*(a1 + 128) + 8 * v46) = v43;
            v42 = *v65;
          }

          else
          {
            *(*(a1 + 128) + 8 * v46) = v43;
            v47 = v46 + 1;
          }

          *(a1 + 120) = v47;
          if (!v42)
          {
            goto LABEL_128;
          }

          if (*a3 <= v42 || *v42 != 112)
          {
            goto LABEL_105;
          }
        }
      }

      if (v8 != 114)
      {
        goto LABEL_115;
      }

      v21 = sub_1958938((a1 + 120), v7, a3);
    }

    else
    {
      if (v11 != 15 || v8 != 122)
      {
        goto LABEL_115;
      }

      *(a1 + 40) |= 0x10u;
      v18 = *(a1 + 168);
      if (!v18)
      {
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v18 = sub_14BF484(v20);
        *(a1 + 168) = v18;
        v7 = *v65;
      }

      v21 = sub_2209138(a3, v18, v7);
    }

LABEL_104:
    *v65 = v21;
    if (!v21)
    {
      goto LABEL_128;
    }

    goto LABEL_105;
  }

  if (v11 == 16)
  {
    if (v8 != 128)
    {
      goto LABEL_115;
    }

    v5 |= 0x80u;
    v37 = v7 + 1;
    v36 = *v7;
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_69;
    }

    v38 = *v37;
    v36 = (v38 << 7) + v36 - 128;
    if ((v38 & 0x80000000) == 0)
    {
      v37 = v7 + 2;
LABEL_69:
      *v65 = v37;
      *(a1 + 192) = v36;
      goto LABEL_105;
    }

    v58 = sub_19587DC(v7, v36);
    *v65 = v58;
    *(a1 + 192) = v59;
    if (!v58)
    {
      goto LABEL_128;
    }

    goto LABEL_105;
  }

  if (v11 == 17)
  {
    if (v8 != 138)
    {
      goto LABEL_115;
    }

    *(a1 + 40) |= 4u;
    v54 = *(a1 + 8);
    v23 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (v54)
    {
      v23 = *v23;
    }

    v24 = (a1 + 152);
LABEL_103:
    v55 = sub_194DB04(v24, v23);
    v21 = sub_1958890(v55, *v65, a3);
    goto LABEL_104;
  }

  if (v11 == 18 && v8 == 146)
  {
    *(a1 + 40) |= 8u;
    v25 = *(a1 + 8);
    v23 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v23 = *v23;
    }

    v24 = (a1 + 160);
    goto LABEL_103;
  }

LABEL_115:
  if (v8)
  {
    v62 = (v8 & 7) == 4;
  }

  else
  {
    v62 = 1;
  }

  if (!v62)
  {
    if (v8 - 1600 < 0xFA0 || (v8 - 8000) >> 6 <= 0x7C)
    {
      v21 = sub_19525AC((a1 + 16), v8, v7, &off_2782D50, (a1 + 8), a3);
    }

    else
    {
      v63 = *(a1 + 8);
      if (v63)
      {
        v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v64 = sub_11F1920((a1 + 8));
        v7 = *v65;
      }

      v21 = sub_1952690(v8, v64, v7, a3);
    }

    goto LABEL_104;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_128:
  *v65 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v65;
}

char *sub_17ACFDC(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 176);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 184);
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

  v15 = *(a1 + 56);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 64) + 8 * i + 8);
      *v11 = 42;
      v18 = *(v17 + 44);
      v11[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v11 + 1);
      }

      else
      {
        v19 = v11 + 2;
      }

      v11 = sub_17AE310(v17, v19, a3);
    }
  }

  v20 = *(a1 + 80);
  if (v20)
  {
    for (j = 0; j != v20; ++j)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v22 = *(*(a1 + 88) + 8 * j + 8);
      *v11 = 50;
      v23 = *(v22 + 20);
      v11[1] = v23;
      if (v23 > 0x7F)
      {
        v24 = sub_19575D0(v23, v11 + 1);
      }

      else
      {
        v24 = v11 + 2;
      }

      v11 = sub_17AEE38(v22, v24, a3);
    }
  }

  v25 = *(a1 + 104);
  if (v25)
  {
    for (k = 0; k != v25; ++k)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v27 = *(*(a1 + 112) + 8 * k + 8);
      *v11 = 90;
      v28 = *(v27 + 20);
      v11[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v11 + 1);
      }

      else
      {
        v29 = v11 + 2;
      }

      v11 = sub_17939C8(v27, v29, a3);
    }
  }

  if (v5)
  {
    v11 = sub_128AEEC(a3, 12, *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  if ((v5 & 2) != 0)
  {
    v11 = sub_128AEEC(a3, 13, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  v30 = *(a1 + 120);
  if (v30 < 1)
  {
    v33 = v11;
  }

  else
  {
    for (m = 0; m != v30; ++m)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v32 = *(*(a1 + 128) + 8 * m);
      *v11 = 112;
      v11[1] = v32;
      if (v32 > 0x7F)
      {
        v11[1] = v32 | 0x80;
        v34 = v32 >> 7;
        v11[2] = v32 >> 7;
        v33 = v11 + 3;
        if (v32 >= 0x4000)
        {
          LOBYTE(v35) = v11[2];
          do
          {
            *(v33 - 1) = v35 | 0x80;
            v35 = v34 >> 7;
            *v33++ = v34 >> 7;
            v36 = v34 >> 14;
            v34 >>= 7;
          }

          while (v36);
        }
      }

      else
      {
        v33 = v11 + 2;
      }

      v11 = v33;
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v37 = *(a1 + 168);
    *v33 = 122;
    v38 = *(v37 + 44);
    v33[1] = v38;
    if (v38 > 0x7F)
    {
      v39 = sub_19575D0(v38, v33 + 1);
    }

    else
    {
      v39 = v33 + 2;
    }

    v33 = sub_14B6D24(v37, v39, a3);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v33)
    {
      v33 = sub_225EB68(a3, v33);
    }

    v41 = *(a1 + 192);
    *v33 = 384;
    v33[2] = v41;
    if (v41 > 0x7F)
    {
      v33[2] = v41 | 0x80;
      v42 = v41 >> 7;
      v33[3] = v41 >> 7;
      v40 = v33 + 4;
      if (v41 >= 0x4000)
      {
        LOBYTE(v33) = v33[3];
        do
        {
          *(v40 - 1) = v33 | 0x80;
          v33 = (v42 >> 7);
          *v40++ = v42 >> 7;
          v43 = v42 >> 14;
          v42 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v40 = v33 + 3;
    }
  }

  else
  {
    v40 = v33;
  }

  if ((v5 & 4) != 0)
  {
    v40 = sub_128AEEC(a3, 17, *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL, v40);
  }

  if ((v5 & 8) != 0)
  {
    v40 = sub_128AEEC(a3, 18, *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL, v40);
  }

  if (*(a1 + 26))
  {
    v40 = sub_1953428(a1 + 16, 200, 2000, v40, a3);
  }

  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return v40;
  }

  v46 = v44 & 0xFFFFFFFFFFFFFFFCLL;
  v47 = *(v46 + 31);
  if (v47 < 0)
  {
    v48 = *(v46 + 8);
    v47 = *(v46 + 16);
  }

  else
  {
    v48 = (v46 + 8);
  }

  if ((*a3 - v40) >= v47)
  {
    v49 = v47;
    memcpy(v40, v48, v47);
    v40 += v49;
    return v40;
  }

  return sub_1957130(a3, v48, v47, v40);
}

uint64_t sub_17AD560(uint64_t a1)
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
      v9 = sub_17AE644(v8);
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
      v16 = sub_17AF1B0(v15);
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
      v23 = sub_1793B78(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = sub_1959F14((a1 + 120)) + *(a1 + 120) + v18;
  v25 = *(a1 + 40);
  if (!v25)
  {
    goto LABEL_29;
  }

  if (*(a1 + 40))
  {
    v28 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v24 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 40) & 2) == 0)
    {
LABEL_22:
      if ((*(a1 + 40) & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }
  }

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_22;
  }

  v31 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(v31 + 23);
  v33 = *(v31 + 8);
  if ((v32 & 0x80u) == 0)
  {
    v33 = v32;
  }

  v24 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 40) & 4) == 0)
  {
LABEL_23:
    if ((*(a1 + 40) & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_40;
  }

LABEL_37:
  v34 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(v34 + 23);
  v36 = *(v34 + 8);
  if ((v35 & 0x80u) == 0)
  {
    v36 = v35;
  }

  v24 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((*(a1 + 40) & 8) == 0)
  {
LABEL_24:
    if ((*(a1 + 40) & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_40:
  v37 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(v37 + 23);
  v39 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v39 = v38;
  }

  v24 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((*(a1 + 40) & 0x10) == 0)
  {
LABEL_25:
    if ((*(a1 + 40) & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_44:
    v24 += ((9 * (__clz(*(a1 + 176) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v25 & 0x40) == 0)
    {
LABEL_27:
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_45;
  }

LABEL_43:
  v40 = sub_14B71B8(*(a1 + 168));
  v24 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v25 & 0x20) != 0)
  {
    goto LABEL_44;
  }

LABEL_26:
  if ((v25 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_45:
  v24 += ((9 * (__clz(*(a1 + 184) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if (v25 < 0)
  {
LABEL_28:
    v24 += ((9 * (__clz(*(a1 + 192) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_29:
  v26 = *(a1 + 8);
  if (v26)
  {
    v41 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v42 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v42 < 0)
    {
      v42 = *(v41 + 16);
    }

    v24 += v42;
  }

  *(a1 + 44) = v24;
  return v24;
}

void sub_17AD894(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193CBC4((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_193CC50((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_193CCDC((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 120);
  if (v19)
  {
    v20 = *(a1 + 120);
    sub_1959094((a1 + 120), v20 + v19);
    v21 = *(a1 + 128);
    *(a1 + 120) += *(a2 + 120);
    memcpy((v21 + 8 * v20), *(a2 + 128), 8 * *(a2 + 120));
  }

  v22 = *(a2 + 40);
  if (v22)
  {
    if (v22)
    {
      v24 = *(a2 + 136);
      *(a1 + 40) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_194EA1C((a1 + 136), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
      if ((v22 & 2) == 0)
      {
LABEL_15:
        if ((v22 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_33;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_15;
    }

    v27 = *(a2 + 144);
    *(a1 + 40) |= 2u;
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    sub_194EA1C((a1 + 144), (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
    if ((v22 & 4) == 0)
    {
LABEL_16:
      if ((v22 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

LABEL_33:
    v30 = *(a2 + 152);
    *(a1 + 40) |= 4u;
    v31 = *(a1 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    sub_194EA1C((a1 + 152), (v30 & 0xFFFFFFFFFFFFFFFELL), v32);
    if ((v22 & 8) == 0)
    {
LABEL_17:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_39;
    }

LABEL_36:
    v33 = *(a2 + 160);
    *(a1 + 40) |= 8u;
    v34 = *(a1 + 8);
    v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
    if (v34)
    {
      v35 = *v35;
    }

    sub_194EA1C((a1 + 160), (v33 & 0xFFFFFFFFFFFFFFFELL), v35);
    if ((v22 & 0x10) == 0)
    {
LABEL_18:
      if ((v22 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(a1 + 40) |= 0x10u;
    v36 = *(a1 + 168);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_14BF484(v38);
      *(a1 + 168) = v36;
    }

    if (*(a2 + 168))
    {
      v39 = *(a2 + 168);
    }

    else
    {
      v39 = &off_2773AC8;
    }

    sub_144F194(v36, v39);
    if ((v22 & 0x20) == 0)
    {
LABEL_19:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(a1 + 176) = *(a2 + 176);
    if ((v22 & 0x40) == 0)
    {
LABEL_20:
      if ((v22 & 0x80) == 0)
      {
LABEL_22:
        *(a1 + 40) |= v22;
        goto LABEL_23;
      }

LABEL_21:
      *(a1 + 192) = *(a2 + 192);
      goto LABEL_22;
    }

LABEL_48:
    *(a1 + 184) = *(a2 + 184);
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  sub_225EA0C(a1 + 16, a2 + 16);
  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4((a1 + 8), (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17ADBD0(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_17AE984(*(*(a1 + 64) + 8 * v3));
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

    result = sub_144F5D0(*(a1 + 168));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_17ADC50(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_270B7D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = &qword_278E990;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return a1;
}

void sub_17ADCCC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_17ADCFC(uint64_t a1)
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

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (a1 != &off_2782E18 && *(a1 + 64))
  {
    sub_145847C();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_17ADDEC(uint64_t a1)
{
  sub_17ADCFC(a1);

  operator delete();
}

uint64_t sub_17ADE24(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_144E5CC(*(a1 + 64));
    goto LABEL_6;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v3 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v3 & 0xF8) != 0)
  {
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
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

uint64_t sub_17ADF10(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 6)
    {
      break;
    }

    if (v8 >> 3 > 9)
    {
      if (v11 != 10)
      {
        if (v11 != 11 || v8 != 90)
        {
          goto LABEL_62;
        }

        *(a1 + 40) |= 2u;
        v24 = *(a1 + 8);
        v14 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v14 = *v14;
        }

        v15 = (a1 + 56);
LABEL_40:
        v25 = sub_194DB04(v15, v14);
        v20 = sub_1958890(v25, *v42, a3);
        goto LABEL_41;
      }

      if (v8 != 80)
      {
        goto LABEL_62;
      }

      v33 = (v7 + 1);
      v32 = *v7;
      if (v32 < 0)
      {
        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if ((v34 & 0x80000000) == 0)
        {
          v33 = (v7 + 2);
          goto LABEL_57;
        }

        *v42 = sub_19587DC(v7, v32);
        if (!*v42)
        {
          goto LABEL_82;
        }
      }

      else
      {
LABEL_57:
        *v42 = v33;
      }

      if (v32 > 3)
      {
        sub_156E728();
      }

      else
      {
        *(a1 + 40) |= 0x80u;
        *(a1 + 100) = v32;
      }

      goto LABEL_60;
    }

    if (v11 != 7)
    {
      if (v11 != 8 || v8 != 66)
      {
        goto LABEL_62;
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

        sub_14BAE64(v18);
        v16 = v19;
        *(a1 + 64) = v19;
        v7 = *v42;
      }

      v20 = sub_22095B8(a3, v16, v7);
LABEL_41:
      *v42 = v20;
      if (!v20)
      {
        goto LABEL_82;
      }

      goto LABEL_60;
    }

    if (v8 != 56)
    {
      goto LABEL_62;
    }

    v5 |= 0x20u;
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
      *v42 = v29;
      *(a1 + 88) = v28;
      goto LABEL_60;
    }

    v38 = sub_19587DC(v7, v28);
    *v42 = v38;
    *(a1 + 88) = v39;
    if (!v38)
    {
      goto LABEL_82;
    }

LABEL_60:
    if (sub_195ADC0(a3, v42, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 4)
  {
    if (v11 == 1)
    {
      if (v8 == 9)
      {
        v27 = *v7;
        v26 = v7 + 8;
        v5 |= 8u;
        *(a1 + 72) = v27;
LABEL_52:
        *v42 = v26;
        goto LABEL_60;
      }

      goto LABEL_62;
    }

    if (v11 != 3 || v8 != 26)
    {
      goto LABEL_62;
    }

    *(a1 + 40) |= 1u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v15 = (a1 + 48);
    goto LABEL_40;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_62;
    }

    v5 |= 0x40u;
    v22 = (v7 + 1);
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = (v7 + 2);
LABEL_33:
      *v42 = v22;
      *(a1 + 96) = v21 != 0;
      goto LABEL_60;
    }

    v40 = sub_19587DC(v7, v21);
    *v42 = v40;
    *(a1 + 96) = v41 != 0;
    if (!v40)
    {
      goto LABEL_82;
    }

    goto LABEL_60;
  }

  if (v8 == 41)
  {
    v31 = *v7;
    v26 = v7 + 8;
    v5 |= 0x10u;
    *(a1 + 80) = v31;
    goto LABEL_52;
  }

LABEL_62:
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
    if (v8 - 1600 < 0xFA0 || (v8 - 8000) >> 6 <= 0x7C)
    {
      v20 = sub_19525AC((a1 + 16), v8, v7, &off_2782E18, (a1 + 8), a3);
    }

    else
    {
      v36 = *(a1 + 8);
      if (v36)
      {
        v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v37 = sub_11F1920((a1 + 8));
        v7 = *v42;
      }

      v20 = sub_1952690(v8, v37, v7, a3);
    }

    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_82:
  *v42 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v42;
}

char *sub_17AE310(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v8 = *(a1 + 72);
    *v4 = 9;
    *(v4 + 1) = v8;
    v4 += 9;
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
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

  v4 = sub_128AEEC(a3, 3, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 96);
    *v4 = 48;
    v4[1] = v10;
    v4 += 2;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 80);
  *v4 = 41;
  *(v4 + 1) = v9;
  v4 += 9;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    v7 = v4;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 88);
  *v4 = 56;
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

LABEL_24:
  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 64);
    *v7 = 66;
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

    v7 = sub_14589F4(v15, v17, a3);
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v19 = *(a1 + 100);
    *v7 = 80;
    v7[1] = v19;
    if (v19 > 0x7F)
    {
      v7[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v7[2] = v19 >> 7;
      v18 = v7 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v18 - 1) = v7 | 0x80;
          v7 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v7 + 2;
    }
  }

  else
  {
    v18 = v7;
  }

  if ((v6 & 2) != 0)
  {
    v18 = sub_128AEEC(a3, 11, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v18);
  }

  if (*(a1 + 26))
  {
    v18 = sub_1953428(a1 + 16, 200, 2000, v18, a3);
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

  if ((*a3 - v18) >= v25)
  {
    v27 = v25;
    memcpy(v18, v26, v25);
    v18 += v27;
    return v18;
  }

  return sub_1957130(a3, v26, v25, v18);
}

uint64_t sub_17AE644(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_17;
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_22:
    v15 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v3 = v2 + v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  if ((v4 & 4) != 0)
  {
LABEL_5:
    v5 = sub_1458DB4(*(a1 + 64));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  v6 = v3 + 9;
  if ((v4 & 8) == 0)
  {
    v6 = v3;
  }

  if ((v4 & 0x10) != 0)
  {
    v6 += 9;
  }

  if ((v4 & 0x20) != 0)
  {
    v6 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v3 = v6 + ((v4 >> 5) & 2);
  if ((v4 & 0x80) != 0)
  {
    v7 = *(a1 + 100);
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

LABEL_17:
  v10 = *(a1 + 8);
  if (v10)
  {
    v18 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v3 += v19;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_17AE7F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
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

        goto LABEL_22;
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

      goto LABEL_30;
    }

LABEL_22:
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

      sub_14BAE64(v14);
      *(a1 + 64) = v12;
    }

    if (*(a2 + 64))
    {
      v15 = *(a2 + 64);
    }

    else
    {
      v15 = &off_2771738;
    }

    sub_144EF20(v12, v15);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(a1 + 88) = *(a2 + 88);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 40) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 100) = *(a2 + 100);
      goto LABEL_11;
    }

LABEL_33:
    *(a1 + 96) = *(a2 + 96);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17AE984(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 4) == 0)
    {
      return 1;
    }

    result = sub_144F560(*(a1 + 64));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_17AE9D8(void *a1)
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

void sub_17AEA4C(void *a1)
{
  sub_17AE9D8(a1);

  operator delete();
}

uint64_t sub_17AEA84(uint64_t a1)
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

char *sub_17AEAAC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_47;
      }

      v5 |= 8u;
      v22 = v7 + 1;
      v23 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v24 = *v22;
      v23 = v23 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_36:
        v46 = v22;
        *(a1 + 36) = v23;
        goto LABEL_54;
      }

      v36 = sub_1958770(v7, v23);
      v46 = v36;
      *(a1 + 36) = v37;
      if (!v36)
      {
        goto LABEL_71;
      }
    }

    else if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_47;
      }

      v5 |= 0x10u;
      v29 = v7 + 1;
      v28 = *v7;
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      v30 = *v29;
      v28 = (v30 << 7) + v28 - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v29 = v7 + 2;
LABEL_46:
        v46 = v29;
        *(a1 + 40) = v28 != 0;
        goto LABEL_54;
      }

      v44 = sub_19587DC(v7, v28);
      v46 = v44;
      *(a1 + 40) = v45 != 0;
      if (!v44)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_47;
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
        goto LABEL_54;
      }

      v38 = sub_1958770(v7, v17);
      v46 = v38;
      *(a1 + 44) = v39;
      if (!v38)
      {
        goto LABEL_71;
      }
    }

LABEL_54:
    if (sub_195ADC0(a3, &v46, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_47;
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
      goto LABEL_54;
    }

    v34 = sub_1958770(v7, v20);
    v46 = v34;
    *(a1 + 24) = v35;
    if (!v34)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_47;
    }

    v5 |= 2u;
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
      v46 = v25;
      *(a1 + 28) = v26;
      goto LABEL_54;
    }

    v42 = sub_1958770(v7, v26);
    v46 = v42;
    *(a1 + 28) = v43;
    if (!v42)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v11 == 3 && v8 == 24)
  {
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
      goto LABEL_54;
    }

    v40 = sub_1958770(v7, v14);
    v46 = v40;
    *(a1 + 32) = v41;
    if (!v40)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

LABEL_47:
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
      v7 = v46;
    }

    v46 = sub_1952690(v8, v33, v7, a3);
    if (!v46)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  v46 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v46;
}