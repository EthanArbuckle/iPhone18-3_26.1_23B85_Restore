char *sub_14153AC(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 128);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 136);
    *v6 = 40;
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 140);
    *v11 = 48;
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

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 144);
    *v15 = 56;
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

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 148);
    *v19 = 64;
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

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 152);
    *v24 = 72;
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

  v33 = *(a1 + 56);
  if (v33)
  {
    for (i = 0; i != v33; ++i)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v35 = *(*(a1 + 64) + 8 * i + 8);
      *v28 = 82;
      v36 = *(v35 + 44);
      v28[1] = v36;
      if (v36 > 0x7F)
      {
        v37 = sub_19575D0(v36, v28 + 1);
      }

      else
      {
        v37 = v28 + 2;
      }

      v28 = sub_1416A2C(v35, v37, a3);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v38 = *(a1 + 156);
    *v28 = 88;
    v28[1] = v38;
    v28 += 2;
    if ((v5 & 1) == 0)
    {
LABEL_65:
      if ((v5 & 2) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_76;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_65;
  }

  v28 = sub_128AEEC(a3, 12, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v28);
  if ((v5 & 2) == 0)
  {
LABEL_66:
    if ((v5 & 4) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_77;
  }

LABEL_76:
  v28 = sub_128AEEC(a3, 13, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v28);
  if ((v5 & 4) == 0)
  {
LABEL_67:
    if ((v5 & 8) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_78;
  }

LABEL_77:
  v28 = sub_128AEEC(a3, 14, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v28);
  if ((v5 & 8) == 0)
  {
LABEL_68:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_79;
  }

LABEL_78:
  v28 = sub_128AEEC(a3, 15, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v28);
  if ((v5 & 0x10) == 0)
  {
LABEL_69:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_80;
  }

LABEL_79:
  v28 = sub_128AEEC(a3, 16, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v28);
  if ((v5 & 0x20) == 0)
  {
LABEL_70:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_81;
  }

LABEL_80:
  v28 = sub_128AEEC(a3, 17, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v28);
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_87;
  }

LABEL_81:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v39 = *(a1 + 120);
  *v28 = 402;
  v40 = *(v39 + 44);
  v28[2] = v40;
  if (v40 > 0x7F)
  {
    v41 = sub_19575D0(v40, v28 + 2);
  }

  else
  {
    v41 = v28 + 3;
  }

  v28 = sub_14B6D24(v39, v41, a3);
LABEL_87:
  if (*(a1 + 26))
  {
    v28 = sub_1953428(a1 + 16, 1000, 1500, v28, a3);
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v43 = *(a1 + 160);
    *v28 = 32760;
    v28[2] = v43;
    if (v43 > 0x7F)
    {
      v28[2] = v43 | 0x80;
      v44 = v43 >> 7;
      v28[3] = v43 >> 7;
      v42 = v28 + 4;
      if (v43 >= 0x4000)
      {
        LOBYTE(v45) = v28[3];
        do
        {
          *(v42 - 1) = v45 | 0x80;
          v45 = v44 >> 7;
          *v42++ = v44 >> 7;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
      }
    }

    else
    {
      v42 = v28 + 3;
    }
  }

  else
  {
    v42 = v28;
  }

  v47 = *(a1 + 8);
  if ((v47 & 1) == 0)
  {
    return v42;
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

  if (*a3 - v42 >= v50)
  {
    v52 = v50;
    memcpy(v42, v51, v50);
    v42 += v52;
    return v42;
  }

  return sub_1957130(a3, v51, v50, v42);
}

uint64_t sub_1415A1C(uint64_t a1)
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
      v9 = sub_1416BDC(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_17;
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

      goto LABEL_34;
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

  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_34:
  v19 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_37:
  v22 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x10) == 0)
  {
LABEL_13:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_43:
    v28 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v4 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 0x40) == 0)
    {
LABEL_15:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_40:
  v25 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v4 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_14:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_46:
  v31 = sub_14B71B8(*(a1 + 120));
  v4 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x80) != 0)
  {
LABEL_16:
    v4 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v10 & 0x7F00) == 0)
  {
    goto LABEL_26;
  }

  if ((v10 & 0x100) != 0)
  {
    v32 = *(a1 + 136);
    if (v32 < 0)
    {
      v33 = 11;
    }

    else
    {
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v33;
    if ((v10 & 0x200) == 0)
    {
LABEL_20:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_53;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v4 += ((9 * (__clz(*(a1 + 140) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x400) == 0)
  {
LABEL_21:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v4 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x800) == 0)
  {
LABEL_22:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_54:
  v4 += ((9 * (__clz(*(a1 + 148) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x1000) != 0)
  {
LABEL_23:
    v4 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_24:
  v4 += (v10 >> 12) & 2;
  if ((v10 & 0x4000) != 0)
  {
    v4 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  v11 = *(a1 + 8);
  if (v11)
  {
    v34 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v35 < 0)
    {
      v35 = *(v34 + 16);
    }

    v4 += v35;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1415E04(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A3C8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if (v9)
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

        goto LABEL_35;
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

      goto LABEL_38;
    }

LABEL_35:
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

      goto LABEL_41;
    }

LABEL_38:
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

      goto LABEL_44;
    }

LABEL_41:
    v23 = *(a2 + 104);
    *(a1 + 40) |= 0x10u;
    v24 = *(a1 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    sub_194EA1C((a1 + 104), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_47;
    }

LABEL_44:
    v26 = *(a2 + 112);
    *(a1 + 40) |= 0x20u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    sub_194EA1C((a1 + 112), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 40) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_14;
    }

LABEL_47:
    *(a1 + 40) |= 0x40u;
    v29 = *(a1 + 120);
    if (!v29)
    {
      v30 = *(a1 + 8);
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
      if (v30)
      {
        v31 = *v31;
      }

      v29 = sub_14BF484(v31);
      *(a1 + 120) = v29;
    }

    if (*(a2 + 120))
    {
      v32 = *(a2 + 120);
    }

    else
    {
      v32 = &off_2773AC8;
    }

    sub_144F194(v29, v32);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0x7F00) == 0)
  {
    goto LABEL_25;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 136) = *(a2 + 136);
    if ((v9 & 0x200) == 0)
    {
LABEL_18:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_58;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  *(a1 + 140) = *(a2 + 140);
  if ((v9 & 0x400) == 0)
  {
LABEL_19:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a1 + 144) = *(a2 + 144);
  if ((v9 & 0x800) == 0)
  {
LABEL_20:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a1 + 148) = *(a2 + 148);
  if ((v9 & 0x1000) == 0)
  {
LABEL_21:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_61:
    *(a1 + 156) = *(a2 + 156);
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_60:
  *(a1 + 152) = *(a2 + 152);
  if ((v9 & 0x2000) != 0)
  {
    goto LABEL_61;
  }

LABEL_22:
  if ((v9 & 0x4000) != 0)
  {
LABEL_23:
    *(a1 + 160) = *(a2 + 160);
  }

LABEL_24:
  *(a1 + 40) |= v9;
LABEL_25:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1416118(uint64_t a1)
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

    if ((*(a1 + 40) & 0x40) == 0)
    {
      return 1;
    }

    result = sub_144F5D0(*(a1 + 120));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_141619C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1416218(void *a1)
{
  sub_141619C(a1);

  operator delete();
}

uint64_t sub_1416250(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_1416264(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
  {
    return v20;
  }

  while (1)
  {
    v5 = v20 + 1;
    v6 = *v20;
    if (*v20 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        v5 = sub_1958824(v20, v7 - 128);
        v6 = v8;
      }

      else
      {
        v5 = v20 + 2;
      }
    }

    v20 = v5;
    if ((v6 & 0xFFFFFFF8) == 8)
    {
      if (v6 == 8)
      {
        v9 = v5 - 1;
        while (1)
        {
          v20 = v9 + 1;
          v10 = v9[1];
          if (v10 < 0)
          {
            v11 = (v9[2] << 7) + v10;
            v10 = (v11 - 128);
            if (v9[2] < 0)
            {
              v9 = sub_19587DC((v9 + 1), (v11 - 128));
              v10 = v12;
            }

            else
            {
              v9 += 3;
            }
          }

          else
          {
            v9 += 2;
          }

          v20 = v9;
          v13 = *(a1 + 16);
          if (v13 == *(a1 + 20))
          {
            v14 = v13 + 1;
            sub_1959094((a1 + 16), v13 + 1);
            *(*(a1 + 24) + 8 * v13) = v10;
            v9 = v20;
          }

          else
          {
            *(*(a1 + 24) + 8 * v13) = v10;
            v14 = v13 + 1;
          }

          *(a1 + 16) = v14;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 8)
          {
            goto LABEL_31;
          }
        }
      }

      if (v6 == 10)
      {
        v15 = sub_1958938((a1 + 16), v5, a3);
        goto LABEL_30;
      }
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v18 = sub_11F1920((a1 + 8));
      v5 = v20;
    }

    v15 = sub_1952690(v6, v18, v5, a3);
LABEL_30:
    v20 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
    {
      return v20;
    }
  }

  if (v5)
  {
    a3[10].i32[0] = v6 - 1;
    return v20;
  }

  return 0;
}

char *sub_1416454(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
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

      v7 = *(*(a1 + 24) + 8 * i);
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

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v15)
  {
    v17 = v15;
    memcpy(v8, v16, v15);
    v8 += v17;
    return v8;
  }

  return sub_1957130(a3, v16, v15, v8);
}

uint64_t sub_14165A4(uint64_t a1)
{
  result = sub_1959F14((a1 + 16)) + *(a1 + 16);
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

  *(a1 + 32) = result;
  return result;
}

void *sub_1416614(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E0A88;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void sub_141667C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14166AC(uint64_t a1)
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
  if (a1 != &off_27701E0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_141619C(v6);
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

void sub_141676C(uint64_t a1)
{
  sub_14166AC(a1);

  operator delete();
}

uint64_t sub_14167A4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if (*(a1 + 40))
  {
    v3 = *(a1 + 48);
    v4 = *(v3 + 8);
    result = v3 + 8;
    *(result + 8) = 0;
    if (v4)
    {
      result = sub_1957EA8(result);
    }
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_1416818(uint64_t a1, char *a2, int32x2_t *a3)
{
  v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v24 + 1;
    v8 = *v24;
    if (*v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v24 + 2;
      }
    }

    v24 = v7;
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_27:
      v24 = v18;
      *(a1 + 56) = v17;
      goto LABEL_32;
    }

    v22 = sub_19587DC(v7, v17);
    v24 = v22;
    *(a1 + 56) = v23;
    if (!v22)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (sub_195ADC0(a3, &v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 40) |= 1u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_141BE5C(v16);
      *(a1 + 48) = v14;
      v7 = v24;
    }

    v13 = sub_2209408(a3, v14, v7);
LABEL_31:
    v24 = v13;
    if (!v13)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
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
    if (v8 - 8000 > 0xF9F)
    {
      v20 = *(a1 + 8);
      if (v20)
      {
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v21 = sub_11F1920((a1 + 8));
        v7 = v24;
      }

      v13 = sub_1952690(v8, v21, v7, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v8, v7, &off_27701E0, (a1 + 8), a3);
    }

    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_39:
  v24 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v24;
}

char *sub_1416A2C(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
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

    v11 = *(a1 + 48);
    *v6 = 26;
    v12 = *(v11 + 32);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_1416454(v11, v13, a3);
  }

  if (*(a1 + 26))
  {
    v6 = sub_1953428(a1 + 16, 1000, 1500, v6, a3);
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

uint64_t sub_1416BDC(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = sub_14165A4(*(a1 + 48));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

  *(a1 + 44) = v2;
  return v2;
}

void sub_1416C9C(uint64_t a1, uint64_t a2)
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

        v5 = sub_141BE5C(v7);
        *(a1 + 48) = v5;
      }

      if (*(a2 + 48))
      {
        v8 = *(a2 + 48);
      }

      else
      {
        v8 = &off_27701B8;
      }

      sub_1326DC0(v5, v8);
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

uint64_t sub_1416D90(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26E0B08;
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

  *(a1 + 32) = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 32), (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 16);
  }

  *(a1 + 40) = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 16);
  }

  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v5 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  v10 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v10;
  return a1;
}

void *sub_1417010(void *a1)
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

  sub_1417094(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1417094(uint64_t a1)
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

  result = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2770220)
  {
    if (*(a1 + 48))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 56))
    {
      sub_14B79B4();
      operator delete();
    }

    if (*(a1 + 64))
    {
      sub_153BF18();
      operator delete();
    }

    result = *(a1 + 72);
    if (result)
    {
      sub_14B662C();

      operator delete();
    }
  }

  return result;
}

