uint64_t sub_18BB648(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v66 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v66, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v66 + 1);
    v8 = **v66;
    if (**v66 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v66, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v66 + 2);
      }
    }

    *v66 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 6)
    {
      if (v8 >> 3 > 3)
      {
        if (v11 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 4u;
            v37 = *(a1 + 88);
            if (!v37)
            {
              v38 = *(a1 + 8);
              v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if (v38)
              {
                v39 = *v39;
              }

              v37 = sub_18FF354(v39);
              *(a1 + 88) = v37;
              v7 = *v66;
            }

            v30 = sub_2201670(a3, v37, v7);
            goto LABEL_109;
          }
        }

        else if (v11 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 8u;
            v51 = *(a1 + 96);
            if (!v51)
            {
              v52 = *(a1 + 8);
              v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
              if (v52)
              {
                v53 = *v53;
              }

              v51 = sub_16F5E18(v53);
              *(a1 + 96) = v51;
              v7 = *v66;
            }

            v30 = sub_21F4F10(a3, v51, v7);
            goto LABEL_109;
          }
        }

        else if (v11 == 6 && v8 == 50)
        {
          v19 = (v7 - 1);
          while (1)
          {
            v20 = (v19 + 1);
            *v66 = v19 + 1;
            v21 = *(a1 + 40);
            if (v21 && (v22 = *(a1 + 32), v22 < *v21))
            {
              *(a1 + 32) = v22 + 1;
              v23 = *&v21[2 * v22 + 2];
            }

            else
            {
              v24 = *(a1 + 24);
              if (!v24)
              {
                operator new();
              }

              *v26 = v25;
              v26[1] = sub_195A650;
              *v25 = 0;
              v25[1] = 0;
              v25[2] = 0;
              v23 = sub_19593CC(a1 + 24, v25);
              v20 = *v66;
            }

            v19 = sub_1958890(v23, v20, a3);
            *v66 = v19;
            if (!v19)
            {
              goto LABEL_124;
            }

            if (*a3 <= v19 || *v19 != 50)
            {
              goto LABEL_110;
            }
          }
        }

        goto LABEL_102;
      }

      if (v11 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_102;
        }

        v32 = (v7 + 1);
        v31 = *v7;
        if (v31 < 0)
        {
          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if ((v33 & 0x80000000) == 0)
          {
            v32 = (v7 + 2);
            goto LABEL_56;
          }

          *v66 = sub_19587DC(v7, v31);
          if (!*v66)
          {
            goto LABEL_124;
          }
        }

        else
        {
LABEL_56:
          *v66 = v32;
        }

        if (v31 > 3)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 0x40u;
          *(a1 + 120) = v31;
        }

        goto LABEL_110;
      }

      if (v11 != 2)
      {
        if (v11 == 3 && v8 == 26)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v15 = (a1 + 72);
          goto LABEL_89;
        }

        goto LABEL_102;
      }

      if (v8 != 16)
      {
        goto LABEL_102;
      }

      v5 |= 0x200u;
      v46 = (v7 + 1);
      v47 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

      v48 = *v46;
      v47 = v47 + (v48 << 7) - 128;
      if ((v48 & 0x80000000) == 0)
      {
        v46 = (v7 + 2);
LABEL_84:
        *v66 = v46;
        *(a1 + 128) = v47;
        goto LABEL_110;
      }

      v64 = sub_1958770(v7, v47);
      *v66 = v64;
      *(a1 + 128) = v65;
      if (!v64)
      {
        goto LABEL_124;
      }

      goto LABEL_110;
    }

    if (v8 >> 3 > 9)
    {
      break;
    }

    if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_102;
      }

      v5 |= 0x80u;
      v35 = (v7 + 1);
      v34 = *v7;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_63;
      }

      v36 = *v35;
      v34 = (v36 << 7) + v34 - 128;
      if ((v36 & 0x80000000) == 0)
      {
        v35 = (v7 + 2);
LABEL_63:
        *v66 = v35;
        *(a1 + 124) = v34 != 0;
        goto LABEL_110;
      }

      v62 = sub_19587DC(v7, v34);
      *v66 = v62;
      *(a1 + 124) = v63 != 0;
      if (!v62)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if (v11 == 8)
      {
        if (v8 == 66)
        {
          *(a1 + 16) |= 2u;
          v49 = *(a1 + 8);
          v14 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v14 = *v14;
          }

          v15 = (a1 + 80);
LABEL_89:
          v50 = sub_194DB04(v15, v14);
          v30 = sub_1958890(v50, *v66, a3);
LABEL_109:
          *v66 = v30;
          if (!v30)
          {
            goto LABEL_124;
          }

          goto LABEL_110;
        }

        goto LABEL_102;
      }

      if (v11 != 9 || v8 != 72)
      {
        goto LABEL_102;
      }

      v5 |= 0x100u;
      v17 = (v7 + 1);
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_27:
        *v66 = v17;
        *(a1 + 125) = v16 != 0;
        goto LABEL_110;
      }

      v60 = sub_19587DC(v7, v16);
      *v66 = v60;
      *(a1 + 125) = v61 != 0;
      if (!v60)
      {
        goto LABEL_124;
      }
    }

LABEL_110:
    if (sub_195ADC0(a3, v66, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 10)
  {
    if (v8 == 82)
    {
      v40 = v7 - 1;
      while (1)
      {
        v41 = v40 + 1;
        *v66 = v40 + 1;
        v42 = *(a1 + 64);
        if (v42 && (v43 = *(a1 + 56), v43 < *v42))
        {
          *(a1 + 56) = v43 + 1;
          v44 = *&v42[2 * v43 + 2];
        }

        else
        {
          v45 = sub_1903218(*(a1 + 48));
          v44 = sub_19593CC(a1 + 48, v45);
          v41 = *v66;
        }

        v40 = sub_22542A8(a3, v44, v41);
        *v66 = v40;
        if (!v40)
        {
          goto LABEL_124;
        }

        if (*a3 <= v40 || *v40 != 82)
        {
          goto LABEL_110;
        }
      }
    }
  }

  else if (v11 == 11)
  {
    if (v8 == 90)
    {
      *(a1 + 16) |= 0x10u;
      v54 = *(a1 + 104);
      if (!v54)
      {
        v55 = *(a1 + 8);
        v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
        if (v55)
        {
          v56 = *v56;
        }

        v54 = sub_19032BC(v56);
        *(a1 + 104) = v54;
        v7 = *v66;
      }

      v30 = sub_2254218(a3, v54, v7);
      goto LABEL_109;
    }
  }

  else if (v11 == 12 && v8 == 98)
  {
    *(a1 + 16) |= 0x20u;
    v27 = *(a1 + 112);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_18FF470(v29);
      *(a1 + 112) = v27;
      v7 = *v66;
    }

    v30 = sub_22516A4(a3, v27, v7);
    goto LABEL_109;
  }

LABEL_102:
  if (v8)
  {
    v57 = (v8 & 7) == 4;
  }

  else
  {
    v57 = 1;
  }

  if (!v57)
  {
    v58 = *(a1 + 8);
    if (v58)
    {
      v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v59 = sub_11F1920((a1 + 8));
      v7 = *v66;
    }

    v30 = sub_1952690(v8, v59, v7, a3);
    goto LABEL_109;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_124:
  *v66 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v66;
}

