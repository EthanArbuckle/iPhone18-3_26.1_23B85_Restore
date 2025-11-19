char *sub_1746270(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80000) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 224);
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

    v6 = sub_173DFFC(v11, v13, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
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

  v14 = *(a1 + 80);
  *v6 = 26;
  v15 = *(v14 + 64);
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v6 + 1);
  }

  else
  {
    v16 = v6 + 2;
  }

  v6 = sub_173E744(v14, v16, a3);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_36:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v17 = *(a1 + 88);
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

  v6 = sub_173EE1C(v17, v19, a3);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_42:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 96);
  *v6 = 42;
  v21 = *(v20 + 88);
  v6[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v6 + 1);
  }

  else
  {
    v22 = v6 + 2;
  }

  v6 = sub_173F4A4(v20, v22, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_48:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v23 = *(a1 + 104);
  *v6 = 50;
  v24 = *(v23 + 20);
  v6[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v6 + 1);
  }

  else
  {
    v25 = v6 + 2;
  }

  v6 = sub_1743F28(v23, v25, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_54:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v26 = *(a1 + 112);
  *v6 = 58;
  v27 = *(v26 + 20);
  v6[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v6 + 1);
  }

  else
  {
    v28 = v6 + 2;
  }

  v6 = sub_173FEFC(v26, v28, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

LABEL_60:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v29 = *(a1 + 120);
  *v6 = 66;
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

  v6 = sub_1741628(v29, v31, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_18:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_66:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v32 = *(a1 + 128);
  *v6 = 82;
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

  v6 = sub_1741A54(v32, v34, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_78;
  }

LABEL_72:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v35 = *(a1 + 136);
  *v6 = 90;
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

  v6 = sub_1741F68(v35, v37, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_84;
  }

LABEL_78:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v38 = *(a1 + 144);
  *v6 = 98;
  v39 = *(v38 + 20);
  v6[1] = v39;
  if (v39 > 0x7F)
  {
    v40 = sub_19575D0(v39, v6 + 1);
  }

  else
  {
    v40 = v6 + 2;
  }

  v6 = sub_1742474(v38, v40, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_90;
  }

LABEL_84:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v41 = *(a1 + 152);
  *v6 = 106;
  v42 = *(v41 + 20);
  v6[1] = v42;
  if (v42 > 0x7F)
  {
    v43 = sub_19575D0(v42, v6 + 1);
  }

  else
  {
    v43 = v6 + 2;
  }

  v6 = sub_17429A8(v41, v43, a3);
  if ((v5 & 0x800) == 0)
  {
LABEL_22:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_96;
  }

LABEL_90:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v44 = *(a1 + 160);
  *v6 = 114;
  v45 = *(v44 + 20);
  v6[1] = v45;
  if (v45 > 0x7F)
  {
    v46 = sub_19575D0(v45, v6 + 1);
  }

  else
  {
    v46 = v6 + 2;
  }

  v6 = sub_1742E40(v44, v46, a3);
  if ((v5 & 0x1000) != 0)
  {
LABEL_96:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v47 = *(a1 + 168);
    *v6 = 122;
    v48 = *(v47 + 20);
    v6[1] = v48;
    if (v48 > 0x7F)
    {
      v49 = sub_19575D0(v48, v6 + 1);
    }

    else
    {
      v49 = v6 + 2;
    }

    v6 = sub_17431F8(v47, v49, a3);
  }

LABEL_102:
  v50 = *(a1 + 32);
  if (v50)
  {
    for (i = 0; i != v50; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v52 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 386;
      v53 = *(v52 + 20);
      v6[2] = v53;
      if (v53 > 0x7F)
      {
        v54 = sub_19575D0(v53, v6 + 2);
      }

      else
      {
        v54 = v6 + 3;
      }

      v6 = sub_16F7770(v52, v54, a3);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v55 = *(a1 + 176);
    *v6 = 394;
    v56 = *(v55 + 20);
    v6[2] = v56;
    if (v56 > 0x7F)
    {
      v57 = sub_19575D0(v56, v6 + 2);
    }

    else
    {
      v57 = v6 + 3;
    }

    v6 = sub_174092C(v55, v57, a3);
    if ((v5 & 0x4000) == 0)
    {
LABEL_112:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_128;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_112;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v58 = *(a1 + 184);
  *v6 = 402;
  v59 = *(v58 + 96);
  v6[2] = v59;
  if (v59 > 0x7F)
  {
    v60 = sub_19575D0(v59, v6 + 2);
  }

  else
  {
    v60 = v6 + 3;
  }

  v6 = sub_16F9740(v58, v60, a3);
  if ((v5 & 0x8000) == 0)
  {
LABEL_113:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_134;
  }

LABEL_128:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v61 = *(a1 + 192);
  *v6 = 410;
  v62 = *(v61 + 64);
  v6[2] = v62;
  if (v62 > 0x7F)
  {
    v63 = sub_19575D0(v62, v6 + 2);
  }

  else
  {
    v63 = v6 + 3;
  }

  v6 = sub_1741010(v61, v63, a3);
  if ((v5 & 0x10000) == 0)
  {
LABEL_114:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_140;
  }

LABEL_134:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v64 = *(a1 + 200);
  *v6 = 418;
  v65 = *(v64 + 20);
  v6[2] = v65;
  if (v65 > 0x7F)
  {
    v66 = sub_19575D0(v65, v6 + 2);
  }

  else
  {
    v66 = v6 + 3;
  }

  v6 = sub_1743814(v64, v66, a3);
  if ((v5 & 0x20000) != 0)
  {
LABEL_140:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v67 = *(a1 + 208);
    *v6 = 426;
    v68 = *(v67 + 20);
    v6[2] = v68;
    if (v68 > 0x7F)
    {
      v69 = sub_19575D0(v68, v6 + 2);
    }

    else
    {
      v69 = v6 + 3;
    }

    v6 = sub_174463C(v67, v69, a3);
  }

LABEL_146:
  v70 = *(a1 + 56);
  if (v70)
  {
    for (j = 0; j != v70; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v72 = *(*(a1 + 64) + 8 * j + 8);
      *v6 = 434;
      v73 = *(v72 + 20);
      v6[2] = v73;
      if (v73 > 0x7F)
      {
        v74 = sub_19575D0(v73, v6 + 2);
      }

      else
      {
        v74 = v6 + 3;
      }

      v6 = sub_1744B6C(v72, v74, a3);
    }
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v75 = *(a1 + 216);
    *v6 = 16066;
    v76 = *(v75 + 20);
    v6[2] = v76;
    if (v76 > 0x7F)
    {
      v77 = sub_19575D0(v76, v6 + 2);
    }

    else
    {
      v77 = v6 + 3;
    }

    v6 = sub_1745060(v75, v77, a3);
  }

  v78 = *(a1 + 8);
  if ((v78 & 1) == 0)
  {
    return v6;
  }

  v80 = v78 & 0xFFFFFFFFFFFFFFFCLL;
  v81 = *(v80 + 31);
  if (v81 < 0)
  {
    v82 = *(v80 + 8);
    v81 = *(v80 + 16);
  }

  else
  {
    v82 = (v80 + 8);
  }

  if ((*a3 - v6) >= v81)
  {
    v83 = v81;
    memcpy(v6, v82, v81);
    v6 += v83;
    return v6;
  }

  return sub_1957130(a3, v82, v81, v6);
}

uint64_t sub_1746C6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 2 * v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = sub_16F7A28(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(a1 + 56);
  v10 = v3 + 2 * v9;
  v11 = *(a1 + 64);
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
      v15 = sub_1744C54(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 16);
  if (!v16)
  {
    goto LABEL_23;
  }

  if (v16)
  {
    v24 = sub_173E1A4(*(a1 + 72));
    v10 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 2) == 0)
    {
LABEL_16:
      if ((v16 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_46;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_16;
  }

  v25 = sub_173E908(*(a1 + 80));
  v10 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 4) == 0)
  {
LABEL_17:
    if ((v16 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  v26 = sub_173EF04(*(a1 + 88));
  v10 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 8) == 0)
  {
LABEL_18:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  v27 = sub_173F728(*(a1 + 96));
  v10 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x10) == 0)
  {
LABEL_19:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_49:
    v29 = sub_1740150(*(a1 + 112));
    v10 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 0x40) == 0)
    {
LABEL_21:
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_48:
  v28 = sub_17440A4(*(a1 + 104));
  v10 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_20:
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_50:
  v30 = sub_1741740(*(a1 + 120));
  v10 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x80) != 0)
  {
LABEL_22:
    v17 = sub_1741C04(*(a1 + 128));
    v10 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_23:
  if ((v16 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v16 & 0x100) != 0)
  {
    v31 = sub_1742118(*(a1 + 136));
    v10 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 0x200) == 0)
    {
LABEL_26:
      if ((v16 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_54;
    }
  }

  else if ((v16 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v32 = sub_1742624(*(a1 + 144));
  v10 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x400) == 0)
  {
LABEL_27:
    if ((v16 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  v33 = sub_1742B58(*(a1 + 152));
  v10 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x800) == 0)
  {
LABEL_28:
    if ((v16 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  v34 = sub_1742F58(*(a1 + 160));
  v10 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x1000) == 0)
  {
LABEL_29:
    if ((v16 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  v35 = sub_1743310(*(a1 + 168));
  v10 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v16 & 0x2000) == 0)
  {
LABEL_30:
    if ((v16 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  v36 = sub_1740A90(*(a1 + 176));
  v10 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v16 & 0x4000) == 0)
  {
LABEL_31:
    if ((v16 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_58:
  v37 = sub_16F9A70(*(a1 + 184));
  v10 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v16 & 0x8000) != 0)
  {
LABEL_32:
    v18 = sub_17412B0(*(a1 + 192));
    v10 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  if ((v16 & 0xF0000) == 0)
  {
    goto LABEL_42;
  }

  if ((v16 & 0x10000) != 0)
  {
    v38 = sub_1743A8C(*(a1 + 200));
    v10 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v16 & 0x20000) == 0)
    {
LABEL_36:
      if ((v16 & 0x40000) == 0)
      {
        goto LABEL_37;
      }

LABEL_62:
      v40 = sub_17451DC(*(a1 + 216));
      v10 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v16 & 0x80000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }
  }

  else if ((v16 & 0x20000) == 0)
  {
    goto LABEL_36;
  }

  v39 = sub_1744750(*(a1 + 208));
  v10 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v16 & 0x40000) != 0)
  {
    goto LABEL_62;
  }

LABEL_37:
  if ((v16 & 0x80000) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v19 = *(a1 + 224);
  v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v19 >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 11;
  }

  v10 += v21;
LABEL_42:
  v22 = *(a1 + 8);
  if (v22)
  {
    v41 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v42 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v42 < 0)
    {
      v42 = *(v41 + 16);
    }

    v10 += v42;
  }

  *(a1 + 20) = v10;
  return v10;
}

void sub_1747190(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EC5AC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_1763CD0((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (!v14)
  {
    goto LABEL_81;
  }

  if (v14)
  {
    *(a1 + 16) |= 1u;
    v15 = *(a1 + 72);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_1749598(v17);
      *(a1 + 72) = v15;
    }

    if (*(a2 + 72))
    {
      v18 = *(a2 + 72);
    }

    else
    {
      v18 = &off_27806F8;
    }

    sub_173E280(v15, v18);
    if ((v14 & 2) == 0)
    {
LABEL_10:
      if ((v14 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_10;
  }

  *(a1 + 16) |= 2u;
  v19 = *(a1 + 80);
  if (!v19)
  {
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v19 = sub_1749634(v21);
    *(a1 + 80) = v19;
  }

  if (*(a2 + 80))
  {
    v22 = *(a2 + 80);
  }

  else
  {
    v22 = &off_2780730;
  }

  sub_173EA00(v19, v22);
  if ((v14 & 4) == 0)
  {
LABEL_11:
    if ((v14 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_33:
  *(a1 + 16) |= 4u;
  v23 = *(a1 + 88);
  if (!v23)
  {
    v24 = *(a1 + 8);
    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
    if (v24)
    {
      v25 = *v25;
    }

    v23 = sub_17496D8(v25);
    *(a1 + 88) = v23;
  }

  if (*(a2 + 88))
  {
    v26 = *(a2 + 88);
  }

  else
  {
    v26 = &off_2780778;
  }

  sub_12F5A34(v23, v26);
  if ((v14 & 8) == 0)
  {
LABEL_12:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_41:
  *(a1 + 16) |= 8u;
  v27 = *(a1 + 96);
  if (!v27)
  {
    v28 = *(a1 + 8);
    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
    if (v28)
    {
      v29 = *v29;
    }

    v27 = sub_174975C(v29);
    *(a1 + 96) = v27;
  }

  if (*(a2 + 96))
  {
    v30 = *(a2 + 96);
  }

  else
  {
    v30 = &off_27807A0;
  }

  sub_173F868(v27, v30);
  if ((v14 & 0x10) == 0)
  {
LABEL_13:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_57:
    *(a1 + 16) |= 0x20u;
    v35 = *(a1 + 112);
    if (!v35)
    {
      v36 = *(a1 + 8);
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      sub_174980C(v37);
      *(a1 + 112) = v35;
    }

    if (*(a2 + 112))
    {
      v38 = *(a2 + 112);
    }

    else
    {
      v38 = &off_2780800;
    }

    sub_1740288(v35, v38);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_73;
    }

    goto LABEL_65;
  }

LABEL_49:
  *(a1 + 16) |= 0x10u;
  v31 = *(a1 + 104);
  if (!v31)
  {
    v32 = *(a1 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    v31 = sub_1749DC4(v33);
    *(a1 + 104) = v31;
  }

  if (*(a2 + 104))
  {
    v34 = *(a2 + 104);
  }

  else
  {
    v34 = &off_27809E8;
  }

  sub_1744174(v31, v34);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_57;
  }

LABEL_14:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_65:
  *(a1 + 16) |= 0x40u;
  v39 = *(a1 + 120);
  if (!v39)
  {
    v40 = *(a1 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    v39 = sub_17499E4(v41);
    *(a1 + 120) = v39;
  }

  if (*(a2 + 120))
  {
    v42 = *(a2 + 120);
  }

  else
  {
    v42 = &off_27808B8;
  }

  sub_1485514(v39, v42);
  if ((v14 & 0x80) != 0)
  {
LABEL_73:
    *(a1 + 16) |= 0x80u;
    v43 = *(a1 + 128);
    if (!v43)
    {
      v44 = *(a1 + 8);
      v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
      if (v44)
      {
        v45 = *v45;
      }

      v43 = sub_1749A60(v45);
      *(a1 + 128) = v43;
    }

    if (*(a2 + 128))
    {
      v46 = *(a2 + 128);
    }

    else
    {
      v46 = &off_27808D8;
    }

    sub_121721C(v43, v46);
  }

LABEL_81:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_155;
  }

  if ((v14 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v47 = *(a1 + 136);
    if (!v47)
    {
      v48 = *(a1 + 8);
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v49 = *v49;
      }

      v47 = sub_1749ADC(v49);
      *(a1 + 136) = v47;
    }

    if (*(a2 + 136))
    {
      v50 = *(a2 + 136);
    }

    else
    {
      v50 = &off_2780900;
    }

    sub_121721C(v47, v50);
    if ((v14 & 0x200) == 0)
    {
LABEL_84:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_107;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_84;
  }

  *(a1 + 16) |= 0x200u;
  v51 = *(a1 + 144);
  if (!v51)
  {
    v52 = *(a1 + 8);
    v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
    if (v52)
    {
      v53 = *v53;
    }

    v51 = sub_1749B58(v53);
    *(a1 + 144) = v51;
  }

  if (*(a2 + 144))
  {
    v54 = *(a2 + 144);
  }

  else
  {
    v54 = &off_2780928;
  }

  sub_128F8FC(v51, v54);
  if ((v14 & 0x400) == 0)
  {
LABEL_85:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_115;
  }

LABEL_107:
  *(a1 + 16) |= 0x400u;
  v55 = *(a1 + 152);
  if (!v55)
  {
    v56 = *(a1 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    v55 = sub_1749BD0(v57);
    *(a1 + 152) = v55;
  }

  if (*(a2 + 152))
  {
    v58 = *(a2 + 152);
  }

  else
  {
    v58 = &off_2780948;
  }

  sub_128F8FC(v55, v58);
  if ((v14 & 0x800) == 0)
  {
LABEL_86:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_123;
  }

LABEL_115:
  *(a1 + 16) |= 0x800u;
  v59 = *(a1 + 160);
  if (!v59)
  {
    v60 = *(a1 + 8);
    v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
    if (v60)
    {
      v61 = *v61;
    }

    v59 = sub_1749C48(v61);
    *(a1 + 160) = v59;
  }

  if (*(a2 + 160))
  {
    v62 = *(a2 + 160);
  }

  else
  {
    v62 = &off_2780968;
  }

  sub_1336380(v59, v62);
  if ((v14 & 0x1000) == 0)
  {
LABEL_87:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_131;
  }

LABEL_123:
  *(a1 + 16) |= 0x1000u;
  v63 = *(a1 + 168);
  if (!v63)
  {
    v64 = *(a1 + 8);
    v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
    if (v64)
    {
      v65 = *v65;
    }

    v63 = sub_1749CC4(v65);
    *(a1 + 168) = v63;
  }

  if (*(a2 + 168))
  {
    v66 = *(a2 + 168);
  }

  else
  {
    v66 = &off_2780990;
  }

  sub_1743364(v63, v66);
  if ((v14 & 0x2000) == 0)
  {
LABEL_88:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_139;
  }

LABEL_131:
  *(a1 + 16) |= 0x2000u;
  v67 = *(a1 + 176);
  if (!v67)
  {
    v68 = *(a1 + 8);
    v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
    if (v68)
    {
      v69 = *v69;
    }

    v67 = sub_174988C(v69);
    *(a1 + 176) = v67;
  }

  if (*(a2 + 176))
  {
    v70 = *(a2 + 176);
  }

  else
  {
    v70 = &off_2780838;
  }

  sub_1740414(v67, v70);
  if ((v14 & 0x4000) == 0)
  {
LABEL_89:
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_147;
  }

LABEL_139:
  *(a1 + 16) |= 0x4000u;
  v71 = *(a1 + 184);
  if (!v71)
  {
    v72 = *(a1 + 8);
    v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
    if (v72)
    {
      v73 = *v73;
    }

    v71 = sub_16FA088(v73);
    *(a1 + 184) = v71;
  }

  if (*(a2 + 184))
  {
    v74 = *(a2 + 184);
  }

  else
  {
    v74 = &off_277ED50;
  }

  sub_16F9C10(v71, v74);
  if ((v14 & 0x8000) != 0)
  {
LABEL_147:
    *(a1 + 16) |= 0x8000u;
    v75 = *(a1 + 192);
    if (!v75)
    {
      v76 = *(a1 + 8);
      v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
      if (v76)
      {
        v77 = *v77;
      }

      v75 = sub_1749930(v77);
      *(a1 + 192) = v75;
    }

    if (*(a2 + 192))
    {
      v78 = *(a2 + 192);
    }

    else
    {
      v78 = &off_2780870;
    }

    sub_17169D4(v75, v78);
  }

LABEL_155:
  if ((v14 & 0xF0000) == 0)
  {
    goto LABEL_162;
  }

  if ((v14 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v80 = *(a1 + 200);
    if (!v80)
    {
      v81 = *(a1 + 8);
      v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL);
      if (v81)
      {
        v82 = *v82;
      }

      v80 = sub_1749D3C(v82);
      *(a1 + 200) = v80;
    }

    if (*(a2 + 200))
    {
      v83 = *(a2 + 200);
    }

    else
    {
      v83 = &off_27809B0;
    }

    sub_12F72E8(v80, v83);
    if ((v14 & 0x20000) == 0)
    {
LABEL_158:
      if ((v14 & 0x40000) == 0)
      {
        goto LABEL_159;
      }

LABEL_182:
      *(a1 + 16) |= 0x40000u;
      v88 = *(a1 + 216);
      if (!v88)
      {
        v89 = *(a1 + 8);
        v90 = (v89 & 0xFFFFFFFFFFFFFFFCLL);
        if (v89)
        {
          v90 = *v90;
        }

        v88 = sub_1749F4C(v90);
        *(a1 + 216) = v88;
      }

      if (*(a2 + 216))
      {
        v91 = *(a2 + 216);
      }

      else
      {
        v91 = &off_2780A40;
      }

      sub_17452AC(v88, v91);
      if ((v14 & 0x80000) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_160;
    }
  }

  else if ((v14 & 0x20000) == 0)
  {
    goto LABEL_158;
  }

  *(a1 + 16) |= 0x20000u;
  v84 = *(a1 + 208);
  if (!v84)
  {
    v85 = *(a1 + 8);
    v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
    if (v85)
    {
      v86 = *v86;
    }

    v84 = sub_1749E40(v86);
    *(a1 + 208) = v84;
  }

  if (*(a2 + 208))
  {
    v87 = *(a2 + 208);
  }

  else
  {
    v87 = &off_2780A10;
  }

  sub_12EB184(v84, v87);
  if ((v14 & 0x40000) != 0)
  {
    goto LABEL_182;
  }

LABEL_159:
  if ((v14 & 0x80000) != 0)
  {
LABEL_160:
    *(a1 + 224) = *(a2 + 224);
  }

LABEL_161:
  *(a1 + 16) |= v14;
LABEL_162:
  v79 = *(a2 + 8);
  if (v79)
  {

    sub_1957EF4((a1 + 8), (v79 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_17478D0(uint64_t a1)
{
  if (!sub_171610C(a1 + 24))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if ((v2 & 0x10) != 0 && !sub_1744270(*(a1 + 104)))
  {
    return 0;
  }

  if ((v2 & 0x20) == 0)
  {
    goto LABEL_7;
  }

  if (!sub_1740508(*(a1 + 112)))
  {
    return 0;
  }

  v2 = *(a1 + 16);
LABEL_7:
  if ((v2 & 0x2000) == 0)
  {
    return 1;
  }

  v5 = *(a1 + 176);
  v6 = *(v5 + 32);
  do
  {
    v3 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_136A598(*(*(v5 + 40) + 8 * v6));
    v6 = v7;
  }

  while (v8);
  return v3;
}

uint64_t sub_1747980(uint64_t a1)
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

void sub_1747A20(uint64_t a1)
{
  sub_1747980(a1);

  operator delete();
}

uint64_t sub_1747A58(uint64_t a1)
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

uint64_t sub_1747A9C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1747BD4(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1747C9C(uint64_t a1)
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

uint64_t sub_1747D30(uint64_t a1)
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

  if (a1 != &off_2780B70)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_17453C8(v6);
      operator delete();
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      sub_1747980(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1747E54(uint64_t a1)
{
  sub_1747D30(a1);

  operator delete();
}

uint64_t sub_1747E8C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  v8 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_24;
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *v8 = 0;
  *(v8 + 23) = 0;
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  result = sub_1745724(*(a1 + 72));
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1747A58(*(a1 + 80));
  }

LABEL_8:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 80) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1747FAC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  if (sub_195ADC0(a3, v42, a3[11].i32[1]))
  {
    return *v42;
  }

  while (1)
  {
    v6 = (*v42 + 1);
    v7 = **v42;
    if (**v42 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v42, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v42 + 2);
      }
    }

    *v42 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v7 != 8)
      {
        goto LABEL_63;
      }

      v20 = (v6 + 1);
      v21 = *v6;
      if (v21 < 0)
      {
        v22 = *v20;
        v23 = (v22 << 7) + v21;
        LODWORD(v21) = v23 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v20 = (v6 + 2);
          goto LABEL_37;
        }

        *v42 = sub_19587DC(v6, (v23 - 128));
        if (!*v42)
        {
          goto LABEL_79;
        }

        LODWORD(v21) = v41;
      }

      else
      {
LABEL_37:
        *v42 = v20;
      }

      if (sub_173CCA4(v21))
      {
        *(a1 + 16) |= 0x20u;
        *(a1 + 88) = v21;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_71;
    }

    if (v10 != 2)
    {
      if (v10 == 3 && v7 == 26)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 8);
        v12 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_44;
      }

      goto LABEL_63;
    }

    if (v7 != 18)
    {
      goto LABEL_63;
    }

    *(a1 + 16) |= 8u;
    v34 = *(a1 + 72);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_1749FC8(v36);
      v34 = v37;
      *(a1 + 72) = v37;
      v6 = *v42;
    }

    v19 = sub_223AB34(a3, v34, v6);
LABEL_70:
    *v42 = v19;
    if (!v19)
    {
      goto LABEL_79;
    }

LABEL_71:
    if (sub_195ADC0(a3, v42, a3[11].i32[1]))
    {
      return *v42;
    }
  }

  if (v7 >> 3 > 5)
  {
    if (v10 == 6)
    {
      if (v7 == 50)
      {
        v26 = (v6 - 1);
        while (1)
        {
          v27 = (v26 + 1);
          *v42 = v26 + 1;
          v28 = *(a1 + 40);
          if (v28 && (v29 = *(a1 + 32), v29 < *v28))
          {
            *(a1 + 32) = v29 + 1;
            v30 = *&v28[2 * v29 + 2];
          }

          else
          {
            v31 = *(a1 + 24);
            if (!v31)
            {
              operator new();
            }

            *v33 = v32;
            v33[1] = sub_195A650;
            *v32 = 0;
            v32[1] = 0;
            v32[2] = 0;
            v30 = sub_19593CC(a1 + 24, v32);
            v27 = *v42;
          }

          v26 = sub_1958890(v30, v27, a3);
          *v42 = v26;
          if (!v26)
          {
            goto LABEL_79;
          }

          if (*a3 <= v26 || *v26 != 50)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_63;
    }

    if (v10 != 1000 || v7 != 66)
    {
      goto LABEL_63;
    }

    *(a1 + 16) |= 0x10u;
    v16 = *(a1 + 80);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      v16 = sub_174A0B0(v18);
      *(a1 + 80) = v16;
      v6 = *v42;
    }

    v19 = sub_223ABC4(a3, v16, v6);
    goto LABEL_70;
  }

  if (v10 == 4)
  {
    if (v7 == 34)
    {
      *(a1 + 16) |= 2u;
      v24 = *(a1 + 8);
      v12 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v12 = *v12;
      }

      v13 = (a1 + 56);
      goto LABEL_44;
    }
  }

  else if (v10 == 5 && v7 == 42)
  {
    *(a1 + 16) |= 4u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v13 = (a1 + 64);
LABEL_44:
    v25 = sub_194DB04(v13, v12);
    v19 = sub_1958890(v25, *v42, a3);
    goto LABEL_70;
  }

LABEL_63:
  if (v7)
  {
    v38 = (v7 & 7) == 4;
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
      v6 = *v42;
    }

    v19 = sub_1952690(v7, v40, v6, a3);
    goto LABEL_70;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v42;
  }

LABEL_79:
  *v42 = 0;
  return *v42;
}

char *sub_17483B4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 88);
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

    v19 = *(a1 + 72);
    *v6 = 18;
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

    v6 = sub_1746270(v19, v21, a3);
    if ((v5 & 1) == 0)
    {
LABEL_12:
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 2) == 0)
  {
LABEL_13:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_42:
  v6 = sub_128AEEC(a3, 4, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 4) != 0)
  {
LABEL_14:
    v6 = sub_128AEEC(a3, 5, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

LABEL_15:
  v11 = *(a1 + 32);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 40) + v12);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = v13[1], v14 > 127) || (*a3 - v6 + 14) < v14)
      {
        v6 = sub_1957480(a3, 6, v13, v6);
      }

      else
      {
        *v6 = 50;
        v6[1] = v14;
        if (*(v13 + 23) < 0)
        {
          v13 = *v13;
        }

        v15 = v6 + 2;
        memcpy(v15, v13, v14);
        v6 = &v15[v14];
      }

      v12 += 8;
      --v11;
    }

    while (v11);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 80);
    *v6 = 16066;
    v17 = *(v16 + 20);
    v6[2] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v6 + 2);
    }

    else
    {
      v18 = v6 + 3;
    }

    v6 = sub_1747BD4(v16, v18, a3);
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v25)
  {
    v27 = v25;
    memcpy(v6, v26, v25);
    v6 += v27;
    return v6;
  }

  return sub_1957130(a3, v26, v25, v6);
}