void sub_14171A0(void *a1)
{
  sub_1417010(a1);

  operator delete();
}

uint64_t sub_14171D8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_10;
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

LABEL_24:
    v7 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_29:
    result = sub_14B6668(*(v1 + 56));
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_30;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_28:
  result = sub_16E4E44(*(result + 48));
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_30:
  result = sub_144E31C(*(v1 + 64));
  if ((v2 & 0x40) != 0)
  {
LABEL_9:
    result = sub_144E6A8(*(v1 + 72));
  }

LABEL_10:
  *(v1 + 80) = 0;
  if ((v2 & 0x700) != 0)
  {
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
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

uint64_t sub_141731C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 > 8)
      {
        if (v11 != 9)
        {
          if (v11 == 10)
          {
            if (v8 != 82)
            {
              goto LABEL_76;
            }

            *(a1 + 16) |= 0x20u;
            v32 = *(a1 + 64);
            if (!v32)
            {
              v33 = *(a1 + 8);
              v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
              if (v33)
              {
                v34 = *v34;
              }

              v32 = sub_1551A70(v34);
              *(a1 + 64) = v32;
              v7 = *v48;
            }

            v15 = sub_22030E0(a3, v32, v7);
          }

          else
          {
            if (v11 != 11 || v8 != 90)
            {
              goto LABEL_76;
            }

            *(a1 + 16) |= 0x40u;
            v18 = *(a1 + 72);
            if (!v18)
            {
              v19 = *(a1 + 8);
              v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
              if (v19)
              {
                v20 = *v20;
              }

              v18 = sub_14BF484(v20);
              *(a1 + 72) = v18;
              v7 = *v48;
            }

            v15 = sub_2209138(a3, v18, v7);
          }

LABEL_83:
          *v48 = v15;
          if (!v15)
          {
            goto LABEL_93;
          }

          goto LABEL_84;
        }

        if (v8 != 74)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 4u;
        v39 = *(a1 + 8);
        v30 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v30 = *v30;
        }

        v31 = (a1 + 40);
      }

      else if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 1u;
        v38 = *(a1 + 8);
        v30 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v30 = *v30;
        }

        v31 = (a1 + 24);
      }

      else
      {
        if (v11 != 7)
        {
          if (v11 != 8 || v8 != 66)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 0x10u;
          v12 = *(a1 + 56);
          if (!v12)
          {
            v13 = *(a1 + 8);
            v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
            if (v13)
            {
              v14 = *v14;
            }

            v12 = sub_14BF4E0(v14);
            *(a1 + 56) = v12;
            v7 = *v48;
          }

          v15 = sub_2209498(a3, v12, v7);
          goto LABEL_83;
        }

        if (v8 != 58)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 2u;
        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v31 = (a1 + 32);
      }

      v40 = sub_194DB04(v31, v30);
      v15 = sub_1958890(v40, *v48, a3);
      goto LABEL_83;
    }

    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v8 != 37)
        {
          goto LABEL_76;
        }

        v28 = *v7;
        v16 = v7 + 4;
        v5 |= 0x200u;
        *(a1 + 96) = v28;
      }

      else
      {
        if (v11 != 5 || v8 != 45)
        {
          goto LABEL_76;
        }

        v17 = *v7;
        v16 = v7 + 4;
        v5 |= 0x400u;
        *(a1 + 100) = v17;
      }

      *v48 = v16;
      goto LABEL_84;
    }

    if (v8 != 24)
    {
      goto LABEL_76;
    }

    v5 |= 0x100u;
    v36 = (v7 + 1);
    v35 = *v7;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_66;
    }

    v37 = *v36;
    v35 = (v37 << 7) + v35 - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v36 = (v7 + 2);
