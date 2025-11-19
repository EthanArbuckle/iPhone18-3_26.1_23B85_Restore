uint64_t sub_186E5B8(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 64) + 4 * v5);
      if (v6 < 0)
      {
        v7 = 10;
      }

      else
      {
        v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v7;
      ++v5;
    }

    while (v3 != v5);
  }

  else
  {
    v4 = 0;
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 80) + 4 * v10);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v9 += v12;
      ++v10;
    }

    while (v8 != v10);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(a1 + 96) + 4 * v14);
      if (v16 < 0)
      {
        v17 = 10;
      }

      else
      {
        v17 = (9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6;
      }

      v15 += v17;
      ++v14;
    }

    while (v13 != v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = *(a1 + 104);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(a1 + 112) + 4 * v19);
      if (v21 < 0)
      {
        v22 = 10;
      }

      else
      {
        v22 = (9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6;
      }

      v20 += v22;
      ++v19;
    }

    while (v18 != v19);
  }

  else
  {
    v20 = 0;
  }

  v23 = *(a1 + 120);
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(*(a1 + 128) + 4 * v24);
      if (v26 < 0)
      {
        v27 = 10;
      }

      else
      {
        v27 = (9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6;
      }

      v25 += v27;
      ++v24;
    }

    while (v23 != v24);
  }

  else
  {
    v25 = 0;
  }

  v28 = *(a1 + 144);
  v29 = v4 + v2 + v9 + v15 + v20 + v25 + 2 * (v8 + v3 + v13 + v18 + v23 + v28);
  v30 = *(a1 + 152);
  if (v30)
  {
    v31 = (v30 + 8);
  }

  else
  {
    v31 = 0;
  }

  if (v28)
  {
    v32 = 8 * v28;
    do
    {
      v33 = *v31++;
      v34 = sub_13AB4D4(v33);
      v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      v32 -= 8;
    }

    while (v32);
  }

  v35 = *(a1 + 40);
  if (!v35)
  {
    goto LABEL_57;
  }

  if (v35)
  {
    v49 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
    v50 = *(v49 + 23);
    v51 = *(v49 + 8);
    if ((v50 & 0x80u) == 0)
    {
      v51 = v50;
    }

    v29 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v35 & 2) == 0)
    {
LABEL_50:
      if ((v35 & 4) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_111;
    }
  }

  else if ((v35 & 2) == 0)
  {
    goto LABEL_50;
  }

  v52 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  v53 = *(v52 + 23);
  v54 = *(v52 + 8);
  if ((v53 & 0x80u) == 0)
  {
    v54 = v53;
  }

  v29 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v35 & 4) == 0)
  {
LABEL_51:
    if ((v35 & 8) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_114;
  }

LABEL_111:
  v55 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v56 = *(v55 + 23);
  v57 = *(v55 + 8);
  if ((v56 & 0x80u) == 0)
  {
    v57 = v56;
  }

  v29 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v35 & 8) == 0)
  {
LABEL_52:
    if ((v35 & 0x10) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_117;
  }

LABEL_114:
  v58 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v59 = *(v58 + 23);
  v60 = *(v58 + 8);
  if ((v59 & 0x80u) == 0)
  {
    v60 = v59;
  }

  v29 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x10) == 0)
  {
LABEL_53:
    if ((v35 & 0x20) == 0)
    {
      goto LABEL_54;
    }

LABEL_118:
    v62 = sub_1403980(*(a1 + 200));
    v29 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v35 & 0x40) == 0)
    {
LABEL_55:
      if ((v35 & 0x80) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    goto LABEL_119;
  }

LABEL_117:
  v61 = sub_186A16C(*(a1 + 192));
  v29 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v35 & 0x20) != 0)
  {
    goto LABEL_118;
  }

LABEL_54:
  if ((v35 & 0x40) == 0)
  {
    goto LABEL_55;
  }