char *sub_18BBCAC(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x40) != 0)
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 128);
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

  if (v5)
  {
    v11 = sub_128AEEC(a3, 3, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v11);
    if ((v5 & 4) == 0)
    {
LABEL_21:
      if ((v5 & 8) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_21;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v15 = *(a1 + 88);
  *v11 = 34;
  v16 = *(v15 + 20);
  v11[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v11 + 1);
  }

  else
  {
    v17 = v11 + 2;
  }

  v11 = sub_1869F58(v15, v17, a3);
  if ((v5 & 8) != 0)
  {
LABEL_30:
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v18 = *(a1 + 96);
    *v11 = 42;
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

    v11 = sub_16ED4B0(v18, v20, a3);
  }

LABEL_36:
  v21 = *(a1 + 32);
  if (v21 >= 1)
  {
    v22 = 8;
    do
    {
      v23 = *(*(a1 + 40) + v22);
      v24 = *(v23 + 23);
      if (v24 < 0 && (v24 = v23[1], v24 > 127) || *a3 - v11 + 14 < v24)
      {
        v11 = sub_1957480(a3, 6, v23, v11);
      }

      else
      {
        *v11 = 50;
        v11[1] = v24;
        if (*(v23 + 23) < 0)
        {
          v23 = *v23;
        }

        v25 = v11 + 2;
        memcpy(v25, v23, v24);
        v11 = &v25[v24];
      }

      v22 += 8;
      --v21;
    }

    while (v21);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v26 = *(a1 + 124);
    *v11 = 56;
    v11[1] = v26;
    v11 += 2;
    if ((v5 & 2) == 0)
    {
LABEL_49:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_55;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_49;
  }

  v11 = sub_128AEEC(a3, 8, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_58;
  }

LABEL_55:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v27 = *(a1 + 125);
  *v11 = 72;
  v11[1] = v27;
  v11 += 2;
LABEL_58:
  v28 = *(a1 + 56);
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v30 = *(*(a1 + 64) + 8 * i + 8);
      *v11 = 82;
      v31 = *(v30 + 20);
      v11[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v11 + 1);
      }

      else
      {
        v32 = v11 + 2;
      }

      v11 = sub_18BA078(v30, v32, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v33 = *(a1 + 104);
    *v11 = 90;
    v34 = *(v33 + 20);
    v11[1] = v34;
    if (v34 > 0x7F)
    {
      v35 = sub_19575D0(v34, v11 + 1);
    }

    else
    {
      v35 = v11 + 2;
    }

    v11 = sub_18BAAE0(v33, v35, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v36 = *(a1 + 112);
    *v11 = 98;
    v37 = *(v36 + 20);
    v11[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v11 + 1);
    }

    else
    {
      v38 = v11 + 2;
    }

    v11 = sub_186B234(v36, v38, a3);
  }

  v39 = *(a1 + 8);
  if ((v39 & 1) == 0)
  {
    return v11;
  }

  v41 = v39 & 0xFFFFFFFFFFFFFFFCLL;
  v42 = *(v41 + 31);
  if (v42 < 0)
  {
    v43 = *(v41 + 8);
    v42 = *(v41 + 16);
  }

  else
  {
    v43 = (v41 + 8);
  }

  if (*a3 - v11 >= v42)
  {
    v44 = v42;
    memcpy(v11, v43, v42);
    v11 += v44;
    return v11;
  }

  return sub_1957130(a3, v43, v42, v11);
}

uint64_t sub_18BC1E8(uint64_t a1)
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
      v14 = sub_18BA360(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v15)
    {
      v21 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(v21 + 23);
      v23 = *(v21 + 8);
      if ((v22 & 0x80u) == 0)
      {
        v23 = v22;
      }

      v9 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_17:
        if ((v15 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_38;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_17;
    }

    v24 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v9 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_18:
      if ((v15 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_39;
    }

LABEL_38:
    v27 = sub_186A16C(*(a1 + 88));
    v9 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 8) == 0)
    {
LABEL_19:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }

LABEL_39:
    v28 = sub_16ED6F0(*(a1 + 96));
    v9 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x10) == 0)
    {
LABEL_20:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_41;
    }

LABEL_40:
    v29 = sub_18BACE4(*(a1 + 104));
    v9 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x20) == 0)
    {
LABEL_21:
      if ((v15 & 0x40) != 0)
      {
LABEL_22:
        v16 = *(a1 + 120);
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v16 >= 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = 11;
        }

        v9 += v18;
      }

LABEL_26:
      v9 += (v15 >> 6) & 2;
      goto LABEL_27;
    }

LABEL_41:
    v30 = sub_186B468(*(a1 + 112));
    v9 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x40) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_26;
  }

LABEL_27:
  if ((v15 & 0x300) != 0)
  {
    v9 += (v15 >> 7) & 2;
    if ((v15 & 0x200) != 0)
    {
      v9 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v31 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v32 < 0)
    {
      v32 = *(v31 + 16);
    }

    v9 += v32;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_18BC4D8(uint64_t a1, uint64_t a2)
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
    sub_194516C((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    if (v14)
    {
      v16 = *(a2 + 72);
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_194EA1C((a1 + 72), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
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

    v19 = *(a2 + 80);
    *(a1 + 16) |= 2u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 80), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(a1 + 16) |= 4u;
    v22 = *(a1 + 88);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_18FF354(v24);
      *(a1 + 88) = v22;
    }

    if (*(a2 + 88))
    {
      v25 = *(a2 + 88);
    }

    else
    {
      v25 = &off_2787BC0;
    }

    sub_186A25C(v22, v25);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 16) |= 8u;
    v26 = *(a1 + 96);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v26 = sub_16F5E18(v28);
      *(a1 + 96) = v26;
    }

    if (*(a2 + 96))
    {
      v29 = *(a2 + 96);
    }

    else
    {
      v29 = &off_277E918;
    }

    sub_16ED814(v26, v29);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_58;
    }

LABEL_50:
    *(a1 + 16) |= 0x10u;
    v30 = *(a1 + 104);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_19032BC(v32);
      *(a1 + 104) = v30;
    }

    if (*(a2 + 104))
    {
      v33 = *(a2 + 104);
    }

    else
    {
      v33 = &off_2789A40;
    }

    sub_18BAE58(v30, v33);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_66;
    }

LABEL_58:
    *(a1 + 16) |= 0x20u;
    v34 = *(a1 + 112);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_18FF470(v36);
      *(a1 + 112) = v34;
    }

    if (*(a2 + 112))
    {
      v37 = *(a2 + 112);
    }

    else
    {
      v37 = &off_2787C18;
    }

    sub_186B6EC(v34, v37);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v14;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 124) = *(a2 + 124);
      goto LABEL_17;
    }

