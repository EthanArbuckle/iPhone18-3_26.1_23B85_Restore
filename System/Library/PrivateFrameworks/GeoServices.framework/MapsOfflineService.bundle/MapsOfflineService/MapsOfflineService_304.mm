char *sub_12ABAB8(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 120);
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

    a2 = sub_16ED4B0(v6, v8, a3);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 168);
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v14 = *(a1 + 128);
    *v9 = 26;
    v15 = *(v14 + 44);
    v9[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v9 + 1);
    }

    else
    {
      v16 = v9 + 2;
    }

    v9 = sub_16E5070(v14, v16, a3);
  }

  v17 = *(a1 + 24);
  if (v17 < 1)
  {
    v20 = v9;
  }

  else
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v19 = *(*(a1 + 32) + 8 * i);
      *v9 = 32;
      v9[1] = v19;
      if (v19 > 0x7F)
      {
        v9[1] = v19 | 0x80;
        v21 = v19 >> 7;
        v9[2] = v19 >> 7;
        v20 = v9 + 3;
        if (v19 >= 0x4000)
        {
          LOBYTE(v9) = v9[2];
          do
          {
            *(v20 - 1) = v9 | 0x80;
            v9 = (v21 >> 7);
            *v20++ = v21 >> 7;
            v22 = v21 >> 14;
            v21 >>= 7;
          }

          while (v22);
        }
      }

      else
      {
        v20 = v9 + 2;
      }

      v9 = v20;
    }
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v23 = *(a1 + 192);
    *v20 = 40;
    v20[1] = v23;
    v20 += 2;
    if ((v5 & 0x800) == 0)
    {
LABEL_38:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_38;
  }

  if (*a3 <= v20)
  {
    v20 = sub_225EB68(a3, v20);
  }

  v24 = *(a1 + 193);
  *v20 = 48;
  v20[1] = v24;
  v20 += 2;
  if ((v5 & 0x1000) != 0)
  {
LABEL_46:
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 194);
    *v20 = 56;
    v20[1] = v25;
    v20 += 2;
  }

LABEL_49:
  v26 = *(a1 + 48);
  if (v26 >= 1)
  {
    v27 = 8;
    do
    {
      v28 = *(*(a1 + 56) + v27);
      v29 = *(v28 + 23);
      if (v29 < 0 && (v29 = v28[1], v29 > 127) || *a3 - v20 + 14 < v29)
      {
        v20 = sub_1957480(a3, 8, v28, v20);
      }

      else
      {
        *v20 = 66;
        v20[1] = v29;
        if (*(v28 + 23) < 0)
        {
          v28 = *v28;
        }

        v30 = v20 + 2;
        memcpy(v20 + 2, v28, v29);
        v20 = &v30[v29];
      }

      v27 += 8;
      --v26;
    }

    while (v26);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v31 = *(a1 + 136);
    *v20 = 74;
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

    v20 = sub_12AF904(v31, v33, a3);
  }

  v34 = *(a1 + 72);
  if (v34)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*a3 <= v20)
      {
        v20 = sub_225EB68(a3, v20);
      }

      v36 = *(*(a1 + 80) + 8 * j + 8);
      *v20 = 82;
      v37 = *(v36 + 20);
      v20[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v20 + 1);
      }

      else
      {
        v38 = v20 + 2;
      }

      v20 = sub_12AF904(v36, v38, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v39 = *(a1 + 144);
    *v20 = 90;
    v40 = *(v39 + 20);
    v20[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v20 + 1);
    }

    else
    {
      v41 = v20 + 2;
    }

    v20 = sub_12AFEA8(v39, v41, a3);
  }

  v42 = *(a1 + 96);
  if (v42)
  {
    for (k = 0; k != v42; ++k)
    {
      if (*a3 <= v20)
      {
        v20 = sub_225EB68(a3, v20);
      }

      v44 = *(*(a1 + 104) + 8 * k + 8);
      *v20 = 98;
      v45 = *(v44 + 20);
      v20[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v20 + 1);
      }

      else
      {
        v46 = v20 + 2;
      }

      v20 = sub_12AFEA8(v44, v46, a3);
    }
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v48 = *(a1 + 176);
    *v20 = 104;
    v20[1] = v48;
    if (v48 > 0x7F)
    {
      v20[1] = v48 | 0x80;
      v49 = v48 >> 7;
      v20[2] = v48 >> 7;
      v47 = v20 + 3;
      if (v48 >= 0x4000)
      {
        LOBYTE(v50) = v20[2];
        do
        {
          *(v47 - 1) = v50 | 0x80;
          v50 = v49 >> 7;
          *v47++ = v49 >> 7;
          v51 = v49 >> 14;
          v49 >>= 7;
        }

        while (v51);
      }
    }

    else
    {
      v47 = v20 + 2;
    }
  }

  else
  {
    v47 = v20;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v53 = *(a1 + 184);
    *v47 = 112;
    v47[1] = v53;
    if (v53 > 0x7F)
    {
      v47[1] = v53 | 0x80;
      v54 = v53 >> 7;
      v47[2] = v53 >> 7;
      v52 = v47 + 3;
      if (v53 >= 0x4000)
      {
        LOBYTE(v55) = v47[2];
        do
        {
          *(v52 - 1) = v55 | 0x80;
          v55 = v54 >> 7;
          *v52++ = v54 >> 7;
          v56 = v54 >> 14;
          v54 >>= 7;
        }

        while (v56);
      }
    }

    else
    {
      v52 = v47 + 2;
    }
  }

  else
  {
    v52 = v47;
  }

  if (v5)
  {
    v52 = sub_128AEEC(a3, 15, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v52);
    if ((v5 & 0x2000) == 0)
    {
LABEL_110:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_117;
    }
  }

  else if ((v5 & 0x2000) == 0)
  {
    goto LABEL_110;
  }

  if (*a3 <= v52)
  {
    v52 = sub_225EB68(a3, v52);
  }

  v57 = *(a1 + 195);
  *v52 = 384;
  v52[2] = v57;
  v52 += 3;
  if ((v5 & 0x20) == 0)
  {
LABEL_111:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_123;
  }

LABEL_117:
  if (*a3 <= v52)
  {
    v52 = sub_225EB68(a3, v52);
  }

  v58 = *(a1 + 152);
  *v52 = 394;
  v59 = *(v58 + 20);
  v52[2] = v59;
  if (v59 > 0x7F)
  {
    v60 = sub_19575D0(v59, v52 + 2);
  }

  else
  {
    v60 = v52 + 3;
  }

  v52 = sub_12AAA50(v58, v60, a3);
  if ((v5 & 0x40) != 0)
  {
LABEL_123:
    if (*a3 <= v52)
    {
      v52 = sub_225EB68(a3, v52);
    }

    v61 = *(a1 + 160);
    *v52 = 402;
    v62 = *(v61 + 20);
    v52[2] = v62;
    if (v62 > 0x7F)
    {
      v63 = sub_19575D0(v62, v52 + 2);
    }

    else
    {
      v63 = v52 + 3;
    }

    v52 = sub_12B1658(v61, v63, a3);
  }

LABEL_129:
  v64 = *(a1 + 8);
  if ((v64 & 1) == 0)
  {
    return v52;
  }

  v66 = v64 & 0xFFFFFFFFFFFFFFFCLL;
  v67 = *(v66 + 31);
  if (v67 < 0)
  {
    v68 = *(v66 + 8);
    v67 = *(v66 + 16);
  }

  else
  {
    v68 = (v66 + 8);
  }

  if (*a3 - v52 >= v67)
  {
    v69 = v67;
    memcpy(v52, v68, v67);
    v52 += v69;
    return v52;
  }

  return sub_1957130(a3, v68, v67, v52);
}

uint64_t sub_12AC2BC(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 48);
  v4 = v2 + *(a1 + 24) + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 56) + 8);
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

  v9 = *(a1 + 72);
  v10 = v4 + v9;
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
      v15 = sub_12AFB3C(v14);
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
      v22 = sub_12B0058(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    goto LABEL_28;
  }

  if (v23)
  {
    v27 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
    v28 = *(v27 + 23);
    v29 = *(v27 + 8);
    if ((v28 & 0x80u) == 0)
    {
      v29 = v28;
    }

    v17 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_21:
      if ((v23 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_42;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_21;
  }

  v30 = sub_16ED6F0(*(a1 + 120));
  v17 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
LABEL_22:
    if ((v23 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v31 = sub_16E51F0(*(a1 + 128));
  v17 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 8) == 0)
  {
LABEL_23:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  v32 = sub_12AFB3C(*(a1 + 136));
  v17 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 0x10) == 0)
  {
LABEL_24:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_25;
    }

LABEL_45:
    v34 = sub_12AABAC(*(a1 + 152));
    v17 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x40) == 0)
    {
LABEL_26:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_46;
  }

LABEL_44:
  v33 = sub_12B0058(*(a1 + 144));
  v17 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_45;
  }