uint64_t sub_17486C4(uint64_t a1)
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
  if ((v8 & 0x3F) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

LABEL_22:
    v15 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_13:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

LABEL_25:
    v18 = sub_1746C6C(*(a1 + 72));
    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_14:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

LABEL_26:
    v19 = sub_1747C9C(*(a1 + 80));
    v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_31;
    }

LABEL_27:
    v20 = *(a1 + 88);
    if (v20 < 0)
    {
      v21 = 11;
    }

    else
    {
      v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v21;
  }

LABEL_31:
  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v4 += v25;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_17488FC(uint64_t a1, uint64_t a2)
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
  if ((v9 & 0x3F) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 48), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_23;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

LABEL_23:
    v17 = *(a2 + 64);
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    sub_194EA1C((a1 + 64), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

LABEL_26:
    *(a1 + 16) |= 8u;
    v20 = *(a1 + 72);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_1749FC8(v22);
      *(a1 + 72) = v20;
    }

    if (*(a2 + 72))
    {
      v23 = *(a2 + 72);
    }

    else
    {
      v23 = &off_2780A68;
    }

    sub_1747190(v20, v23);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
LABEL_12:
        *(a1 + 16) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_12;
    }

LABEL_34:
    *(a1 + 16) |= 0x10u;
    v24 = *(a1 + 80);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_174A0B0(v26);
      *(a1 + 80) = v24;
    }

    if (*(a2 + 80))
    {
      v27 = *(a2 + 80);
    }

    else
    {
      v27 = &off_2780B50;
    }

    sub_132DE2C(v24, v27);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1748B28(uint64_t a1)
{
  if ((*(a1 + 16) & 8) == 0)
  {
    return 1;
  }

  result = sub_17478D0(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1748B68(uint64_t a1)
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
  sub_1763BC0((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1748C48(uint64_t a1)
{
  sub_1748B68(a1);

  operator delete();
}

uint64_t sub_1748C80(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  if (sub_195ADC0(a3, v36, a3[11].i32[1]))
  {
    return *v36;
  }

  while (1)
  {
    v6 = (*v36 + 1);
    v7 = **v36;
    if (**v36 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v36, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v36 + 2);
      }
    }

    *v36 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 16) |= 1u;
          v30 = *(a1 + 8);
          v12 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v12 = *v12;
          }

          v13 = (a1 + 72);
          goto LABEL_50;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          *v36 = v15 + 1;
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
            v16 = *v36;
          }

          v15 = sub_1958890(v19, v16, a3);
          *v36 = v15;
          if (!v15)
          {
            goto LABEL_64;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_59;
          }
        }
      }
    }

    else if (v10 == 3)
    {
      if (v7 == 26)
      {
        v23 = v6 - 1;
        while (1)
        {
          v24 = v23 + 1;
          *v36 = v23 + 1;
          v25 = *(a1 + 64);
          if (v25 && (v26 = *(a1 + 56), v26 < *v25))
          {
            *(a1 + 56) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            v28 = sub_174A134(*(a1 + 48));
            v27 = sub_19593CC(a1 + 48, v28);
            v24 = *v36;
          }

          v23 = sub_223AC54(a3, v27, v24);
          *v36 = v23;
          if (!v23)
          {
            goto LABEL_64;
          }

          if (*a3 <= v23 || *v23 != 26)
          {
            goto LABEL_59;
          }
        }
      }
    }

    else if (v10 == 4)
    {
      if (v7 == 34)
      {
        *(a1 + 16) |= 2u;
        v29 = *(a1 + 8);
        v12 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v12 = *v12;
        }

        v13 = (a1 + 80);
        goto LABEL_50;
      }
    }

    else if (v10 == 5 && v7 == 42)
    {
      *(a1 + 16) |= 4u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v13 = (a1 + 88);
LABEL_50:
      v31 = sub_194DB04(v13, v12);
      v32 = sub_1958890(v31, *v36, a3);
      goto LABEL_58;
    }

    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v6 = *v36;
    }

    v32 = sub_1952690(v7, v35, v6, a3);