LABEL_66:
      *v48 = v36;
      *(a1 + 88) = v35;
      goto LABEL_84;
    }

    v46 = sub_19587DC(v7, v35);
    *v48 = v46;
    *(a1 + 88) = v47;
    if (!v46)
    {
      goto LABEL_93;
    }

LABEL_84:
    if (sub_195ADC0(a3, v48, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_76;
    }

    v5 |= 0x80u;
    v26 = (v7 + 1);
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_48;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = (v7 + 2);
LABEL_48:
      *v48 = v26;
      *(a1 + 80) = v25;
      goto LABEL_84;
    }

    v44 = sub_19587DC(v7, v25);
    *v48 = v44;
    *(a1 + 80) = v45;
    if (!v44)
    {
      goto LABEL_93;
    }

    goto LABEL_84;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 48);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_16F5828(v24);
      *(a1 + 48) = v22;
      v7 = *v48;
    }

    v15 = sub_21F4D60(a3, v22, v7);
    goto LABEL_83;
  }

LABEL_76:
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
      v7 = *v48;
    }

    v15 = sub_1952690(v8, v43, v7, a3);
    goto LABEL_83;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_93:
  *v48 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v48;
}

char *sub_1417788(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 8) != 0)
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

    v6 = sub_16E5070(v11, v13, a3);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 88);
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

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v18 = *(a1 + 96);
    *v14 = 37;
    *(v14 + 1) = v18;
    v14 += 5;
    if ((v5 & 0x400) == 0)
    {
LABEL_28:
      if ((v5 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_41;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_28;
  }

  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v19 = *(a1 + 100);
  *v14 = 45;
  *(v14 + 1) = v19;
  v14 += 5;
  if ((v5 & 1) == 0)
  {
LABEL_29:
    if ((v5 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = sub_128AEEC(a3, 6, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v14);
  if ((v5 & 2) == 0)
  {
LABEL_30:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = sub_128AEEC(a3, 7, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v14);
  if ((v5 & 0x10) == 0)
  {
LABEL_31:
    if ((v5 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

LABEL_43:
  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v20 = *(a1 + 56);
  *v14 = 66;
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

  v14 = sub_14B7C34(v20, v22, a3);
  if ((v5 & 4) == 0)
  {
LABEL_32:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_50;
  }

LABEL_49:
  v14 = sub_128AEEC(a3, 9, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v14);
  if ((v5 & 0x20) == 0)
  {
LABEL_33:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

LABEL_50:
  if (*a3 <= v14)
  {
    v14 = sub_225EB68(a3, v14);
  }

  v23 = *(a1 + 64);
  *v14 = 82;
  v24 = *(v23 + 44);
  v14[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v14 + 1);
  }

  else
  {
    v25 = v14 + 2;
  }

  v14 = sub_153C1A4(v23, v25, a3);
  if ((v5 & 0x40) != 0)
  {
LABEL_56:
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v26 = *(a1 + 72);
    *v14 = 90;
    v27 = *(v26 + 44);
    v14[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v14 + 1);
    }

    else
    {
      v28 = v14 + 2;
    }

    v14 = sub_14B6D24(v26, v28, a3);
  }

LABEL_62:
  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v14;
  }

  v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = *(v31 + 31);
  if (v32 < 0)
  {
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
  }

  else
  {
    v33 = (v31 + 8);
  }

  if (*a3 - v14 >= v32)
  {
    v34 = v32;
    memcpy(v14, v33, v32);
    v14 += v34;
    return v14;
  }

  return sub_1957130(a3, v33, v32, v14);
}

uint64_t sub_1417BC4(uint64_t a1)
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

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v16 = sub_16E51F0(*(a1 + 48));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = sub_14B7DC4(*(a1 + 56));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = sub_153C388(*(a1 + 64));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_35:
  v19 = sub_14B71B8(*(a1 + 72));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0x700) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v10 = v3 + 5;
    if ((v2 & 0x200) == 0)
    {
      v10 = v3;
    }

    if ((v2 & 0x400) != 0)
    {
      v3 = v10 + 5;
    }

    else
    {
      v3 = v10;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v20 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    v3 += v21;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1417E40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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

        goto LABEL_28;
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

      goto LABEL_31;
    }

LABEL_28:
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

      goto LABEL_39;
    }

LABEL_31:
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

      v15 = sub_16F5828(v17);
      *(a1 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_277E5E8;
    }

    sub_16E527C(v15, v18);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(a1 + 16) |= 0x10u;
    v19 = *(a1 + 56);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_14BF4E0(v21);
      *(a1 + 56) = v19;
    }

    if (*(a2 + 56))
    {
      v22 = *(a2 + 56);
    }

    else
    {
      v22 = &off_2773B38;
    }

    sub_14B7418(v19, v22);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_55;
    }

LABEL_47:
    *(a1 + 16) |= 0x20u;
    v23 = *(a1 + 64);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_1551A70(v25);
      *(a1 + 64) = v23;
    }

    if (*(a2 + 64))
    {
      v26 = *(a2 + 64);
    }

    else
    {
      v26 = &off_2776880;
    }

    sub_144F404(v23, v26);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_55:
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

      v27 = sub_14BF484(v29);
      *(a1 + 72) = v27;
    }

    if (*(a2 + 72))
    {
      v30 = *(a2 + 72);
    }

    else
    {
      v30 = &off_2773AC8;
    }

    sub_144F194(v27, v30);
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

LABEL_65:
    *(a1 + 96) = *(a2 + 96);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *(a1 + 88) = *(a2 + 88);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_65;
  }

LABEL_15:
  if ((v4 & 0x400) != 0)
  {
LABEL_16:
    *(a1 + 100) = *(a2 + 100);
  }

LABEL_17:
  *(a1 + 16) |= v4;
LABEL_18:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_14180F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    result = sub_16E5370(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_14B76A8(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_144F674(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) == 0)
  {
    return 1;
  }

  result = sub_144F5D0(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1418178(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E0B88;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &qword_278E990;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_14181F0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1418220(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26E0B88;
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
  if (*(a2 + 40))
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  v8 = *(a2 + 56);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 56) = v8;
  return a1;
}

void sub_1418300(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1418340(uint64_t a1)
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
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14183E8(uint64_t a1)
{
  sub_1418340(a1);

  operator delete();
}

unsigned __int8 *sub_1418420(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v3 & 0x3E) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
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

uint64_t sub_14184B8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_46;
      }

      v5 |= 2u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_31:
        *v45 = v20;
        *(a1 + 56) = v19;
        goto LABEL_56;
      }

      v35 = sub_19587DC(v7, v19);
      *v45 = v35;
      *(a1 + 56) = v36;
      if (!v35)
      {
        goto LABEL_71;
      }
    }

    else if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_46;
      }

      v5 |= 4u;
      v27 = v7 + 1;
      v26 = *v7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_40:
        *v45 = v27;
        *(a1 + 64) = v26;
        goto LABEL_56;
      }

      v41 = sub_19587DC(v7, v26);
      *v45 = v41;
      *(a1 + 64) = v42;
      if (!v41)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_46;
      }

      v5 |= 8u;
      v14 = v7 + 1;
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_18:
        *v45 = v14;
        *(a1 + 72) = v13;
        goto LABEL_56;
      }

      v39 = sub_19587DC(v7, v13);
      *v45 = v39;
      *(a1 + 72) = v40;
      if (!v39)
      {
        goto LABEL_71;
      }
    }