LABEL_25:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_46:
  v35 = sub_12B1A28(*(a1 + 160));
  v17 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x80) != 0)
  {
LABEL_27:
    v17 += ((9 * (__clz(*(a1 + 168) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_28:
  if ((v23 & 0x3F00) != 0)
  {
    if ((v23 & 0x100) != 0)
    {
      v17 += ((9 * (__clz(*(a1 + 176) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v23 & 0x200) != 0)
    {
      v17 += ((9 * (__clz(*(a1 + 184) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v24 = (v23 >> 11) & 2;
    if ((v23 & 0x2000) != 0)
    {
      v17 += ((v23 >> 10) & 2) + ((v23 >> 9) & 2) + v24 + 3;
    }

    else
    {
      v17 += ((v23 >> 10) & 2) + ((v23 >> 9) & 2) + v24;
    }
  }

  v25 = *(a1 + 8);
  if (v25)
  {
    v36 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v37 < 0)
    {
      v37 = *(v36 + 16);
    }

    v17 += v37;
  }

  *(a1 + 20) = v17;
  return v17;
}

void sub_12AC64C(uint64_t a1, uint64_t a2)
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
    sub_1201B48(a1 + 40, v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    v14 = *(a2 + 80);
    v15 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_12E57EC((a1 + 64), v15, (v14 + 8), v13, **(a1 + 80) - *(a1 + 72));
    v16 = *(a1 + 72) + v13;
    *(a1 + 72) = v16;
    v17 = *(a1 + 80);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 96);
  if (v18)
  {
    v19 = *(a2 + 104);
    v20 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_12E5878((a1 + 88), v20, (v19 + 8), v18, **(a1 + 104) - *(a1 + 96));
    v21 = *(a1 + 96) + v18;
    *(a1 + 96) = v21;
    v22 = *(a1 + 104);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 16);
  if (v23)
  {
    if (v23)
    {
      v25 = *(a2 + 112);
      *(a1 + 16) |= 1u;
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      sub_194EA1C((a1 + 112), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
      if ((v23 & 2) == 0)
      {
LABEL_15:
        if ((v23 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_47;
      }
    }

    else if ((v23 & 2) == 0)
    {
      goto LABEL_15;
    }

    *(a1 + 16) |= 2u;
    v28 = *(a1 + 120);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_16F5E18(v30);
      *(a1 + 120) = v28;
    }

    if (*(a2 + 120))
    {
      v31 = *(a2 + 120);
    }

    else
    {
      v31 = &off_277E918;
    }

    sub_16ED814(v28, v31);
    if ((v23 & 4) == 0)
    {
LABEL_16:
      if ((v23 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_55;
    }

LABEL_47:
    *(a1 + 16) |= 4u;
    v32 = *(a1 + 128);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_16F5828(v34);
      *(a1 + 128) = v32;
    }

    if (*(a2 + 128))
    {
      v35 = *(a2 + 128);
    }

    else
    {
      v35 = &off_277E5E8;
    }

    sub_16E527C(v32, v35);
    if ((v23 & 8) == 0)
    {
LABEL_17:
      if ((v23 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_63;
    }

LABEL_55:
    *(a1 + 16) |= 8u;
    v36 = *(a1 + 136);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_12B0430(v38);
      *(a1 + 136) = v36;
    }

    if (*(a2 + 136))
    {
      v39 = *(a2 + 136);
    }

    else
    {
      v39 = &off_2769250;
    }

    sub_12ACAB8(v36, v39);
    if ((v23 & 0x10) == 0)
    {
LABEL_18:
      if ((v23 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_71;
    }

LABEL_63:
    *(a1 + 16) |= 0x10u;
    v40 = *(a1 + 144);
    if (!v40)
    {
      v41 = *(a1 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v40 = sub_12B04AC(v42);
      *(a1 + 144) = v40;
    }

    if (*(a2 + 144))
    {
      v43 = *(a2 + 144);
    }

    else
    {
      v43 = &off_2769278;
    }

    sub_121721C(v40, v43);
    if ((v23 & 0x20) == 0)
    {
LABEL_19:
      if ((v23 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_79;
    }

LABEL_71:
    *(a1 + 16) |= 0x20u;
    v44 = *(a1 + 152);
    if (!v44)
    {
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      v44 = sub_12B0108(v46);
      *(a1 + 152) = v44;
    }

    if (*(a2 + 152))
    {
      v47 = *(a2 + 152);
    }

    else
    {
      v47 = &off_2769078;
    }

    sub_12AAC24(v44, v47);
    if ((v23 & 0x40) == 0)
    {
LABEL_20:
      if ((v23 & 0x80) == 0)
      {
LABEL_22:
        *(a1 + 16) |= v23;
        goto LABEL_23;
      }

LABEL_21:
      *(a1 + 168) = *(a2 + 168);
      goto LABEL_22;
    }

LABEL_79:
    *(a1 + 16) |= 0x40u;
    v48 = *(a1 + 160);
    if (!v48)
    {
      v49 = *(a1 + 8);
      v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
      if (v49)
      {
        v50 = *v50;
      }

      v48 = sub_12B1DE8(v50);
      *(a1 + 160) = v48;
    }

    if (*(a2 + 160))
    {
      v51 = *(a2 + 160);
    }

    else
    {
      v51 = &off_27692A0;
    }

    sub_12ACB1C(v48, v51);
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  if ((v23 & 0x3F00) == 0)
  {
    goto LABEL_32;
  }

  if ((v23 & 0x100) != 0)
  {
    *(a1 + 176) = *(a2 + 176);
    if ((v23 & 0x200) == 0)
    {
LABEL_26:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_90;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  *(a1 + 184) = *(a2 + 184);
  if ((v23 & 0x400) == 0)
  {
LABEL_27:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(a1 + 192) = *(a2 + 192);
  if ((v23 & 0x800) == 0)
  {
LABEL_28:
    if ((v23 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

LABEL_92:
    *(a1 + 194) = *(a2 + 194);
    if ((v23 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_91:
  *(a1 + 193) = *(a2 + 193);
  if ((v23 & 0x1000) != 0)
  {
    goto LABEL_92;
  }

LABEL_29:
  if ((v23 & 0x2000) != 0)
  {
LABEL_30:
    *(a1 + 195) = *(a2 + 195);
  }

LABEL_31:
  *(a1 + 16) |= v23;
LABEL_32:
  v24 = *(a2 + 8);
  if (v24)
  {

    sub_1957EF4((a1 + 8), (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_12ACAB8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_12ACB1C(std::string *result, uint64_t a2)
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
    result = sub_1201B48(&v3[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
    result = sub_1201B48(&v3[3], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(&v3[4], *(a2 + 104));
    result = sub_12E5B14(&v3[4], v21, (v20 + 8), v19, *v3[4].__r_.__value_.__r.__words[2] - LODWORD(v3[4].__r_.__value_.__r.__words[1]));
    v22 = LODWORD(v3[4].__r_.__value_.__r.__words[1]) + v19;
    LODWORD(v3[4].__r_.__value_.__r.__words[1]) = v22;
    v23 = v3[4].__r_.__value_.__r.__words[2];
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(&v3[5], *(a2 + 128));
    result = sub_12E5BA0(&v3[5], v26, (v25 + 8), v24, *v3[5].__r_.__value_.__r.__words[2] - LODWORD(v3[5].__r_.__value_.__r.__words[1]));
    v27 = LODWORD(v3[5].__r_.__value_.__r.__words[1]) + v24;
    LODWORD(v3[5].__r_.__value_.__r.__words[1]) = v27;
    v28 = v3[5].__r_.__value_.__r.__words[2];
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 16);
  if ((v29 & 3) != 0)
  {
    if (v29)
    {
      v30 = *(a2 + 144);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v32 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v32 = *v32;
      }

      result = sub_194EA1C(&v3[6], (v30 & 0xFFFFFFFFFFFFFFFELL), v32);
    }

    if ((v29 & 2) != 0)
    {
      v33 = *(a2 + 152);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v34 = v3->__r_.__value_.__l.__size_;
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      result = sub_194EA1C(&v3[6].__r_.__value_.__l.__size_, (v33 & 0xFFFFFFFFFFFFFFFELL), v35);
    }
  }

  v36 = *(a2 + 8);
  if (v36)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12ACDBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16ED98C(*(a1 + 120));
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

  result = sub_16E5370(*(a1 + 128));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_12ACE18(uint64_t a1)
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

  if (a1 != &off_2769168)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_18FA778(v5);
      operator delete();
    }

    if (*(a1 + 56))
    {
      sub_153FD8C();
      operator delete();
    }

    if (*(a1 + 64))
    {
      sub_12EB4B4();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_12E56E4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12ACF14(uint64_t a1)
{
  sub_12ACE18(a1);

  operator delete();
}

uint64_t sub_12ACF4C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12AAFB0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      result = sub_18FA7B4(*(v1 + 48));
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = sub_153FDC8(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      result = sub_12EB4F0(*(v1 + 64));
    }
  }

LABEL_10:
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

char *sub_12AD00C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v36, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v36 + 1;
    v7 = *v36;
    if (*v36 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v36, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v36 + 2;
      }
    }

    v36 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v30 = v6 + 1;
          v29 = *v6;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v36 = sub_19587DC(v6, v29);
            if (!v36)
            {
              return 0;
            }
          }

          else
          {
            v30 = v6 + 2;
LABEL_48:
            v36 = v30;
          }

          if (v29 > 3)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 72) = v29;
          }

          continue;
        }

        goto LABEL_51;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_51;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 48);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_1906254(v18);
        *(a1 + 48) = v16;
        v6 = v36;
      }

      v14 = sub_21F3AD0(a3, v16, v6);
    }

    else if (v10 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_51;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 56);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        sub_1551D64(v21);
        v19 = v22;
        *(a1 + 56) = v22;
        v6 = v36;
      }

      sub_21F3650(a3, v19, v6);
    }

    else
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          v23 = v6 - 1;
          while (1)
          {
            v24 = (v23 + 1);
            v36 = v23 + 1;
            v25 = *(a1 + 40);
            if (v25 && (v26 = *(a1 + 32), v26 < *v25))
            {
              *(a1 + 32) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              sub_12B0184(*(a1 + 24));
              v27 = sub_19593CC(a1 + 24, v28);
              v24 = v36;
            }

            v23 = sub_21F56F0(a3, v27, v24);
            v36 = v23;
            if (!v23)
            {
              return 0;
            }

            if (*a3 <= v23 || *v23 != 34)
            {
              goto LABEL_59;
            }
          }
        }

LABEL_51:
        if (v7)
        {
          v32 = (v7 & 7) == 4;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return v36;
          }

          return 0;
        }

        v33 = *(a1 + 8);
        if (v33)
        {
          v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v34 = sub_11F1920((a1 + 8));
          v6 = v36;
        }

        v14 = sub_1952690(v7, v34, v6, a3);
        goto LABEL_58;
      }

      if (v10 != 5 || v7 != 42)
      {
        goto LABEL_51;
      }

      *(a1 + 16) |= 4u;
      v11 = *(a1 + 64);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_12F19DC(v13);
        *(a1 + 64) = v11;
        v6 = v36;
      }

      v14 = sub_21F5780(a3, v11, v6);
    }

LABEL_58:
    v36 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_59:
    ;
  }

  return v36;
}

char *sub_12AD324(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
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

    v6 = sub_18FB10C(v11, v13, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 56);
    *v6 = 26;
    v15 = *(v14 + 28);
    v6[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v6 + 1);
    }

    else
    {
      v16 = v6 + 2;
    }

    v6 = sub_1540418(v14, v16, a3);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
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

      v6 = sub_12ABAB8(v19, v21, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 64);
    *v6 = 42;
    v23 = *(v22 + 44);
    v6[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v6 + 1);
    }

    else
    {
      v24 = v6 + 2;
    }

    v6 = sub_12EC07C(v22, v24, a3);
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v6;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  if ((*a3 - v6) >= v28)
  {
    v30 = v28;
    memcpy(v6, v29, v28);
    v6 += v30;
    return v6;
  }

  return sub_1957130(a3, v29, v28, v6);
}

uint64_t sub_12AD614(uint64_t a1)
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
      v7 = sub_12AC2BC(v6);
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
    goto LABEL_22;
  }

  if (v8)
  {
    v9 = sub_18FB7A4(*(a1 + 48));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v10 = sub_1541FC0(*(a1 + 56));
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = sub_12EC710(*(a1 + 64));
  v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v12 = *(a1 + 72);
  if (v12 < 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v13;
LABEL_22:
  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12AD79C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E58F4((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      v11 = *(a1 + 48);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_1906254(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_278AFA0;
      }

      sub_18FBB2C(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_31;
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

      sub_1551D64(v17);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_27769A8;
    }

    sub_1542CDC(v15, v18);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
LABEL_10:
        *(a1 + 16) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_31:
    *(a1 + 16) |= 4u;
    v19 = *(a1 + 64);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_12F19DC(v21);
      *(a1 + 64) = v19;
    }

    if (*(a2 + 64))
    {
      v22 = *(a2 + 64);
    }

    else
    {
      v22 = &off_276A3D0;
    }

    sub_12ECA3C(v19, v22);
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

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12AD970(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_12ACDBC(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_18FCAE4(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = sub_1543A14(*(a1 + 56));
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

  result = sub_12ECDC8(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_12ADA0C(void *a1)
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

  sub_12ADA90(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_12ADA90(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27691B8)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      sub_18FDA18(v4);
      operator delete();
    }

    if (*(a1 + 40))
    {
      sub_1547884();
      operator delete();
    }

    if (*(a1 + 48))
    {
      sub_17A2F70();
      operator delete();
    }

    if (*(a1 + 56))
    {
      sub_12EE930();
      operator delete();
    }

    result = *(a1 + 64);
    if (result)
    {
      sub_17998B0();

      operator delete();
    }
  }

  return result;
}

void sub_12ADB94(void *a1)
{
  sub_12ADA0C(a1);

  operator delete();
}

uint64_t sub_12ADBCC(uint64_t result)
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
        goto LABEL_21;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  result = sub_18FDA54(*(result + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    result = sub_17A2FAC(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_22:
  result = sub_14D28E4(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_24:
  result = sub_12EE96C(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result = sub_17998EC(*(v1 + 64));
  }

LABEL_9:
  if ((v2 & 0xC0) != 0)
  {
    *(v1 + 76) = 0;
    *(v1 + 72) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
    *(v1 + 80) = 0;
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

uint64_t sub_12ADCC4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 > 7)
      {
        if (v11 == 8)
        {
          if (v8 != 66)
          {
            goto LABEL_83;
          }

          *(a1 + 16) |= 0x20u;
          v37 = *(a1 + 64);
          if (!v37)
          {
            v38 = *(a1 + 8);
            v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
            if (v38)
            {
              v39 = *v39;
            }

            v37 = sub_185D614(v39);
            *(a1 + 64) = v37;
            v7 = *v52;
          }

          v15 = sub_21F51E0(a3, v37, v7);
          goto LABEL_90;
        }

        if (v11 == 9)
        {
          if (v8 != 74)
          {
            goto LABEL_83;
          }

          *(a1 + 16) |= 1u;
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v45 = sub_194DB04((a1 + 24), v44);
          v15 = sub_1958890(v45, *v52, a3);
          goto LABEL_90;
        }

        if (v11 != 10 || v8 != 80)
        {
          goto LABEL_83;
        }

        v17 = (v7 + 1);
        v16 = *v7;
        if (v16 < 0)
        {
          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            *v52 = sub_19587DC(v7, v16);
            if (!*v52)
            {
              goto LABEL_107;
            }

            goto LABEL_27;
          }

          v17 = (v7 + 2);
        }

        *v52 = v17;
LABEL_27:
        if (v16 > 6)
        {
          sub_12E8488();
        }

        else
        {
          *(a1 + 16) |= 0x200u;
          *(a1 + 84) = v16;
        }

        goto LABEL_91;
      }

      if (v11 != 6)
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 0x10u;
        v23 = *(a1 + 56);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_12F1C68(v25);
          *(a1 + 56) = v23;
          v7 = *v52;
        }

        v15 = sub_21F58A0(a3, v23, v7);
        goto LABEL_90;
      }

      if (v8 != 48)
      {
        goto LABEL_83;
      }

      v31 = (v7 + 1);
      v30 = *v7;
      if (v30 < 0)
      {
        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          *v52 = sub_19587DC(v7, v30);
          if (!*v52)
          {
            goto LABEL_107;
          }

          goto LABEL_60;
        }

        v31 = (v7 + 2);
      }

      *v52 = v31;
LABEL_60:
      if (v30 > 2)
      {
        sub_12E84C8();
      }

      else
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 80) = v30;
      }

      goto LABEL_91;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_83;
        }

        *(a1 + 16) |= 2u;
        v20 = *(a1 + 32);
        if (!v20)
        {
          v21 = *(a1 + 8);
          v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v22 = *v22;
          }

          v20 = sub_190630C(v22);
          *(a1 + 32) = v20;
          v7 = *v52;
        }

        v15 = sub_21F3B60(a3, v20, v7);
LABEL_90:
        *v52 = v15;
        if (!v15)
        {
          goto LABEL_107;
        }

        goto LABEL_91;
      }

      if (v8 != 8)
      {
        goto LABEL_83;
      }

      v26 = (v7 + 1);
      v27 = *v7;
      if (v27 < 0)
      {
        v28 = *v26;
        v29 = (v28 << 7) + v27;
        LODWORD(v27) = v29 - 128;
        if (v28 < 0)
        {
          *v52 = sub_19587DC(v7, (v29 - 128));
          if (!*v52)
          {
            goto LABEL_107;
          }

          LODWORD(v27) = v49;
          goto LABEL_53;
        }

        v26 = (v7 + 2);
      }

      *v52 = v26;
LABEL_53:
      if (sub_14CB318(v27))
      {
        *(a1 + 16) |= 0x40u;
        *(a1 + 72) = v27;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_91;
    }

    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_83;
      }

      *(a1 + 16) |= 4u;
      v33 = *(a1 + 40);
      if (!v33)
      {
        v34 = *(a1 + 8);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        sub_155218C(v35);
        v33 = v36;
        *(a1 + 40) = v36;
        v7 = *v52;
      }

      v15 = sub_21F36E0(a3, v33, v7);
      goto LABEL_90;
    }

    if (v11 != 4)
    {
      break;
    }

    if (v8 != 32)
    {
      goto LABEL_83;
    }

    v5 |= 0x80u;
    v41 = (v7 + 1);
    v40 = *v7;
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_78;
    }

    v42 = *v41;
    v40 = (v42 << 7) + v40 - 128;
    if ((v42 & 0x80000000) == 0)
    {
      v41 = (v7 + 2);
LABEL_78:
      *v52 = v41;
      *(a1 + 76) = v40 != 0;
      goto LABEL_91;
    }

    v50 = sub_19587DC(v7, v40);
    *v52 = v50;
    *(a1 + 76) = v51 != 0;
    if (!v50)
    {
      goto LABEL_107;
    }

LABEL_91:
    if (sub_195ADC0(a3, v52, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 8u;
    v12 = *(a1 + 48);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_185DD6C(v14);
      *(a1 + 48) = v12;
      v7 = *v52;
    }

    v15 = sub_21F5810(a3, v12, v7);
    goto LABEL_90;
  }

LABEL_83:
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
      v7 = *v52;
    }

    v15 = sub_1952690(v8, v48, v7, a3);
    goto LABEL_90;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_107:
  *v52 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v52;
}

char *sub_12AE200(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 32);
    *v6 = 18;
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

    v6 = sub_18FE368(v12, v14, a3);
    if ((v5 & 4) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 40);
  *v6 = 26;
  v16 = *(v15 + 20);
  v6[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v6 + 1);
  }

  else
  {
    v17 = v6 + 2;
  }

  v6 = sub_15480D4(v15, v17, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v19 = *(a1 + 48);
    *v6 = 42;
    v20 = *(v19 + 44);
    v6[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v6 + 1);
    }

    else
    {
      v21 = v6 + 2;
    }

    v6 = sub_17A31A8(v19, v21, a3);
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_28:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 76);
  *v6 = 32;
  v6[1] = v18;
  v6 += 2;
  if ((v5 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if ((v5 & 0x100) == 0)
  {
LABEL_15:
    v11 = v6;
    goto LABEL_44;
  }

LABEL_37:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v22 = *(a1 + 80);
  *v6 = 48;
  v6[1] = v22;
  if (v22 > 0x7F)
  {
    v6[1] = v22 | 0x80;
    v23 = v22 >> 7;
    v6[2] = v22 >> 7;
    v11 = v6 + 3;
    if (v22 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        v6 = (v23 >> 7);
        *v11++ = v23 >> 7;
        v24 = v23 >> 14;
        v23 >>= 7;
      }

      while (v24);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_44:
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v26 = *(a1 + 56);
    *v11 = 58;
    v27 = *(v26 + 44);
    v11[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v11 + 1);
    }

    else
    {
      v28 = v11 + 2;
    }

    v11 = sub_12EF5A0(v26, v28, a3);
    if ((v5 & 0x20) == 0)
    {
LABEL_46:
      if ((v5 & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_61:
      v11 = sub_128AEEC(a3, 9, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v11);
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_62;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_46;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v29 = *(a1 + 64);
  *v11 = 66;
  v30 = *(v29 + 20);
  v11[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, v11 + 1);
  }

  else
  {
    v31 = v11 + 2;
  }

  v11 = sub_1799A68(v29, v31, a3);
  if (v5)
  {
    goto LABEL_61;
  }

LABEL_47:
  if ((v5 & 0x200) == 0)
  {
LABEL_48:
    v25 = v11;
    goto LABEL_69;
  }

LABEL_62:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v32 = *(a1 + 84);
  *v11 = 80;
  v11[1] = v32;
  if (v32 > 0x7F)
  {
    v11[1] = v32 | 0x80;
    v33 = v32 >> 7;
    v11[2] = v32 >> 7;
    v25 = v11 + 3;
    if (v32 >= 0x4000)
    {
      LOBYTE(v34) = v11[2];
      do
      {
        *(v25 - 1) = v34 | 0x80;
        v34 = v33 >> 7;
        *v25++ = v33 >> 7;
        v35 = v33 >> 14;
        v33 >>= 7;
      }

      while (v35);
    }
  }

  else
  {
    v25 = v11 + 2;
  }

LABEL_69:
  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v25;
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

  if ((*a3 - v25) >= v39)
  {
    v41 = v39;
    memcpy(v25, v40, v39);
    v25 += v41;
    return v25;
  }

  return sub_1957130(a3, v40, v39, v25);
}

uint64_t sub_12AE69C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    result = 0;
    goto LABEL_25;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = sub_18FE97C(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v9 = sub_1548710(*(a1 + 40));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_17A3294(*(a1 + 48));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = sub_12EFE68(*(a1 + 56));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    v13 = *(a1 + 72);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v14;
    goto LABEL_24;
  }

LABEL_19:
  v12 = sub_1799B30(*(a1 + 64));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_24:
  result = v3 + ((v2 >> 6) & 2);
LABEL_25:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v15 = *(a1 + 80);
      if (v15 < 0)
      {
        v16 = 11;
      }

      else
      {
        v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v16;
    }

    if ((v2 & 0x200) != 0)
    {
      v17 = *(a1 + 84);
      if (v17 < 0)
      {
        v18 = 11;
      }

      else
      {
        v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v18;
    }
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v21 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v21 < 0)
    {
      v21 = *(v20 + 16);
    }

    result += v21;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_12AE900(uint64_t a1, uint64_t a2)
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

        goto LABEL_33;
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

      v9 = sub_190630C(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_278B0B0;
    }

    sub_18FED20(v9, v12);
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

      sub_155218C(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2776D50;
    }

    sub_14D3AD8(v13, v16);
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

      v17 = sub_185DD6C(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_27829E0;
    }

    sub_14B7610(v17, v20);
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
    *(a1 + 16) |= 0x10u;
    v21 = *(a1 + 56);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_12F1C68(v23);
      *(a1 + 56) = v21;
    }

    if (*(a2 + 56))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = &off_276A488;
    }

    sub_12F0280(v21, v24);
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
    *(a1 + 16) |= 0x20u;
    v25 = *(a1 + 64);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_185D614(v27);
      *(a1 + 64) = v25;
    }

    if (*(a2 + 64))
    {
      v28 = *(a2 + 64);
    }

    else
    {
      v28 = &off_2782568;
    }

    sub_132DE2C(v25, v28);
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
      *(a1 + 76) = *(a2 + 76);
      goto LABEL_11;
    }

LABEL_65:
    *(a1 + 72) = *(a2 + 72);
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
      *(a1 + 80) = *(a2 + 80);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 84) = *(a2 + 84);
    }

    *(a1 + 16) |= v4;
  }

  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12AEB8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_18FF13C(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_14D3EC8(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_17A332C(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_12F06E0(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_12AEC10(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E5768(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12AEC90(void *a1)
{
  sub_12AEC10(a1);

  operator delete();
}

uint64_t sub_12AECC8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12ADBCC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
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

char *sub_12AED5C(uint64_t a1, char *a2, int32x2_t *a3)
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
        if (v7 == 26)
        {
          v22 = v6 - 1;
          while (1)
          {
            v23 = (v22 + 1);
            v33 = v22 + 1;
            v24 = *(a1 + 40);
            if (v24 && (v25 = *(a1 + 32), v25 < *v24))
            {
              *(a1 + 32) = v25 + 1;
              v26 = *&v24[2 * v25 + 2];
            }

            else
            {
              sub_12B02F8(*(a1 + 24));
              v26 = sub_19593CC(a1 + 24, v27);
              v23 = v33;
            }

            v22 = sub_21F5930(a3, v26, v23);
            v33 = v22;
            if (!v22)
            {
              return 0;
            }

            if (*a3 <= v22 || *v22 != 26)
            {
              goto LABEL_53;
            }
          }
        }
      }

      else if (v10 == 4 && v7 == 32)
      {
        v16 = v6 + 1;
        v15 = *v6;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v33 = sub_19587DC(v6, v15);
          if (!v33)
          {
            return 0;
          }
        }

        else
        {
          v16 = v6 + 2;
LABEL_26:
          v33 = v16;
        }

        if (v15 > 4)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 16) |= 4u;
          *(a1 + 56) = v15;
        }

        continue;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 8)
      {
        v18 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v18;
        v21 = (v20 << 7) + v19;
        LODWORD(v19) = v21 - 128;
        if (v20 < 0)
        {
          v33 = sub_19587DC(v6, (v21 - 128));
          if (!v33)
          {
            return 0;
          }

          LODWORD(v19) = v31;
        }

        else
        {
          v18 = v6 + 2;
LABEL_33:
          v33 = v18;
        }

        if (sub_14CB318(v19))
        {
          *(a1 + 16) |= 1u;
          *(a1 + 48) = v19;
        }

        else
        {
          sub_12E8450();
        }

        continue;
      }
    }

    else if (v10 == 2 && v7 == 16)
    {
      v13 = v6 + 1;
      v12 = *v6;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if (v14 < 0)
      {
        v33 = sub_19587DC(v6, v12);
        if (!v33)
        {
          return 0;
        }
      }

      else
      {
        v13 = v6 + 2;
LABEL_17:
        v33 = v13;
      }

      if (v12 > 3)
      {
        sub_12E8418();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 52) = v12;
      }

      continue;
    }

    if (v7)
    {
      v28 = (v7 & 7) == 4;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v33;
      }

      return 0;
    }

    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v6 = v33;
    }

    v33 = sub_1952690(v7, v30, v6, a3);
    if (!v33)
    {
      return 0;
    }