LABEL_66:
    *(a1 + 120) = *(a2 + 120);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v14 & 0x300) != 0)
  {
    if ((v14 & 0x100) != 0)
    {
      *(a1 + 125) = *(a2 + 125);
    }

    if ((v14 & 0x200) != 0)
    {
      *(a1 + 128) = *(a2 + 128);
    }

    *(a1 + 16) |= v14;
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18BC804(uint64_t a1)
{
  v2 = *(a1 + 56);
  while (v2 >= 1)
  {
    v3 = *(*(a1 + 64) + 8 * v2--);
    if ((~*(v3 + 16) & 7) != 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 88);
    if (*(v6 + 16))
    {
      result = sub_16E6614(*(v6 + 24));
      if (!result)
      {
        return result;
      }

      v5 = *(a1 + 16);
    }
  }

  if ((v5 & 8) != 0)
  {
    result = sub_16ED98C(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v5 = *(a1 + 16);
  }

  if ((v5 & 0x10) == 0)
  {
    return 1;
  }

  v7 = *(a1 + 104);
  if ((*(v7 + 16) & 4) == 0)
  {
    return 0;
  }

  result = sub_153EE5C(v7 + 24);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18BC8C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27189D8;
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
    sub_1944528((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_1944620((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
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

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_18BCA18(_Unwind_Exception *a1)
{
  sub_1942E70(v3);
  sub_1942D68(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18BCA70(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1942E70(a1 + 6);
  sub_1942D68(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18BCAFC(void *a1)
{
  sub_18BCA70(a1);

  operator delete();
}

uint64_t sub_18BCB34(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_186A488(v4);
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
      result = sub_186BA84(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 64) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_18BCBE0(uint64_t a1, char *a2, int32x2_t *a3)
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
      v33 = v23;
      *(a1 + 72) = v22 != 0;
      v5 = 1;
      goto LABEL_44;
    }

    v31 = sub_19587DC(v7, v22);
    v33 = v31;
    *(a1 + 72) = v32 != 0;
    v5 = 1;
    if (!v31)
    {
      goto LABEL_51;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 == 18)
    {
      v16 = v7 - 1;
      while (1)
      {
        v17 = (v16 + 1);
        v33 = v16 + 1;
        v18 = *(a1 + 64);
        if (v18 && (v19 = *(a1 + 56), v19 < *v18))
        {
          *(a1 + 56) = v19 + 1;
          v20 = *&v18[2 * v19 + 2];
        }

        else
        {
          v21 = sub_18FF520(*(a1 + 48));
          v20 = sub_19593CC(a1 + 48, v21);
          v17 = v33;
        }

        v16 = sub_2225B18(a3, v20, v17);
        v33 = v16;
        if (!v16)
        {
          goto LABEL_51;
        }

        if (*a3 <= v16 || *v16 != 18)
        {
          goto LABEL_44;
        }
      }
    }
  }

  else if (v11 == 1 && v8 == 10)
  {
    v25 = v7 - 1;
    while (1)
    {
      v26 = (v25 + 1);
      v33 = v25 + 1;
      v27 = *(a1 + 40);
      if (v27 && (v28 = *(a1 + 32), v28 < *v27))
      {
        *(a1 + 32) = v28 + 1;
        v29 = *&v27[2 * v28 + 2];
      }

      else
      {
        v30 = sub_18FF3D0(*(a1 + 24));
        v29 = sub_19593CC(a1 + 24, v30);
        v26 = v33;
      }

      v25 = sub_2251A94(a3, v29, v26);
      v33 = v25;
      if (!v25)
      {
        goto LABEL_51;
      }

      if (*a3 <= v25 || *v25 != 10)
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
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v33;
    }

    v33 = sub_1952690(v8, v15, v7, a3);
    if (!v33)
    {
      goto LABEL_51;
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_51:
  v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

char *sub_18BCE9C(uint64_t a1, char *__dst, void *a3)
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
      v9 = *(v8 + 40);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_186A694(v8, v10, a3);
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
      v14 = *(v13 + 44);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_186BDDC(v13, v15, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v16 = *(a1 + 72);
    *__dst = 24;
    __dst[1] = v16;
    __dst += 2;
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v20)
  {
    v22 = v20;
    memcpy(__dst, v21, v20);
    __dst += v22;
    return __dst;
  }

  return sub_1957130(a3, v21, v20, __dst);
}

uint64_t sub_18BD09C(uint64_t a1)
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
      v7 = sub_186A7D4(v6);
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
      v14 = sub_186C0BC(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  result = v9 + 2 * (*(a1 + 16) & 1);
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

void sub_18BD19C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1944528((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1944620((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  if (*(a2 + 16))
  {
    v14 = *(a2 + 72);
    *(a1 + 16) |= 1u;
    *(a1 + 72) = v14;
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18BD2D0(uint64_t a1)
{
  v2 = *(a1 + 56);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_195228C(*(*(a1 + 64) + 8 * v2) + 16);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_18BD33C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2718A58;
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

void sub_18BD3C0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18BD3F0(void *a1)
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

void sub_18BD464(void *a1)
{
  sub_18BD3F0(a1);

  operator delete();
}

uint64_t sub_18BD49C(uint64_t a1)
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

char *sub_18BD4C4(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 32) = v15 != 0;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 32) = v22 != 0;
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

char *sub_18BD6B8(uint64_t a1, char *__dst, _DWORD *a3)
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

    v11 = *(a1 + 32);
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

unint64_t sub_18BD818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

std::string *sub_18BD890(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      result[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
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

uint64_t sub_18BD8F4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_2718AD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 108) = 10;
  return a1;
}

void sub_18BD980(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18BD9B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_2718AD8;
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

  *(a1 + 72) = 0;
  if ((v7 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v7 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void *sub_18BDC44(void *a1)
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

  sub_18BDCD0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18BDCD0(uint64_t a1)
{
  v3 = *(a1 + 48);
  result = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2789B88)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      sub_1869B9C(v4);
      operator delete();
    }

    if (*(a1 + 64))
    {
      sub_16E4E08();
      operator delete();
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      sub_18BD3F0(v5);
      operator delete();
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      sub_186FA8C(v6);
      operator delete();
    }

    result = *(a1 + 88);
    if (result)
    {
      sub_13878A4(result);

      operator delete();
    }
  }

  return result;
}

void sub_18BDDD4(void *a1)
{
  sub_18BDC44(a1);

  operator delete();
}

uint64_t sub_18BDE0C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 0x3F) == 0)
  {
    goto LABEL_9;
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
        goto LABEL_21;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  result = sub_1869C8C(*(a1 + 56));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    result = sub_18BD49C(*(a1 + 72));
    if ((v3 & 0x10) == 0)
    {
LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_22:
  result = sub_16E4E44(*(a1 + 64));
  if ((v3 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_24:
  result = sub_186D334(*(a1 + 80));
  if ((v3 & 0x20) != 0)
  {
LABEL_8:
    result = sub_13878E0(*(a1 + 88));
  }

LABEL_9:
  if ((v3 & 0xC0) != 0)
  {
    *(a1 + 96) = 0;
  }

  if ((v3 & 0x300) != 0)
  {
    *(a1 + 104) = 0;
    *(a1 + 108) = 10;
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

uint64_t sub_18BDF10(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v52 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v52, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v52 + 1);
    v8 = **v52;
    if (**v52 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v52, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v52 + 2);
      }
    }

    *v52 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 <= 7)
    {
      if (v11 != 6)
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_81;
        }

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

          v23 = sub_19034D8(v25);
          *(a1 + 72) = v23;
          v7 = *v52;
        }

        v15 = sub_2254338(a3, v23, v7);
        goto LABEL_90;
      }

      if (v8 != 48)
      {
        goto LABEL_81;
      }

      v30 = (v7 + 1);
      v29 = *v7;
      if (v29 < 0)
      {
        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v30 = (v7 + 2);
          goto LABEL_56;
        }

        *v52 = sub_19587DC(v7, v29);
        if (!*v52)
        {
          goto LABEL_106;
        }
      }

      else
      {
LABEL_56:
        *v52 = v30;
      }

      if (v29 > 2)
      {
        sub_12E84C8();
      }

      else
      {
        *(a1 + 40) |= 0x80u;
        *(a1 + 100) = v29;
      }

      goto LABEL_91;
    }

    if (v11 == 8)
    {
      if (v8 != 66)
      {
        goto LABEL_81;
      }

      *(a1 + 40) |= 0x10u;
      v35 = *(a1 + 80);
      if (!v35)
      {
        v36 = *(a1 + 8);
        v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
        if (v36)
        {
          v37 = *v37;
        }

        v35 = sub_18FF5D8(v37);
        *(a1 + 80) = v35;
        v7 = *v52;
      }

      v15 = sub_2251A04(a3, v35, v7);
      goto LABEL_90;
    }

    if (v11 == 9)
    {
      if (v8 != 74)
      {
        goto LABEL_81;
      }

      *(a1 + 40) |= 0x20u;
      v41 = *(a1 + 88);
      if (!v41)
      {
        v42 = *(a1 + 8);
        v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v43 = *v43;
        }

        sub_1392574(v43);
        v41 = v44;
        *(a1 + 88) = v44;
        v7 = *v52;
      }

      v15 = sub_221F17C(a3, v41, v7);
LABEL_90:
      *v52 = v15;
      if (!v15)
      {
        goto LABEL_106;
      }

      goto LABEL_91;
    }

    if (v11 != 10 || v8 != 80)
    {
      goto LABEL_81;
    }

    v5 |= 0x100u;
    v17 = (v7 + 1);
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = (v7 + 2);
LABEL_26:
      *v52 = v17;
      *(a1 + 104) = v16 != 0;
      goto LABEL_91;
    }

    v50 = sub_19587DC(v7, v16);
    *v52 = v50;
    *(a1 + 104) = v51 != 0;
    if (!v50)
    {
      goto LABEL_106;
    }

LABEL_91:
    if (sub_195ADC0(a3, v52, a3[11].i32[1]))
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
        goto LABEL_81;
      }

      *(a1 + 40) |= 1u;
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v34 = sub_194DB04((a1 + 48), v33);
      v15 = sub_1958890(v34, *v52, a3);
    }

    else if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_81;
      }

      *(a1 + 40) |= 2u;
      v38 = *(a1 + 56);
      if (!v38)
      {
        v39 = *(a1 + 8);
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v40 = *v40;
        }

        v38 = sub_18FF354(v40);
        *(a1 + 56) = v38;
        v7 = *v52;
      }

      v15 = sub_2201670(a3, v38, v7);
    }

    else
    {
      if (v11 != 5 || v8 != 42)
      {
        goto LABEL_81;
      }

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

        v12 = sub_16F5828(v14);
        *(a1 + 64) = v12;
        v7 = *v52;
      }

      v15 = sub_21F4D60(a3, v12, v7);
    }

    goto LABEL_90;
  }

  if (v11 != 1)
  {
    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_81;
    }

    v5 |= 0x200u;
    v20 = (v7 + 1);
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = (v7 + 2);
LABEL_36:
      *v52 = v20;
      *(a1 + 108) = v21;
      goto LABEL_91;
    }

    v48 = sub_1958770(v7, v21);
    *v52 = v48;
    *(a1 + 108) = v49;
    if (!v48)
    {
      goto LABEL_106;
    }

    goto LABEL_91;
  }

  if (v8 == 8)
  {
    v27 = (v7 + 1);
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if (v28 < 0)
    {
      *v52 = sub_19587DC(v7, v26);
      if (!*v52)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v27 = (v7 + 2);
LABEL_49:
      *v52 = v27;
    }

    if (v26 > 3)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 40) |= 0x40u;
      *(a1 + 96) = v26;
    }

    goto LABEL_91;
  }

