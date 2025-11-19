char *sub_15E4AB8(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 96);
    *a2 = 16;
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 104);
    *v6 = 24;
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 108);
    *v11 = 32;
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 72);
    *v15 = 42;
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

    v15 = sub_15E1F24(v19, v21, a3);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v23 = *(a1 + 112);
    *v15 = 48;
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
          v15 = (v24 >> 7);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 116);
    *v22 = 56;
    v22[1] = v27;
    if (v27 > 0x7F)
    {
      v22[1] = v27 | 0x80;
      v28 = v27 >> 7;
      v22[2] = v27 >> 7;
      v26 = v22 + 3;
      if (v27 >= 0x4000)
      {
        LOBYTE(v22) = v22[2];
        do
        {
          *(v26 - 1) = v22 | 0x80;
          v22 = (v28 >> 7);
          *v26++ = v28 >> 7;
          v29 = v28 >> 14;
          v28 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v26 = v22 + 2;
    }
  }

  else
  {
    v26 = v22;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v31 = *(a1 + 120);
    *v26 = 64;
    v26[1] = v31;
    v26 += 2;
    if ((v5 & 4) == 0)
    {
LABEL_55:
      if ((v5 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_67:
      v26 = sub_128AEEC(a3, 10, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v26);
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_68;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_55;
  }

  if (*a3 <= v26)
  {
    v26 = sub_225EB68(a3, v26);
  }

  v32 = *(a1 + 80);
  *v26 = 74;
  v33 = *(v32 + 20);
  v26[1] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, v26 + 1);
  }

  else
  {
    v34 = v26 + 2;
  }

  v26 = sub_15E1F24(v32, v34, a3);
  if (v5)
  {
    goto LABEL_67;
  }

LABEL_56:
  if ((v5 & 0x400) == 0)
  {
LABEL_57:
    v30 = v26;
    goto LABEL_75;
  }

LABEL_68:
  if (*a3 <= v26)
  {
    v26 = sub_225EB68(a3, v26);
  }

  v35 = *(a1 + 124);
  *v26 = 88;
  v26[1] = v35;
  if (v35 > 0x7F)
  {
    v26[1] = v35 | 0x80;
    v36 = v35 >> 7;
    v26[2] = v35 >> 7;
    v30 = v26 + 3;
    if (v35 >= 0x4000)
    {
      LOBYTE(v37) = v26[2];
      do
      {
        *(v30 - 1) = v37 | 0x80;
        v37 = v36 >> 7;
        *v30++ = v36 >> 7;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
    }
  }

  else
  {
    v30 = v26 + 2;
  }

LABEL_75:
  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v40 = *(a1 + 128);
    *v30 = 96;
    v30[1] = v40;
    if (v40 > 0x7F)
    {
      v30[1] = v40 | 0x80;
      v41 = v40 >> 7;
      v30[2] = v40 >> 7;
      v39 = v30 + 3;
      if (v40 >= 0x4000)
      {
        LOBYTE(v42) = v30[2];
        do
        {
          *(v39 - 1) = v42 | 0x80;
          v42 = v41 >> 7;
          *v39++ = v41 >> 7;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v39 = v30 + 2;
    }
  }

  else
  {
    v39 = v30;
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v39)
    {
      v39 = sub_225EB68(a3, v39);
    }

    v45 = *(a1 + 132);
    *v39 = 104;
    v39[1] = v45;
    if (v45 > 0x7F)
    {
      v39[1] = v45 | 0x80;
      v46 = v45 >> 7;
      v39[2] = v45 >> 7;
      v44 = v39 + 3;
      if (v45 >= 0x4000)
      {
        LOBYTE(v39) = v39[2];
        do
        {
          *(v44 - 1) = v39 | 0x80;
          LODWORD(v39) = v46 >> 7;
          *v44++ = v46 >> 7;
          v47 = v46 >> 14;
          v46 >>= 7;
        }

        while (v47);
      }
    }

    else
    {
      v44 = v39 + 2;
    }
  }

  else
  {
    v44 = v39;
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v44)
    {
      v44 = sub_225EB68(a3, v44);
    }

    v49 = *(a1 + 144);
    *v44 = 112;
    v44[1] = v49;
    if (v49 > 0x7F)
    {
      v44[1] = v49 | 0x80;
      v50 = v49 >> 7;
      v44[2] = v49 >> 7;
      v48 = v44 + 3;
      if (v49 >= 0x4000)
      {
        LOBYTE(v44) = v44[2];
        do
        {
          *(v48 - 1) = v44 | 0x80;
          LODWORD(v44) = v50 >> 7;
          *v48++ = v50 >> 7;
          v51 = v50 >> 14;
          v50 >>= 7;
        }

        while (v51);
      }
    }

    else
    {
      v48 = v44 + 2;
    }
  }

  else
  {
    v48 = v44;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v52 = *(a1 + 88);
    *v48 = 122;
    v53 = *(v52 + 20);
    v48[1] = v53;
    if (v53 > 0x7F)
    {
      v54 = sub_19575D0(v53, v48 + 1);
    }

    else
    {
      v54 = v48 + 2;
    }

    v48 = sub_15E3540(v52, v54, a3);
  }

  v55 = *(a1 + 48);
  if (v55 < 1)
  {
    v58 = v48;
  }

  else
  {
    for (i = 0; i != v55; ++i)
    {
      if (*a3 <= v48)
      {
        v48 = sub_225EB68(a3, v48);
      }

      v57 = *(*(a1 + 56) + 4 * i);
      *v48 = 384;
      v48[2] = v57;
      if (v57 > 0x7F)
      {
        v48[2] = v57 | 0x80;
        v59 = v57 >> 7;
        v48[3] = v57 >> 7;
        v58 = v48 + 4;
        if (v57 >= 0x4000)
        {
          LOBYTE(v48) = v48[3];
          do
          {
            *(v58 - 1) = v48 | 0x80;
            LODWORD(v48) = v59 >> 7;
            *v58++ = v59 >> 7;
            v60 = v59 >> 14;
            v59 >>= 7;
          }

          while (v60);
        }
      }

      else
      {
        v58 = v48 + 3;
      }

      v48 = v58;
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v58)
    {
      v58 = sub_225EB68(a3, v58);
    }

    v62 = *(a1 + 136);
    *v58 = 392;
    v58[2] = v62;
    if (v62 > 0x7F)
    {
      v58[2] = v62 | 0x80;
      v63 = v62 >> 7;
      v58[3] = v62 >> 7;
      v61 = v58 + 4;
      if (v62 >= 0x4000)
      {
        LOBYTE(v58) = v58[3];
        do
        {
          *(v61 - 1) = v58 | 0x80;
          v58 = (v63 >> 7);
          *v61++ = v63 >> 7;
          v64 = v63 >> 14;
          v63 >>= 7;
        }

        while (v64);
      }
    }

    else
    {
      v61 = v58 + 3;
    }
  }

  else
  {
    v61 = v58;
  }

  if (*(a1 + 26))
  {
    v61 = sub_1953428(a1 + 16, 950, 1000, v61, a3);
  }

  v65 = *(a1 + 8);
  if ((v65 & 1) == 0)
  {
    return v61;
  }

  v67 = v65 & 0xFFFFFFFFFFFFFFFCLL;
  v68 = *(v67 + 31);
  if (v68 < 0)
  {
    v69 = *(v67 + 8);
    v68 = *(v67 + 16);
  }

  else
  {
    v69 = (v67 + 8);
  }

  if (*a3 - v61 >= v68)
  {
    v70 = v68;
    memcpy(v61, v69, v68);
    v61 += v70;
    return v61;
  }

  return sub_1957130(a3, v69, v68, v61);
}

uint64_t sub_15E5308(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959E5C((a1 + 48)) + v2 + 2 * *(a1 + 48);
  v4 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_30;
  }

  if (v4)
  {
    v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v8 = sub_15E2148(*(a1 + 72));
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
  v9 = sub_15E2148(*(a1 + 80));
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
  v10 = sub_15E378C(*(a1 + 88));
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
  v3 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_18:
  v11 = *(a1 + 104);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v12;
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_22:
  v13 = *(a1 + 108);
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
LABEL_26:
    v15 = *(a1 + 112);
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

LABEL_30:
  if ((v4 & 0x7F00) == 0)
  {
    goto LABEL_42;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a1 + 116);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v18;
  }

  v3 += (v4 >> 8) & 2;
  if ((v4 & 0x400) != 0)
  {
    v21 = *(a1 + 124);
    v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v21 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 11;
    }

    v3 += v23;
    if ((v4 & 0x800) == 0)
    {
LABEL_38:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_52;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_38;
  }

  v24 = *(a1 + 128);
  v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v24 >= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 11;
  }

  v3 += v26;
  if ((v4 & 0x1000) == 0)
  {
LABEL_39:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_53;
  }