LABEL_56:
    if (sub_195ADC0(a3, v45, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_46;
      }

      v5 |= 0x10u;
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
        *v45 = v30;
        *(a1 + 80) = v29 != 0;
        goto LABEL_56;
      }

      v43 = sub_19587DC(v7, v29);
      *v45 = v43;
      *(a1 + 80) = v44 != 0;
      if (!v43)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_46;
      }

      v5 |= 0x20u;
      v17 = v7 + 1;
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_26:
        *v45 = v17;
        *(a1 + 81) = v16 != 0;
        goto LABEL_56;
      }

      v37 = sub_19587DC(v7, v16);
      *v45 = v37;
      *(a1 + 81) = v38 != 0;
      if (!v37)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_56;
  }

  if (v8 == 34)
  {
    *(a1 + 40) |= 1u;
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v24 = sub_194DB04((a1 + 48), v23);
    v25 = sub_1958890(v24, *v45, a3);
LABEL_55:
    *v45 = v25;
    if (!v25)
    {
      goto LABEL_71;
    }

    goto LABEL_56;
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
    if (v8 - 8000 > 0xFA7)
    {
      v33 = *(a1 + 8);
      if (v33)
      {
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v34 = sub_11F1920((a1 + 8));
        v7 = *v45;
      }

      v25 = sub_1952690(v8, v34, v7, a3);
    }

    else
    {
      v25 = sub_19525AC((a1 + 16), v8, v7, &off_2770288, (a1 + 8), a3);
    }

    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_71:
  *v45 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v45;
}

char *sub_1418878(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
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

    v12 = *(a1 + 64);
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

  if (v5)
  {
    v15 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v15);
    if ((v5 & 0x10) == 0)
    {
LABEL_30:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_30;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v19 = *(a1 + 80);
  *v15 = 40;
  v15[1] = v19;
  v15 += 2;
  if ((v5 & 0x20) != 0)
  {
LABEL_36:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 81);
    *v15 = 48;
    v15[1] = v20;
    v15 += 2;
  }

LABEL_39:
  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 1000, 1501, v15, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v15;
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

  if (*a3 - v15 >= v24)
  {
    v26 = v24;
    memcpy(v15, v25, v24);
    v15 += v26;
    return v15;
  }

  return sub_1957130(a3, v25, v24, v15);
}

uint64_t sub_1418B70(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x3F) != 0)
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
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
LABEL_7:
        result += ((v3 >> 4) & 2) + ((v3 >> 3) & 2);
        goto LABEL_8;
      }

LABEL_6:
      result += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_7;
    }

LABEL_14:
    result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v4 = *(a1 + 8);
  if (v4)
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    result += v9;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_1418CA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x3F) != 0)
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

        goto LABEL_18;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 56) = *(a2 + 56);
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
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 72) = *(a2 + 72);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 40) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 81) = *(a2 + 81);
      goto LABEL_9;
    }

LABEL_20:
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1418DC8(uint64_t a1)
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

  if (a1 != &off_27702E0 && *(a1 + 24))
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

void sub_1418E80(uint64_t a1)
{
  sub_1418DC8(a1);

  operator delete();
}

unsigned __int8 *sub_1418EB8(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_16E4E44(*(result + 3));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 10) = 0;
    *(v1 + 4) = 0;
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

char *sub_1418F24(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 16)
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
            v31 = sub_19587DC(v7, v13);
            if (!v31)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v14 = v7 + 2;
LABEL_17:
            v31 = v14;
          }

          if (v13 > 2)
          {
            sub_12E8418();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 32) = v13;
          }

          goto LABEL_48;
        }

        goto LABEL_40;
      }

      if (v8 != 10)
      {
        goto LABEL_40;
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

        v19 = sub_16F5828(v21);
        *(a1 + 24) = v19;
        v7 = v31;
      }

      v22 = sub_21F4D60(a3, v19, v7);
LABEL_47:
      v31 = v22;
      if (!v22)
      {
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_40;
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
      v31 = v16;
      *(a1 + 40) = v17;
      goto LABEL_48;
    }

    v29 = sub_1958770(v7, v17);
    v31 = v29;
    *(a1 + 40) = v30;
    if (!v29)
    {
      goto LABEL_61;
    }

LABEL_48:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 24)
  {
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if (v25 < 0)
    {
      v31 = sub_19587DC(v7, v23);
      if (!v31)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v24 = v7 + 2;
LABEL_37:
      v31 = v24;
    }

    if (v23 > 2)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 36) = v23;
    }

    goto LABEL_48;
  }

LABEL_40:
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

    v22 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_47;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_61:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_14191FC(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 36);
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

  if ((v5 & 8) != 0)
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

uint64_t sub_1419494(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_14;
  }

  if (v2)
  {
    v4 = sub_16E51F0(*(a1 + 24));
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = *(a1 + 36);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v9;
  if ((v2 & 8) != 0)
  {
LABEL_13:
    result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v7 = *(a1 + 8);
  if (v7)
  {
    v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_14195C0(uint64_t a1, uint64_t a2)
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

        goto LABEL_21;
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
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 40) = *(a2 + 40);
      goto LABEL_7;
    }

LABEL_21:
    *(a1 + 36) = *(a2 + 36);
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

uint64_t sub_14196B8(uint64_t a1)
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

uint64_t sub_14196F8(uint64_t a1)
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
  if (a1 != &off_2770310)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_141AF84(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14197B8(uint64_t a1)
{
  sub_14196F8(a1);

  operator delete();
}

uint64_t sub_14197F0(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_141985C(*(result + 40));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 48) = 0;
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

uint64_t sub_141985C(uint64_t result)
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

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_1550AF0(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      result = sub_144E5CC(*(v1 + 72));
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

    result = sub_144E5CC(*(v1 + 80));
    if ((v8 & 4) != 0)
    {
LABEL_13:
      result = sub_144E5CC(*(v1 + 88));
    }
  }

LABEL_14:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 88) = 0;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

char *sub_1419944(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 24)
        {
          v27 = v6 + 1;
          v26 = *v6;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_46;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v33 = sub_19587DC(v6, v26);
            if (!v33)
            {
              return 0;
            }
          }

          else
          {
            v27 = v6 + 2;
LABEL_46:
            v33 = v27;
          }

          if (v26 > 2)
          {
            sub_1313740();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 48) = v26;
          }

          continue;
        }
      }

      else if (v10 == 4 && v7 == 32)
      {
        v18 = v6 + 1;
        v17 = *v6;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v33 = sub_19587DC(v6, v17);
          if (!v33)
          {
            return 0;
          }
        }

        else
        {
          v18 = v6 + 2;
LABEL_25:
          v33 = v18;
        }

        if (v17 > 4)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 52) = v17;
        }

        continue;
      }

LABEL_55:
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

      v16 = sub_1952690(v7, v31, v6, a3);
      goto LABEL_62;
    }

    if (v10 == 1)
    {
      if (v7 == 8)
      {
        v20 = v6 - 1;
        while (1)
        {
          v33 = v20 + 1;
          v21 = v20[1];
          if (v20[1] < 0)
          {
            v22 = v21 + (v20[2] << 7);
            v21 = v22 - 128;
            if (v20[2] < 0)
            {
              v20 = sub_1958770((v20 + 1), v22 - 128);
              v21 = v23;
            }

            else
            {
              v20 += 3;
            }
          }

          else
          {
            v20 += 2;
          }

          v33 = v20;
          v24 = *(a1 + 24);
          if (v24 == *(a1 + 28))
          {
            v25 = v24 + 1;
            sub_1958E5C((a1 + 24), v24 + 1);
            *(*(a1 + 32) + 4 * v24) = v21;
            v20 = v33;
          }

          else
          {
            *(*(a1 + 32) + 4 * v24) = v21;
            v25 = v24 + 1;
          }

          *(a1 + 24) = v25;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 8)
          {
            goto LABEL_63;
          }
        }
      }

      if (v7 != 10)
      {
        goto LABEL_55;
      }

      v16 = sub_1958918((a1 + 24), v6, a3);
    }

    else
    {
      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_55;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        sub_141C1BC(v14);
        v12 = v15;
        *(a1 + 40) = v15;
        v6 = v33;
      }

      v16 = sub_2209528(a3, v12, v6);
    }