LABEL_53:
    ;
  }

  return v33;
}

char *sub_12AF074(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 52);
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

  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 40) + 8 * i + 8);
      *v11 = 26;
      v18 = *(v17 + 20);
      v11[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v11 + 1);
      }

      else
      {
        v19 = v11 + 2;
      }

      v11 = sub_12AE200(v17, v19, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v21 = *(a1 + 56);
    *v11 = 32;
    v11[1] = v21;
    if (v21 > 0x7F)
    {
      v11[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v11[2] = v21 >> 7;
      v20 = v11 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v20 - 1) = v11 | 0x80;
          v11 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v11 + 2;
    }
  }

  else
  {
    v20 = v11;
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

uint64_t sub_12AF348(uint64_t a1)
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
      v7 = sub_12AE69C(v6);
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
  if ((v8 & 7) == 0)
  {
    goto LABEL_26;
  }

  if (v8)
  {
    v9 = *(a1 + 48);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v10;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v11 = *(a1 + 52);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v12;
  if ((v8 & 4) != 0)
  {
LABEL_22:
    v13 = *(a1 + 56);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v14;
  }

LABEL_26:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v2 += v18;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_12AF4A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E5980((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      *(a1 + 48) = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 56) = *(a2 + 56);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 52) = *(a2 + 52);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_12AF5A8(uint64_t a1)
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
    v5 = sub_12AEB8C(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_12AF610(void *a1)
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

void sub_12AF684(void *a1)
{
  sub_12AF610(a1);

  operator delete();
}

char *sub_12AF6BC(uint64_t a1, char *a2, int32x2_t *a3)
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
      goto LABEL_30;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_30:
      v31 = v19;
      *(a1 + 36) = v20;
      goto LABEL_35;
    }

    v29 = sub_1958770(v7, v20);
    v31 = v29;
    *(a1 + 36) = v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
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

    v5 |= 1u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v31 = v17;
      *(a1 + 24) = v16;
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v16);
    v31 = v25;
    *(a1 + 24) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 2u;
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
      v31 = v22;
      *(a1 + 32) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
    v31 = v27;
    *(a1 + 32) = v28;
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
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

    v31 = sub_1952690(v8, v15, v7, a3);
    if (!v31)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_12AF904(uint64_t a1, char *__dst, _DWORD *a3)
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

    v12 = *(a1 + 24);
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

    v16 = *(a1 + 36);
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

unint64_t sub_12AFB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_10;
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
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

void *sub_12AFC18(void *a1)
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

void sub_12AFC8C(void *a1)
{
  sub_12AFC18(a1);

  operator delete();
}

char *sub_12AFCC4(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_12AFEA8(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_12B0058(uint64_t a1)
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

uint64_t sub_12B0108(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CE9A0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_12B0184(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26CEA20;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = a1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = a1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = &qword_278E990;
  result = 0.0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 180) = 0u;
  return result;
}

uint64_t sub_12B0258(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CEAA0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 60) = 0u;
  return result;
}

double sub_12B02F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26CEB20;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  return result;
}

uint64_t sub_12B038C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CEBA0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

void *sub_12B0430(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CEC20;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_12B04AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CECA0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_12B0528(uint64_t a1)
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

void sub_12B05C8(uint64_t a1)
{
  sub_12B0528(a1);

  operator delete();
}

uint64_t sub_12B0600(uint64_t a1)
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

uint64_t sub_12B0648(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v24, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v24 + 1);
    v8 = **v24;
    if (**v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v24 + 2);
      }
    }

    *v24 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      *v24 = v19;
      *(a1 + 32) = v20;
      goto LABEL_29;
    }

    v22 = sub_1958770(v7, v20);
    *v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_36;
    }