LABEL_119:
  v63 = sub_138467C(*(a1 + 208));
  v29 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v35 & 0x80) != 0)
  {
LABEL_56:
    v36 = sub_13851A0(*(a1 + 216));
    v29 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_57:
  if ((v35 & 0xFF00) == 0)
  {
    goto LABEL_67;
  }

  if ((v35 & 0x100) != 0)
  {
    v64 = sub_186B468(*(a1 + 224));
    v29 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v35 & 0x200) == 0)
    {
LABEL_60:
      if ((v35 & 0x400) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_123;
    }
  }

  else if ((v35 & 0x200) == 0)
  {
    goto LABEL_60;
  }

  v65 = sub_138853C(*(a1 + 232));
  v29 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v35 & 0x400) == 0)
  {
LABEL_61:
    if ((v35 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_124;
  }

LABEL_123:
  v66 = sub_1395750(*(a1 + 240));
  v29 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x800) == 0)
  {
LABEL_62:
    if ((v35 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_125;
  }

LABEL_124:
  v67 = sub_13872DC(*(a1 + 248));
  v29 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x1000) == 0)
  {
LABEL_63:
    if ((v35 & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_126;
  }

LABEL_125:
  v68 = sub_138DD08(*(a1 + 256));
  v29 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x2000) == 0)
  {
LABEL_64:
    if ((v35 & 0x4000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_127;
  }

LABEL_126:
  v69 = sub_17CA3BC(*(a1 + 264));
  v29 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x4000) == 0)
  {
LABEL_65:
    if ((v35 & 0x8000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_127:
  v70 = sub_13AAA60(*(a1 + 272));
  v29 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x8000) != 0)
  {
LABEL_66:
    v37 = sub_186A16C(*(a1 + 280));
    v29 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_67:
  if ((v35 & 0xFF0000) == 0)
  {
    goto LABEL_80;
  }

  if ((v35 & 0x10000) != 0)
  {
    v71 = sub_1398EEC(*(a1 + 288));
    v29 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v35 & 0x20000) == 0)
    {
LABEL_70:
      if ((v35 & 0x40000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_131;
    }
  }

  else if ((v35 & 0x20000) == 0)
  {
    goto LABEL_70;
  }

  v72 = sub_138F6DC(*(a1 + 296));
  v29 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x40000) == 0)
  {
LABEL_71:
    if ((v35 & 0x80000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_132;
  }

LABEL_131:
  v73 = sub_13F7080(*(a1 + 304));
  v29 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x80000) == 0)
  {
LABEL_72:
    if ((v35 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_133;
  }

LABEL_132:
  v74 = sub_13901DC(*(a1 + 312));
  v29 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x100000) == 0)
  {
LABEL_73:
    if ((v35 & 0x200000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_134;
  }

LABEL_133:
  v75 = sub_139207C(*(a1 + 320));
  v29 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x200000) == 0)
  {
LABEL_74:
    if ((v35 & 0x400000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_135;
  }

LABEL_134:
  v76 = sub_186FF30(*(a1 + 328));
  v29 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v35 & 0x400000) == 0)
  {
LABEL_75:
    if ((v35 & 0x800000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

LABEL_135:
  v77 = *(a1 + 336);
  v78 = ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v77 >= 0)
  {
    v79 = v78;
  }

  else
  {
    v79 = 11;
  }

  v29 += v79;
  if ((v35 & 0x800000) != 0)
  {
LABEL_76:
    v38 = *(a1 + 340);
    v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v38 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 11;
    }

    v29 += v40;
  }

LABEL_80:
  if (!HIBYTE(v35))
  {
    goto LABEL_93;
  }

  v41 = v29 + (HIBYTE(v35) & 2) + ((v35 >> 23) & 2) + ((v35 >> 25) & 2);
  if ((v35 & 0x8000000) != 0)
  {
    v41 += 3;
  }

  if ((v35 & 0x10000000) == 0)
  {
    if ((v35 & 0x20000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_144:
    v41 += ((9 * (__clz(*(a1 + 352) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v35 & 0x40000000) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_90;
  }

  v80 = *(a1 + 348);
  v81 = ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v80 >= 0)
  {
    v82 = v81;
  }

  else
  {
    v82 = 12;
  }

  v41 += v82;
  if ((v35 & 0x20000000) != 0)
  {
    goto LABEL_144;
  }

LABEL_85:
  if ((v35 & 0x40000000) != 0)
  {
LABEL_86:
    v42 = *(a1 + 356);
    v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v42 >= 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 12;
    }

    v41 += v44;
  }

LABEL_90:
  if ((v35 & 0x80000000) == 0)
  {
    v29 = v41;
  }

  else
  {
    v29 = v41 + 3;
  }

LABEL_93:
  v45 = *(a1 + 44);
  if ((v45 & 0xF) != 0)
  {
    v46 = v29 + 3;
    if ((v45 & 1) == 0)
    {
      v46 = v29;
    }

    if ((v45 & 2) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 4) != 0)
    {
      v29 = v46 + 3;
    }

    else
    {
      v29 = v46;
    }

    if ((v45 & 8) != 0)
    {
      v29 += ((9 * (__clz(*(a1 + 364) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v47 = *(a1 + 8);
  if (v47)
  {
    v83 = v47 & 0xFFFFFFFFFFFFFFFCLL;
    v84 = *((v47 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v84 < 0)
    {
      v84 = *(v83 + 16);
    }

    v29 += v84;
  }

  *(a1 + 48) = v29;
  return v29;
}

void sub_186EEB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = (a1 + 56);
    v6 = *(a1 + 56);
    sub_1958E5C((a1 + 56), v6 + v4);
    v7 = *(a1 + 64);
    *v5 += *(a2 + 56);
    memcpy((v7 + 4 * v6), *(a2 + 64), 4 * *(a2 + 56));
  }

  v8 = *(a2 + 72);
  if (v8)
  {
    v9 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v9 + v8);
    v10 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v10 + 4 * v9), *(a2 + 80), 4 * *(a2 + 72));
  }

  v11 = *(a2 + 88);
  if (v11)
  {
    v12 = *(a1 + 88);
    sub_1958E5C((a1 + 88), v12 + v11);
    v13 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy((v13 + 4 * v12), *(a2 + 96), 4 * *(a2 + 88));
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a1 + 104);
    sub_1958E5C((a1 + 104), v15 + v14);
    v16 = *(a1 + 112);
    *(a1 + 104) += *(a2 + 104);
    memcpy((v16 + 4 * v15), *(a2 + 112), 4 * *(a2 + 104));
  }

  v17 = *(a2 + 120);
  if (v17)
  {
    v18 = *(a1 + 120);
    sub_1958E5C((a1 + 120), v18 + v17);
    v19 = *(a1 + 128);
    *(a1 + 120) += *(a2 + 120);
    memcpy((v19 + 4 * v18), *(a2 + 128), 4 * *(a2 + 120));
  }

  v20 = *(a2 + 144);
  if (v20)
  {
    v21 = *(a2 + 152);
    v22 = sub_19592E8(a1 + 136, *(a2 + 144));
    sub_194449C((a1 + 136), v22, (v21 + 8), v20, **(a1 + 152) - *(a1 + 144));
    v23 = *(a1 + 144) + v20;
    *(a1 + 144) = v23;
    v24 = *(a1 + 152);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 40);
  if (!v25)
  {
    goto LABEL_68;
  }

  if (v25)
  {
    v26 = *(a2 + 160);
    *(a1 + 40) |= 1u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    sub_194EA1C((a1 + 160), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
    if ((v25 & 2) == 0)
    {
LABEL_17:
      if ((v25 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

  else if ((v25 & 2) == 0)
  {
    goto LABEL_17;
  }

  v29 = *(a2 + 168);
  *(a1 + 40) |= 2u;
  v30 = *(a1 + 8);
  v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
  if (v30)
  {
    v31 = *v31;
  }

  sub_194EA1C((a1 + 168), (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
  if ((v25 & 4) == 0)
  {
LABEL_18:
    if ((v25 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_30:
  v32 = *(a2 + 176);
  *(a1 + 40) |= 4u;
  v33 = *(a1 + 8);
  v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
  if (v33)
  {
    v34 = *v34;
  }

  sub_194EA1C((a1 + 176), (v32 & 0xFFFFFFFFFFFFFFFELL), v34);
  if ((v25 & 8) == 0)
  {
LABEL_19:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_33:
  v35 = *(a2 + 184);
  *(a1 + 40) |= 8u;
  v36 = *(a1 + 8);
  v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
  if (v36)
  {
    v37 = *v37;
  }

  sub_194EA1C((a1 + 184), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
  if ((v25 & 0x10) == 0)
  {
LABEL_20:
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_44:
    *(a1 + 40) |= 0x20u;
    v42 = *(a1 + 200);
    if (!v42)
    {
      v43 = *(a1 + 8);
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
      if (v43)
      {
        v44 = *v44;
      }

      v42 = sub_14050A4(v44);
      *(a1 + 200) = v42;
    }

    if (*(a2 + 200))
    {
      v45 = *(a2 + 200);
    }

    else
    {
      v45 = &off_276FAB8;
    }

    sub_1403E5C(v42, v45);
    if ((v25 & 0x40) == 0)
    {
LABEL_22:
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_60;
    }

    goto LABEL_52;
  }

LABEL_36:
  *(a1 + 40) |= 0x10u;
  v38 = *(a1 + 192);
  if (!v38)
  {
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    v38 = sub_18FF354(v40);
    *(a1 + 192) = v38;
  }

  if (*(a2 + 192))
  {
    v41 = *(a2 + 192);
  }

  else
  {
    v41 = &off_2787BC0;
  }

  sub_186A25C(v38, v41);
  if ((v25 & 0x20) != 0)
  {
    goto LABEL_44;
  }

LABEL_21:
  if ((v25 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_52:
  *(a1 + 40) |= 0x40u;
  v46 = *(a1 + 208);
  if (!v46)
  {
    v47 = *(a1 + 8);
    v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      v48 = *v48;
    }

    v46 = sub_13921F8(v48);
    *(a1 + 208) = v46;
  }

  if (*(a2 + 208))
  {
    v49 = *(a2 + 208);
  }

  else
  {
    v49 = &off_276D290;
  }

  sub_128F8FC(v46, v49);
  if ((v25 & 0x80) != 0)
  {
LABEL_60:
    *(a1 + 40) |= 0x80u;
    v50 = *(a1 + 216);
    if (!v50)
    {
      v51 = *(a1 + 8);
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51)
      {
        v52 = *v52;
      }

      v50 = sub_13922EC(v52);
      *(a1 + 216) = v50;
    }

    if (*(a2 + 216))
    {
      v53 = *(a2 + 216);
    }

    else
    {
      v53 = &off_276D2D0;
    }

    sub_1385268(v50, v53);
  }

LABEL_68:
  if ((v25 & 0xFF00) == 0)
  {
    goto LABEL_142;
  }

  if ((v25 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v54 = *(a1 + 224);
    if (!v54)
    {
      v55 = *(a1 + 8);
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
      if (v55)
      {
        v56 = *v56;
      }

      v54 = sub_18FF470(v56);
      *(a1 + 224) = v54;
    }

    if (*(a2 + 224))
    {
      v57 = *(a2 + 224);
    }

    else
    {
      v57 = &off_2787C18;
    }

    sub_186B6EC(v54, v57);
    if ((v25 & 0x200) == 0)
    {
LABEL_71:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_94;
    }
  }

  else if ((v25 & 0x200) == 0)
  {
    goto LABEL_71;
  }

  *(a1 + 40) |= 0x200u;
  v58 = *(a1 + 232);
  if (!v58)
  {
    v59 = *(a1 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    sub_1392574(v60);
    *(a1 + 232) = v58;
  }

  if (*(a2 + 232))
  {
    v61 = *(a2 + 232);
  }

  else
  {
    v61 = &off_276D3A8;
  }

  sub_1388770(v58, v61);
  if ((v25 & 0x400) == 0)
  {
LABEL_72:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_102;
  }

LABEL_94:
  *(a1 + 40) |= 0x400u;
  v62 = *(a1 + 240);
  if (!v62)
  {
    v63 = *(a1 + 8);
    v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
    if (v63)
    {
      v64 = *v64;
    }

    v62 = sub_13AE3BC(v64);
    *(a1 + 240) = v62;
  }

  if (*(a2 + 240))
  {
    v65 = *(a2 + 240);
  }

  else
  {
    v65 = &off_276D878;
  }

  sub_128E5DC(v62, v65);
  if ((v25 & 0x800) == 0)
  {
LABEL_73:
    if ((v25 & 0x1000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_110;
  }

LABEL_102:
  *(a1 + 40) |= 0x800u;
  v66 = *(a1 + 248);
  if (!v66)
  {
    v67 = *(a1 + 8);
    v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
    if (v67)
    {
      v68 = *v68;
    }

    v66 = sub_13924FC(v68);
    *(a1 + 248) = v66;
  }

  if (*(a2 + 248))
  {
    v69 = *(a2 + 248);
  }

  else
  {
    v69 = &off_276D388;
  }

  sub_138735C(v66, v69);
  if ((v25 & 0x1000) == 0)
  {
LABEL_74:
    if ((v25 & 0x2000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_118;
  }

LABEL_110:
  *(a1 + 40) |= 0x1000u;
  v70 = *(a1 + 256);
  if (!v70)
  {
    v71 = *(a1 + 8);
    v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
    if (v71)
    {
      v72 = *v72;
    }

    v70 = sub_1392AD4(v72);
    *(a1 + 256) = v70;
  }

  if (*(a2 + 256))
  {
    v73 = *(a2 + 256);
  }

  else
  {
    v73 = &off_276D5B8;
  }

  sub_138DE18(v70, v73);
  if ((v25 & 0x2000) == 0)
  {
LABEL_75:
    if ((v25 & 0x4000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_126;
  }

LABEL_118:
  *(a1 + 40) |= 0x2000u;
  v74 = *(a1 + 264);
  if (!v74)
  {
    v75 = *(a1 + 8);
    v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
    if (v75)
    {
      v76 = *v76;
    }

    sub_185FEC4(v76);
    *(a1 + 264) = v74;
  }

  if (*(a2 + 264))
  {
    v77 = *(a2 + 264);
  }

  else
  {
    v77 = &off_2783B10;
  }

  sub_17CA5CC(v74, v77);
  if ((v25 & 0x4000) == 0)
  {
LABEL_76:
    if ((v25 & 0x8000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_134;
  }

LABEL_126:
  *(a1 + 40) |= 0x4000u;
  v78 = *(a1 + 272);
  if (!v78)
  {
    v79 = *(a1 + 8);
    v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
    if (v79)
    {
      v80 = *v80;
    }

    v78 = sub_13AF694(v80);
    *(a1 + 272) = v78;
  }

  if (*(a2 + 272))
  {
    v81 = *(a2 + 272);
  }

  else
  {
    v81 = &off_276DF88;
  }

  sub_13AABC8(v78, v81);
  if ((v25 & 0x8000) != 0)
  {
LABEL_134:
    *(a1 + 40) |= 0x8000u;
    v82 = *(a1 + 280);
    if (!v82)
    {
      v83 = *(a1 + 8);
      v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
      if (v83)
      {
        v84 = *v84;
      }

      v82 = sub_18FF354(v84);
      *(a1 + 280) = v82;
    }

    if (*(a2 + 280))
    {
      v85 = *(a2 + 280);
    }

    else
    {
      v85 = &off_2787BC0;
    }

    sub_186A25C(v82, v85);
  }

LABEL_142:
  if ((v25 & 0xFF0000) == 0)
  {
    goto LABEL_153;
  }

  if ((v25 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v88 = *(a1 + 288);
    if (!v88)
    {
      v89 = *(a1 + 8);
      v90 = (v89 & 0xFFFFFFFFFFFFFFFCLL);
      if (v89)
      {
        v90 = *v90;
      }

      v88 = sub_13AE7C0(v90);
      *(a1 + 288) = v88;
    }

    if (*(a2 + 288))
    {
      v91 = *(a2 + 288);
    }

    else
    {
      v91 = &off_276D9D0;
    }

    sub_1399048(v88, v91);
    if ((v25 & 0x20000) == 0)
    {
LABEL_145:
      if ((v25 & 0x40000) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_190;
    }
  }

  else if ((v25 & 0x20000) == 0)
  {
    goto LABEL_145;
  }

  *(a1 + 40) |= 0x20000u;
  v92 = *(a1 + 296);
  if (!v92)
  {
    v93 = *(a1 + 8);
    v94 = (v93 & 0xFFFFFFFFFFFFFFFCLL);
    if (v93)
    {
      v94 = *v94;
    }

    v92 = sub_1392CF8(v94);
    *(a1 + 296) = v92;
  }

  if (*(a2 + 296))
  {
    v95 = *(a2 + 296);
  }

  else
  {
    v95 = &off_276D680;
  }

  sub_138F72C(v92, v95);
  if ((v25 & 0x40000) == 0)
  {
LABEL_146:
    if ((v25 & 0x80000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_198;
  }

LABEL_190:
  *(a1 + 40) |= 0x40000u;
  v96 = *(a1 + 304);
  if (!v96)
  {
    v97 = *(a1 + 8);
    v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
    if (v97)
    {
      v98 = *v98;
    }

    v96 = sub_140457C(v98);
    *(a1 + 304) = v96;
  }

  if (*(a2 + 304))
  {
    v99 = *(a2 + 304);
  }

  else
  {
    v99 = &off_276F658;
  }

  sub_138F72C(v96, v99);
  if ((v25 & 0x80000) == 0)
  {
LABEL_147:
    if ((v25 & 0x100000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_206;
  }

LABEL_198:
  *(a1 + 40) |= 0x80000u;
  v100 = *(a1 + 312);
  if (!v100)
  {
    v101 = *(a1 + 8);
    v102 = (v101 & 0xFFFFFFFFFFFFFFFCLL);
    if (v101)
    {
      v102 = *v102;
    }

    v100 = sub_1392D54(v102);
    *(a1 + 312) = v100;
  }

  if (*(a2 + 312))
  {
    v103 = *(a2 + 312);
  }

  else
  {
    v103 = &off_276D6B0;
  }

  sub_1390340(v100, v103);
  if ((v25 & 0x100000) == 0)
  {
LABEL_148:
    if ((v25 & 0x200000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_214;
  }

LABEL_206:
  *(a1 + 40) |= 0x100000u;
  v104 = *(a1 + 320);
  if (!v104)
  {
    v105 = *(a1 + 8);
    v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
    if (v105)
    {
      v106 = *v106;
    }

    v104 = sub_1392F84(v106);
    *(a1 + 320) = v104;
  }

  if (*(a2 + 320))
  {
    v107 = *(a2 + 320);
  }

  else
  {
    v107 = &off_276D760;
  }

  sub_1392124(v104, v107);
  if ((v25 & 0x200000) == 0)
  {
LABEL_149:
    if ((v25 & 0x400000) == 0)
    {
      goto LABEL_150;
    }

LABEL_222:
    *(a1 + 336) = *(a2 + 336);
    if ((v25 & 0x800000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_151;
  }

LABEL_214:
  *(a1 + 40) |= 0x200000u;
  v108 = *(a1 + 328);
  if (!v108)
  {
    v109 = *(a1 + 8);
    v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
    if (v109)
    {
      v110 = *v110;
    }

    v108 = sub_18FF5D8(v110);
    *(a1 + 328) = v108;
  }

  if (*(a2 + 328))
  {
    v111 = *(a2 + 328);
  }

  else
  {
    v111 = &off_2787E30;
  }

  sub_1840104(v108, v111);
  if ((v25 & 0x400000) != 0)
  {
    goto LABEL_222;
  }

LABEL_150:
  if ((v25 & 0x800000) != 0)
  {
LABEL_151:
    *(a1 + 340) = *(a2 + 340);
  }

LABEL_152:
  *(a1 + 40) |= v25;
LABEL_153:
  if (!HIBYTE(v25))
  {
    goto LABEL_163;
  }

  if ((v25 & 0x1000000) != 0)
  {
    *(a1 + 344) = *(a2 + 344);
    if ((v25 & 0x2000000) == 0)
    {
LABEL_156:
      if ((v25 & 0x4000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_230;
    }
  }

  else if ((v25 & 0x2000000) == 0)
  {
    goto LABEL_156;
  }

  *(a1 + 345) = *(a2 + 345);
  if ((v25 & 0x4000000) == 0)
  {
LABEL_157:
    if ((v25 & 0x8000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_231;
  }

LABEL_230:
  *(a1 + 346) = *(a2 + 346);
  if ((v25 & 0x8000000) == 0)
  {
LABEL_158:
    if ((v25 & 0x10000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_232;
  }

LABEL_231:
  *(a1 + 347) = *(a2 + 347);
  if ((v25 & 0x10000000) == 0)
  {
LABEL_159:
    if ((v25 & 0x20000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_233;
  }

LABEL_232:
  *(a1 + 348) = *(a2 + 348);
  if ((v25 & 0x20000000) == 0)
  {
LABEL_160:
    if ((v25 & 0x40000000) == 0)
    {
      goto LABEL_161;
    }

LABEL_234:
    *(a1 + 356) = *(a2 + 356);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_162;
    }

LABEL_235:
    *(a1 + 360) = *(a2 + 360);
    goto LABEL_162;
  }

LABEL_233:
  *(a1 + 352) = *(a2 + 352);
  if ((v25 & 0x40000000) != 0)
  {
    goto LABEL_234;
  }

LABEL_161:
  if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_235;
  }

LABEL_162:
  *(a1 + 40) |= v25;
LABEL_163:
  v86 = *(a2 + 44);
  if ((v86 & 0xF) == 0)
  {
    goto LABEL_170;
  }

  if (v86)
  {
    *(a1 + 361) = *(a2 + 361);
    if ((v86 & 2) == 0)
    {
LABEL_166:
      if ((v86 & 4) == 0)
      {
        goto LABEL_167;
      }

LABEL_226:
      *(a1 + 363) = *(a2 + 363);
      if ((v86 & 8) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_168;
    }
  }

  else if ((v86 & 2) == 0)
  {
    goto LABEL_166;
  }

  *(a1 + 362) = *(a2 + 362);
  if ((v86 & 4) != 0)
  {
    goto LABEL_226;
  }

LABEL_167:
  if ((v86 & 8) != 0)
  {
LABEL_168:
    *(a1 + 364) = *(a2 + 364);
  }

LABEL_169:
  *(a1 + 44) |= v86;
LABEL_170:
  sub_225EA0C(a1 + 16, a2 + 16);
  v87 = *(a2 + 8);
  if (v87)
  {

    sub_1957EF4((a1 + 8), (v87 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_186F888(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 0x10) != 0)
    {
      v4 = *(a1 + 192);
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

    if ((v3 & 0x20) != 0)
    {
      result = sub_140441C(*(a1 + 200));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x200) != 0)
    {
      result = sub_1388C74(*(a1 + 232));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x2000) != 0)
    {
      result = sub_17CA8A0(*(a1 + 264));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = sub_13AAD50(*(a1 + 272));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x8000) != 0)
    {
      v5 = *(a1 + 280);
      if (*(v5 + 16))
      {
        result = sub_16E6614(*(v5 + 24));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }
    }

    if ((v3 & 0x10000) != 0)
    {
      result = sub_13991C0(*(a1 + 288));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20000) != 0)
    {
      result = sub_138F78C(*(a1 + 296));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40000) != 0)
    {
      result = sub_13F70D0(*(a1 + 304));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80000) == 0)
    {
      return 1;
    }

    result = sub_1390638(*(a1 + 312));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_186F9A8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27150D8;
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

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_186FA5C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_186FA8C(uint64_t a1)
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

void sub_186FB2C(uint64_t a1)
{
  sub_186FA8C(a1);

  operator delete();
}

uint64_t sub_186FB64(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v20 = v7 + 1;
      v21 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v22 = *v20;
      v21 = v21 + (v22 << 7) - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_30:
        *v30 = v20;
        *(a1 + 36) = v21;
        goto LABEL_35;
      }

      v28 = sub_1958770(v7, v21);
      *v30 = v28;
      *(a1 + 36) = v29;
      if (!v28)
      {
        goto LABEL_44;
      }

      goto LABEL_35;
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
    v24 = v7 + 1;
    v23 = *v7;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v25 = *v24;
    v23 = (v25 << 7) + v23 - 128;
    if ((v25 & 0x80000000) == 0)
    {
      v24 = v7 + 2;
LABEL_34:
      *v30 = v24;
      *(a1 + 32) = v23 != 0;
      goto LABEL_35;
    }

    v26 = sub_19587DC(v7, v23);
    *v30 = v26;
    *(a1 + 32) = v27 != 0;
    if (!v26)
    {
      goto LABEL_44;
    }

LABEL_35:
    if (sub_195ADC0(a3, v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = sub_194DB04((a1 + 24), v18);
    v16 = sub_1958890(v19, *v30, a3);
LABEL_24:
    *v30 = v16;
    if (!v16)
    {
      goto LABEL_44;
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
      v7 = *v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_24;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_44:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_186FDA4(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 32);
  *v4 = 8;
  v4[1] = v8;
  v4 += 2;
  if (v6)
  {
    goto LABEL_8;
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

  v9 = *(a1 + 36);
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

  if ((*a3 - v7) >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

uint64_t sub_186FF30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
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
    if ((v1 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t sub_1870004(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2715158;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_1870080(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18700B0(void *a1)
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

void sub_1870124(void *a1)
{
  sub_18700B0(a1);

  operator delete();
}

uint64_t sub_187015C(uint64_t a1)
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

char *sub_1870174(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 25) = v15 != 0;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 25) = v22 != 0;
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
      *(a1 + 24) = v18 != 0;
      goto LABEL_29;
    }

    v23 = sub_19587DC(v7, v18);
    v25 = v23;
    *(a1 + 24) = v24 != 0;
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

char *sub_1870378(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 25);
    *v4 = 16;
    v4[1] = v8;
    v4 += 2;
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

uint64_t sub_1870490(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2u);
  }

  else
  {
    v1 = 0;
  }

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

uint64_t sub_18704F0(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2787E78)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_1395AC4(v6);
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

void sub_18705BC(uint64_t a1)
{
  sub_18704F0(a1);

  operator delete();
}

uint64_t sub_18705F4(uint64_t result)
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
      result = sub_1395B00(*(result + 32));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 32) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_187068C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v26 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v26, i) & 1) == 0; i = a3[11].i32[1])
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 32);
      if (!v19)
      {
        v20 = *(a1 + 8);
        v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v21 = *v21;
        }

        v19 = sub_13AE444(v21);
        *(a1 + 32) = v19;
        v6 = *v26;
      }

      v15 = sub_2203B90(a3, v19, v6);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 1 && v7 == 8)
        {
          v23 = (v6 + 1);
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            *v26 = sub_19587DC(v6, v22);
            if (!*v26)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v23 = (v6 + 2);
LABEL_35:
            *v26 = v23;
          }

          if (v22 > 2)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v22;
          }

          continue;
        }

LABEL_13:
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
            return *v26;
          }

LABEL_46:
          *v26 = 0;
          return *v26;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v14 = sub_11F1920((a1 + 8));
          v6 = *v26;
        }

        v15 = sub_1952690(v7, v14, v6, a3);
        goto LABEL_30;
      }

      if (v7 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v18 = sub_194DB04((a1 + 24), v17);
      v15 = sub_1958890(v18, *v26, a3);
    }

LABEL_30:
    *v26 = v15;
    if (!v15)
    {
      goto LABEL_46;
    }
  }

  return *v26;
}

char *sub_18708A4(uint64_t a1, char *__dst, void *a3)
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 32);
    *v6 = 26;
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

    v6 = sub_1395D74(v11, v13, a3);
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

uint64_t sub_1870A50(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = sub_1395E88(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
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
  }

LABEL_15:
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

std::string *sub_1870B68(std::string *result, uint64_t a2)
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
        LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
        goto LABEL_6;
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

      v9 = sub_13AE444(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_276D8A8;
    }

    result = sub_12EB184(v9, v12);
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

uint64_t sub_1870C90(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_19133E4(v4);
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
      result = sub_1913DDC(v7);
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

uint64_t sub_1870D3C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2715258;
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
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = &qword_278E990;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 373) = 0u;
  *(a1 + 392) = 10;
  *(a1 + 396) = 1;
  return a1;
}

void sub_1870E10(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1870E40(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v49 = (a1 + 8);
  *(a1 + 16) = 0;
  v50 = a1 + 16;
  *a1 = off_2715258;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1944528((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_19445A4((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1944620((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_19446AC((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_17872D8((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v29 = *(a2 + 176);
  if (v29)
  {
    v30 = *(a2 + 184);
    v31 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_1944738((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v34 = *(a2 + 200);
  if (v34)
  {
    v35 = *(a2 + 208);
    v36 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_13B640C((a1 + 192), v36, (v35 + 8), v34, **(a1 + 208) - *(a1 + 200));
    v37 = *(a1 + 200) + v34;
    *(a1 + 200) = v37;
    v38 = *(a1 + 208);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v39 = *(a2 + 224);
  if (v39)
  {
    v40 = *(a2 + 232);
    v41 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_166F714((a1 + 216), v41, (v40 + 8), v39, **(a1 + 232) - *(a1 + 224));
    v42 = *(a1 + 224) + v39;
    *(a1 + 224) = v42;
    v43 = *(a1 + 232);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 8);
  if (v44)
  {
    sub_1957EF4(v49, (v44 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v50, a2 + 16);
  *(a1 + 240) = &qword_278E990;
  v45 = *(a2 + 40);
  if (v45)
  {
    v46 = (*v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v49)
    {
      v46 = *v46;
    }

    sub_194EA1C((a1 + 240), (*(a2 + 240) & 0xFFFFFFFFFFFFFFFELL), v46);
    v45 = *(a2 + 40);
  }

  if ((v45 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 248) = 0;
  if ((v45 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 256) = 0;
  if ((v45 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 264) = 0;
  if ((v45 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 272) = 0;
  if ((v45 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 280) = 0;
  if ((v45 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 288) = 0;
  if ((v45 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 296) = 0;
  if ((v45 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 304) = 0;
  if ((v45 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 312) = 0;
  if ((v45 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 320) = 0;
  if ((v45 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 328) = 0;
  if ((v45 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v45 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v45 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v45 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  v47 = *(a2 + 368);
  *(a1 + 381) = *(a2 + 381);
  *(a1 + 368) = v47;
  return a1;
}

void *sub_18717B8(void *a1)
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

  sub_18718A4(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_166F1D4(a1 + 27);
  sub_13B5D9C(a1 + 24);
  sub_1942F78(a1 + 21);
  sub_1787034(a1 + 18);
  sub_1942EF4(a1 + 15);
  sub_1942E70(a1 + 12);
  sub_1942DEC(a1 + 9);
  sub_1942D68(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18718A4(uint64_t a1)
{
  v3 = *(a1 + 240);
  result = (a1 + 240);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2787EA8)
  {
    v4 = *(a1 + 248);
    if (v4)
    {
      sub_16E5B34(v4);
      operator delete();
    }

    v5 = *(a1 + 256);
    if (v5)
    {
      sub_1395AC4(v5);
      operator delete();
    }

    v6 = *(a1 + 264);
    if (v6)
    {
      sub_18700B0(v6);
      operator delete();
    }

    v7 = *(a1 + 272);
    if (v7)
    {
      sub_1839C40(v7);
      operator delete();
    }

    v8 = *(a1 + 280);
    if (v8)
    {
      sub_183A554(v8);
      operator delete();
    }

    v9 = *(a1 + 288);
    if (v9)
    {
      sub_13A8F30(v9);
      operator delete();
    }

    v10 = *(a1 + 296);
    if (v10)
    {
      sub_138E70C(v10);
      operator delete();
    }

    v11 = *(a1 + 304);
    if (v11)
    {
      sub_19146C8(v11);
      operator delete();
    }

    v12 = *(a1 + 312);
    if (v12)
    {
      sub_139AF7C(v12);
      operator delete();
    }

    v13 = *(a1 + 320);
    if (v13)
    {
      sub_13AD340(v13);
      operator delete();
    }

    v14 = *(a1 + 328);
    if (v14)
    {
      sub_138F450(v14);
      operator delete();
    }

    v15 = *(a1 + 336);
    if (v15)
    {
      sub_1917370(v15);
      operator delete();
    }

    v16 = *(a1 + 344);
    if (v16)
    {
      sub_17646E4(v16);
      operator delete();
    }

    v17 = *(a1 + 352);
    if (v17)
    {
      sub_18752C8(v17);
      operator delete();
    }

    result = *(a1 + 360);
    if (result)
    {
      sub_138ED8C(result);

      operator delete();
    }
  }

  return result;
}

void sub_1871AE0(void *a1)
{
  sub_18717B8(a1);

  operator delete();
}

uint64_t sub_1871B18(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_186A488(v5);
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
      result = sub_1395B00(v8);
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
      result = sub_186BA84(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 128);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 136) + 8);
    do
    {
      v14 = *v13++;
      result = sub_18705F4(v14);
      --v12;
    }

    while (v12);
    *(a1 + 128) = 0;
  }

  v15 = *(a1 + 152);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 160) + 8);
    do
    {
      v17 = *v16++;
      result = sub_1395368(v17);
      --v15;
    }

    while (v15);
    *(a1 + 152) = 0;
  }

  v18 = *(a1 + 176);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 184) + 8);
    do
    {
      v20 = *v19++;
      result = sub_138BB90(v20);
      --v18;
    }

    while (v18);
    *(a1 + 176) = 0;
  }

  v21 = *(a1 + 200);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 208) + 8);
    do
    {
      v23 = *v22++;
      result = sub_1397044(v23);
      --v21;
    }

    while (v21);
    *(a1 + 200) = 0;
  }

  v24 = *(a1 + 224);
  if (v24 >= 1)
  {
    v25 = (*(a1 + 232) + 8);
    do
    {
      v26 = *v25++;
      result = sub_138E038(v26);
      --v24;
    }

    while (v24);
    *(a1 + 224) = 0;
  }

  v27 = *(a1 + 40);
  if (!v27)
  {
    goto LABEL_52;
  }

  if (v27)
  {
    v28 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v28 + 23) < 0)
    {
      **v28 = 0;
      *(v28 + 8) = 0;
      if ((v27 & 2) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      *v28 = 0;
      *(v28 + 23) = 0;
      if ((v27 & 2) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_36:
    if ((v27 & 4) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_44;
  }

  if ((v27 & 2) == 0)
  {
    goto LABEL_36;
  }

LABEL_43:
  result = sub_16E5B70(*(a1 + 248));
  if ((v27 & 4) == 0)
  {
LABEL_37:
    if ((v27 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = sub_1395B00(*(a1 + 256));
  if ((v27 & 8) == 0)
  {
    goto LABEL_47;
  }

LABEL_45:
  v29 = *(a1 + 264);
  v30 = *(v29 + 8);
  result = v29 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v30)
  {
    result = sub_1957EA8(result);
  }

LABEL_47:
  if ((v27 & 0x10) == 0)
  {
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_49;
    }

LABEL_71:
    result = sub_1839DBC(*(a1 + 280));
    if ((v27 & 0x40) == 0)
    {
LABEL_50:
      if ((v27 & 0x80) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    goto LABEL_72;
  }

  result = sub_1839D48(*(a1 + 272));
  if ((v27 & 0x20) != 0)
  {
    goto LABEL_71;
  }

LABEL_49:
  if ((v27 & 0x40) == 0)
  {
    goto LABEL_50;
  }

LABEL_72:
  result = sub_13A8F6C(*(a1 + 288));
  if ((v27 & 0x80) != 0)
  {
LABEL_51:
    result = sub_138E748(*(a1 + 296));
  }

LABEL_52:
  if ((v27 & 0xFF00) == 0)
  {
    goto LABEL_62;
  }

  if ((v27 & 0x100) != 0)
  {
    result = sub_1870C90(*(a1 + 304));
    if ((v27 & 0x200) == 0)
    {
LABEL_55:
      if ((v27 & 0x400) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_76;
    }
  }

  else if ((v27 & 0x200) == 0)
  {
    goto LABEL_55;
  }

  result = sub_139AFB8(*(a1 + 312));
  if ((v27 & 0x400) == 0)
  {
LABEL_56:
    if ((v27 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = sub_13AD37C(*(a1 + 320));
  if ((v27 & 0x800) == 0)
  {
LABEL_57:
    if ((v27 & 0x1000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_78;
  }

LABEL_77:
  result = sub_138F48C(*(a1 + 328));
  if ((v27 & 0x1000) == 0)
  {
LABEL_58:
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_79;
  }

LABEL_78:
  result = sub_17A82BC(*(a1 + 336));
  if ((v27 & 0x2000) == 0)
  {
LABEL_59:
    if ((v27 & 0x4000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_80;
  }

LABEL_79:
  result = sub_1764720(*(a1 + 344));
  if ((v27 & 0x4000) == 0)
  {
LABEL_60:
    if ((v27 & 0x8000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_80:
  result = sub_1871E2C(*(a1 + 352));
  if ((v27 & 0x8000) != 0)
  {
LABEL_61:
    result = sub_138EDC8(*(a1 + 360));
  }

LABEL_62:
  if ((v27 & 0xFF0000) != 0)
  {
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
    *(a1 + 384) = 0;
  }

  if ((v27 & 0x7000000) != 0)
  {
    *(a1 + 388) = 0;
    *(a1 + 392) = 10;
    *(a1 + 396) = 1;
  }

  v32 = *(a1 + 8);
  v31 = a1 + 8;
  *(v31 + 32) = 0;
  if (v32)
  {

    return sub_1957EA8(v31);
  }

  return result;
}

uint64_t sub_1871E2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_11:
  if ((v1 & 0xC) != 0)
  {
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1871EB4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v168 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v168, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v168 + 1);
    v8 = **v168;
    if (**v168 < 0)
    {
      v8 = v8 + (*v7 << 7) - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v168, v8);
      }

      else
      {
        v7 = (*v168 + 2);
      }
    }

    *v168 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 2u;
        v9 = *(a1 + 248);
        if (!v9)
        {
          v10 = *(a1 + 8);
          v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
          if (v10)
          {
            v11 = *v11;
          }

          sub_16F58FC(v11);
          v9 = v12;
          *(a1 + 248) = v12;
          v7 = *v168;
        }

        v13 = sub_21F86E8(a3, v9, v7);
        goto LABEL_252;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_243;
        }

        v70 = (v7 - 1);
        while (1)
        {
          v71 = (v70 + 1);
          *v168 = v70 + 1;
          v72 = *(a1 + 64);
          if (v72 && (v73 = *(a1 + 56), v73 < *v72))
          {
            *(a1 + 56) = v73 + 1;
            v74 = *&v72[2 * v73 + 2];
          }

          else
          {
            v75 = sub_18FF3D0(*(a1 + 48));
            v74 = sub_19593CC(a1 + 48, v75);
            v71 = *v168;
          }

          v70 = sub_2251A94(a3, v74, v71);
          *v168 = v70;
          if (!v70)
          {
            goto LABEL_283;
          }

          if (*a3 <= v70 || *v70 != 18)
          {
            goto LABEL_253;
          }
        }

      case 3u:
        if (v8 != 24)
        {
          goto LABEL_243;
        }

        v5 |= 0x40000u;
        v56 = (v7 + 1);
        v55 = *v7;
        if ((v55 & 0x8000000000000000) == 0)
        {
          goto LABEL_89;
        }

        v57 = *v56;
        v55 = (v57 << 7) + v55 - 128;
        if (v57 < 0)
        {
          v159 = sub_19587DC(v7, v55);
          *v168 = v159;
          *(a1 + 376) = v160 != 0;
          if (!v159)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v56 = (v7 + 2);
LABEL_89:
          *v168 = v56;
          *(a1 + 376) = v55 != 0;
        }

        goto LABEL_253;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_243;
        }

        v61 = v7 - 1;
        while (1)
        {
          v62 = v61 + 1;
          *v168 = v61 + 1;
          v63 = *(a1 + 88);
          if (v63 && (v64 = *(a1 + 80), v64 < *v63))
          {
            *(a1 + 80) = v64 + 1;
            v65 = *&v63[2 * v64 + 2];
          }

          else
          {
            v66 = sub_13AE444(*(a1 + 72));
            v65 = sub_19593CC(a1 + 72, v66);
            v62 = *v168;
          }

          v61 = sub_2203B90(a3, v65, v62);
          *v168 = v61;
          if (!v61)
          {
            goto LABEL_283;
          }

          if (*a3 <= v61 || *v61 != 34)
          {
            goto LABEL_253;
          }
        }

      case 5u:
        if (v8 != 40)
        {
          goto LABEL_243;
        }

        v40 = (v7 + 1);
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          *v168 = sub_19587DC(v7, v39);
          if (!*v168)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v40 = (v7 + 2);
LABEL_59:
          *v168 = v40;
        }

        if (v39 > 4)
        {
          sub_12E85B8();
        }

        else
        {
          *(a1 + 40) |= 0x10000u;
          *(a1 + 368) = v39;
        }

        goto LABEL_253;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 1u;
        v89 = *(a1 + 8);
        v90 = (v89 & 0xFFFFFFFFFFFFFFFCLL);
        if (v89)
        {
          v90 = *v90;
        }

        v91 = sub_194DB04((a1 + 240), v90);
        v13 = sub_1958890(v91, *v168, a3);
        goto LABEL_252;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 4u;
        v99 = *(a1 + 256);
        if (!v99)
        {
          v100 = *(a1 + 8);
          v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
          if (v100)
          {
            v101 = *v101;
          }

          v99 = sub_13AE444(v101);
          *(a1 + 256) = v99;
          v7 = *v168;
        }

        v13 = sub_2203B90(a3, v99, v7);
        goto LABEL_252;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 8u;
        v67 = *(a1 + 264);
        if (!v67)
        {
          v68 = *(a1 + 8);
          v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
          if (v68)
          {
            v69 = *v69;
          }

          v67 = sub_18FF65C(v69);
          *(a1 + 264) = v67;
          v7 = *v168;
        }

        v13 = sub_2251B24(a3, v67, v7);
        goto LABEL_252;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_243;
        }

        v111 = (v7 - 1);
        while (1)
        {
          v112 = (v111 + 1);
          *v168 = v111 + 1;
          v113 = *(a1 + 112);
          if (v113 && (v114 = *(a1 + 104), v114 < *v113))
          {
            *(a1 + 104) = v114 + 1;
            v115 = *&v113[2 * v114 + 2];
          }

          else
          {
            v116 = sub_18FF520(*(a1 + 96));
            v115 = sub_19593CC(a1 + 96, v116);
            v112 = *v168;
          }

          v111 = sub_2225B18(a3, v115, v112);
          *v168 = v111;
          if (!v111)
          {
            goto LABEL_283;
          }

          if (*a3 <= v111 || *v111 != 74)
          {
            goto LABEL_253;
          }
        }

      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x10u;
        v45 = *(a1 + 272);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_1864918(v47);
          *(a1 + 272) = v45;
          v7 = *v168;
        }

        v13 = sub_2208718(a3, v45, v7);
        goto LABEL_252;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x20u;
        v108 = *(a1 + 280);
        if (!v108)
        {
          v109 = *(a1 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          v108 = sub_1864998(v110);
          *(a1 + 280) = v108;
          v7 = *v168;
        }

        v13 = sub_2203050(a3, v108, v7);
        goto LABEL_252;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_243;
        }

        v33 = v7 - 1;
        while (1)
        {
          v34 = v33 + 1;
          *v168 = v33 + 1;
          v35 = *(a1 + 136);
          if (v35 && (v36 = *(a1 + 128), v36 < *v35))
          {
            *(a1 + 128) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_18FF6D8(*(a1 + 120));
            v37 = sub_19593CC(a1 + 120, v38);
            v34 = *v168;
          }

          v33 = sub_2251BB4(a3, v37, v34);
          *v168 = v33;
          if (!v33)
          {
            goto LABEL_283;
          }

          if (*a3 <= v33 || *v33 != 98)
          {
            goto LABEL_253;
          }
        }

      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_243;
        }

        v5 |= 0x80000u;
        v43 = (v7 + 1);
        v42 = *v7;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_66;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if (v44 < 0)
        {
          v154 = sub_19587DC(v7, v42);
          *v168 = v154;
          *(a1 + 377) = v155 != 0;
          if (!v154)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v43 = (v7 + 2);
LABEL_66:
          *v168 = v43;
          *(a1 + 377) = v42 != 0;
        }

        goto LABEL_253;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_243;
        }

        v5 |= 0x2000000u;
        v96 = (v7 + 1);
        v97 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_157;
        }

        v98 = *v96;
        v97 = v97 + (v98 << 7) - 128;
        if (v98 < 0)
        {
          v163 = sub_1958770(v7, v97);
          *v168 = v163;
          *(a1 + 392) = v164;
          if (!v163)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v96 = (v7 + 2);
LABEL_157:
          *v168 = v96;
          *(a1 + 392) = v97;
        }

        goto LABEL_253;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_243;
        }

        v5 |= 0x4000000u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if (v28 < 0)
        {
          v152 = sub_19587DC(v7, v26);
          *v168 = v152;
          *(a1 + 396) = v153 != 0;
          if (!v152)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v27 = (v7 + 2);
LABEL_38:
          *v168 = v27;
          *(a1 + 396) = v26 != 0;
        }

        goto LABEL_253;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_243;
        }

        v5 |= 0x20000u;
        v58 = (v7 + 1);
        v59 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        v60 = *v58;
        v59 = v59 + (v60 << 7) - 128;
        if (v60 < 0)
        {
          v161 = sub_1958770(v7, v59);
          *v168 = v161;
          *(a1 + 372) = v162;
          if (!v161)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v58 = (v7 + 2);
LABEL_94:
          *v168 = v58;
          *(a1 + 372) = v59;
        }

        goto LABEL_253;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_243;
        }

        v20 = v7 - 2;
        while (1)
        {
          v21 = v20 + 2;
          *v168 = v20 + 2;
          v22 = *(a1 + 160);
          if (v22 && (v23 = *(a1 + 152), v23 < *v22))
          {
            *(a1 + 152) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_13AE3BC(*(a1 + 144));
            v24 = sub_19593CC(a1 + 144, v25);
            v21 = *v168;
          }

          v20 = sub_2208CB8(a3, v24, v21);
          *v168 = v20;
          if (!v20)
          {
            goto LABEL_283;
          }

          if (*a3 <= v20 || *v20 != 394)
          {
            goto LABEL_253;
          }
        }

      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_243;
        }

        v79 = v7 - 2;
        while (1)
        {
          v80 = v79 + 2;
          *v168 = v79 + 2;
          v81 = *(a1 + 184);
          if (v81 && (v82 = *(a1 + 176), v82 < *v81))
          {
            *(a1 + 176) = v82 + 1;
            v83 = *&v81[2 * v82 + 2];
          }

          else
          {
            v84 = sub_139299C(*(a1 + 168));
            v83 = sub_19593CC(a1 + 168, v84);
            v80 = *v168;
          }

          v79 = sub_2251C44(a3, v83, v80);
          *v168 = v79;
          if (!v79)
          {
            goto LABEL_283;
          }

          if (*a3 <= v79 || *v79 != 402)
          {
            goto LABEL_253;
          }
        }

      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_243;
        }

        v102 = v7 - 2;
        while (1)
        {
          v103 = v102 + 2;
          *v168 = v102 + 2;
          v104 = *(a1 + 208);
          if (v104 && (v105 = *(a1 + 200), v105 < *v104))
          {
            *(a1 + 200) = v105 + 1;
            v106 = *&v104[2 * v105 + 2];
          }

          else
          {
            v107 = sub_13AE61C(*(a1 + 192));
            v106 = sub_19593CC(a1 + 192, v107);
            v103 = *v168;
          }

          v102 = sub_22042E0(a3, v106, v103);
          *v168 = v102;
          if (!v102)
          {
            goto LABEL_283;
          }

          if (*a3 <= v102 || *v102 != 410)
          {
            goto LABEL_253;
          }
        }

      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_243;
        }

        v127 = (v7 - 2);
        while (1)
        {
          v128 = (v127 + 2);
          *v168 = v127 + 2;
          v129 = *(a1 + 232);
          if (v129 && (v130 = *(a1 + 224), v130 < *v129))
          {
            *(a1 + 224) = v130 + 1;
            v131 = *&v129[2 * v130 + 2];
          }

          else
          {
            v132 = sub_1392B7C(*(a1 + 216));
            v131 = sub_19593CC(a1 + 216, v132);
            v128 = *v168;
          }

          v127 = sub_222F0F0(a3, v131, v128);
          *v168 = v127;
          if (!v127)
          {
            goto LABEL_283;
          }

          if (*a3 <= v127 || *v127 != 418)
          {
            goto LABEL_253;
          }
        }

      case 0x15u:
        if (v8 != 170)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x40u;
        v85 = *(a1 + 288);
        if (!v85)
        {
          v86 = *(a1 + 8);
          v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
          if (v86)
          {
            v87 = *v87;
          }

          sub_13AF57C(v87);
          v85 = v88;
          *(a1 + 288) = v88;
          v7 = *v168;
        }

        v13 = sub_222CF94(a3, v85, v7);
        goto LABEL_252;
      case 0x16u:
        if (v8 != 178)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x80u;
        v92 = *(a1 + 296);
        if (!v92)
        {
          v93 = *(a1 + 8);
          v94 = (v93 & 0xFFFFFFFFFFFFFFFCLL);
          if (v93)
          {
            v94 = *v94;
          }

          sub_1392BF8(v94);
          v92 = v95;
          *(a1 + 296) = v95;
          v7 = *v168;
        }

        v13 = sub_2251CD4(a3, v92, v7);
        goto LABEL_252;
      case 0x17u:
        if (v8 != 186)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x100u;
        v124 = *(a1 + 304);
        if (!v124)
        {
          v125 = *(a1 + 8);
          v126 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
          if (v125)
          {
            v126 = *v126;
          }

          v124 = sub_191637C(v126);
          *(a1 + 304) = v124;
          v7 = *v168;
        }

        v13 = sub_22045B0(a3, v124, v7);
        goto LABEL_252;
      case 0x18u:
        if (v8 != 194)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x200u;
        v133 = *(a1 + 312);
        if (!v133)
        {
          v134 = *(a1 + 8);
          v135 = (v134 & 0xFFFFFFFFFFFFFFFCLL);
          if (v134)
          {
            v135 = *v135;
          }

          v133 = sub_13AEA28(v135);
          *(a1 + 312) = v133;
          v7 = *v168;
        }

        v13 = sub_2204370(a3, v133, v7);
        goto LABEL_252;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_243;
        }

        v5 |= 0x100000u;
        v53 = (v7 + 1);
        v52 = *v7;
        if ((v52 & 0x8000000000000000) == 0)
        {
          goto LABEL_84;
        }

        v54 = *v53;
        v52 = (v54 << 7) + v52 - 128;
        if (v54 < 0)
        {
          v157 = sub_19587DC(v7, v52);
          *v168 = v157;
          *(a1 + 378) = v158 != 0;
          if (!v157)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v53 = (v7 + 2);
LABEL_84:
          *v168 = v53;
          *(a1 + 378) = v52 != 0;
        }

        goto LABEL_253;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_243;
        }

        v48 = (v7 + 1);
        v49 = *v7;
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_77;
        }

        v50 = *v48;
        v51 = (v50 << 7) + v49;
        LODWORD(v49) = v51 - 128;
        if (v50 < 0)
        {
          *v168 = sub_19587DC(v7, (v51 - 128));
          if (!*v168)
          {
            goto LABEL_283;
          }

          LODWORD(v49) = v156;
        }

        else
        {
          v48 = (v7 + 2);
LABEL_77:
          *v168 = v48;
        }

        if (sub_12AE1F4(v49))
        {
          *(a1 + 40) |= 0x400000u;
          *(a1 + 380) = v49;
        }

        else
        {
          sub_1948214();
        }

        goto LABEL_253;
      case 0x1Bu:
        if (v8 != 218)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x400u;
        v142 = *(a1 + 320);
        if (!v142)
        {
          v143 = *(a1 + 8);
          v144 = (v143 & 0xFFFFFFFFFFFFFFFCLL);
          if (v143)
          {
            v144 = *v144;
          }

          v142 = sub_13AF9E8(v144);
          *(a1 + 320) = v142;
          v7 = *v168;
        }

        v13 = sub_2251D64(a3, v142, v7);
        goto LABEL_252;
      case 0x1Cu:
        if (v8 != 224)
        {
          goto LABEL_243;
        }

        v5 |= 0x200000u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if (v16 < 0)
        {
          v148 = sub_19587DC(v7, v14);
          *v168 = v148;
          *(a1 + 379) = v149 != 0;
          if (!v148)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v15 = (v7 + 2);
LABEL_18:
          *v168 = v15;
          *(a1 + 379) = v14 != 0;
        }

        goto LABEL_253;
      case 0x1Du:
        if (v8 != 234)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x800u;
        v136 = *(a1 + 328);
        if (!v136)
        {
          v137 = *(a1 + 8);
          v138 = (v137 & 0xFFFFFFFFFFFFFFFCLL);
          if (v137)
          {
            v138 = *v138;
          }

          v136 = sub_1392CF8(v138);
          *(a1 + 328) = v136;
          v7 = *v168;
        }

        v13 = sub_2235484(a3, v136, v7);
        goto LABEL_252;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x1000u;
        v139 = *(a1 + 336);
        if (!v139)
        {
          v140 = *(a1 + 8);
          v141 = (v140 & 0xFFFFFFFFFFFFFFFCLL);
          if (v140)
          {
            v141 = *v141;
          }

          v139 = sub_191BA60(v141);
          *(a1 + 336) = v139;
          v7 = *v168;
        }

        v13 = sub_2201310(a3, v139, v7);
        goto LABEL_252;
      case 0x1Fu:
        if (v8 != 248)
        {
          goto LABEL_243;
        }

        v117 = (v7 + 1);
        v118 = *v7;
        if ((v118 & 0x8000000000000000) == 0)
        {
          goto LABEL_194;
        }

        v119 = *v117;
        v120 = (v119 << 7) + v118;
        LODWORD(v118) = v120 - 128;
        if (v119 < 0)
        {
          *v168 = sub_19587DC(v7, (v120 - 128));
          if (!*v168)
          {
            goto LABEL_283;
          }

          LODWORD(v118) = v165;
        }

        else
        {
          v117 = (v7 + 2);
LABEL_194:
          *v168 = v117;
        }

        if (sub_16E4BF0(v118))
        {
          *(a1 + 40) |= 0x800000u;
          *(a1 + 384) = v118;
        }

        else
        {
          sub_1355E94();
        }

        goto LABEL_253;
      case 0x20u:
        if (v8 != 2)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x2000u;
        v76 = *(a1 + 344);
        if (!v76)
        {
          v77 = *(a1 + 8);
          v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
          if (v77)
          {
            v78 = *v78;
          }

          v76 = sub_1764A4C(v78);
          *(a1 + 344) = v76;
          v7 = *v168;
        }

        v13 = sub_2251DF4(a3, v76, v7);
        goto LABEL_252;
      case 0x21u:
        if (v8 != 10)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x4000u;
        v121 = *(a1 + 352);
        if (!v121)
        {
          v122 = *(a1 + 8);
          v123 = (v122 & 0xFFFFFFFFFFFFFFFCLL);
          if (v122)
          {
            v123 = *v123;
          }

          v121 = sub_18FF7BC(v123);
          *(a1 + 352) = v121;
          v7 = *v168;
        }

        v13 = sub_2251E84(a3, v121, v7);
        goto LABEL_252;
      case 0x22u:
        if (v8 != 18)
        {
          goto LABEL_243;
        }

        *(a1 + 40) |= 0x8000u;
        v29 = *(a1 + 360);
        if (!v29)
        {
          v30 = *(a1 + 8);
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          sub_1392C78(v31);
          v29 = v32;
          *(a1 + 360) = v32;
          v7 = *v168;
        }

        v13 = sub_2251F14(a3, v29, v7);
        goto LABEL_252;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_243;
        }

        v5 |= 0x1000000u;
        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v150 = sub_19587DC(v7, v17);
          *v168 = v150;
          *(a1 + 388) = v151 != 0;
          if (!v150)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v18 = (v7 + 2);
LABEL_23:
          *v168 = v18;
          *(a1 + 388) = v17 != 0;
        }

        goto LABEL_253;
      default:
LABEL_243:
        if (v8)
        {
          v145 = (v8 & 7) == 4;
        }

        else
        {
          v145 = 1;
        }

        if (!v145)
        {
          if (v8 - 800 > 0x31F)
          {
            v146 = *(a1 + 8);
            if (v146)
            {
              v147 = (v146 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v166 = v8;
              v167 = sub_11F1920((a1 + 8));
              v8 = v166;
              v147 = v167;
              v7 = *v168;
            }

            v13 = sub_1952690(v8, v147, v7, a3);
          }

          else
          {
            v13 = sub_19525AC((a1 + 16), v8, v7, &off_2787EA8, (a1 + 8), a3);
          }

LABEL_252:
          *v168 = v13;
          if (!v13)
          {
            goto LABEL_283;
          }

LABEL_253:
          if (sub_195ADC0(a3, v168, a3[11].i32[1]))
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
LABEL_283:
          *v168 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v168;
    }
  }
}

char *sub_1872ED8(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 248);
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

  if ((v6 & 0x40000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v15 = *(a1 + 376);
    *v4 = 24;
    v4[1] = v15;
    v4 += 2;
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v18 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 34;
      v19 = *(v18 + 20);
      v4[1] = v19;
      if (v19 > 0x7F)
      {
        v20 = sub_19575D0(v19, v4 + 1);
      }

      else
      {
        v20 = v4 + 2;
      }

      v4 = sub_1395D74(v18, v20, a3);
    }
  }

  if ((v6 & 0x10000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v22 = *(a1 + 368);
    *v4 = 40;
    v4[1] = v22;
    if (v22 > 0x7F)
    {
      v4[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v4[2] = v22 >> 7;
      v21 = v4 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v4) = v4[2];
        do
        {
          *(v21 - 1) = v4 | 0x80;
          v4 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v4 + 2;
    }
  }

  else
  {
    v21 = v4;
  }

  if (v6)
  {
    v21 = sub_128AEEC(a3, 6, *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL, v21);
    if ((v6 & 4) == 0)
    {
LABEL_39:
      if ((v6 & 8) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_39;
  }

  if (*a3 <= v21)
  {
    v21 = sub_225EB68(a3, v21);
  }

  v25 = *(a1 + 256);
  *v21 = 58;
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

  v21 = sub_1395D74(v25, v27, a3);
  if ((v6 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v28 = *(a1 + 264);
    *v21 = 66;
    v29 = *(v28 + 20);
    v21[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v21 + 1);
    }

    else
    {
      v30 = v21 + 2;
    }

    v21 = sub_1870378(v28, v30, a3);
  }

LABEL_54:
  v31 = *(a1 + 104);
  if (v31)
  {
    for (k = 0; k != v31; ++k)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v33 = *(*(a1 + 112) + 8 * k + 8);
      *v21 = 74;
      v34 = *(v33 + 44);
      v21[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v21 + 1);
      }

      else
      {
        v35 = v21 + 2;
      }

      v21 = sub_186BDDC(v33, v35, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v36 = *(a1 + 272);
    *v21 = 82;
    v37 = *(v36 + 20);
    v21[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v21 + 1);
    }

    else
    {
      v38 = v21 + 2;
    }

    v21 = sub_183A034(v36, v38, a3);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v39 = *(a1 + 280);
    *v21 = 90;
    v40 = *(v39 + 20);
    v21[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v21 + 1);
    }

    else
    {
      v41 = v21 + 2;
    }

    v21 = sub_183A880(v39, v41, a3);
  }

  v42 = *(a1 + 128);
  if (v42)
  {
    for (m = 0; m != v42; ++m)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v44 = *(*(a1 + 136) + 8 * m + 8);
      *v21 = 98;
      v45 = *(v44 + 20);
      v21[1] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v21 + 1);
      }

      else
      {
        v46 = v21 + 2;
      }

      v21 = sub_18708A4(v44, v46, a3);
    }
  }

  if ((v6 & 0x80000) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v47 = *(a1 + 377);
    *v21 = 104;
    v21[1] = v47;
    v21 += 2;
  }

  if ((v6 & 0x2000000) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v49 = *(a1 + 392);
    *v21 = 112;
    v21[1] = v49;
    if (v49 > 0x7F)
    {
      v21[1] = v49 | 0x80;
      v50 = v49 >> 7;
      v21[2] = v49 >> 7;
      v48 = v21 + 3;
      if (v49 >= 0x4000)
      {
        LOBYTE(v51) = v21[2];
        do
        {
          *(v48 - 1) = v51 | 0x80;
          v51 = v50 >> 7;
          *v48++ = v50 >> 7;
          v52 = v50 >> 14;
          v50 >>= 7;
        }

        while (v52);
      }
    }

    else
    {
      v48 = v21 + 2;
    }
  }

  else
  {
    v48 = v21;
  }

  if ((v6 & 0x4000000) != 0)
  {
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v53 = *(a1 + 396);
    *v48 = 120;
    v48[1] = v53;
    v48 += 2;
  }

  if ((v6 & 0x20000) != 0)
  {
    if (*a3 <= v48)
    {
      v48 = sub_225EB68(a3, v48);
    }

    v55 = *(a1 + 372);
    *v48 = 384;
    v48[2] = v55;
    if (v55 > 0x7F)
    {
      v48[2] = v55 | 0x80;
      v56 = v55 >> 7;
      v48[3] = v55 >> 7;
      v54 = v48 + 4;
      if (v55 >= 0x4000)
      {
        LOBYTE(v48) = v48[3];
        do
        {
          *(v54 - 1) = v48 | 0x80;
          LODWORD(v48) = v56 >> 7;
          *v54++ = v56 >> 7;
          v57 = v56 >> 14;
          v56 >>= 7;
        }

        while (v57);
      }
    }

    else
    {
      v54 = v48 + 3;
    }
  }

  else
  {
    v54 = v48;
  }

  v58 = *(a1 + 152);
  if (v58)
  {
    for (n = 0; n != v58; ++n)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v60 = *(*(a1 + 160) + 8 * n + 8);
      *v54 = 394;
      v61 = *(v60 + 20);
      v54[2] = v61;
      if (v61 > 0x7F)
      {
        v62 = sub_19575D0(v61, v54 + 2);
      }

      else
      {
        v62 = v54 + 3;
      }

      v54 = sub_13955E4(v60, v62, a3);
    }
  }

  v63 = *(a1 + 176);
  if (v63)
  {
    for (ii = 0; ii != v63; ++ii)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v65 = *(*(a1 + 184) + 8 * ii + 8);
      *v54 = 402;
      v66 = *(v65 + 20);
      v54[2] = v66;
      if (v66 > 0x7F)
      {
        v67 = sub_19575D0(v66, v54 + 2);
      }

      else
      {
        v67 = v54 + 3;
      }

      v54 = sub_138C084(v65, v67, a3);
    }
  }

  v68 = *(a1 + 200);
  if (v68)
  {
    for (jj = 0; jj != v68; ++jj)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v70 = *(*(a1 + 208) + 8 * jj + 8);
      *v54 = 410;
      v71 = *(v70 + 20);
      v54[2] = v71;
      if (v71 > 0x7F)
      {
        v72 = sub_19575D0(v71, v54 + 2);
      }

      else
      {
        v72 = v54 + 3;
      }

      v54 = sub_1397408(v70, v72, a3);
    }
  }

  v73 = *(a1 + 224);
  if (v73)
  {
    for (kk = 0; kk != v73; ++kk)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v75 = *(*(a1 + 232) + 8 * kk + 8);
      *v54 = 418;
      v76 = *(v75 + 20);
      v54[2] = v76;
      if (v76 > 0x7F)
      {
        v77 = sub_19575D0(v76, v54 + 2);
      }

      else
      {
        v77 = v54 + 3;
      }

      v54 = sub_138E2C0(v75, v77, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v79 = *(a1 + 288);
    *v54 = 426;
    v80 = *(v79 + 20);
    v54[2] = v80;
    if (v80 > 0x7F)
    {
      v81 = sub_19575D0(v80, v54 + 2);
    }

    else
    {
      v81 = v54 + 3;
    }

    v54 = sub_13A9284(v79, v81, a3);
    if ((v6 & 0x80) == 0)
    {
LABEL_144:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_161;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_144;
  }

  if (*a3 <= v54)
  {
    v54 = sub_225EB68(a3, v54);
  }

  v82 = *(a1 + 296);
  *v54 = 434;
  v83 = *(v82 + 20);
  v54[2] = v83;
  if (v83 > 0x7F)
  {
    v84 = sub_19575D0(v83, v54 + 2);
  }

  else
  {
    v84 = v54 + 3;
  }

  v54 = sub_138E96C(v82, v84, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_145:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_167;
  }

LABEL_161:
  if (*a3 <= v54)
  {
    v54 = sub_225EB68(a3, v54);
  }

  v85 = *(a1 + 304);
  *v54 = 442;
  v86 = *(v85 + 20);
  v54[2] = v86;
  if (v86 > 0x7F)
  {
    v87 = sub_19575D0(v86, v54 + 2);
  }

  else
  {
    v87 = v54 + 3;
  }

  v54 = sub_1914A28(v85, v87, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_146:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_147;
    }

LABEL_173:
    if (*a3 <= v54)
    {
      v54 = sub_225EB68(a3, v54);
    }

    v91 = *(a1 + 378);
    *v54 = 456;
    v54[2] = v91;
    v54 += 3;
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_176;
  }

LABEL_167:
  if (*a3 <= v54)
  {
    v54 = sub_225EB68(a3, v54);
  }

  v88 = *(a1 + 312);
  *v54 = 450;
  v89 = *(v88 + 40);
  v54[2] = v89;
  if (v89 > 0x7F)
  {
    v90 = sub_19575D0(v89, v54 + 2);
  }

  else
  {
    v90 = v54 + 3;
  }

  v54 = sub_139B1C4(v88, v90, a3);
  if ((v6 & 0x100000) != 0)
  {
    goto LABEL_173;
  }

LABEL_147:
  if ((v6 & 0x400000) == 0)
  {
LABEL_148:
    v78 = v54;
    goto LABEL_183;
  }

LABEL_176:
  if (*a3 <= v54)
  {
    v54 = sub_225EB68(a3, v54);
  }

  v92 = *(a1 + 380);
  *v54 = 464;
  v54[2] = v92;
  if (v92 > 0x7F)
  {
    v54[2] = v92 | 0x80;
    v93 = v92 >> 7;
    v54[3] = v92 >> 7;
    v78 = v54 + 4;
    if (v92 >= 0x4000)
    {
      LOBYTE(v54) = v54[3];
      do
      {
        *(v78 - 1) = v54 | 0x80;
        v54 = (v93 >> 7);
        *v78++ = v93 >> 7;
        v94 = v93 >> 14;
        v93 >>= 7;
      }

      while (v94);
    }
  }

  else
  {
    v78 = v54 + 3;
  }

LABEL_183:
  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v96 = *(a1 + 320);
    *v78 = 474;
    v97 = *(v96 + 20);
    v78[2] = v97;
    if (v97 > 0x7F)
    {
      v98 = sub_19575D0(v97, v78 + 2);
    }

    else
    {
      v98 = v78 + 3;
    }

    v78 = sub_13AD988(v96, v98, a3);
    if ((v6 & 0x200000) == 0)
    {
LABEL_185:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_186;
      }

      goto LABEL_198;
    }
  }

  else if ((v6 & 0x200000) == 0)
  {
    goto LABEL_185;
  }

  if (*a3 <= v78)
  {
    v78 = sub_225EB68(a3, v78);
  }

  v99 = *(a1 + 379);
  *v78 = 480;
  v78[2] = v99;
  v78 += 3;
  if ((v6 & 0x800) == 0)
  {
LABEL_186:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_187;
    }

LABEL_204:
    if (*a3 <= v78)
    {
      v78 = sub_225EB68(a3, v78);
    }

    v103 = *(a1 + 336);
    *v78 = 498;
    v104 = *(v103 + 44);
    v78[2] = v104;
    if (v104 > 0x7F)
    {
      v105 = sub_19575D0(v104, v78 + 2);
    }

    else
    {
      v105 = v78 + 3;
    }

    v78 = sub_1917694(v103, v105, a3);
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_210;
  }

LABEL_198:
  if (*a3 <= v78)
  {
    v78 = sub_225EB68(a3, v78);
  }

  v100 = *(a1 + 328);
  *v78 = 490;
  v101 = *(v100 + 40);
  v78[2] = v101;
  if (v101 > 0x7F)
  {
    v102 = sub_19575D0(v101, v78 + 2);
  }

  else
  {
    v102 = v78 + 3;
  }

  v78 = sub_138F614(v100, v102, a3);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_204;
  }

LABEL_187:
  if ((v6 & 0x800000) == 0)
  {
LABEL_188:
    v95 = v78;
    goto LABEL_217;
  }

LABEL_210:
  if (*a3 <= v78)
  {
    v78 = sub_225EB68(a3, v78);
  }

  v106 = *(a1 + 384);
  *v78 = 504;
  v78[2] = v106;
  if (v106 > 0x7F)
  {
    v78[2] = v106 | 0x80;
    v107 = v106 >> 7;
    v78[3] = v106 >> 7;
    v95 = v78 + 4;
    if (v106 >= 0x4000)
    {
      LOBYTE(v78) = v78[3];
      do
      {
        *(v95 - 1) = v78 | 0x80;
        v78 = (v107 >> 7);
        *v95++ = v107 >> 7;
        v108 = v107 >> 14;
        v107 >>= 7;
      }

      while (v108);
    }
  }

  else
  {
    v95 = v78 + 3;
  }

LABEL_217:
  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= v95)
    {
      v95 = sub_225EB68(a3, v95);
    }

    v109 = *(a1 + 344);
    *v95 = 642;
    v110 = *(v109 + 20);
    v95[2] = v110;
    if (v110 > 0x7F)
    {
      v111 = sub_19575D0(v110, v95 + 2);
    }

    else
    {
      v111 = v95 + 3;
    }

    v95 = sub_17648A0(v109, v111, a3);
    if ((v6 & 0x4000) == 0)
    {
LABEL_219:
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_220;
      }

      goto LABEL_234;
    }
  }

  else if ((v6 & 0x4000) == 0)
  {
    goto LABEL_219;
  }

  if (*a3 <= v95)
  {
    v95 = sub_225EB68(a3, v95);
  }

  v112 = *(a1 + 352);
  *v95 = 650;
  v113 = *(v112 + 20);
  v95[2] = v113;
  if (v113 > 0x7F)
  {
    v114 = sub_19575D0(v113, v95 + 2);
  }

  else
  {
    v114 = v95 + 3;
  }

  v95 = sub_187562C(v112, v114, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_220:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_240;
  }

LABEL_234:
  if (*a3 <= v95)
  {
    v95 = sub_225EB68(a3, v95);
  }

  v115 = *(a1 + 360);
  *v95 = 658;
  v116 = *(v115 + 20);
  v95[2] = v116;
  if (v116 > 0x7F)
  {
    v117 = sub_19575D0(v116, v95 + 2);
  }

  else
  {
    v117 = v95 + 3;
  }

  v95 = sub_138EFEC(v115, v117, a3);
  if ((v6 & 0x1000000) != 0)
  {
LABEL_240:
    if (*a3 <= v95)
    {
      v95 = sub_225EB68(a3, v95);
    }

    v118 = *(a1 + 388);
    *v95 = 664;
    v95[2] = v118;
    v95 += 3;
  }

LABEL_243:
  if (*(a1 + 26))
  {
    v95 = sub_1953428(a1 + 16, 100, 200, v95, a3);
  }

  v119 = *(a1 + 8);
  if ((v119 & 1) == 0)
  {
    return v95;
  }

  v121 = v119 & 0xFFFFFFFFFFFFFFFCLL;
  v122 = *(v121 + 31);
  if (v122 < 0)
  {
    v123 = *(v121 + 8);
    v122 = *(v121 + 16);
  }

  else
  {
    v123 = (v121 + 8);
  }

  if ((*a3 - v95) >= v122)
  {
    v124 = v122;
    memcpy(v95, v123, v122);
    v95 += v124;
    return v95;
  }

  return sub_1957130(a3, v123, v122, v95);
}

uint64_t sub_1873E0C(uint64_t a1)
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
      v9 = sub_186A7D4(v8);
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
      v16 = sub_1395E88(v15);
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
      v23 = sub_186C0BC(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 128);
  v25 = v18 + v24;
  v26 = *(a1 + 136);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = sub_1870A50(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 152);
  v32 = v25 + 2 * v31;
  v33 = *(a1 + 160);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = sub_1395750(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 176);
  v39 = v32 + 2 * v38;
  v40 = *(a1 + 184);
  if (v40)
  {
    v41 = (v40 + 8);
  }

  else
  {
    v41 = 0;
  }

  if (v38)
  {
    v42 = 8 * v38;
    do
    {
      v43 = *v41++;
      v44 = sub_138C398(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 200);
  v46 = v39 + 2 * v45;
  v47 = *(a1 + 208);
  if (v47)
  {
    v48 = (v47 + 8);
  }

  else
  {
    v48 = 0;
  }

  if (v45)
  {
    v49 = 8 * v45;
    do
    {
      v50 = *v48++;
      v51 = sub_139763C(v50);
      v46 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6);
      v49 -= 8;
    }

    while (v49);
  }

  v52 = *(a1 + 224);
  v53 = v46 + 2 * v52;
  v54 = *(a1 + 232);
  if (v54)
  {
    v55 = (v54 + 8);
  }

  else
  {
    v55 = 0;
  }

  if (v52)
  {
    v56 = 8 * v52;
    do
    {
      v57 = *v55++;
      v58 = sub_138E4F8(v57);
      v53 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6);
      v56 -= 8;
    }

    while (v56);
  }

  v59 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_59;
  }

  if (v59)
  {
    v75 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
    v76 = *(v75 + 23);
    v77 = *(v75 + 8);
    if ((v76 & 0x80u) == 0)
    {
      v77 = v76;
    }

    v53 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v59 & 2) == 0)
    {
LABEL_52:
      if ((v59 & 4) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_104;
    }
  }

  else if ((v59 & 2) == 0)
  {
    goto LABEL_52;
  }

  v78 = sub_16E62F4(*(a1 + 248));
  v53 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v59 & 4) == 0)
  {
LABEL_53:
    if ((v59 & 8) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_105;
  }

LABEL_104:
  v79 = sub_1395E88(*(a1 + 256));
  v53 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v59 & 8) == 0)
  {
LABEL_54:
    if ((v59 & 0x10) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_106;
  }

LABEL_105:
  v80 = sub_1870490(*(a1 + 264));
  v53 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v59 & 0x10) == 0)
  {
LABEL_55:
    if ((v59 & 0x20) == 0)
    {
      goto LABEL_56;
    }

LABEL_107:
    v82 = sub_183AA50(*(a1 + 280));
    v53 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v59 & 0x40) == 0)
    {
LABEL_57:
      if ((v59 & 0x80) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    goto LABEL_108;
  }

LABEL_106:
  v81 = sub_183A234(*(a1 + 272));
  v53 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v59 & 0x20) != 0)
  {
    goto LABEL_107;
  }

LABEL_56:
  if ((v59 & 0x40) == 0)
  {
    goto LABEL_57;
  }

LABEL_108:
  v83 = sub_13A9470(*(a1 + 288));
  v53 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v59 & 0x80) != 0)
  {
LABEL_58:
    v60 = sub_138EB48(*(a1 + 296));
    v53 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_59:
  if ((v59 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v59 & 0x100) != 0)
  {
    v84 = sub_1914C70(*(a1 + 304));
    v53 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v59 & 0x200) == 0)
    {
LABEL_62:
      if ((v59 & 0x400) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_112;
    }
  }

  else if ((v59 & 0x200) == 0)
  {
    goto LABEL_62;
  }

  v85 = sub_139B304(*(a1 + 312));
  v53 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v59 & 0x400) == 0)
  {
LABEL_63:
    if ((v59 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_113;
  }

LABEL_112:
  v86 = sub_13ADD88(*(a1 + 320));
  v53 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v59 & 0x800) == 0)
  {
LABEL_64:
    if ((v59 & 0x1000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_114;
  }

LABEL_113:
  v87 = sub_138F6DC(*(a1 + 328));
  v53 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v59 & 0x1000) == 0)
  {
LABEL_65:
    if ((v59 & 0x2000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_115;
  }

LABEL_114:
  v88 = sub_1917844(*(a1 + 336));
  v53 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v59 & 0x2000) == 0)
  {
LABEL_66:
    if ((v59 & 0x4000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_116;
  }

LABEL_115:
  v89 = sub_17649C8(*(a1 + 344));
  v53 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v59 & 0x4000) == 0)
  {
LABEL_67:
    if ((v59 & 0x8000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_116:
  v90 = sub_1875820(*(a1 + 352));
  v53 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v59 & 0x8000) != 0)
  {
LABEL_68:
    v61 = sub_138F1C8(*(a1 + 360));
    v53 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_69:
  if ((v59 & 0xFF0000) != 0)
  {
    if ((v59 & 0x10000) != 0)
    {
      v62 = *(a1 + 368);
      v63 = ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v62 >= 0)
      {
        v64 = v63;
      }

      else
      {
        v64 = 11;
      }

      v53 += v64;
    }

    if ((v59 & 0x20000) != 0)
    {
      v53 += ((9 * (__clz(*(a1 + 372) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v65 = v53 + ((v59 >> 18) & 2) + ((v59 >> 17) & 2);
    if ((v59 & 0x100000) != 0)
    {
      v65 += 3;
    }

    if ((v59 & 0x200000) != 0)
    {
      v53 = v65 + 3;
    }

    else
    {
      v53 = v65;
    }

    if ((v59 & 0x400000) != 0)
    {
      v66 = *(a1 + 380);
      v67 = ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v66 >= 0)
      {
        v68 = v67;
      }

      else
      {
        v68 = 12;
      }

      v53 += v68;
    }

    if ((v59 & 0x800000) != 0)
    {
      v69 = *(a1 + 384);
      v70 = ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v69 >= 0)
      {
        v71 = v70;
      }

      else
      {
        v71 = 12;
      }

      v53 += v71;
    }
  }

  if ((v59 & 0x7000000) != 0)
  {
    v72 = v53 + 3;
    if ((v59 & 0x1000000) == 0)
    {
      v72 = v53;
    }

    if ((v59 & 0x2000000) != 0)
    {
      v72 += ((9 * (__clz(*(a1 + 392) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v53 = v72 + ((v59 >> 25) & 2);
  }

  v73 = *(a1 + 8);
  if (v73)
  {
    v91 = v73 & 0xFFFFFFFFFFFFFFFCLL;
    v92 = *((v73 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v92 < 0)
    {
      v92 = *(v91 + 16);
    }

    v53 += v92;
  }

  *(a1 + 44) = v53;
  return v53;
}

void sub_1874594(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1944528((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_19445A4((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_1944620((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_19446AC((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_17872D8((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 176);
  if (v29)
  {
    v30 = *(a2 + 184);
    v31 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_1944738((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 200);
  if (v34)
  {
    v35 = *(a2 + 208);
    v36 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_13B640C((a1 + 192), v36, (v35 + 8), v34, **(a1 + 208) - *(a1 + 200));
    v37 = *(a1 + 200) + v34;
    *(a1 + 200) = v37;
    v38 = *(a1 + 208);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 224);
  if (v39)
  {
    v40 = *(a2 + 232);
    v41 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_166F714((a1 + 216), v41, (v40 + 8), v39, **(a1 + 232) - *(a1 + 224));
    v42 = *(a1 + 224) + v39;
    *(a1 + 224) = v42;
    v43 = *(a1 + 232);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 40);
  if (!v44)
  {
    goto LABEL_94;
  }

  if (v44)
  {
    v45 = *(a2 + 240);
    *(a1 + 40) |= 1u;
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    sub_194EA1C((a1 + 240), (v45 & 0xFFFFFFFFFFFFFFFELL), v47);
    if ((v44 & 2) == 0)
    {
LABEL_28:
      if ((v44 & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_46;
    }
  }

  else if ((v44 & 2) == 0)
  {
    goto LABEL_28;
  }

  *(a1 + 40) |= 2u;
  v48 = *(a1 + 248);
  if (!v48)
  {
    v49 = *(a1 + 8);
    v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (v49)
    {
      v50 = *v50;
    }

    sub_16F58FC(v50);
    *(a1 + 248) = v48;
  }

  if (*(a2 + 248))
  {
    v51 = *(a2 + 248);
  }

  else
  {
    v51 = &off_277E650;
  }

  sub_16E645C(v48, v51);
  if ((v44 & 4) == 0)
  {
LABEL_29:
    if ((v44 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_54;
  }

LABEL_46:
  *(a1 + 40) |= 4u;
  v52 = *(a1 + 256);
  if (!v52)
  {
    v53 = *(a1 + 8);
    v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
    if (v53)
    {
      v54 = *v54;
    }

    v52 = sub_13AE444(v54);
    *(a1 + 256) = v52;
  }

  if (*(a2 + 256))
  {
    v55 = *(a2 + 256);
  }

  else
  {
    v55 = &off_276D8A8;
  }

  sub_12EB184(v52, v55);
  if ((v44 & 8) == 0)
  {
LABEL_30:
    if ((v44 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_54:
  *(a1 + 40) |= 8u;
  v56 = *(a1 + 264);
  if (!v56)
  {
    v57 = *(a1 + 8);
    v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    if (v57)
    {
      v58 = *v58;
    }

    v56 = sub_18FF65C(v58);
    *(a1 + 264) = v56;
  }

  if (*(a2 + 264))
  {
    v59 = *(a2 + 264);
  }

  else
  {
    v59 = &off_2787E58;
  }

  sub_1485514(v56, v59);
  if ((v44 & 0x10) == 0)
  {
LABEL_31:
    if ((v44 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_70:
    *(a1 + 40) |= 0x20u;
    v64 = *(a1 + 280);
    if (!v64)
    {
      v65 = *(a1 + 8);
      v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
      if (v65)
      {
        v66 = *v66;
      }

      v64 = sub_1864998(v66);
      *(a1 + 280) = v64;
    }

    if (*(a2 + 280))
    {
      v67 = *(a2 + 280);
    }

    else
    {
      v67 = &off_2786978;
    }

    sub_12F4C8C(v64, v67);
    if ((v44 & 0x40) == 0)
    {
LABEL_33:
      if ((v44 & 0x80) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_86;
    }

    goto LABEL_78;
  }

LABEL_62:
  *(a1 + 40) |= 0x10u;
  v60 = *(a1 + 272);
  if (!v60)
  {
    v61 = *(a1 + 8);
    v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (v61)
    {
      v62 = *v62;
    }

    v60 = sub_1864918(v62);
    *(a1 + 272) = v60;
  }

  if (*(a2 + 272))
  {
    v63 = *(a2 + 272);
  }

  else
  {
    v63 = &off_2786948;
  }

  sub_183A338(v60, v63);
  if ((v44 & 0x20) != 0)
  {
    goto LABEL_70;
  }

LABEL_32:
  if ((v44 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_78:
  *(a1 + 40) |= 0x40u;
  v68 = *(a1 + 288);
  if (!v68)
  {
    v69 = *(a1 + 8);
    v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (v69)
    {
      v70 = *v70;
    }

    sub_13AF57C(v70);
    *(a1 + 288) = v68;
  }

  if (*(a2 + 288))
  {
    v71 = *(a2 + 288);
  }

  else
  {
    v71 = &off_276DF20;
  }

  sub_13A9570(v68, v71);
  if ((v44 & 0x80) != 0)
  {
LABEL_86:
    *(a1 + 40) |= 0x80u;
    v72 = *(a1 + 296);
    if (!v72)
    {
      v73 = *(a1 + 8);
      v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
      if (v73)
      {
        v74 = *v74;
      }

      sub_1392BF8(v74);
      *(a1 + 296) = v72;
    }

    if (*(a2 + 296))
    {
      v75 = *(a2 + 296);
    }

    else
    {
      v75 = &off_276D610;
    }

    sub_138EBD8(v72, v75);
  }

LABEL_94:
  if ((v44 & 0xFF00) == 0)
  {
    goto LABEL_168;
  }

  if ((v44 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v76 = *(a1 + 304);
    if (!v76)
    {
      v77 = *(a1 + 8);
      v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
      if (v77)
      {
        v78 = *v78;
      }

      v76 = sub_191637C(v78);
      *(a1 + 304) = v76;
    }

    if (*(a2 + 304))
    {
      v79 = *(a2 + 304);
    }

    else
    {
      v79 = &off_278B7E0;
    }

    sub_1874EB4(v76, v79);
    if ((v44 & 0x200) == 0)
    {
LABEL_97:
      if ((v44 & 0x400) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_120;
    }
  }

  else if ((v44 & 0x200) == 0)
  {
    goto LABEL_97;
  }

  *(a1 + 40) |= 0x200u;
  v80 = *(a1 + 312);
  if (!v80)
  {
    v81 = *(a1 + 8);
    v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL);
    if (v81)
    {
      v82 = *v82;
    }

    v80 = sub_13AEA28(v82);
    *(a1 + 312) = v80;
  }

  if (*(a2 + 312))
  {
    v83 = *(a2 + 312);
  }

  else
  {
    v83 = &off_276DAA8;
  }

  sub_139B3AC(v80, v83);
  if ((v44 & 0x400) == 0)
  {
LABEL_98:
    if ((v44 & 0x800) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(a1 + 40) |= 0x400u;
  v84 = *(a1 + 320);
  if (!v84)
  {
    v85 = *(a1 + 8);
    v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
    if (v85)
    {
      v86 = *v86;
    }

    v84 = sub_13AF9E8(v86);
    *(a1 + 320) = v84;
  }

  if (*(a2 + 320))
  {
    v87 = *(a2 + 320);
  }

  else
  {
    v87 = &off_276E080;
  }

  sub_13ADFD4(v84, v87);
  if ((v44 & 0x800) == 0)
  {
LABEL_99:
    if ((v44 & 0x1000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(a1 + 40) |= 0x800u;
  v88 = *(a1 + 328);
  if (!v88)
  {
    v89 = *(a1 + 8);
    v90 = (v89 & 0xFFFFFFFFFFFFFFFCLL);
    if (v89)
    {
      v90 = *v90;
    }

    v88 = sub_1392CF8(v90);
    *(a1 + 328) = v88;
  }

  if (*(a2 + 328))
  {
    v91 = *(a2 + 328);
  }

  else
  {
    v91 = &off_276D680;
  }

  sub_138F72C(v88, v91);
  if ((v44 & 0x1000) == 0)
  {
LABEL_100:
    if ((v44 & 0x2000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(a1 + 40) |= 0x1000u;
  v92 = *(a1 + 336);
  if (!v92)
  {
    v93 = *(a1 + 8);
    v94 = (v93 & 0xFFFFFFFFFFFFFFFCLL);
    if (v93)
    {
      v94 = *v94;
    }

    v92 = sub_191BA60(v94);
    *(a1 + 336) = v92;
  }

  if (*(a2 + 336))
  {
    v95 = *(a2 + 336);
  }

  else
  {
    v95 = &off_278B870;
  }

  sub_17A8DBC(v92, v95);
  if ((v44 & 0x2000) == 0)
  {
LABEL_101:
    if ((v44 & 0x4000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_152;
  }

LABEL_144:
  *(a1 + 40) |= 0x2000u;
  v96 = *(a1 + 344);
  if (!v96)
  {
    v97 = *(a1 + 8);
    v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
    if (v97)
    {
      v98 = *v98;
    }

    v96 = sub_1764A4C(v98);
    *(a1 + 344) = v96;
  }

  if (*(a2 + 344))
  {
    v99 = *(a2 + 344);
  }

  else
  {
    v99 = &off_2781470;
  }

  sub_12B9D50(v96, v99);
  if ((v44 & 0x4000) == 0)
  {
LABEL_102:
    if ((v44 & 0x8000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_160;
  }

LABEL_152:
  *(a1 + 40) |= 0x4000u;
  v100 = *(a1 + 352);
  if (!v100)
  {
    v101 = *(a1 + 8);
    v102 = (v101 & 0xFFFFFFFFFFFFFFFCLL);
    if (v101)
    {
      v102 = *v102;
    }

    v100 = sub_18FF7BC(v102);
    *(a1 + 352) = v100;
  }

  if (*(a2 + 352))
  {
    v103 = *(a2 + 352);
  }

  else
  {
    v103 = &off_2788038;
  }

  sub_12CC47C(v100, v103);
  if ((v44 & 0x8000) != 0)
  {
LABEL_160:
    *(a1 + 40) |= 0x8000u;
    v104 = *(a1 + 360);
    if (!v104)
    {
      v105 = *(a1 + 8);
      v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
      if (v105)
      {
        v106 = *v106;
      }

      sub_1392C78(v106);
      *(a1 + 360) = v104;
    }

    if (*(a2 + 360))
    {
      v107 = *(a2 + 360);
    }

    else
    {
      v107 = &off_276D648;
    }

    sub_138EBD8(v104, v107);
  }

LABEL_168:
  if ((v44 & 0xFF0000) == 0)
  {
    goto LABEL_179;
  }

  if ((v44 & 0x10000) != 0)
  {
    *(a1 + 368) = *(a2 + 368);
    if ((v44 & 0x20000) == 0)
    {
LABEL_171:
      if ((v44 & 0x40000) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_191;
    }
  }

  else if ((v44 & 0x20000) == 0)
  {
    goto LABEL_171;
  }

  *(a1 + 372) = *(a2 + 372);
  if ((v44 & 0x40000) == 0)
  {
LABEL_172:
    if ((v44 & 0x80000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_192;
  }

LABEL_191:
  *(a1 + 376) = *(a2 + 376);
  if ((v44 & 0x80000) == 0)
  {
LABEL_173:
    if ((v44 & 0x100000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_193;
  }

LABEL_192:
  *(a1 + 377) = *(a2 + 377);
  if ((v44 & 0x100000) == 0)
  {
LABEL_174:
    if ((v44 & 0x200000) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(a1 + 378) = *(a2 + 378);
  if ((v44 & 0x200000) == 0)
  {
LABEL_175:
    if ((v44 & 0x400000) == 0)
    {
      goto LABEL_176;
    }

LABEL_195:
    *(a1 + 380) = *(a2 + 380);
    if ((v44 & 0x800000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_177;
  }

LABEL_194:
  *(a1 + 379) = *(a2 + 379);
  if ((v44 & 0x400000) != 0)
  {
    goto LABEL_195;
  }

LABEL_176:
  if ((v44 & 0x800000) != 0)
  {
LABEL_177:
    *(a1 + 384) = *(a2 + 384);
  }

LABEL_178:
  *(a1 + 40) |= v44;
LABEL_179:
  if ((v44 & 0x7000000) == 0)
  {
    goto LABEL_185;
  }

  if ((v44 & 0x1000000) == 0)
  {
    if ((v44 & 0x2000000) == 0)
    {
      goto LABEL_182;
    }

LABEL_198:
    *(a1 + 392) = *(a2 + 392);
    if ((v44 & 0x4000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_183;
  }

  *(a1 + 388) = *(a2 + 388);
  if ((v44 & 0x2000000) != 0)
  {
    goto LABEL_198;
  }

LABEL_182:
  if ((v44 & 0x4000000) != 0)
  {
LABEL_183:
    *(a1 + 396) = *(a2 + 396);
  }

LABEL_184:
  *(a1 + 40) |= v44;
LABEL_185:
  sub_225EA0C(a1 + 16, a2 + 16);
  v108 = *(a2 + 8);
  if (v108)
  {

    sub_1957EF4((a1 + 8), (v108 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1874EB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_1947168((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_19471F4((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
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

uint64_t sub_1874FE8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 104);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_195228C(*(*(a1 + 112) + 8 * v3) + 16);
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 176);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_138C7B4(*(*(a1 + 184) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 200);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_1397960(*(*(a1 + 208) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 40);
    if ((v12 & 2) != 0)
    {
      result = sub_16E6614(*(a1 + 248));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x40) != 0)
    {
      result = sub_13A9828(*(a1 + 288));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x100) != 0)
    {
      result = sub_1875124(*(a1 + 304));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x200) != 0)
    {
      result = sub_139B468(*(a1 + 312));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x400) != 0)
    {
      result = sub_13AE1F0(*(a1 + 320));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x800) != 0)
    {
      result = sub_138F78C(*(a1 + 328));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x1000) == 0)
    {
      return 1;
    }

    result = sub_17A8EF8(*(a1 + 336));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1875124(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_1913C70(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = sub_1914488(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
  }

  while (v8);
  return v5;
}

uint64_t sub_18751B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27152D8;
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
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void sub_1875298(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18752C8(uint64_t a1)
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

void sub_1875380(uint64_t a1)
{
  sub_18752C8(a1);

  operator delete();
}

uint64_t sub_18753B8(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_34;
      }

      v5 |= 4u;
      v22 = v7 + 1;
      v23 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      v24 = *v22;
      v23 = v23 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v22 = v7 + 2;
LABEL_33:
        *v32 = v22;
        *(a1 + 40) = v23;
        goto LABEL_42;
      }

      v30 = sub_1958770(v7, v23);
      *v32 = v30;
      *(a1 + 40) = v31;
      if (!v30)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_34;
      }

      v5 |= 8u;
      v16 = v7 + 1;
      v17 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v18 = *v16;
      v17 = v17 + (v18 << 7) - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = v7 + 2;
LABEL_23:
        *v32 = v16;
        *(a1 + 44) = v17;
        goto LABEL_42;
      }

      v28 = sub_1958770(v7, v17);
      *v32 = v28;
      *(a1 + 44) = v29;
      if (!v28)
      {
        goto LABEL_51;
      }
    }

LABEL_42:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_34;
    }

    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v14 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v14 = *v14;
    }

    v15 = (a1 + 24);
LABEL_28:
    v20 = sub_194DB04(v15, v14);
    v21 = sub_1958890(v20, *v32, a3);
    goto LABEL_41;
  }

  if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 2u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v15 = (a1 + 32);
    goto LABEL_28;
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

    v21 = sub_1952690(v8, v27, v7, a3);
LABEL_41:
    *v32 = v21;
    if (!v21)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
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

char *sub_187562C(uint64_t a1, char *__dst, void *a3)
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
    v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
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
    goto LABEL_14;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 40);
  *v4 = 32;
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
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 44);
    *v7 = 40;
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

uint64_t sub_1875820(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_15;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
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
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_1875964(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2715358;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1958E5C((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 4 * *(a2 + 24));
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v7 = *(a2 + 48);
  if (v7)
  {
    v8 = *(a2 + 56);
    v9 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48(a1 + 40, v9, (v8 + 8), v7, **(a1 + 56) - *(a1 + 48));
    v10 = *(a1 + 48) + v7;
    *(a1 + 48) = v10;
    v11 = *(a1 + 56);
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  v12 = *(a2 + 8);
  if (v12)
  {
    sub_1957EF4(v4, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v13 = *(a2 + 16);
  if (v13)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v13 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v13 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v13 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  v14 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v14;
  return a1;
}

void *sub_1875C18(void *a1)
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

  sub_1875CAC(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 5);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1875CAC(uint64_t result)
{
  if (result != &off_2788068)
  {
    v1 = result;
    v2 = *(result + 64);
    if (v2)
    {
      sub_1869B9C(v2);
      operator delete();
    }

    if (v1[9])
    {
      sub_14468F0();
      operator delete();
    }

    v3 = v1[10];
    if (v3)
    {
      sub_138D654(v3);
      operator delete();
    }

    result = v1[11];
    if (result)
    {
      sub_13987EC(result);

      operator delete();
    }
  }

  return result;
}

void sub_1875D78(void *a1)
{
  sub_1875C18(a1);

  operator delete();
}

uint64_t sub_1875DB0(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  v3 = *(a1 + 16);
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

LABEL_16:
    result = sub_144692C(*(a1 + 72));
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_17;
  }

  result = sub_1869C8C(*(a1 + 64));
  if ((v3 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_17:
  result = sub_138D690(*(a1 + 80));
  if ((v3 & 8) != 0)
  {
LABEL_6:
    result = sub_1398828(*(a1 + 88));
  }

LABEL_7:
  if ((v3 & 0xF0) != 0)
  {
    *(a1 + 102) = 0;
    *(a1 + 96) = 0;
  }

  if ((v3 & 0xF00) != 0)
  {
    *(a1 + 114) = 0;
    *(a1 + 110) = 0;
    *(a1 + 116) = 8;
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

uint64_t sub_1875E7C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v72 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v72, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (*v72 + 1);
    v9 = **v72;
    if (**v72 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v72, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v72 + 2);
      }
    }

    *v72 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 1u;
        v13 = *(a1 + 64);
        if (!v13)
        {
          v14 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v14 = *v14;
          }

          v13 = sub_18FF354(v14);
          *(a1 + 64) = v13;
          v8 = *v72;
        }

        v15 = sub_2201670(a3, v13, v8);
        goto LABEL_127;
      case 2u:
        if (v9 != 17)
        {
          goto LABEL_120;
        }

        v5 |= 0x10u;
        *(a1 + 96) = *v8;
        *v72 = v8 + 8;
        goto LABEL_128;
      case 3u:
        if (v9 != 24)
        {
          goto LABEL_120;
        }

        v5 |= 0x800u;
        LODWORD(v27) = *v8;
        if ((v27 & 0x80000000) == 0)
        {
          v28 = v8 + 1;
LABEL_103:
          *v72 = v28;
          *(a1 + 116) = v27;
          goto LABEL_128;
        }

        v27 = (v8[1] << 7) + v27 - 128;
        if ((v8[1] & 0x80000000) == 0)
        {
          v28 = v8 + 2;
          goto LABEL_103;
        }

        v60 = sub_19587DC(v8, v27);
        *v72 = v60;
        *(a1 + 116) = v61;
        if (!v60)
        {
          goto LABEL_135;
        }

        goto LABEL_128;
      case 4u:
        if (v9 != 32)
        {
          goto LABEL_120;
        }

        v5 |= 0x40u;
        v30 = (v8 + 1);
        v29 = *v8;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_48;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if (v31 < 0)
        {
          v62 = sub_19587DC(v8, v29);
          *v72 = v62;
          *(a1 + 108) = v63 != 0;
          if (!v62)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v30 = (v8 + 2);
LABEL_48:
          *v72 = v30;
          *(a1 + 108) = v29 != 0;
        }

        goto LABEL_128;
      case 5u:
        if (v9 != 40)
        {
          goto LABEL_120;
        }

        v19 = (v8 + 1);
        v18 = *v8;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          *v72 = sub_19587DC(v8, v18);
          if (!*v72)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v19 = (v8 + 2);
LABEL_25:
          *v72 = v19;
        }

        if (v18 > 3)
        {
          sub_12E85B8();
        }

        else
        {
          *(a1 + 16) |= 0x20u;
          *(a1 + 104) = v18;
        }

        goto LABEL_128;
      case 6u:
        if (v9 == 48)
        {
          v35 = (v8 - 1);
          while (1)
          {
            *v72 = v35 + 1;
            v36 = *(v35 + 1);
            v37 = (v35 + 2);
            if (v36 < 0)
            {
              v38 = *v37;
              v39 = (v38 << 7) + v36;
              LODWORD(v36) = v39 - 128;
              if (v38 < 0)
              {
                *v72 = sub_19587DC(v35 + 1, (v39 - 128));
                if (!*v72)
                {
                  goto LABEL_135;
                }

                LODWORD(v36) = v42;
                goto LABEL_62;
              }

              v37 = (v35 + 3);
            }

            *v72 = v37;
LABEL_62:
            if (sub_16E4BD8(v36))
            {
              v40 = *(a1 + 24);
              if (v40 == *(a1 + 28))
              {
                v41 = v40 + 1;
                sub_1958E5C((a1 + 24), v40 + 1);
                *(*(a1 + 32) + 4 * v40) = v36;
              }

              else
              {
                *(*(a1 + 32) + 4 * v40) = v36;
                v41 = v40 + 1;
              }

              *(a1 + 24) = v41;
            }

            else
            {
              sub_12E84C8();
            }

            v35 = *v72;
            if (*a3 <= *v72 || **v72 != 48)
            {
              goto LABEL_128;
            }
          }
        }

        if (v9 == 50)
        {
          *&v73 = a1 + 24;
          *(&v73 + 1) = sub_16E4BD8;
          v74 = a1 + 8;
          v75 = 6;
          v15 = sub_1216588(a3, v8, &v73);
          goto LABEL_127;
        }

LABEL_120:
        if (v9)
        {
          v70 = (v9 & 7) == 4;
        }

        else
        {
          v70 = 1;
        }

        if (!v70)
        {
          if (*v7)
          {
            v71 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v71 = sub_11F1920((a1 + 8));
            v8 = *v72;
          }

          v15 = sub_1952690(v9, v71, v8, a3);
LABEL_127:
          *v72 = v15;
          if (!v15)
          {
            goto LABEL_135;
          }

LABEL_128:
          if (sub_195ADC0(a3, v72, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_135:
          *v72 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v72;
      case 7u:
        if (v9 != 58)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 2u;
        v51 = *(a1 + 72);
        if (!v51)
        {
          v52 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v52 = *v52;
          }

          v51 = sub_1447C28(v52);
          *(a1 + 72) = v51;
          v8 = *v72;
        }

        v15 = sub_2202E10(a3, v51, v8);
        goto LABEL_127;
      case 8u:
        if (v9 != 64)
        {
          goto LABEL_120;
        }

        v5 |= 0x80u;
        v33 = (v8 + 1);
        v32 = *v8;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v64 = sub_19587DC(v8, v32);
          *v72 = v64;
          *(a1 + 109) = v65 != 0;
          if (!v64)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v33 = (v8 + 2);
LABEL_53:
          *v72 = v33;
          *(a1 + 109) = v32 != 0;
        }

        goto LABEL_128;
      case 9u:
        if (v9 != 72)
        {
          goto LABEL_120;
        }

        v5 |= 0x100u;
        v57 = (v8 + 1);
        v56 = *v8;
        if ((v56 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        v58 = *v57;
        v56 = (v58 << 7) + v56 - 128;
        if (v58 < 0)
        {
          v68 = sub_19587DC(v8, v56);
          *v72 = v68;
          *(a1 + 110) = v69 != 0;
          if (!v68)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v57 = (v8 + 2);
LABEL_100:
          *v72 = v57;
          *(a1 + 110) = v56 != 0;
        }

        goto LABEL_128;
      case 0xAu:
        if (v9 != 80)
        {
          goto LABEL_120;
        }

        v23 = (v8 + 1);
        v24 = *v8;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        v25 = *v23;
        v26 = (v25 << 7) + v24;
        LODWORD(v24) = v26 - 128;
        if (v25 < 0)
        {
          *v72 = sub_19587DC(v8, (v26 - 128));
          if (!*v72)
          {
            goto LABEL_135;
          }

          LODWORD(v24) = v59;
        }

        else
        {
          v23 = (v8 + 2);
LABEL_38:
          *v72 = v23;
        }

        if (sub_1393054(v24))
        {
          *(a1 + 16) |= 0x400u;
          *(a1 + 112) = v24;
        }

        else
        {
          sub_156E728();
        }

        goto LABEL_128;
      case 0xBu:
        if (v9 != 88)
        {
          goto LABEL_120;
        }

        v5 |= 0x200u;
        v54 = (v8 + 1);
        v53 = *v8;
        if ((v53 & 0x8000000000000000) == 0)
        {
          goto LABEL_95;
        }

        v55 = *v54;
        v53 = (v55 << 7) + v53 - 128;
        if (v55 < 0)
        {
          v66 = sub_19587DC(v8, v53);
          *v72 = v66;
          *(a1 + 111) = v67 != 0;
          if (!v66)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v54 = (v8 + 2);
LABEL_95:
          *v72 = v54;
          *(a1 + 111) = v53 != 0;
        }

        goto LABEL_128;
      case 0xCu:
        if (v9 != 98)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 80);
        if (!v16)
        {
          v17 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v17 = *v17;
          }

          v16 = sub_1392AD4(v17);
          *(a1 + 80) = v16;
          v8 = *v72;
        }

        v15 = sub_22517C4(a3, v16, v8);
        goto LABEL_127;
      case 0xDu:
        if (v9 != 106)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 8u;
        v21 = *(a1 + 88);
        if (!v21)
        {
          v22 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v22 = *v22;
          }

          v21 = sub_13AE7C0(v22);
          *(a1 + 88) = v21;
          v8 = *v72;
        }

        v15 = sub_222D024(a3, v21, v8);
        goto LABEL_127;
      case 0xEu:
        if (v9 != 114)
        {
          goto LABEL_120;
        }

        v43 = (v8 - 1);
        while (1)
        {
          v44 = (v43 + 1);
          *v72 = v43 + 1;
          v45 = *(a1 + 56);
          if (v45 && (v46 = *(a1 + 48), v46 < *v45))
          {
            *(a1 + 48) = v46 + 1;
            v47 = *&v45[2 * v46 + 2];
          }

          else
          {
            v48 = *(a1 + 40);
            if (!v48)
            {
              operator new();
            }

            *v50 = v49;
            v50[1] = sub_195A650;
            *v49 = 0;
            v49[1] = 0;
            v49[2] = 0;
            v47 = sub_19593CC(a1 + 40, v49);
            v44 = *v72;
          }

          v43 = sub_1958890(v47, v44, a3);
          *v72 = v43;
          if (!v43)
          {
            goto LABEL_135;
          }

          if (*a3 <= v43 || *v43 != 114)
          {
            goto LABEL_128;
          }
        }

      default:
        goto LABEL_120;
    }
  }
}

char *sub_1876680(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 96);
    *a2 = 17;
    *(a2 + 1) = v10;
    a2 += 9;
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v7 = *(a1 + 64);
  *a2 = 10;
  v8 = *(v7 + 20);
  a2[1] = v8;
  if (v8 > 0x7F)
  {
    v9 = sub_19575D0(v8, a2 + 1);
  }

  else
  {
    v9 = a2 + 2;
  }

  a2 = sub_1869F58(v7, v9, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v5 & 0x800) == 0)
  {
LABEL_4:
    v6 = a2;
    goto LABEL_21;
  }

LABEL_14:
  if (*a3 <= a2)
  {
    a2 = sub_225EB68(a3, a2);
  }

  v11 = *(a1 + 116);
  *a2 = 24;
  a2[1] = v11;
  if (v11 > 0x7F)
  {
    a2[1] = v11 | 0x80;
    v12 = v11 >> 7;
    a2[2] = v11 >> 7;
    v6 = a2 + 3;
    if (v11 >= 0x4000)
    {
      LOBYTE(v13) = a2[2];
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
    v6 = a2 + 2;
  }

LABEL_21:
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v15 = *(a1 + 108);
    *v6 = 32;
    v6[1] = v15;
    v6 += 2;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 104);
    *v6 = 40;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v16 - 1) = v6 | 0x80;
          v6 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v6 + 2;
    }
  }

  else
  {
    v16 = v6;
  }

  v20 = *(a1 + 24);
  if (v20 < 1)
  {
    v23 = v16;
  }

  else
  {
    for (i = 0; i != v20; ++i)
    {
      if (*a3 <= v16)
      {
        v16 = sub_225EB68(a3, v16);
      }

      v22 = *(*(a1 + 32) + 4 * i);
      *v16 = 48;
      v16[1] = v22;
      if (v22 > 0x7F)
      {
        v16[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v16[2] = v22 >> 7;
        v23 = v16 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v16) = v16[2];
          do
          {
            *(v23 - 1) = v16 | 0x80;
            v16 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v16 + 2;
      }

      v16 = v23;
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v23)
    {
      v23 = sub_225EB68(a3, v23);
    }

    v27 = *(a1 + 72);
    *v23 = 58;
    v28 = *(v27 + 44);
    v23[1] = v28;
    if (v28 > 0x7F)
    {
      v29 = sub_19575D0(v28, v23 + 1);
    }

    else
    {
      v29 = v23 + 2;
    }

    v23 = sub_14470C4(v27, v29, a3);
    if ((v5 & 0x80) == 0)
    {
LABEL_48:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_49;
      }

LABEL_60:
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v31 = *(a1 + 110);
      *v23 = 72;
      v23[1] = v31;
      v23 += 2;
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_63;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_48;
  }

  if (*a3 <= v23)
  {
    v23 = sub_225EB68(a3, v23);
  }

  v30 = *(a1 + 109);
  *v23 = 64;
  v23[1] = v30;
  v23 += 2;
  if ((v5 & 0x100) != 0)
  {
    goto LABEL_60;
  }

LABEL_49:
  if ((v5 & 0x400) == 0)
  {
LABEL_50:
    v26 = v23;
    goto LABEL_70;
  }

LABEL_63:
  if (*a3 <= v23)
  {
    v23 = sub_225EB68(a3, v23);
  }

  v32 = *(a1 + 112);
  *v23 = 80;
  v23[1] = v32;
  if (v32 > 0x7F)
  {
    v23[1] = v32 | 0x80;
    v33 = v32 >> 7;
    v23[2] = v32 >> 7;
    v26 = v23 + 3;
    if (v32 >= 0x4000)
    {
      LOBYTE(v23) = v23[2];
      do
      {
        *(v26 - 1) = v23 | 0x80;
        v23 = (v33 >> 7);
        *v26++ = v33 >> 7;
        v34 = v33 >> 14;
        v33 >>= 7;
      }

      while (v34);
    }
  }

  else
  {
    v26 = v23 + 2;
  }

LABEL_70:
  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v35 = *(a1 + 111);
    *v26 = 88;
    v26[1] = v35;
    v26 += 2;
    if ((v5 & 4) == 0)
    {
LABEL_72:
      if ((v5 & 8) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_83;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_72;
  }

  if (*a3 <= v26)
  {
    v26 = sub_225EB68(a3, v26);
  }

  v36 = *(a1 + 80);
  *v26 = 98;
  v37 = *(v36 + 80);
  v26[1] = v37;
  if (v37 > 0x7F)
  {
    v38 = sub_19575D0(v37, v26 + 1);
  }

  else
  {
    v38 = v26 + 2;
  }

  v26 = sub_138DA8C(v36, v38, a3);
  if ((v5 & 8) != 0)
  {
LABEL_83:
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v39 = *(a1 + 88);
    *v26 = 106;
    v40 = *(v39 + 20);
    v26[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v26 + 1);
    }

    else
    {
      v41 = v26 + 2;
    }

    v26 = sub_1398C24(v39, v41, a3);
  }

LABEL_89:
  v42 = *(a1 + 48);
  if (v42 >= 1)
  {
    v43 = 8;
    do
    {
      v44 = *(*(a1 + 56) + v43);
      v45 = *(v44 + 23);
      if (v45 < 0 && (v45 = v44[1], v45 > 127) || *a3 - v26 + 14 < v45)
      {
        v26 = sub_1957480(a3, 14, v44, v26);
      }

      else
      {
        *v26 = 114;
        v26[1] = v45;
        if (*(v44 + 23) < 0)
        {
          v44 = *v44;
        }

        v46 = v26 + 2;
        memcpy(v46, v44, v45);
        v26 = &v46[v45];
      }

      v43 += 8;
      --v42;
    }

    while (v42);
  }

  v47 = *(a1 + 8);
  if ((v47 & 1) == 0)
  {
    return v26;
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

  if (*a3 - v26 >= v50)
  {
    v52 = v50;
    memcpy(v26, v51, v50);
    v26 += v52;
    return v26;
  }

  return sub_1957130(a3, v51, v50, v26);
}

uint64_t sub_1876CD4(uint64_t a1)
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
  v8 = *(a1 + 48);
  v9 = v7 + v8;
  if (v8 >= 1)
  {
    v10 = (*(a1 + 56) + 8);
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
  if (v14)
  {
    if (v14)
    {
      v28 = sub_186A16C(*(a1 + 64));
      v9 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v14 & 2) == 0)
      {
LABEL_17:
        if ((v14 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_43;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_17;
    }

    v29 = sub_1447824(*(a1 + 72));
    v9 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 4) == 0)
    {
LABEL_18:
      if ((v14 & 8) == 0)
      {
LABEL_20:
        v16 = v9 + 9;
        if ((v14 & 0x10) == 0)
        {
          v16 = v9;
        }

        if ((v14 & 0x20) != 0)
        {
          v17 = *(a1 + 104);
          v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if (v17 >= 0)
          {
            v19 = v18;
          }

          else
          {
            v19 = 11;
          }

          v16 += v19;
        }

        v9 = v16 + ((v14 >> 6) & 2) + ((v14 >> 5) & 2);
        goto LABEL_28;
      }

LABEL_19:
      v15 = sub_1398EEC(*(a1 + 88));
      v9 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_20;
    }

LABEL_43:
    v30 = sub_138DD08(*(a1 + 80));
    v9 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v14 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_28:
  if ((v14 & 0xF00) != 0)
  {
    v9 += ((v14 >> 8) & 2) + ((v14 >> 7) & 2);
    if ((v14 & 0x400) != 0)
    {
      v20 = *(a1 + 112);
      v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v20 >= 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 11;
      }

      v9 += v22;
    }

    if ((v14 & 0x800) != 0)
    {
      v23 = *(a1 + 116);
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v23 >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 11;
      }

      v9 += v25;
    }
  }

  v26 = *(a1 + 8);
  if (v26)
  {
    v31 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v32 < 0)
    {
      v32 = *(v31 + 16);
    }

    v9 += v32;
  }

  *(a1 + 20) = v9;
  return v9;
}

void sub_1876F94(uint64_t a1, uint64_t a2)
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
    sub_1201B48(a1 + 40, v10, (v9 + 8), v8, **(a1 + 56) - *(a1 + 48));
    v11 = *(a1 + 48) + v8;
    *(a1 + 48) = v11;
    v12 = *(a1 + 56);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if (v13)
  {
    if (v13)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 64);
      if (!v15)
      {
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v15 = sub_18FF354(v17);
        *(a1 + 64) = v15;
      }

      if (*(a2 + 64))
      {
        v18 = *(a2 + 64);
      }

      else
      {
        v18 = &off_2787BC0;
      }

      sub_186A25C(v15, v18);
      if ((v13 & 2) == 0)
      {
LABEL_9:
        if ((v13 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_44;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(a1 + 16) |= 2u;
    v19 = *(a1 + 72);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_1447C28(v21);
      *(a1 + 72) = v19;
    }

    if (*(a2 + 72))
    {
      v22 = *(a2 + 72);
    }

    else
    {
      v22 = &off_2771340;
    }

    sub_1447A58(v19, v22);
    if ((v13 & 4) == 0)
    {
LABEL_10:
      if ((v13 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_52;
    }

LABEL_44:
    *(a1 + 16) |= 4u;
    v23 = *(a1 + 80);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_1392AD4(v25);
      *(a1 + 80) = v23;
    }

    if (*(a2 + 80))
    {
      v26 = *(a2 + 80);
    }

    else
    {
      v26 = &off_276D5B8;
    }

    sub_138DE18(v23, v26);
    if ((v13 & 8) == 0)
    {
LABEL_11:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_60;
    }

LABEL_52:
    *(a1 + 16) |= 8u;
    v27 = *(a1 + 88);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_13AE7C0(v29);
      *(a1 + 88) = v27;
    }

    if (*(a2 + 88))
    {
      v30 = *(a2 + 88);
    }

    else
    {
      v30 = &off_276D9D0;
    }

    sub_1399048(v27, v30);
    if ((v13 & 0x10) == 0)
    {
LABEL_12:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_61;
    }

LABEL_60:
    *(a1 + 96) = *(a2 + 96);
    if ((v13 & 0x20) == 0)
    {
LABEL_13:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_62;
    }

LABEL_61:
    *(a1 + 104) = *(a2 + 104);
    if ((v13 & 0x40) == 0)
    {
LABEL_14:
      if ((v13 & 0x80) == 0)
      {
LABEL_16:
        *(a1 + 16) |= v13;
        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 109) = *(a2 + 109);
      goto LABEL_16;
    }

LABEL_62:
    *(a1 + 108) = *(a2 + 108);
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v13 & 0xF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v13 & 0x100) != 0)
  {
    *(a1 + 110) = *(a2 + 110);
    if ((v13 & 0x200) == 0)
    {
LABEL_20:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_21;
      }

LABEL_66:
      *(a1 + 112) = *(a2 + 112);
      if ((v13 & 0x800) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  *(a1 + 111) = *(a2 + 111);
  if ((v13 & 0x400) != 0)
  {
    goto LABEL_66;
  }

LABEL_21:
  if ((v13 & 0x800) != 0)
  {
LABEL_22:
    *(a1 + 116) = *(a2 + 116);
  }

LABEL_23:
  *(a1 + 16) |= v13;
LABEL_24:
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}