LABEL_58:
    *v36 = v32;
    if (!v32)
    {
      goto LABEL_64;
    }

LABEL_59:
    if (sub_195ADC0(a3, v36, a3[11].i32[1]))
    {
      return *v36;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v36;
  }

LABEL_64:
  *v36 = 0;
  return *v36;
}

char *sub_1748FD8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a1 + 40) + v8);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = v9[1], v10 > 127) || (*a3 - v4 + 14) < v10)
      {
        v4 = sub_1957480(a3, 2, v9, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v10;
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v11 = v4 + 2;
        memcpy(v11, v9, v10);
        v4 = &v11[v10];
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 26;
      v15 = *(v14 + 20);
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v4 + 1);
      }

      else
      {
        v16 = v4 + 2;
      }

      v4 = sub_17483B4(v14, v16, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 4, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  if ((v6 & 4) != 0)
  {
    v4 = sub_128AEEC(a3, 5, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

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

  if ((*a3 - v4) >= v20)
  {
    v22 = v20;
    memcpy(v4, v21, v20);
    v4 += v22;
    return v4;
  }

  return sub_1957130(a3, v21, v20, v4);
}

uint64_t sub_1749214(uint64_t a1)
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
      v14 = sub_17486C4(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 7) != 0)
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
          goto LABEL_21;
        }

        goto LABEL_18;
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
    if ((v15 & 4) != 0)
    {
LABEL_18:
      v16 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_21:
  v19 = *(a1 + 8);
  if (v19)
  {
    v27 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v9 += v28;
  }

  *(a1 + 20) = v9;
  return v9;
}