LABEL_29:
    if (sub_195ADC0(a3, v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 24), v17);
    v15 = sub_1958890(v18, *v24, a3);
LABEL_23:
    *v24 = v15;
    if (!v15)
    {
      goto LABEL_36;
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
      v7 = *v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_23;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_36:
  *v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v24;
}

char *sub_12B0814(uint64_t a1, char *__dst, void *a3)
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v14)
  {
    v16 = v14;
    memcpy(v6, v15, v14);
    v6 += v16;
    return v6;
  }

  return sub_1957130(a3, v15, v14, v6);
}

uint64_t sub_12B095C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_10;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_12B0A14(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = *(a2 + 24);
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      size = result->__r_.__value_.__l.__size_;
      v7 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v7 = *v7;
      }

      result = sub_194EA1C(&result[1], (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
  }

  v8 = *(a2 + 8);
  if (v8)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_12B0AE4(uint64_t a1)
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

void sub_12B0B84(uint64_t a1)
{
  sub_12B0AE4(a1);

  operator delete();
}

uint64_t sub_12B0BBC(uint64_t a1)
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

uint64_t sub_12B0C04(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v24, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v24 + 1);
    v8 = **v24;
    if (**v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v24 + 2);
      }
    }

    *v24 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1 || v8 != 8)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_28:
      *v24 = v19;
      *(a1 + 32) = v20;
      goto LABEL_29;
    }

    v22 = sub_1958770(v7, v20);
    *v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_36;
    }