LABEL_62:
    v33 = v16;
    if (!v16)
    {
      return 0;
    }

LABEL_63:
    ;
  }

  return v33;
}

char *sub_1419C7C(uint64_t a1, char *a2, unint64_t *a3)
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

      v7 = *(*(a1 + 32) + 4 * i);
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

  v12 = *(a1 + 16);
  if (v12)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v13 = *(a1 + 40);
    *v8 = 18;
    v14 = *(v13 + 20);
    v8[1] = v14;
    if (v14 > 0x7F)
    {
      v15 = sub_19575D0(v14, v8 + 1);
    }

    else
    {
      v15 = v8 + 2;
    }

    v8 = sub_141B458(v13, v15, a3);
  }

  if ((v12 & 2) != 0)
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v17 = *(a1 + 48);
    *v8 = 24;
    v8[1] = v17;
    if (v17 > 0x7F)
    {
      v8[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v8[2] = v17 >> 7;
      v16 = v8 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v8) = v8[2];
        do
        {
          *(v16 - 1) = v8 | 0x80;
          v8 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v8 + 2;
    }
  }

  else
  {
    v16 = v8;
  }

  if ((v12 & 4) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 52);
    *v16 = 32;
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v16[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v16[2] = v21 >> 7;
      v20 = v16 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v16) = v16[2];
        do
        {
          *(v20 - 1) = v16 | 0x80;
          v16 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v16 + 2;
    }
  }

  else
  {
    v20 = v16;
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v20;
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

  if ((*a3 - v20) >= v27)
  {
    v29 = v27;
    memcpy(v20, v28, v27);
    v20 += v29;
    return v20;
  }

  return sub_1957130(a3, v28, v27, v20);
}

uint64_t sub_1419F44(uint64_t a1)
{
  v2 = sub_1959E5C((a1 + 24)) + *(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 7) == 0)
  {
    goto LABEL_15;
  }

  if (v3)
  {
    v4 = sub_141B7CC(*(a1 + 40));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v5 = *(a1 + 48);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v6;
  if ((v3 & 4) != 0)
  {
LABEL_11:
    v7 = *(a1 + 52);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8;
  }

LABEL_15:
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

void sub_141A058(uint64_t a1, uint64_t a2)
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
      v10 = *(a1 + 40);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_141C1BC(v12);
        *(a1 + 40) = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_2770398;
      }

      sub_141A184(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
LABEL_8:
          *(a1 + 16) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        *(a1 + 52) = *(a2 + 52);
        goto LABEL_8;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 48) = *(a2 + 48);
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

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_141A184(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_144A4E0((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
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

        sub_14BAE64(v18);
        *(a1 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v19 = *(a2 + 72);
      }

      else
      {
        v19 = &off_2771738;
      }

      sub_144EF20(v16, v19);
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

      sub_14BAE64(v22);
      *(a1 + 80) = v20;
    }

    if (*(a2 + 80))
    {
      v23 = *(a2 + 80);
    }

    else
    {
      v23 = &off_2771738;
    }

    sub_144EF20(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v14;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_13;
    }

LABEL_34:
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

      sub_14BAE64(v26);
      *(a1 + 88) = v24;
    }

    if (*(a2 + 88))
    {
      v27 = *(a2 + 88);
    }

    else
    {
      v27 = &off_2771738;
    }

    sub_144EF20(v24, v27);
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

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_141A3A4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_141A3D4(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_141A3D4(uint64_t a1)
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

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_144F560(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = sub_144F560(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_141A470(void *a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  a1[1] = v4;
  *a1 = off_26E0D08;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = &qword_278E990;
  a1[7] = &qword_278E990;
  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void sub_141A4E4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_141A514(uint64_t a1)
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
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_141A5D4(uint64_t a1)
{
  sub_141A514(a1);

  operator delete();
}

unsigned __int8 *sub_141A60C(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
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
  if ((v3 & 0x1C) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
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

uint64_t sub_141A6D4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v11 != 3)
      {
        if (v11 != 4)
        {
          if (v11 == 5 && v8 == 42)
          {
            *(a1 + 40) |= 2u;
            v12 = *(a1 + 8);
            v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
            if (v12)
            {
              v13 = *v13;
            }

            v14 = (a1 + 56);
            goto LABEL_43;
          }

          goto LABEL_47;
        }

        if (v8 != 32)
        {
          goto LABEL_47;
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
            *v35 = sub_19587DC(v7, (v25 - 128));
            if (!*v35)
            {
              goto LABEL_67;
            }

            LODWORD(v23) = v32;
            goto LABEL_37;
          }

          v22 = v7 + 2;
        }

        *v35 = v22;
LABEL_37:
        if (sub_13560D8(v23))
        {
          *(a1 + 40) |= 0x10u;
          *(a1 + 76) = v23;
        }

        else
        {
          sub_12E8500();
        }

        goto LABEL_45;
      }

      if (v8 != 24)
      {
        goto LABEL_47;
      }

      v20 = v7 + 1;
      v19 = *v7;
      if (v19 < 0)
      {
        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v35 = sub_19587DC(v7, v19);
          if (!*v35)
          {
            goto LABEL_67;
          }

          goto LABEL_30;
        }

        v20 = v7 + 2;
      }

      *v35 = v20;
LABEL_30:
      if (v19 > 4)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 40) |= 8u;
        *(a1 + 72) = v19;
      }

      goto LABEL_45;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_47;
    }

    v5 |= 4u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_24:
      *v35 = v17;
      *(a1 + 64) = v16;
      goto LABEL_45;
    }

    v33 = sub_19587DC(v7, v16);
    *v35 = v33;
    *(a1 + 64) = v34;
    if (!v33)
    {
      goto LABEL_67;
    }

LABEL_45:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 40) |= 1u;
    v26 = *(a1 + 8);
    v13 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v13 = *v13;
    }

    v14 = (a1 + 48);
LABEL_43:
    v27 = sub_194DB04(v14, v13);
    v28 = sub_1958890(v27, *v35, a3);
LABEL_44:
    *v35 = v28;
    if (!v28)
    {
      goto LABEL_67;
    }

    goto LABEL_45;
  }

LABEL_47:
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
    if (v8 - 7600 > 0x18F)
    {
      v30 = *(a1 + 8);
      if (v30)
      {
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v31 = sub_11F1920((a1 + 8));
        v7 = *v35;
      }

      v28 = sub_1952690(v8, v31, v7, a3);
    }

    else
    {
      v28 = sub_19525AC((a1 + 16), v8, v7, &off_2770348, (a1 + 8), a3);
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_67:
  *v35 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v35;
}

char *sub_141AA28(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

  if ((v6 & 4) != 0)
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

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 72);
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

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 76);
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
          v12 = (v19 >> 7);
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

  if ((v6 & 2) != 0)
  {
    v17 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v17);
  }

  if (*(a1 + 26))
  {
    v17 = sub_1953428(a1 + 16, 950, 1000, v17, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v17;
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

  if (*a3 - v17 >= v24)
  {
    v26 = v24;
    memcpy(v17, v25, v24);
    v17 += v26;
    return v17;
  }

  return sub_1957130(a3, v25, v24, v17);
}

uint64_t sub_141ACC4(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_23;
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

      goto LABEL_14;
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

    goto LABEL_15;
  }

LABEL_14:
  result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_15:
  v10 = *(a1 + 72);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v11;
  if ((v3 & 0x10) != 0)
  {
LABEL_19:
    v12 = *(a1 + 76);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v13;
  }

LABEL_23:
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_141AE48(uint64_t a1, uint64_t a2)
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

        goto LABEL_19;
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

      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 64) = *(a2 + 64);
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
      *(a1 + 76) = *(a2 + 76);
      goto LABEL_8;
    }