uint64_t sub_17493FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 8) != 0)
    {
      result = sub_17478D0(*(v3 + 72));
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

void *sub_1749468(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2705B88;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_17494EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2705C08;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

void *sub_1749598(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2705C88;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_1749634(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2705D08;
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

void *sub_17496D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2705D88;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_174975C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2705E08;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = a1;
  *(result + 88) = 0;
  return result;
}

double sub_174980C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_2705E88;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_174988C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2705F08;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

uint64_t sub_1749930(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2705F88;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_17499E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2706008;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_1749A60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706088;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1749ADC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706108;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1749B58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706188;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1749BD0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706208;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1749C48(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706288;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1749CC4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706308;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1749D3C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2706388;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_1749DC4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706408;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1749E40(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706488;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

void *sub_1749EC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706508;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_1749F4C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706588;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_1749FC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_2706608;
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
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 212) = 0u;
  return result;
}

void *sub_174A0B0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2706688;
  result[2] = 0;
  result[3] = &qword_278E990;
  return result;
}

uint64_t sub_174A134(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2706708;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = &qword_278E990;
  *(result + 88) = 0;
  return result;
}

void *sub_174A1E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2706788;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = &qword_278E990;
  result[11] = &qword_278E990;
  return result;
}

uint64_t sub_174A298(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_2780C30 && *(a1 + 40))
  {
    sub_191742C();
    operator delete();
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

void sub_174A380(uint64_t a1)
{
  sub_174A298(a1);

  operator delete();
}

unsigned __int8 *sub_174A3B8(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_17A82BC(*(result + 5));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = v1[8];
  v3 = v1 + 8;
  v3[40] = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_174A48C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v30, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v30 + 1);
    v8 = **v30;
    if (**v30 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v30, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v30 + 2);
      }
    }

    *v30 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 4u;
          v19 = *(a1 + 40);
          if (!v19)
          {
            v20 = *(a1 + 8);
            v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
            if (v20)
            {
              v21 = *v21;
            }

            v19 = sub_191BA60(v21);
            *(a1 + 40) = v19;
            v7 = *v30;
          }

          v22 = sub_2201310(a3, v19, v7);
          goto LABEL_42;
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 24);
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_35;
    }

    v5 |= 8u;
    v17 = (v7 + 1);
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = (v7 + 2);
LABEL_23:
      *v30 = v17;
      *(a1 + 48) = v16 != 0;
      goto LABEL_43;
    }

    v28 = sub_19587DC(v7, v16);
    *v30 = v28;
    *(a1 + 48) = v29 != 0;
    if (!v28)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (sub_195ADC0(a3, v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 2u;
    v23 = *(a1 + 8);
    v14 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v14 = *v14;
    }

    v15 = (a1 + 32);
LABEL_34:
    v24 = sub_194DB04(v15, v14);
    v22 = sub_1958890(v24, *v30, a3);
LABEL_42:
    *v30 = v22;
    if (!v22)
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

LABEL_35:
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
    v26 = *(a1 + 8);
    if (v26)
    {
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v27 = sub_11F1920((a1 + 8));
      v7 = *v30;
    }

    v22 = sub_1952690(v8, v27, v7, a3);
    goto LABEL_42;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_50:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_174A704(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
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
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 48);
  *v4 = 32;
  v4[1] = v10;
  v4 += 2;
LABEL_17:
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

uint64_t sub_174A8A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    result = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v11 = sub_1917844(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result = v3 + ((v2 >> 2) & 2);
LABEL_15:
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v13 + 16);
    }

    result += v14;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_174A9D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
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

        goto LABEL_18;
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
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_18:
    *(a1 + 16) |= 4u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_191BA60(v14);
      *(a1 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_278B870;
    }

    sub_17A8DBC(v12, v15);
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

