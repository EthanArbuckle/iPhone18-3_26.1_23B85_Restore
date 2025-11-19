uint64_t sub_18F7274(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v6 = sub_1873E0C(*(a1 + 56));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v7 = sub_18A5148(*(a1 + 64));
  v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_33:
  v8 = *(a1 + 72);
  v9 = *(v8 + 8);
  if (v9)
  {
    v110 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v110 + 16);
    }
  }

  else
  {
    v10 = 0;
  }

  *(v8 + 16) = v10;
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  v11 = sub_18A7654(*(a1 + 80));
  v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_40:
    v15 = sub_18B8AE4(*(a1 + 96));
    v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_37:
  v12 = *(a1 + 88);
  v13 = *(v12 + 8);
  if (v13)
  {
    v111 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v14 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v14 < 0)
    {
      v14 = *(v111 + 16);
    }
  }

  else
  {
    v14 = 0;
  }

  *(v12 + 16) = v14;
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_41:
  v16 = *(a1 + 104);
  v17 = *(v16 + 8);
  if (v17)
  {
    v112 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v112 + 16);
    }
  }

  else
  {
    v18 = 0;
  }

  *(v16 + 16) = v18;
  v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    v4 = sub_18BD09C(*(a1 + 112));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = sub_18BF674(*(a1 + 120));
    v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_47;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v20 = sub_18C8B70(*(a1 + 128));
  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = sub_1877860(*(a1 + 136));
  v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = sub_189E160(*(a1 + 144));
  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v23 = sub_189FFC8(*(a1 + 152));
  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = sub_1896914(*(a1 + 160));
  v2 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_51:
  v25 = sub_18A3138(*(a1 + 168));
  v2 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    v5 = sub_18A2018(*(a1 + 176));
    v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_67;
  }

  if ((v3 & 0x10000) != 0)
  {
    v26 = *(a1 + 184);
    v27 = *(v26 + 8);
    if (v27)
    {
      v113 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v28 = *((v27 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v28 < 0)
      {
        v28 = *(v113 + 16);
      }
    }

    else
    {
      v28 = 0;
    }

    *(v26 + 16) = v28;
    v2 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_57;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  v29 = sub_18C1004(*(a1 + 192));
  v2 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v30 = sub_18A63A4(*(a1 + 200));
  v2 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  v31 = sub_1897F80(*(a1 + 208));
  v2 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v32 = sub_18B9B6C(*(a1 + 216));
  v2 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v33 = sub_18C2194(*(a1 + 224));
  v2 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

LABEL_61:
  v34 = *(a1 + 232);
  v35 = *(v34 + 8);
  if (v35)
  {
    v114 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *((v35 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v36 < 0)
    {
      v36 = *(v114 + 16);
    }
  }

  else
  {
    v36 = 0;
  }

  *(v34 + 16) = v36;
  v2 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800000) != 0)
  {
LABEL_64:
    v37 = *(a1 + 240);
    v38 = *(v37 + 8);
    if (v38)
    {
      v115 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v39 = *((v38 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v39 < 0)
      {
        v39 = *(v115 + 16);
      }
    }

    else
    {
      v39 = 0;
    }

    *(v37 + 16) = v39;
    v2 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_67:
  if (!HIBYTE(v3))
  {
    goto LABEL_99;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v40 = *(a1 + 248);
    v41 = *(v40 + 8);
    if (v41)
    {
      v124 = v41 & 0xFFFFFFFFFFFFFFFCLL;
      v42 = *((v41 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v42 < 0)
      {
        v42 = *(v124 + 16);
      }
    }

    else
    {
      v42 = 0;
    }

    *(v40 + 16) = v42;
    v2 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_70:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_83;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_70;
  }

  v43 = *(a1 + 256);
  v44 = *(v43 + 8);
  if (v44)
  {
    v125 = v44 & 0xFFFFFFFFFFFFFFFCLL;
    v45 = *((v44 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v45 < 0)
    {
      v45 = *(v125 + 16);
    }
  }

  else
  {
    v45 = 0;
  }

  *(v43 + 16) = v45;
  v2 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_71:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_86;
  }

LABEL_83:
  v46 = *(a1 + 264);
  v47 = *(v46 + 8);
  if (v47)
  {
    v126 = v47 & 0xFFFFFFFFFFFFFFFCLL;
    v48 = *((v47 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v48 < 0)
    {
      v48 = *(v126 + 16);
    }
  }

  else
  {
    v48 = 0;
  }

  *(v46 + 16) = v48;
  v2 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_72:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_87;
  }

LABEL_86:
  v49 = sub_18C4A2C(*(a1 + 272));
  v2 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_73:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_90;
  }

LABEL_87:
  v50 = *(a1 + 280);
  v51 = *(v50 + 8);
  if (v51)
  {
    v127 = v51 & 0xFFFFFFFFFFFFFFFCLL;
    v52 = *((v51 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v52 < 0)
    {
      v52 = *(v127 + 16);
    }
  }

  else
  {
    v52 = 0;
  }

  *(v50 + 16) = v52;
  v2 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_74:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_93;
  }

LABEL_90:
  v53 = *(a1 + 288);
  v54 = *(v53 + 8);
  if (v54)
  {
    v128 = v54 & 0xFFFFFFFFFFFFFFFCLL;
    v55 = *((v54 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v55 < 0)
    {
      v55 = *(v128 + 16);
    }
  }

  else
  {
    v55 = 0;
  }

  *(v53 + 16) = v55;
  v2 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000000) == 0)
  {
LABEL_75:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_96;
  }

LABEL_93:
  v56 = *(a1 + 296);
  v57 = *(v56 + 8);
  if (v57)
  {
    v129 = v57 & 0xFFFFFFFFFFFFFFFCLL;
    v58 = *((v57 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v58 < 0)
    {
      v58 = *(v129 + 16);
    }
  }

  else
  {
    v58 = 0;
  }

  *(v56 + 16) = v58;
  v2 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_96:
    v59 = *(a1 + 304);
    v60 = *(v59 + 8);
    if (v60)
    {
      v130 = v60 & 0xFFFFFFFFFFFFFFFCLL;
      v61 = *((v60 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v61 < 0)
      {
        v61 = *(v130 + 16);
      }
    }

    else
    {
      v61 = 0;
    }

    *(v59 + 16) = v61;
    v2 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_99:
  v62 = *(a1 + 44);
  if (!v62)
  {
    goto LABEL_109;
  }

  if (v62)
  {
    v69 = sub_18DFBC0(*(a1 + 312));
    v2 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v62 & 2) == 0)
    {
LABEL_102:
      if ((v62 & 4) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_140;
    }
  }

  else if ((v62 & 2) == 0)
  {
    goto LABEL_102;
  }

  v70 = *(a1 + 320);
  v71 = *(v70 + 8);
  if (v71)
  {
    v116 = v71 & 0xFFFFFFFFFFFFFFFCLL;
    v72 = *((v71 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v72 < 0)
    {
      v72 = *(v116 + 16);
    }
  }

  else
  {
    v72 = 0;
  }

  *(v70 + 16) = v72;
  v2 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 4) == 0)
  {
LABEL_103:
    if ((v62 & 8) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_141;
  }

LABEL_140:
  v73 = sub_18E2C58(*(a1 + 328));
  v2 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 8) == 0)
  {
LABEL_104:
    if ((v62 & 0x10) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_142;
  }

LABEL_141:
  v74 = sub_18F26EC(*(a1 + 336));
  v2 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x10) == 0)
  {
LABEL_105:
    if ((v62 & 0x20) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_143;
  }

LABEL_142:
  v75 = sub_18E5B0C(*(a1 + 344));
  v2 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x20) == 0)
  {
LABEL_106:
    if ((v62 & 0x40) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_146;
  }

LABEL_143:
  v76 = *(a1 + 352);
  v77 = *(v76 + 8);
  if (v77)
  {
    v117 = v77 & 0xFFFFFFFFFFFFFFFCLL;
    v78 = *((v77 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v78 < 0)
    {
      v78 = *(v117 + 16);
    }
  }

  else
  {
    v78 = 0;
  }

  *(v76 + 16) = v78;
  v2 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x40) == 0)
  {
LABEL_107:
    if ((v62 & 0x80) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_146:
  v79 = sub_18E686C(*(a1 + 360));
  v2 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x80) != 0)
  {
LABEL_108:
    v63 = sub_18DBDB4(*(a1 + 368));
    v2 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_109:
  if ((v62 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v62 & 0x100) != 0)
  {
    v80 = *(a1 + 376);
    v81 = *(v80 + 8);
    if (v81)
    {
      v118 = v81 & 0xFFFFFFFFFFFFFFFCLL;
      v82 = *((v81 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v82 < 0)
      {
        v82 = *(v118 + 16);
      }
    }

    else
    {
      v82 = 0;
    }

    *(v80 + 16) = v82;
    v2 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v62 & 0x200) == 0)
    {
LABEL_112:
      if ((v62 & 0x400) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_152;
    }
  }

  else if ((v62 & 0x200) == 0)
  {
    goto LABEL_112;
  }

  v83 = sub_1883BC8(*(a1 + 384));
  v2 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x400) == 0)
  {
LABEL_113:
    if ((v62 & 0x800) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_153;
  }

LABEL_152:
  v84 = sub_187907C(*(a1 + 392));
  v2 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x800) == 0)
  {
LABEL_114:
    if ((v62 & 0x1000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_154;
  }

LABEL_153:
  v85 = sub_18811A4(*(a1 + 400));
  v2 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x1000) == 0)
  {
LABEL_115:
    if ((v62 & 0x2000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_155;
  }

LABEL_154:
  v86 = sub_187E800(*(a1 + 408));
  v2 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x2000) == 0)
  {
LABEL_116:
    if ((v62 & 0x4000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_158;
  }

LABEL_155:
  v87 = *(a1 + 416);
  v88 = *(v87 + 8);
  if (v88)
  {
    v119 = v88 & 0xFFFFFFFFFFFFFFFCLL;
    v89 = *((v88 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v89 < 0)
    {
      v89 = *(v119 + 16);
    }
  }

  else
  {
    v89 = 0;
  }

  *(v87 + 16) = v89;
  v2 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x4000) == 0)
  {
LABEL_117:
    if ((v62 & 0x8000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

LABEL_158:
  v90 = *(a1 + 424);
  v91 = *(v90 + 8);
  if (v91)
  {
    v120 = v91 & 0xFFFFFFFFFFFFFFFCLL;
    v92 = *((v91 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v92 < 0)
    {
      v92 = *(v120 + 16);
    }
  }

  else
  {
    v92 = 0;
  }

  *(v90 + 16) = v92;
  v2 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x8000) != 0)
  {
LABEL_118:
    v64 = sub_188BED0(*(a1 + 432));
    v2 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_119:
  if ((v62 & 0xFF0000) == 0)
  {
    goto LABEL_129;
  }

  if ((v62 & 0x10000) != 0)
  {
    v93 = sub_1885B24(*(a1 + 440));
    v2 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v62 & 0x20000) == 0)
    {
LABEL_122:
      if ((v62 & 0x40000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_164;
    }
  }

  else if ((v62 & 0x20000) == 0)
  {
    goto LABEL_122;
  }

  v94 = sub_188A434(*(a1 + 448));
  v2 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x40000) == 0)
  {
LABEL_123:
    if ((v62 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_165;
  }

LABEL_164:
  v95 = sub_18B1190(*(a1 + 456));
  v2 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x80000) == 0)
  {
LABEL_124:
    if ((v62 & 0x100000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_166;
  }

LABEL_165:
  v96 = sub_189533C(*(a1 + 464));
  v2 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x100000) == 0)
  {
LABEL_125:
    if ((v62 & 0x200000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_169;
  }

LABEL_166:
  v97 = *(a1 + 472);
  v98 = *(v97 + 8);
  if (v98)
  {
    v121 = v98 & 0xFFFFFFFFFFFFFFFCLL;
    v99 = *((v98 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v99 < 0)
    {
      v99 = *(v121 + 16);
    }
  }

  else
  {
    v99 = 0;
  }

  *(v97 + 16) = v99;
  v2 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x200000) == 0)
  {
LABEL_126:
    if ((v62 & 0x400000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_172;
  }

LABEL_169:
  v100 = *(a1 + 480);
  v101 = *(v100 + 8);
  if (v101)
  {
    v122 = v101 & 0xFFFFFFFFFFFFFFFCLL;
    v102 = *((v101 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v102 < 0)
    {
      v102 = *(v122 + 16);
    }
  }

  else
  {
    v102 = 0;
  }

  *(v100 + 16) = v102;
  v2 += v102 + ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x400000) == 0)
  {
LABEL_127:
    if ((v62 & 0x800000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_172:
  v103 = sub_18E9A60(*(a1 + 488));
  v2 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x800000) != 0)
  {
LABEL_128:
    v65 = sub_18E52D8(*(a1 + 496));
    v2 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_129:
  if ((v62 & 0x7000000) == 0)
  {
    goto LABEL_134;
  }

  if ((v62 & 0x1000000) != 0)
  {
    v104 = sub_18EA90C(*(a1 + 504));
    v2 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v62 & 0x2000000) == 0)
    {
LABEL_132:
      if ((v62 & 0x4000000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_133;
    }
  }

  else if ((v62 & 0x2000000) == 0)
  {
    goto LABEL_132;
  }

  v105 = *(a1 + 512);
  v106 = *(v105 + 8);
  if (v106)
  {
    v123 = v106 & 0xFFFFFFFFFFFFFFFCLL;
    v107 = *((v106 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v107 < 0)
    {
      v107 = *(v123 + 16);
    }
  }

  else
  {
    v107 = 0;
  }

  *(v105 + 16) = v107;
  v2 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v62 & 0x4000000) != 0)
  {
LABEL_133:
    v66 = sub_18AC8B8(*(a1 + 520));
    v2 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_134:
  v67 = *(a1 + 8);
  if (v67)
  {
    v108 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    v109 = *((v67 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v109 < 0)
    {
      v109 = *(v108 + 16);
    }

    v2 += v109;
  }

  *(a1 + 48) = v2;
  return v2;
}

void sub_18F81B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    goto LABEL_75;
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_14:
    *(a1 + 40) |= 2u;
    v9 = *(a1 + 64);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v9 = sub_1902008(v11);
      *(a1 + 64) = v9;
    }

    if (*(a2 + 64))
    {
      v12 = *(a2 + 64);
    }

    else
    {
      v12 = &off_2789180;
    }

    sub_18A51F4(v9, v12);
    if ((v4 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  *(a1 + 40) |= 1u;
  v5 = *(a1 + 56);
  if (!v5)
  {
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    v5 = sub_18FF760(v7);
    *(a1 + 56) = v5;
  }

  if (*(a2 + 56))
  {
    v8 = *(a2 + 56);
  }

  else
  {
    v8 = &off_2787EA8;
  }

  sub_1874594(v5, v8);
  if ((v4 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v4 & 4) != 0)
  {
LABEL_22:
    *(a1 + 40) |= 4u;
    v13 = *(a1 + 72);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_1901F34(v15);
      *(a1 + 72) = v13;
    }

    v16 = *(a2 + 72);
    if (!v16)
    {
      v16 = &off_2789108;
    }

    v17 = v16[1];
    if (v17)
    {
      sub_1957EF4((v13 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_30:
  if ((v4 & 8) != 0)
  {
    *(a1 + 40) |= 8u;
    v18 = *(a1 + 80);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1902178(v20);
      *(a1 + 80) = v18;
    }

    if (*(a2 + 80))
    {
      v21 = *(a2 + 80);
    }

    else
    {
      v21 = &off_27892C0;
    }

    sub_138F72C(v18, v21);
  }

  if ((v4 & 0x10) != 0)
  {
    *(a1 + 40) |= 0x10u;
    v22 = *(a1 + 88);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_190228C(v24);
      *(a1 + 88) = v22;
    }

    v25 = *(a2 + 88);
    if (!v25)
    {
      v25 = &off_2789388;
    }

    v26 = v25[1];
    if (v26)
    {
      sub_1957EF4((v22 + 8), (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x20) != 0)
  {
    *(a1 + 40) |= 0x20u;
    v27 = *(a1 + 96);
    if (!v27)
    {
      v28 = *(a1 + 8);
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_1903070(v29);
      *(a1 + 96) = v27;
    }

    if (*(a2 + 96))
    {
      v30 = *(a2 + 96);
    }

    else
    {
      v30 = &off_27899B0;
    }

    sub_18B8B7C(v27, v30);
  }

  if ((v4 & 0x40) != 0)
  {
    *(a1 + 40) |= 0x40u;
    v31 = *(a1 + 104);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_19027A8(v33);
      *(a1 + 104) = v31;
    }

    v34 = *(a2 + 104);
    if (!v34)
    {
      v34 = &off_27895B8;
    }

    v35 = v34[1];
    if (v35)
    {
      sub_1957EF4((v31 + 8), (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x80) != 0)
  {
    *(a1 + 40) |= 0x80u;
    v36 = *(a1 + 112);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_190342C(v38);
      *(a1 + 112) = v36;
    }

    if (*(a2 + 112))
    {
      v39 = *(a2 + 112);
    }

    else
    {
      v39 = &off_2789B10;
    }

    sub_18BD19C(v36, v39);
  }

LABEL_75:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_149;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v40 = *(a1 + 120);
    if (!v40)
    {
      v41 = *(a1 + 8);
      v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
      if (v41)
      {
        v42 = *v42;
      }

      v40 = sub_19035B0(v42);
      *(a1 + 120) = v40;
    }

    if (*(a2 + 120))
    {
      v43 = *(a2 + 120);
    }

    else
    {
      v43 = &off_2789BF8;
    }

    sub_18BF788(v40, v43);
    if ((v4 & 0x200) == 0)
    {
LABEL_78:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_101;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  *(a1 + 40) |= 0x200u;
  v44 = *(a1 + 128);
  if (!v44)
  {
    v45 = *(a1 + 8);
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    v44 = sub_1903E70(v46);
    *(a1 + 128) = v44;
  }

  if (*(a2 + 128))
  {
    v47 = *(a2 + 128);
  }

  else
  {
    v47 = &off_2789ED8;
  }

  sub_18C8E60(v44, v47);
  if ((v4 & 0x400) == 0)
  {
LABEL_79:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_109;
  }

LABEL_101:
  *(a1 + 40) |= 0x400u;
  v48 = *(a1 + 136);
  if (!v48)
  {
    v49 = *(a1 + 8);
    v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (v49)
    {
      v50 = *v50;
    }

    v48 = sub_18FF8F0(v50);
    *(a1 + 136) = v48;
  }

  if (*(a2 + 136))
  {
    v51 = *(a2 + 136);
  }

  else
  {
    v51 = &off_27880E0;
  }

  sub_1877908(v48, v51);
  if ((v4 & 0x800) == 0)
  {
LABEL_80:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(a1 + 40) |= 0x800u;
  v52 = *(a1 + 144);
  if (!v52)
  {
    v53 = *(a1 + 8);
    v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
    if (v53)
    {
      v54 = *v54;
    }

    v52 = sub_19019B8(v54);
    *(a1 + 144) = v52;
  }

  if (*(a2 + 144))
  {
    v55 = *(a2 + 144);
  }

  else
  {
    v55 = &off_2788E90;
  }

  sub_189E6A4(v52, v55);
  if ((v4 & 0x1000) == 0)
  {
LABEL_81:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_125;
  }

LABEL_117:
  *(a1 + 40) |= 0x1000u;
  v56 = *(a1 + 152);
  if (!v56)
  {
    v57 = *(a1 + 8);
    v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    if (v57)
    {
      v58 = *v58;
    }

    v56 = sub_1901A9C(v58);
    *(a1 + 152) = v56;
  }

  if (*(a2 + 152))
  {
    v59 = *(a2 + 152);
  }

  else
  {
    v59 = &off_2788FE0;
  }

  sub_18A00B4(v56, v59);
  if ((v4 & 0x2000) == 0)
  {
LABEL_82:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_133;
  }

LABEL_125:
  *(a1 + 40) |= 0x2000u;
  v60 = *(a1 + 160);
  if (!v60)
  {
    v61 = *(a1 + 8);
    v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
    if (v61)
    {
      v62 = *v62;
    }

    v60 = sub_1901668(v62);
    *(a1 + 160) = v60;
  }

  if (*(a2 + 160))
  {
    v63 = *(a2 + 160);
  }

  else
  {
    v63 = &off_2788CB8;
  }

  sub_1896A0C(v60, v63);
  if ((v4 & 0x4000) == 0)
  {
LABEL_83:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_141;
  }

LABEL_133:
  *(a1 + 40) |= 0x4000u;
  v64 = *(a1 + 168);
  if (!v64)
  {
    v65 = *(a1 + 8);
    v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
    if (v65)
    {
      v66 = *v66;
    }

    v64 = sub_1901E0C(v66);
    *(a1 + 168) = v64;
  }

  if (*(a2 + 168))
  {
    v67 = *(a2 + 168);
  }

  else
  {
    v67 = &off_27890B0;
  }

  sub_12A9C84(v64, v67);
  if ((v4 & 0x8000) != 0)
  {
LABEL_141:
    *(a1 + 40) |= 0x8000u;
    v68 = *(a1 + 176);
    if (!v68)
    {
      v69 = *(a1 + 8);
      v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
      if (v69)
      {
        v70 = *v70;
      }

      v68 = sub_1901CF0(v70);
      *(a1 + 176) = v68;
    }

    if (*(a2 + 176))
    {
      v71 = *(a2 + 176);
    }

    else
    {
      v71 = &off_2789058;
    }

    sub_18A20C0(v68, v71);
  }

LABEL_149:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_223;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v72 = *(a1 + 184);
    if (!v72)
    {
      v73 = *(a1 + 8);
      v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
      if (v73)
      {
        v74 = *v74;
      }

      v72 = sub_1902C28(v74);
      *(a1 + 184) = v72;
    }

    v75 = *(a2 + 184);
    if (!v75)
    {
      v75 = &off_2789778;
    }

    v76 = v75[1];
    if (v76)
    {
      sub_1957EF4((v72 + 8), (v76 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x20000) != 0)
  {
    *(a1 + 40) |= 0x20000u;
    v77 = *(a1 + 192);
    if (!v77)
    {
      v78 = *(a1 + 8);
      v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
      if (v78)
      {
        v79 = *v79;
      }

      v77 = sub_1903778(v79);
      *(a1 + 192) = v77;
    }

    if (*(a2 + 192))
    {
      v80 = *(a2 + 192);
    }

    else
    {
      v80 = &off_2789CA0;
    }

    sub_138F72C(v77, v80);
    if ((v4 & 0x40000) == 0)
    {
LABEL_161:
      if ((v4 & 0x80000) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_182;
    }
  }

  else if ((v4 & 0x40000) == 0)
  {
    goto LABEL_161;
  }

  *(a1 + 40) |= 0x40000u;
  v81 = *(a1 + 200);
  if (!v81)
  {
    v82 = *(a1 + 8);
    v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
    if (v82)
    {
      v83 = *v83;
    }

    v81 = sub_19020C0(v83);
    *(a1 + 200) = v81;
  }

  if (*(a2 + 200))
  {
    v84 = *(a2 + 200);
  }

  else
  {
    v84 = &off_2789210;
  }

  sub_18A51F4(v81, v84);
  if ((v4 & 0x80000) == 0)
  {
LABEL_162:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_190;
  }

LABEL_182:
  *(a1 + 40) |= 0x80000u;
  v85 = *(a1 + 208);
  if (!v85)
  {
    v86 = *(a1 + 8);
    v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
    if (v86)
    {
      v87 = *v87;
    }

    v85 = sub_1901820(v87);
    *(a1 + 208) = v85;
  }

  if (*(a2 + 208))
  {
    v88 = *(a2 + 208);
  }

  else
  {
    v88 = &off_2788D28;
  }

  sub_1898028(v85, v88);
  if ((v4 & 0x100000) == 0)
  {
LABEL_163:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_164;
    }

LABEL_198:
    *(a1 + 40) |= 0x200000u;
    v93 = *(a1 + 224);
    if (!v93)
    {
      v94 = *(a1 + 8);
      v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
      if (v94)
      {
        v95 = *v95;
      }

      v93 = sub_1903830(v95);
      *(a1 + 224) = v93;
    }

    if (*(a2 + 224))
    {
      v96 = *(a2 + 224);
    }

    else
    {
      v96 = &off_2789D28;
    }

    sub_138F72C(v93, v96);
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_206;
  }

LABEL_190:
  *(a1 + 40) |= 0x100000u;
  v89 = *(a1 + 216);
  if (!v89)
  {
    v90 = *(a1 + 8);
    v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
    if (v90)
    {
      v91 = *v91;
    }

    v89 = sub_1903194(v91);
    *(a1 + 216) = v89;
  }

  if (*(a2 + 216))
  {
    v92 = *(a2 + 216);
  }

  else
  {
    v92 = &off_2789A20;
  }

  sub_132DE2C(v89, v92);
  if ((v4 & 0x200000) != 0)
  {
    goto LABEL_198;
  }

LABEL_164:
  if ((v4 & 0x400000) != 0)
  {
LABEL_206:
    *(a1 + 40) |= 0x400000u;
    v97 = *(a1 + 232);
    if (!v97)
    {
      v98 = *(a1 + 8);
      v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
      if (v98)
      {
        v99 = *v99;
      }

      v97 = sub_1902434(v99);
      *(a1 + 232) = v97;
    }

    v100 = *(a2 + 232);
    if (!v100)
    {
      v100 = &off_2789450;
    }

    v101 = v100[1];
    if (v101)
    {
      sub_1957EF4((v97 + 8), (v101 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_214:
  if ((v4 & 0x800000) != 0)
  {
    *(a1 + 40) |= 0x800000u;
    v102 = *(a1 + 240);
    if (!v102)
    {
      v103 = *(a1 + 8);
      v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
      if (v103)
      {
        v104 = *v104;
      }

      v102 = sub_1903928(v104);
      *(a1 + 240) = v102;
    }

    v105 = *(a2 + 240);
    if (!v105)
    {
      v105 = &off_2789D98;
    }

    v106 = v105[1];
    if (v106)
    {
      sub_1957EF4((v102 + 8), (v106 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_223:
  if (HIBYTE(v4))
  {
    if ((v4 & 0x1000000) != 0)
    {
      *(a1 + 40) |= 0x1000000u;
      v107 = *(a1 + 248);
      if (!v107)
      {
        v108 = *(a1 + 8);
        v109 = (v108 & 0xFFFFFFFFFFFFFFFCLL);
        if (v108)
        {
          v109 = *v109;
        }

        v107 = sub_190481C(v109);
        *(a1 + 248) = v107;
      }

      v110 = *(a2 + 248);
      if (!v110)
      {
        v110 = &off_278A418;
      }

      v111 = v110[1];
      if (v111)
      {
        sub_1957EF4((v107 + 8), (v111 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x2000000) != 0)
    {
      *(a1 + 40) |= 0x2000000u;
      v112 = *(a1 + 256);
      if (!v112)
      {
        v113 = *(a1 + 8);
        v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
        if (v113)
        {
          v114 = *v114;
        }

        v112 = sub_1904938(v114);
        *(a1 + 256) = v112;
      }

      v115 = *(a2 + 256);
      if (!v115)
      {
        v115 = &off_278A478;
      }

      v116 = v115[1];
      if (v116)
      {
        sub_1957EF4((v112 + 8), (v116 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x4000000) != 0)
    {
      *(a1 + 40) |= 0x4000000u;
      v117 = *(a1 + 264);
      if (!v117)
      {
        v118 = *(a1 + 8);
        v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
        if (v118)
        {
          v119 = *v119;
        }

        v117 = sub_1903A50(v119);
        *(a1 + 264) = v117;
      }

      v120 = *(a2 + 264);
      if (!v120)
      {
        v120 = &off_2789E10;
      }

      v121 = v120[1];
      if (v121)
      {
        sub_1957EF4((v117 + 8), (v121 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x8000000) != 0)
    {
      *(a1 + 40) |= 0x8000000u;
      v122 = *(a1 + 272);
      if (!v122)
      {
        v123 = *(a1 + 8);
        v124 = (v123 & 0xFFFFFFFFFFFFFFFCLL);
        if (v123)
        {
          v124 = *v124;
        }

        v122 = sub_1903B64(v124);
        *(a1 + 272) = v122;
      }

      if (*(a2 + 272))
      {
        v125 = *(a2 + 272);
      }

      else
      {
        v125 = &off_2789E60;
      }

      sub_157BF84(v122, v125);
    }

    if ((v4 & 0x10000000) != 0)
    {
      *(a1 + 40) |= 0x10000000u;
      v126 = *(a1 + 280);
      if (!v126)
      {
        v127 = *(a1 + 8);
        v128 = (v127 & 0xFFFFFFFFFFFFFFFCLL);
        if (v127)
        {
          v128 = *v128;
        }

        v126 = sub_1904A34(v128);
        *(a1 + 280) = v126;
      }

      v129 = *(a2 + 280);
      if (!v129)
      {
        v129 = &off_278A4B0;
      }

      v130 = v129[1];
      if (v130)
      {
        sub_1957EF4((v126 + 8), (v130 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x20000000) != 0)
    {
      *(a1 + 40) |= 0x20000000u;
      v131 = *(a1 + 288);
      if (!v131)
      {
        v132 = *(a1 + 8);
        v133 = (v132 & 0xFFFFFFFFFFFFFFFCLL);
        if (v132)
        {
          v133 = *v133;
        }

        v131 = sub_1903CA4(v133);
        *(a1 + 288) = v131;
      }

      v134 = *(a2 + 288);
      if (!v134)
      {
        v134 = &off_2789EC0;
      }

      v135 = v134[1];
      if (v135)
      {
        sub_1957EF4((v131 + 8), (v135 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x40000000) != 0)
    {
      *(a1 + 40) |= 0x40000000u;
      v136 = *(a1 + 296);
      if (!v136)
      {
        v137 = *(a1 + 8);
        v138 = (v137 & 0xFFFFFFFFFFFFFFFCLL);
        if (v137)
        {
          v138 = *v138;
        }

        v136 = sub_19050C0(v138);
        *(a1 + 296) = v136;
      }

      v139 = *(a2 + 296);
      if (!v139)
      {
        v139 = &off_278A5F8;
      }

      v140 = v139[1];
      if (v140)
      {
        sub_1957EF4((v136 + 8), (v140 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x80000000) != 0)
    {
      *(a1 + 40) |= 0x80000000;
      v141 = *(a1 + 304);
      if (!v141)
      {
        v142 = *(a1 + 8);
        v143 = (v142 & 0xFFFFFFFFFFFFFFFCLL);
        if (v142)
        {
          v143 = *v143;
        }

        v141 = sub_19051B0(v143);
        *(a1 + 304) = v141;
      }

      v144 = *(a2 + 304);
      if (!v144)
      {
        v144 = &off_278A630;
      }

      v145 = v144[1];
      if (v145)
      {
        sub_1957EF4((v141 + 8), (v145 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }
  }

  v146 = *(a2 + 44);
  if (v146)
  {
    if (v146)
    {
      *(a1 + 44) |= 1u;
      v147 = *(a1 + 312);
      if (!v147)
      {
        v148 = *(a1 + 8);
        v149 = (v148 & 0xFFFFFFFFFFFFFFFCLL);
        if (v148)
        {
          v149 = *v149;
        }

        v147 = sub_19052AC(v149);
        *(a1 + 312) = v147;
      }

      if (*(a2 + 312))
      {
        v150 = *(a2 + 312);
      }

      else
      {
        v150 = &off_278A668;
      }

      sub_18DFD6C(v147, v150);
    }

    if ((v146 & 2) != 0)
    {
      *(a1 + 44) |= 2u;
      v151 = *(a1 + 320);
      if (!v151)
      {
        v152 = *(a1 + 8);
        v153 = (v152 & 0xFFFFFFFFFFFFFFFCLL);
        if (v152)
        {
          v153 = *v153;
        }

        v151 = sub_19053B4(v153);
        *(a1 + 320) = v151;
      }

      v154 = *(a2 + 320);
      if (!v154)
      {
        v154 = &off_278A6D0;
      }

      v155 = v154[1];
      if (v155)
      {
        sub_1957EF4((v151 + 8), (v155 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 4) != 0)
    {
      *(a1 + 44) |= 4u;
      v156 = *(a1 + 328);
      if (!v156)
      {
        v157 = *(a1 + 8);
        v158 = (v157 & 0xFFFFFFFFFFFFFFFCLL);
        if (v157)
        {
          v158 = *v158;
        }

        v156 = sub_1905618(v158);
        *(a1 + 328) = v156;
      }

      if (*(a2 + 328))
      {
        v159 = *(a2 + 328);
      }

      else
      {
        v159 = &off_278A7B0;
      }

      sub_18E2D88(v156, v159);
      if ((v146 & 8) == 0)
      {
LABEL_317:
        if ((v146 & 0x10) == 0)
        {
          goto LABEL_318;
        }

        goto LABEL_336;
      }
    }

    else if ((v146 & 8) == 0)
    {
      goto LABEL_317;
    }

    *(a1 + 44) |= 8u;
    v160 = *(a1 + 336);
    if (!v160)
    {
      v161 = *(a1 + 8);
      v162 = (v161 & 0xFFFFFFFFFFFFFFFCLL);
      if (v161)
      {
        v162 = *v162;
      }

      v160 = sub_1906158(v162);
      *(a1 + 336) = v160;
    }

    if (*(a2 + 336))
    {
      v163 = *(a2 + 336);
    }

    else
    {
      v163 = &off_278AD60;
    }

    sub_18F2794(v160, v163);
    if ((v146 & 0x10) == 0)
    {
LABEL_318:
      if ((v146 & 0x20) == 0)
      {
LABEL_352:
        if ((v146 & 0x40) != 0)
        {
          *(a1 + 44) |= 0x40u;
          v173 = *(a1 + 360);
          if (!v173)
          {
            v174 = *(a1 + 8);
            v175 = (v174 & 0xFFFFFFFFFFFFFFFCLL);
            if (v174)
            {
              v175 = *v175;
            }

            v173 = sub_1905B6C(v175);
            *(a1 + 360) = v173;
          }

          if (*(a2 + 360))
          {
            v176 = *(a2 + 360);
          }

          else
          {
            v176 = &off_278A950;
          }

          sub_18E6914(v173, v176);
        }

        if ((v146 & 0x80) != 0)
        {
          *(a1 + 44) |= 0x80u;
          v177 = *(a1 + 368);
          if (!v177)
          {
            v178 = *(a1 + 8);
            v179 = (v178 & 0xFFFFFFFFFFFFFFFCLL);
            if (v178)
            {
              v179 = *v179;
            }

            v177 = sub_1904D50(v179);
            *(a1 + 368) = v177;
          }

          if (*(a2 + 368))
          {
            v180 = *(a2 + 368);
          }

          else
          {
            v180 = &off_278A548;
          }

          sub_18DBE94(v177, v180);
        }

        goto LABEL_370;
      }

LABEL_344:
      *(a1 + 44) |= 0x20u;
      v168 = *(a1 + 352);
      if (!v168)
      {
        v169 = *(a1 + 8);
        v170 = (v169 & 0xFFFFFFFFFFFFFFFCLL);
        if (v169)
        {
          v170 = *v170;
        }

        v168 = sub_1905A00(v170);
        *(a1 + 352) = v168;
      }

      v171 = *(a2 + 352);
      if (!v171)
      {
        v171 = &off_278A8F0;
      }

      v172 = v171[1];
      if (v172)
      {
        sub_1957EF4((v168 + 8), (v172 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      goto LABEL_352;
    }

LABEL_336:
    *(a1 + 44) |= 0x10u;
    v164 = *(a1 + 344);
    if (!v164)
    {
      v165 = *(a1 + 8);
      v166 = (v165 & 0xFFFFFFFFFFFFFFFCLL);
      if (v165)
      {
        v166 = *v166;
      }

      v164 = sub_1905A78(v166);
      *(a1 + 344) = v164;
    }

    if (*(a2 + 344))
    {
      v167 = *(a2 + 344);
    }

    else
    {
      v167 = &off_278A908;
    }

    sub_18E5B8C(v164, v167);
    if ((v146 & 0x20) == 0)
    {
      goto LABEL_352;
    }

    goto LABEL_344;
  }

LABEL_370:
  if ((v146 & 0xFF00) == 0)
  {
    goto LABEL_444;
  }

  if ((v146 & 0x100) != 0)
  {
    *(a1 + 44) |= 0x100u;
    v181 = *(a1 + 376);
    if (!v181)
    {
      v182 = *(a1 + 8);
      v183 = (v182 & 0xFFFFFFFFFFFFFFFCLL);
      if (v182)
      {
        v183 = *v183;
      }

      v181 = sub_1904E70(v183);
      *(a1 + 376) = v181;
    }

    v184 = *(a2 + 376);
    if (!v184)
    {
      v184 = &off_278A5A8;
    }

    v185 = v184[1];
    if (v185)
    {
      sub_1957EF4((v181 + 8), (v185 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v146 & 0x200) != 0)
  {
    *(a1 + 44) |= 0x200u;
    v186 = *(a1 + 384);
    if (!v186)
    {
      v187 = *(a1 + 8);
      v188 = (v187 & 0xFFFFFFFFFFFFFFFCLL);
      if (v187)
      {
        v188 = *v188;
      }

      v186 = sub_19004BC(v188);
      *(a1 + 384) = v186;
    }

    if (*(a2 + 384))
    {
      v189 = *(a2 + 384);
    }

    else
    {
      v189 = &off_2788580;
    }

    sub_1883CB8(v186, v189);
    if ((v146 & 0x400) == 0)
    {
LABEL_382:
      if ((v146 & 0x800) == 0)
      {
        goto LABEL_383;
      }

      goto LABEL_402;
    }
  }

  else if ((v146 & 0x400) == 0)
  {
    goto LABEL_382;
  }

  *(a1 + 44) |= 0x400u;
  v190 = *(a1 + 392);
  if (!v190)
  {
    v191 = *(a1 + 8);
    v192 = (v191 & 0xFFFFFFFFFFFFFFFCLL);
    if (v191)
    {
      v192 = *v192;
    }

    v190 = sub_18FFA3C(v192);
    *(a1 + 392) = v190;
  }

  if (*(a2 + 392))
  {
    v193 = *(a2 + 392);
  }

  else
  {
    v193 = &off_2788180;
  }

  sub_1879158(v190, v193);
  if ((v146 & 0x800) == 0)
  {
LABEL_383:
    if ((v146 & 0x1000) == 0)
    {
      goto LABEL_384;
    }

LABEL_410:
    *(a1 + 44) |= 0x1000u;
    v198 = *(a1 + 408);
    if (!v198)
    {
      v199 = *(a1 + 8);
      v200 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
      if (v199)
      {
        v200 = *v200;
      }

      v198 = sub_1900044(v200);
      *(a1 + 408) = v198;
    }

    if (*(a2 + 408))
    {
      v201 = *(a2 + 408);
    }

    else
    {
      v201 = &off_2788398;
    }

    sub_187E92C(v198, v201);
    if ((v146 & 0x2000) == 0)
    {
      goto LABEL_426;
    }

    goto LABEL_418;
  }

LABEL_402:
  *(a1 + 44) |= 0x800u;
  v194 = *(a1 + 400);
  if (!v194)
  {
    v195 = *(a1 + 8);
    v196 = (v195 & 0xFFFFFFFFFFFFFFFCLL);
    if (v195)
    {
      v196 = *v196;
    }

    v194 = sub_19002D8(v196);
    *(a1 + 400) = v194;
  }

  if (*(a2 + 400))
  {
    v197 = *(a2 + 400);
  }

  else
  {
    v197 = &off_2788490;
  }

  sub_188129C(v194, v197);
  if ((v146 & 0x1000) != 0)
  {
    goto LABEL_410;
  }

LABEL_384:
  if ((v146 & 0x2000) != 0)
  {
LABEL_418:
    *(a1 + 44) |= 0x2000u;
    v202 = *(a1 + 416);
    if (!v202)
    {
      v203 = *(a1 + 8);
      v204 = (v203 & 0xFFFFFFFFFFFFFFFCLL);
      if (v203)
      {
        v204 = *v204;
      }

      v202 = sub_19028B0(v204);
      *(a1 + 416) = v202;
    }

    v205 = *(a2 + 416);
    if (!v205)
    {
      v205 = &off_2789618;
    }

    v206 = v205[1];
    if (v206)
    {
      sub_1957EF4((v202 + 8), (v206 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_426:
  if ((v146 & 0x4000) != 0)
  {
    *(a1 + 44) |= 0x4000u;
    v207 = *(a1 + 424);
    if (!v207)
    {
      v208 = *(a1 + 8);
      v209 = (v208 & 0xFFFFFFFFFFFFFFFCLL);
      if (v208)
      {
        v209 = *v209;
      }

      v207 = sub_19029C8(v209);
      *(a1 + 424) = v207;
    }

    v210 = *(a2 + 424);
    if (!v210)
    {
      v210 = &off_2789660;
    }

    v211 = v210[1];
    if (v211)
    {
      sub_1957EF4((v207 + 8), (v211 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v146 & 0x8000) != 0)
  {
    *(a1 + 44) |= 0x8000u;
    v212 = *(a1 + 432);
    if (!v212)
    {
      v213 = *(a1 + 8);
      v214 = (v213 & 0xFFFFFFFFFFFFFFFCLL);
      if (v213)
      {
        v214 = *v214;
      }

      v212 = sub_1900C8C(v214);
      *(a1 + 432) = v212;
    }

    if (*(a2 + 432))
    {
      v215 = *(a2 + 432);
    }

    else
    {
      v215 = &off_2788858;
    }

    sub_188BF78(v212, v215);
  }

LABEL_444:
  if ((v146 & 0xFF0000) == 0)
  {
    goto LABEL_518;
  }

  if ((v146 & 0x10000) != 0)
  {
    *(a1 + 44) |= 0x10000u;
    v216 = *(a1 + 440);
    if (!v216)
    {
      v217 = *(a1 + 8);
      v218 = (v217 & 0xFFFFFFFFFFFFFFFCLL);
      if (v217)
      {
        v218 = *v218;
      }

      v216 = sub_1900700(v218);
      *(a1 + 440) = v216;
    }

    if (*(a2 + 440))
    {
      v219 = *(a2 + 440);
    }

    else
    {
      v219 = &off_2788648;
    }

    sub_1885C14(v216, v219);
    if ((v146 & 0x20000) == 0)
    {
LABEL_447:
      if ((v146 & 0x40000) == 0)
      {
        goto LABEL_448;
      }

      goto LABEL_467;
    }
  }

  else if ((v146 & 0x20000) == 0)
  {
    goto LABEL_447;
  }

  *(a1 + 44) |= 0x20000u;
  v220 = *(a1 + 448);
  if (!v220)
  {
    v221 = *(a1 + 8);
    v222 = (v221 & 0xFFFFFFFFFFFFFFFCLL);
    if (v221)
    {
      v222 = *v222;
    }

    v220 = sub_1900AE4(v222);
    *(a1 + 448) = v220;
  }

  if (*(a2 + 448))
  {
    v223 = *(a2 + 448);
  }

  else
  {
    v223 = &off_27887A8;
  }

  sub_188A580(v220, v223);
  if ((v146 & 0x40000) == 0)
  {
LABEL_448:
    if ((v146 & 0x80000) == 0)
    {
      goto LABEL_449;
    }

LABEL_475:
    *(a1 + 44) |= 0x80000u;
    v228 = *(a1 + 464);
    if (!v228)
    {
      v229 = *(a1 + 8);
      v230 = (v229 & 0xFFFFFFFFFFFFFFFCLL);
      if (v229)
      {
        v230 = *v230;
      }

      v228 = sub_1901544(v230);
      *(a1 + 464) = v228;
    }

    if (*(a2 + 464))
    {
      v231 = *(a2 + 464);
    }

    else
    {
      v231 = &off_2788C40;
    }

    sub_1895418(v228, v231);
    if ((v146 & 0x100000) == 0)
    {
      goto LABEL_491;
    }

    goto LABEL_483;
  }

LABEL_467:
  *(a1 + 44) |= 0x40000u;
  v224 = *(a1 + 456);
  if (!v224)
  {
    v225 = *(a1 + 8);
    v226 = (v225 & 0xFFFFFFFFFFFFFFFCLL);
    if (v225)
    {
      v226 = *v226;
    }

    v224 = sub_1902AF0(v226);
    *(a1 + 456) = v224;
  }

  if (*(a2 + 456))
  {
    v227 = *(a2 + 456);
  }

  else
  {
    v227 = &off_27896D8;
  }

  sub_1840104(v224, v227);
  if ((v146 & 0x80000) != 0)
  {
    goto LABEL_475;
  }

LABEL_449:
  if ((v146 & 0x100000) != 0)
  {
LABEL_483:
    *(a1 + 44) |= 0x100000u;
    v232 = *(a1 + 472);
    if (!v232)
    {
      v233 = *(a1 + 8);
      v234 = (v233 & 0xFFFFFFFFFFFFFFFCLL);
      if (v233)
      {
        v234 = *v234;
      }

      v232 = sub_1902360(v234);
      *(a1 + 472) = v232;
    }

    v235 = *(a2 + 472);
    if (!v235)
    {
      v235 = &off_27893E8;
    }

    v236 = v235[1];
    if (v236)
    {
      sub_1957EF4((v232 + 8), (v236 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_491:
  if ((v146 & 0x200000) != 0)
  {
    *(a1 + 44) |= 0x200000u;
    v237 = *(a1 + 480);
    if (!v237)
    {
      v238 = *(a1 + 8);
      v239 = (v238 & 0xFFFFFFFFFFFFFFFCLL);
      if (v238)
      {
        v239 = *v239;
      }

      v237 = sub_1905EDC(v239);
      *(a1 + 480) = v237;
    }

    v240 = *(a2 + 480);
    if (!v240)
    {
      v240 = &off_278AA68;
    }

    v241 = v240[1];
    if (v241)
    {
      sub_1957EF4((v237 + 8), (v241 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v146 & 0x400000) != 0)
  {
    *(a1 + 44) |= 0x400000u;
    v242 = *(a1 + 488);
    if (!v242)
    {
      v243 = *(a1 + 8);
      v244 = (v243 & 0xFFFFFFFFFFFFFFFCLL);
      if (v243)
      {
        v244 = *v244;
      }

      v242 = sub_1905FCC(v244);
      *(a1 + 488) = v242;
    }

    if (*(a2 + 488))
    {
      v245 = *(a2 + 488);
    }

    else
    {
      v245 = &off_278AAA0;
    }

    sub_18E9AE0(v242, v245);
  }

  if ((v146 & 0x800000) != 0)
  {
    *(a1 + 44) |= 0x800000u;
    v246 = *(a1 + 496);
    if (!v246)
    {
      v247 = *(a1 + 8);
      v248 = (v247 & 0xFFFFFFFFFFFFFFFCLL);
      if (v247)
      {
        v248 = *v248;
      }

      v246 = sub_1905988(v248);
      *(a1 + 496) = v246;
    }

    if (*(a2 + 496))
    {
      v249 = *(a2 + 496);
    }

    else
    {
      v249 = &off_278A8D0;
    }

    sub_18E5368(v246, v249);
  }

LABEL_518:
  if ((v146 & 0x7000000) != 0)
  {
    if ((v146 & 0x1000000) != 0)
    {
      *(a1 + 44) |= 0x1000000u;
      v250 = *(a1 + 504);
      if (!v250)
      {
        v251 = *(a1 + 8);
        v252 = (v251 & 0xFFFFFFFFFFFFFFFCLL);
        if (v251)
        {
          v252 = *v252;
        }

        v250 = sub_19060A0(v252);
        *(a1 + 504) = v250;
      }

      if (*(a2 + 504))
      {
        v253 = *(a2 + 504);
      }

      else
      {
        v253 = &off_278AB00;
      }

      sub_138F72C(v250, v253);
    }

    if ((v146 & 0x2000000) != 0)
    {
      *(a1 + 44) |= 0x2000000u;
      v254 = *(a1 + 512);
      if (!v254)
      {
        v255 = *(a1 + 8);
        v256 = (v255 & 0xFFFFFFFFFFFFFFFCLL);
        if (v255)
        {
          v256 = *v256;
        }

        v254 = sub_1902558(v256);
        *(a1 + 512) = v254;
      }

      v257 = *(a2 + 512);
      if (!v257)
      {
        v257 = &off_27894B8;
      }

      v258 = v257[1];
      if (v258)
      {
        sub_1957EF4((v254 + 8), (v258 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 0x4000000) != 0)
    {
      *(a1 + 44) |= 0x4000000u;
      v259 = *(a1 + 520);
      if (!v259)
      {
        v260 = *(a1 + 8);
        v261 = (v260 & 0xFFFFFFFFFFFFFFFCLL);
        if (v260)
        {
          v261 = *v261;
        }

        v259 = sub_1902678(v261);
        *(a1 + 520) = v259;
      }

      if (*(a2 + 520))
      {
        v262 = *(a2 + 520);
      }

      else
      {
        v262 = &off_2789518;
      }

      sub_18AC9BC(v259, v262);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v263 = *(a2 + 8);
  if (v263)
  {

    sub_1957EF4((a1 + 8), (v263 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18F9610(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      result = sub_1874FE8(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 2) != 0)
    {
      result = sub_195228C(*(a1 + 64) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_195228C(*(a1 + 80) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20) != 0)
    {
      v4 = *(a1 + 96);
      if (*(v4 + 16))
      {
        result = sub_17F4688(*(v4 + 24));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = *(a1 + 112);
      v6 = *(v5 + 56);
      while (v6 >= 1)
      {
        v7 = v6 - 1;
        v8 = sub_195228C(*(*(v5 + 64) + 8 * v6) + 16);
        v6 = v7;
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x100) != 0)
    {
      v9 = *(a1 + 120);
      if (*(v9 + 16))
      {
        result = sub_16E6614(*(v9 + 48));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }
    }

    if ((v3 & 0x200) != 0)
    {
      result = sub_18C91BC(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x400) != 0)
    {
      v10 = *(a1 + 136);
      v11 = *(v10 + 24);
      while (v11 >= 1)
      {
        v12 = v11 - 1;
        v13 = sub_1395100(*(*(v10 + 32) + 8 * v11));
        result = 0;
        v11 = v12;
        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x800) != 0)
    {
      result = sub_189ED80(*(a1 + 144));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x1000) != 0)
    {
      v14 = *(a1 + 152);
      if ((*(v14 + 16) & 2) != 0)
      {
        result = sub_16E6614(*(v14 + 32));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      v15 = *(a1 + 160);
      v16 = *(v15 + 24);
      while (v16 >= 1)
      {
        v17 = v16 - 1;
        v18 = sub_1395100(*(*(v15 + 32) + 8 * v16));
        result = 0;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          return result;
        }
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x8000) != 0)
    {
      result = sub_18A2184(*(a1 + 176) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20000) != 0)
    {
      result = sub_195228C(*(a1 + 192) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40000) != 0)
    {
      result = sub_195228C(*(a1 + 200) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80000) != 0)
    {
      result = sub_18980EC(*(a1 + 208) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x200000) != 0)
    {
      result = sub_195228C(*(a1 + 224) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x8000000) != 0)
    {
      v26 = *(a1 + 272);
      v27 = *(v26 + 24);
      while (v27 >= 1)
      {
        v28 = v27 - 1;
        v29 = sub_16E6614(*(*(v26 + 32) + 8 * v27));
        result = 0;
        v27 = v28;
        if (!v29)
        {
          return result;
        }
      }
    }

    v19 = *(a1 + 44);
    if (v19)
    {
      v20 = *(a1 + 312);
      if ((*(v20 + 16) & 8) != 0)
      {
        result = sub_16E5370(*(v20 + 48));
        if (!result)
        {
          return result;
        }

        v19 = *(a1 + 44);
      }
    }

    if ((v19 & 4) != 0)
    {
      result = sub_18E2EBC(*(a1 + 328));
      if (!result)
      {
        return result;
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x10) != 0)
    {
      v21 = *(a1 + 344);
      if (*(v21 + 16))
      {
        result = sub_181489C(*(v21 + 24));
        if (!result)
        {
          return result;
        }

        v19 = *(a1 + 44);
      }
    }

    if ((v19 & 0x40) != 0)
    {
      v22 = *(a1 + 360);
      v23 = *(v22 + 24);
      while (v23 >= 1)
      {
        v24 = v23 - 1;
        v25 = sub_18E62E4(*(*(v22 + 32) + 8 * v23));
        result = 0;
        v23 = v24;
        if ((v25 & 1) == 0)
        {
          return result;
        }
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x200) != 0)
    {
      v30 = *(a1 + 384);
      v31 = *(v30 + 32);
      while (v31 >= 1)
      {
        v32 = v31 - 1;
        v33 = sub_1883490(*(*(v30 + 40) + 8 * v31));
        result = 0;
        v31 = v32;
        if ((v33 & 1) == 0)
        {
          return result;
        }
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x400) != 0)
    {
      result = sub_1879268(*(a1 + 392));
      if (!result)
      {
        return result;
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x800) != 0)
    {
      result = sub_18813B4(*(a1 + 400));
      if (!result)
      {
        return result;
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x1000) != 0)
    {
      result = sub_187EA98(*(a1 + 408));
      if (!result)
      {
        return result;
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x8000) != 0)
    {
      v34 = *(a1 + 432);
      v35 = *(v34 + 24);
      while (v35 >= 1)
      {
        v36 = v35 - 1;
        v37 = sub_188B94C(*(*(v34 + 32) + 8 * v35));
        result = 0;
        v35 = v36;
        if ((v37 & 1) == 0)
        {
          return result;
        }
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x10000) != 0)
    {
      v38 = *(a1 + 440);
      v39 = *(v38 + 32);
      while (v39 >= 1)
      {
        v40 = v39 - 1;
        v41 = sub_1885470(*(*(v38 + 40) + 8 * v39));
        result = 0;
        v39 = v40;
        if ((v41 & 1) == 0)
        {
          return result;
        }
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x20000) != 0)
    {
      result = sub_188A728(*(a1 + 448));
      if (!result)
      {
        return result;
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x80000) != 0)
    {
      result = sub_1895528(*(a1 + 464));
      if (!result)
      {
        return result;
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x1000000) != 0)
    {
      result = sub_195228C(*(a1 + 504) + 16);
      if (!result)
      {
        return result;
      }

      v19 = *(a1 + 44);
    }

    if ((v19 & 0x4000000) == 0)
    {
      return 1;
    }

    result = sub_18ACAE4(*(a1 + 520));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_18F9A60(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16EEC04(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_19:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_27:
      v9 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_12;
      }

LABEL_35:
      v11 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v11 + 23) < 0)
      {
        **v11 = 0;
        *(v11 + 8) = 0;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        *v11 = 0;
        *(v11 + 23) = 0;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_46;
      }

LABEL_43:
      v13 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v13 + 23) < 0)
      {
        **v13 = 0;
        *(v13 + 8) = 0;
      }

      else
      {
        *v13 = 0;
        *(v13 + 23) = 0;
      }

      goto LABEL_46;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_31:
    v10 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_39:
    v12 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_43;
  }

LABEL_46:
  if ((v5 & 0x700) == 0)
  {
    goto LABEL_51;
  }

  if ((v5 & 0x100) != 0)
  {
    result = sub_16EE0BC(*(v1 + 112));
    if ((v5 & 0x200) == 0)
    {
LABEL_49:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  result = sub_16F3030(*(v1 + 120));
  if ((v5 & 0x400) != 0)
  {
LABEL_50:
    result = sub_16F2898(*(v1 + 128));
  }

LABEL_51:
  if ((v5 & 0xF800) != 0)
  {
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    *(v1 + 152) = 0;
  }

  if ((v5 & 0x1F0000) != 0)
  {
    *(v1 + 162) = 0;
    *(v1 + 154) = 0;
    *(v1 + 168) = 0;
  }

  v15 = *(v1 + 8);
  v14 = v1 + 8;
  *(v14 + 8) = 0;
  if (v15)
  {

    return sub_1957EA8(v14);
  }

  return result;
}

uint64_t sub_18F9CE4(uint64_t a1)
{
  sub_1951124((a1 + 16));
  sub_12A41D0(a1 + 48);
  v2 = *(a1 + 80);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 88) + 8);
    do
    {
      v4 = *v3++;
      sub_16E48B0(v4);
      --v2;
    }

    while (v2);
    *(a1 + 80) = 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  result = sub_12A41D0(a1 + 128);
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    if ((v6 & 1) == 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_19:
      v8 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v6 & 4) != 0)
        {
          goto LABEL_23;
        }
      }

LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_27:
      v10 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_31;
        }
      }

LABEL_11:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_12;
      }

LABEL_35:
      v12 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v12 + 23) < 0)
      {
        **v12 = 0;
        *(v12 + 8) = 0;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        *v12 = 0;
        *(v12 + 23) = 0;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_13:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }

LABEL_43:
      v14 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v14 + 23) < 0)
      {
        **v14 = 0;
        *(v14 + 8) = 0;
      }

      else
      {
        *v14 = 0;
        *(v14 + 23) = 0;
      }

      goto LABEL_46;
    }

    v7 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v9 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v6 & 8) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_31:
    v11 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_39:
    v13 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_43;
  }

LABEL_46:
  if ((v6 & 0x1F00) == 0)
  {
    goto LABEL_59;
  }

  if ((v6 & 0x100) != 0)
  {
    result = sub_16E4E44(*(a1 + 272));
    if ((v6 & 0x200) == 0)
    {
LABEL_49:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_55;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  result = sub_14C5A04(*(a1 + 280));
  if ((v6 & 0x400) == 0)
  {
LABEL_50:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = sub_16E48B0(*(a1 + 288));
  if ((v6 & 0x800) == 0)
  {
LABEL_51:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = sub_16F44C0(*(a1 + 296));
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_59;
  }

LABEL_57:
  v15 = *(a1 + 304);
  v16 = *(v15 + 8);
  result = v15 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v16)
  {
    result = sub_1957EA8(result);
  }

LABEL_59:
  if ((v6 & 0xE000) != 0)
  {
    *(a1 + 320) = 0;
    *(a1 + 312) = 0;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(a1 + 340) = 0;
    *(a1 + 332) = 0;
    *(a1 + 324) = 0;
  }

  if ((v6 & 0x3000000) != 0)
  {
    *(a1 + 344) = 0;
    *(a1 + 348) = 1;
  }

  v18 = *(a1 + 8);
  v17 = a1 + 8;
  *(v17 + 32) = 0;
  if (v18)
  {

    return sub_1957EA8(v17);
  }

  return result;
}

uint64_t sub_18F9FE0(uint64_t result)
{
  v1 = *(result + 104);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 112) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1814B3C(v4);
      --v1;
    }

    while (v1);
    *(v2 + 104) = 0;
  }

  return result;
}

uint64_t sub_18FA030(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_271B458;
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
  *(a1 + 168) = &qword_278E990;
  *(a1 + 204) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  return a1;
}

void sub_18FA0CC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18FA100(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_271B458;
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
    sub_1201B48(a1 + 48, v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
    sub_1201B48(a1 + 72, v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
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
    sub_1945C2C((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v21 = *(a2 + 128);
  if (v21)
  {
    v22 = *(a2 + 136);
    v23 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1945C2C((a1 + 120), v23, (v22 + 8), v21, **(a1 + 136) - *(a1 + 128));
    v24 = *(a1 + 128) + v21;
    *(a1 + 128) = v24;
    v25 = *(a1 + 136);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v26 = *(a2 + 152);
  if (v26)
  {
    v27 = *(a2 + 160);
    v28 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1945C2C((a1 + 144), v28, (v27 + 8), v26, **(a1 + 160) - *(a1 + 152));
    v29 = *(a1 + 152) + v26;
    *(a1 + 152) = v29;
    v30 = *(a1 + 160);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 8);
  if (v31)
  {
    sub_1957EF4(v4, (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 168) = &qword_278E990;
  v32 = *(a2 + 40);
  if (v32)
  {
    v33 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v33 = *v33;
    }

    sub_194EA1C((a1 + 168), (*(a2 + 168) & 0xFFFFFFFFFFFFFFFELL), v33);
    v32 = *(a2 + 40);
  }

  if ((v32 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 176) = 0;
  if ((v32 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  if ((v32 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 192) = 0;
  if ((v32 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 200) = 0;
  v34 = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v34;
  return a1;
}

void *sub_18FA5D8(void *a1)
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

  sub_18FA698(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1944394(a1 + 18);
  sub_1944394(a1 + 15);
  sub_1944394(a1 + 12);
  sub_1956AFC(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18FA698(uint64_t a1)
{
  v3 = *(a1 + 168);
  result = (a1 + 168);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_278AFA0)
  {
    v4 = *(a1 + 176);
    if (v4)
    {
      sub_1918108(v4);
      operator delete();
    }

    v5 = *(a1 + 184);
    if (v5)
    {
      sub_1919F20(v5);
      operator delete();
    }

    v6 = *(a1 + 192);
    if (v6)
    {
      sub_18EBC70(v6);
      operator delete();
    }

    result = *(a1 + 200);
    if (result)
    {
      sub_16F4BC4();

      operator delete();
    }
  }

  return result;
}

void sub_18FA77C(void *a1)
{
  sub_18FA5D8(a1);

  operator delete();
}

uint64_t sub_18FA7B4(uint64_t a1)
{
  sub_1951124((a1 + 16));
  sub_12A41D0(a1 + 48);
  result = sub_12A41D0(a1 + 72);
  v3 = *(a1 + 104);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 112) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1814B3C(v5);
      --v3;
    }

    while (v3);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 128);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 136) + 8);
    do
    {
      v8 = *v7++;
      result = sub_1814B3C(v8);
      --v6;
    }

    while (v6);
    *(a1 + 128) = 0;
  }

  v9 = *(a1 + 152);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 160) + 8);
    do
    {
      v11 = *v10++;
      result = sub_1814B3C(v11);
      --v9;
    }

    while (v9);
    *(a1 + 152) = 0;
  }

  v12 = *(a1 + 40);
  if ((v12 & 0x1F) == 0)
  {
    goto LABEL_20;
  }

  if (v12)
  {
    v15 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_31:
    result = sub_18F9CE4(*(a1 + 184));
    if ((v12 & 8) == 0)
    {
LABEL_18:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_32;
  }

  if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_30:
  result = sub_18F9A60(*(a1 + 176));
  if ((v12 & 4) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v12 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_32:
  result = sub_18EC4F0(*(a1 + 192));
  if ((v12 & 0x10) != 0)
  {
LABEL_19:
    result = sub_16F4C00(*(a1 + 200));
  }

LABEL_20:
  if ((v12 & 0xE0) != 0)
  {
    *(a1 + 216) = 0;
    *(a1 + 208) = 0;
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

uint64_t sub_18FA92C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v78 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v78, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v78 + 1);
    v8 = **v78;
    if (**v78 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v78, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v78 + 2);
      }
    }

    *v78 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_107;
        }

        *(a1 + 40) |= 2u;
        v11 = *(a1 + 176);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          sub_191BB34(v13);
          v11 = v14;
          *(a1 + 176) = v14;
          v7 = *v78;
        }

        v15 = sub_2201D30(a3, v11, v7);
        goto LABEL_117;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_107;
        }

        *(a1 + 40) |= 4u;
        v53 = *(a1 + 184);
        if (!v53)
        {
          v54 = *(a1 + 8);
          v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
          if (v54)
          {
            v55 = *v55;
          }

          v53 = sub_191BBC4(v55);
          *(a1 + 184) = v53;
          v7 = *v78;
        }

        v15 = sub_2201DC0(a3, v53, v7);
        goto LABEL_117;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_107;
        }

        v34 = (v7 - 1);
        while (1)
        {
          v35 = (v34 + 1);
          *v78 = v34 + 1;
          v36 = *(a1 + 64);
          if (v36 && (v37 = *(a1 + 56), v37 < *v36))
          {
            *(a1 + 56) = v37 + 1;
            v38 = *&v36[2 * v37 + 2];
          }

          else
          {
            v39 = *(a1 + 48);
            if (!v39)
            {
              operator new();
            }

            *v41 = v40;
            v41[1] = sub_195A650;
            *v40 = 0;
            v40[1] = 0;
            v40[2] = 0;
            v38 = sub_19593CC(a1 + 48, v40);
            v35 = *v78;
          }

          v34 = sub_1958890(v38, v35, a3);
          *v78 = v34;
          if (!v34)
          {
            goto LABEL_130;
          }

          if (*a3 <= v34 || *v34 != 26)
          {
            goto LABEL_118;
          }
        }

      case 4u:
        if (v8 != 34)
        {
          goto LABEL_107;
        }

        v42 = (v7 - 1);
        while (1)
        {
          v43 = (v42 + 1);
          *v78 = v42 + 1;
          v44 = *(a1 + 88);
          if (v44 && (v45 = *(a1 + 80), v45 < *v44))
          {
            *(a1 + 80) = v45 + 1;
            v46 = *&v44[2 * v45 + 2];
          }

          else
          {
            v47 = *(a1 + 72);
            if (!v47)
            {
              operator new();
            }

            *v49 = v48;
            v49[1] = sub_195A650;
            *v48 = 0;
            v48[1] = 0;
            v48[2] = 0;
            v46 = sub_19593CC(a1 + 72, v48);
            v43 = *v78;
          }

          v42 = sub_1958890(v46, v43, a3);
          *v78 = v42;
          if (!v42)
          {
            goto LABEL_130;
          }

          if (*a3 <= v42 || *v42 != 34)
          {
            goto LABEL_118;
          }
        }

      case 5u:
        if (v8 != 42)
        {
          goto LABEL_107;
        }

        v19 = (v7 - 1);
        while (1)
        {
          v20 = (v19 + 1);
          *v78 = v19 + 1;
          v21 = *(a1 + 112);
          if (v21 && (v22 = *(a1 + 104), v22 < *v21))
          {
            *(a1 + 104) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            sub_1862B18(*(a1 + 96));
            v23 = sub_19593CC(a1 + 96, v24);
            v20 = *v78;
          }

          v19 = sub_225A210(a3, v23, v20);
          *v78 = v19;
          if (!v19)
          {
            goto LABEL_130;
          }

          if (*a3 <= v19 || *v19 != 42)
          {
            goto LABEL_118;
          }
        }

      case 6u:
        if (v8 != 48)
        {
          goto LABEL_107;
        }

        v5 |= 0x20u;
        v57 = (v7 + 1);
        v56 = *v7;
        if ((v56 & 0x8000000000000000) == 0)
        {
          goto LABEL_85;
        }

        v58 = *v57;
        v56 = (v58 << 7) + v56 - 128;
        if (v58 < 0)
        {
          v76 = sub_19587DC(v7, v56);
          *v78 = v76;
          *(a1 + 208) = v77 != 0;
          if (!v76)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v57 = (v7 + 2);
LABEL_85:
          *v78 = v57;
          *(a1 + 208) = v56 != 0;
        }

        goto LABEL_118;
      case 7u:
        if (v8 != 56)
        {
          goto LABEL_107;
        }

        v60 = (v7 + 1);
        v59 = *v7;
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_90;
        }

        v61 = *v60;
        v59 = (v61 << 7) + v59 - 128;
        if (v61 < 0)
        {
          *v78 = sub_19587DC(v7, v59);
          if (!*v78)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v60 = (v7 + 2);
LABEL_90:
          *v78 = v60;
        }

        if (v59 > 0x40)
        {
          sub_13ED178();
        }

        else
        {
          *(a1 + 40) |= 0x40u;
          *(a1 + 212) = v59;
        }

        goto LABEL_118;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_107;
        }

        *(a1 + 40) |= 8u;
        v50 = *(a1 + 192);
        if (!v50)
        {
          v51 = *(a1 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          v50 = sub_19060FC(v52);
          *(a1 + 192) = v50;
          v7 = *v78;
        }

        v15 = sub_225A2A0(a3, v50, v7);
        goto LABEL_117;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_107;
        }

        *(a1 + 40) |= 1u;
        v68 = *(a1 + 8);
        v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
        if (v68)
        {
          v69 = *v69;
        }

        v70 = sub_194DB04((a1 + 168), v69);
        v15 = sub_1958890(v70, *v78, a3);
        goto LABEL_117;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_107;
        }

        v5 |= 0x80u;
        v31 = (v7 + 1);
        v32 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        v33 = *v31;
        v32 = v32 + (v33 << 7) - 128;
        if (v33 < 0)
        {
          v74 = sub_1958770(v7, v32);
          *v78 = v74;
          *(a1 + 216) = v75;
          if (!v74)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v31 = (v7 + 2);
LABEL_44:
          *v78 = v31;
          *(a1 + 216) = v32;
        }

        goto LABEL_118;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_107;
        }

        v62 = (v7 - 1);
        while (1)
        {
          v63 = (v62 + 1);
          *v78 = v62 + 1;
          v64 = *(a1 + 136);
          if (v64 && (v65 = *(a1 + 128), v65 < *v64))
          {
            *(a1 + 128) = v65 + 1;
            v66 = *&v64[2 * v65 + 2];
          }

          else
          {
            sub_1862B18(*(a1 + 120));
            v66 = sub_19593CC(a1 + 120, v67);
            v63 = *v78;
          }

          v62 = sub_225A210(a3, v66, v63);
          *v78 = v62;
          if (!v62)
          {
            goto LABEL_130;
          }

          if (*a3 <= v62 || *v62 != 90)
          {
            goto LABEL_118;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_107;
        }

        *(a1 + 40) |= 0x10u;
        v16 = *(a1 + 200);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_16F65CC(v18);
          *(a1 + 200) = v16;
          v7 = *v78;
        }

        v15 = sub_220B418(a3, v16, v7);
        goto LABEL_117;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_107;
        }

        v25 = (v7 - 1);
        while (1)
        {
          v26 = (v25 + 1);
          *v78 = v25 + 1;
          v27 = *(a1 + 160);
          if (v27 && (v28 = *(a1 + 152), v28 < *v27))
          {
            *(a1 + 152) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            sub_1862B18(*(a1 + 144));
            v29 = sub_19593CC(a1 + 144, v30);
            v26 = *v78;
          }

          v25 = sub_225A210(a3, v29, v26);
          *v78 = v25;
          if (!v25)
          {
            goto LABEL_130;
          }

          if (*a3 <= v25 || *v25 != 106)
          {
            goto LABEL_118;
          }
        }

      default:
LABEL_107:
        if (v8)
        {
          v71 = (v8 & 7) == 4;
        }

        else
        {
          v71 = 1;
        }

        if (!v71)
        {
          if (v8 - 8000 < 0x198 || v8 - 16000 <= 0x197)
          {
            v15 = sub_19525AC((a1 + 16), v8, v7, &off_278AFA0, (a1 + 8), a3);
          }

          else
          {
            v72 = *(a1 + 8);
            if (v72)
            {
              v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v73 = sub_11F1920((a1 + 8));
              v7 = *v78;
            }

            v15 = sub_1952690(v8, v73, v7, a3);
          }

LABEL_117:
          *v78 = v15;
          if (!v15)
          {
            goto LABEL_130;
          }

LABEL_118:
          if (sub_195ADC0(a3, v78, a3[11].i32[1]))
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
LABEL_130:
          *v78 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v78;
    }
  }
}

char *sub_18FB10C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 176);
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

    v4 = sub_1918B64(v7, v9, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 184);
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

    v4 = sub_191A244(v10, v12, a3);
  }

  v13 = *(a1 + 56);
  if (v13 >= 1)
  {
    v14 = 8;
    do
    {
      v15 = *(*(a1 + 64) + v14);
      v16 = *(v15 + 23);
      if (v16 < 0 && (v16 = v15[1], v16 > 127) || (*a3 - v4 + 14) < v16)
      {
        v4 = sub_1957480(a3, 3, v15, v4);
      }

      else
      {
        *v4 = 26;
        v4[1] = v16;
        if (*(v15 + 23) < 0)
        {
          v15 = *v15;
        }

        v17 = v4 + 2;
        memcpy(v4 + 2, v15, v16);
        v4 = &v17[v16];
      }

      v14 += 8;
      --v13;
    }

    while (v13);
  }

  v18 = *(a1 + 80);
  if (v18 >= 1)
  {
    v19 = 8;
    do
    {
      v20 = *(*(a1 + 88) + v19);
      v21 = *(v20 + 23);
      if (v21 < 0 && (v21 = v20[1], v21 > 127) || (*a3 - v4 + 14) < v21)
      {
        v4 = sub_1957480(a3, 4, v20, v4);
      }

      else
      {
        *v4 = 34;
        v4[1] = v21;
        if (*(v20 + 23) < 0)
        {
          v20 = *v20;
        }

        v22 = v4 + 2;
        memcpy(v4 + 2, v20, v21);
        v4 = &v22[v21];
      }

      v19 += 8;
      --v18;
    }

    while (v18);
  }

  v23 = *(a1 + 104);
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v25 = *(*(a1 + 112) + 8 * i + 8);
      *v4 = 42;
      v26 = *(v25 + 20);
      v4[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, v4 + 1);
      }

      else
      {
        v27 = v4 + 2;
      }

      v4 = sub_1814F68(v25, v27, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v28 = *(a1 + 208);
    *v4 = 48;
    v4[1] = v28;
    v4 += 2;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v30 = *(a1 + 212);
    *v4 = 56;
    v4[1] = v30;
    if (v30 > 0x7F)
    {
      v4[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v4[2] = v30 >> 7;
      v29 = v4 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v32) = v4[2];
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
      v29 = v4 + 2;
    }
  }

  else
  {
    v29 = v4;
  }

  if ((v6 & 8) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_68:
    v29 = sub_128AEEC(a3, 9, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, v29);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (*a3 <= v29)
  {
    v29 = sub_225EB68(a3, v29);
  }

  v35 = *(a1 + 192);
  *v29 = 66;
  v36 = *(v35 + 48);
  v29[1] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, v29 + 1);
  }

  else
  {
    v37 = v29 + 2;
  }

  v29 = sub_18EDFA8(v35, v37, a3);
  if (v6)
  {
    goto LABEL_68;
  }

LABEL_60:
  if ((v6 & 0x80) == 0)
  {
LABEL_61:
    v34 = v29;
    goto LABEL_76;
  }

LABEL_69:
  if (*a3 <= v29)
  {
    v29 = sub_225EB68(a3, v29);
  }

  v38 = *(a1 + 216);
  *v29 = 80;
  v29[1] = v38;
  if (v38 > 0x7F)
  {
    v29[1] = v38 | 0x80;
    v39 = v38 >> 7;
    v29[2] = v38 >> 7;
    v34 = v29 + 3;
    if (v38 >= 0x4000)
    {
      LOBYTE(v29) = v29[2];
      do
      {
        *(v34 - 1) = v29 | 0x80;
        LODWORD(v29) = v39 >> 7;
        *v34++ = v39 >> 7;
        v40 = v39 >> 14;
        v39 >>= 7;
      }

      while (v40);
    }
  }

  else
  {
    v34 = v29 + 2;
  }

LABEL_76:
  v41 = *(a1 + 128);
  if (v41)
  {
    for (j = 0; j != v41; ++j)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v43 = *(*(a1 + 136) + 8 * j + 8);
      *v34 = 90;
      v44 = *(v43 + 20);
      v34[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v34 + 1);
      }

      else
      {
        v45 = v34 + 2;
      }

      v34 = sub_1814F68(v43, v45, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v34)
    {
      v34 = sub_225EB68(a3, v34);
    }

    v46 = *(a1 + 200);
    *v34 = 98;
    v47 = *(v46 + 20);
    v34[1] = v47;
    if (v47 > 0x7F)
    {
      v48 = sub_19575D0(v47, v34 + 1);
    }

    else
    {
      v48 = v34 + 2;
    }

    v34 = sub_16F4F90(v46, v48, a3);
  }

  v49 = *(a1 + 152);
  if (v49)
  {
    for (k = 0; k != v49; ++k)
    {
      if (*a3 <= v34)
      {
        v34 = sub_225EB68(a3, v34);
      }

      v51 = *(*(a1 + 160) + 8 * k + 8);
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

      v34 = sub_1814F68(v51, v53, a3);
    }
  }

  if (*(a1 + 26))
  {
    v34 = sub_1953428(a1 + 16, 1000, 2051, v34, a3);
  }

  v54 = *(a1 + 8);
  if ((v54 & 1) == 0)
  {
    return v34;
  }

  v56 = v54 & 0xFFFFFFFFFFFFFFFCLL;
  v57 = *(v56 + 31);
  if (v57 < 0)
  {
    v58 = *(v56 + 8);
    v57 = *(v56 + 16);
  }

  else
  {
    v58 = (v56 + 8);
  }

  if ((*a3 - v34) >= v57)
  {
    v59 = v57;
    memcpy(v34, v58, v57);
    v34 += v59;
    return v34;
  }

  return sub_1957130(a3, v58, v57, v34);
}

uint64_t sub_18FB7A4(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  if (v3 >= 1)
  {
    v5 = (*(a1 + 64) + 8);
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

  v9 = *(a1 + 80);
  v10 = v4 + v9;
  if (v9 >= 1)
  {
    v11 = (*(a1 + 88) + 8);
    do
    {
      v12 = *v11++;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v10 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      --v9;
    }

    while (v9);
  }

  v15 = *(a1 + 104);
  v16 = v10 + v15;
  v17 = *(a1 + 112);
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
      v21 = sub_18152CC(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 128);
  v23 = v16 + v22;
  v24 = *(a1 + 136);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_18152CC(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 152);
  v30 = v23 + v29;
  v31 = *(a1 + 160);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = sub_18152CC(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 40);
  if (*(a1 + 40))
  {
    if (v36)
    {
      v43 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
      v44 = *(v43 + 23);
      v45 = *(v43 + 8);
      if ((v44 & 0x80u) == 0)
      {
        v45 = v44;
      }

      v30 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v36 & 2) == 0)
      {
LABEL_32:
        if ((v36 & 4) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_49;
      }
    }

    else if ((v36 & 2) == 0)
    {
      goto LABEL_32;
    }

    v46 = sub_191925C(*(a1 + 176));
    v30 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 4) == 0)
    {
LABEL_33:
      if ((v36 & 8) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    }

LABEL_49:
    v47 = sub_191B0B0(*(a1 + 184));
    v30 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 8) == 0)
    {
LABEL_34:
      if ((v36 & 0x10) == 0)
      {
LABEL_36:
        v30 += (v36 >> 4) & 2;
        if ((v36 & 0x40) != 0)
        {
          v38 = *(a1 + 212);
          v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if (v38 >= 0)
          {
            v40 = v39;
          }

          else
          {
            v40 = 11;
          }

          v30 += v40;
        }

        if ((v36 & 0x80) != 0)
        {
          v30 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        goto LABEL_43;
      }

LABEL_35:
      v37 = sub_16F5164(*(a1 + 200));
      v30 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_36;
    }

LABEL_50:
    v48 = sub_18EFA1C(*(a1 + 192));
    v30 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_43:
  v41 = *(a1 + 8);
  if (v41)
  {
    v49 = v41 & 0xFFFFFFFFFFFFFFFCLL;
    v50 = *((v41 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v50 < 0)
    {
      v50 = *(v49 + 16);
    }

    v30 += v50;
  }

  *(a1 + 44) = v30;
  return v30;
}

void sub_18FBB2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48(a1 + 48, v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1201B48(a1 + 72, v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_1945C2C((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
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
    sub_1945C2C((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
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
    sub_1945C2C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 40);
  if (v29)
  {
    if (v29)
    {
      v31 = *(a2 + 168);
      *(a1 + 40) |= 1u;
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_194EA1C((a1 + 168), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
      if ((v29 & 2) == 0)
      {
LABEL_19:
        if ((v29 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_42;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 40) |= 2u;
    v34 = *(a1 + 176);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      sub_191BB34(v36);
      *(a1 + 176) = v34;
    }

    if (*(a2 + 176))
    {
      v37 = *(a2 + 176);
    }

    else
    {
      v37 = &off_278B8D0;
    }

    sub_18FBF24(v34, v37);
    if ((v29 & 4) == 0)
    {
LABEL_20:
      if ((v29 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 40) |= 4u;
    v38 = *(a1 + 184);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_191BBC4(v40);
      *(a1 + 184) = v38;
    }

    if (*(a2 + 184))
    {
      v41 = *(a2 + 184);
    }

    else
    {
      v41 = &off_278B980;
    }

    sub_18FC364(v38, v41);
    if ((v29 & 8) == 0)
    {
LABEL_21:
      if ((v29 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_58;
    }

LABEL_50:
    *(a1 + 40) |= 8u;
    v42 = *(a1 + 192);
    if (!v42)
    {
      v43 = *(a1 + 8);
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
      if (v43)
      {
        v44 = *v44;
      }

      v42 = sub_19060FC(v44);
      *(a1 + 192) = v42;
    }

    if (*(a2 + 192))
    {
      v45 = *(a2 + 192);
    }

    else
    {
      v45 = &off_278AB30;
    }

    sub_18F0790(v42, v45);
    if ((v29 & 0x10) == 0)
    {
LABEL_22:
      if ((v29 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_66;
    }

LABEL_58:
    *(a1 + 40) |= 0x10u;
    v46 = *(a1 + 200);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      v46 = sub_16F65CC(v48);
      *(a1 + 200) = v46;
    }

    if (*(a2 + 200))
    {
      v49 = *(a2 + 200);
    }

    else
    {
      v49 = &off_277EBD8;
    }

    sub_12C3070(v46, v49);
    if ((v29 & 0x20) == 0)
    {
LABEL_23:
      if ((v29 & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_67;
    }

LABEL_66:
    *(a1 + 208) = *(a2 + 208);
    if ((v29 & 0x40) == 0)
    {
LABEL_24:
      if ((v29 & 0x80) == 0)
      {
LABEL_26:
        *(a1 + 40) |= v29;
        goto LABEL_27;
      }

LABEL_25:
      *(a1 + 216) = *(a2 + 216);
      goto LABEL_26;
    }

LABEL_67:
    *(a1 + 212) = *(a2 + 212);
    if ((v29 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_27:
  sub_225EA0C(a1 + 16, a2 + 16);
  v30 = *(a2 + 8);
  if (v30)
  {

    sub_1957EF4((a1 + 8), (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18FBF24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_12E5E34((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    goto LABEL_38;
  }

  if (v9)
  {
    v10 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    if ((v9 & 2) == 0)
    {
LABEL_7:
      if ((v9 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 56);
  *(a1 + 16) |= 2u;
  v14 = *(a1 + 8);
  v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14)
  {
    v15 = *v15;
  }

  sub_194EA1C((a1 + 56), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v9 & 4) == 0)
  {
LABEL_8:
    if ((v9 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_20:
  v16 = *(a2 + 64);
  *(a1 + 16) |= 4u;
  v17 = *(a1 + 8);
  v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v17)
  {
    v18 = *v18;
  }

  sub_194EA1C((a1 + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v9 & 8) == 0)
  {
LABEL_9:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_23:
  v19 = *(a2 + 72);
  *(a1 + 16) |= 8u;
  v20 = *(a1 + 8);
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    v21 = *v21;
  }

  sub_194EA1C((a1 + 72), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v25 = *(a2 + 88);
    *(a1 + 16) |= 0x20u;
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 88), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_26:
  v22 = *(a2 + 80);
  *(a1 + 16) |= 0x10u;
  v23 = *(a1 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v24 = *v24;
  }

  sub_194EA1C((a1 + 80), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_32:
  v28 = *(a2 + 96);
  *(a1 + 16) |= 0x40u;
  v29 = *(a1 + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (v29)
  {
    v30 = *v30;
  }

  sub_194EA1C((a1 + 96), (v28 & 0xFFFFFFFFFFFFFFFELL), v30);
  if ((v9 & 0x80) != 0)
  {
LABEL_35:
    v31 = *(a2 + 104);
    *(a1 + 16) |= 0x80u;
    v32 = *(a1 + 8);
    v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
    if (v32)
    {
      v33 = *v33;
    }

    sub_194EA1C((a1 + 104), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
  }

LABEL_38:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_49;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v35 = *(a1 + 112);
    if (!v35)
    {
      v36 = *(a1 + 8);
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
      if (v36)
      {
        v37 = *v37;
      }

      v35 = sub_16F5F38(v37);
      *(a1 + 112) = v35;
    }

    if (*(a2 + 112))
    {
      v38 = *(a2 + 112);
    }

    else
    {
      v38 = &off_277E980;
    }

    sub_121721C(v35, v38);
    if ((v9 & 0x200) == 0)
    {
LABEL_41:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_77;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_41;
  }

  *(a1 + 16) |= 0x200u;
  v39 = *(a1 + 120);
  if (!v39)
  {
    v40 = *(a1 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    v39 = sub_16F63DC(v41);
    *(a1 + 120) = v39;
  }

  if (*(a2 + 120))
  {
    v42 = *(a2 + 120);
  }

  else
  {
    v42 = &off_277EB40;
  }

  sub_16F34FC(v39, v42);
  if ((v9 & 0x400) == 0)
  {
LABEL_42:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_85;
  }

LABEL_77:
  *(a1 + 16) |= 0x400u;
  v43 = *(a1 + 128);
  if (!v43)
  {
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    v43 = sub_16F6380(v45);
    *(a1 + 128) = v43;
  }

  if (*(a2 + 128))
  {
    v46 = *(a2 + 128);
  }

  else
  {
    v46 = &off_277EB00;
  }

  sub_16F2CF0(v43, v46);
  if ((v9 & 0x800) == 0)
  {
LABEL_43:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(a1 + 136) = *(a2 + 136);
  if ((v9 & 0x1000) == 0)
  {
LABEL_44:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(a1 + 140) = *(a2 + 140);
  if ((v9 & 0x2000) == 0)
  {
LABEL_45:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

LABEL_88:
    *(a1 + 152) = *(a2 + 152);
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_87:
  *(a1 + 144) = *(a2 + 144);
  if ((v9 & 0x4000) != 0)
  {
    goto LABEL_88;
  }

LABEL_46:
  if ((v9 & 0x8000) != 0)
  {
LABEL_47:
    *(a1 + 153) = *(a2 + 153);
  }

LABEL_48:
  *(a1 + 16) |= v9;
LABEL_49:
  if ((v9 & 0x1F0000) == 0)
  {
    goto LABEL_57;
  }

  if ((v9 & 0x10000) != 0)
  {
    *(a1 + 154) = *(a2 + 154);
    if ((v9 & 0x20000) == 0)
    {
LABEL_52:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_92;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_52;
  }

  *(a1 + 155) = *(a2 + 155);
  if ((v9 & 0x40000) == 0)
  {
LABEL_53:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_54;
    }

LABEL_93:
    *(a1 + 160) = *(a2 + 160);
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_92:
  *(a1 + 156) = *(a2 + 156);
  if ((v9 & 0x80000) != 0)
  {
    goto LABEL_93;
  }

LABEL_54:
  if ((v9 & 0x100000) != 0)
  {
LABEL_55:
    *(a1 + 168) = *(a2 + 168);
  }

LABEL_56:
  *(a1 + 16) |= v9;
LABEL_57:
  v34 = *(a2 + 8);
  if (v34)
  {

    sub_1957EF4((a1 + 8), (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18FC364(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1201B48(a1 + 48, v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1409AF8((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a1 + 96);
    sub_1958E5C((a1 + 96), v15 + v14);
    v16 = *(a1 + 104);
    *(a1 + 96) += *(a2 + 96);
    memcpy((v16 + 4 * v15), *(a2 + 104), 4 * *(a2 + 96));
  }

  v17 = *(a2 + 112);
  if (v17)
  {
    v18 = *(a1 + 112);
    sub_1958E5C((a1 + 112), v18 + v17);
    v19 = *(a1 + 120);
    *(a1 + 112) += *(a2 + 112);
    memcpy((v19 + 4 * v18), *(a2 + 120), 4 * *(a2 + 112));
  }

  v20 = *(a2 + 136);
  if (v20)
  {
    v21 = *(a2 + 144);
    v22 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1201B48(a1 + 128, v22, (v21 + 8), v20, **(a1 + 144) - *(a1 + 136));
    v23 = *(a1 + 136) + v20;
    *(a1 + 136) = v23;
    v24 = *(a1 + 144);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 152);
  if (v25)
  {
    v26 = *(a1 + 152);
    sub_1958E5C((a1 + 152), v26 + v25);
    v27 = *(a1 + 160);
    *(a1 + 152) += *(a2 + 152);
    memcpy((v27 + 4 * v26), *(a2 + 160), 4 * *(a2 + 152));
  }

  v28 = *(a2 + 168);
  if (v28)
  {
    v29 = *(a1 + 168);
    sub_1958E5C((a1 + 168), v29 + v28);
    v30 = *(a1 + 176);
    *(a1 + 168) += *(a2 + 168);
    memcpy((v30 + 4 * v29), *(a2 + 176), 4 * *(a2 + 168));
  }

  v31 = *(a2 + 192);
  if (v31)
  {
    v32 = *(a1 + 192);
    sub_1958E5C((a1 + 192), v32 + v31);
    v33 = *(a1 + 200);
    *(a1 + 192) += *(a2 + 192);
    memcpy((v33 + 4 * v32), *(a2 + 200), 4 * *(a2 + 192));
  }

  v34 = *(a2 + 40);
  if (!v34)
  {
    goto LABEL_54;
  }

  if (v34)
  {
    v35 = *(a2 + 208);
    *(a1 + 40) |= 1u;
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    sub_194EA1C((a1 + 208), (v35 & 0xFFFFFFFFFFFFFFFELL), v37);
    if ((v34 & 2) == 0)
    {
LABEL_23:
      if ((v34 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_36;
    }
  }

  else if ((v34 & 2) == 0)
  {
    goto LABEL_23;
  }

  v38 = *(a2 + 216);
  *(a1 + 40) |= 2u;
  v39 = *(a1 + 8);
  v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
  if (v39)
  {
    v40 = *v40;
  }

  sub_194EA1C((a1 + 216), (v38 & 0xFFFFFFFFFFFFFFFELL), v40);
  if ((v34 & 4) == 0)
  {
LABEL_24:
    if ((v34 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

LABEL_36:
  v41 = *(a2 + 224);
  *(a1 + 40) |= 4u;
  v42 = *(a1 + 8);
  v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
  if (v42)
  {
    v43 = *v43;
  }

  sub_194EA1C((a1 + 224), (v41 & 0xFFFFFFFFFFFFFFFELL), v43);
  if ((v34 & 8) == 0)
  {
LABEL_25:
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

LABEL_39:
  v44 = *(a2 + 232);
  *(a1 + 40) |= 8u;
  v45 = *(a1 + 8);
  v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
  if (v45)
  {
    v46 = *v46;
  }

  sub_194EA1C((a1 + 232), (v44 & 0xFFFFFFFFFFFFFFFELL), v46);
  if ((v34 & 0x10) == 0)
  {
LABEL_26:
    if ((v34 & 0x20) == 0)
    {
      goto LABEL_27;
    }

LABEL_45:
    v50 = *(a2 + 248);
    *(a1 + 40) |= 0x20u;
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    sub_194EA1C((a1 + 248), (v50 & 0xFFFFFFFFFFFFFFFELL), v52);
    if ((v34 & 0x40) == 0)
    {
LABEL_28:
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    goto LABEL_48;
  }

LABEL_42:
  v47 = *(a2 + 240);
  *(a1 + 40) |= 0x10u;
  v48 = *(a1 + 8);
  v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
  if (v48)
  {
    v49 = *v49;
  }

  sub_194EA1C((a1 + 240), (v47 & 0xFFFFFFFFFFFFFFFELL), v49);
  if ((v34 & 0x20) != 0)
  {
    goto LABEL_45;
  }

LABEL_27:
  if ((v34 & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_48:
  v53 = *(a2 + 256);
  *(a1 + 40) |= 0x40u;
  v54 = *(a1 + 8);
  v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
  if (v54)
  {
    v55 = *v55;
  }

  sub_194EA1C((a1 + 256), (v53 & 0xFFFFFFFFFFFFFFFELL), v55);
  if ((v34 & 0x80) != 0)
  {
LABEL_51:
    v56 = *(a2 + 264);
    *(a1 + 40) |= 0x80u;
    v57 = *(a1 + 8);
    v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
    if (v57)
    {
      v58 = *v58;
    }

    sub_194EA1C((a1 + 264), (v56 & 0xFFFFFFFFFFFFFFFELL), v58);
  }

LABEL_54:
  if ((v34 & 0xFF00) == 0)
  {
    goto LABEL_65;
  }

  if ((v34 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v60 = *(a1 + 272);
    if (!v60)
    {
      v61 = *(a1 + 8);
      v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
      if (v61)
      {
        v62 = *v62;
      }

      v60 = sub_16F5828(v62);
      *(a1 + 272) = v60;
    }

    if (*(a2 + 272))
    {
      v63 = *(a2 + 272);
    }

    else
    {
      v63 = &off_277E5E8;
    }

    sub_16E527C(v60, v63);
    if ((v34 & 0x200) == 0)
    {
LABEL_57:
      if ((v34 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_102;
    }
  }

  else if ((v34 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  *(a1 + 40) |= 0x200u;
  v64 = *(a1 + 280);
  if (!v64)
  {
    v65 = *(a1 + 8);
    v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
    if (v65)
    {
      v66 = *v66;
    }

    v64 = sub_1552788(v66);
    *(a1 + 280) = v64;
  }

  if (*(a2 + 280))
  {
    v67 = *(a2 + 280);
  }

  else
  {
    v67 = &off_27770C8;
  }

  sub_14C99B8(v64, v67);
  if ((v34 & 0x400) == 0)
  {
LABEL_58:
    if ((v34 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_110;
  }

LABEL_102:
  *(a1 + 40) |= 0x400u;
  v68 = *(a1 + 288);
  if (!v68)
  {
    v69 = *(a1 + 8);
    v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (v69)
    {
      v70 = *v70;
    }

    v68 = sub_16F5BD8(v70);
    *(a1 + 288) = v68;
  }

  if (*(a2 + 288))
  {
    v71 = *(a2 + 288);
  }

  else
  {
    v71 = &off_277E738;
  }

  sub_16E4964(v68, v71);
  if ((v34 & 0x800) == 0)
  {
LABEL_59:
    if ((v34 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_118;
  }

LABEL_110:
  *(a1 + 40) |= 0x800u;
  v72 = *(a1 + 296);
  if (!v72)
  {
    v73 = *(a1 + 8);
    v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
    if (v73)
    {
      v74 = *v74;
    }

    v72 = sub_16F6530(v74);
    *(a1 + 296) = v72;
  }

  if (*(a2 + 296))
  {
    v75 = *(a2 + 296);
  }

  else
  {
    v75 = &off_277EBA8;
  }

  sub_16F49C4(v72, v75);
  if ((v34 & 0x1000) == 0)
  {
LABEL_60:
    if ((v34 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_126;
  }

LABEL_118:
  *(a1 + 40) |= 0x1000u;
  v76 = *(a1 + 304);
  if (!v76)
  {
    v77 = *(a1 + 8);
    v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
    if (v77)
    {
      v78 = *v78;
    }

    v76 = sub_191BABC(v78);
    *(a1 + 304) = v76;
  }

  if (*(a2 + 304))
  {
    v79 = *(a2 + 304);
  }

  else
  {
    v79 = &off_278B8B0;
  }

  sub_1337D0C(v76, v79);
  if ((v34 & 0x2000) == 0)
  {
LABEL_61:
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

LABEL_127:
    *(a1 + 316) = *(a2 + 316);
    if ((v34 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_126:
  *(a1 + 312) = *(a2 + 312);
  if ((v34 & 0x4000) != 0)
  {
    goto LABEL_127;
  }

LABEL_62:
  if ((v34 & 0x8000) != 0)
  {
LABEL_63:
    *(a1 + 320) = *(a2 + 320);
  }

LABEL_64:
  *(a1 + 40) |= v34;
LABEL_65:
  if ((v34 & 0xFF0000) == 0)
  {
    goto LABEL_76;
  }

  if ((v34 & 0x10000) != 0)
  {
    *(a1 + 324) = *(a2 + 324);
    if ((v34 & 0x20000) == 0)
    {
LABEL_68:
      if ((v34 & 0x40000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_131;
    }
  }

  else if ((v34 & 0x20000) == 0)
  {
    goto LABEL_68;
  }

  *(a1 + 328) = *(a2 + 328);
  if ((v34 & 0x40000) == 0)
  {
LABEL_69:
    if ((v34 & 0x80000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(a1 + 332) = *(a2 + 332);
  if ((v34 & 0x80000) == 0)
  {
LABEL_70:
    if ((v34 & 0x100000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_133;
  }

LABEL_132:
  *(a1 + 336) = *(a2 + 336);
  if ((v34 & 0x100000) == 0)
  {
LABEL_71:
    if ((v34 & 0x200000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_134;
  }

LABEL_133:
  *(a1 + 337) = *(a2 + 337);
  if ((v34 & 0x200000) == 0)
  {
LABEL_72:
    if ((v34 & 0x400000) == 0)
    {
      goto LABEL_73;
    }

LABEL_135:
    *(a1 + 339) = *(a2 + 339);
    if ((v34 & 0x800000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_134:
  *(a1 + 338) = *(a2 + 338);
  if ((v34 & 0x400000) != 0)
  {
    goto LABEL_135;
  }

LABEL_73:
  if ((v34 & 0x800000) != 0)
  {
LABEL_74:
    *(a1 + 340) = *(a2 + 340);
  }

LABEL_75:
  *(a1 + 40) |= v34;
LABEL_76:
  if ((v34 & 0x3000000) != 0)
  {
    if ((v34 & 0x1000000) != 0)
    {
      *(a1 + 344) = *(a2 + 344);
    }

    if ((v34 & 0x2000000) != 0)
    {
      *(a1 + 348) = *(a2 + 348);
    }

    *(a1 + 40) |= v34;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v59 = *(a2 + 8);
  if (v59)
  {

    sub_1957EF4((a1 + 8), (v59 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18FCA98(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_18FA7B4(a1);

    sub_18FBB2C(a1, a2);
  }
}

uint64_t sub_18FCAE4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    result = sub_18FCB74(a1 + 96);
    if (result)
    {
      result = sub_18FCB74(a1 + 120);
      if (result)
      {
        result = sub_18FCB74(a1 + 144);
        if (result)
        {
          v3 = *(a1 + 40);
          if ((v3 & 2) != 0)
          {
            result = sub_18FCBD0(*(a1 + 176));
            if (!result)
            {
              return result;
            }

            v3 = *(a1 + 40);
          }

          if ((v3 & 4) != 0)
          {
            result = sub_18FCC5C(*(a1 + 184));
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

          result = sub_18F1BF4(*(a1 + 192));
          if (result)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_18FCB74(uint64_t a1)
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
      result = sub_1812498(*(v3 + 24));
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

uint64_t sub_18FCBD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_16EF064(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if ((v6 & 0x100) != 0)
  {
    result = sub_16EE510(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x200) != 0)
  {
    result = sub_16F35C0(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x400) == 0)
  {
    return 1;
  }

  result = sub_16F2D80(*(a1 + 128));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18FCC5C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 80);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_16E4B4C(*(*(a1 + 88) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 40);
    if ((v6 & 0x100) != 0)
    {
      result = sub_16E5370(*(a1 + 272));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 40);
    }

    if ((v6 & 0x400) == 0)
    {
      return 1;
    }

    result = sub_16E4B4C(*(a1 + 288));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 sub_18FCCE0(uint64_t a1, uint64_t a2)
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
  v14 = *(a1 + 120);
  v15 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v14;
  *(a2 + 128) = v15;
  v16 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v16;
  v17 = *(a1 + 144);
  v18 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v17;
  *(a2 + 152) = v18;
  v19 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v19;
  v20 = *(a2 + 168);
  *(a2 + 168) = *(a1 + 168);
  *(a1 + 168) = v20;
  v21 = *(a1 + 176);
  v22 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v21;
  *(a2 + 184) = v22;
  v23 = *(a1 + 192);
  v24 = *(a1 + 200);
  result = *(a2 + 192);
  *(a1 + 192) = result;
  *(a2 + 192) = v23;
  *(a2 + 200) = v24;
  v26 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = v26;
  LODWORD(v26) = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v26;
  return result;
}

uint64_t sub_18FCE30(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 | 2;
  if (!a3)
  {
    v4 = a2;
  }

  *(a1 + 8) = v4;
  *a1 = off_271B4D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  return a1;
}

void sub_18FCE94(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18FCEC4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *a1 = off_271B4D8;
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

void sub_18FCF58(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18FCF94(void *a1)
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

void sub_18FD010(void *a1)
{
  sub_18FCF94(a1);

  operator delete();
}

unsigned __int8 *sub_18FD048(uint64_t a1)
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

char *sub_18FD098(uint64_t a1, char *a2, int32x2_t *a3)
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

      if (v6 - 4008 > 0x317)
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
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_278B080, (a1 + 8), a3);
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

char *sub_18FD1D0(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 501, 600, a2, a3);
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

uint64_t sub_18FD298(uint64_t a1)
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

uint64_t sub_18FD300(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_271B558;
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
  *(a1 + 168) = &qword_278E990;
  *(a1 + 176) = &qword_278E990;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  return a1;
}

void sub_18FD3A0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18FD3D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_271B558;
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
    sub_13B315C((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
    sub_1201B48(a1 + 72, v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
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
    sub_1201B48(a1 + 96, v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v21 = *(a2 + 128);
  if (v21)
  {
    v22 = *(a2 + 136);
    v23 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1945CB8((a1 + 120), v23, (v22 + 8), v21, **(a1 + 136) - *(a1 + 128));
    v24 = *(a1 + 128) + v21;
    *(a1 + 128) = v24;
    v25 = *(a1 + 136);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v26 = *(a2 + 152);
  if (v26)
  {
    v27 = *(a2 + 160);
    v28 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_166F790((a1 + 144), v28, (v27 + 8), v26, **(a1 + 160) - *(a1 + 152));
    v29 = *(a1 + 152) + v26;
    *(a1 + 152) = v29;
    v30 = *(a1 + 160);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 8);
  if (v31)
  {
    sub_1957EF4(v4, (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  *(a1 + 168) = &qword_278E990;
  v32 = *(a2 + 40);
  if (v32)
  {
    v33 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v33 = *v33;
    }

    sub_194EA1C((a1 + 168), (*(a2 + 168) & 0xFFFFFFFFFFFFFFFELL), v33);
    v32 = *(a2 + 40);
  }

  *(a1 + 176) = &qword_278E990;
  if ((v32 & 2) != 0)
  {
    v34 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v34 = *v34;
    }

    sub_194EA1C((a1 + 176), (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v34);
    v32 = *(a2 + 40);
  }

  if ((v32 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  if ((v32 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 192) = 0;
  if ((v32 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void *sub_18FD884(void *a1)
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

  sub_18FD944(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_166F258(a1 + 18);
  sub_1944418(a1 + 15);
  sub_1956AFC(a1 + 12);
  sub_1956AFC(a1 + 9);
  sub_13B30D8(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18FD944(uint64_t a1)
{
  v3 = *(a1 + 168);
  v2 = (a1 + 168);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 176);
  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_278B0B0)
  {
    v5 = *(a1 + 184);
    if (v5)
    {
      sub_18F3938(v5);
      operator delete();
    }

    v6 = *(a1 + 192);
    if (v6)
    {
      sub_13F0C4C(v6);
      operator delete();
    }

    result = *(a1 + 200);
    if (result)
    {
      sub_18FCF94(result);

      operator delete();
    }
  }

  return result;
}

void sub_18FDA1C(void *a1)
{
  sub_18FD884(a1);

  operator delete();
}

uint64_t sub_18FDA54(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_1835AE0(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  sub_12A41D0(a1 + 72);
  result = sub_12A41D0(a1 + 96);
  v6 = *(a1 + 128);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 136) + 8);
    do
    {
      v8 = *v7++;
      result = sub_1835A34(v8);
      --v6;
    }

    while (v6);
    *(a1 + 128) = 0;
  }

  v9 = *(a1 + 152);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 160) + 8);
    do
    {
      v11 = *v10++;
      result = sub_1830694(v11);
      --v9;
    }

    while (v9);
    *(a1 + 152) = 0;
  }

  v12 = *(a1 + 40);
  if ((v12 & 0x1F) == 0)
  {
    goto LABEL_20;
  }

  if (v12)
  {
    v15 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
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
    result = sub_18F403C(*(a1 + 184));
    if ((v12 & 8) == 0)
    {
LABEL_18:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_35;
  }

  if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_30:
  v16 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_35:
  result = sub_13F0C88(*(a1 + 192));
  if ((v12 & 0x10) != 0)
  {
LABEL_19:
    result = sub_18FD048(*(a1 + 200));
  }

LABEL_20:
  if ((v12 & 0x60) != 0)
  {
    *(a1 + 208) = 0;
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

uint64_t sub_18FDBEC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v72 = a2;
  if (sub_195ADC0(a3, v72, a3[11].i32[1]))
  {
    return *v72;
  }

  while (1)
  {
    v6 = (*v72 + 1);
    v7 = **v72;
    if (**v72 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v72, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v72 + 2);
      }
    }

    *v72 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 6)
    {
      if (v7 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v7 == 34)
          {
            v37 = v6 - 1;
            while (1)
            {
              v38 = v37 + 1;
              *v72 = v37 + 1;
              v39 = *(a1 + 64);
              if (v39 && (v40 = *(a1 + 56), v40 < *v39))
              {
                *(a1 + 56) = v40 + 1;
                v41 = *&v39[2 * v40 + 2];
              }

              else
              {
                v42 = sub_18648BC(*(a1 + 48));
                v41 = sub_19593CC(a1 + 48, v42);
                v38 = *v72;
              }

              v37 = sub_2200230(a3, v41, v38);
              *v72 = v37;
              if (!v37)
              {
                goto LABEL_142;
              }

              if (*a3 <= v37 || *v37 != 34)
              {
                goto LABEL_99;
              }
            }
          }

          goto LABEL_123;
        }

        if (v10 == 5)
        {
          if (v7 == 42)
          {
            v54 = (v6 - 1);
            while (1)
            {
              v55 = (v54 + 1);
              *v72 = v54 + 1;
              v56 = *(a1 + 88);
              if (v56 && (v57 = *(a1 + 80), v57 < *v56))
              {
                *(a1 + 80) = v57 + 1;
                v58 = *&v56[2 * v57 + 2];
              }

              else
              {
                v59 = *(a1 + 72);
                if (!v59)
                {
                  operator new();
                }

                *v61 = v60;
                v61[1] = sub_195A650;
                *v60 = 0;
                v60[1] = 0;
                v60[2] = 0;
                v58 = sub_19593CC(a1 + 72, v60);
                v55 = *v72;
              }

              v54 = sub_1958890(v58, v55, a3);
              *v72 = v54;
              if (!v54)
              {
                goto LABEL_142;
              }

              if (*a3 <= v54 || *v54 != 42)
              {
                goto LABEL_99;
              }
            }
          }

          goto LABEL_123;
        }

        if (v10 != 6 || v7 != 50)
        {
          goto LABEL_123;
        }

        *(a1 + 40) |= 1u;
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v21 = (a1 + 168);
LABEL_97:
        v53 = sub_194DB04(v21, v20);
        v15 = sub_1958890(v53, *v72, a3);
        goto LABEL_98;
      }

      if (v10 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_123;
        }

        v25 = (v6 + 1);
        v26 = *v6;
        if (v26 < 0)
        {
          v27 = *v25;
          v28 = (v27 << 7) + v26;
          LODWORD(v26) = v28 - 128;
          if ((v27 & 0x80000000) == 0)
          {
            v25 = (v6 + 2);
            goto LABEL_51;
          }

          *v72 = sub_19587DC(v6, (v28 - 128));
          if (!*v72)
          {
            goto LABEL_142;
          }

          LODWORD(v26) = v71;
        }

        else
        {
LABEL_51:
          *v72 = v25;
        }

        if (sub_14CB318(v26))
        {
          *(a1 + 40) |= 0x20u;
          *(a1 + 208) = v26;
        }

        else
        {
          sub_12E8450();
        }

        goto LABEL_99;
      }

      if (v10 == 2)
      {
        if (v7 != 16)
        {
          goto LABEL_123;
        }

        v50 = (v6 + 1);
        v49 = *v6;
        if (v49 < 0)
        {
          v51 = *v50;
          v49 = (v51 << 7) + v49 - 128;
          if ((v51 & 0x80000000) == 0)
          {
            v50 = (v6 + 2);
            goto LABEL_90;
          }

          *v72 = sub_19587DC(v6, v49);
          if (!*v72)
          {
            goto LABEL_142;
          }
        }

        else
        {
LABEL_90:
          *v72 = v50;
        }

        if (v49 > 0x40)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 40) |= 0x40u;
          *(a1 + 212) = v49;
        }

        goto LABEL_99;
      }

      if (v10 != 3 || v7 != 26)
      {
        goto LABEL_123;
      }

      *(a1 + 40) |= 4u;
      v12 = *(a1 + 184);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_19061F8(v14);
        *(a1 + 184) = v12;
        v6 = *v72;
      }

      v15 = sub_225A330(a3, v12, v6);
      goto LABEL_98;
    }

    if (v7 >> 3 <= 9)
    {
      if (v10 == 7)
      {
        if (v7 == 58)
        {
          v29 = (v6 - 1);
          while (1)
          {
            v30 = (v29 + 1);
            *v72 = v29 + 1;
            v31 = *(a1 + 112);
            if (v31 && (v32 = *(a1 + 104), v32 < *v31))
            {
              *(a1 + 104) = v32 + 1;
              v33 = *&v31[2 * v32 + 2];
            }

            else
            {
              v34 = *(a1 + 96);
              if (!v34)
              {
                operator new();
              }

              *v36 = v35;
              v36[1] = sub_195A650;
              *v35 = 0;
              v35[1] = 0;
              v35[2] = 0;
              v33 = sub_19593CC(a1 + 96, v35);
              v30 = *v72;
            }

            v29 = sub_1958890(v33, v30, a3);
            *v72 = v29;
            if (!v29)
            {
              goto LABEL_142;
            }

            if (*a3 <= v29 || *v29 != 58)
            {
              goto LABEL_99;
            }
          }
        }

        goto LABEL_123;
      }

      if (v10 == 8)
      {
        if (v7 != 66)
        {
          goto LABEL_123;
        }

        *(a1 + 40) |= 2u;
        v52 = *(a1 + 8);
        v20 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
        if (v52)
        {
          v20 = *v20;
        }

        v21 = (a1 + 176);
        goto LABEL_97;
      }

      if (v10 != 9 || v7 != 74)
      {
        goto LABEL_123;
      }

      *(a1 + 40) |= 8u;
      v16 = *(a1 + 192);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_13F1010(v18);
        *(a1 + 192) = v16;
        v6 = *v72;
      }

      v15 = sub_220B538(a3, v16, v6);
      goto LABEL_98;
    }

    if (v10 == 10)
    {
      break;
    }

    if (v10 == 11)
    {
      if (v7 == 90)
      {
        v62 = v6 - 1;
        while (1)
        {
          v63 = v62 + 1;
          *v72 = v62 + 1;
          v64 = *(a1 + 160);
          if (v64 && (v65 = *(a1 + 152), v65 < *v64))
          {
            *(a1 + 152) = v65 + 1;
            v66 = *&v64[2 * v65 + 2];
          }

          else
          {
            v67 = sub_186421C(*(a1 + 144));
            v66 = sub_19593CC(a1 + 144, v67);
            v63 = *v72;
          }

          v62 = sub_222F180(a3, v66, v63);
          *v72 = v62;
          if (!v62)
          {
            goto LABEL_142;
          }

          if (*a3 <= v62 || *v62 != 90)
          {
            goto LABEL_99;
          }
        }
      }

      goto LABEL_123;
    }

    if (v10 != 12 || v7 != 98)
    {
      goto LABEL_123;
    }

    *(a1 + 40) |= 0x10u;
    v22 = *(a1 + 200);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_19062B0(v24);
      *(a1 + 200) = v22;
      v6 = *v72;
    }

    v15 = sub_223E9F8(a3, v22, v6);
LABEL_98:
    *v72 = v15;
    if (!v15)
    {
      goto LABEL_142;
    }

LABEL_99:
    if (sub_195ADC0(a3, v72, a3[11].i32[1]))
    {
      return *v72;
    }
  }

  if (v7 == 82)
  {
    v43 = (v6 - 1);
    while (1)
    {
      v44 = (v43 + 1);
      *v72 = v43 + 1;
      v45 = *(a1 + 136);
      if (v45 && (v46 = *(a1 + 128), v46 < *v45))
      {
        *(a1 + 128) = v46 + 1;
        v47 = *&v45[2 * v46 + 2];
      }

      else
      {
        sub_1864654(*(a1 + 120));
        v47 = sub_19593CC(a1 + 120, v48);
        v44 = *v72;
      }

      v43 = sub_225A3C0(a3, v47, v44);
      *v72 = v43;
      if (!v43)
      {
        goto LABEL_142;
      }

      if (*a3 <= v43 || *v43 != 82)
      {
        goto LABEL_99;
      }
    }
  }

LABEL_123:
  if (v7)
  {
    v68 = (v7 & 7) == 4;
  }

  else
  {
    v68 = 1;
  }

  if (!v68)
  {
    if (v7 - 8000 < 0x328 || v7 - 16000 <= 0x197)
    {
      v15 = sub_19525AC((a1 + 16), v7, v6, &off_278B0B0, (a1 + 8), a3);
    }

    else
    {
      v69 = *(a1 + 8);
      if (v69)
      {
        v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v70 = sub_11F1920((a1 + 8));
        v6 = *v72;
      }

      v15 = sub_1952690(v7, v70, v6, a3);
    }

    goto LABEL_98;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v72;
  }

LABEL_142:
  *v72 = 0;
  return *v72;
}

char *sub_18FE368(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 208);
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

    v12 = *(a1 + 212);
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

    v15 = *(a1 + 184);
    *v11 = 26;
    v16 = *(v15 + 48);
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v17 = sub_19575D0(v16, v11 + 1);
    }

    else
    {
      v17 = v11 + 2;
    }

    v11 = sub_18F59A0(v15, v17, a3);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v20 = *(*(a1 + 64) + 8 * i + 8);
      *v11 = 34;
      v21 = *(v20 + 44);
      v11[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v11 + 1);
      }

      else
      {
        v22 = v11 + 2;
      }

      v11 = sub_1838E28(v20, v22, a3);
    }
  }

  v23 = *(a1 + 80);
  if (v23 >= 1)
  {
    v24 = 8;
    do
    {
      v25 = *(*(a1 + 88) + v24);
      v26 = *(v25 + 23);
      if (v26 < 0 && (v26 = v25[1], v26 > 127) || (*a3 - v11 + 14) < v26)
      {
        v11 = sub_1957480(a3, 5, v25, v11);
      }

      else
      {
        *v11 = 42;
        v11[1] = v26;
        if (*(v25 + 23) < 0)
        {
          v25 = *v25;
        }

        v27 = v11 + 2;
        memcpy(v27, v25, v26);
        v11 = &v27[v26];
      }

      v24 += 8;
      --v23;
    }

    while (v23);
  }

  if (v5)
  {
    v11 = sub_128AEEC(a3, 6, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  v28 = *(a1 + 104);
  if (v28 >= 1)
  {
    v29 = 8;
    do
    {
      v30 = *(*(a1 + 112) + v29);
      v31 = *(v30 + 23);
      if (v31 < 0 && (v31 = v30[1], v31 > 127) || (*a3 - v11 + 14) < v31)
      {
        v11 = sub_1957480(a3, 7, v30, v11);
      }

      else
      {
        *v11 = 58;
        v11[1] = v31;
        if (*(v30 + 23) < 0)
        {
          v30 = *v30;
        }

        v32 = v11 + 2;
        memcpy(v32, v30, v31);
        v11 = &v32[v31];
      }

      v29 += 8;
      --v28;
    }

    while (v28);
  }

  if ((v5 & 2) != 0)
  {
    v11 = sub_128AEEC(a3, 8, *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v33 = *(a1 + 192);
    *v11 = 74;
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

    v11 = sub_13F0E14(v33, v35, a3);
  }

  v36 = *(a1 + 128);
  if (v36)
  {
    for (j = 0; j != v36; ++j)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v38 = *(*(a1 + 136) + 8 * j + 8);
      *v11 = 82;
      v39 = *(v38 + 20);
      v11[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v11 + 1);
      }

      else
      {
        v40 = v11 + 2;
      }

      v11 = sub_18360B4(v38, v40, a3);
    }
  }

  v41 = *(a1 + 152);
  if (v41)
  {
    for (k = 0; k != v41; ++k)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v43 = *(*(a1 + 160) + 8 * k + 8);
      *v11 = 90;
      v44 = *(v43 + 20);
      v11[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v11 + 1);
      }

      else
      {
        v45 = v11 + 2;
      }

      v11 = sub_18309A4(v43, v45, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v46 = *(a1 + 200);
    *v11 = 98;
    v47 = *(v46 + 40);
    v11[1] = v47;
    if (v47 > 0x7F)
    {
      v48 = sub_19575D0(v47, v11 + 1);
    }

    else
    {
      v48 = v11 + 2;
    }

    v11 = sub_18FD1D0(v46, v48, a3);
  }

  if (*(a1 + 26))
  {
    v11 = sub_1953428(a1 + 16, 1000, 2051, v11, a3);
  }

  v49 = *(a1 + 8);
  if ((v49 & 1) == 0)
  {
    return v11;
  }

  v51 = v49 & 0xFFFFFFFFFFFFFFFCLL;
  v52 = *(v51 + 31);
  if (v52 < 0)
  {
    v53 = *(v51 + 8);
    v52 = *(v51 + 16);
  }

  else
  {
    v53 = (v51 + 8);
  }

  if ((*a3 - v11) >= v52)
  {
    v54 = v52;
    memcpy(v11, v53, v52);
    v11 += v54;
    return v11;
  }

  return sub_1957130(a3, v53, v52, v11);
}

uint64_t sub_18FE97C(uint64_t a1)
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
      v9 = sub_1839564(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 80);
  v11 = v4 + v10;
  if (v10 >= 1)
  {
    v12 = (*(a1 + 88) + 8);
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v11 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      --v10;
    }

    while (v10);
  }

  v16 = *(a1 + 104);
  v17 = v11 + v16;
  if (v16 >= 1)
  {
    v18 = (*(a1 + 112) + 8);
    do
    {
      v19 = *v18++;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v17 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      --v16;
    }

    while (v16);
  }

  v22 = *(a1 + 128);
  v23 = v17 + v22;
  v24 = *(a1 + 136);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_18363F0(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 152);
  v30 = v23 + v29;
  v31 = *(a1 + 160);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = sub_1830BB4(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 40);
  if ((v36 & 0x7F) == 0)
  {
    goto LABEL_41;
  }

  if (v36)
  {
    v42 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    v43 = *(v42 + 23);
    v44 = *(v42 + 8);
    if ((v43 & 0x80u) == 0)
    {
      v44 = v43;
    }

    v30 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 2) == 0)
    {
LABEL_32:
      if ((v36 & 4) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_49;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_32;
  }

  v45 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v46 = *(v45 + 23);
  v47 = *(v45 + 8);
  if ((v46 & 0x80u) == 0)
  {
    v47 = v46;
  }

  v30 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v36 & 4) == 0)
  {
LABEL_33:
    if ((v36 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_50;
  }

LABEL_49:
  v48 = sub_18F7274(*(a1 + 184));
  v30 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v36 & 8) == 0)
  {
LABEL_34:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_35;
    }

LABEL_51:
    v50 = sub_18FD298(*(a1 + 200));
    v30 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 0x20) == 0)
    {
LABEL_36:
      if ((v36 & 0x40) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    goto LABEL_52;
  }

LABEL_50:
  v49 = sub_13F0F3C(*(a1 + 192));
  v30 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v36 & 0x10) != 0)
  {
    goto LABEL_51;
  }

LABEL_35:
  if ((v36 & 0x20) == 0)
  {
    goto LABEL_36;
  }

LABEL_52:
  v51 = *(a1 + 208);
  v52 = ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v51 >= 0)
  {
    v53 = v52;
  }

  else
  {
    v53 = 11;
  }

  v30 += v53;
  if ((v36 & 0x40) != 0)
  {
LABEL_37:
    v37 = *(a1 + 212);
    v38 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v37 >= 0)
    {
      v39 = v38;
    }

    else
    {
      v39 = 11;
    }

    v30 += v39;
  }

LABEL_41:
  v40 = *(a1 + 8);
  if (v40)
  {
    v54 = v40 & 0xFFFFFFFFFFFFFFFCLL;
    v55 = *((v40 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v55 < 0)
    {
      v55 = *(v54 + 16);
    }

    v30 += v55;
  }

  *(a1 + 44) = v30;
  return v30;
}

void sub_18FED20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B315C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1201B48(a1 + 72, v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_1201B48(a1 + 96, v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
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
    sub_1945CB8((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
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
    sub_166F790((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 40);
  if ((v29 & 0x7F) != 0)
  {
    if (v29)
    {
      v31 = *(a2 + 168);
      *(a1 + 40) |= 1u;
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_194EA1C((a1 + 168), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
      if ((v29 & 2) == 0)
      {
LABEL_19:
        if ((v29 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_36;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_19;
    }

    v34 = *(a2 + 176);
    *(a1 + 40) |= 2u;
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    sub_194EA1C((a1 + 176), (v34 & 0xFFFFFFFFFFFFFFFELL), v36);
    if ((v29 & 4) == 0)
    {
LABEL_20:
      if ((v29 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_44;
    }

LABEL_36:
    *(a1 + 40) |= 4u;
    v37 = *(a1 + 184);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      v37 = sub_19061F8(v39);
      *(a1 + 184) = v37;
    }

    if (*(a2 + 184))
    {
      v40 = *(a2 + 184);
    }

    else
    {
      v40 = &off_278AD90;
    }

    sub_18F81B8(v37, v40);
    if ((v29 & 8) == 0)
    {
LABEL_21:
      if ((v29 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_52;
    }

LABEL_44:
    *(a1 + 40) |= 8u;
    v41 = *(a1 + 192);
    if (!v41)
    {
      v42 = *(a1 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      v41 = sub_13F1010(v43);
      *(a1 + 192) = v41;
    }

    if (*(a2 + 192))
    {
      v44 = *(a2 + 192);
    }

    else
    {
      v44 = &off_276F3A8;
    }

    sub_12B9D50(v41, v44);
    if ((v29 & 0x10) == 0)
    {
LABEL_22:
      if ((v29 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_60;
    }

LABEL_52:
    *(a1 + 40) |= 0x10u;
    v45 = *(a1 + 200);
    if (!v45)
    {
      v46 = *(a1 + 8);
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      if (v46)
      {
        v47 = *v47;
      }

      v45 = sub_19062B0(v47);
      *(a1 + 200) = v45;
    }

    if (*(a2 + 200))
    {
      v48 = *(a2 + 200);
    }

    else
    {
      v48 = &off_278B080;
    }

    sub_138F72C(v45, v48);
    if ((v29 & 0x20) == 0)
    {
LABEL_23:
      if ((v29 & 0x40) == 0)
      {
LABEL_25:
        *(a1 + 40) |= v29;
        goto LABEL_26;
      }

LABEL_24:
      *(a1 + 212) = *(a2 + 212);
      goto LABEL_25;
    }

LABEL_60:
    *(a1 + 208) = *(a2 + 208);
    if ((v29 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_26:
  sub_225EA0C(a1 + 16, a2 + 16);
  v30 = *(a2 + 8);
  if (v30)
  {

    sub_1957EF4((a1 + 8), (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18FF0F0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_18FDA54(a1);

    sub_18FED20(a1, a2);
  }
}

uint64_t sub_18FF13C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1836CF0(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 128);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_1836C68(*(*(a1 + 136) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 152);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_1830E94(*(*(a1 + 160) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 40);
    if ((v12 & 4) != 0)
    {
      result = sub_18F9610(*(a1 + 184));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x10) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 200) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 sub_18FF214(uint64_t a1, uint64_t a2)
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
  v14 = *(a1 + 120);
  v15 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v14;
  *(a2 + 128) = v15;
  v16 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v16;
  v17 = *(a1 + 144);
  v18 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v17;
  *(a2 + 152) = v18;
  v19 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v19;
  v20 = *(a2 + 168);
  *(a2 + 168) = *(a1 + 168);
  *(a1 + 168) = v20;
  v21 = *(a2 + 176);
  *(a2 + 176) = *(a1 + 176);
  *(a1 + 176) = v21;
  v22 = *(a1 + 184);
  v23 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v22;
  *(a2 + 192) = v23;
  v24 = *(a1 + 200);
  v25 = *(a1 + 208);
  result = *(a2 + 200);
  *(a1 + 200) = result;
  *(a2 + 200) = v24;
  *(a2 + 208) = v25;
  return result;
}

void *sub_18FF354(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_2714E58;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_18FF3D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2714ED8;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_18FF470(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_2714F58;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = &qword_278E990;
  *(result + 96) = 0;
  return result;
}

void *sub_18FF520(uint64_t a1)
{
  if (!a1)
  {

    sub_1945D44();
  }

  return sub_186B938(v3, a1, 0);
}

uint64_t sub_18FF57C(uint64_t a1)
{
  if (!a1)
  {

    sub_1945DB0();
  }

  return sub_186C2B0(v3, a1, 0);
}