LABEL_52:
  v3 += ((9 * (__clz(*(a1 + 132) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x2000) == 0)
  {
LABEL_40:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_53:
  v3 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 2;
  if ((v4 & 0x4000) != 0)
  {
LABEL_41:
    v3 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_42:
  v19 = *(a1 + 8);
  if (v19)
  {
    v27 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v3 += v28;
  }

  *(a1 + 44) = v3;
  return v3;
}

void sub_15E5674(uint64_t a1, uint64_t a2)
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
  if (v8)
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
      *(a1 + 40) |= 2u;
      v13 = *(a1 + 72);
      if (!v13)
      {
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_15ED520(v15);
        *(a1 + 72) = v13;
      }

      if (*(a2 + 72))
      {
        v16 = *(a2 + 72);
      }

      else
      {
        v16 = &off_2779950;
      }

      sub_15E2260(v13, v16);
      if ((v8 & 4) == 0)
      {
LABEL_10:
        if ((v8 & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_47;
      }
    }

    else if ((v8 & 4) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 40) |= 4u;
    v17 = *(a1 + 80);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_15ED520(v19);
      *(a1 + 80) = v17;
    }

    if (*(a2 + 80))
    {
      v20 = *(a2 + 80);
    }

    else
    {
      v20 = &off_2779950;
    }

    sub_15E2260(v17, v20);
    if ((v8 & 8) == 0)
    {
LABEL_11:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_55;
    }

LABEL_47:
    *(a1 + 40) |= 8u;
    v21 = *(a1 + 88);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_15ED6C8(v23);
      *(a1 + 88) = v21;
    }

    if (*(a2 + 88))
    {
      v24 = *(a2 + 88);
    }

    else
    {
      v24 = &off_27799F0;
    }

    sub_15E388C(v21, v24);
    if ((v8 & 0x10) == 0)
    {
LABEL_12:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 96) = *(a2 + 96);
    if ((v8 & 0x20) == 0)
    {
LABEL_13:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(a1 + 104) = *(a2 + 104);
    if ((v8 & 0x40) == 0)
    {
LABEL_14:
      if ((v8 & 0x80) == 0)
      {
LABEL_16:
        *(a1 + 40) |= v8;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_16;
    }

LABEL_57:
    *(a1 + 108) = *(a2 + 108);
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v8 & 0x7F00) == 0)
  {
    goto LABEL_27;
  }

  if ((v8 & 0x100) != 0)
  {
    *(a1 + 116) = *(a2 + 116);
    if ((v8 & 0x200) == 0)
    {
LABEL_20:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_61;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  *(a1 + 120) = *(a2 + 120);
  if ((v8 & 0x400) == 0)
  {
LABEL_21:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a1 + 124) = *(a2 + 124);
  if ((v8 & 0x800) == 0)
  {
LABEL_22:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a1 + 128) = *(a2 + 128);
  if ((v8 & 0x1000) == 0)
  {
LABEL_23:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

LABEL_64:
    *(a1 + 136) = *(a2 + 136);
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_63:
  *(a1 + 132) = *(a2 + 132);
  if ((v8 & 0x2000) != 0)
  {
    goto LABEL_64;
  }

LABEL_24:
  if ((v8 & 0x4000) != 0)
  {
LABEL_25:
    *(a1 + 144) = *(a2 + 144);
  }

LABEL_26:
  *(a1 + 40) |= v8;
LABEL_27:
  sub_225EA0C(a1 + 16, a2 + 16);
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15E5934(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26F59E0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void sub_15E599C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15E59CC(void *a1)
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

void sub_15E5A48(void *a1)
{
  sub_15E59CC(a1);

  operator delete();
}

unsigned __int8 *sub_15E5A80(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  if ((*(a1 + 40) & 7) != 0)
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

char *sub_15E5AE8(uint64_t a1, char *a2, int32x2_t *a3)
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

    v5 |= 4u;
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
      v32 = v18;
      *(a1 + 56) = v19;
      goto LABEL_37;
    }

    v30 = sub_1958770(v7, v19);
    v32 = v30;
    *(a1 + 56) = v31;
    if (!v30)
    {
      goto LABEL_48;
    }

LABEL_37:
    if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
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

    v5 |= 2u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_23:
      v32 = v15;
      *(a1 + 52) = v16;
      goto LABEL_37;
    }

    v26 = sub_1958770(v7, v16);
    v32 = v26;
    *(a1 + 52) = v27;
    if (!v26)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v21 = v7 + 1;
    v22 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v23 = *v21;
    v22 = v22 + (v23 << 7) - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_32:
      v32 = v21;
      *(a1 + 48) = v22;
      goto LABEL_37;
    }

    v28 = sub_1958770(v7, v22);
    v32 = v28;
    *(a1 + 48) = v29;
    if (!v28)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
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
      v24 = *(a1 + 8);
      if (v24)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v25 = sub_11F1920((a1 + 8));
        v7 = v32;
      }

      v14 = sub_1952690(v8, v25, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_2779AC8, (a1 + 8), a3);
    }

    v32 = v14;
    if (!v14)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v32 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v32;
}

char *sub_15E5D6C(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if (v5)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 56);
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

  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 950, 1000, v15, a3);
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

uint64_t sub_15E5FC8(uint64_t a1)
{
  result = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    result += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) != 0)
    {
LABEL_5:
      result += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_6:
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

  *(a1 + 44) = result;
  return result;
}

void sub_15E60A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 40) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 56) = *(a2 + 56);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 52) = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15E6168(uint64_t a1)
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

  sub_15E61F4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_15E61F4(uint64_t (***result)()))()
{
  if (result != &off_2779B08)
  {
    v1 = result;
    if (result[6])
    {
      sub_16E4E08();
      operator delete();
    }

    v2 = result[7];
    if (v2)
    {
      sub_15E1B34(v2);
      operator delete();
    }

    v3 = v1[8];
    if (v3)
    {
      sub_15E1B34(v3);
      operator delete();
    }

    v4 = v1[9];
    if (v4)
    {
      sub_15E2A58(v4);
      operator delete();
    }

    v5 = v1[10];
    if (v5)
    {
      sub_15E23A4(v5);
      operator delete();
    }

    if (v1[11])
    {
      sub_153BF18();
      operator delete();
    }

    result = v1[12];
    if (result)
    {
      sub_15E59CC(result);

      operator delete();
    }
  }

  return result;
}

void sub_15E6318(uint64_t a1)
{
  sub_15E6168(a1);

  operator delete();
}

uint64_t sub_15E6350(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    result = sub_16E4E44(*(a1 + 48));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_15E1C30(*(a1 + 56));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = sub_15E1C30(*(a1 + 64));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    result = sub_15E2450(*(a1 + 80));
    if ((v3 & 0x20) == 0)
    {
LABEL_8:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = sub_15E2848(*(a1 + 72));
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  result = sub_144E31C(*(a1 + 88));
  if ((v3 & 0x40) != 0)
  {
LABEL_9:
    result = sub_15E5A80(*(a1 + 96));
  }

LABEL_10:
  *(a1 + 104) = 0;
  if ((v3 & 0xFF00) != 0)
  {
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 112) = 0u;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 152) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_15E643C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v84 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v84, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v84 + 1);
    v8 = **v84;
    if (**v84 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v84, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v84 + 2);
      }
    }

    *v84 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_109;
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
          *v84 = v12;
          *(a1 + 104) = v11;
          goto LABEL_117;
        }

        v80 = sub_19587DC(v7, v11);
        *v84 = v80;
        *(a1 + 104) = v81;
        if (v80)
        {
          goto LABEL_117;
        }

        goto LABEL_139;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 1u;
        v50 = *(a1 + 48);
        if (!v50)
        {
          v51 = *(a1 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          v50 = sub_16F5828(v52);
          *(a1 + 48) = v50;
          v7 = *v84;
        }

        v20 = sub_21F4D60(a3, v50, v7);
        goto LABEL_116;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_109;
        }

        v5 |= 0x100u;
        v39 = (v7 + 1);
        v38 = *v7;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_56;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v76 = sub_19587DC(v7, v38);
          *v84 = v76;
          *(a1 + 112) = v77;
          if (!v76)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v39 = (v7 + 2);
LABEL_56:
          *v84 = v39;
          *(a1 + 112) = v38;
        }

        goto LABEL_117;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_109;
        }

        v5 |= 0x200u;
        v45 = (v7 + 1);
        v44 = *v7;
        if ((v44 & 0x8000000000000000) == 0)
        {
          goto LABEL_68;
        }

        v46 = *v45;
        v44 = (v46 << 7) + v44 - 128;
        if (v46 < 0)
        {
          v78 = sub_19587DC(v7, v44);
          *v84 = v78;
          *(a1 + 120) = v79;
          if (!v78)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v45 = (v7 + 2);
LABEL_68:
          *v84 = v45;
          *(a1 + 120) = v44;
        }

        goto LABEL_117;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_109;
        }

        v5 |= 0x400u;
        v30 = (v7 + 1);
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_40;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          v72 = sub_19587DC(v7, v29);
          *v84 = v72;
          *(a1 + 128) = v73;
          if (!v72)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v30 = (v7 + 2);
LABEL_40:
          *v84 = v30;
          *(a1 + 128) = v29;
        }

        goto LABEL_117;
      case 6u:
        if (v8 != 53)
        {
          goto LABEL_109;
        }

        v57 = *v7;
        v56 = v7 + 4;
        v5 |= 0x800u;
        *(a1 + 136) = v57;
        goto LABEL_95;
      case 7u:
        if (v8 != 61)
        {
          goto LABEL_109;
        }

        v61 = *v7;
        v56 = v7 + 4;
        v5 |= 0x1000u;
        *(a1 + 140) = v61;
LABEL_95:
        *v84 = v56;
        goto LABEL_117;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 2u;
        v47 = *(a1 + 56);
        if (v47)
        {
          goto LABEL_108;
        }

        v48 = *(a1 + 8);
        v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v49 = *v49;
        }

        v47 = sub_15ED520(v49);
        *(a1 + 56) = v47;
        goto LABEL_107;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 4u;
        v47 = *(a1 + 64);
        if (v47)
        {
          goto LABEL_108;
        }

        v65 = *(a1 + 8);
        v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
        if (v65)
        {
          v66 = *v66;
        }

        v47 = sub_15ED520(v66);
        *(a1 + 64) = v47;
LABEL_107:
        v7 = *v84;
LABEL_108:
        v20 = sub_2227A14(a3, v47, v7);
        goto LABEL_116;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 8u;
        v35 = *(a1 + 72);
        if (!v35)
        {
          v36 = *(a1 + 8);
          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v37 = *v37;
          }

          v35 = sub_15ED640(v37);
          *(a1 + 72) = v35;
          v7 = *v84;
        }

        v20 = sub_2227984(a3, v35, v7);
        goto LABEL_116;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 0x10u;
        v62 = *(a1 + 80);
        if (!v62)
        {
          v63 = *(a1 + 8);
          v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
          if (v63)
          {
            v64 = *v64;
          }

          v62 = sub_15ED5C4(v64);
          *(a1 + 80) = v62;
          v7 = *v84;
        }

        v20 = sub_2227AA4(a3, v62, v7);
        goto LABEL_116;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_109;
        }

        v21 = (v7 - 1);
        while (1)
        {
          v22 = (v21 + 1);
          *v84 = v21 + 1;
          v23 = *(a1 + 40);
          if (v23 && (v24 = *(a1 + 32), v24 < *v23))
          {
            *(a1 + 32) = v24 + 1;
            v25 = *&v23[2 * v24 + 2];
          }

          else
          {
            v26 = *(a1 + 24);
            if (!v26)
            {
              operator new();
            }

            *v28 = v27;
            v28[1] = sub_195A650;
            *v27 = 0;
            v27[1] = 0;
            v27[2] = 0;
            v25 = sub_19593CC(a1 + 24, v27);
            v22 = *v84;
          }

          v21 = sub_1958890(v25, v22, a3);
          *v84 = v21;
          if (!v21)
          {
            goto LABEL_139;
          }

          if (*a3 <= v21 || *v21 != 98)
          {
            goto LABEL_117;
          }
        }

      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_109;
        }

        v5 |= 0x2000u;
        v33 = (v7 + 1);
        v32 = *v7;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v74 = sub_19587DC(v7, v32);
          *v84 = v74;
          *(a1 + 144) = v75;
          if (!v74)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v33 = (v7 + 2);
LABEL_45:
          *v84 = v33;
          *(a1 + 144) = v32;
        }

        goto LABEL_117;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_109;
        }

        v5 |= 0x4000u;
        v59 = (v7 + 1);
        v58 = *v7;
        if ((v58 & 0x8000000000000000) == 0)
        {
          goto LABEL_92;
        }

        v60 = *v59;
        v58 = (v60 << 7) + v58 - 128;
        if (v60 < 0)
        {
          v82 = sub_19587DC(v7, v58);
          *v84 = v82;
          *(a1 + 152) = v83 != 0;
          if (!v82)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v59 = (v7 + 2);
LABEL_92:
          *v84 = v59;
          *(a1 + 152) = v58 != 0;
        }

        goto LABEL_117;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 0x20u;
        v17 = *(a1 + 88);
        if (!v17)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v17 = sub_1551A70(v19);
          *(a1 + 88) = v17;
          v7 = *v84;
        }

        v20 = sub_22030E0(a3, v17, v7);
        goto LABEL_116;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_109;
        }

        v42 = (v7 + 1);
        v41 = *v7;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_61;
        }

        v43 = *v42;
        v41 = (v43 << 7) + v41 - 128;
        if (v43 < 0)
        {
          *v84 = sub_19587DC(v7, v41);
          if (!*v84)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v42 = (v7 + 2);
LABEL_61:
          *v84 = v42;
        }

        if (v41 > 4)
        {
          sub_144E0FC();
        }

        else
        {
          *(a1 + 16) |= 0x8000u;
          *(a1 + 156) = v41;
        }

        goto LABEL_117;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_109;
        }

        v5 |= 0x10000u;
        v14 = (v7 + 1);
        v15 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v16 = *v14;
        v15 = v15 + (v16 << 7) - 128;
        if (v16 < 0)
        {
          v70 = sub_1958770(v7, v15);
          *v84 = v70;
          *(a1 + 160) = v71;
          if (!v70)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v14 = (v7 + 2);
LABEL_17:
          *v84 = v14;
          *(a1 + 160) = v15;
        }

        goto LABEL_117;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_109;
        }

        *(a1 + 16) |= 0x40u;
        v53 = *(a1 + 96);
        if (!v53)
        {
          v54 = *(a1 + 8);
          v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
          if (v54)
          {
            v55 = *v55;
          }

          v53 = sub_15ED844(v55);
          *(a1 + 96) = v53;
          v7 = *v84;
        }

        v20 = sub_22278F4(a3, v53, v7);
        goto LABEL_116;
      default:
LABEL_109:
        if (v8)
        {
          v67 = (v8 & 7) == 4;
        }

        else
        {
          v67 = 1;
        }

        if (!v67)
        {
          v68 = *(a1 + 8);
          if (v68)
          {
            v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v69 = sub_11F1920((a1 + 8));
            v7 = *v84;
          }

          v20 = sub_1952690(v8, v69, v7, a3);
LABEL_116:
          *v84 = v20;
          if (!v20)
          {
            goto LABEL_139;
          }

LABEL_117:
          if (sub_195ADC0(a3, v84, a3[11].i32[1]))
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
LABEL_139:
          *v84 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v84;
    }
  }
}

char *sub_15E6C1C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 104);
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

    v6 = sub_16E5070(v11, v13, a3);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 112);
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

    v19 = *(a1 + 120);
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

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 128);
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
        LOBYTE(v25) = v18[2];
        do
        {
          *(v22 - 1) = v25 | 0x80;
          v25 = v24 >> 7;
          *v22++ = v24 >> 7;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
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

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 136);
    *v22 = 53;
    *(v22 + 1) = v27;
    v22 += 5;
    if ((v5 & 0x1000) == 0)
    {
LABEL_46:
      if ((v5 & 2) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_57;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v28 = *(a1 + 140);
  *v22 = 61;
  *(v22 + 1) = v28;
  v22 += 5;
  if ((v5 & 2) == 0)
  {
LABEL_47:
    if ((v5 & 4) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_63;
  }

LABEL_57:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v29 = *(a1 + 56);
  *v22 = 66;
  v30 = *(v29 + 20);
  v22[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, v22 + 1);
  }

  else
  {
    v31 = v22 + 2;
  }

  v22 = sub_15E1F24(v29, v31, a3);
  if ((v5 & 4) == 0)
  {
LABEL_48:
    if ((v5 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_69;
  }

LABEL_63:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v32 = *(a1 + 64);
  *v22 = 74;
  v33 = *(v32 + 20);
  v22[1] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, v22 + 1);
  }

  else
  {
    v34 = v22 + 2;
  }

  v22 = sub_15E1F24(v32, v34, a3);
  if ((v5 & 8) == 0)
  {
LABEL_49:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_75;
  }

LABEL_69:
  if (*a3 <= v22)
  {
    v22 = sub_225EB68(a3, v22);
  }

  v35 = *(a1 + 72);
  *v22 = 82;
  v36 = *(v35 + 20);
  v22[1] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, v22 + 1);
  }

  else
  {
    v37 = v22 + 2;
  }

  v22 = sub_15E2E00(v35, v37, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_75:
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v38 = *(a1 + 80);
    *v22 = 90;
    v39 = *(v38 + 20);
    v22[1] = v39;
    if (v39 > 0x7F)
    {
      v40 = sub_19575D0(v39, v22 + 1);
    }

    else
    {
      v40 = v22 + 2;
    }

    v22 = sub_15E262C(v38, v40, a3);
  }

LABEL_81:
  v41 = *(a1 + 32);
  if (v41 >= 1)
  {
    v42 = 8;
    do
    {
      v43 = *(*(a1 + 40) + v42);
      v44 = *(v43 + 23);
      if (v44 < 0 && (v44 = v43[1], v44 > 127) || *a3 - v22 + 14 < v44)
      {
        v22 = sub_1957480(a3, 12, v43, v22);
      }

      else
      {
        *v22 = 98;
        v22[1] = v44;
        if (*(v43 + 23) < 0)
        {
          v43 = *v43;
        }

        v45 = v22 + 2;
        memcpy(v22 + 2, v43, v44);
        v22 = &v45[v44];
      }

      v42 += 8;
      --v41;
    }

    while (v41);
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v47 = *(a1 + 144);
    *v22 = 104;
    v22[1] = v47;
    if (v47 > 0x7F)
    {
      v22[1] = v47 | 0x80;
      v48 = v47 >> 7;
      v22[2] = v47 >> 7;
      v46 = v22 + 3;
      if (v47 >= 0x4000)
      {
        LOBYTE(v49) = v22[2];
        do
        {
          *(v46 - 1) = v49 | 0x80;
          v49 = v48 >> 7;
          *v46++ = v48 >> 7;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v46 = v22 + 2;
    }
  }

  else
  {
    v46 = v22;
  }

  if ((v5 & 0x4000) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_103;
    }

LABEL_108:
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v53 = *(a1 + 88);
    *v46 = 122;
    v54 = *(v53 + 44);
    v46[1] = v54;
    if (v54 > 0x7F)
    {
      v55 = sub_19575D0(v54, v46 + 1);
    }

    else
    {
      v55 = v46 + 2;
    }

    v46 = sub_153C1A4(v53, v55, a3);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_114;
  }

  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v52 = *(a1 + 152);
  *v46 = 112;
  v46[1] = v52;
  v46 += 2;
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_108;
  }

LABEL_103:
  if ((v5 & 0x8000) == 0)
  {
LABEL_104:
    v51 = v46;
    goto LABEL_121;
  }

LABEL_114:
  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v56 = *(a1 + 156);
  *v46 = 384;
  v46[2] = v56;
  if (v56 > 0x7F)
  {
    v46[2] = v56 | 0x80;
    v57 = v56 >> 7;
    v46[3] = v56 >> 7;
    v51 = v46 + 4;
    if (v56 >= 0x4000)
    {
      LOBYTE(v46) = v46[3];
      do
      {
        *(v51 - 1) = v46 | 0x80;
        v46 = (v57 >> 7);
        *v51++ = v57 >> 7;
        v58 = v57 >> 14;
        v57 >>= 7;
      }

      while (v58);
    }
  }

  else
  {
    v51 = v46 + 3;
  }

LABEL_121:
  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v60 = *(a1 + 160);
    *v51 = 392;
    v51[2] = v60;
    if (v60 > 0x7F)
    {
      v51[2] = v60 | 0x80;
      v61 = v60 >> 7;
      v51[3] = v60 >> 7;
      v59 = v51 + 4;
      if (v60 >= 0x4000)
      {
        LOBYTE(v51) = v51[3];
        do
        {
          *(v59 - 1) = v51 | 0x80;
          LODWORD(v51) = v61 >> 7;
          *v59++ = v61 >> 7;
          v62 = v61 >> 14;
          v61 >>= 7;
        }

        while (v62);
      }
    }

    else
    {
      v59 = v51 + 3;
    }
  }

  else
  {
    v59 = v51;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v59)
    {
      v59 = sub_225EB68(a3, v59);
    }

    v63 = *(a1 + 96);
    *v59 = 402;
    v64 = *(v63 + 44);
    v59[2] = v64;
    if (v64 > 0x7F)
    {
      v65 = sub_19575D0(v64, v59 + 2);
    }

    else
    {
      v65 = v59 + 3;
    }

    v59 = sub_15E5D6C(v63, v65, a3);
  }

  v66 = *(a1 + 8);
  if ((v66 & 1) == 0)
  {
    return v59;
  }

  v68 = v66 & 0xFFFFFFFFFFFFFFFCLL;
  v69 = *(v68 + 31);
  if (v69 < 0)
  {
    v70 = *(v68 + 8);
    v69 = *(v68 + 16);
  }

  else
  {
    v70 = (v68 + 8);
  }

  if (*a3 - v59 >= v69)
  {
    v71 = v69;
    memcpy(v59, v70, v69);
    v59 += v71;
    return v59;
  }

  return sub_1957130(a3, v70, v69, v59);
}

uint64_t sub_15E74A0(uint64_t a1)
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

  v8 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v15 = sub_16E51F0(*(a1 + 48));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_11:
      if ((v8 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_40;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_11;
  }

  v16 = sub_15E2148(*(a1 + 56));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v17 = sub_15E2148(*(a1 + 64));
  v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_13:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = sub_15E3020(*(a1 + 72));
  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_14:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_43:
    v20 = sub_153C388(*(a1 + 88));
    v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_16:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_42:
  v19 = sub_15E27C4(*(a1 + 80));
  v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_15:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_44:
  v21 = sub_15E5FC8(*(a1 + 96));
  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x80) != 0)
  {
LABEL_17:
    v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_18:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_34;
  }

  if ((v8 & 0x100) == 0)
  {
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_21;
    }

LABEL_47:
    v4 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v4 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v8 & 0x200) != 0)
  {
    goto LABEL_47;
  }

LABEL_21:
  if ((v8 & 0x400) != 0)
  {
LABEL_22:
    v4 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_23:
  v9 = v4 + 5;
  if ((v8 & 0x800) == 0)
  {
    v9 = v4;
  }

  if ((v8 & 0x1000) != 0)
  {
    v9 += 5;
  }

  if ((v8 & 0x2000) != 0)
  {
    v9 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v4 = v9 + ((v8 >> 13) & 2);
  if ((v8 & 0x8000) != 0)
  {
    v10 = *(a1 + 156);
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 12;
    }

    v4 += v12;
  }

LABEL_34:
  if ((v8 & 0x10000) != 0)
  {
    v4 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v22 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v4 += v23;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_15E7818(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 16);
  if (v9)
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

        v10 = sub_16F5828(v12);
        *(a1 + 48) = v10;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_277E5E8;
      }

      sub_16E527C(v10, v13);
    }

    if ((v9 & 2) != 0)
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

        v16 = sub_15ED520(v18);
        *(a1 + 56) = v16;
      }

      if (*(a2 + 56))
      {
        v19 = *(a2 + 56);
      }

      else
      {
        v19 = &off_2779950;
      }

      sub_15E2260(v16, v19);
      if ((v9 & 4) == 0)
      {
LABEL_16:
        if ((v9 & 8) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_56;
      }
    }

    else if ((v9 & 4) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 16) |= 4u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_15ED520(v22);
      *(a1 + 64) = v20;
    }

    if (*(a2 + 64))
    {
      v23 = *(a2 + 64);
    }

    else
    {
      v23 = &off_2779950;
    }

    sub_15E2260(v20, v23);
    if ((v9 & 8) == 0)
    {
LABEL_17:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_64;
    }