uint64_t sub_174AB1C(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    return 1;
  }

  result = sub_17A8EF8(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_174AB5C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_2706888;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1763EE0(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
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

void sub_174AC3C(_Unwind_Exception *a1)
{
  sub_1763DD8(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_174AC84(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1763DD8(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_174AD04(void *a1)
{
  sub_174AC84(a1);

  operator delete();
}

unsigned __int8 *sub_174AD3C(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_174A3B8(v4);
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

char *sub_174ADB8(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_174DDEC(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_223ACE4(a3, v16, v13);
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

char *sub_174AF48(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_174A704(v8, v10, a3);
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

uint64_t sub_174B088(uint64_t a1)
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
      v7 = sub_174A8A4(v6);
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

void sub_174B130(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1763EE0((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
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

uint64_t sub_174B1F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 4) != 0)
    {
      result = sub_17A8EF8(*(v3 + 40));
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

uint64_t sub_174B260(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2706908;
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
    sub_13B6038((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
  if ((v11 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t sub_174B480(uint64_t a1)
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

  if (a1 != &off_2780C98)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      sub_174CF24(v5);
      operator delete();
    }

    if (*(a1 + 56))
    {
      sub_191742C();
      operator delete();
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      sub_174D584(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_13B5A00((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_174B57C(uint64_t a1)
{
  sub_174B480(a1);

  operator delete();
}

uint64_t sub_174B5B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17A82BC(v4);
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
      result = sub_174B688(*(v1 + 48));
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

    result = sub_17A82BC(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      result = sub_174B738(*(v1 + 64));
    }
  }

LABEL_10:
  if ((v5 & 0xF8) != 0)
  {
    *(v1 + 75) = 0;
    *(v1 + 72) = 0;
    *(v1 + 79) = 1;
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

uint64_t sub_174B688(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_174C7D8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_174B738(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_174B7A0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v57 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v57, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v57 + 1;
    v8 = *v57;
    if (*v57 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v57, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v57 + 2;
      }
    }

    v57 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_77;
        }

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

          v17 = sub_174E060(v19);
          *(a1 + 48) = v17;
          v7 = v57;
        }

        v15 = sub_223AD74(a3, v17, v7);
LABEL_84:
        v57 = v15;
        if (!v15)
        {
          goto LABEL_101;
        }

        goto LABEL_85;
      }

      if (v8 != 8)
      {
        goto LABEL_77;
      }

      v26 = v7 + 1;
      v27 = *v7;
      if (v27 < 0)
      {
        v28 = *v26;
        v29 = (v28 << 7) + v27;
        LODWORD(v27) = v29 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v26 = v7 + 2;
          goto LABEL_48;
        }

        v57 = sub_19587DC(v7, (v29 - 128));
        if (!v57)
        {
          goto LABEL_101;
        }

        LODWORD(v27) = v52;
      }

      else
      {
LABEL_48:
        v57 = v26;
      }

      if (sub_14CB318(v27))
      {
        *(a1 + 16) |= 8u;
        *(a1 + 72) = v27;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_85;
    }

    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_77;
      }

      *(a1 + 16) |= 2u;
      v30 = *(a1 + 56);
      if (!v30)
      {
        v31 = *(a1 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        v30 = sub_191BA60(v32);
        *(a1 + 56) = v30;
        v7 = v57;
      }

      v15 = sub_2201310(a3, v30, v7);
      goto LABEL_84;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_77;
    }

    v5 |= 0x10u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_36:
      v57 = v21;
      *(a1 + 76) = v20 != 0;
      goto LABEL_85;
    }

    v48 = sub_19587DC(v7, v20);
    v57 = v48;
    *(a1 + 76) = v49 != 0;
    if (!v48)
    {
      goto LABEL_101;
    }

LABEL_85:
    if (sub_195ADC0(a3, &v57, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 6)
  {
    if (v11 == 7)
    {
      if (v8 != 56)
      {
        goto LABEL_77;
      }

      v5 |= 0x40u;
      v34 = v7 + 1;
      v33 = *v7;
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_61;
      }

      v35 = *v34;
      v33 = (v35 << 7) + v33 - 128;
      if ((v35 & 0x80000000) == 0)
      {
        v34 = v7 + 2;
LABEL_61:
        v57 = v34;
        *(a1 + 78) = v33 != 0;
        goto LABEL_85;
      }

      v53 = sub_19587DC(v7, v33);
      v57 = v53;
      *(a1 + 78) = v54 != 0;
      if (!v53)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v11 != 8)
      {
        if (v11 != 9 || v8 != 74)
        {
          goto LABEL_77;
        }

        *(a1 + 16) |= 4u;
        v12 = *(a1 + 64);
        if (!v12)
        {
          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_174E104(v14);
          *(a1 + 64) = v12;
          v7 = v57;
        }

        v15 = sub_223AE04(a3, v12, v7);
        goto LABEL_84;
      }

      if (v8 != 64)
      {
        goto LABEL_77;
      }

      v5 |= 0x80u;
      v43 = v7 + 1;
      v42 = *v7;
      if ((v42 & 0x8000000000000000) == 0)
      {
        goto LABEL_76;
      }

      v44 = *v43;
      v42 = (v44 << 7) + v42 - 128;
      if ((v44 & 0x80000000) == 0)
      {
        v43 = v7 + 2;
LABEL_76:
        v57 = v43;
        *(a1 + 79) = v42 != 0;
        goto LABEL_85;
      }

      v55 = sub_19587DC(v7, v42);
      v57 = v55;
      *(a1 + 79) = v56 != 0;
      if (!v55)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_85;
  }

  if (v11 != 5)
  {
    if (v11 != 6 || v8 != 48)
    {
      goto LABEL_77;
    }

    v5 |= 0x20u;
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_43;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_43:
      v57 = v24;
      *(a1 + 77) = v23 != 0;
      goto LABEL_85;
    }

    v50 = sub_19587DC(v7, v23);
    v57 = v50;
    *(a1 + 77) = v51 != 0;
    if (!v50)
    {
      goto LABEL_101;
    }

    goto LABEL_85;
  }

  if (v8 == 42)
  {
    v36 = v7 - 1;
    while (1)
    {
      v37 = (v36 + 1);
      v57 = v36 + 1;
      v38 = *(a1 + 40);
      if (v38 && (v39 = *(a1 + 32), v39 < *v38))
      {
        *(a1 + 32) = v39 + 1;
        v40 = *&v38[2 * v39 + 2];
      }

      else
      {
        v41 = sub_191BA60(*(a1 + 24));
        v40 = sub_19593CC(a1 + 24, v41);
        v37 = v57;
      }

      v36 = sub_2201310(a3, v40, v37);
      v57 = v36;
      if (!v36)
      {
        goto LABEL_101;
      }

      if (*a3 <= v36 || *v36 != 42)
      {
        goto LABEL_85;
      }
    }
  }

LABEL_77:
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
      v7 = v57;
    }

    v15 = sub_1952690(v8, v47, v7, a3);
    goto LABEL_84;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_101:
  v57 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v57;
}

char *sub_174BCCC(uint64_t a1, char *__dst, void *a3)
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

    v6 = sub_174D1E0(v11, v13, a3);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
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

  v14 = *(a1 + 56);
  *v6 = 26;
  v15 = *(v14 + 44);
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v6 + 1);
  }

  else
  {
    v16 = v6 + 2;
  }

  v6 = sub_1917694(v14, v16, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_26:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 76);
    *v6 = 32;
    v6[1] = v17;
    v6 += 2;
  }

LABEL_29:
  v18 = *(a1 + 32);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v20 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 42;
      v21 = *(v20 + 44);
      v6[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v6 + 1);
      }

      else
      {
        v22 = v6 + 2;
      }

      v6 = sub_1917694(v20, v22, a3);
    }
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v23 = *(a1 + 77);
    *v6 = 48;
    v6[1] = v23;
    v6 += 2;
    if ((v5 & 0x40) == 0)
    {
LABEL_39:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_48;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_39;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v24 = *(a1 + 78);
  *v6 = 56;
  v6[1] = v24;
  v6 += 2;
  if ((v5 & 0x80) == 0)
  {
LABEL_40:
    if ((v5 & 4) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v25 = *(a1 + 79);
  *v6 = 64;
  v6[1] = v25;
  v6 += 2;
  if ((v5 & 4) != 0)
  {
LABEL_51:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v26 = *(a1 + 64);
    *v6 = 74;
    v27 = *(v26 + 20);
    v6[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v6 + 1);
    }

    else
    {
      v28 = v6 + 2;
    }

    v6 = sub_174D99C(v26, v28, a3);
  }

LABEL_57:
  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v32)
  {
    v34 = v32;
    memcpy(v6, v33, v32);
    v6 += v34;
    return v6;
  }

  return sub_1957130(a3, v33, v32, v6);
}

uint64_t sub_174C0B8(uint64_t a1)
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
      v7 = sub_1917844(v6);
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
  if (v8)
  {
    if (v8)
    {
      v15 = sub_174D344(*(a1 + 48));
      v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v16 = sub_1917844(*(a1 + 56));
    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) != 0)
      {
LABEL_14:
        v9 = *(a1 + 72);
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v9 >= 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = 11;
        }

        v2 += v11;
      }

LABEL_18:
      v12.i64[0] = 0x200000002;
      v12.i64[1] = 0x200000002;
      v2 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v8), xmmword_232A1F0), v12));
      goto LABEL_19;
    }

LABEL_23:
    v17 = sub_174DCBC(*(a1 + 64));
    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_19:
  v13 = *(a1 + 8);
  if (v13)
  {
    v18 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v2 += v19;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_174C264(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B6038((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

        v11 = sub_174E060(v13);
        *(a1 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_2780CE8;
      }

      sub_174C478(v11, v14);
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

      v15 = sub_191BA60(v17);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = &off_278B870;
    }

    sub_17A8DBC(v15, v18);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_43;
    }

LABEL_35:
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

      v19 = sub_174E104(v21);
      *(a1 + 64) = v19;
    }

    if (*(a2 + 64))
    {
      v22 = *(a2 + 64);
    }

    else
    {
      v22 = &off_2780D20;
    }

    sub_174C56C(v19, v22);
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
    *(a1 + 72) = *(a2 + 72);
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
    *(a1 + 76) = *(a2 + 76);
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
    *(a1 + 77) = *(a2 + 77);
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
      *(a1 + 79) = *(a2 + 79);
      goto LABEL_14;
    }

LABEL_46:
    *(a1 + 78) = *(a2 + 78);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_174C478(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1763F6C(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    size = v3->__r_.__value_.__l.__size_;
    v11 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[2], (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_174C56C(std::string *result, uint64_t a2)
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
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
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
      v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
      goto LABEL_10;
    }

LABEL_17:
    HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
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

uint64_t sub_174C680(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17A8EF8(*(*(a1 + 40) + 8 * v2));
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

  result = sub_17A8EF8(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_174C6F4(uint64_t a1)
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
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_174C7A0(uint64_t a1)
{
  sub_174C6F4(a1);

  operator delete();
}

uint64_t sub_174C7D8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E72AC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_174C888(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v25, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v25 + 1);
    v7 = **v25;
    if (**v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v25 + 2);
      }
    }

    *v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = v15 + 1;
          *v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_16F5A54(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = *v25;
          }

          v15 = sub_22002C0(a3, v19, v16);
          *v25 = v15;
          if (!v15)
          {
            break;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        *v25 = 0;
        return *v25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = sub_194DB04((a1 + 48), v22);
      v14 = sub_1958890(v23, *v25, a3);
      goto LABEL_32;
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
        return *v25;
      }

      goto LABEL_38;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_32:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_174CA60(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v9 = *(v8 + 20);
      v4[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, v4 + 1);
      }

      else
      {
        v10 = v4 + 2;
      }

      v4 = sub_16E74A8(v8, v10, a3);
    }
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

uint64_t sub_174CBC4(uint64_t a1)
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
      v7 = sub_16E7590(v6);
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
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_174CCB4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_13B326C(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    size = v3->__r_.__value_.__l.__size_;
    v11 = (size & 0xFFFFFFFFFFFFFFFCLL);
    if (size)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[2], (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_174CDC0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2706A08;
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
    sub_1763F6C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

void sub_174CEE0(_Unwind_Exception *a1)
{
  sub_1763E5C(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_174CF24(uint64_t a1)
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
  sub_1763E5C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_174CFD0(uint64_t a1)
{
  sub_174CF24(a1);

  operator delete();
}

uint64_t sub_174D008(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v25 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v25, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v25 + 1);
    v7 = **v25;
    if (**v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v25 + 2);
      }
    }

    *v25 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = v15 + 1;
          *v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_174DFBC(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = *v25;
          }

          v15 = sub_223AE94(a3, v19, v16);
          *v25 = v15;
          if (!v15)
          {
            break;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        *v25 = 0;
        return *v25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = sub_194DB04((a1 + 48), v22);
      v14 = sub_1958890(v23, *v25, a3);
      goto LABEL_32;
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
        return *v25;
      }

      goto LABEL_38;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_32:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_174D1E0(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v9 = *(v8 + 20);
      v4[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, v4 + 1);
      }

      else
      {
        v10 = v4 + 2;
      }

      v4 = sub_174CA60(v8, v10, a3);
    }
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

uint64_t sub_174D344(uint64_t a1)
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
      v7 = sub_174CBC4(v6);
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
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_174D44C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2706A88;
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

  v11 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v11;
  return a1;
}

void sub_174D544(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_174D584(void *a1)
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

void sub_174D600(void *a1)
{
  sub_174D584(a1);

  operator delete();
}

uint64_t sub_174D638(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v39 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v39, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v39 + 1);
    v8 = **v39;
    if (**v39 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v39, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v39 + 2);
      }
    }

    *v39 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        v22 = v7 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          *v39 = v22 + 1;
          v24 = *(a1 + 40);
          if (v24 && (v25 = *(a1 + 32), v25 < *v24))
          {
            *(a1 + 32) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 24);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 24, v28);
            v23 = *v39;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v39 = v22;
          if (!v22)
          {
            goto LABEL_63;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_52;
          }
        }
      }

      goto LABEL_45;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_45;
    }

    v5 |= 2u;
    v13 = v7 + 1;
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_22:
      *v39 = v13;
      *(a1 + 56) = v14;
      goto LABEL_52;
    }

    v37 = sub_1958770(v7, v14);
    *v39 = v37;
    *(a1 + 56) = v38;
    if (!v37)
    {
      goto LABEL_63;
    }