LABEL_20:
    *(a1 + 72) = *(a2 + 72);
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

uint64_t sub_141AF84(uint64_t a1)
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

  if (a1 != &off_2770398)
  {
    if (*(a1 + 72))
    {
      sub_145847C();
      operator delete();
    }

    if (*(a1 + 80))
    {
      sub_145847C();
      operator delete();
    }

    if (*(a1 + 88))
    {
      sub_145847C();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_144A24C((a1 + 48));
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_141B080(uint64_t a1)
{
  sub_141AF84(a1);

  operator delete();
}

char *sub_141B0B8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 != 2)
      {
        if (v11 == 3 && v8 == 26)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            v44 = v13 + 1;
            v15 = *(a1 + 40);
            if (v15 && (v16 = *(a1 + 32), v16 < *v15))
            {
              *(a1 + 32) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              sub_14BAE64(*(a1 + 24));
              v17 = sub_19593CC(a1 + 24, v18);
              v14 = v44;
            }

            v13 = sub_22095B8(a3, v17, v14);
            v44 = v13;
            if (!v13)
            {
              goto LABEL_74;
            }

            if (*a3 <= v13 || *v13 != 26)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_59;
      }

      if (v8 != 18)
      {
        goto LABEL_59;
      }

      *(a1 + 16) |= 1u;
      v28 = *(a1 + 72);
      if (!v28)
      {
        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        sub_14BAE64(v33);
        v28 = v34;
        *(a1 + 72) = v34;
        goto LABEL_57;
      }

LABEL_58:
      v38 = sub_22095B8(a3, v28, v7);
LABEL_66:
      v44 = v38;
      if (!v38)
      {
        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v8 != 8)
    {
      goto LABEL_59;
    }

    v5 |= 8u;
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
      v44 = v26;
      *(a1 + 96) = v25;
      goto LABEL_67;
    }

    v42 = sub_19587DC(v7, v25);
    v44 = v42;
    *(a1 + 96) = v43;
    if (!v42)
    {
      goto LABEL_74;
    }

LABEL_67:
    if (sub_195ADC0(a3, &v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_59;
    }

    *(a1 + 16) |= 2u;
    v28 = *(a1 + 80);
    if (v28)
    {
      goto LABEL_58;
    }

    v29 = *(a1 + 8);
    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
    if (v29)
    {
      v30 = *v30;
    }

    sub_14BAE64(v30);
    v28 = v31;
    *(a1 + 80) = v31;
    goto LABEL_57;
  }

  if (v11 == 5)
  {
    if (v8 != 42)
    {
      goto LABEL_59;
    }

    *(a1 + 16) |= 4u;
    v28 = *(a1 + 88);
    if (v28)
    {
      goto LABEL_58;
    }

    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    sub_14BAE64(v36);
    v28 = v37;
    *(a1 + 88) = v37;
LABEL_57:
    v7 = v44;
    goto LABEL_58;
  }

  if (v11 == 6 && v8 == 50)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = (v19 + 1);
      v44 = v19 + 1;
      v21 = *(a1 + 64);
      if (v21 && (v22 = *(a1 + 56), v22 < *v21))
      {
        *(a1 + 56) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_155282C(*(a1 + 48));
        v23 = sub_19593CC(a1 + 48, v24);
        v20 = v44;
      }

      v19 = sub_2209648(a3, v23, v20);
      v44 = v19;
      if (!v19)
      {
        goto LABEL_74;
      }

      if (*a3 <= v19 || *v19 != 50)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_59:
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
    v40 = *(a1 + 8);
    if (v40)
    {
      v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v41 = sub_11F1920((a1 + 8));
      v7 = v44;
    }

    v38 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_66;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_74:
  v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

char *sub_141B458(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 72);
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

      v6 = sub_14589F4(v16, v18, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v19 = *(a1 + 80);
    *v6 = 34;
    v20 = *(v19 + 20);
    v6[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v6 + 1);
    }

    else
    {
      v21 = v6 + 2;
    }

    v6 = sub_14589F4(v19, v21, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 88);
    *v6 = 42;
    v23 = *(v22 + 20);
    v6[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v6 + 1);
    }

    else
    {
      v24 = v6 + 2;
    }

    v6 = sub_14589F4(v22, v24, a3);
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    for (j = 0; j != v25; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v27 = *(*(a1 + 64) + 8 * j + 8);
      *v6 = 50;
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

      v6 = sub_1550CF8(v27, v29, a3);
    }
  }

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

uint64_t sub_141B7CC(uint64_t a1)
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
      v14 = sub_1550E44(v13);
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
    v19 = sub_1458DB4(*(a1 + 80));
    v9 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v18 = sub_1458DB4(*(a1 + 72));
  v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  v20 = sub_1458DB4(*(a1 + 88));
  v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) != 0)
  {
LABEL_20:
    v9 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

uint64_t sub_141B9A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E0408;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_141BA2C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E0488;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_141BAA8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E0508;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_141BB20(uint64_t a1)
{
  if (!a1)
  {

    sub_144A55C();
  }

  return sub_140CB8C(v3, a1, 0);
}

void *sub_141BB7C(uint64_t a1)
{
  if (!a1)
  {

    sub_144A5C8();
  }

  return sub_140E734(v3, a1, 0);
}

uint64_t sub_141BBD8(uint64_t a1)
{
  if (!a1)
  {

    sub_144A634();
  }

  return sub_140F510(v3, a1, 0);
}

uint64_t sub_141BC34(uint64_t a1)
{
  if (!a1)
  {

    sub_144A6A0();
  }

  return sub_140FF48(v3, a1, 0);
}

void *sub_141BC90(uint64_t a1)
{
  if (!a1)
  {

    sub_144A70C();
  }

  return sub_1410D70(v3, a1, 0);
}

uint64_t sub_141BCEC(uint64_t a1)
{
  if (!a1)
  {

    sub_144A778();
  }

  return sub_1411E30(v3, a1, 0);
}

uint64_t sub_141BD48(uint64_t a1)
{
  if (!a1)
  {

    sub_144A7E4();
  }

  return sub_1412E90(v3, a1, 0);
}

uint64_t sub_141BDA4(uint64_t a1)
{
  if (!a1)
  {

    sub_144A850();
  }

  return sub_1413DA0(v3, a1, 0);
}

uint64_t sub_141BE00(uint64_t a1)
{
  if (!a1)
  {

    sub_144A8BC();
  }

  return sub_1414838(v3, a1, 0);
}

uint64_t sub_141BE5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E0A08;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

void *sub_141BEF0(uint64_t a1)
{
  if (!a1)
  {

    sub_144A928();
  }

  return sub_1416614(v3, a1, 0);
}

double sub_141BF4C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26E0B08;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  return result;
}

uint64_t sub_141BFE4(uint64_t a1)
{
  if (!a1)
  {

    sub_144A994();
  }

  return sub_1418178(v3, a1, 0);
}

uint64_t sub_141C040(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26E0C08;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_141C0C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E0C88;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[5] = 0;
  result[6] = 0;
  result[4] = a1;
  return result;
}

void *sub_141C160(uint64_t a1)
{
  if (!a1)
  {

    sub_144AA00();
  }

  return sub_141A470(v3, a1, 0);
}

double sub_141C1BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26E0D88;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  return result;
}