LABEL_56:
    *(a1 + 16) |= 8u;
    v24 = *(a1 + 72);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_15ED640(v26);
      *(a1 + 72) = v24;
    }

    if (*(a2 + 72))
    {
      v27 = *(a2 + 72);
    }

    else
    {
      v27 = &off_27799B8;
    }

    sub_15E28F8(v24, v27);
    if ((v9 & 0x10) == 0)
    {
LABEL_18:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_72;
    }

LABEL_64:
    *(a1 + 16) |= 0x10u;
    v28 = *(a1 + 80);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_15ED5C4(v30);
      *(a1 + 80) = v28;
    }

    if (*(a2 + 80))
    {
      v31 = *(a2 + 80);
    }

    else
    {
      v31 = &off_2779990;
    }

    sub_13F8718(v28, v31);
    if ((v9 & 0x20) == 0)
    {
LABEL_19:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_80;
    }

LABEL_72:
    *(a1 + 16) |= 0x20u;
    v32 = *(a1 + 88);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_1551A70(v34);
      *(a1 + 88) = v32;
    }

    if (*(a2 + 88))
    {
      v35 = *(a2 + 88);
    }

    else
    {
      v35 = &off_2776880;
    }

    sub_144F404(v32, v35);
    if ((v9 & 0x40) == 0)
    {
LABEL_20:
      if ((v9 & 0x80) == 0)
      {
LABEL_22:
        *(a1 + 16) |= v9;
        goto LABEL_23;
      }

LABEL_21:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_22;
    }

LABEL_80:
    *(a1 + 16) |= 0x40u;
    v36 = *(a1 + 96);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_15ED844(v38);
      *(a1 + 96) = v36;
    }

    if (*(a2 + 96))
    {
      v39 = *(a2 + 96);
    }

    else
    {
      v39 = &off_2779AC8;
    }

    sub_15E60A8(v36, v39);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_23:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_34;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 112) = *(a2 + 112);
    if ((v9 & 0x200) == 0)
    {
LABEL_26:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_91;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  *(a1 + 120) = *(a2 + 120);
  if ((v9 & 0x400) == 0)
  {
LABEL_27:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(a1 + 128) = *(a2 + 128);
  if ((v9 & 0x800) == 0)
  {
LABEL_28:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(a1 + 136) = *(a2 + 136);
  if ((v9 & 0x1000) == 0)
  {
LABEL_29:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(a1 + 140) = *(a2 + 140);
  if ((v9 & 0x2000) == 0)
  {
LABEL_30:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

LABEL_95:
    *(a1 + 152) = *(a2 + 152);
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_94:
  *(a1 + 144) = *(a2 + 144);
  if ((v9 & 0x4000) != 0)
  {
    goto LABEL_95;
  }

LABEL_31:
  if ((v9 & 0x8000) != 0)
  {
LABEL_32:
    *(a1 + 156) = *(a2 + 156);
  }

LABEL_33:
  *(a1 + 16) |= v9;
LABEL_34:
  if ((v9 & 0x10000) != 0)
  {
    v14 = *(a2 + 160);
    *(a1 + 16) |= 0x10000u;
    *(a1 + 160) = v14;
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15E7BCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E5370(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_144F674(*(a1 + 88));
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

  result = sub_195228C(*(a1 + 96) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_15E7C40(uint64_t a1)
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
  if (a1 != &off_2779BB0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_15E1B34(v6);
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

void sub_15E7CF8(uint64_t a1)
{
  sub_15E7C40(a1);

  operator delete();
}

uint64_t sub_15E7D30(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_15E1C30(*(result + 24));
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

char *sub_15E7D8C(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_15ED520(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2227A14(a3, v14, v6);
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

char *sub_15E7ED0(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_15E1F24(v6, v8, a3);
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

uint64_t sub_15E7FDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_15E2148(*(a1 + 24));
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

std::string *sub_15E805C(std::string *result, uint64_t a2)
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

      data = sub_15ED520(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2779950;
    }

    result = sub_15E2260(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15E811C(uint64_t a1)
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

  if (a1 != &off_2779BD0)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_15E4084(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15E7C40(v6);
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

void sub_15E81EC(uint64_t a1)
{
  sub_15E811C(a1);

  operator delete();
}

uint64_t sub_15E8224(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_15E41D8(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_15E7D30(*(v1 + 32));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
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

char *sub_15E82A0(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v11 != 3)
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 32);
        if (!v17)
        {
          v18 = *(a1 + 8);
          v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
          if (v18)
          {
            v19 = *v19;
          }

          v17 = sub_15ED94C(v19);
          *(a1 + 32) = v17;
          v7 = v31;
        }

        v16 = sub_2227CE4(a3, v17, v7);
LABEL_46:
        v31 = v16;
        if (!v16)
        {
          goto LABEL_57;
        }

        goto LABEL_47;
      }

      if (v8 != 24)
      {
        goto LABEL_39;
      }

      v24 = v7 + 1;
      v23 = *v7;
      if (v23 < 0)
      {
        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          v31 = sub_19587DC(v7, v23);
          if (!v31)
          {
            goto LABEL_57;
          }

          goto LABEL_37;
        }

        v24 = v7 + 2;
      }

      v31 = v24;
LABEL_37:
      if (v23 > 3)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 44) = v23;
      }

      goto LABEL_47;
    }

    if (v11 != 1)
    {
      break;
    }

    if (v8 != 8)
    {
      goto LABEL_39;
    }

    v5 |= 4u;
    v20 = v7 + 1;
    v21 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    v22 = *v20;
    v21 = v21 + (v22 << 7) - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_31:
      v31 = v20;
      *(a1 + 40) = v21;
      goto LABEL_47;
    }

    v29 = sub_1958770(v7, v21);
    v31 = v29;
    *(a1 + 40) = v30;
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

  if (v11 == 2 && v8 == 18)
  {
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

      v13 = sub_15ED7E8(v15);
      *(a1 + 24) = v13;
      v7 = v31;
    }

    v16 = sub_2227B34(a3, v13, v7);
    goto LABEL_46;
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

    v16 = sub_1952690(v8, v28, v7, a3);
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

char *sub_15E8554(uint64_t a1, char *__dst, unint64_t *a3)
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

    v6 = sub_15E4AB8(v11, v13, a3);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 44);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v14)
    {
      v14 = sub_225EB68(a3, v14);
    }

    v18 = *(a1 + 32);
    *v14 = 34;
    v19 = *(v18 + 20);
    v14[1] = v19;
    if (v19 > 0x7F)
    {
      v20 = sub_19575D0(v19, v14 + 1);
    }

    else
    {
      v20 = v14 + 2;
    }

    v14 = sub_15E7ED0(v18, v20, a3);
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v14;
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

  if ((*a3 - v14) >= v24)
  {
    v26 = v24;
    memcpy(v14, v25, v24);
    v14 += v26;
    return v14;
  }

  return sub_1957130(a3, v25, v24, v14);
}

uint64_t sub_15E87CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = sub_15E5308(*(a1 + 24));
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
    v5 = sub_15E7FDC(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 44);
  if (v6 < 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v7;
LABEL_16:
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

  *(a1 + 20) = v3;
  return v3;
}

void sub_15E8900(uint64_t a1, uint64_t a2)
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

        v6 = sub_15ED7E8(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2779A30;
      }

      sub_15E5674(v6, v9);
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

      v10 = sub_15ED94C(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2779BB0;
    }

    sub_15E805C(v10, v13);
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

uint64_t sub_15E8A38(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_195228C(*(a1 + 24) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_15E8A7C(uint64_t a1)
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
  if (a1 != &off_2779C00)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_15E59CC(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956AFC((a1 + 48));
  sub_15EF75C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15E8B48(uint64_t a1)
{
  sub_15E8A7C(a1);

  operator delete();
}

uint64_t sub_15E8B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_15E8224(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_15E5A80(*(a1 + 72));
  }

  if ((v6 & 0x7E) != 0)
  {
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_15E8C2C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v62 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v62, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v62 + 1);
    v8 = **v62;
    if (**v62 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v62, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v62 + 2);
      }
    }

    *v62 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v8 >> 3 <= 6)
    {
      if (v11 == 5)
      {
        if (v8 == 42)
        {
          v39 = (v7 - 1);
          while (1)
          {
            v40 = (v39 + 1);
            *v62 = v39 + 1;
            v41 = *(a1 + 40);
            if (v41 && (v42 = *(a1 + 32), v42 < *v41))
            {
              *(a1 + 32) = v42 + 1;
              v43 = *&v41[2 * v42 + 2];
            }

            else
            {
              sub_15ED9C4(*(a1 + 24));
              v43 = sub_19593CC(a1 + 24, v44);
              v40 = *v62;
            }

            v39 = sub_2227D74(a3, v43, v40);
            *v62 = v39;
            if (!v39)
            {
              goto LABEL_108;
            }

            if (*a3 <= v39 || *v39 != 42)
            {
              goto LABEL_90;
            }
          }
        }
      }

      else if (v11 == 6 && v8 == 50)
      {
        v22 = (v7 - 1);
        while (1)
        {
          v23 = (v22 + 1);
          *v62 = v22 + 1;
          v24 = *(a1 + 64);
          if (v24 && (v25 = *(a1 + 56), v25 < *v24))
          {
            *(a1 + 56) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 48);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 48, v28);
            v23 = *v62;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v62 = v22;
          if (!v22)
          {
            goto LABEL_108;
          }

          if (*a3 <= v22 || *v22 != 50)
          {
            goto LABEL_90;
          }
        }
      }

      goto LABEL_82;
    }

    if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_82;
      }

      v5 |= 0x40u;
      v37 = (v7 + 1);
      v36 = *v7;
      if ((v36 & 0x8000000000000000) == 0)
      {
        goto LABEL_65;
      }

      v38 = *v37;
      v36 = (v38 << 7) + v36 - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v37 = (v7 + 2);
LABEL_65:
        *v62 = v37;
        *(a1 + 112) = v36;
        goto LABEL_90;
      }

      v58 = sub_19587DC(v7, v36);
      *v62 = v58;
      *(a1 + 112) = v59;
      if (!v58)
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (v11 == 8)
      {
        if (v8 != 66)
        {
          goto LABEL_82;
        }

        *(a1 + 16) |= 1u;
        v45 = *(a1 + 72);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_15ED844(v47);
          *(a1 + 72) = v45;
          v7 = *v62;
        }

        v48 = sub_22278F4(a3, v45, v7);
LABEL_89:
        *v62 = v48;
        if (!v48)
        {
          goto LABEL_108;
        }

        goto LABEL_90;
      }

      if (v11 != 9 || v8 != 72)
      {
        goto LABEL_82;
      }

      v5 |= 0x20u;
      v13 = (v7 + 1);
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_16:
        *v62 = v13;
        *(a1 + 108) = v12 != 0;
        goto LABEL_90;
      }

      v60 = sub_19587DC(v7, v12);
      *v62 = v60;
      *(a1 + 108) = v61 != 0;
      if (!v60)
      {
        goto LABEL_108;
      }
    }

LABEL_90:
    if (sub_195ADC0(a3, v62, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 2)
  {
    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_82;
      }

      v5 |= 2u;
      v31 = (v7 + 1);
      v30 = *v7;
      if ((v30 & 0x8000000000000000) == 0)
      {
        goto LABEL_55;
      }

      v32 = *v31;
      v30 = (v32 << 7) + v30 - 128;
      if ((v32 & 0x80000000) == 0)
      {
        v31 = (v7 + 2);
LABEL_55:
        *v62 = v31;
        *(a1 + 80) = v30;
        goto LABEL_90;
      }

      v54 = sub_19587DC(v7, v30);
      *v62 = v54;
      *(a1 + 80) = v55;
      if (!v54)
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_82;
      }

      v5 |= 4u;
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
        *v62 = v17;
        *(a1 + 88) = v16;
        goto LABEL_90;
      }

      v52 = sub_19587DC(v7, v16);
      *v62 = v52;
      *(a1 + 88) = v53;
      if (!v52)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_90;
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_82;
    }

    v5 |= 8u;
    v34 = (v7 + 1);
    v33 = *v7;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_60;
    }

    v35 = *v34;
    v33 = (v35 << 7) + v33 - 128;
    if ((v35 & 0x80000000) == 0)
    {
      v34 = (v7 + 2);
LABEL_60:
      *v62 = v34;
      *(a1 + 96) = v33;
      goto LABEL_90;
    }

    v56 = sub_19587DC(v7, v33);
    *v62 = v56;
    *(a1 + 96) = v57;
    if (!v56)
    {
      goto LABEL_108;
    }

    goto LABEL_90;
  }

  if (v11 == 4 && v8 == 32)
  {
    v20 = (v7 + 1);
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if (v21 < 0)
    {
      *v62 = sub_19587DC(v7, v19);
      if (!*v62)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v20 = (v7 + 2);
LABEL_34:
      *v62 = v20;
    }

    if (v19 > 1)
    {
      sub_12E8500();
    }

    else
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 104) = v19;
    }

    goto LABEL_90;
  }