LABEL_52:
    if (sub_195ADC0(a3, v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_45;
    }

    v5 |= 1u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_27:
      *v39 = v17;
      *(a1 + 48) = v16;
      goto LABEL_52;
    }

    v33 = sub_19587DC(v7, v16);
    *v39 = v33;
    *(a1 + 48) = v34;
    if (!v33)
    {
      goto LABEL_63;
    }

    goto LABEL_52;
  }

  if (v11 == 4)
  {
    if (v8 != 32)
    {
      goto LABEL_45;
    }

    v5 |= 8u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_32:
      *v39 = v20;
      *(a1 + 64) = v19;
      goto LABEL_52;
    }

    v35 = sub_19587DC(v7, v19);
    *v39 = v35;
    *(a1 + 64) = v36;
    if (!v35)
    {
      goto LABEL_63;
    }

    goto LABEL_52;
  }

  if (v11 == 5 && v8 == 45)
  {
    v5 |= 4u;
    *(a1 + 60) = *v7;
    *v39 = v7 + 1;
    goto LABEL_52;
  }

LABEL_45:
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
      v7 = *v39;
    }

    *v39 = sub_1952690(v8, v32, v7, a3);
    if (!*v39)
    {
      goto LABEL_63;
    }

    goto LABEL_52;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  *v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v39;
}