LABEL_29:
    if (sub_195ADC0(a3, v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 24), v17);
    v15 = sub_1958890(v18, *v24, a3);
LABEL_23:
    *v24 = v15;
    if (!v15)
    {
      goto LABEL_36;
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
      v7 = *v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_23;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_36:
  *v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v24;
}

char *sub_12B0DD0(uint64_t a1, char *__dst, void *a3)
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v14)
  {
    v16 = v14;
    memcpy(v6, v15, v14);
    v6 += v16;
    return v6;
  }

  return sub_1957130(a3, v15, v14, v6);
}

uint64_t sub_12B0F18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_10;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_12B0FE8(uint64_t a1)
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

  v5 = (a1 + 144);
  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 152) != &qword_278E990)
  {
    sub_194E89C((a1 + 152));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_12E5A90((a1 + 120));
  sub_12E5A0C((a1 + 96));
  sub_1956AFC((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12B10D0(uint64_t a1)
{
  sub_12B0FE8(a1);

  operator delete();
}

uint64_t sub_12B1108(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v57 = a2;
  if (sub_195ADC0(a3, v57, a3[11].i32[1]))
  {
    return *v57;
  }

  while (1)
  {
    v6 = (*v57 + 1);
    v7 = **v57;
    if (**v57 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v57, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v57 + 2);
      }
    }

    *v57 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 3)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          v29 = v6 - 1;
          while (1)
          {
            v30 = (v29 + 1);
            *v57 = v29 + 1;
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
              v30 = *v57;
            }

            v29 = sub_1958890(v33, v30, a3);
            *v57 = v29;
            if (!v29)
            {
              goto LABEL_97;
            }

            if (*a3 <= v29 || *v29 != 10)
            {
              goto LABEL_92;
            }
          }
        }
      }

      else if (v10 == 2)
      {
        if (v7 == 18)
        {
          v46 = v6 - 1;
          while (1)
          {
            v47 = (v46 + 1);
            *v57 = v46 + 1;
            v48 = *(a1 + 64);
            if (v48 && (v49 = *(a1 + 56), v49 < *v48))
            {
              *(a1 + 56) = v49 + 1;
              v50 = *&v48[2 * v49 + 2];
            }

            else
            {
              v51 = *(a1 + 48);
              if (!v51)
              {
                operator new();
              }

              *v53 = v52;
              v53[1] = sub_195A650;
              *v52 = 0;
              v52[1] = 0;
              v52[2] = 0;
              v50 = sub_19593CC(a1 + 48, v52);
              v47 = *v57;
            }

            v46 = sub_1958890(v50, v47, a3);
            *v57 = v46;
            if (!v46)
            {
              goto LABEL_97;
            }

            if (*a3 <= v46 || *v46 != 18)
            {
              goto LABEL_92;
            }
          }
        }
      }

      else if (v10 == 3 && v7 == 26)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          *v57 = v15 + 1;
          v17 = *(a1 + 88);
          if (v17 && (v18 = *(a1 + 80), v18 < *v17))
          {
            *(a1 + 80) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = *(a1 + 72);
            if (!v20)
            {
              operator new();
            }

            *v22 = v21;
            v22[1] = sub_195A650;
            *v21 = 0;
            v21[1] = 0;
            v21[2] = 0;
            v19 = sub_19593CC(a1 + 72, v21);
            v16 = *v57;
          }

          v15 = sub_1958890(v19, v16, a3);
          *v57 = v15;
          if (!v15)
          {
            goto LABEL_97;
          }

          if (*a3 <= v15 || *v15 != 26)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v7 >> 3 > 5)
    {
      if (v10 == 6)
      {
        if (v7 == 50)
        {
          *(a1 + 16) |= 2u;
          v43 = *(a1 + 8);
          v12 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v12 = *v12;
          }

          v13 = (a1 + 152);
          goto LABEL_71;
        }
      }

      else if (v10 == 7 && v7 == 58)
      {
        v23 = v6 - 1;
        while (1)
        {
          v24 = v23 + 1;
          *v57 = v23 + 1;
          v25 = *(a1 + 136);
          if (v25 && (v26 = *(a1 + 128), v26 < *v25))
          {
            *(a1 + 128) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            v28 = sub_12B1D60(*(a1 + 120));
            v27 = sub_19593CC(a1 + 120, v28);
            v24 = *v57;
          }

          v23 = sub_21F5A50(a3, v27, v24);
          *v57 = v23;
          if (!v23)
          {
            goto LABEL_97;
          }

          if (*a3 <= v23 || *v23 != 58)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        v37 = v6 - 1;
        while (1)
        {
          v38 = v37 + 1;
          *v57 = v37 + 1;
          v39 = *(a1 + 112);
          if (v39 && (v40 = *(a1 + 104), v40 < *v39))
          {
            *(a1 + 104) = v40 + 1;
            v41 = *&v39[2 * v40 + 2];
          }

          else
          {
            v42 = sub_12B1CD8(*(a1 + 96));
            v41 = sub_19593CC(a1 + 96, v42);
            v38 = *v57;
          }

          v37 = sub_21F59C0(a3, v41, v38);
          *v57 = v37;
          if (!v37)
          {
            goto LABEL_97;
          }

          if (*a3 <= v37 || *v37 != 34)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 144);
LABEL_71:
      v44 = sub_194DB04(v13, v12);
      v45 = sub_1958890(v44, *v57, a3);
      goto LABEL_91;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v55 = *(a1 + 8);
    if (v55)
    {
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v56 = sub_11F1920((a1 + 8));
      v6 = *v57;
    }

    v45 = sub_1952690(v7, v56, v6, a3);
LABEL_91:
    *v57 = v45;
    if (!v45)
    {
      goto LABEL_97;
    }

LABEL_92:
    if (sub_195ADC0(a3, v57, a3[11].i32[1]))
    {
      return *v57;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v57;
  }

LABEL_97:
  *v57 = 0;
  return *v57;
}

char *sub_12B1658(uint64_t a1, char *__dst, _DWORD *a3)
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
        memcpy(v10, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 56);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 64) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || *a3 - __dst + 14 < v14)
      {
        __dst = sub_1957480(a3, 2, v13, __dst);
      }

      else
      {
        *__dst = 18;
        __dst[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = __dst + 2;
        memcpy(v15, v13, v14);
        __dst = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v16 = *(a1 + 80);
  if (v16 >= 1)
  {
    v17 = 8;
    do
    {
      v18 = *(*(a1 + 88) + v17);
      v19 = *(v18 + 23);
      if (v19 < 0 && (v19 = v18[1], v19 > 127) || *a3 - __dst + 14 < v19)
      {
        __dst = sub_1957480(a3, 3, v18, __dst);
      }

      else
      {
        *__dst = 26;
        __dst[1] = v19;
        if (*(v18 + 23) < 0)
        {
          v18 = *v18;
        }

        v20 = __dst + 2;
        memcpy(v20, v18, v19);
        __dst = &v20[v19];
      }

      v17 += 8;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 104);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v23 = *(*(a1 + 112) + 8 * i + 8);
      *__dst = 34;
      v24 = *(v23 + 20);
      __dst[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, __dst + 1);
      }

      else
      {
        v25 = __dst + 2;
      }

      __dst = sub_12B0814(v23, v25, a3);
    }
  }

  v26 = *(a1 + 16);
  if (v26)
  {
    __dst = sub_128AEEC(a3, 5, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v26 & 2) != 0)
  {
    __dst = sub_128AEEC(a3, 6, *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v27 = *(a1 + 128);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v29 = *(*(a1 + 136) + 8 * j + 8);
      *__dst = 58;
      v30 = *(v29 + 20);
      __dst[1] = v30;
      if (v30 > 0x7F)
      {
        v31 = sub_19575D0(v30, __dst + 1);
      }

      else
      {
        v31 = __dst + 2;
      }

      __dst = sub_12B0DD0(v29, v31, a3);
    }
  }

  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v35)
  {
    v37 = v35;
    memcpy(__dst, v36, v35);
    __dst += v37;
    return __dst;
  }

  return sub_1957130(a3, v36, v35, __dst);
}