LABEL_82:
  if (v8)
  {
    v49 = (v8 & 7) == 4;
  }

  else
  {
    v49 = 1;
  }

  if (!v49)
  {
    v50 = *(a1 + 8);
    if (v50)
    {
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v51 = sub_11F1920((a1 + 8));
      v7 = *v62;
    }

    v48 = sub_1952690(v8, v51, v7, a3);
    goto LABEL_89;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_108:
  *v62 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v62;
}

char *sub_15E91B8(uint64_t a1, char *__dst, unint64_t *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 96);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 104);
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

  v24 = *(a1 + 32);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v26 = *(*(a1 + 40) + 8 * i + 8);
      *v19 = 42;
      v27 = *(v26 + 20);
      v19[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v19 + 1);
      }

      else
      {
        v28 = v19 + 2;
      }

      v19 = sub_15E8554(v26, v28, a3);
    }
  }

  v29 = *(a1 + 56);
  if (v29 >= 1)
  {
    v30 = 8;
    do
    {
      v31 = *(*(a1 + 64) + v30);
      v32 = *(v31 + 23);
      if (v32 < 0 && (v32 = v31[1], v32 > 127) || (*a3 - v19 + 14) < v32)
      {
        v19 = sub_1957480(a3, 6, v31, v19);
      }

      else
      {
        *v19 = 50;
        v19[1] = v32;
        if (*(v31 + 23) < 0)
        {
          v31 = *v31;
        }

        v33 = v19 + 2;
        memcpy(v19 + 2, v31, v32);
        v19 = &v33[v32];
      }

      v30 += 8;
      --v29;
    }

    while (v29);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v35 = *(a1 + 112);
    *v19 = 56;
    v19[1] = v35;
    if (v35 > 0x7F)
    {
      v19[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v19[2] = v35 >> 7;
      v34 = v19 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v37) = v19[2];
        do
        {
          *(v34 - 1) = v37 | 0x80;
          v37 = v36 >> 7;
          *v34++ = v36 >> 7;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
      }
    }

    else
    {
      v34 = v19 + 2;
    }
  }

  else
  {
    v34 = v19;
  }

  if (v5)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v39 = *(a1 + 72);
    *v34 = 66;
    v40 = *(v39 + 44);
    v34[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v34 + 1);
    }

    else
    {
      v41 = v34 + 2;
    }

    v34 = sub_15E5D6C(v39, v41, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v42 = *(a1 + 108);
    *v34 = 72;
    v34[1] = v42;
    v34 += 2;
  }

  v43 = *(a1 + 8);
  if ((v43 & 1) == 0)
  {
    return v34;
  }

  v45 = v43 & 0xFFFFFFFFFFFFFFFCLL;
  v46 = *(v45 + 31);
  if (v46 < 0)
  {
    v47 = *(v45 + 8);
    v46 = *(v45 + 16);
  }

  else
  {
    v47 = (v45 + 8);
  }

  if ((*a3 - v34) >= v46)
  {
    v48 = v46;
    memcpy(v34, v47, v46);
    v34 += v48;
    return v34;
  }

  return sub_1957130(a3, v47, v46, v34);
}

uint64_t sub_15E96C8(uint64_t a1)
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
      v7 = sub_15E87CC(v6);
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

  v14 = *(a1 + 16);
  if ((v14 & 0x7F) != 0)
  {
    if (v14)
    {
      v20 = sub_15E5FC8(*(a1 + 72));
      v9 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v14 & 2) == 0)
      {
LABEL_17:
        if ((v14 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_30;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_17;
    }

    v9 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v14 & 4) == 0)
    {
LABEL_18:
      if ((v14 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }

LABEL_30:
    v9 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v14 & 8) == 0)
    {
LABEL_19:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_24;
      }

LABEL_20:
      v15 = *(a1 + 104);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 11;
      }

      v9 += v17;
LABEL_24:
      v9 += (v14 >> 4) & 2;
      if ((v14 & 0x40) != 0)
      {
        v9 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
      }

      goto LABEL_26;
    }

LABEL_31:
    v9 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_26:
  v18 = *(a1 + 8);
  if (v18)
  {
    v21 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v9 += v22;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_15E98E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF9F0((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

  v14 = *(a2 + 16);
  if ((v14 & 0x7F) != 0)
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

        v16 = sub_15ED844(v18);
        *(a1 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v19 = *(a2 + 72);
      }

      else
      {
        v19 = &off_2779AC8;
      }

      sub_15E60A8(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
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

      goto LABEL_31;
    }

LABEL_30:
    *(a1 + 88) = *(a2 + 88);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(a1 + 96) = *(a2 + 96);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(a1 + 104) = *(a2 + 104);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
LABEL_16:
        *(a1 + 16) |= v14;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_16;
    }

LABEL_33:
    *(a1 + 108) = *(a2 + 108);
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15E9AC8(uint64_t a1)
{
  result = sub_15E9B10(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 72) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_15E9B10(uint64_t a1)
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
      result = sub_195228C(*(v3 + 24) + 16);
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

uint64_t sub_15E9B80(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26F5C60;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = a2;
  *(a1 + 120) = 0;
  return a1;
}

void sub_15E9C08(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15E9C38(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15EF7E0(a1 + 12);
  sub_15EF7E0(a1 + 9);
  sub_1956ABC((a1 + 7));
  sub_1956ABC((a1 + 5));
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15E9CDC(void *a1)
{
  sub_15E9C38(a1);

  operator delete();
}

uint64_t sub_15E9D14(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  v3 = *(a1 + 80);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 88) + 8);
    do
    {
      v5 = *v4++;
      result = sub_15EA960(v5);
      --v3;
    }

    while (v3);
    *(a1 + 80) = 0;
  }

  v6 = *(a1 + 104);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 112) + 8);
    do
    {
      v8 = *v7++;
      result = sub_15EA960(v8);
      --v6;
    }

    while (v6);
    *(a1 + 104) = 0;
  }

  v10 = *(a1 + 8);
  v9 = (a1 + 8);
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

char *sub_15E9DC8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v42 = a2;
  if ((sub_195ADC0(a3, &v42, a3[11].i32[1]) & 1) == 0)
  {
    v6 = (a1 + 8);
    do
    {
      v7 = v42 + 1;
      v8 = *v42;
      if (*v42 < 0)
      {
        v9 = *v7;
        v10 = v8 + (v9 << 7);
        v8 = v10 - 128;
        if (v9 < 0)
        {
          v7 = sub_1958824(v42, v10 - 128);
          v8 = v11;
        }

        else
        {
          v7 = v42 + 2;
        }
      }

      v42 = v7;
      v12 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v12 == 3)
        {
          if (v8 == 26)
          {
            v33 = v7 - 1;
            while (1)
            {
              v34 = (v33 + 1);
              v42 = v33 + 1;
              v35 = *(a1 + 88);
              if (v35 && (v36 = *(a1 + 80), v36 < *v35))
              {
                *(a1 + 80) = v36 + 1;
                v37 = *&v35[2 * v36 + 2];
              }

              else
              {
                v38 = sub_15EDB58(*(a1 + 72));
                v37 = sub_19593CC(a1 + 72, v38);
                v34 = v42;
              }

              v33 = sub_2227E04(a3, v37, v34);
              v42 = v33;
              if (!v33)
              {
                return 0;
              }

              if (*a3 <= v33 || *v33 != 26)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v12 == 4 && v8 == 34)
        {
          v21 = v7 - 1;
          while (1)
          {
            v22 = (v21 + 1);
            v42 = v21 + 1;
            v23 = *(a1 + 112);
            if (v23 && (v24 = *(a1 + 104), v24 < *v23))
            {
              *(a1 + 104) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v26 = sub_15EDB58(*(a1 + 96));
              v25 = sub_19593CC(a1 + 96, v26);
              v22 = v42;
            }

            v21 = sub_2227E04(a3, v25, v22);
            v42 = v21;
            if (!v21)
            {
              return 0;
            }

            if (*a3 <= v21 || *v21 != 34)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else if (v12 == 1)
      {
        if (v8 == 8)
        {
          v27 = v7 - 1;
          while (1)
          {
            v42 = v27 + 1;
            v28 = v27[1];
            if (v28 < 0)
            {
              v29 = (v27[2] << 7) + v28;
              v28 = (v29 - 128);
              if (v27[2] < 0)
              {
                v27 = sub_19587DC((v27 + 1), (v29 - 128));
                v28 = v30;
              }

              else
              {
                v27 += 3;
              }
            }

            else
            {
              v27 += 2;
            }

            v42 = v27;
            v31 = *(a1 + 40);
            if (v31 == *(a1 + 44))
            {
              v32 = v31 + 1;
              sub_1959094((a1 + 40), v31 + 1);
              *(*(a1 + 48) + 8 * v31) = v28;
              v27 = v42;
            }

            else
            {
              *(*(a1 + 48) + 8 * v31) = v28;
              v32 = v31 + 1;
            }

            *(a1 + 40) = v32;
            if (!v27)
            {
              return 0;
            }

            if (*a3 <= v27 || *v27 != 8)
            {
              goto LABEL_78;
            }
          }
        }

        if (v8 == 10)
        {
          v39 = sub_1958938((a1 + 40), v7, a3);
          goto LABEL_77;
        }
      }

      else if (v12 == 2)
      {
        if (v8 == 16)
        {
          v13 = v7 - 1;
          while (1)
          {
            v42 = v13 + 1;
            v14 = v13[1];
            v15 = v13 + 2;
            if (v14 < 0)
            {
              v16 = *v15;
              v17 = (v16 << 7) + v14;
              LODWORD(v14) = v17 - 128;
              if (v16 < 0)
              {
                v42 = sub_19587DC((v13 + 1), (v17 - 128));
                if (!v42)
                {
                  return 0;
                }

                LODWORD(v14) = v20;
                goto LABEL_17;
              }

              v15 = v13 + 3;
            }

            v42 = v15;
LABEL_17:
            if (v14 > 3)
            {
              sub_12E8418();
            }

            else
            {
              v18 = *(a1 + 56);
              if (v18 == *(a1 + 60))
              {
                v19 = v18 + 1;
                sub_1958E5C((a1 + 56), v18 + 1);
                *(*(a1 + 64) + 4 * v18) = v14;
              }

              else
              {
                *(*(a1 + 64) + 4 * v18) = v14;
                v19 = v18 + 1;
              }

              *(a1 + 56) = v19;
            }

            v13 = v42;
            if (*a3 <= v42 || *v42 != 16)
            {
              goto LABEL_78;
            }
          }
        }

        if (v8 == 18)
        {
          *&v43 = a1 + 56;
          *(&v43 + 1) = sub_15E1484;
          v44 = a1 + 8;
          v45 = 2;
          v39 = sub_1216588(a3, v7, &v43);
          goto LABEL_77;
        }
      }

      if (v8)
      {
        v40 = (v8 & 7) == 4;
      }

      else
      {
        v40 = 1;
      }

      if (v40)
      {
        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
          return v42;
        }

        return 0;
      }

      if (v8 - 7600 > 0x18F)
      {
        if (*v6)
        {
          v41 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v41 = sub_11F1920((a1 + 8));
          v7 = v42;
        }

        v39 = sub_1952690(v8, v41, v7, a3);
      }

      else
      {
        v39 = sub_19525AC((a1 + 16), v8, v7, &off_2779C78, (a1 + 8), a3);
      }

LABEL_77:
      v42 = v39;
      if (!v39)
      {
        return 0;
      }

LABEL_78:
      ;
    }

    while (!sub_195ADC0(a3, &v42, a3[11].i32[1]));
  }

  return v42;
}

char *sub_15EA250(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
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

      v7 = *(*(a1 + 48) + 8 * i);
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

  v12 = *(a1 + 56);
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

      v14 = *(*(a1 + 64) + 4 * j);
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
            v8 = (v16 >> 7);
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

  v18 = *(a1 + 80);
  if (v18)
  {
    for (k = 0; k != v18; ++k)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v20 = *(*(a1 + 88) + 8 * k + 8);
      *v15 = 26;
      v21 = *(v20 + 20);
      v15[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v15 + 1);
      }

      else
      {
        v22 = v15 + 2;
      }

      v15 = sub_15EAB68(v20, v22, a3);
    }
  }

  v23 = *(a1 + 104);
  if (v23)
  {
    for (m = 0; m != v23; ++m)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v25 = *(*(a1 + 112) + 8 * m + 8);
      *v15 = 34;
      v26 = *(v25 + 20);
      v15[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, v15 + 1);
      }

      else
      {
        v27 = v15 + 2;
      }

      v15 = sub_15EAB68(v25, v27, a3);
    }
  }

  if (*(a1 + 26))
  {
    v15 = sub_1953428(a1 + 16, 950, 1000, v15, a3);
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v15;
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

  if (*a3 - v15 >= v31)
  {
    v33 = v31;
    memcpy(v15, v32, v31);
    v15 += v33;
    return v15;
  }

  return sub_1957130(a3, v32, v31, v15);
}