char *sub_174D99C(uint64_t a1, char *__dst, _DWORD *a3)
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

  v11 = *(a1 + 16);
  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 56);
    *__dst = 16;
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      __dst[1] = v13 | 0x80;
      v14 = v13 >> 7;
      __dst[2] = v13 >> 7;
      v12 = __dst + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = __dst[2];
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
      v12 = __dst + 2;
    }
  }

  else
  {
    v12 = __dst;
  }

  if (v11)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v18 = *(a1 + 48);
    *v12 = 24;
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

  if ((v11 & 8) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v22 = *(a1 + 64);
    *v17 = 32;
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

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 60);
    *v21 = 45;
    *(v21 + 1) = v26;
    v21 += 5;
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v21;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if (*a3 - v21 >= v30)
  {
    v32 = v30;
    memcpy(v21, v31, v30);
    v21 += v32;
    return v21;
  }

  return sub_1957130(a3, v31, v30, v21);
}

uint64_t sub_174DCBC(uint64_t a1)
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
      v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v7 & 2) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v7 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v7 & 8) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
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

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_174DDEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_2706808;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_174DE74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2706888;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_174DF14(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2706908;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 63) = 0u;
  *(result + 79) = 1;
  return result;
}

void *sub_174DFBC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2706988;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_174E060(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2706A08;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

uint64_t sub_174E104(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2706A88;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_174E1BC(uint64_t a1)
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

void sub_174E25C(uint64_t a1)
{
  sub_174E1BC(a1);

  operator delete();
}

uint64_t sub_174E294(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_23:
      *v24 = v17;
      *(a1 + 32) = v16 != 0;
      goto LABEL_28;
    }

    v22 = sub_19587DC(v7, v16);
    *v24 = v22;
    *(a1 + 32) = v23 != 0;
    if (!v22)
    {
      goto LABEL_35;
    }

LABEL_28:
    if (sub_195ADC0(a3, v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v15 = sub_1958890(v21, *v24, a3);
LABEL_27:
    *v24 = v15;
    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
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
    goto LABEL_27;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_35:
  *v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v24;
}

char *sub_174E470(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if (*a3 - v4 >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_174E570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_174E61C(uint64_t a1)
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
  if (a1 != &off_2780D90)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_174E1BC(v6);
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

void sub_174E6D4(uint64_t a1)
{
  sub_174E61C(a1);

  operator delete();
}

char *sub_174E70C(uint64_t a1, char *a2, int32x2_t *a3)
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

        v14 = sub_1750024(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_2239250(a3, v14, v6);
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

char *sub_174E850(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_174E470(v6, v8, a3);
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

uint64_t sub_174E95C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_174E570(*(a1 + 24));
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

uint64_t sub_174E9F4(uint64_t a1)
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
  if (a1 != &off_2780DB0)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_174E1BC(v6);
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

void sub_174EAB4(uint64_t a1)
{
  sub_174E9F4(a1);

  operator delete();
}

char *sub_174EAEC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
  {
    return v25;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v25 + 1;
    v8 = *v25;
    if (*v25 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v25, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v25 + 2;
      }
    }

    v25 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1)
    {
      goto LABEL_35;
    }

    if (v8 == 8)
    {
      v12 = v7 - 1;
      while (1)
      {
        v25 = v12 + 1;
        v13 = v12[1];
        v14 = v12 + 2;
        if (v13 < 0)
        {
          v15 = *v14;
          v16 = (v15 << 7) + v13;
          LODWORD(v13) = v16 - 128;
          if (v15 < 0)
          {
            v25 = sub_19587DC((v12 + 1), (v16 - 128));
            if (!v25)
            {
              return 0;
            }

            LODWORD(v13) = v19;
            goto LABEL_16;
          }

          v14 = v12 + 3;
        }

        v25 = v14;
LABEL_16:
        if (v13 > 1)
        {
          sub_12E8450();
        }

        else
        {
          v17 = *(a1 + 24);
          if (v17 == *(a1 + 28))
          {
            v18 = v17 + 1;
            sub_1958E5C((a1 + 24), v17 + 1);
            *(*(a1 + 32) + 4 * v17) = v13;
          }

          else
          {
            *(*(a1 + 32) + 4 * v17) = v13;
            v18 = v17 + 1;
          }

          *(a1 + 24) = v18;
        }

        v12 = v25;
        if (*a3 <= v25 || *v25 != 8)
        {
          goto LABEL_43;
        }
      }
    }

    if (v8 != 10)
    {
      goto LABEL_35;
    }

    *&v26 = a1 + 24;
    *(&v26 + 1) = sub_174E1A4;
    v27 = a1 + 8;
    v28 = 1;
    v22 = sub_1216588(a3, v7, &v26);
LABEL_42:
    v25 = v22;
    if (!v22)
    {
      return 0;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      return v25;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 40);
    if (!v20)
    {
      v21 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v6)
      {
        v21 = *v21;
      }

      v20 = sub_1750024(v21);
      *(a1 + 40) = v20;
      v7 = v25;
    }

    v22 = sub_2239250(a3, v20, v7);
    goto LABEL_42;
  }

LABEL_35:
  if (v8)
  {
    v23 = (v8 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    if (*v6)
    {
      v24 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v7 = v25;
    }

    v22 = sub_1952690(v8, v24, v7, a3);
    goto LABEL_42;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return v25;
}

char *sub_174ED80(uint64_t a1, char *a2, void *a3)
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

  if (*(a1 + 16))
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v12 = *(a1 + 40);
    *v8 = 18;
    v13 = *(v12 + 20);
    v8[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v8 + 1);
    }

    else
    {
      v14 = v8 + 2;
    }

    v8 = sub_174E470(v12, v14, a3);
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v18)
  {
    v20 = v18;
    memcpy(v8, v19, v18);
    v8 += v20;
    return v8;
  }

  return sub_1957130(a3, v19, v18, v8);
}

uint64_t sub_174EF38(uint64_t a1)
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
  if (*(a1 + 16))
  {
    v8 = sub_174E570(*(a1 + 40));
    v7 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v7 += v12;
  }

  *(a1 + 20) = v7;
  return v7;
}

uint64_t sub_174F028(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_174F0E0(uint64_t a1)
{
  sub_174F028(a1);

  operator delete();
}

uint64_t sub_174F118(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v21 = (a1 + 24);
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_34;
    }

    v5 |= 4u;
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      *v32 = v14;
      *(a1 + 40) = v13 != 0;
      goto LABEL_42;
    }

    v30 = sub_19587DC(v7, v13);
    *v32 = v30;
    *(a1 + 40) = v31 != 0;
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

  if (v11 != 3)
  {
    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_34;
    }

    v5 |= 8u;
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
      *v32 = v17;
      *(a1 + 41) = v16 != 0;
      goto LABEL_42;
    }

    v28 = sub_19587DC(v7, v16);
    *v32 = v28;
    *(a1 + 41) = v29 != 0;
    if (!v28)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 2u;
    v22 = *(a1 + 8);
    v20 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v20 = *v20;
    }

    v21 = (a1 + 32);