LABEL_81:
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
    if (v8 - 800 > 0x31F)
    {
      v46 = *(a1 + 8);
      if (v46)
      {
        v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v47 = sub_11F1920((a1 + 8));
        v7 = *v52;
      }

      v15 = sub_1952690(v8, v47, v7, a3);
    }

    else
    {
      v15 = sub_19525AC((a1 + 16), v8, v7, &off_2789B88, (a1 + 8), a3);
    }

    goto LABEL_90;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_106:
  *v52 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v52;
}

char *sub_18BE450(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 96);
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 108);
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

  if (v5)
  {
    v11 = sub_128AEEC(a3, 3, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v11);
    if ((v5 & 2) == 0)
    {
LABEL_21:
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }

LABEL_31:
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v19 = *(a1 + 64);
      *v11 = 42;
      v20 = *(v19 + 44);
      v11[1] = v20;
      if (v20 > 0x7F)
      {
        v21 = sub_19575D0(v20, v11 + 1);
      }

      else
      {
        v21 = v11 + 2;
      }

      v11 = sub_16E5070(v19, v21, a3);
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_21;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v16 = *(a1 + 56);
  *v11 = 34;
  v17 = *(v16 + 20);
  v11[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v11 + 1);
  }

  else
  {
    v18 = v11 + 2;
  }

  v11 = sub_1869F58(v16, v18, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_31;
  }

LABEL_22:
  if ((v5 & 0x80) == 0)
  {
LABEL_23:
    v15 = v11;
    goto LABEL_44;
  }

LABEL_37:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v22 = *(a1 + 100);
  *v11 = 48;
  v11[1] = v22;
  if (v22 > 0x7F)
  {
    v11[1] = v22 | 0x80;
    v23 = v22 >> 7;
    v11[2] = v22 >> 7;
    v15 = v11 + 3;
    if (v22 >= 0x4000)
    {
      LOBYTE(v24) = v11[2];
      do
      {
        *(v15 - 1) = v24 | 0x80;
        v24 = v23 >> 7;
        *v15++ = v23 >> 7;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
    }
  }

  else
  {
    v15 = v11 + 2;
  }

LABEL_44:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v26 = *(a1 + 72);
    *v15 = 58;
    v27 = *(v26 + 20);
    v15[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v15 + 1);
    }

    else
    {
      v28 = v15 + 2;
    }

    v15 = sub_18BD6B8(v26, v28, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_46:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_61;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_46;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v29 = *(a1 + 80);
  *v15 = 66;
  v30 = *(v29 + 20);
  v15[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, v15 + 1);
  }

  else
  {
    v31 = v15 + 2;
  }

  v15 = sub_186FDA4(v29, v31, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_47:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

LABEL_61:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v32 = *(a1 + 88);
  *v15 = 74;
  v33 = *(v32 + 20);
  v15[1] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, v15 + 1);
  }

  else
  {
    v34 = v15 + 2;
  }

  v15 = sub_13880A4(v32, v34, a3);
  if ((v5 & 0x100) != 0)
  {
LABEL_67:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v35 = *(a1 + 104);
    *v15 = 80;
    v15[1] = v35;
    v15 += 2;
  }

LABEL_70:
  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 100, 200, v15, a3);
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v39)
  {
    v41 = v39;
    memcpy(v15, v40, v39);
    v15 += v41;
    return v15;
  }

  return sub_1957130(a3, v40, v39, v15);
}

uint64_t sub_18BE91C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = v2;
  v4 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_27;
  }

  if (v4)
  {
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = sub_186A16C(*(a1 + 56));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = sub_16E51F0(*(a1 + 64));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = sub_18BD818(*(a1 + 72));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = sub_186FF30(*(a1 + 80));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = sub_138853C(*(a1 + 88));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_19:
  v13 = *(a1 + 96);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v14;
  if ((v4 & 0x80) != 0)
  {
LABEL_23:
    v15 = *(a1 + 100);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v16;
  }

LABEL_27:
  if ((v4 & 0x300) != 0)
  {
    v3 += (v4 >> 7) & 2;
    if ((v4 & 0x200) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 108) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v3 += v20;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_18BEB80(uint64_t a1, uint64_t a2)
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

        goto LABEL_33;
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

      v9 = sub_18FF354(v11);
      *(a1 + 56) = v9;
    }

    if (*(a2 + 56))
    {
      v12 = *(a2 + 56);
    }

    else
    {
      v12 = &off_2787BC0;
    }

    sub_186A25C(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_41;
    }

LABEL_33:
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
        goto LABEL_7;
      }

      goto LABEL_49;
    }

LABEL_41:
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

      v17 = sub_19034D8(v19);
      *(a1 + 72) = v17;
    }

    if (*(a2 + 72))
    {
      v20 = *(a2 + 72);
    }

    else
    {
      v20 = &off_2789B60;
    }

    sub_18BD890(v17, v20);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_57;
    }

LABEL_49:
    *(a1 + 40) |= 0x10u;
    v21 = *(a1 + 80);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_18FF5D8(v23);
      *(a1 + 80) = v21;
    }

    if (*(a2 + 80))
    {
      v24 = *(a2 + 80);
    }

    else
    {
      v24 = &off_2787E30;
    }

    sub_1840104(v21, v24);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_65;
    }

LABEL_57:
    *(a1 + 40) |= 0x20u;
    v25 = *(a1 + 88);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_1392574(v27);
      *(a1 + 88) = v25;
    }

    if (*(a2 + 88))
    {
      v28 = *(a2 + 88);
    }

    else
    {
      v28 = &off_276D3A8;
    }

    sub_1388770(v25, v28);
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