uint64_t sub_12B1A28(uint64_t a1)
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
  if (v8 >= 1)
  {
    v10 = (*(a1 + 64) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 80);
  v15 = v9 + v14;
  if (v14 >= 1)
  {
    v16 = (*(a1 + 88) + 8);
    do
    {
      v17 = *v16++;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v15 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      --v14;
    }

    while (v14);
  }

  v20 = *(a1 + 104);
  v21 = v15 + v20;
  v22 = *(a1 + 112);
  if (v22)
  {
    v23 = (v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = 8 * v20;
    do
    {
      v25 = *v23++;
      v26 = sub_12B095C(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(a1 + 128);
  v28 = v21 + v27;
  v29 = *(a1 + 136);
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
      v33 = sub_12B0F18(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 16);
  if ((v34 & 3) != 0)
  {
    if (v34)
    {
      v35 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
      v36 = *(v35 + 23);
      v37 = *(v35 + 8);
      if ((v36 & 0x80u) == 0)
      {
        v37 = v36;
      }

      v28 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v34 & 2) != 0)
    {
      v38 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
      v39 = *(v38 + 23);
      v40 = *(v38 + 8);
      if ((v39 & 0x80u) == 0)
      {
        v40 = v39;
      }

      v28 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v41 = *(a1 + 8);
  if (v41)
  {
    v43 = v41 & 0xFFFFFFFFFFFFFFFCLL;
    v44 = *((v41 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v44 < 0)
    {
      v44 = *(v43 + 16);
    }

    v28 += v44;
  }

  *(a1 + 20) = v28;
  return v28;
}

uint64_t sub_12B1CD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CED20;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_12B1D60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26CEDA0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

void *sub_12B1DE8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CEE20;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = a1;
  result[10] = 0;
  result[11] = 0;
  result[12] = a1;
  result[13] = 0;
  result[14] = 0;
  result[15] = a1;
  result[16] = 0;
  result[17] = 0;
  result[18] = &qword_278E990;
  result[19] = &qword_278E990;
  return result;
}

uint64_t sub_12B1EB0(uint64_t a1)
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

  if (a1 != &off_2769340 && *(a1 + 24))
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

void sub_12B1F68(uint64_t a1)
{
  sub_12B1EB0(a1);

  operator delete();
}

unsigned __int8 *sub_12B1FA0(unsigned __int8 *result)
{
  v1 = result;
  if (result[16])
  {
    result = sub_16E4E44(*(result + 3));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_12B1FFC(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_16F5828(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_21F4D60(a3, v14, v6);
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

char *sub_12B2140(uint64_t a1, unint64_t __dst, _DWORD *a3)
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

    v4 = sub_16E5070(v6, v8, a3);
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

uint64_t sub_12B224C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_16E51F0(*(a1 + 24));
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

void sub_12B22CC(uint64_t a1, uint64_t a2)
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

      v5 = sub_16F5828(v7);
      *(a1 + 24) = v5;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_277E5E8;
    }

    sub_16E527C(v5, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12B2374(uint64_t a1)
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

uint64_t sub_12B23B4(uint64_t a1)
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

  if (a1 != &off_2769360 && *(a1 + 40))
  {
    sub_16E4E08();
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

void sub_12B2474(uint64_t a1)
{
  sub_12B23B4(a1);

  operator delete();
}

unsigned __int8 *sub_12B24AC(unsigned __int8 *result)
{
  v1 = result;
  *(result + 6) = 0;
  if (result[16])
  {
    result = sub_16E4E44(*(result + 5));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

char *sub_12B250C(uint64_t a1, char *a2, int32x2_t *a3)
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
        v15 = v6 - 1;
        while (1)
        {
          v25 = v15 + 1;
          v16 = v15[1];
          if (v16 < 0)
          {
            v17 = (v15[2] << 7) + v16;
            v16 = (v17 - 128);
            if (v15[2] < 0)
            {
              v15 = sub_19587DC((v15 + 1), (v17 - 128));
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

          v25 = v15;
          v19 = *(a1 + 24);
          if (v19 == *(a1 + 28))
          {
            v20 = v19 + 1;
            sub_1959094((a1 + 24), v19 + 1);
            *(*(a1 + 32) + 8 * v19) = v16;
            v15 = v25;
          }

          else
          {
            *(*(a1 + 32) + 8 * v19) = v16;
            v20 = v19 + 1;
          }

          *(a1 + 24) = v20;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 16)
          {
            goto LABEL_39;
          }
        }
      }

      if (v7 == 18)
      {
        v14 = sub_1958928((a1 + 24), v6, a3);
        goto LABEL_38;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 40);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_16F5828(v23);
        *(a1 + 40) = v21;
        v6 = v25;
      }

      v14 = sub_21F4D60(a3, v21, v6);
      goto LABEL_38;
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
LABEL_38:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_39:
    ;
  }

  return v25;
}

char *sub_12B2744(uint64_t a1, char *a2, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v5 = *(a1 + 40);
    *a2 = 10;
    v6 = *(v5 + 44);
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      v7 = sub_19575D0(v6, a2 + 1);
    }

    else
    {
      v7 = a2 + 2;
    }

    a2 = sub_16E5070(v5, v7, a3);
  }

  v8 = *(a1 + 24);
  if (v8 < 1)
  {
    v11 = a2;
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v10 = *(*(a1 + 32) + 8 * i);
      *a2 = 16;
      a2[1] = v10;
      if (v10 > 0x7F)
      {
        a2[1] = v10 | 0x80;
        v12 = v10 >> 7;
        a2[2] = v10 >> 7;
        v11 = a2 + 3;
        if (v10 >= 0x4000)
        {
          LOBYTE(v13) = a2[2];
          do
          {
            *(v11 - 1) = v13 | 0x80;
            v13 = v12 >> 7;
            *v11++ = v12 >> 7;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
        }
      }

      else
      {
        v11 = a2 + 2;
      }

      a2 = v11;
    }
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

uint64_t sub_12B28FC(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24)) + *(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = sub_16E51F0(*(a1 + 40));
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

  *(a1 + 20) = v2;
  return v2;
}

void sub_12B298C(uint64_t a1, uint64_t a2)
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

  if (*(a2 + 16))
  {
    v8 = *(a2 + 40);
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
      v8 = *(a2 + 40);
    }

    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &off_277E5E8;
    }

    sub_16E527C(v9, v12);
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_12B2A84(uint64_t a1)
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

void *sub_12B2AC4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E5CA0(a1 + 5);
  sub_12E5C1C(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12B2B50(void *a1)
{
  sub_12B2AC4(a1);

  operator delete();
}

uint64_t sub_12B2B88(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12B1FA0(v4);
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
      result = sub_16EEC04(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_12B2C2C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  if ((sub_195ADC0(a3, &v26, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v26 + 1;
      v7 = *v26;
      if (*v26 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(v26, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = v26 + 2;
        }
      }

      v26 = v6;
      if (v7 >> 3 == 100)
      {
        if (v7 == 34)
        {
          v14 = v6 - 2;
          while (1)
          {
            v15 = (v14 + 2);
            v26 = v14 + 2;
            v16 = *(a1 + 56);
            if (v16 && (v17 = *(a1 + 48), v17 < *v16))
            {
              *(a1 + 48) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = sub_16F6038(*(a1 + 40));
              v18 = sub_19593CC(a1 + 40, v19);
              v15 = v26;
            }

            v14 = sub_21F5B70(a3, v18, v15);
            v26 = v14;
            if (!v14)
            {
              return 0;
            }

            if (*a3 <= v14 || *v14 != 1698)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = (v20 + 1);
          v26 = v20 + 1;
          v22 = *(a1 + 32);
          if (v22 && (v23 = *(a1 + 24), v23 < *v22))
          {
            *(a1 + 24) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_12B3A4C(*(a1 + 16));
            v24 = sub_19593CC(a1 + 16, v25);
            v21 = v26;
          }

          v20 = sub_21F5AE0(a3, v24, v21);
          v26 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_38;
          }
        }
      }

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
        v6 = v26;
      }

      v26 = sub_1952690(v7, v13, v6, a3);
      if (!v26)
      {
        return 0;
      }

LABEL_38:
      if (sub_195ADC0(a3, &v26, a3[11].i32[1]))
      {
        return v26;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return v26;
    }

    return 0;
  }

  return v26;
}

char *sub_12B2E60(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_12B2140(v8, v10, a3);
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
      *__dst = 1698;
      v14 = *(v13 + 20);
      __dst[2] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 2);
      }

      else
      {
        v15 = __dst + 3;
      }

      __dst = sub_16EEE1C(v13, v15, a3);
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v19)
  {
    v21 = v19;
    memcpy(__dst, v20, v19);
    __dst += v21;
    return __dst;
  }

  return sub_1957130(a3, v20, v19, __dst);
}

uint64_t sub_12B3024(uint64_t a1)
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
      v7 = sub_12B224C(v6);
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
  v9 = v2 + 2 * v8;
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
      v14 = sub_16EEF64(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
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

    v9 += v18;
  }

  *(a1 + 64) = v9;
  return v9;
}

void sub_12B311C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_12E5DA8((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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
    sub_12E5E34((a1 + 40), v11, (v10 + 8), v9, **(a1 + 56) - *(a1 + 48));
    v12 = *(a1 + 48) + v9;
    *(a1 + 48) = v12;
    v13 = *(a1 + 56);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_12B3234(uint64_t a1)
{
  if (!sub_12B329C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16EF064(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_12B329C(uint64_t a1)
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
      result = sub_16E5370(*(v3 + 24));
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

void *sub_12B3308(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E5D24(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12B3388(void *a1)
{
  sub_12B3308(a1);

  operator delete();
}

unsigned __int8 *sub_12B33C0(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_12B24AC(v4);
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

char *sub_12B3444(uint64_t a1, char *a2, int32x2_t *a3)
{
  v26 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v26, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v26 + 1;
    v7 = *v26;
    if (*v26 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v26, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v26 + 2;
      }
    }

    v26 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v14 = v6 - 1;
        while (1)
        {
          v15 = (v14 + 1);
          v26 = v14 + 1;
          v16 = *(a1 + 40);
          if (v16 && (v17 = *(a1 + 32), v17 < *v16))
          {
            *(a1 + 32) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            v19 = sub_12B3AC4(*(a1 + 24));
            v18 = sub_19593CC(a1 + 24, v19);
            v15 = v26;
          }

          v14 = sub_21F5C00(a3, v18, v15);
          v26 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_36;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v20 = v6 + 1;
      v21 = *v6;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      v22 = *v20;
      v23 = (v22 << 7) + v21;
      LODWORD(v21) = v23 - 128;
      if (v22 < 0)
      {
        v26 = sub_19587DC(v6, (v23 - 128));
        if (!v26)
        {
          return 0;
        }

        LODWORD(v21) = v24;
      }

      else
      {
        v20 = v6 + 2;
LABEL_33:
        v26 = v20;
      }

      if (sub_14CB318(v21))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v21;
      }

      else
      {
        sub_12E8450();
      }

      continue;
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
        return v26;
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
      v6 = v26;
    }

    v26 = sub_1952690(v7, v13, v6, a3);
    if (!v26)
    {
      return 0;
    }

LABEL_36:
    ;
  }

  return v26;
}

char *sub_12B365C(uint64_t a1, char *__dst, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 48);
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

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v5 = 18;
      v13 = *(v12 + 20);
      v5[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v5 + 1);
      }

      else
      {
        v14 = v5 + 2;
      }

      v5 = sub_12B2744(v12, v14, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v5;
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

  if (*a3 - v5 >= v18)
  {
    v20 = v18;
    memcpy(v5, v19, v18);
    v5 += v20;
    return v5;
  }

  return sub_1957130(a3, v19, v18, v5);
}

uint64_t sub_12B3820(uint64_t a1)
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
      v7 = sub_12B28FC(v6);
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
    v8 = *(a1 + 48);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v9;
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

void sub_12B3900(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E5EB0((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_12B39E0(uint64_t a1)
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
      result = sub_16E5370(*(v3 + 40));
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

void *sub_12B3A4C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26CEEA0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_12B3AC4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CEF20;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = 0;
  return result;
}

uint64_t sub_12B3B5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CEFA0;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_12B3C00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26CF020;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_12B3CA8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12B3D2C(void *a1)
{
  sub_12B3CA8(a1);

  operator delete();
}

uint64_t sub_12B3D64(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0x3FF0000000000000;
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

char *sub_12B3D98(uint64_t a1, char *a2, int32x2_t *a3)
{
  v40 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v40, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v40 + 1;
    v8 = *v40;
    if (*v40 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v40, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v40 + 2;
      }
    }

    v40 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0x14)
    {
      break;
    }

    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_66;
      }

      v5 |= 1u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_34:
        v40 = v20;
        *(a1 + 56) = v19 != 0;
        goto LABEL_74;
      }

      v31 = sub_19587DC(v7, v19);
      v40 = v31;
      *(a1 + 56) = v32 != 0;
      if (!v31)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (v11 != 19)
      {
        if (v11 == 20)
        {
          if (v8 == 160)
          {
            v12 = v7 - 2;
            while (1)
            {
              v40 = v12 + 2;
              v13 = v12[2];
              if ((v13 & 0x8000000000000000) != 0)
              {
                v13 = (v12[3] << 7) + v13 - 128;
                if (v12[3] < 0)
                {
                  v12 = sub_19587DC((v12 + 2), v13);
                }

                else
                {
                  v12 += 4;
                }
              }

              else
              {
                v12 += 3;
              }

              v40 = v12;
              v14 = -(v13 & 1) ^ (v13 >> 1);
              v15 = *(a1 + 24);
              if (v15 == *(a1 + 28))
              {
                v16 = v15 + 1;
                sub_1959094((a1 + 24), v15 + 1);
                *(*(a1 + 32) + 8 * v15) = v14;
                v12 = v40;
              }

              else
              {
                *(*(a1 + 32) + 8 * v15) = v14;
                v16 = v15 + 1;
              }

              *(a1 + 24) = v16;
              if (!v12)
              {
                goto LABEL_79;
              }

              if (*a3 <= v12 || *v12 != 416)
              {
                goto LABEL_74;
              }
            }
          }

          if (v8 == 162)
          {
            v35 = (a1 + 24);
LABEL_65:
            v36 = sub_1958958(v35, v7, a3);
LABEL_73:
            v40 = v36;
            if (!v36)
            {
              goto LABEL_79;
            }

            goto LABEL_74;
          }
        }

        goto LABEL_66;
      }

      if (v8 != 152)
      {
        goto LABEL_66;
      }

      v5 |= 2u;
      v28 = v7 + 1;
      v27 = *v7;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_53;
      }

      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v28 = v7 + 2;
LABEL_53:
        v40 = v28;
        *(a1 + 57) = v27 != 0;
        goto LABEL_74;
      }

      v33 = sub_19587DC(v7, v27);
      v40 = v33;
      *(a1 + 57) = v34 != 0;
      if (!v33)
      {
        goto LABEL_79;
      }
    }

LABEL_74:
    if (sub_195ADC0(a3, &v40, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 21)
  {
    if (v11 == 22)
    {
      if (v8 != 177)
      {
        goto LABEL_66;
      }

      v30 = *v7;
      v17 = v7 + 8;
      v5 |= 4u;
      *(a1 + 64) = v30;
    }

    else
    {
      if (v11 != 23 || v8 != 185)
      {
        goto LABEL_66;
      }

      v18 = *v7;
      v17 = v7 + 8;
      v5 |= 8u;
      *(a1 + 72) = v18;
    }

    v40 = v17;
    goto LABEL_74;
  }

  if (v8 == 168)
  {
    v22 = v7 - 2;
    while (1)
    {
      v40 = v22 + 2;
      v23 = v22[2];
      if ((v23 & 0x8000000000000000) != 0)
      {
        v23 = (v22[3] << 7) + v23 - 128;
        if (v22[3] < 0)
        {
          v22 = sub_19587DC((v22 + 2), v23);
        }

        else
        {
          v22 += 4;
        }
      }

      else
      {
        v22 += 3;
      }

      v40 = v22;
      v24 = -(v23 & 1) ^ (v23 >> 1);
      v25 = *(a1 + 40);
      if (v25 == *(a1 + 44))
      {
        v26 = v25 + 1;
        sub_1959094((a1 + 40), v25 + 1);
        *(*(a1 + 48) + 8 * v25) = v24;
        v22 = v40;
      }

      else
      {
        *(*(a1 + 48) + 8 * v25) = v24;
        v26 = v25 + 1;
      }

      *(a1 + 40) = v26;
      if (!v22)
      {
        goto LABEL_79;
      }

      if (*a3 <= v22 || *v22 != 424)
      {
        goto LABEL_74;
      }
    }
  }

  if (v8 == 170)
  {
    v35 = (a1 + 40);
    goto LABEL_65;
  }

LABEL_66:
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
      v7 = v40;
    }

    v36 = sub_1952690(v8, v39, v7, a3);
    goto LABEL_73;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_79:
  v40 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

char *sub_12B41B8(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 56);
    *a2 = 40;
    a2[1] = v6;
    a2 += 2;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 57);
    *a2 = 408;
    a2[2] = v7;
    a2 += 3;
  }

  v8 = *(a1 + 24);
  if (v8 < 1)
  {
    v12 = a2;
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v10 = *(*(a1 + 32) + 8 * i);
      *a2 = 416;
      v11 = (2 * v10) ^ (v10 >> 63);
      a2[2] = v11;
      if (v11 > 0x7F)
      {
        a2[2] = v11 | 0x80;
        v13 = v11 >> 7;
        a2[3] = v11 >> 7;
        v12 = a2 + 4;
        if (v11 >= 0x4000)
        {
          LOBYTE(v14) = a2[3];
          do
          {
            *(v12 - 1) = v14 | 0x80;
            v14 = v13 >> 7;
            *v12++ = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v12 = a2 + 3;
      }

      a2 = v12;
    }
  }

  v16 = *(a1 + 40);
  if (v16 < 1)
  {
    v20 = v12;
  }

  else
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v12)
      {
        v12 = sub_225EB68(a3, v12);
      }

      v18 = *(*(a1 + 48) + 8 * j);
      *v12 = 424;
      v19 = (2 * v18) ^ (v18 >> 63);
      v12[2] = v19;
      if (v19 > 0x7F)
      {
        v12[2] = v19 | 0x80;
        v21 = v19 >> 7;
        v12[3] = v19 >> 7;
        v20 = v12 + 4;
        if (v19 >= 0x4000)
        {
          LOBYTE(v12) = v12[3];
          do
          {
            *(v20 - 1) = v12 | 0x80;
            v12 = (v21 >> 7);
            *v20++ = v21 >> 7;
            v22 = v21 >> 14;
            v21 >>= 7;
          }

          while (v22);
        }
      }

      else
      {
        v20 = v12 + 3;
      }

      v12 = v20;
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v23 = *(a1 + 64);
    *v20 = 433;
    *(v20 + 2) = v23;
    v20 += 10;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v24 = *(a1 + 72);
    *v20 = 441;
    *(v20 + 2) = v24;
    v20 += 10;
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v20;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  if (*a3 - v20 >= v28)
  {
    v30 = v28;
    memcpy(v20, v29, v28);
    v20 += v30;
    return v20;
  }

  return sub_1957130(a3, v29, v28, v20);
}

uint64_t sub_12B44A8(uint64_t a1)
{
  v2 = sub_1959F64((a1 + 24));
  v3 = *(a1 + 24);
  v4 = sub_1959F64((a1 + 40));
  v5 = *(a1 + 16);
  v6 = v4 + v2 + 2 * (*(a1 + 40) + v3) + 2 * (v5 & 1);
  if ((v5 & 2) != 0)
  {
    v6 += 3;
  }

  if ((v5 & 4) != 0)
  {
    v6 += 10;
  }

  if ((v5 & 8) != 0)
  {
    v6 += 10;
  }

  if ((v5 & 0xF) != 0)
  {
    result = v6;
  }

  else
  {
    result = v4 + v2 + 2 * (*(a1 + 40) + v3);
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

std::string *sub_12B4558(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1959094(&result[1], data_low + v4);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((size + 8 * data_low), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[2]);
    sub_1959094(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    data = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&data[8 * v9], *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 16);
  if ((v11 & 0xF) != 0)
  {
    if (v11)
    {
      v3[2].__r_.__value_.__s.__data_[8] = *(a2 + 56);
      if ((v11 & 2) == 0)
      {
LABEL_8:
        if ((v11 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_8;
    }

    v3[2].__r_.__value_.__s.__data_[9] = *(a2 + 57);
    if ((v11 & 4) == 0)
    {
LABEL_9:
      if ((v11 & 8) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v11;
        goto LABEL_12;
      }

LABEL_10:
      v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_18:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v11 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12B46B0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956ABC((a1 + 6));
  sub_1956ABC((a1 + 4));
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12B473C(void *a1)
{
  sub_12B46B0(a1);

  operator delete();
}

uint64_t sub_12B4774(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_12B4790(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
  {
    return v31;
  }

  while (1)
  {
    v6 = v31 + 1;
    v7 = *v31;
    if (*v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v31 + 2;
      }
    }

    v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 29)
      {
        v23 = v6 - 1;
        v24 = *(a1 + 48);
        do
        {
          v25 = v23 + 1;
          v31 = v23 + 1;
          v26 = *(v23 + 1);
          if (v24 == *(a1 + 52))
          {
            sub_1958E5C((a1 + 48), v24 + 1);
            *(*(a1 + 56) + 4 * v24) = v26;
            v25 = v31;
          }

          else
          {
            *(*(a1 + 56) + 4 * v24) = v26;
          }

          *(a1 + 48) = ++v24;
          v23 = v25 + 4;
          v31 = v25 + 4;
        }

        while (*a3 > (v25 + 4) && *v23 == 29);
        goto LABEL_60;
      }

      if (v7 == 26)
      {
        v27 = sub_1958988(a1 + 48, v6, a3);
        goto LABEL_59;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 16)
      {
        v17 = v6 - 1;
        while (1)
        {
          v31 = v17 + 1;
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

          v31 = v17;
          v21 = *(a1 + 32);
          if (v21 == *(a1 + 36))
          {
            v22 = v21 + 1;
            sub_1958E5C((a1 + 32), v21 + 1);
            *(*(a1 + 40) + 4 * v21) = v18;
            v17 = v31;
          }

          else
          {
            *(*(a1 + 40) + 4 * v21) = v18;
            v22 = v21 + 1;
          }

          *(a1 + 32) = v22;
          if (!v17)
          {
            return 0;
          }

          if (*a3 <= v17 || *v17 != 16)
          {
            goto LABEL_60;
          }
        }
      }

      if (v7 == 18)
      {
        v27 = sub_1958918((a1 + 32), v6, a3);
        goto LABEL_59;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 8)
      {
        v11 = v6 - 1;
        while (1)
        {
          v31 = v11 + 1;
          v12 = v11[1];
          if (v12 < 0)
          {
            v13 = (v11[2] << 7) + v12;
            v12 = (v13 - 128);
            if (v11[2] < 0)
            {
              v11 = sub_19587DC((v11 + 1), (v13 - 128));
              v12 = v14;
            }

            else
            {
              v11 += 3;
            }
          }

          else
          {
            v11 += 2;
          }

          v31 = v11;
          v15 = *(a1 + 16);
          if (v15 == *(a1 + 20))
          {
            v16 = v15 + 1;
            sub_1959094((a1 + 16), v15 + 1);
            *(*(a1 + 24) + 8 * v15) = v12;
            v11 = v31;
          }

          else
          {
            *(*(a1 + 24) + 8 * v15) = v12;
            v16 = v15 + 1;
          }

          *(a1 + 16) = v16;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 8)
          {
            goto LABEL_60;
          }
        }
      }

      if (v7 == 10)
      {
        v27 = sub_1958928((a1 + 16), v6, a3);
        goto LABEL_59;
      }
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v6 = v31;
    }

    v27 = sub_1952690(v7, v30, v6, a3);
LABEL_59:
    v31 = v27;
    if (!v27)
    {
      return 0;
    }

LABEL_60:
    if (sub_195ADC0(a3, &v31, a3[11].i32[1]))
    {
      return v31;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v31;
  }

  return 0;
}

char *sub_12B4B18(uint64_t a1, char *a2, _DWORD *a3)
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

  v12 = *(a1 + 32);
  if (v12 < 1)
  {
    v15 = v8;
  }

  else
  {
    for (j = 0; j != v12; ++j)
    {
      if (*a3 <= v8)
      {
        v8 = sub_225EB68(a3, v8);
      }

      v14 = *(*(a1 + 40) + 4 * j);
      *v8 = 16;
      v8[1] = v14;
      if (v14 > 0x7F)
      {
        v8[1] = v14 | 0x80;
        v16 = v14 >> 7;
        v8[2] = v14 >> 7;
        v15 = v8 + 3;
        if (v14 >= 0x4000)
        {
          LOBYTE(v8) = v8[2];
          do
          {
            *(v15 - 1) = v8 | 0x80;
            LODWORD(v8) = v16 >> 7;
            *v15++ = v16 >> 7;
            v17 = v16 >> 14;
            v16 >>= 7;
          }

          while (v17);
        }
      }

      else
      {
        v15 = v8 + 2;
      }

      v8 = v15;
    }
  }

  v18 = *(a1 + 48);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 4 * v18;
    do
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v21 = *(*(a1 + 56) + v19);
      *v15 = 29;
      *(v15 + 1) = v21;
      v15 += 5;
      v19 += 4;
    }

    while (v20 != v19);
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

  if (*a3 - v15 >= v25)
  {
    v27 = v25;
    memcpy(v15, v26, v25);
    v15 += v27;
    return v15;
  }

  return sub_1957130(a3, v26, v25, v15);
}

unint64_t sub_12B4D6C(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 16));
  v3 = *(a1 + 16);
  result = v2 + sub_1959E5C((a1 + 32)) + v3 + *(a1 + 32) + *(a1 + 48) + 4 * *(a1 + 48);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    result += v7;
  }

  *(a1 + 64) = result;
  return result;
}

std::string *sub_12B4DF0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__r.__words[2];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1959094(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[8 * v6], *(a2 + 24), 8 * *(a2 + 16));
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    v9 = SLODWORD(v3[1].__r_.__value_.__r.__words[1]);
    sub_1958E5C(&v3[1].__r_.__value_.__r.__words[1], v9 + v8);
    v10 = v3[1].__r_.__value_.__r.__words[2];
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) += *(a2 + 32);
    result = memcpy((v10 + 4 * v9), *(a2 + 40), 4 * *(a2 + 32));
  }

  v11 = *(a2 + 48);
  if (v11)
  {
    data_low = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    sub_1958E5C(&v3[2], data_low + v11);
    size = v3[2].__r_.__value_.__l.__size_;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((size + 4 * data_low), *(a2 + 56), 4 * *(a2 + 48));
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_12B4F34(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12E6078(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_12B4FB4(void *a1)
{
  sub_12B4F34(a1);

  operator delete();
}

uint64_t sub_12B4FEC(uint64_t a1)
{
  result = sub_12E6010(a1 + 16);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_12B503C(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_12CFE5C(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F5C90(a3, v16, v13);
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

char *sub_12B51CC(uint64_t a1, char *__dst, _DWORD *a3)
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
      v9 = *(v8 + 64);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_12B4B18(v8, v10, a3);
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