uint64_t sub_141C280(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26E0E08;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void sub_141C2EC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_141C31C(uint64_t a1)
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

  if (a1 != &off_2770400 && *(a1 + 48))
  {
    sub_145847C();
    operator delete();
  }

  if (*(a1 + 8))
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_141C3DC(uint64_t a1)
{
  sub_141C31C(a1);

  operator delete();
}

uint64_t sub_141C414(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    result = sub_144E5CC(*(a1 + 48));
  }

  if ((v3 & 0xE) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
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

char *sub_141C488(uint64_t a1, char *a2, int32x2_t *a3)
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

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_36;
      }

      v5 |= 2u;
      v21 = v7 + 1;
      v22 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v23 = *v21;
      v22 = v22 + (v23 << 7) - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_30:
        v36 = v21;
        *(a1 + 56) = v22;
        goto LABEL_46;
      }

      v32 = sub_1958770(v7, v22);
      v36 = v32;
      *(a1 + 56) = v33;
      if (!v32)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_36;
      }

      v5 |= 4u;
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
        *(a1 + 60) = v14;
        goto LABEL_46;
      }

      v30 = sub_1958770(v7, v14);
      v36 = v30;
      *(a1 + 60) = v31;
      if (!v30)
      {
        goto LABEL_57;
      }
    }

LABEL_46:
    if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_36;
    }

    v5 |= 8u;
    v24 = v7 + 1;
    v25 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v26 = *v24;
    v25 = v25 + (v26 << 7) - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_35:
      v36 = v24;
      *(a1 + 64) = v25;
      goto LABEL_46;
    }

    v34 = sub_1958770(v7, v25);
    v36 = v34;
    *(a1 + 64) = v35;
    if (!v34)
    {
      goto LABEL_57;
    }

    goto LABEL_46;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 40) |= 1u;
    v16 = *(a1 + 48);
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
      *(a1 + 48) = v19;
      v7 = v36;
    }

    v20 = sub_22095B8(a3, v16, v7);
LABEL_45:
    v36 = v20;
    if (!v20)
    {
      goto LABEL_57;
    }

    goto LABEL_46;
  }

LABEL_36:
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
        v7 = v36;
      }

      v20 = sub_1952690(v8, v29, v7, a3);
    }

    else
    {
      v20 = sub_19525AC((a1 + 16), v8, v7, &off_2770400, (a1 + 8), a3);
    }

    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_57:
  v36 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v36;
}

char *sub_141C76C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
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

    v12 = *(a1 + 60);
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

    v16 = *(a1 + 64);
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

    v19 = *(a1 + 48);
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

    v15 = sub_14589F4(v19, v21, a3);
  }

  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 950, 1000, v15, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v15;
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

  if ((*a3 - v15) >= v25)
  {
    v27 = v25;
    memcpy(v15, v26, v25);
    v15 += v27;
    return v15;
  }

  return sub_1957130(a3, v26, v25, v15);
}

uint64_t sub_141CA2C(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
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

LABEL_10:
    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v6 = sub_1458DB4(*(a1 + 48));
  v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_11:
  v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) != 0)
  {
LABEL_6:
    v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_7:
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v2 += v8;
  }

  *(a1 + 44) = v2;
  return v2;
}

void sub_141CB50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      *(a1 + 40) |= 1u;
      v6 = *(a1 + 48);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        sub_14BAE64(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_2771738;
      }

      sub_144EF20(v6, v9);
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

    *(a1 + 56) = *(a2 + 56);
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
      *(a1 + 64) = *(a2 + 64);
      goto LABEL_7;
    }

LABEL_21:
    *(a1 + 60) = *(a2 + 60);
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