LABEL_65:
    *(a1 + 96) = *(a2 + 96);
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
      *(a1 + 104) = *(a2 + 104);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 108) = *(a2 + 108);
    }

    *(a1 + 40) |= v4;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18BEE18(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) != 0)
    {
      v4 = *(a1 + 56);
      if (*(v4 + 16))
      {
        result = sub_16E6614(*(v4 + 24));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }
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

    if ((v3 & 0x20) == 0)
    {
      return 1;
    }

    result = sub_1388C74(*(a1 + 88));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_18BEEA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2718B58;
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
    sub_1944528((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_18BF074(uint64_t a1)
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

  if (a1 != &off_2789BF8)
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
      sub_18752C8(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1942D68((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18BF150(uint64_t a1)
{
  sub_18BF074(a1);

  operator delete();
}

uint64_t sub_18BF188(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_186A488(v4);
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
      result = sub_16E5B70(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      result = sub_1871E2C(*(v1 + 56));
    }
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

char *sub_18BF22C(uint64_t a1, char *a2, int32x2_t *a3)
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
        *(a1 + 16) |= 2u;
        v22 = *(a1 + 56);
        if (!v22)
        {
          v23 = *(a1 + 8);
          v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v24 = *v24;
          }

          v22 = sub_18FF7BC(v24);
          *(a1 + 56) = v22;
          v6 = v30;
        }

        v15 = sub_2251E84(a3, v22, v6);
        goto LABEL_41;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v16 = v6 - 1;
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
            v21 = sub_18FF3D0(*(a1 + 24));
            v20 = sub_19593CC(a1 + 24, v21);
            v17 = v30;
          }

          v16 = sub_2251A94(a3, v20, v17);
          v30 = v16;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 18)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v25 = *(a1 + 48);
      if (!v25)
      {
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        sub_16F58FC(v27);
        v25 = v28;
        *(a1 + 48) = v28;
        v6 = v30;
      }

      v15 = sub_21F86E8(a3, v25, v6);
      goto LABEL_41;
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

char *sub_18BF468(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v13 = *(v12 + 40);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v4 + 1);
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = sub_186A694(v12, v14, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 56);
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

    v4 = sub_187562C(v15, v17, a3);
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

uint64_t sub_18BF674(uint64_t a1)
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
      v7 = sub_186A7D4(v6);
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
      v10 = sub_1875820(*(a1 + 56));
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

void sub_18BF788(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1944528((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v14 = sub_18FF7BC(v16);
        *(a1 + 56) = v14;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = &off_2788038;
      }

      sub_12CC47C(v14, v17);
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18BF8E8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18BF928(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2718BD8;
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

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_18BFA18(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18BFA58(void *a1)
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

void sub_18BFAD4(void *a1)
{
  sub_18BFA58(a1);

  operator delete();
}

uint64_t sub_18BFB0C(uint64_t a1)
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

uint64_t sub_18BFB64(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
    {
      if (v7 != 16)
      {
        goto LABEL_12;
      }

      v14 = v6 + 1;
      v15 = *v6;
      if ((v15 & 0x8000000000000000) != 0)
      {
        v16 = *v14;
        v17 = (v16 << 7) + v15;
        v15 = (v17 - 128);
        if (v16 < 0)
        {
          *v30 = sub_19587DC(v6, (v17 - 128));
          if (!*v30)
          {
            goto LABEL_52;
          }

          v15 = v29;
          goto LABEL_25;
        }

        v14 = v6 + 2;
      }

      *v30 = v14;
LABEL_25:
      if (v15 > 0xA || ((1 << v15) & 0x407) == 0)
      {
        v27 = *(a1 + 8);
        if (v27)
        {
          v28 = ((v27 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        else
        {
          v28 = sub_11F1920((a1 + 8));
        }

        sub_19586BC(2, v15, v28);
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v15;
      }

      goto LABEL_44;
    }

    if (v7 >> 3 == 1 && v7 == 10)
    {
      v19 = v6 - 1;
      while (1)
      {
        v20 = (v19 + 1);
        *v30 = v19 + 1;
        v21 = *(a1 + 40);
        if (v21 && (v22 = *(a1 + 32), v22 < *v21))
        {
          *(a1 + 32) = v22 + 1;
          v23 = *&v21[2 * v22 + 2];
        }

        else
        {
          v24 = *(a1 + 24);
          if (!v24)
          {
            operator new();
          }

          *v26 = v25;
          v26[1] = sub_195A650;
          *v25 = 0;
          v25[1] = 0;
          v25[2] = 0;
          v23 = sub_19593CC(a1 + 24, v25);
          v20 = *v30;
        }

        v19 = sub_1958890(v23, v20, a3);
        *v30 = v19;
        if (!v19)
        {
          goto LABEL_52;
        }

        if (*a3 <= v19 || *v19 != 10)
        {
          goto LABEL_44;
        }
      }
    }

LABEL_12:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v30;
    }

    *v30 = sub_1952690(v7, v13, v6, a3);
    if (!*v30)
    {
      goto LABEL_52;
    }

LABEL_44:
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

LABEL_52:
  *v30 = 0;
  return *v30;
}

char *sub_18BFE20(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - __dst + 14 < v9)
      {
        __dst = sub_1957480(a3, 1, v8, __dst);
      }

      else
      {
        *__dst = 10;
        __dst[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = __dst + 2;
        memcpy(__dst + 2, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      __dst[1] = v12 | 0x80;
      v13 = v12 >> 7;
      __dst[2] = v12 >> 7;
      v11 = __dst + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v14) = __dst[2];
        do
        {
          *(v11 - 1) = v14 | 0x80;
          v14 = v13 >> 7;
          *v11++ = v13 >> 7;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v11 = __dst + 2;
    }
  }

  else
  {
    v11 = __dst;
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v19)
  {
    v21 = v19;
    memcpy(v11, v20, v19);
    v11 += v21;
    return v11;
  }

  return sub_1957130(a3, v20, v19, v11);
}

uint64_t sub_18BFFFC(uint64_t a1)
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
    v7 = *(a1 + 48);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v8;
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

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_18C00DC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = off_2718C58;
  v4 = *(a2 + 16);
  a1[2] = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4(a1 + 1, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  a1[3] = 0;
  if ((v4 & 2) != 0)
  {
    operator new();
  }

  a1[4] = 0;
  a1[5] = *(a2 + 40);
  return a1;
}

uint64_t sub_18C0228(uint64_t a1)
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

  if (a1 != &off_2789C70)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_1869B9C(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_18BFA58(v6);
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

void sub_18C02F8(uint64_t a1)
{
  sub_18C0228(a1);

  operator delete();
}

uint64_t sub_18C0330(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      result = sub_1869C8C(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_18BFB0C(*(v1 + 32));
    }

    *(v1 + 40) = 0xA00000002;
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

char *sub_18C03AC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 1u;
        v23 = *(a1 + 24);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_18FF354(v25);
          *(a1 + 24) = v23;
          v7 = v31;
        }

        v19 = sub_2201670(a3, v23, v7);
      }

      else
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_39;
        }

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

          v16 = sub_190364C(v18);
          *(a1 + 32) = v16;
          v7 = v31;
        }

        v19 = sub_22543C8(a3, v16, v7);
      }

LABEL_46:
      v31 = v19;
      if (!v19)
      {
        goto LABEL_57;
      }

      goto LABEL_47;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_39;
    }

    v5 |= 8u;
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
      v31 = v13;
      *(a1 + 44) = v14;
      goto LABEL_47;
    }

    v29 = sub_1958770(v7, v14);
    v31 = v29;
    *(a1 + 44) = v30;
    if (!v29)
    {
      goto LABEL_57;
    }

LABEL_47:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 8)
  {
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if (v22 < 0)
    {
      v31 = sub_19587DC(v7, v20);
      if (!v31)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v21 = v7 + 2;
LABEL_30:
      v31 = v21;
    }

    if (v20 > 3)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 40) = v20;
    }

    goto LABEL_47;
  }

LABEL_39:
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
      v7 = v31;
    }

    v19 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_57:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_18C0660(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
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

    v12 = *(a1 + 44);
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

  if (v5)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 24);
    *v11 = 26;
    v16 = *(v15 + 20);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_1869F58(v15, v17, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v18 = *(a1 + 32);
    *v11 = 34;
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

    v11 = sub_18BFE20(v18, v20, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v11;
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

  if (*a3 - v11 >= v24)
  {
    v26 = v24;
    memcpy(v11, v25, v24);
    v11 += v26;
    return v11;
  }

  return sub_1957130(a3, v25, v24, v11);
}

uint64_t sub_18C08E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_186A16C(*(a1 + 24));
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
    v5 = sub_18BFFFC(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
LABEL_10:
    v3 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  v6 = *(a1 + 8);
  if (v6)
  {
    v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_18C0A18(uint64_t a1, uint64_t a2)
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

        v6 = sub_18FF354(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2787BC0;
      }

      sub_186A25C(v6, v9);
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

    *(a1 + 16) |= 2u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_190364C(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2789C38;
    }

    sub_1645A7C(v10, v13);
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

LABEL_28:
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

BOOL sub_18C0B50(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 24);
  if ((*(v1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E6614(*(v1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18C0B9C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_2718CD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_18C0C00(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18C0C30(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_2718CD8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  return a1;
}

void sub_18C0CC4(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18C0D00(void *a1)
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

void sub_18C0D7C(void *a1)
{
  sub_18C0D00(a1);

  operator delete();
}

unsigned __int8 *sub_18C0DB4(uint64_t a1)
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

char *sub_18C0E04(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v6 - 800 > 0x31F)
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
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_2789CA0, (a1 + 8), a3);
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

char *sub_18C0F3C(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 200, a2, a3);
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

uint64_t sub_18C1004(uint64_t a1)
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

uint64_t sub_18C106C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2718D58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = a2;
  *(a1 + 80) = 0;
  return a1;
}

void sub_18C10E0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18C1110(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_2718D58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  v6 = *(a2 + 48);
  if (v6)
  {
    sub_1959094((a1 + 48), v6);
    v7 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v7, *(a2 + 56), 8 * *(a2 + 48));
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    sub_1957EF4(v4, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  if (*(a2 + 40))
  {
    operator new();
  }

  *(a1 + 64) = 0;
  v9 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v9;
  return a1;
}

uint64_t sub_18C129C(uint64_t a1)
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

  if (a1 != &off_2789CD0 && *(a1 + 64))
  {
    sub_16E4E08();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18C1364(uint64_t a1)
{
  sub_18C129C(a1);

  operator delete();
}

unsigned __int8 *sub_18C139C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    result = sub_16E4E44(*(a1 + 64));
  }

  if ((v3 & 6) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
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

char *sub_18C1414(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_53;
      }

      *(a1 + 40) |= 1u;
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
        v7 = v36;
      }

      v16 = sub_21F4D60(a3, v13, v7);
LABEL_62:
      v36 = v16;
      if (!v16)
      {
        goto LABEL_69;
      }

      goto LABEL_63;
    }

    if (v8 != 8)
    {
      goto LABEL_53;
    }

    v5 |= 2u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_39:
      v36 = v24;
      *(a1 + 72) = v23;
      goto LABEL_63;
    }

    v30 = sub_19587DC(v7, v23);
    v36 = v30;
    *(a1 + 72) = v31;
    if (!v30)
    {
      goto LABEL_69;
    }

LABEL_63:
    if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_53;
    }

    v26 = v7 + 1;
    v27 = *v7;
    if (v27 < 0)
    {
      v28 = *v26;
      v29 = (v28 << 7) + v27;
      LODWORD(v27) = v29 - 128;
      if (v28 < 0)
      {
        v36 = sub_19587DC(v7, (v29 - 128));
        if (!v36)
        {
          goto LABEL_69;
        }

        LODWORD(v27) = v32;
        goto LABEL_45;
      }

      v26 = v7 + 2;
    }

    v36 = v26;
LABEL_45:
    if (sub_16E4BB4(v27))
    {
      *(a1 + 40) |= 4u;
      *(a1 + 80) = v27;
    }

    else
    {
      sub_1313740();
    }

    goto LABEL_63;
  }

  if (v11 == 4)
  {
    if (v8 == 32)
    {
      v17 = v7 - 1;
      while (1)
      {
        v36 = v17 + 1;
        v18 = v17[1];
        if (v18 < 0)
        {
          v19 = (v17[2] << 7) + v18;
          v18 = (v19 - 128);
          if (v17[2] < 0)
          {
            v17 = sub_19587DC((v17 + 1), (v19 - 128));
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

        v36 = v17;
        v21 = *(a1 + 48);
        if (v21 == *(a1 + 52))
        {
          v22 = v21 + 1;
          sub_1959094((a1 + 48), v21 + 1);
          *(*(a1 + 56) + 8 * v21) = v18;
          v17 = v36;
        }

        else
        {
          *(*(a1 + 56) + 8 * v21) = v18;
          v22 = v21 + 1;
        }

        *(a1 + 48) = v22;
        if (!v17)
        {
          goto LABEL_69;
        }

        if (*a3 <= v17 || *v17 != 32)
        {
          goto LABEL_63;
        }
      }
    }

    if (v8 == 34)
    {
      v16 = sub_1958938((a1 + 48), v7, a3);
      goto LABEL_62;
    }
  }

LABEL_53:
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
    if (v8 - 800 > 0x31F)
    {
      v34 = *(a1 + 8);
      if (v34)
      {
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v35 = sub_11F1920((a1 + 8));
        v7 = v36;
      }

      v16 = sub_1952690(v8, v35, v7, a3);
    }

    else
    {
      v16 = sub_19525AC((a1 + 16), v8, v7, &off_2789CD0, (a1 + 8), a3);
    }

    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_69:
  v36 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v36;
}

char *sub_18C17A0(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 72);
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

    v11 = *(a1 + 64);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 80);
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

  v18 = *(a1 + 48);
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

      v20 = *(*(a1 + 56) + 8 * i);
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

  if (*(a1 + 26))
  {
    v21 = sub_1953428(a1 + 16, 100, 200, v21, a3);
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v21;
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

  if (*a3 - v21 >= v27)
  {
    v29 = v27;
    memcpy(v21, v28, v27);
    v21 += v29;
    return v21;
  }

  return sub_1957130(a3, v28, v27, v21);
}

uint64_t sub_18C1A8C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959F14((a1 + 48)) + v2 + *(a1 + 48);
  v4 = *(a1 + 40);
  if ((v4 & 7) == 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = sub_16E51F0(*(a1 + 64));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v3 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v6 = *(a1 + 80);
  if (v6 < 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v7;
LABEL_12:
  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v3 += v11;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_18C1BA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = (a1 + 48);
    v6 = *(a1 + 48);
    sub_1959094((a1 + 48), v6 + v4);
    v7 = *(a1 + 56);
    *v5 += *(a2 + 48);
    memcpy((v7 + 8 * v6), *(a2 + 56), 8 * *(a2 + 48));
  }

  v8 = *(a2 + 40);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 64);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_16F5828(v12);
        *(a1 + 64) = v10;
      }

      if (*(a2 + 64))
      {
        v13 = *(a2 + 64);
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
LABEL_8:
          *(a1 + 40) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        *(a1 + 80) = *(a2 + 80);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 72) = *(a2 + 72);
    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18C1CD8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(a1 + 64));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_18C1D2C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_2718DD8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_18C1D90(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18C1DC0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_2718DD8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v4, a2 + 16);
  return a1;
}

void sub_18C1E54(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18C1E90(void *a1)
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

void sub_18C1F0C(void *a1)
{
  sub_18C1E90(a1);

  operator delete();
}

unsigned __int8 *sub_18C1F44(uint64_t a1)
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

char *sub_18C1F94(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v6 - 800 > 0x31F)
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
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_2789D28, (a1 + 8), a3);
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

char *sub_18C20CC(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 200, a2, a3);
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

uint64_t sub_18C2194(uint64_t a1)
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

uint64_t sub_18C21FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2718E58;
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
    sub_19451E8((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  if (*(a2 + 16))
  {
    operator new();
  }

  v11 = *(a2 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = v11;
  return a1;
}

uint64_t sub_18C2384(uint64_t a1)
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

  if (a1 != &off_2789D58 && *(a1 + 48))
  {
    sub_16E8374();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_19439C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18C2448(uint64_t a1)
{
  sub_18C2384(a1);

  operator delete();
}

uint64_t sub_18C2480(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1750E64(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_16E48B0(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_18C2514(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 == 26)
      {
        v20 = v7 - 1;
        while (1)
        {
          v21 = (v20 + 1);
          v31 = v20 + 1;
          v22 = *(a1 + 40);
          if (v22 && (v23 = *(a1 + 32), v23 < *v22))
          {
            *(a1 + 32) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_1753288(*(a1 + 24));
            v24 = sub_19593CC(a1 + 24, v25);
            v21 = v31;
          }

          v20 = sub_2254458(a3, v24, v21);
          v31 = v20;
          if (!v20)
          {
            goto LABEL_49;
          }

          if (*a3 <= v20 || *v20 != 26)
          {
            goto LABEL_42;
          }
        }
      }

      goto LABEL_13;
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
    v26 = *v7;
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    v28 = *v27;
    v26 = (v28 << 7) + v26 - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v27 = v7 + 2;
LABEL_41:
      v31 = v27;
      *(a1 + 56) = v26;
      goto LABEL_42;
    }

    v29 = sub_19587DC(v7, v26);
    v31 = v29;
    *(a1 + 56) = v30;
    if (!v29)
    {
      goto LABEL_49;
    }

LABEL_42:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 48);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_16F5BD8(v19);
      *(a1 + 48) = v17;
      v7 = v31;
    }

    v16 = sub_21F7188(a3, v17, v7);
LABEL_26:
    v31 = v16;
    if (!v16)
    {
      goto LABEL_49;
    }

    goto LABEL_42;
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
      v7 = v31;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_26;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_18C2780(uint64_t a1, char *__dst, _DWORD *a3)
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 48);
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

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
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

      v6 = sub_175108C(v16, v18, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v22)
  {
    v24 = v22;
    memcpy(v6, v23, v22);
    v6 += v24;
    return v6;
  }

  return sub_1957130(a3, v23, v22, v6);
}

uint64_t sub_18C29A8(uint64_t a1)
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
      v7 = sub_1751208(v6);
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
      v9 = sub_16E8DA4(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
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

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_18C2AB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_19451E8((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v10 = sub_16F5BD8(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E738;
      }

      sub_16E4964(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 16) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18C2BDC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E4B4C(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18C2C1C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2718ED8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18C2C88(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18C2CB8(void *a1)
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

void sub_18C2D2C(void *a1)
{
  sub_18C2CB8(a1);

  operator delete();
}

uint64_t *sub_18C2D64(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18C2D74(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_18C2E08(uint64_t a1)
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

std::string *sub_18C2E34(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18C2E68(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_2718F58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_19451E8(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
    v9 = *(a1 + 24) + v6;
    *(a1 + 24) = v9;
    v10 = *(a1 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v11 = *(a2 + 48);
  if (v11)
  {
    v12 = *(a2 + 56);
    v13 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_13B5364((a1 + 40), v13, (v12 + 8), v11, **(a1 + 56) - *(a1 + 48));
    v14 = *(a1 + 48) + v11;
    *(a1 + 48) = v14;
    v15 = *(a1 + 56);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v16 = *(a2 + 72);
  if (v16)
  {
    v17 = *(a2 + 80);
    v18 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_193D664((a1 + 64), v18, (v17 + 8), v16, **(a1 + 80) - *(a1 + 72));
    v19 = *(a1 + 72) + v16;
    *(a1 + 72) = v19;
    v20 = *(a1 + 80);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(a1 + 88) = 0;
  v21 = *(a2 + 8);
  if (v21)
  {
    sub_1957EF4(v4, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18C3020(_Unwind_Exception *a1)
{
  sub_193B460(v5);
  sub_13B52E0(v4);
  sub_19439C8(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18C308C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_193B460(a1 + 8);
  sub_13B52E0(a1 + 5);
  sub_19439C8(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18C3124(void *a1)
{
  sub_18C308C(a1);

  operator delete();
}

uint64_t sub_18C315C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1750E64(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      result = sub_16E5B70(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      result = sub_1752AA4(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v12 = *(v1 + 8);
  v11 = (v1 + 8);
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

char *sub_18C3228(uint64_t a1, char *a2, int32x2_t *a3)
{
  v33 = a2;
  if ((sub_195ADC0(a3, &v33, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
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
      if (v7 >> 3 == 3)
      {
        if (v7 == 26)
        {
          v21 = v6 - 1;
          while (1)
          {
            v22 = (v21 + 1);
            v33 = v21 + 1;
            v23 = *(a1 + 80);
            if (v23 && (v24 = *(a1 + 72), v24 < *v23))
            {
              *(a1 + 72) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              sub_1753488(*(a1 + 64));
              v25 = sub_19593CC(a1 + 64, v26);
              v22 = v33;
            }

            v21 = sub_22468A8(a3, v25, v22);
            v33 = v21;
            if (!v21)
            {
              return 0;
            }

            if (*a3 <= v21 || *v21 != 26)
            {
              goto LABEL_49;
            }
          }
        }
      }

      else if (v10 == 2)
      {
        if (v7 == 18)
        {
          v15 = v6 - 1;
          while (1)
          {
            v16 = (v15 + 1);
            v33 = v15 + 1;
            v17 = *(a1 + 56);
            if (v17 && (v18 = *(a1 + 48), v18 < *v17))
            {
              *(a1 + 48) = v18 + 1;
              v19 = *&v17[2 * v18 + 2];
            }

            else
            {
              sub_16F58FC(*(a1 + 40));
              v19 = sub_19593CC(a1 + 40, v20);
              v16 = v33;
            }

            v15 = sub_21F86E8(a3, v19, v16);
            v33 = v15;
            if (!v15)
            {
              return 0;
            }

            if (*a3 <= v15 || *v15 != 18)
            {
              goto LABEL_49;
            }
          }
        }
      }

      else if (v10 == 1 && v7 == 10)
      {
        v27 = v6 - 1;
        while (1)
        {
          v28 = (v27 + 1);
          v33 = v27 + 1;
          v29 = *(a1 + 32);
          if (v29 && (v30 = *(a1 + 24), v30 < *v29))
          {
            *(a1 + 24) = v30 + 1;
            v31 = *&v29[2 * v30 + 2];
          }

          else
          {
            v32 = sub_1753288(*(a1 + 16));
            v31 = sub_19593CC(a1 + 16, v32);
            v28 = v33;
          }

          v27 = sub_2254458(a3, v31, v28);
          v33 = v27;
          if (!v27)
          {
            return 0;
          }

          if (*a3 <= v27 || *v27 != 10)
          {
            goto LABEL_49;
          }
        }
      }

      if (!v7 || (v7 & 7) == 4)
      {
        break;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = v33;
      }

      v33 = sub_1952690(v7, v14, v6, a3);
      if (!v33)
      {
        return 0;
      }

LABEL_49:
      if (sub_195ADC0(a3, &v33, a3[11].i32[1]))
      {
        return v33;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v33;
    }

    return 0;
  }

  return v33;
}

char *sub_18C34F0(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_175108C(v8, v10, a3);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v13 = *(*(a1 + 56) + 8 * j + 8);
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

      __dst = sub_16E5FE0(v13, v15, a3);
    }
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    for (k = 0; k != v16; ++k)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v18 = *(*(a1 + 80) + 8 * k + 8);
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

      __dst = sub_1752D30(v18, v20, a3);
    }
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v24)
  {
    v26 = v24;
    memcpy(__dst, v25, v24);
    __dst += v26;
    return __dst;
  }

  return sub_1957130(a3, v25, v24, __dst);
}

uint64_t sub_18C3738(uint64_t a1)
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
      v7 = sub_1751208(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  v9 = v2 + v8;
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
      v14 = sub_16E62F4(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 72);
  v16 = v9 + v15;
  v17 = *(a1 + 80);
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
      v21 = sub_1752F1C(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v16 += v25;
  }

  *(a1 + 88) = v16;
  return v16;
}

void sub_18C3880(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_19451E8((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_13B5364((a1 + 40), v11, (v10 + 8), v9, **(a1 + 56) - *(a1 + 48));
    v12 = *(a1 + 48) + v9;
    *(a1 + 48) = v12;
    v13 = *(a1 + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_193D664((a1 + 64), v16, (v15 + 8), v14, **(a1 + 80) - *(a1 + 72));
    v17 = *(a1 + 72) + v14;
    *(a1 + 72) = v17;
    v18 = *(a1 + 80);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18C39F4(uint64_t a1)
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
    v5 = sub_16E6614(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_18C3A5C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2718FD8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18C3AC8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18C3AF8(void *a1)
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

void sub_18C3B6C(void *a1)
{
  sub_18C3AF8(a1);

  operator delete();
}

uint64_t *sub_18C3BA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18C3BB4(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_18C3C48(uint64_t a1)
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

std::string *sub_18C3C74(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18C3CA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2719058;
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
    sub_11F1A54((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_18C3D98(_Unwind_Exception *a1)
{
  sub_12E6204(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18C3DDC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E6204(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18C3E5C(void *a1)
{
  sub_18C3DDC(a1);

  operator delete();
}

unsigned __int8 *sub_18C3E94(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v6 = v1[8];
  v5 = v1 + 8;
  *(v5 + 10) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_18C3F18(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v26 + 1;
    v8 = *v26;
    if (*v26 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v26, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v26 + 2;
      }
    }

    v26 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

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
      v26 = v15;
      *(a1 + 48) = v16;
      v5 = 1;
      goto LABEL_33;
    }

    v24 = sub_1958770(v7, v16);
    v26 = v24;
    *(a1 + 48) = v25;
    v5 = 1;
    if (!v24)
    {
      goto LABEL_40;
    }

LABEL_33:
    if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    v18 = v7 - 1;
    while (1)
    {
      v19 = (v18 + 1);
      v26 = v18 + 1;
      v20 = *(a1 + 40);
      if (v20 && (v21 = *(a1 + 32), v21 < *v20))
      {
        *(a1 + 32) = v21 + 1;
        v22 = *&v20[2 * v21 + 2];
      }

      else
      {
        v23 = sub_16F5828(*(a1 + 24));
        v22 = sub_19593CC(a1 + 24, v23);
        v19 = v26;
      }

      v18 = sub_21F4D60(a3, v22, v19);
      v26 = v18;
      if (!v18)
      {
        goto LABEL_40;
      }

      if (*a3 <= v18 || *v18 != 10)
      {
        goto LABEL_33;
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
      v7 = v26;
    }

    v26 = sub_1952690(v8, v14, v7, a3);
    if (!v26)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_40:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_18C4130(uint64_t a1, char *__dst, _DWORD *a3)
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
      v9 = *(v8 + 44);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_16E5070(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v12 = *(a1 + 48);
    *__dst = 16;
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      __dst[1] = v12 | 0x80;
      v13 = v12 >> 7;
      __dst[2] = v12 >> 7;
      v11 = __dst + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v11 - 1) = __dst | 0x80;
          LODWORD(__dst) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = __dst + 2;
    }
  }

  else
  {
    v11 = __dst;
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

uint64_t sub_18C42F0(uint64_t a1)
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
      v7 = sub_16E51F0(v6);
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
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  *(a1 + 20) = v2;
  return v2;
}

void sub_18C43C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_11F1A54((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    *(a1 + 48) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18C449C(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E5370(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_18C4504(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_27190D8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_13B5364(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_18C45E4(_Unwind_Exception *a1)
{
  sub_13B52E0(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18C4628(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B52E0(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18C46A8(void *a1)
{
  sub_18C4628(a1);

  operator delete();
}

unsigned __int8 *sub_18C46E0(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E5B70(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = v1[8];
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_18C475C(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_16F58FC(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F86E8(a3, v16, v13);
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

char *sub_18C48EC(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_16E5FE0(v8, v10, a3);
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

uint64_t sub_18C4A2C(uint64_t a1)
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

BOOL sub_18C4AD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E6614(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_18C4B3C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_2719158;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1945274(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_18C4C1C(_Unwind_Exception *a1)
{
  sub_1943A4C(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18C4C60(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1943A4C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18C4CE0(void *a1)
{
  sub_18C4C60(a1);

  operator delete();
}

uint64_t sub_18C4D18(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1751924(v4);
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

char *sub_18C4D94(uint64_t a1, char *a2, int32x2_t *a3)
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
            sub_1753388(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2254650(a3, v16, v13);
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

char *sub_18C4F24(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_1751C1C(v8, v10, a3);
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

uint64_t sub_18C5064(uint64_t a1)
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
      v7 = sub_1751E70(v6);
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

void sub_18C510C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1945274((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

uint64_t sub_18C51E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_27191D8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18C524C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18C527C(void *a1)
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

void sub_18C52F0(void *a1)
{
  sub_18C527C(a1);

  operator delete();
}

uint64_t *sub_18C5328(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18C5338(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_18C53CC(uint64_t a1)
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

std::string *sub_18C53F8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_18C542C(void *a1)
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

void sub_18C54A0(void *a1)
{
  sub_18C542C(a1);

  operator delete();
}

uint64_t sub_18C54D8(uint64_t a1)
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

char *sub_18C5500(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v26 + 1;
    v8 = *v26;
    if (*v26 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v26, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v26 + 2;
      }
    }

    v26 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v26 = sub_19587DC(v7, v19);
          if (!v26)
          {
            goto LABEL_53;
          }

          goto LABEL_33;
        }

        v20 = v7 + 2;
      }

      v26 = v20;
LABEL_33:
      if (v19 > 0x1D)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 32) = v19;
      }

      goto LABEL_40;
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
          v26 = sub_19587DC(v7, v16);
          if (!v26)
          {
            goto LABEL_53;
          }

          goto LABEL_26;
        }

        v17 = v7 + 2;
      }

      v26 = v17;
LABEL_26:
      if (v16 > 0xA)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 28) = v16;
      }

      goto LABEL_40;
    }

    if (v11 == 1 && v8 == 8)
    {
      LODWORD(v22) = *v7;
      if ((v22 & 0x80000000) != 0)
      {
        v22 = (v7[1] << 7) + v22 - 128;
        if (v7[1] < 0)
        {
          v24 = sub_19587DC(v7, v22);
          v26 = v24;
          *(a1 + 24) = v25;
          v5 = 1;
          if (!v24)
          {
            goto LABEL_53;
          }

          goto LABEL_40;
        }

        v23 = v7 + 2;
      }

      else
      {
        v23 = v7 + 1;
      }

      v26 = v23;
      *(a1 + 24) = v22;
      v5 = 1;
      goto LABEL_40;
    }

LABEL_13:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v26;
    }

    v26 = sub_1952690(v8, v15, v7, a3);
    if (!v26)
    {
      goto LABEL_53;
    }

LABEL_40:
    if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  v26 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

char *sub_18C5780(uint64_t a1, char *__dst, _DWORD *a3)
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
          v11 = (v17 >> 7);
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