uint64_t sub_15EA580(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959F14((a1 + 40));
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 64) + 4 * v6);
      if (v7 < 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      }

      v5 += v8;
      ++v6;
    }

    while (v4 != v6);
  }

  else
  {
    v5 = 0;
  }

  v9 = *(a1 + 80);
  v10 = v3 + v2 + *(a1 + 40) + v4 + v5 + v9;
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
      v15 = sub_15EAD18(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 104);
  v17 = v10 + v16;
  v18 = *(a1 + 112);
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
      v22 = sub_15EAD18(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v17 += v26;
  }

  *(a1 + 120) = v17;
  return v17;
}

void sub_15EA6F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = (a1 + 40);
    v6 = *(a1 + 40);
    sub_1959094((a1 + 40), v6 + v4);
    v7 = *(a1 + 48);
    *v5 += *(a2 + 40);
    memcpy((v7 + 8 * v6), *(a2 + 48), 8 * *(a2 + 40));
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    v9 = *(a1 + 56);
    sub_1958E5C((a1 + 56), v9 + v8);
    v10 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy((v10 + 4 * v9), *(a2 + 64), 4 * *(a2 + 56));
  }

  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *(a2 + 88);
    v13 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_15EFA7C((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 104);
  if (v16)
  {
    v17 = *(a2 + 112);
    v18 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_15EFA7C((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v21 = *(a2 + 8);
  if (v21)
  {

    sub_1957EF4((a1 + 8), (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_15EA8B4(void *a1)
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

void sub_15EA928(void *a1)
{
  sub_15EA8B4(a1);

  operator delete();
}

uint64_t sub_15EA960(uint64_t a1)
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

char *sub_15EA984(uint64_t a1, char *a2, int32x2_t *a3)
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

char *sub_15EAB68(uint64_t a1, char *__dst, _DWORD *a3)
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

unint64_t sub_15EAD18(uint64_t a1)
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

uint64_t sub_15EADC8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_26F5D60;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_15EAE38(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_15EAE68(uint64_t a1)
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
  if (a1 != &off_2779CF8)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15E9C38(v6);
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

void sub_15EAF28(uint64_t a1)
{
  sub_15EAE68(a1);

  operator delete();
}

uint64_t sub_15EAF60(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    result = sub_15E9D14(*(a1 + 48));
  }

  if ((v3 & 0xE) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
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

char *sub_15EAFD4(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if (v11 == 2 && v8 == 16)
      {
        v13 = v7 + 1;
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v15 = *v13;
        v16 = (v15 << 7) + v14;
        v14 = (v16 - 128);
        if (v15 < 0)
        {
          v38 = sub_19587DC(v7, (v16 - 128));
          if (!v38)
          {
            goto LABEL_66;
          }

          v14 = v31;
        }

        else
        {
          v13 = v7 + 2;
LABEL_17:
          v38 = v13;
        }

        if (v14 > 0x14 || ((1 << v14) & 0x11043F) == 0)
        {
          v36 = *(a1 + 8);
          if (v36)
          {
            v37 = ((v36 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v37 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(2, v14, v37);
        }

        else
        {
          *(a1 + 40) |= 8u;
          *(a1 + 72) = v14;
        }

        goto LABEL_51;
      }

      goto LABEL_41;
    }

    if (v8 != 8)
    {
      goto LABEL_41;
    }

    v5 |= 2u;
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
      v38 = v23;
      *(a1 + 56) = v22;
      goto LABEL_51;
    }

    v32 = sub_19587DC(v7, v22);
    v38 = v32;
    *(a1 + 56) = v33;
    if (!v32)
    {
      goto LABEL_66;
    }

LABEL_51:
    if (sub_195ADC0(a3, &v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 4u;
    v26 = v7 + 1;
    v25 = *v7;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_40:
      v38 = v26;
      *(a1 + 64) = v25;
      goto LABEL_51;
    }

    v34 = sub_19587DC(v7, v25);
    v38 = v34;
    *(a1 + 64) = v35;
    if (!v34)
    {
      goto LABEL_66;
    }

    goto LABEL_51;
  }

  if (v11 == 4 && v8 == 34)
  {
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

      v18 = sub_15EDAFC(v20);
      *(a1 + 48) = v18;
      v7 = v38;
    }

    v21 = sub_2227E94(a3, v18, v7);
LABEL_50:
    v38 = v21;
    if (!v21)
    {
      goto LABEL_66;
    }

    goto LABEL_51;
  }

LABEL_41:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    if (v8 - 7600 > 0x18F)
    {
      v29 = *(a1 + 8);
      if (v29)
      {
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v30 = sub_11F1920((a1 + 8));
        v7 = v38;
      }

      v21 = sub_1952690(v8, v30, v7, a3);
    }

    else
    {
      v21 = sub_19525AC((a1 + 16), v8, v7, &off_2779CF8, (a1 + 8), a3);
    }

    goto LABEL_50;
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

char *sub_15EB31C(uint64_t a1, char *a2, _DWORD *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 72);
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
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v19 = *(a1 + 48);
    *v15 = 34;
    v20 = *(v19 + 120);
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v15 + 1);
    }

    else
    {
      v21 = v15 + 2;
    }

    v15 = sub_15EA250(v19, v21, a3);
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

  if (*a3 - v15 >= v25)
  {
    v27 = v25;
    memcpy(v15, v26, v25);
    v15 += v27;
    return v15;
  }

  return sub_1957130(a3, v26, v25, v15);
}

uint64_t sub_15EB5DC(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_14;
  }

  if (v3)
  {
    v4 = sub_15EA580(*(a1 + 48));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_9:
  v2 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v5 = *(a1 + 72);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v6;
LABEL_14:
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

void sub_15EB704(uint64_t a1, uint64_t a2)
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

        v6 = sub_15EDAFC(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_2779C78;
      }

      sub_15EA6F0(v6, v9);
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
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_7;
    }

LABEL_21:
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

uint64_t sub_15EB808(uint64_t a1)
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

uint64_t sub_15EB860(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26F5DE0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return a1;
}

void sub_15EB8F0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15EB920(void *a1)
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

  sub_15EB9B8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_15EF864(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_15EB9B8(uint64_t result)
{
  if (result != &off_2779D48)
  {
    v1 = result;
    v2 = *(result + 72);
    if (v2)
    {
      sub_15E1B34(v2);
      operator delete();
    }

    v3 = v1[10];
    if (v3)
    {
      sub_15E1B34(v3);
      operator delete();
    }

    v4 = v1[11];
    if (v4)
    {
      sub_15E1B34(v4);
      operator delete();
    }

    v5 = v1[12];
    if (v5)
    {
      sub_15E1B34(v5);
      operator delete();
    }

    v6 = v1[13];
    if (v6)
    {
      sub_15E1B34(v6);
      operator delete();
    }

    v7 = v1[14];
    if (v7)
    {
      sub_15E1B34(v7);
      operator delete();
    }

    result = v1[15];
    if (result)
    {
      sub_15E1B34(result);

      operator delete();
    }
  }

  return result;
}

void sub_15EBAA0(void *a1)
{
  sub_15EB920(a1);

  operator delete();
}

uint64_t sub_15EBAD8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_15EAF60(v5);
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

  if (v6)
  {
    result = sub_15E1C30(*(a1 + 72));
    if ((v6 & 2) == 0)
    {
LABEL_8:
      if ((v6 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = sub_15E1C30(*(a1 + 80));
  if ((v6 & 4) == 0)
  {
LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = sub_15E1C30(*(a1 + 88));
  if ((v6 & 8) == 0)
  {
LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_24:
    result = sub_15E1C30(*(a1 + 104));
    if ((v6 & 0x20) == 0)
    {
LABEL_12:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = sub_15E1C30(*(a1 + 96));
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_11:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_25:
  result = sub_15E1C30(*(a1 + 112));
  if ((v6 & 0x40) != 0)
  {
LABEL_13:
    result = sub_15E1C30(*(a1 + 120));
  }

LABEL_14:
  *(a1 + 128) = 0;
  if ((v6 & 0xFF00) != 0)
  {
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 176) = 0;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

char *sub_15EBBFC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v84 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v84, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = v84 + 1;
    v8 = *v84;
    if (*v84 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v84, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v84 + 2;
      }
    }

    v84 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_110;
        }

        v5 |= 0x80u;
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
          v84 = v12;
          *(a1 + 128) = v11;
          goto LABEL_103;
        }

        v70 = sub_19587DC(v7, v11);
        v84 = v70;
        *(a1 + 128) = v71;
        if (v70)
        {
          goto LABEL_103;
        }

        goto LABEL_143;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_110;
        }

        *(a1 + 40) |= 1u;
        v14 = *(a1 + 72);
        if (v14)
        {
          goto LABEL_101;
        }

        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v14 = sub_15ED520(v25);
        *(a1 + 72) = v14;
        goto LABEL_100;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_110;
        }

        *(a1 + 40) |= 2u;
        v14 = *(a1 + 80);
        if (v14)
        {
          goto LABEL_101;
        }

        v34 = *(a1 + 8);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        v14 = sub_15ED520(v35);
        *(a1 + 80) = v14;
        goto LABEL_100;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_110;
        }

        v32 = v7 + 1;
        v31 = *v7;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if (v33 < 0)
        {
          v84 = sub_19587DC(v7, v31);
          if (!v84)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v32 = v7 + 2;
LABEL_52:
          v84 = v32;
        }

        if (v31 > 1)
        {
          sub_12E8500();
        }

        else
        {
          *(a1 + 40) |= 0x1000u;
          *(a1 + 168) = v31;
        }

        goto LABEL_103;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_110;
        }

        v5 |= 0x100u;
        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v66 = sub_19587DC(v7, v19);
          v84 = v66;
          *(a1 + 136) = v67;
          if (!v66)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v20 = v7 + 2;
LABEL_27:
          v84 = v20;
          *(a1 + 136) = v19;
        }

        goto LABEL_103;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_110;
        }

        v5 |= 0x200u;
        v27 = v7 + 1;
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_42;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if (v28 < 0)
        {
          v68 = sub_19587DC(v7, v26);
          v84 = v68;
          *(a1 + 144) = v69;
          if (!v68)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v27 = v7 + 2;
LABEL_42:
          v84 = v27;
          *(a1 + 144) = v26;
        }

        goto LABEL_103;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_110;
        }

        v5 |= 0x400u;
        v37 = v7 + 1;
        v36 = *v7;
        if ((v36 & 0x8000000000000000) == 0)
        {
          goto LABEL_64;
        }

        v38 = *v37;
        v36 = (v38 << 7) + v36 - 128;
        if (v38 < 0)
        {
          v72 = sub_19587DC(v7, v36);
          v84 = v72;
          *(a1 + 152) = v73;
          if (!v72)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v37 = v7 + 2;
LABEL_64:
          v84 = v37;
          *(a1 + 152) = v36;
        }

        goto LABEL_103;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_110;
        }

        v5 |= 0x800u;
        v40 = v7 + 1;
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_69;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v74 = sub_19587DC(v7, v39);
          v84 = v74;
          *(a1 + 160) = v75;
          if (!v74)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v40 = v7 + 2;
LABEL_69:
          v84 = v40;
          *(a1 + 160) = v39;
        }

        goto LABEL_103;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_110;
        }

        v51 = v7 - 1;
        while (1)
        {
          v52 = (v51 + 1);
          v84 = v51 + 1;
          v53 = *(a1 + 64);
          if (v53 && (v54 = *(a1 + 56), v54 < *v53))
          {
            *(a1 + 56) = v54 + 1;
            v55 = *&v53[2 * v54 + 2];
          }

          else
          {
            v56 = sub_15EDBD4(*(a1 + 48));
            v55 = sub_19593CC(a1 + 48, v56);
            v52 = v84;
          }

          v51 = sub_2227F24(a3, v55, v52);
          v84 = v51;
          if (!v51)
          {
            goto LABEL_143;
          }

          if (*a3 <= v51 || *v51 != 74)
          {
            goto LABEL_103;
          }
        }

      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_110;
        }

        v5 |= 0x2000u;
        v49 = v7 + 1;
        v48 = *v7;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_84;
        }

        v50 = *v49;
        v48 = (v50 << 7) + v48 - 128;
        if (v50 < 0)
        {
          v80 = sub_19587DC(v7, v48);
          v84 = v80;
          *(a1 + 172) = v81 != 0;
          if (!v80)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v49 = v7 + 2;
LABEL_84:
          v84 = v49;
          *(a1 + 172) = v48 != 0;
        }

        goto LABEL_103;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_110;
        }

        *(a1 + 40) |= 4u;
        v14 = *(a1 + 88);
        if (v14)
        {
          goto LABEL_101;
        }

        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v14 = sub_15ED520(v18);
        *(a1 + 88) = v14;
        goto LABEL_100;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_110;
        }

        *(a1 + 40) |= 8u;
        v14 = *(a1 + 96);
        if (v14)
        {
          goto LABEL_101;
        }

        v29 = *(a1 + 8);
        v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v30 = *v30;
        }

        v14 = sub_15ED520(v30);
        *(a1 + 96) = v14;
        goto LABEL_100;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_110;
        }

        *(a1 + 40) |= 0x10u;
        v14 = *(a1 + 104);
        if (v14)
        {
          goto LABEL_101;
        }

        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v14 = sub_15ED520(v23);
        *(a1 + 104) = v14;
        goto LABEL_100;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_110;
        }

        *(a1 + 40) |= 0x20u;
        v14 = *(a1 + 112);
        if (v14)
        {
          goto LABEL_101;
        }

        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_15ED520(v16);
        *(a1 + 112) = v14;
        goto LABEL_100;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_110;
        }

        v5 |= 0x8000u;
        v43 = v7 + 1;
        v42 = *v7;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_74;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if (v44 < 0)
        {
          v76 = sub_19587DC(v7, v42);
          v84 = v76;
          *(a1 + 176) = v77;
          if (!v76)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v43 = v7 + 2;
LABEL_74:
          v84 = v43;
          *(a1 + 176) = v42;
        }

        goto LABEL_103;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_110;
        }

        v5 |= 0x4000u;
        v46 = v7 + 1;
        v45 = *v7;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_79;
        }

        v47 = *v46;
        v45 = (v47 << 7) + v45 - 128;
        if (v47 < 0)
        {
          v78 = sub_19587DC(v7, v45);
          v84 = v78;
          *(a1 + 173) = v79 != 0;
          if (!v78)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v46 = v7 + 2;
LABEL_79:
          v84 = v46;
          *(a1 + 173) = v45 != 0;
        }

        goto LABEL_103;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_110;
        }

        v5 |= 0x10000u;
        v61 = v7 + 1;
        v60 = *v7;
        if ((v60 & 0x8000000000000000) == 0)
        {
          goto LABEL_109;
        }

        v62 = *v61;
        v60 = (v62 << 7) + v60 - 128;
        if (v62 < 0)
        {
          v82 = sub_19587DC(v7, v60);
          v84 = v82;
          *(a1 + 184) = v83;
          if (!v82)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v61 = v7 + 2;
LABEL_109:
          v84 = v61;
          *(a1 + 184) = v60;
        }

        goto LABEL_103;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_110;
        }

        *(a1 + 40) |= 0x40u;
        v14 = *(a1 + 120);
        if (v14)
        {
          goto LABEL_101;
        }

        v57 = *(a1 + 8);
        v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
        if (v57)
        {
          v58 = *v58;
        }

        v14 = sub_15ED520(v58);
        *(a1 + 120) = v14;