LABEL_33:
    v23 = sub_194DB04(v21, v20);
    v24 = sub_1958890(v23, *v32, a3);
LABEL_41:
    *v32 = v24;
    if (!v24)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

LABEL_34:
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

    v24 = sub_1952690(v8, v27, v7, a3);
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
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_174F3AC(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 40);
  *v4 = 16;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 41);
  *v4 = 32;
  v4[1] = v8;
  v4 += 2;
LABEL_14:
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

uint64_t sub_174F514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v1)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
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
  v3 = v2 + ((v1 >> 2) & 2) + ((v1 >> 1) & 2);
LABEL_13:
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

uint64_t sub_174F618(uint64_t a1)
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
  if (a1 != &off_2780E10)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_174F028(v6);
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

void sub_174F6D0(uint64_t a1)
{
  sub_174F618(a1);

  operator delete();
}

char *sub_174F708(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 == 26)
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

        v14 = sub_17501BC(v16);
        *(a1 + 24) = v14;
        v6 = v18;
      }

      v13 = sub_22392E0(a3, v14, v6);
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

char *sub_174F84C(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 26;
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

    v4 = sub_174F3AC(v6, v8, a3);
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

uint64_t sub_174F958(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_174F514(*(a1 + 24));
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

uint64_t sub_174F9F0(uint64_t a1)
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
  if (a1 != &off_2780E30)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_174F028(v6);
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

void sub_174FAB0(uint64_t a1)
{
  sub_174F9F0(a1);

  operator delete();
}

char *sub_174FAE8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
  {
    return v25;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = v25 + 1;
    v8 = *v25;
    if (*v25 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(v25, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = v25 + 2;
      }
    }

    v25 = v7;
    if (v8 >> 3 == 2)
    {
      break;
    }

    if (v8 >> 3 != 1)
    {
      goto LABEL_35;
    }

    if (v8 == 8)
    {
      v12 = v7 - 1;
      while (1)
      {
        v25 = v12 + 1;
        v13 = v12[1];
        v14 = v12 + 2;
        if (v13 < 0)
        {
          v15 = *v14;
          v16 = (v15 << 7) + v13;
          LODWORD(v13) = v16 - 128;
          if (v15 < 0)
          {
            v25 = sub_19587DC((v12 + 1), (v16 - 128));
            if (!v25)
            {
              return 0;
            }

            LODWORD(v13) = v19;
            goto LABEL_16;
          }

          v14 = v12 + 3;
        }

        v25 = v14;
LABEL_16:
        if (v13 > 2)
        {
          sub_12E8450();
        }

        else
        {
          v17 = *(a1 + 24);
          if (v17 == *(a1 + 28))
          {
            v18 = v17 + 1;
            sub_1958E5C((a1 + 24), v17 + 1);
            *(*(a1 + 32) + 4 * v17) = v13;
          }

          else
          {
            *(*(a1 + 32) + 4 * v17) = v13;
            v18 = v17 + 1;
          }

          *(a1 + 24) = v18;
        }

        v12 = v25;
        if (*a3 <= v25 || *v25 != 8)
        {
          goto LABEL_43;
        }
      }
    }

    if (v8 != 10)
    {
      goto LABEL_35;
    }

    *&v26 = a1 + 24;
    *(&v26 + 1) = sub_174E1B0;
    v27 = a1 + 8;
    v28 = 1;
    v22 = sub_1216588(a3, v7, &v26);
LABEL_42:
    v25 = v22;
    if (!v22)
    {
      return 0;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      return v25;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 40);
    if (!v20)
    {
      v21 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v6)
      {
        v21 = *v21;
      }

      v20 = sub_17501BC(v21);
      *(a1 + 40) = v20;
      v7 = v25;
    }

    v22 = sub_22392E0(a3, v20, v7);
    goto LABEL_42;
  }

LABEL_35:
  if (v8)
  {
    v23 = (v8 & 7) == 4;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    if (*v6)
    {
      v24 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v7 = v25;
    }

    v22 = sub_1952690(v8, v24, v7, a3);
    goto LABEL_42;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return v25;
}

char *sub_174FD7C(uint64_t a1, char *a2, void *a3)
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

  if (*(a1 + 16))
  {
    if (*a3 <= v8)
    {
      v8 = sub_225EB68(a3, v8);
    }

    v12 = *(a1 + 40);
    *v8 = 18;
    v13 = *(v12 + 20);
    v8[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v8 + 1);
    }

    else
    {
      v14 = v8 + 2;
    }

    v8 = sub_174F3AC(v12, v14, a3);
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v8;
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

  if (*a3 - v8 >= v18)
  {
    v20 = v18;
    memcpy(v8, v19, v18);
    v8 += v20;
    return v8;
  }

  return sub_1957130(a3, v19, v18, v8);
}

uint64_t sub_174FF34(uint64_t a1)
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
  if (*(a1 + 16))
  {
    v8 = sub_174F514(*(a1 + 40));
    v7 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v7 += v12;
  }

  *(a1 + 20) = v7;
  return v7;
}

uint64_t sub_1750024(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_2706B08;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

void *sub_17500AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2706B88;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_1750124(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2706C08;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = 0;
  return result;
}