uint64_t sub_141CC54(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_144F560(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_141CCA8(uint64_t a1)
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

  if (a1 != &off_2770448 && *(a1 + 24))
  {
    sub_145847C();
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

void sub_141CD60(uint64_t a1)
{
  sub_141CCA8(a1);

  operator delete();
}

uint64_t sub_141CD98(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_144E5CC(*(result + 24));
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

char *sub_141CDF4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v19, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v19 + 1;
    v7 = *v19;
    if (*v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v19 + 2;
      }
    }

    v19 = v6;
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

        sub_14BAE64(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_22095B8(a3, v14, v6);
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
          return v19;
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
        v6 = v19;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

char *sub_141CF38(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_14589F4(v6, v8, a3);
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

uint64_t sub_141D044(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_1458DB4(*(a1 + 24));
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

void sub_141D0C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
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
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2771738;
    }

    sub_144EF20(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_141D16C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_144F560(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_141D1AC(void *a1)
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

  sub_141D23C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_144AA6C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_141D23C(uint64_t result)
{
  if (result != &off_2770468)
  {
    if (*(result + 48))
    {
      sub_145847C();
      operator delete();
    }

    if (*(result + 56))
    {
      sub_145847C();
      operator delete();
    }

    if (*(result + 64))
    {
      sub_145847C();
      operator delete();
    }

    if (*(result + 72))
    {
      sub_145847C();
      operator delete();
    }

    if (*(result + 80))
    {
      sub_145847C();
      operator delete();
    }

    if (*(result + 88))
    {
      sub_145847C();
      operator delete();
    }

    result = *(result + 96);
    if (result)
    {
      sub_145847C();

      operator delete();
    }
  }

  return result;
}

void sub_141D324(void *a1)
{
  sub_141D1AC(a1);

  operator delete();
}

uint64_t sub_141D35C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_141CD98(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x7F) == 0)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    result = sub_144E5CC(*(v1 + 48));
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = sub_144E5CC(*(v1 + 56));
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = sub_144E5CC(*(v1 + 64));
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = sub_144E5CC(*(v1 + 80));
    if ((v5 & 0x20) == 0)
    {
LABEL_12:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = sub_144E5CC(*(v1 + 72));
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_23:
  result = sub_144E5CC(*(v1 + 88));
  if ((v5 & 0x40) != 0)
  {
LABEL_13:
    result = sub_144E5CC(*(v1 + 96));
  }

LABEL_14:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_141D458(uint64_t a1, char *a2, int32x2_t *a3)
{
  v44 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v44, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v44 + 1;
    v7 = *v44;
    if (*v44 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v44, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v44 + 2;
      }
    }

    v44 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 0xA)
    {
      if (v7 >> 3 > 0xD)
      {
        if (v10 == 14)
        {
          if (v7 == 114)
          {
            v34 = v6 - 1;
            while (1)
            {
              v35 = (v34 + 1);
              v44 = v34 + 1;
              v36 = *(a1 + 40);
              if (v36 && (v37 = *(a1 + 32), v37 < *v36))
              {
                *(a1 + 32) = v37 + 1;
                v38 = *&v36[2 * v37 + 2];
              }

              else
              {
                v39 = sub_14353DC(*(a1 + 24));
                v38 = sub_19593CC(a1 + 24, v39);
                v35 = v44;
              }

              v34 = sub_22096D8(a3, v38, v35);
              v44 = v34;
              if (!v34)
              {
                return 0;
              }

              if (*a3 <= v34 || *v34 != 114)
              {
                goto LABEL_56;
              }
            }
          }
        }

        else if (v10 == 15 && v7 == 122)
        {
          *(a1 + 16) |= 0x40u;
          v11 = *(a1 + 96);
          if (!v11)
          {
            v21 = *(a1 + 8);
            v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if (v21)
            {
              v22 = *v22;
            }

            sub_14BAE64(v22);
            v11 = v23;
            *(a1 + 96) = v23;
LABEL_53:
            v6 = v44;
          }

LABEL_54:
          v33 = sub_22095B8(a3, v11, v6);
          goto LABEL_55;
        }
      }

      else if (v10 == 11)
      {
        if (v7 == 90)
        {
          *(a1 + 16) |= 0x10u;
          v11 = *(a1 + 80);
          if (!v11)
          {
            v27 = *(a1 + 8);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            sub_14BAE64(v28);
            v11 = v29;
            *(a1 + 80) = v29;
            goto LABEL_53;
          }

          goto LABEL_54;
        }
      }

      else if (v10 == 13 && v7 == 106)
      {
        *(a1 + 16) |= 0x20u;
        v11 = *(a1 + 88);
        if (!v11)
        {
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          sub_14BAE64(v16);
          v11 = v17;
          *(a1 + 88) = v17;
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    else if (v7 >> 3 > 8)
    {
      if (v10 == 9)
      {
        if (v7 == 74)
        {
          *(a1 + 16) |= 4u;
          v11 = *(a1 + 64);
          if (!v11)
          {
            v30 = *(a1 + 8);
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
            if (v30)
            {
              v31 = *v31;
            }

            sub_14BAE64(v31);
            v11 = v32;
            *(a1 + 64) = v32;
            goto LABEL_53;
          }

          goto LABEL_54;
        }
      }

      else if (v10 == 10 && v7 == 82)
      {
        *(a1 + 16) |= 8u;
        v11 = *(a1 + 72);
        if (!v11)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          sub_14BAE64(v19);
          v11 = v20;
          *(a1 + 72) = v20;
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    else if (v10 == 7)
    {
      if (v7 == 58)
      {
        *(a1 + 16) |= 1u;
        v11 = *(a1 + 48);
        if (!v11)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          sub_14BAE64(v25);
          v11 = v26;
          *(a1 + 48) = v26;
          goto LABEL_53;
        }

        goto LABEL_54;
      }
    }

    else if (v10 == 8 && v7 == 66)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 56);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_14BAE64(v13);
        v11 = v14;
        *(a1 + 56) = v14;
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if (v7)
    {
      v40 = (v7 & 7) == 4;
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v44;
      }

      return 0;
    }

    v41 = *(a1 + 8);
    if (v41)
    {
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v42 = sub_11F1920((a1 + 8));
      v6 = v44;
    }

    v33 = sub_1952690(v7, v42, v6, a3);
LABEL_55:
    v44 = v33;
    if (!v33)
    {
      return 0;
    }

LABEL_56:
    ;
  }

  return v44;
}

char *sub_141D820(uint64_t a1, unint64_t __dst, unint64_t *a3)
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
    *v4 = 58;
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

    v4 = sub_14589F4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
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

  v10 = *(a1 + 56);
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

  v4 = sub_14589F4(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 64);
  *v4 = 74;
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

  v4 = sub_14589F4(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v16 = *(a1 + 72);
  *v4 = 82;
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

  v4 = sub_14589F4(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_32:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v19 = *(a1 + 80);
  *v4 = 90;
  v20 = *(v19 + 20);
  v4[1] = v20;
  if (v20 > 0x7F)
  {
    v21 = sub_19575D0(v20, v4 + 1);
  }

  else
  {
    v21 = v4 + 2;
  }

  v4 = sub_14589F4(v19, v21, a3);
  if ((v6 & 0x20) != 0)
  {
LABEL_38:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v22 = *(a1 + 88);
    *v4 = 106;
    v23 = *(v22 + 20);
    v4[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v4 + 1);
    }

    else
    {
      v24 = v4 + 2;
    }

    v4 = sub_14589F4(v22, v24, a3);
  }

LABEL_44:
  v25 = *(a1 + 32);
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v27 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 114;
      v28 = *(v27 + 20);
      v4[1] = v28;
      if (v28 > 0x7F)
      {
        v29 = sub_19575D0(v28, v4 + 1);
      }

      else
      {
        v29 = v4 + 2;
      }

      v4 = sub_141CF38(v27, v29, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v30 = *(a1 + 96);
    *v4 = 122;
    v31 = *(v30 + 20);
    v4[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v4 + 1);
    }

    else
    {
      v32 = v4 + 2;
    }

    v4 = sub_14589F4(v30, v32, a3);
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v36)
  {
    v38 = v36;
    memcpy(v4, v37, v36);
    v4 += v38;
    return v4;
  }

  return sub_1957130(a3, v37, v36, v4);
}

uint64_t sub_141DC38(uint64_t a1)
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
      v7 = sub_141D044(v6);
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
  if ((v8 & 0x7F) == 0)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v12 = sub_1458DB4(*(a1 + 48));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v13 = sub_1458DB4(*(a1 + 56));
  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = sub_1458DB4(*(a1 + 64));
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_24:
    v16 = sub_1458DB4(*(a1 + 80));
    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x20) == 0)
    {
LABEL_16:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_23:
  v15 = sub_1458DB4(*(a1 + 72));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  if ((v8 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_25:
  v17 = sub_1458DB4(*(a1 + 88));
  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x40) != 0)
  {
LABEL_17:
    v9 = sub_1458DB4(*(a1 + 96));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  v10 = *(a1 + 8);
  if (v10)
  {
    v18 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v2 += v19;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_141DE58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_144BA68((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x7F) == 0)
  {
    goto LABEL_69;
  }

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

      sub_14BAE64(v12);
      *(a1 + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v13 = *(a2 + 48);
    }

    else
    {
      v13 = &off_2771738;
    }

    sub_144EF20(v10, v13);
    if ((v9 & 2) == 0)
    {
LABEL_7:
      if ((v9 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_7;
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

    sub_14BAE64(v16);
    *(a1 + 56) = v14;
  }

  if (*(a2 + 56))
  {
    v17 = *(a2 + 56);
  }

  else
  {
    v17 = &off_2771738;
  }

  sub_144EF20(v14, v17);
  if ((v9 & 4) == 0)
  {
LABEL_8:
    if ((v9 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_29:
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

    sub_14BAE64(v20);
    *(a1 + 64) = v18;
  }

  if (*(a2 + 64))
  {
    v21 = *(a2 + 64);
  }

  else
  {
    v21 = &off_2771738;
  }

  sub_144EF20(v18, v21);
  if ((v9 & 8) == 0)
  {
LABEL_9:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_45:
    *(a1 + 16) |= 0x10u;
    v26 = *(a1 + 80);
    if (!v26)
    {
      v27 = *(a1 + 8);
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      sub_14BAE64(v28);
      *(a1 + 80) = v26;
    }

    if (*(a2 + 80))
    {
      v29 = *(a2 + 80);
    }

    else
    {
      v29 = &off_2771738;
    }

    sub_144EF20(v26, v29);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_61;
    }

    goto LABEL_53;
  }

LABEL_37:
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

    sub_14BAE64(v24);
    *(a1 + 72) = v22;
  }

  if (*(a2 + 72))
  {
    v25 = *(a2 + 72);
  }

  else
  {
    v25 = &off_2771738;
  }

  sub_144EF20(v22, v25);
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_45;
  }

LABEL_10:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_53:
  *(a1 + 16) |= 0x20u;
  v30 = *(a1 + 88);
  if (!v30)
  {
    v31 = *(a1 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    sub_14BAE64(v32);
    *(a1 + 88) = v30;
  }

  if (*(a2 + 88))
  {
    v33 = *(a2 + 88);
  }

  else
  {
    v33 = &off_2771738;
  }

  sub_144EF20(v30, v33);
  if ((v9 & 0x40) != 0)
  {
LABEL_61:
    *(a1 + 16) |= 0x40u;
    v34 = *(a1 + 96);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_14BAE64(v36);
      *(a1 + 96) = v34;
    }

    if (*(a2 + 96))
    {
      v37 = *(a2 + 96);
    }

    else
    {
      v37 = &off_2771738;
    }

    sub_144EF20(v34, v37);
  }

LABEL_69:
  v38 = *(a2 + 8);
  if (v38)
  {

    sub_1957EF4((a1 + 8), (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_141E120(uint64_t a1)
{
  result = sub_141E1DC(a1 + 24);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      result = sub_144F560(*(a1 + 48));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 2) != 0)
    {
      result = sub_144F560(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = sub_144F560(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_144F560(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_144F560(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x20) != 0)
    {
      result = sub_144F560(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x40) == 0)
    {
      return 1;
    }

    result = sub_144F560(*(a1 + 96));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_141E1DC(uint64_t a1)
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
      result = sub_144F560(*(v3 + 24));
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