LABEL_100:
        v7 = v84;
LABEL_101:
        v59 = sub_2227A14(a3, v14, v7);
        goto LABEL_102;
      default:
LABEL_110:
        if (v8)
        {
          v63 = (v8 & 7) == 4;
        }

        else
        {
          v63 = 1;
        }

        if (!v63)
        {
          if (v8 - 7200 > 0x31F)
          {
            v64 = *(a1 + 8);
            if (v64)
            {
              v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v65 = sub_11F1920((a1 + 8));
              v7 = v84;
            }

            v59 = sub_1952690(v8, v65, v7, a3);
          }

          else
          {
            v59 = sub_19525AC((a1 + 16), v8, v7, &off_2779D48, (a1 + 8), a3);
          }

LABEL_102:
          v84 = v59;
          if (!v59)
          {
            goto LABEL_143;
          }

LABEL_103:
          if (sub_195ADC0(a3, &v84, a3[11].i32[1]))
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
LABEL_143:
          v84 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return v84;
    }
  }
}

char *sub_15EC414(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 128);
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

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 80);
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

    v6 = sub_15E1F24(v15, v17, a3);
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v12 = *(a1 + 72);
  *v6 = 18;
  v13 = *(v12 + 20);
  v6[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v6 + 1);
  }

  else
  {
    v14 = v6 + 2;
  }

  v6 = sub_15E1F24(v12, v14, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    v11 = v6;
    goto LABEL_33;
  }

LABEL_26:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v18 = *(a1 + 168);
  *v6 = 32;
  v6[1] = v18;
  if (v18 > 0x7F)
  {
    v6[1] = v18 | 0x80;
    v19 = v18 >> 7;
    v6[2] = v18 >> 7;
    v11 = v6 + 3;
    if (v18 >= 0x4000)
    {
      LOBYTE(v6) = v6[2];
      do
      {
        *(v11 - 1) = v6 | 0x80;
        v6 = (v19 >> 7);
        *v11++ = v19 >> 7;
        v20 = v19 >> 14;
        v19 >>= 7;
      }

      while (v20);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_33:
  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v22 = *(a1 + 136);
    *v11 = 40;
    v11[1] = v22;
    if (v22 > 0x7F)
    {
      v11[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v11[2] = v22 >> 7;
      v21 = v11 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v21 - 1) = v11 | 0x80;
          v11 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v11 + 2;
    }
  }

  else
  {
    v21 = v11;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 144);
    *v21 = 48;
    v21[1] = v26;
    if (v26 > 0x7F)
    {
      v21[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v21[2] = v26 >> 7;
      v25 = v21 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v28) = v21[2];
        do
        {
          *(v25 - 1) = v28 | 0x80;
          v28 = v27 >> 7;
          *v25++ = v27 >> 7;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
      }
    }

    else
    {
      v25 = v21 + 2;
    }
  }

  else
  {
    v25 = v21;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v31 = *(a1 + 152);
    *v25 = 56;
    v25[1] = v31;
    if (v31 > 0x7F)
    {
      v25[1] = v31 | 0x80;
      v32 = v31 >> 7;
      v25[2] = v31 >> 7;
      v30 = v25 + 3;
      if (v31 >= 0x4000)
      {
        LOBYTE(v25) = v25[2];
        do
        {
          *(v30 - 1) = v25 | 0x80;
          v25 = (v32 >> 7);
          *v30++ = v32 >> 7;
          v33 = v32 >> 14;
          v32 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v30 = v25 + 2;
    }
  }

  else
  {
    v30 = v25;
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v35 = *(a1 + 160);
    *v30 = 64;
    v30[1] = v35;
    if (v35 > 0x7F)
    {
      v30[1] = v35 | 0x80;
      v36 = v35 >> 7;
      v30[2] = v35 >> 7;
      v34 = v30 + 3;
      if (v35 >= 0x4000)
      {
        LOBYTE(v30) = v30[2];
        do
        {
          *(v34 - 1) = v30 | 0x80;
          v30 = (v36 >> 7);
          *v34++ = v36 >> 7;
          v37 = v36 >> 14;
          v36 >>= 7;
        }

        while (v37);
      }
    }

    else
    {
      v34 = v30 + 2;
    }
  }

  else
  {
    v34 = v30;
  }

  v38 = *(a1 + 56);
  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v40 = *(*(a1 + 64) + 8 * i + 8);
      *v34 = 74;
      v41 = *(v40 + 44);
      v34[1] = v41;
      if (v41 > 0x7F)
      {
        v42 = sub_19575D0(v41, v34 + 1);
      }

      else
      {
        v42 = v34 + 2;
      }

      v34 = sub_15EB31C(v40, v42, a3);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v44 = *(a1 + 172);
    *v34 = 80;
    v34[1] = v44;
    v34 += 2;
    if ((v5 & 4) == 0)
    {
LABEL_79:
      if ((v5 & 8) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_93;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_79;
  }

  if (*a3 <= v34)
  {
    v34 = sub_225EB68(a3, v34);
  }

  v45 = *(a1 + 88);
  *v34 = 90;
  v46 = *(v45 + 20);
  v34[1] = v46;
  if (v46 > 0x7F)
  {
    v47 = sub_19575D0(v46, v34 + 1);
  }

  else
  {
    v47 = v34 + 2;
  }

  v34 = sub_15E1F24(v45, v47, a3);
  if ((v5 & 8) == 0)
  {
LABEL_80:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_99;
  }

LABEL_93:
  if (*a3 <= v34)
  {
    v34 = sub_225EB68(a3, v34);
  }

  v48 = *(a1 + 96);
  *v34 = 98;
  v49 = *(v48 + 20);
  v34[1] = v49;
  if (v49 > 0x7F)
  {
    v50 = sub_19575D0(v49, v34 + 1);
  }

  else
  {
    v50 = v34 + 2;
  }

  v34 = sub_15E1F24(v48, v50, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_81:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_82;
    }

LABEL_105:
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v54 = *(a1 + 112);
    *v34 = 114;
    v55 = *(v54 + 20);
    v34[1] = v55;
    if (v55 > 0x7F)
    {
      v56 = sub_19575D0(v55, v34 + 1);
    }

    else
    {
      v56 = v34 + 2;
    }

    v34 = sub_15E1F24(v54, v56, a3);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_111;
  }

LABEL_99:
  if (*a3 <= v34)
  {
    v34 = sub_225EB68(a3, v34);
  }

  v51 = *(a1 + 104);
  *v34 = 106;
  v52 = *(v51 + 20);
  v34[1] = v52;
  if (v52 > 0x7F)
  {
    v53 = sub_19575D0(v52, v34 + 1);
  }

  else
  {
    v53 = v34 + 2;
  }

  v34 = sub_15E1F24(v51, v53, a3);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_105;
  }

LABEL_82:
  if ((v5 & 0x8000) == 0)
  {
LABEL_83:
    v43 = v34;
    goto LABEL_118;
  }

LABEL_111:
  if (*a3 <= v34)
  {
    v34 = sub_225EB68(a3, v34);
  }

  v57 = *(a1 + 176);
  *v34 = 120;
  v34[1] = v57;
  if (v57 > 0x7F)
  {
    v34[1] = v57 | 0x80;
    v58 = v57 >> 7;
    v34[2] = v57 >> 7;
    v43 = v34 + 3;
    if (v57 >= 0x4000)
    {
      LOBYTE(v34) = v34[2];
      do
      {
        *(v43 - 1) = v34 | 0x80;
        v34 = (v58 >> 7);
        *v43++ = v58 >> 7;
        v59 = v58 >> 14;
        v58 >>= 7;
      }

      while (v59);
    }
  }

  else
  {
    v43 = v34 + 2;
  }

LABEL_118:
  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v60 = *(a1 + 173);
    *v43 = 384;
    v43[2] = v60;
    v43 += 3;
  }

  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v62 = *(a1 + 184);
    *v43 = 392;
    v43[2] = v62;
    if (v62 > 0x7F)
    {
      v43[2] = v62 | 0x80;
      v63 = v62 >> 7;
      v43[3] = v62 >> 7;
      v61 = v43 + 4;
      if (v62 >= 0x4000)
      {
        LOBYTE(v43) = v43[3];
        do
        {
          *(v61 - 1) = v43 | 0x80;
          v43 = (v63 >> 7);
          *v61++ = v63 >> 7;
          v64 = v63 >> 14;
          v63 >>= 7;
        }

        while (v64);
      }
    }

    else
    {
      v61 = v43 + 3;
    }
  }

  else
  {
    v61 = v43;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v61)
    {
      v61 = sub_225EB68(a3, v61);
    }

    v65 = *(a1 + 120);
    *v61 = 410;
    v66 = *(v65 + 20);
    v61[2] = v66;
    if (v66 > 0x7F)
    {
      v67 = sub_19575D0(v66, v61 + 2);
    }

    else
    {
      v67 = v61 + 3;
    }

    v61 = sub_15E1F24(v65, v67, a3);
  }

  if (*(a1 + 26))
  {
    v61 = sub_1953428(a1 + 16, 900, 1000, v61, a3);
  }

  v68 = *(a1 + 8);
  if ((v68 & 1) == 0)
  {
    return v61;
  }

  v70 = v68 & 0xFFFFFFFFFFFFFFFCLL;
  v71 = *(v70 + 31);
  if (v71 < 0)
  {
    v72 = *(v70 + 8);
    v71 = *(v70 + 16);
  }

  else
  {
    v72 = (v70 + 8);
  }

  if (*a3 - v61 >= v71)
  {
    v73 = v71;
    memcpy(v61, v72, v71);
    v61 += v73;
    return v61;
  }

  return sub_1957130(a3, v72, v71, v61);
}

uint64_t sub_15ECCF8(uint64_t a1)
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
      v9 = sub_15EB5DC(v8);
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
    v11 = sub_15E2148(*(a1 + 72));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v12 = sub_15E2148(*(a1 + 80));
  v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = sub_15E2148(*(a1 + 88));
  v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = sub_15E2148(*(a1 + 96));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x10) == 0)
  {
LABEL_13:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    v16 = sub_15E2148(*(a1 + 112));
    v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 0x40) == 0)
    {
LABEL_15:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_28:
  v15 = sub_15E2148(*(a1 + 104));
  v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_30:
  v17 = sub_15E2148(*(a1 + 120));
  v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v10 & 0x80) != 0)
  {
LABEL_16:
    v4 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_45;
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

      goto LABEL_34;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v4 += ((9 * (__clz(*(a1 + 144) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v10 & 0x400) == 0)
  {
LABEL_21:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v10 & 0x800) == 0)
  {
LABEL_22:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v10 & 0x1000) == 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  v18 = *(a1 + 168);
  if (v18 < 0)
  {
    v19 = 11;
  }

  else
  {
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 += v19;
LABEL_40:
  if ((v10 & 0x4000) != 0)
  {
    v4 += ((v10 >> 12) & 2) + 3;
  }

  else
  {
    v4 += (v10 >> 12) & 2;
  }

  if ((v10 & 0x8000) != 0)
  {
    v4 += ((9 * (__clz(*(a1 + 176) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_45:
  if ((v10 & 0x10000) != 0)
  {
    v4 += ((9 * (__clz(*(a1 + 184) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v4 += v23;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_15ED084(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_15EFAF8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
      *(a1 + 40) |= 1u;
      v12 = *(a1 + 72);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_15ED520(v14);
        *(a1 + 72) = v12;
      }

      if (*(a2 + 72))
      {
        v15 = *(a2 + 72);
      }

      else
      {
        v15 = &off_2779950;
      }

      sub_15E2260(v12, v15);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_48;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 40) |= 2u;
    v16 = *(a1 + 80);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_15ED520(v18);
      *(a1 + 80) = v16;
    }

    if (*(a2 + 80))
    {
      v19 = *(a2 + 80);
    }

    else
    {
      v19 = &off_2779950;
    }

    sub_15E2260(v16, v19);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_56;
    }

LABEL_48:
    *(a1 + 40) |= 4u;
    v20 = *(a1 + 88);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_15ED520(v22);
      *(a1 + 88) = v20;
    }

    if (*(a2 + 88))
    {
      v23 = *(a2 + 88);
    }

    else
    {
      v23 = &off_2779950;
    }

    sub_15E2260(v20, v23);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_64;
    }

LABEL_56:
    *(a1 + 40) |= 8u;
    v24 = *(a1 + 96);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_15ED520(v26);
      *(a1 + 96) = v24;
    }

    if (*(a2 + 96))
    {
      v27 = *(a2 + 96);
    }

    else
    {
      v27 = &off_2779950;
    }

    sub_15E2260(v24, v27);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_72;
    }

LABEL_64:
    *(a1 + 40) |= 0x10u;
    v28 = *(a1 + 104);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_15ED520(v30);
      *(a1 + 104) = v28;
    }

    if (*(a2 + 104))
    {
      v31 = *(a2 + 104);
    }

    else
    {
      v31 = &off_2779950;
    }

    sub_15E2260(v28, v31);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_80;
    }

LABEL_72:
    *(a1 + 40) |= 0x20u;
    v32 = *(a1 + 112);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_15ED520(v34);
      *(a1 + 112) = v32;
    }

    if (*(a2 + 112))
    {
      v35 = *(a2 + 112);
    }

    else
    {
      v35 = &off_2779950;
    }

    sub_15E2260(v32, v35);
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

LABEL_80:
    *(a1 + 40) |= 0x40u;
    v36 = *(a1 + 120);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_15ED520(v38);
      *(a1 + 120) = v36;
    }

    if (*(a2 + 120))
    {
      v39 = *(a2 + 120);
    }

    else
    {
      v39 = &off_2779950;
    }

    sub_15E2260(v36, v39);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_26;
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

      goto LABEL_91;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  *(a1 + 144) = *(a2 + 144);
  if ((v9 & 0x400) == 0)
  {
LABEL_19:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(a1 + 152) = *(a2 + 152);
  if ((v9 & 0x800) == 0)
  {
LABEL_20:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(a1 + 160) = *(a2 + 160);
  if ((v9 & 0x1000) == 0)
  {
LABEL_21:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(a1 + 168) = *(a2 + 168);
  if ((v9 & 0x2000) == 0)
  {
LABEL_22:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

LABEL_95:
    *(a1 + 173) = *(a2 + 173);
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_94:
  *(a1 + 172) = *(a2 + 172);
  if ((v9 & 0x4000) != 0)
  {
    goto LABEL_95;
  }

LABEL_23:
  if ((v9 & 0x8000) != 0)
  {
LABEL_24:
    *(a1 + 176) = *(a2 + 176);
  }

LABEL_25:
  *(a1 + 40) |= v9;
LABEL_26:
  if ((v9 & 0x10000) != 0)
  {
    v10 = *(a2 + 184);
    *(a1 + 40) |= 0x10000u;
    *(a1 + 184) = v10;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v11 = *(a2 + 8);
  if (v11)
  {

    sub_1957EF4((a1 + 8), (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}