uint64_t sub_1541FC0(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 32));
  v3 = *(a1 + 32);
  v4 = sub_1959F14((a1 + 48));
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 72) + 4 * v7);
      if (v8 < 0)
      {
        v9 = 10;
      }

      else
      {
        v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
      }

      v6 += v9;
      ++v7;
    }

    while (v5 != v7);
  }

  else
  {
    v6 = 0;
  }

  v10 = *(a1 + 88);
  v11 = v2 + v3 + v4 + *(a1 + 48) + v5 + v6 + 2 * v10;
  if (v10 >= 1)
  {
    v12 = (*(a1 + 96) + 8);
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

  v16 = *(a1 + 112);
  v17 = v11 + 2 * v16;
  if (v16 >= 1)
  {
    v18 = (*(a1 + 120) + 8);
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

  v22 = *(a1 + 136);
  v23 = v17 + 2 * v22;
  if (v22 >= 1)
  {
    v24 = (*(a1 + 144) + 8);
    do
    {
      v25 = *v24++;
      v26 = *(v25 + 23);
      v27 = *(v25 + 8);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v26;
      }

      v23 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      --v22;
    }

    while (v22);
  }

  v28 = *(a1 + 160);
  v29 = v23 + 2 * v28;
  v30 = *(a1 + 168);
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
      v34 = sub_153E1F4(v33);
      v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      v32 -= 8;
    }

    while (v32);
  }

  v35 = *(a1 + 184);
  v36 = v29 + 2 * v35;
  v37 = *(a1 + 192);
  if (v37)
  {
    v38 = (v37 + 8);
  }

  else
  {
    v38 = 0;
  }

  if (v35)
  {
    v39 = 8 * v35;
    do
    {
      v40 = *v38++;
      v41 = sub_16EEF64(v40);
      v36 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      v39 -= 8;
    }

    while (v39);
  }

  v42 = *(a1 + 200);
  if (v42)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = *(*(a1 + 208) + 4 * v43);
      if (v45 < 0)
      {
        v46 = 10;
      }

      else
      {
        v46 = (9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6;
      }

      v44 += v46;
      ++v43;
    }

    while (v42 != v43);
  }

  else
  {
    v44 = 0;
  }

  v47 = v36 + 2 * v42 + v44;
  v48 = *(a1 + 16);
  if (!v48)
  {
    goto LABEL_56;
  }

  if (v48)
  {
    v61 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    v62 = *(v61 + 23);
    v63 = *(v61 + 8);
    if ((v62 & 0x80u) == 0)
    {
      v63 = v62;
    }

    v47 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v48 & 2) == 0)
    {
LABEL_47:
      if ((v48 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_99;
    }
  }

  else if ((v48 & 2) == 0)
  {
    goto LABEL_47;
  }

  v64 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v47 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 4) == 0)
  {
LABEL_48:
    if ((v48 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_102;
  }

LABEL_99:
  v67 = *(a1 + 232) & 0xFFFFFFFFFFFFFFFELL;
  v68 = *(v67 + 23);
  v69 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v69 = v68;
  }

  v47 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 8) == 0)
  {
LABEL_49:
    if ((v48 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_105;
  }

LABEL_102:
  v70 = *(a1 + 240) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v47 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x10) == 0)
  {
LABEL_50:
    if ((v48 & 0x20) == 0)
    {
      goto LABEL_51;
    }

LABEL_108:
    v76 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
    v77 = *(v76 + 23);
    v78 = *(v76 + 8);
    if ((v77 & 0x80u) == 0)
    {
      v78 = v77;
    }

    v47 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 0x40) == 0)
    {
LABEL_52:
      if ((v48 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    goto LABEL_111;
  }

LABEL_105:
  v73 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
  v74 = *(v73 + 23);
  v75 = *(v73 + 8);
  if ((v74 & 0x80u) == 0)
  {
    v75 = v74;
  }

  v47 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x20) != 0)
  {
    goto LABEL_108;
  }

LABEL_51:
  if ((v48 & 0x40) == 0)
  {
    goto LABEL_52;
  }

LABEL_111:
  v79 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
  v80 = *(v79 + 23);
  v81 = *(v79 + 8);
  if ((v80 & 0x80u) == 0)
  {
    v81 = v80;
  }

  v47 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x80) != 0)
  {
LABEL_53:
    v49 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
    v50 = *(v49 + 23);
    v51 = *(v49 + 8);
    if ((v50 & 0x80u) == 0)
    {
      v51 = v50;
    }

    v47 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_56:
  if ((v48 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  if ((v48 & 0x100) != 0)
  {
    v82 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
    v83 = *(v82 + 23);
    v84 = *(v82 + 8);
    if ((v83 & 0x80u) == 0)
    {
      v84 = v83;
    }

    v47 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 0x200) == 0)
    {
LABEL_59:
      if ((v48 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_121;
    }
  }

  else if ((v48 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v85 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
  v86 = *(v85 + 23);
  v87 = *(v85 + 8);
  if ((v86 & 0x80u) == 0)
  {
    v87 = v86;
  }

  v47 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x400) == 0)
  {
LABEL_60:
    if ((v48 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_122;
  }

LABEL_121:
  v88 = sub_16ED6F0(*(a1 + 296));
  v47 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v48 & 0x800) == 0)
  {
LABEL_61:
    if ((v48 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_123;
  }

LABEL_122:
  v89 = sub_16E8DA4(*(a1 + 304));
  v47 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v48 & 0x1000) == 0)
  {
LABEL_62:
    if ((v48 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_124;
  }

LABEL_123:
  v90 = sub_16E62F4(*(a1 + 312));
  v47 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v48 & 0x2000) == 0)
  {
LABEL_63:
    if ((v48 & 0x4000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_125;
  }

LABEL_124:
  v91 = sub_16EE474(*(a1 + 320));
  v47 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v48 & 0x4000) == 0)
  {
LABEL_64:
    if ((v48 & 0x8000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_125:
  v92 = sub_153D5B8(*(a1 + 328));
  v47 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x8000) != 0)
  {
LABEL_65:
    v52 = sub_16E51F0(*(a1 + 336));
    v47 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_66:
  if ((v48 & 0xFF0000) == 0)
  {
    goto LABEL_76;
  }

  if ((v48 & 0x10000) != 0)
  {
    v93 = sub_153A048(*(a1 + 344));
    v47 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v48 & 0x20000) == 0)
    {
LABEL_69:
      if ((v48 & 0x40000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_129;
    }
  }

  else if ((v48 & 0x20000) == 0)
  {
    goto LABEL_69;
  }

  v94 = sub_153B4A4(*(a1 + 352));
  v47 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x40000) == 0)
  {
LABEL_70:
    if ((v48 & 0x80000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_130;
  }

LABEL_129:
  v95 = sub_153E1F4(*(a1 + 360));
  v47 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x80000) == 0)
  {
LABEL_71:
    if ((v48 & 0x100000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_131;
  }

LABEL_130:
  v96 = sub_16ED6F0(*(a1 + 368));
  v47 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x100000) == 0)
  {
LABEL_72:
    if ((v48 & 0x200000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_132;
  }

LABEL_131:
  v97 = sub_153EB7C(*(a1 + 376));
  v47 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x200000) == 0)
  {
LABEL_73:
    if ((v48 & 0x400000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_133;
  }

LABEL_132:
  v98 = sub_16E51F0(*(a1 + 384));
  v47 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x400000) == 0)
  {
LABEL_74:
    if ((v48 & 0x800000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_133:
  v99 = sub_16E51F0(*(a1 + 392));
  v47 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v48 & 0x800000) != 0)
  {
LABEL_75:
    v53 = sub_15508CC(*(a1 + 400));
    v47 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_76:
  if (!HIBYTE(v48))
  {
    goto LABEL_89;
  }

  if ((v48 & 0x1000000) == 0)
  {
    if ((v48 & 0x2000000) == 0)
    {
      goto LABEL_79;
    }

LABEL_248:
    v133 = *(a1 + 412);
    if (v133 < 0)
    {
      v134 = 11;
    }

    else
    {
      v134 = ((9 * (__clz(v133 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v47 += v134;
    if ((v48 & 0x4000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

  v100 = *(a1 + 408);
  if (v100 < 0)
  {
    v101 = 11;
  }

  else
  {
    v101 = ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v47 += v101;
  if ((v48 & 0x2000000) != 0)
  {
    goto LABEL_248;
  }

LABEL_79:
  if ((v48 & 0x4000000) != 0)
  {
LABEL_80:
    v54 = *(a1 + 416);
    v55 = ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v54 >= 0)
    {
      v56 = v55;
    }

    else
    {
      v56 = 11;
    }

    v47 += v56;
  }

LABEL_84:
  v57 = v47 + ((v48 >> 27) & 2) + ((v48 >> 26) & 2) + ((v48 >> 28) & 2);
  if ((v48 & 0x40000000) != 0)
  {
    v57 += 3;
  }

  if ((v48 & 0x80000000) == 0)
  {
    v47 = v57;
  }

  else
  {
    v47 = v57 + 10;
  }

LABEL_89:
  v58 = *(a1 + 20);
  if (v58)
  {
    if (v58)
    {
      v59 = *(a1 + 432);
      if (v59 < 0)
      {
        v60 = 12;
      }

      else
      {
        v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v47 += v60;
    }

    if ((v58 & 2) != 0)
    {
      v102 = *(a1 + 436);
      if (v102 < 0)
      {
        v103 = 12;
      }

      else
      {
        v103 = ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v47 += v103;
    }

    v104 = v47 + 3;
    if ((v58 & 4) == 0)
    {
      v104 = v47;
    }

    if ((v58 & 8) != 0)
    {
      v104 += 3;
    }

    if ((v58 & 0x10) != 0)
    {
      v104 += 3;
    }

    if ((v58 & 0x20) != 0)
    {
      v104 += 3;
    }

    if ((v58 & 0x40) != 0)
    {
      v105 = *(a1 + 444);
      v106 = ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v105 >= 0)
      {
        v107 = v106;
      }

      else
      {
        v107 = 12;
      }

      v104 += v107;
    }

    if ((v58 & 0x80) != 0)
    {
      v47 = v104 + 10;
    }

    else
    {
      v47 = v104;
    }
  }

  if ((v58 & 0xFF00) != 0)
  {
    v108 = v47 + 10;
    if ((v58 & 0x100) == 0)
    {
      v108 = v47;
    }

    if ((v58 & 0x200) != 0)
    {
      v108 += 10;
    }

    if ((v58 & 0x400) != 0)
    {
      v108 += 3;
    }

    if ((v58 & 0x800) != 0)
    {
      v108 += 3;
    }

    if ((v58 & 0x1000) != 0)
    {
      v108 += 3;
    }

    if ((v58 & 0x2000) != 0)
    {
      v47 = v108 + 3;
    }

    else
    {
      v47 = v108;
    }

    if ((v58 & 0x4000) != 0)
    {
      v109 = *(a1 + 476);
      v110 = ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v109 >= 0)
      {
        v111 = v110;
      }

      else
      {
        v111 = 12;
      }

      v47 += v111;
    }

    if ((v58 & 0x8000) != 0)
    {
      v112 = *(a1 + 480);
      v113 = ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v112 >= 0)
      {
        v114 = v113;
      }

      else
      {
        v114 = 12;
      }

      v47 += v114;
    }
  }

  if ((v58 & 0xFF0000) != 0)
  {
    v115 = v47 + 3;
    if ((v58 & 0x10000) == 0)
    {
      v115 = v47;
    }

    if ((v58 & 0x20000) != 0)
    {
      v115 += 3;
    }

    if ((v58 & 0x40000) != 0)
    {
      v115 += 3;
    }

    if ((v58 & 0x80000) != 0)
    {
      v115 += 3;
    }

    if ((v58 & 0x100000) != 0)
    {
      v115 += ((9 * (__clz(*(a1 + 488) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v58 & 0x200000) != 0)
    {
      v115 += 3;
    }

    if ((v58 & 0x400000) != 0)
    {
      v115 += 3;
    }

    if ((v58 & 0x800000) != 0)
    {
      v47 = v115 + 3;
    }

    else
    {
      v47 = v115;
    }
  }

  if (HIBYTE(v58))
  {
    v116 = v47 + 3;
    if ((v58 & 0x1000000) == 0)
    {
      v116 = v47;
    }

    if ((v58 & 0x2000000) != 0)
    {
      v116 += 3;
    }

    if ((v58 & 0x4000000) != 0)
    {
      v116 += 3;
    }

    if ((v58 & 0x8000000) != 0)
    {
      v116 += 3;
    }

    if ((v58 & 0x10000000) != 0)
    {
      v47 = v116 + 3;
    }

    else
    {
      v47 = v116;
    }

    if ((v58 & 0x20000000) != 0)
    {
      v47 += ((9 * (__clz(*(a1 + 504) | 1) ^ 0x3F) + 73) >> 6) + 2;
      if ((v58 & 0x40000000) == 0)
      {
LABEL_216:
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_217;
        }

        goto LABEL_242;
      }
    }

    else if ((v58 & 0x40000000) == 0)
    {
      goto LABEL_216;
    }

    v127 = *(a1 + 512);
    v128 = ((9 * (__clz(v127 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v127 >= 0)
    {
      v129 = v128;
    }

    else
    {
      v129 = 12;
    }

    v47 += v129;
    if ((v58 & 0x80000000) != 0)
    {
LABEL_242:
      v130 = *(a1 + 516);
      v131 = ((9 * (__clz(v130 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v130 >= 0)
      {
        v132 = v131;
      }

      else
      {
        v132 = 12;
      }

      v47 += v132;
    }
  }

LABEL_217:
  v117 = *(a1 + 24);
  if ((v117 & 0x1F) != 0)
  {
    v118 = v47 + 3;
    if ((v117 & 1) == 0)
    {
      v118 = v47;
    }

    if ((v117 & 2) != 0)
    {
      v118 += 3;
    }

    if ((v117 & 4) != 0)
    {
      v47 = v118 + 3;
    }

    else
    {
      v47 = v118;
    }

    if ((v117 & 8) != 0)
    {
      v119 = *(a1 + 524);
      v120 = ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v119 >= 0)
      {
        v121 = v120;
      }

      else
      {
        v121 = 12;
      }

      v47 += v121;
    }

    if ((v117 & 0x10) != 0)
    {
      v122 = *(a1 + 528);
      v123 = ((9 * (__clz(v122 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v122 >= 0)
      {
        v124 = v123;
      }

      else
      {
        v124 = 11;
      }

      v47 += v124;
    }
  }

  v125 = *(a1 + 8);
  if (v125)
  {
    v135 = v125 & 0xFFFFFFFFFFFFFFFCLL;
    v136 = *((v125 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v136 < 0)
    {
      v136 = *(v135 + 16);
    }

    v47 += v136;
  }

  *(a1 + 28) = v47;
  return v47;
}

void sub_1542CDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = (a1 + 32);
    v6 = *(a1 + 32);
    sub_1959094((a1 + 32), v6 + v4);
    v7 = *(a1 + 40);
    *v5 += *(a2 + 32);
    memcpy((v7 + 8 * v6), *(a2 + 40), 8 * *(a2 + 32));
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a1 + 48);
    sub_1959094((a1 + 48), v9 + v8);
    v10 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v10 + 8 * v9), *(a2 + 56), 8 * *(a2 + 48));
  }

  v11 = *(a2 + 64);
  if (v11)
  {
    v12 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v12 + v11);
    v13 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v13 + 4 * v12), *(a2 + 72), 4 * *(a2 + 64));
  }

  v14 = *(a2 + 88);
  if (v14)
  {
    v15 = *(a2 + 96);
    v16 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_1201B48(a1 + 80, v16, (v15 + 8), v14, **(a1 + 96) - *(a1 + 88));
    v17 = *(a1 + 88) + v14;
    *(a1 + 88) = v17;
    v18 = *(a1 + 96);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 112);
  if (v19)
  {
    v20 = *(a2 + 120);
    v21 = sub_19592E8(a1 + 104, *(a2 + 112));
    sub_1201B48(a1 + 104, v21, (v20 + 8), v19, **(a1 + 120) - *(a1 + 112));
    v22 = *(a1 + 112) + v19;
    *(a1 + 112) = v22;
    v23 = *(a1 + 120);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 136);
  if (v24)
  {
    v25 = *(a2 + 144);
    v26 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1201B48(a1 + 128, v26, (v25 + 8), v24, **(a1 + 144) - *(a1 + 136));
    v27 = *(a1 + 136) + v24;
    *(a1 + 136) = v27;
    v28 = *(a1 + 144);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 160);
  if (v29)
  {
    v30 = *(a2 + 168);
    v31 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_156D998((a1 + 152), v31, (v30 + 8), v29, **(a1 + 168) - *(a1 + 160));
    v32 = *(a1 + 160) + v29;
    *(a1 + 160) = v32;
    v33 = *(a1 + 168);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 184);
  if (v34)
  {
    v35 = *(a2 + 192);
    v36 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_12E5E34((a1 + 176), v36, (v35 + 8), v34, **(a1 + 192) - *(a1 + 184));
    v37 = *(a1 + 184) + v34;
    *(a1 + 184) = v37;
    v38 = *(a1 + 192);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 200);
  if (v39)
  {
    v40 = *(a1 + 200);
    sub_1958E5C((a1 + 200), v40 + v39);
    v41 = *(a1 + 208);
    *(a1 + 200) += *(a2 + 200);
    memcpy((v41 + 4 * v40), *(a2 + 208), 4 * *(a2 + 200));
  }

  v42 = *(a2 + 16);
  if (!v42)
  {
    goto LABEL_58;
  }

  if (v42)
  {
    v43 = *(a2 + 216);
    *(a1 + 16) |= 1u;
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    sub_194EA1C((a1 + 216), (v43 & 0xFFFFFFFFFFFFFFFELL), v45);
    if ((v42 & 2) == 0)
    {
LABEL_27:
      if ((v42 & 4) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }
  }

  else if ((v42 & 2) == 0)
  {
    goto LABEL_27;
  }

  v46 = *(a2 + 224);
  *(a1 + 16) |= 2u;
  v47 = *(a1 + 8);
  v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
  if (v47)
  {
    v48 = *v48;
  }

  sub_194EA1C((a1 + 224), (v46 & 0xFFFFFFFFFFFFFFFELL), v48);
  if ((v42 & 4) == 0)
  {
LABEL_28:
    if ((v42 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

LABEL_40:
  v49 = *(a2 + 232);
  *(a1 + 16) |= 4u;
  v50 = *(a1 + 8);
  v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
  if (v50)
  {
    v51 = *v51;
  }

  sub_194EA1C((a1 + 232), (v49 & 0xFFFFFFFFFFFFFFFELL), v51);
  if ((v42 & 8) == 0)
  {
LABEL_29:
    if ((v42 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

LABEL_43:
  v52 = *(a2 + 240);
  *(a1 + 16) |= 8u;
  v53 = *(a1 + 8);
  v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
  if (v53)
  {
    v54 = *v54;
  }

  sub_194EA1C((a1 + 240), (v52 & 0xFFFFFFFFFFFFFFFELL), v54);
  if ((v42 & 0x10) == 0)
  {
LABEL_30:
    if ((v42 & 0x20) == 0)
    {
      goto LABEL_31;
    }

LABEL_49:
    v58 = *(a2 + 256);
    *(a1 + 16) |= 0x20u;
    v59 = *(a1 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    sub_194EA1C((a1 + 256), (v58 & 0xFFFFFFFFFFFFFFFELL), v60);
    if ((v42 & 0x40) == 0)
    {
LABEL_32:
      if ((v42 & 0x80) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_55;
    }

    goto LABEL_52;
  }

LABEL_46:
  v55 = *(a2 + 248);
  *(a1 + 16) |= 0x10u;
  v56 = *(a1 + 8);
  v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
  if (v56)
  {
    v57 = *v57;
  }

  sub_194EA1C((a1 + 248), (v55 & 0xFFFFFFFFFFFFFFFELL), v57);
  if ((v42 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_31:
  if ((v42 & 0x40) == 0)
  {
    goto LABEL_32;
  }

LABEL_52:
  v61 = *(a2 + 264);
  *(a1 + 16) |= 0x40u;
  v62 = *(a1 + 8);
  v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
  if (v62)
  {
    v63 = *v63;
  }

  sub_194EA1C((a1 + 264), (v61 & 0xFFFFFFFFFFFFFFFELL), v63);
  if ((v42 & 0x80) != 0)
  {
LABEL_55:
    v64 = *(a2 + 272);
    *(a1 + 16) |= 0x80u;
    v65 = *(a1 + 8);
    v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
    if (v65)
    {
      v66 = *v66;
    }

    sub_194EA1C((a1 + 272), (v64 & 0xFFFFFFFFFFFFFFFELL), v66);
  }

LABEL_58:
  if ((v42 & 0xFF00) == 0)
  {
    goto LABEL_122;
  }

  if ((v42 & 0x100) != 0)
  {
    v67 = *(a2 + 280);
    *(a1 + 16) |= 0x100u;
    v68 = *(a1 + 8);
    v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
    if (v68)
    {
      v69 = *v69;
    }

    sub_194EA1C((a1 + 280), (v67 & 0xFFFFFFFFFFFFFFFELL), v69);
    if ((v42 & 0x200) == 0)
    {
LABEL_61:
      if ((v42 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_74;
    }
  }

  else if ((v42 & 0x200) == 0)
  {
    goto LABEL_61;
  }

  v70 = *(a2 + 288);
  *(a1 + 16) |= 0x200u;
  v71 = *(a1 + 8);
  v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
  if (v71)
  {
    v72 = *v72;
  }

  sub_194EA1C((a1 + 288), (v70 & 0xFFFFFFFFFFFFFFFELL), v72);
  if ((v42 & 0x400) == 0)
  {
LABEL_62:
    if ((v42 & 0x800) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_82;
  }

LABEL_74:
  *(a1 + 16) |= 0x400u;
  v73 = *(a1 + 296);
  if (!v73)
  {
    v74 = *(a1 + 8);
    v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
    if (v74)
    {
      v75 = *v75;
    }

    v73 = sub_16F5E18(v75);
    *(a1 + 296) = v73;
  }

  if (*(a2 + 296))
  {
    v76 = *(a2 + 296);
  }

  else
  {
    v76 = &off_277E918;
  }

  sub_16ED814(v73, v76);
  if ((v42 & 0x800) == 0)
  {
LABEL_63:
    if ((v42 & 0x1000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_90;
  }

LABEL_82:
  *(a1 + 16) |= 0x800u;
  v77 = *(a1 + 304);
  if (!v77)
  {
    v78 = *(a1 + 8);
    v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
    if (v78)
    {
      v79 = *v79;
    }

    v77 = sub_16F5BD8(v79);
    *(a1 + 304) = v77;
  }

  if (*(a2 + 304))
  {
    v80 = *(a2 + 304);
  }

  else
  {
    v80 = &off_277E738;
  }

  sub_16E4964(v77, v80);
  if ((v42 & 0x1000) == 0)
  {
LABEL_64:
    if ((v42 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_98;
  }

LABEL_90:
  *(a1 + 16) |= 0x1000u;
  v81 = *(a1 + 312);
  if (!v81)
  {
    v82 = *(a1 + 8);
    v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
    if (v82)
    {
      v83 = *v83;
    }

    sub_16F58FC(v83);
    *(a1 + 312) = v81;
  }

  if (*(a2 + 312))
  {
    v84 = *(a2 + 312);
  }

  else
  {
    v84 = &off_277E650;
  }

  sub_16E645C(v81, v84);
  if ((v42 & 0x2000) == 0)
  {
LABEL_65:
    if ((v42 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_106;
  }

LABEL_98:
  *(a1 + 16) |= 0x2000u;
  v85 = *(a1 + 320);
  if (!v85)
  {
    v86 = *(a1 + 8);
    v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
    if (v86)
    {
      v87 = *v87;
    }

    v85 = sub_16F5F38(v87);
    *(a1 + 320) = v85;
  }

  if (*(a2 + 320))
  {
    v88 = *(a2 + 320);
  }

  else
  {
    v88 = &off_277E980;
  }

  sub_121721C(v85, v88);
  if ((v42 & 0x4000) == 0)
  {
LABEL_66:
    if ((v42 & 0x8000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_114;
  }

LABEL_106:
  *(a1 + 16) |= 0x4000u;
  v89 = *(a1 + 328);
  if (!v89)
  {
    v90 = *(a1 + 8);
    v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
    if (v90)
    {
      v91 = *v91;
    }

    v89 = sub_1551B64(v91);
    *(a1 + 328) = v89;
  }

  if (*(a2 + 328))
  {
    v92 = *(a2 + 328);
  }

  else
  {
    v92 = &off_27768D0;
  }

  sub_153D704(v89, v92);
  if ((v42 & 0x8000) != 0)
  {
LABEL_114:
    *(a1 + 16) |= 0x8000u;
    v93 = *(a1 + 336);
    if (!v93)
    {
      v94 = *(a1 + 8);
      v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
      if (v94)
      {
        v95 = *v95;
      }

      v93 = sub_16F5828(v95);
      *(a1 + 336) = v93;
    }

    if (*(a2 + 336))
    {
      v96 = *(a2 + 336);
    }

    else
    {
      v96 = &off_277E5E8;
    }

    sub_16E527C(v93, v96);
  }

LABEL_122:
  if ((v42 & 0xFF0000) == 0)
  {
    goto LABEL_196;
  }

  if ((v42 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v97 = *(a1 + 344);
    if (!v97)
    {
      v98 = *(a1 + 8);
      v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
      if (v98)
      {
        v99 = *v99;
      }

      sub_155193C(v99);
      *(a1 + 344) = v97;
    }

    if (*(a2 + 344))
    {
      v100 = *(a2 + 344);
    }

    else
    {
      v100 = &off_2776700;
    }

    sub_14C9078(v97, v100);
    if ((v42 & 0x20000) == 0)
    {
LABEL_125:
      if ((v42 & 0x40000) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_148;
    }
  }

  else if ((v42 & 0x20000) == 0)
  {
    goto LABEL_125;
  }

  *(a1 + 16) |= 0x20000u;
  v101 = *(a1 + 352);
  if (!v101)
  {
    v102 = *(a1 + 8);
    v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
    if (v102)
    {
      v103 = *v103;
    }

    v101 = sub_155199C(v103);
    *(a1 + 352) = v101;
  }

  if (*(a2 + 352))
  {
    v104 = *(a2 + 352);
  }

  else
  {
    v104 = &off_2776830;
  }

  sub_153B624(v101, v104);
  if ((v42 & 0x40000) == 0)
  {
LABEL_126:
    if ((v42 & 0x80000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_156;
  }

LABEL_148:
  *(a1 + 16) |= 0x40000u;
  v105 = *(a1 + 360);
  if (!v105)
  {
    v106 = *(a1 + 8);
    v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
    if (v106)
    {
      v107 = *v107;
    }

    v105 = sub_1551C18(v107);
    *(a1 + 360) = v105;
  }

  if (*(a2 + 360))
  {
    v108 = *(a2 + 360);
  }

  else
  {
    v108 = &off_2776920;
  }

  sub_1362E50(v105, v108);
  if ((v42 & 0x80000) == 0)
  {
LABEL_127:
    if ((v42 & 0x100000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_164;
  }

LABEL_156:
  *(a1 + 16) |= 0x80000u;
  v109 = *(a1 + 368);
  if (!v109)
  {
    v110 = *(a1 + 8);
    v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
    if (v110)
    {
      v111 = *v111;
    }

    v109 = sub_16F5E18(v111);
    *(a1 + 368) = v109;
  }

  if (*(a2 + 368))
  {
    v112 = *(a2 + 368);
  }

  else
  {
    v112 = &off_277E918;
  }

  sub_16ED814(v109, v112);
  if ((v42 & 0x100000) == 0)
  {
LABEL_128:
    if ((v42 & 0x200000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_172;
  }

LABEL_164:
  *(a1 + 16) |= 0x100000u;
  v113 = *(a1 + 376);
  if (!v113)
  {
    v114 = *(a1 + 8);
    v115 = (v114 & 0xFFFFFFFFFFFFFFFCLL);
    if (v114)
    {
      v115 = *v115;
    }

    v113 = sub_1551CBC(v115);
    *(a1 + 376) = v113;
  }

  if (*(a2 + 376))
  {
    v116 = *(a2 + 376);
  }

  else
  {
    v116 = &off_2776960;
  }

  sub_153ECF0(v113, v116);
  if ((v42 & 0x200000) == 0)
  {
LABEL_129:
    if ((v42 & 0x400000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_180;
  }

LABEL_172:
  *(a1 + 16) |= 0x200000u;
  v117 = *(a1 + 384);
  if (!v117)
  {
    v118 = *(a1 + 8);
    v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
    if (v118)
    {
      v119 = *v119;
    }

    v117 = sub_16F5828(v119);
    *(a1 + 384) = v117;
  }

  if (*(a2 + 384))
  {
    v120 = *(a2 + 384);
  }

  else
  {
    v120 = &off_277E5E8;
  }

  sub_16E527C(v117, v120);
  if ((v42 & 0x400000) == 0)
  {
LABEL_130:
    if ((v42 & 0x800000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_188;
  }

LABEL_180:
  *(a1 + 16) |= 0x400000u;
  v121 = *(a1 + 392);
  if (!v121)
  {
    v122 = *(a1 + 8);
    v123 = (v122 & 0xFFFFFFFFFFFFFFFCLL);
    if (v122)
    {
      v123 = *v123;
    }

    v121 = sub_16F5828(v123);
    *(a1 + 392) = v121;
  }

  if (*(a2 + 392))
  {
    v124 = *(a2 + 392);
  }

  else
  {
    v124 = &off_277E5E8;
  }

  sub_16E527C(v121, v124);
  if ((v42 & 0x800000) != 0)
  {
LABEL_188:
    *(a1 + 16) |= 0x800000u;
    v125 = *(a1 + 400);
    if (!v125)
    {
      v126 = *(a1 + 8);
      v127 = (v126 & 0xFFFFFFFFFFFFFFFCLL);
      if (v126)
      {
        v127 = *v127;
      }

      v125 = sub_1552788(v127);
      *(a1 + 400) = v125;
    }

    if (*(a2 + 400))
    {
      v128 = *(a2 + 400);
    }

    else
    {
      v128 = &off_27770C8;
    }

    sub_14C99B8(v125, v128);
  }

LABEL_196:
  if (!HIBYTE(v42))
  {
    goto LABEL_206;
  }

  if ((v42 & 0x1000000) != 0)
  {
    *(a1 + 408) = *(a2 + 408);
    if ((v42 & 0x2000000) == 0)
    {
LABEL_199:
      if ((v42 & 0x4000000) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_292;
    }
  }

  else if ((v42 & 0x2000000) == 0)
  {
    goto LABEL_199;
  }

  *(a1 + 412) = *(a2 + 412);
  if ((v42 & 0x4000000) == 0)
  {
LABEL_200:
    if ((v42 & 0x8000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_293;
  }

LABEL_292:
  *(a1 + 416) = *(a2 + 416);
  if ((v42 & 0x8000000) == 0)
  {
LABEL_201:
    if ((v42 & 0x10000000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_294;
  }

LABEL_293:
  *(a1 + 420) = *(a2 + 420);
  if ((v42 & 0x10000000) == 0)
  {
LABEL_202:
    if ((v42 & 0x20000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_295;
  }

LABEL_294:
  *(a1 + 421) = *(a2 + 421);
  if ((v42 & 0x20000000) == 0)
  {
LABEL_203:
    if ((v42 & 0x40000000) == 0)
    {
      goto LABEL_204;
    }

LABEL_296:
    *(a1 + 423) = *(a2 + 423);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_205;
    }

LABEL_297:
    *(a1 + 424) = *(a2 + 424);
    goto LABEL_205;
  }

LABEL_295:
  *(a1 + 422) = *(a2 + 422);
  if ((v42 & 0x40000000) != 0)
  {
    goto LABEL_296;
  }

LABEL_204:
  if ((v42 & 0x80000000) != 0)
  {
    goto LABEL_297;
  }

LABEL_205:
  *(a1 + 16) |= v42;
LABEL_206:
  v129 = *(a2 + 20);
  if (!v129)
  {
    goto LABEL_217;
  }

  if (v129)
  {
    *(a1 + 432) = *(a2 + 432);
    if ((v129 & 2) == 0)
    {
LABEL_209:
      if ((v129 & 4) == 0)
      {
        goto LABEL_210;
      }

      goto LABEL_263;
    }
  }

  else if ((v129 & 2) == 0)
  {
    goto LABEL_209;
  }

  *(a1 + 436) = *(a2 + 436);
  if ((v129 & 4) == 0)
  {
LABEL_210:
    if ((v129 & 8) == 0)
    {
      goto LABEL_211;
    }

    goto LABEL_264;
  }

LABEL_263:
  *(a1 + 440) = *(a2 + 440);
  if ((v129 & 8) == 0)
  {
LABEL_211:
    if ((v129 & 0x10) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_265;
  }

LABEL_264:
  *(a1 + 441) = *(a2 + 441);
  if ((v129 & 0x10) == 0)
  {
LABEL_212:
    if ((v129 & 0x20) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_266;
  }

LABEL_265:
  *(a1 + 442) = *(a2 + 442);
  if ((v129 & 0x20) == 0)
  {
LABEL_213:
    if ((v129 & 0x40) == 0)
    {
      goto LABEL_214;
    }

LABEL_267:
    *(a1 + 444) = *(a2 + 444);
    if ((v129 & 0x80) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_215;
  }

LABEL_266:
  *(a1 + 443) = *(a2 + 443);
  if ((v129 & 0x40) != 0)
  {
    goto LABEL_267;
  }

LABEL_214:
  if ((v129 & 0x80) != 0)
  {
LABEL_215:
    *(a1 + 448) = *(a2 + 448);
  }

LABEL_216:
  *(a1 + 20) |= v129;
LABEL_217:
  if ((v129 & 0xFF00) == 0)
  {
    goto LABEL_228;
  }

  if ((v129 & 0x100) != 0)
  {
    *(a1 + 456) = *(a2 + 456);
    if ((v129 & 0x200) == 0)
    {
LABEL_220:
      if ((v129 & 0x400) == 0)
      {
        goto LABEL_221;
      }

      goto LABEL_271;
    }
  }

  else if ((v129 & 0x200) == 0)
  {
    goto LABEL_220;
  }

  *(a1 + 464) = *(a2 + 464);
  if ((v129 & 0x400) == 0)
  {
LABEL_221:
    if ((v129 & 0x800) == 0)
    {
      goto LABEL_222;
    }

    goto LABEL_272;
  }

LABEL_271:
  *(a1 + 472) = *(a2 + 472);
  if ((v129 & 0x800) == 0)
  {
LABEL_222:
    if ((v129 & 0x1000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_273;
  }

LABEL_272:
  *(a1 + 473) = *(a2 + 473);
  if ((v129 & 0x1000) == 0)
  {
LABEL_223:
    if ((v129 & 0x2000) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_274;
  }

LABEL_273:
  *(a1 + 474) = *(a2 + 474);
  if ((v129 & 0x2000) == 0)
  {
LABEL_224:
    if ((v129 & 0x4000) == 0)
    {
      goto LABEL_225;
    }

LABEL_275:
    *(a1 + 476) = *(a2 + 476);
    if ((v129 & 0x8000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_226;
  }

LABEL_274:
  *(a1 + 475) = *(a2 + 475);
  if ((v129 & 0x4000) != 0)
  {
    goto LABEL_275;
  }

LABEL_225:
  if ((v129 & 0x8000) != 0)
  {
LABEL_226:
    *(a1 + 480) = *(a2 + 480);
  }

LABEL_227:
  *(a1 + 20) |= v129;
LABEL_228:
  if ((v129 & 0xFF0000) == 0)
  {
    goto LABEL_239;
  }

  if ((v129 & 0x10000) != 0)
  {
    *(a1 + 484) = *(a2 + 484);
    if ((v129 & 0x20000) == 0)
    {
LABEL_231:
      if ((v129 & 0x40000) == 0)
      {
        goto LABEL_232;
      }

      goto LABEL_279;
    }
  }

  else if ((v129 & 0x20000) == 0)
  {
    goto LABEL_231;
  }

  *(a1 + 485) = *(a2 + 485);
  if ((v129 & 0x40000) == 0)
  {
LABEL_232:
    if ((v129 & 0x80000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_280;
  }

LABEL_279:
  *(a1 + 486) = *(a2 + 486);
  if ((v129 & 0x80000) == 0)
  {
LABEL_233:
    if ((v129 & 0x100000) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_281;
  }

LABEL_280:
  *(a1 + 487) = *(a2 + 487);
  if ((v129 & 0x100000) == 0)
  {
LABEL_234:
    if ((v129 & 0x200000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_282;
  }

LABEL_281:
  *(a1 + 488) = *(a2 + 488);
  if ((v129 & 0x200000) == 0)
  {
LABEL_235:
    if ((v129 & 0x400000) == 0)
    {
      goto LABEL_236;
    }

LABEL_283:
    *(a1 + 497) = *(a2 + 497);
    if ((v129 & 0x800000) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_237;
  }

LABEL_282:
  *(a1 + 496) = *(a2 + 496);
  if ((v129 & 0x400000) != 0)
  {
    goto LABEL_283;
  }

LABEL_236:
  if ((v129 & 0x800000) != 0)
  {
LABEL_237:
    *(a1 + 498) = *(a2 + 498);
  }

LABEL_238:
  *(a1 + 20) |= v129;
LABEL_239:
  if (!HIBYTE(v129))
  {
    goto LABEL_249;
  }

  if ((v129 & 0x1000000) != 0)
  {
    *(a1 + 499) = *(a2 + 499);
    if ((v129 & 0x2000000) == 0)
    {
LABEL_242:
      if ((v129 & 0x4000000) == 0)
      {
        goto LABEL_243;
      }

      goto LABEL_300;
    }
  }

  else if ((v129 & 0x2000000) == 0)
  {
    goto LABEL_242;
  }

  *(a1 + 500) = *(a2 + 500);
  if ((v129 & 0x4000000) == 0)
  {
LABEL_243:
    if ((v129 & 0x8000000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_301;
  }

LABEL_300:
  *(a1 + 501) = *(a2 + 501);
  if ((v129 & 0x8000000) == 0)
  {
LABEL_244:
    if ((v129 & 0x10000000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_302;
  }

LABEL_301:
  *(a1 + 502) = *(a2 + 502);
  if ((v129 & 0x10000000) == 0)
  {
LABEL_245:
    if ((v129 & 0x20000000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_303;
  }

LABEL_302:
  *(a1 + 503) = *(a2 + 503);
  if ((v129 & 0x20000000) == 0)
  {
LABEL_246:
    if ((v129 & 0x40000000) == 0)
    {
      goto LABEL_247;
    }

LABEL_304:
    *(a1 + 512) = *(a2 + 512);
    if ((v129 & 0x80000000) == 0)
    {
      goto LABEL_248;
    }

LABEL_305:
    *(a1 + 516) = *(a2 + 516);
    goto LABEL_248;
  }

LABEL_303:
  *(a1 + 504) = *(a2 + 504);
  if ((v129 & 0x40000000) != 0)
  {
    goto LABEL_304;
  }

LABEL_247:
  if ((v129 & 0x80000000) != 0)
  {
    goto LABEL_305;
  }

LABEL_248:
  *(a1 + 20) |= v129;
LABEL_249:
  v130 = *(a2 + 24);
  if ((v130 & 0x1F) == 0)
  {
    goto LABEL_257;
  }

  if (v130)
  {
    *(a1 + 520) = *(a2 + 520);
    if ((v130 & 2) == 0)
    {
LABEL_252:
      if ((v130 & 4) == 0)
      {
        goto LABEL_253;
      }

      goto LABEL_287;
    }
  }

  else if ((v130 & 2) == 0)
  {
    goto LABEL_252;
  }

  *(a1 + 521) = *(a2 + 521);
  if ((v130 & 4) == 0)
  {
LABEL_253:
    if ((v130 & 8) == 0)
    {
      goto LABEL_254;
    }

LABEL_288:
    *(a1 + 524) = *(a2 + 524);
    if ((v130 & 0x10) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_255;
  }

LABEL_287:
  *(a1 + 522) = *(a2 + 522);
  if ((v130 & 8) != 0)
  {
    goto LABEL_288;
  }

LABEL_254:
  if ((v130 & 0x10) != 0)
  {
LABEL_255:
    *(a1 + 528) = *(a2 + 528);
  }

LABEL_256:
  *(a1 + 24) |= v130;
LABEL_257:
  v131 = *(a2 + 8);
  if (v131)
  {

    sub_1957EF4((a1 + 8), (v131 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1543A14(uint64_t a1)
{
  v2 = *(a1 + 160);
  while (v2 >= 1)
  {
    v3 = *(*(a1 + 168) + 8 * v2--);
    if ((~*(v3 + 16) & 7) != 0)
    {
      return 0;
    }
  }

  v4 = *(a1 + 184);
  while (v4 >= 1)
  {
    v5 = v4 - 1;
    v6 = sub_16EF064(*(*(a1 + 192) + 8 * v4));
    v4 = v5;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 16);
  if ((v8 & 0x400) != 0)
  {
    result = sub_16ED98C(*(a1 + 296));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x800) != 0)
  {
    result = sub_16E4B4C(*(a1 + 304));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x1000) != 0)
  {
    result = sub_16E6614(*(a1 + 312));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x2000) != 0)
  {
    result = sub_16EE510(*(a1 + 320));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x4000) != 0)
  {
    v9 = *(a1 + 328);
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    while (v10 >= 1)
    {
      result = 0;
      v12 = *(v11 + 8 * v10--);
      if ((*(v12 + 16) & 1) == 0)
      {
        return result;
      }
    }
  }

  if ((v8 & 0x8000) != 0)
  {
    result = sub_16E5370(*(a1 + 336));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x10000) != 0)
  {
    result = sub_14C9D50(*(a1 + 344));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x20000) != 0)
  {
    result = sub_195228C(*(a1 + 352) + 16);
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x40000) != 0 && (~*(*(a1 + 360) + 16) & 7) != 0)
  {
    return 0;
  }

  if ((v8 & 0x80000) != 0)
  {
    result = sub_16ED98C(*(a1 + 368));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 0x100000) != 0)
  {
    v13 = *(a1 + 376);
    if ((*(v13 + 16) & 4) != 0)
    {
      result = sub_153EE5C(v13 + 24);
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
      if ((v8 & 0x200000) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_48;
    }

    return 0;
  }

  if ((v8 & 0x200000) != 0)
  {
LABEL_39:
    result = sub_16E5370(*(a1 + 384));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

LABEL_48:
  if ((v8 & 0x400000) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 392));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1543BDC(uint64_t a1)
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

void sub_1543C7C(uint64_t a1)
{
  sub_1543BDC(a1);

  operator delete();
}

uint64_t sub_1543CB4(uint64_t a1)
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

uint64_t sub_1543CFC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].i32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].i32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 17)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 2;
    goto LABEL_24;
  }

LABEL_11:
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
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_1543E88(uint64_t a1, char *__dst, void *a3)
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
    *v4 = 17;
    *(v4 + 1) = v7;
    v4 += 9;
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

uint64_t sub_1543F88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    return v2 + 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1543FE4(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_1543F88(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 10;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    result += v8;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_15440A8(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1544150(uint64_t a1)
{
  sub_15440A8(a1);

  operator delete();
}

uint64_t sub_1544188(uint64_t a1)
{
  *(a1 + 24) = 0;
  if (*(a1 + 16))
  {
    v1 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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
  *(result + 40) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15441D4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      break;
    }

    if (v11 != 2)
    {
      if (v11 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v27 = sub_194DB04((a1 + 40), v26);
      v16 = sub_1958890(v27, *v30, a3);
LABEL_40:
      *v30 = v16;
      if (!v16)
      {
        goto LABEL_54;
      }

      goto LABEL_45;
    }

    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    LODWORD(v17) = *v7;
    if ((v17 & 0x80000000) == 0)
    {
      v18 = (v7 + 1);
LABEL_44:
      *v30 = v18;
      *(a1 + 48) = v17;
      goto LABEL_45;
    }

    v17 = (v7[1] << 7) + v17 - 128;
    if ((v7[1] & 0x80000000) == 0)
    {
      v18 = (v7 + 2);
      goto LABEL_44;
    }

    v28 = sub_19587DC(v7, v17);
    *v30 = v28;
    *(a1 + 48) = v29;
    if (!v28)
    {
      goto LABEL_54;
    }

LABEL_45:
    if (sub_195ADC0(a3, v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 24)
  {
    v19 = (v7 - 1);
    while (1)
    {
      *v30 = v19 + 1;
      v20 = v19[1];
      if (v20 < 0)
      {
        v21 = (v19[2] << 7) + v20;
        v20 = (v21 - 128);
        if (v19[2] < 0)
        {
          v19 = sub_19587DC((v19 + 1), (v21 - 128));
          v20 = v22;
        }

        else
        {
          v19 += 3;
        }
      }

      else
      {
        v19 += 2;
      }

      *v30 = v19;
      v23 = *(a1 + 24);
      if (v23 == *(a1 + 28))
      {
        v24 = v23 + 1;
        sub_1959094((a1 + 24), v23 + 1);
        *(*(a1 + 32) + 8 * v23) = v20;
        v19 = *v30;
      }

      else
      {
        *(*(a1 + 32) + 8 * v23) = v20;
        v24 = v23 + 1;
      }

      *(a1 + 24) = v24;
      if (!v19)
      {
        goto LABEL_54;
      }

      if (*a3 <= v19 || *v19 != 24)
      {
        goto LABEL_45;
      }
    }
  }

  if (v8 == 26)
  {
    v16 = sub_1958938((a1 + 24), v7, a3);
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
      v7 = *v30;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  *v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v30;
}

char *sub_154448C(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 48);
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

  v12 = *(a1 + 24);
  if (v12 < 1)
  {
    v15 = v7;
  }

  else
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v14 = *(*(a1 + 32) + 8 * i);
      *v7 = 24;
      v7[1] = v14;
      if (v14 > 0x7F)
      {
        v7[1] = v14 | 0x80;
        v16 = v14 >> 7;
        v7[2] = v14 >> 7;
        v15 = v7 + 3;
        if (v14 >= 0x4000)
        {
          LOBYTE(v17) = v7[2];
          do
          {
            *(v15 - 1) = v17 | 0x80;
            v17 = v16 >> 7;
            *v15++ = v16 >> 7;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
        }
      }

      else
      {
        v15 = v7 + 2;
      }

      v7 = v15;
    }
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

uint64_t sub_1544688(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  result = sub_1959F14((a1 + 24)) + v2 + *(a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
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

    result += v8;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_1544768(std::string *result, uint64_t a2)
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

  v8 = *(a2 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a2 + 40);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v10 = v3->__r_.__value_.__l.__size_;
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    }

    if ((v8 & 2) != 0)
    {
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1544880(uint64_t a1)
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

void sub_1544938(uint64_t a1)
{
  sub_1544880(a1);

  operator delete();
}

uint64_t sub_1544970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
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
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_15449EC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
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
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_1544B6C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_1544C54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
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

uint64_t sub_1544D40(uint64_t a1)
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

  if (a1 != &off_2776BE8 && *(a1 + 32))
  {
    sub_15458AC();
    operator delete();
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

void sub_1544E0C(uint64_t a1)
{
  sub_1544D40(a1);

  operator delete();
}

uint64_t sub_1544E44(uint64_t result)
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
      result = sub_1544EE8(*(result + 32));
    }
  }

LABEL_7:
  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1544EE8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1544E44(v4);
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

uint64_t sub_1544F98(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v33 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v33, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v33 + 1);
    v8 = **v33;
    if (**v33 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v33, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v33 + 2);
      }
    }

    *v33 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_38;
      }

      v5 |= 8u;
      v21 = v7 + 1;
      v20 = *v7;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = v7 + 2;
LABEL_30:
        *v33 = v21;
        *(a1 + 48) = v20;
        goto LABEL_46;
      }

      v29 = sub_19587DC(v7, v20);
      *v33 = v29;
      *(a1 + 48) = v30;
      if (!v29)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v11 != 4)
      {
        if (v11 == 5 && v8 == 42)
        {
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

            v12 = sub_1552000(v14);
            *(a1 + 32) = v12;
          }

          v15 = sub_221DCAC(a3, v12);
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      if (v8 != 32)
      {
        goto LABEL_38;
      }

      v5 |= 0x10u;
      v24 = v7 + 1;
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_35:
        *v33 = v24;
        *(a1 + 56) = v23 != 0;
        goto LABEL_46;
      }

      v31 = sub_19587DC(v7, v23);
      *v33 = v31;
      *(a1 + 56) = v32 != 0;
      if (!v31)
      {
        goto LABEL_55;
      }
    }

LABEL_46:
    if (sub_195ADC0(a3, v33, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v5 |= 4u;
      *(a1 + 40) = *v7;
      *v33 = v7 + 2;
      goto LABEL_46;
    }
  }

  else if (v11 == 2 && v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = sub_194DB04((a1 + 24), v18);
    v15 = sub_1958890(v19, *v33, a3);
LABEL_45:
    *v33 = v15;
    if (!v15)
    {
      goto LABEL_55;
    }

    goto LABEL_46;
  }

LABEL_38:
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
      v7 = *v33;
    }

    v15 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_45;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_55:
  *v33 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v33;
}

char *sub_1545260(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 40);
  *v4 = 9;
  *(v4 + 1) = v8;
  v4 += 9;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 8) == 0)
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

  v9 = *(a1 + 48);
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
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 56);
    *v7 = 32;
    v7[1] = v13;
    v7 += 2;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 32);
    *v7 = 42;
    v15 = *(v14 + 20);
    v7[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v7 + 1);
    }

    else
    {
      v16 = v7 + 2;
    }

    v7 = sub_1545B68(v14, v16, a3);
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v20)
  {
    v22 = v20;
    memcpy(v7, v21, v20);
    v7 += v22;
    return v7;
  }

  return sub_1957130(a3, v21, v20, v7);
}

uint64_t sub_1545488(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
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
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = sub_1545CCC(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  v9 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v9 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v9 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  result = v9 + ((v2 >> 3) & 2);
LABEL_15:
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_15455A4(std::string *result, uint64_t a2)
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

        goto LABEL_21;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    if (!v3[1].__r_.__value_.__l.__size_)
    {
      v9 = v3->__r_.__value_.__l.__size_;
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        v10 = *v10;
      }

      v3[1].__r_.__value_.__l.__size_ = sub_1552000(v10);
    }

    result = sub_15456D4();
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

LABEL_21:
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
      v3[2].__r_.__value_.__s.__data_[8] = *(a2 + 56);
      goto LABEL_8;
    }

LABEL_22:
    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
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

std::string *sub_15456D4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156DA14(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

uint64_t sub_15457C8(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  if ((*(v2 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    v5 = sub_15457C8(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((v5 & 1) != 0);
  return v1;
}

BOOL sub_154583C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  do
  {
    v1 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_15457C8(*(v3 + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v1;
}

uint64_t sub_15458AC(uint64_t a1)
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
  sub_156CEAC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1545958(uint64_t a1)
{
  sub_15458AC(a1);

  operator delete();
}

uint64_t sub_1545990(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
            v20 = sub_1551F74(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = *v25;
          }

          v15 = sub_221DD3C(a3, v19, v16);
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

char *sub_1545B68(uint64_t a1, char *__dst, unint64_t *a3)
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

      v4 = sub_1545260(v8, v10, a3);
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

  if ((*a3 - v4) >= v14)
  {
    v16 = v14;
    memcpy(v4, v15, v14);
    v4 += v16;
    return v4;
  }

  return sub_1957130(a3, v15, v14, v4);
}

uint64_t sub_1545CCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 32);
  v7 = v2 + v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = sub_1545488(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
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

    v7 += v16;
  }

  *(a1 + 20) = v7;
  return v7;
}

void *sub_1545DCC(void *a1)
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

  sub_1545E94(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_156D038(a1 + 18);
  sub_156CFB4(a1 + 15);
  sub_156CF30(a1 + 12);
  sub_1311F6C(a1 + 9);
  sub_1956AFC(a1 + 6);
  sub_13B3CB4(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1545E94(uint64_t a1)
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

  if (a1 != &off_2776C60)
  {
    v5 = *(a1 + 184);
    if (v5)
    {
      sub_152B850(v5);
      operator delete();
    }

    if (*(a1 + 192))
    {
      sub_16ED13C();
      operator delete();
    }

    result = *(a1 + 200);
    if (result)
    {
      sub_153F9F4(result);

      operator delete();
    }
  }

  return result;
}

void sub_1545F6C(void *a1)
{
  sub_1545DCC(a1);

  operator delete();
}

uint64_t sub_1545FA4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v88 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v88, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v88 + 1);
    v8 = **v88;
    if (**v88 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v88, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v88 + 2);
      }
    }

    *v88 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 0x65)
    {
      break;
    }

    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 != 1)
        {
          if (v11 == 2 && v8 == 17)
          {
            v5 |= 0x20u;
            *(a1 + 208) = *v7;
            *v88 = v7 + 8;
            goto LABEL_151;
          }

          goto LABEL_143;
        }

        if (v8 != 10)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 4u;
        v43 = *(a1 + 184);
        if (!v43)
        {
          v44 = *(a1 + 8);
          v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
          if (v44)
          {
            v45 = *v45;
          }

          v43 = sub_1550F20(v45);
          *(a1 + 184) = v43;
          v7 = *v88;
        }

        v36 = sub_2200BC0(a3, v43, v7);
LABEL_150:
        *v88 = v36;
        if (!v36)
        {
          goto LABEL_165;
        }

        goto LABEL_151;
      }

      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v60 = v7 - 1;
          while (1)
          {
            v61 = v60 + 1;
            *v88 = v60 + 1;
            v62 = *(a1 + 40);
            if (v62 && (v63 = *(a1 + 32), v63 < *v62))
            {
              *(a1 + 32) = v63 + 1;
              v64 = *&v62[2 * v63 + 2];
            }

            else
            {
              v65 = sub_1550F20(*(a1 + 24));
              v64 = sub_19593CC(a1 + 24, v65);
              v61 = *v88;
            }

            v60 = sub_2200BC0(a3, v64, v61);
            *v88 = v60;
            if (!v60)
            {
              goto LABEL_165;
            }

            if (*a3 <= v60 || *v60 != 26)
            {
              goto LABEL_151;
            }
          }
        }

        goto LABEL_143;
      }

      if (v8 != 34)
      {
        goto LABEL_143;
      }

      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v27 = (a1 + 168);
LABEL_70:
      v35 = sub_194DB04(v27, v26);
      v36 = sub_1958890(v35, *v88, a3);
      goto LABEL_150;
    }

    if (v8 >> 3 > 0x63)
    {
      if (v11 == 100)
      {
        if (v8 != 34)
        {
          goto LABEL_143;
        }

        *(a1 + 16) |= 8u;
        v70 = *(a1 + 192);
        if (!v70)
        {
          v71 = *(a1 + 8);
          v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
          if (v71)
          {
            v72 = *v72;
          }

          v70 = sub_16F5E18(v72);
          *(a1 + 192) = v70;
          v7 = *v88;
        }

        v36 = sub_21F4F10(a3, v70, v7);
        goto LABEL_150;
      }

      if (v11 != 101 || v8 != 42)
      {
        goto LABEL_143;
      }

      *(a1 + 16) |= 2u;
      v34 = *(a1 + 8);
      v26 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v26 = *v26;
      }

      v27 = (a1 + 176);
      goto LABEL_70;
    }

    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_143;
      }

      v5 |= 0x40u;
      v54 = (v7 + 1);
      v55 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_105;
      }

      v56 = *v54;
      v55 = v55 + (v56 << 7) - 128;
      if ((v56 & 0x80000000) == 0)
      {
        v54 = (v7 + 2);
LABEL_105:
        *v88 = v54;
        *(a1 + 216) = v55;
        goto LABEL_151;
      }

      v84 = sub_1958770(v7, v55);
      *v88 = v84;
      *(a1 + 216) = v85;
      if (!v84)
      {
        goto LABEL_165;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_143;
      }

      v5 |= 0x80u;
      v19 = (v7 + 1);
      v20 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v21 = *v19;
      v20 = v20 + (v21 << 7) - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v19 = (v7 + 2);
LABEL_38:
        *v88 = v19;
        *(a1 + 220) = v20;
        goto LABEL_151;
      }

      v82 = sub_1958770(v7, v20);
      *v88 = v82;
      *(a1 + 220) = v83;
      if (!v82)
      {
        goto LABEL_165;
      }
    }

LABEL_151:
    if (sub_195ADC0(a3, v88, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 0x69)
  {
    if (v8 >> 3 <= 0x67)
    {
      if (v11 == 102)
      {
        if (v8 == 50)
        {
          v46 = (v7 - 2);
          while (1)
          {
            v47 = (v46 + 2);
            *v88 = v46 + 2;
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
              v47 = *v88;
            }

            v46 = sub_1958890(v50, v47, a3);
            *v88 = v46;
            if (!v46)
            {
              goto LABEL_165;
            }

            if (*a3 <= v46 || *v46 != 1714)
            {
              goto LABEL_151;
            }
          }
        }
      }

      else if (v11 == 103 && v8 == 58)
      {
        v13 = v7 - 2;
        while (1)
        {
          v14 = v13 + 2;
          *v88 = v13 + 2;
          v15 = *(a1 + 88);
          if (v15 && (v16 = *(a1 + 80), v16 < *v15))
          {
            *(a1 + 80) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            v18 = sub_1551DC4(*(a1 + 72));
            v17 = sub_19593CC(a1 + 72, v18);
            v14 = *v88;
          }

          v13 = sub_21F8E38(a3, v17, v14);
          *v88 = v13;
          if (!v13)
          {
            goto LABEL_165;
          }

          if (*a3 <= v13 || *v13 != 1722)
          {
            goto LABEL_151;
          }
        }
      }

      goto LABEL_143;
    }

    if (v11 != 104)
    {
      if (v8 == 74)
      {
        v28 = v7 - 2;
        while (1)
        {
          v29 = v28 + 2;
          *v88 = v28 + 2;
          v30 = *(a1 + 112);
          if (v30 && (v31 = *(a1 + 104), v31 < *v30))
          {
            *(a1 + 104) = v31 + 1;
            v32 = *&v30[2 * v31 + 2];
          }

          else
          {
            v33 = sub_1551E48(*(a1 + 96));
            v32 = sub_19593CC(a1 + 96, v33);
            v29 = *v88;
          }

          v28 = sub_221DDCC(a3, v32, v29);
          *v88 = v28;
          if (!v28)
          {
            goto LABEL_165;
          }

          if (*a3 <= v28 || *v28 != 1738)
          {
            goto LABEL_151;
          }
        }
      }

      goto LABEL_143;
    }

    if (v8 != 66)
    {
      goto LABEL_143;
    }

    *(a1 + 16) |= 0x10u;
    v66 = *(a1 + 200);
    if (!v66)
    {
      v67 = *(a1 + 8);
      v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
      if (v67)
      {
        v68 = *v68;
      }

      sub_1551D64(v68);
      v66 = v69;
      *(a1 + 200) = v69;
      v7 = *v88;
    }

    sub_21F3650(a3, v66, v7);
    goto LABEL_150;
  }

  if (v8 >> 3 > 0x6B)
  {
    if (v11 == 108)
    {
      if (v8 == 98)
      {
        v73 = v7 - 2;
        while (1)
        {
          v74 = v73 + 2;
          *v88 = v73 + 2;
          v75 = *(a1 + 136);
          if (v75 && (v76 = *(a1 + 128), v76 < *v75))
          {
            *(a1 + 128) = v76 + 1;
            v77 = *&v75[2 * v76 + 2];
          }

          else
          {
            v78 = sub_1551EF0(*(a1 + 120));
            v77 = sub_19593CC(a1 + 120, v78);
            v74 = *v88;
          }

          v73 = sub_221DE5C(a3, v77, v74);
          *v88 = v73;
          if (!v73)
          {
            goto LABEL_165;
          }

          if (*a3 <= v73 || *v73 != 1762)
          {
            goto LABEL_151;
          }
        }
      }
    }

    else if (v11 == 109 && v8 == 106)
    {
      v37 = v7 - 2;
      while (1)
      {
        v38 = v37 + 2;
        *v88 = v37 + 2;
        v39 = *(a1 + 160);
        if (v39 && (v40 = *(a1 + 152), v40 < *v39))
        {
          *(a1 + 152) = v40 + 1;
          v41 = *&v39[2 * v40 + 2];
        }

        else
        {
          v42 = sub_1552000(*(a1 + 144));
          v41 = sub_19593CC(a1 + 144, v42);
          v38 = *v88;
        }

        v37 = sub_221DCAC(a3, v41, v38);
        *v88 = v37;
        if (!v37)
        {
          goto LABEL_165;
        }

        if (*a3 <= v37 || *v37 != 1770)
        {
          goto LABEL_151;
        }
      }
    }

    goto LABEL_143;
  }

  if (v11 == 106)
  {
    if (v8 != 80)
    {
      goto LABEL_143;
    }

    v5 |= 0x200u;
    v58 = (v7 + 1);
    v57 = *v7;
    if ((v57 & 0x8000000000000000) == 0)
    {
      goto LABEL_110;
    }

    v59 = *v58;
    v57 = (v59 << 7) + v57 - 128;
    if ((v59 & 0x80000000) == 0)
    {
      v58 = (v7 + 2);
LABEL_110:
      *v88 = v58;
      *(a1 + 232) = v57;
      goto LABEL_151;
    }

    v86 = sub_19587DC(v7, v57);
    *v88 = v86;
    *(a1 + 232) = v87;
    if (!v86)
    {
      goto LABEL_165;
    }

    goto LABEL_151;
  }

  if (v8 == 88)
  {
    v23 = (v7 + 1);
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if (v24 < 0)
    {
      *v88 = sub_19587DC(v7, v22);
      if (!*v88)
      {
        goto LABEL_165;
      }
    }

    else
    {
      v23 = (v7 + 2);
LABEL_45:
      *v88 = v23;
    }

    if (v22 > 2)
    {
      sub_156E898();
    }

    else
    {
      *(a1 + 16) |= 0x100u;
      *(a1 + 224) = v22;
    }

    goto LABEL_151;
  }

LABEL_143:
  if (v8)
  {
    v79 = (v8 & 7) == 4;
  }

  else
  {
    v79 = 1;
  }

  if (!v79)
  {
    v80 = *(a1 + 8);
    if (v80)
    {
      v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v81 = sub_11F1920((a1 + 8));
      v7 = *v88;
    }

    v36 = sub_1952690(v8, v81, v7, a3);
    goto LABEL_150;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_165:
  *v88 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v88;
}

char *sub_1546828(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 184);
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

    v4 = sub_152C800(v7, v9, a3);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 208);
    *v4 = 17;
    *(v4 + 1) = v10;
    v4 += 9;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v14 = *(v13 + 44);
      v4[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v4 + 1);
      }

      else
      {
        v15 = v4 + 2;
      }

      v4 = sub_152C800(v13, v15, a3);
    }
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 4, *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v17 = *(a1 + 216);
    *v4 = 40;
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v4[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v4[2] = v17 >> 7;
      v16 = v4 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v4[2];
        do
        {
          *(v16 - 1) = v19 | 0x80;
          v19 = v18 >> 7;
          *v16++ = v18 >> 7;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v16 = v4 + 2;
    }
  }

  else
  {
    v16 = v4;
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 220);
    *v16 = 48;
    v16[1] = v22;
    if (v22 > 0x7F)
    {
      v16[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[2] = v22 >> 7;
      v21 = v16 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v24) = v16[2];
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
      v21 = v16 + 2;
    }
  }

  else
  {
    v21 = v16;
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 192);
    *v21 = 1698;
    v27 = *(v26 + 20);
    v21[2] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v21 + 2);
    }

    else
    {
      v28 = v21 + 3;
    }

    v21 = sub_16ED4B0(v26, v28, a3);
  }

  if ((v6 & 2) != 0)
  {
    v21 = sub_128AEEC(a3, 101, *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL, v21);
  }

  v29 = *(a1 + 56);
  if (v29 >= 1)
  {
    v30 = 8;
    do
    {
      v31 = *(*(a1 + 64) + v30);
      v32 = *(v31 + 23);
      if (v32 < 0 && (v32 = v31[1], v32 > 127) || (*a3 - v21 + 13) < v32)
      {
        v21 = sub_1957480(a3, 102, v31, v21);
      }

      else
      {
        *v21 = 1714;
        v21[2] = v32;
        if (*(v31 + 23) < 0)
        {
          v31 = *v31;
        }

        v33 = v21 + 3;
        memcpy(v21 + 3, v31, v32);
        v21 = &v33[v32];
      }

      v30 += 8;
      --v29;
    }

    while (v29);
  }

  v34 = *(a1 + 80);
  if (v34)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v36 = *(*(a1 + 88) + 8 * j + 8);
      *v21 = 1722;
      v37 = *(v36 + 20);
      v21[2] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v21 + 2);
      }

      else
      {
        v38 = v21 + 3;
      }

      v21 = sub_1543E88(v36, v38, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v39 = *(a1 + 200);
    *v21 = 1730;
    v40 = *(v39 + 28);
    v21[2] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v21 + 2);
    }

    else
    {
      v41 = v21 + 3;
    }

    v21 = sub_1540418(v39, v41, a3);
  }

  v42 = *(a1 + 104);
  if (v42)
  {
    for (k = 0; k != v42; ++k)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v44 = *(*(a1 + 112) + 8 * k + 8);
      *v21 = 1738;
      v45 = *(v44 + 20);
      v21[2] = v45;
      if (v45 > 0x7F)
      {
        v46 = sub_19575D0(v45, v21 + 2);
      }

      else
      {
        v46 = v21 + 3;
      }

      v21 = sub_154448C(v44, v46, a3);
    }
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v48 = *(a1 + 232);
    *v21 = 1744;
    v21[2] = v48;
    if (v48 > 0x7F)
    {
      v21[2] = v48 | 0x80;
      v49 = v48 >> 7;
      v21[3] = v48 >> 7;
      v47 = v21 + 4;
      if (v48 >= 0x4000)
      {
        LOBYTE(v50) = v21[3];
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
      v47 = v21 + 3;
    }
  }

  else
  {
    v47 = v21;
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v53 = *(a1 + 224);
    *v47 = 1752;
    v47[2] = v53;
    if (v53 > 0x7F)
    {
      v47[2] = v53 | 0x80;
      v54 = v53 >> 7;
      v47[3] = v53 >> 7;
      v52 = v47 + 4;
      if (v53 >= 0x4000)
      {
        LOBYTE(v55) = v47[3];
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
      v52 = v47 + 3;
    }
  }

  else
  {
    v52 = v47;
  }

  v57 = *(a1 + 128);
  if (v57)
  {
    for (m = 0; m != v57; ++m)
    {
      if (*a3 <= v52)
      {
        v52 = sub_225EB68(a3, v52);
      }

      v59 = *(*(a1 + 136) + 8 * m + 8);
      *v52 = 1762;
      v60 = *(v59 + 20);
      v52[2] = v60;
      if (v60 > 0x7F)
      {
        v61 = sub_19575D0(v60, v52 + 2);
      }

      else
      {
        v61 = v52 + 3;
      }

      v52 = sub_1544B6C(v59, v61, a3);
    }
  }

  v62 = *(a1 + 152);
  if (v62)
  {
    for (n = 0; n != v62; ++n)
    {
      if (*a3 <= v52)
      {
        v52 = sub_225EB68(a3, v52);
      }

      v64 = *(*(a1 + 160) + 8 * n + 8);
      *v52 = 1770;
      v65 = *(v64 + 20);
      v52[2] = v65;
      if (v65 > 0x7F)
      {
        v66 = sub_19575D0(v65, v52 + 2);
      }

      else
      {
        v66 = v52 + 3;
      }

      v52 = sub_1545B68(v64, v66, a3);
    }
  }

  v67 = *(a1 + 8);
  if ((v67 & 1) == 0)
  {
    return v52;
  }

  v69 = v67 & 0xFFFFFFFFFFFFFFFCLL;
  v70 = *(v69 + 31);
  if (v70 < 0)
  {
    v71 = *(v69 + 8);
    v70 = *(v69 + 16);
  }

  else
  {
    v71 = (v69 + 8);
  }

  if ((*a3 - v52) >= v70)
  {
    v72 = v70;
    memcpy(v52, v71, v70);
    v52 += v72;
    return v52;
  }

  return sub_1957130(a3, v71, v70, v52);
}

uint64_t sub_1546FC4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    v3 = sub_152D208(*(a1 + 184));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_152D208(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  v12 = v5 + 2 * v11;
  if (v11 >= 1)
  {
    v13 = (*(a1 + 64) + 8);
    do
    {
      v14 = *v13++;
      v15 = *(v14 + 23);
      v16 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v16 = v15;
      }

      v12 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      --v11;
    }

    while (v11);
  }

  v17 = *(a1 + 80);
  v18 = v12 + 2 * v17;
  v19 = *(a1 + 88);
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
      v23 = sub_1543FE4(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 104);
  v25 = v18 + 2 * v24;
  v26 = *(a1 + 112);
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
      v30 = sub_1544688(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 128);
  v32 = v25 + 2 * v31;
  v33 = *(a1 + 136);
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
      v37 = sub_1544C54(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 152);
  v39 = v32 + 2 * v38;
  v40 = *(a1 + 160);
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
      v44 = sub_1545CCC(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 16);
  if ((v45 & 3) != 0)
  {
    if (v45)
    {
      v46 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
      v47 = *(v46 + 23);
      v48 = *(v46 + 8);
      if ((v47 & 0x80u) == 0)
      {
        v48 = v47;
      }

      v39 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v45 & 2) != 0)
    {
      v49 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
      v50 = *(v49 + 23);
      v51 = *(v49 + 8);
      if ((v50 & 0x80u) == 0)
      {
        v51 = v50;
      }

      v39 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if ((v45 & 0xF8) != 0)
  {
    if ((v45 & 8) != 0)
    {
      v52 = sub_16ED6F0(*(a1 + 192));
      v39 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v45 & 0x10) != 0)
    {
      v53 = sub_1541FC0(*(a1 + 200));
      v39 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v45 & 0x20) != 0)
    {
      v39 += 9;
    }

    if ((v45 & 0x40) != 0)
    {
      v39 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v45 & 0x80) != 0)
    {
      v39 += ((9 * (__clz(*(a1 + 220) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v45 & 0x300) != 0)
  {
    if ((v45 & 0x100) != 0)
    {
      v54 = *(a1 + 224);
      v55 = ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v54 >= 0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 12;
      }

      v39 += v56;
    }

    if ((v45 & 0x200) != 0)
    {
      v39 += ((9 * (__clz(*(a1 + 232) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }
  }

  v57 = *(a1 + 8);
  if (v57)
  {
    v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
    v60 = *((v57 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v60 < 0)
    {
      v60 = *(v59 + 16);
    }

    v39 += v60;
  }

  *(a1 + 20) = v39;
  return v39;
}

uint64_t sub_1547400(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ED340;
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
    sub_156DC34((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_1201B48(a1 + 48, v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_156DCC0((a1 + 72), v17, (v16 + 8), v15, **(a1 + 88) - *(a1 + 80));
    v18 = *(a1 + 80) + v15;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_131206C((a1 + 96), v22, (v21 + 8), v20, **(a1 + 112) - *(a1 + 104));
    v23 = *(a1 + 104) + v20;
    *(a1 + 104) = v23;
    v24 = *(a1 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 8);
  if (v25)
  {
    sub_1957EF4(v4, (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 120) = &qword_278E990;
  v26 = *(a2 + 16);
  if (v26)
  {
    v27 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v27 = *v27;
    }

    sub_194EA1C((a1 + 120), (*(a2 + 120) & 0xFFFFFFFFFFFFFFFELL), v27);
    v26 = *(a2 + 16);
  }

  *(a1 + 128) = &qword_278E990;
  if ((v26 & 2) != 0)
  {
    v28 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v28 = *v28;
    }

    sub_194EA1C((a1 + 128), (*(a2 + 128) & 0xFFFFFFFFFFFFFFFELL), v28);
    v26 = *(a2 + 16);
  }

  if ((v26 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  v29 = *(a2 + 144);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 144) = v29;
  return a1;
}

uint64_t sub_1547774(uint64_t a1)
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

  v5 = (a1 + 120);
  if (*(a1 + 120) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C((a1 + 128));
  }

  if (a1 != &off_2776D50)
  {
    v6 = *(a1 + 136);
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

LABEL_12:
  sub_1311F6C((a1 + 96));
  sub_156D140((a1 + 72));
  sub_1956AFC((a1 + 48));
  sub_156D0BC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1547888(uint64_t a1)
{
  sub_1547774(a1);

  operator delete();
}

uint64_t sub_15478C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v80 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v80, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v80 + 1);
    v8 = **v80;
    if (**v80 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v80, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v80 + 2);
      }
    }

    *v80 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 8)
    {
      break;
    }

    if (v8 >> 3 <= 3)
    {
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          if (v8 == 18)
          {
            v56 = v7 - 1;
            while (1)
            {
              v57 = v56 + 1;
              *v80 = v56 + 1;
              v58 = *(a1 + 40);
              if (v58 && (v59 = *(a1 + 32), v59 < *v58))
              {
                *(a1 + 32) = v59 + 1;
                v60 = *&v58[2 * v59 + 2];
              }

              else
              {
                sub_15520A4(*(a1 + 24));
                v60 = sub_19593CC(a1 + 24, v61);
                v57 = *v80;
              }

              v56 = sub_2204D90(a3, v60, v57);
              *v80 = v56;
              if (!v56)
              {
                goto LABEL_157;
              }

              if (*a3 <= v56 || *v56 != 18)
              {
                goto LABEL_131;
              }
            }
          }

          goto LABEL_123;
        }

        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_123;
        }

        *(a1 + 16) |= 4u;
        v18 = *(a1 + 136);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          sub_16F58FC(v20);
          v18 = v21;
          *(a1 + 136) = v21;
          v7 = *v80;
        }

        v22 = sub_21F86E8(a3, v18, v7);
LABEL_130:
        *v80 = v22;
        if (!v22)
        {
          goto LABEL_157;
        }

        goto LABEL_131;
      }

      if (v8 != 8)
      {
        goto LABEL_123;
      }

      v49 = (v7 + 1);
      v50 = *v7;
      if ((v50 & 0x8000000000000000) != 0)
      {
        v51 = *v49;
        v52 = (v51 << 7) + v50;
        v50 = (v52 - 128);
        if ((v51 & 0x80000000) == 0)
        {
          v49 = (v7 + 2);
          goto LABEL_92;
        }

        *v80 = sub_19587DC(v7, (v52 - 128));
        if (!*v80)
        {
          goto LABEL_157;
        }

        v50 = v73;
      }

      else
      {
LABEL_92:
        *v80 = v49;
      }

      if (v50 > 0x3C || ((1 << v50) & 0x1004010040100027) == 0)
      {
        v78 = *(a1 + 8);
        if (v78)
        {
          v79 = ((v78 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        else
        {
          v79 = sub_11F1920((a1 + 8));
        }

        sub_19586BC(1, v50, v79);
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 144) = v50;
      }

      goto LABEL_131;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 != 6)
      {
        if (v11 == 7 && v8 == 58)
        {
          v26 = v7 - 1;
          while (1)
          {
            v27 = v26 + 1;
            *v80 = v26 + 1;
            v28 = *(a1 + 88);
            if (v28 && (v29 = *(a1 + 80), v29 < *v28))
            {
              *(a1 + 80) = v29 + 1;
              v30 = *&v28[2 * v29 + 2];
            }

            else
            {
              v31 = sub_15526E4(*(a1 + 72));
              v30 = sub_19593CC(a1 + 72, v31);
              v27 = *v80;
            }

            v26 = sub_221DEEC(a3, v30, v27);
            *v80 = v26;
            if (!v26)
            {
              goto LABEL_157;
            }

            if (*a3 <= v26 || *v26 != 58)
            {
              goto LABEL_131;
            }
          }
        }

        goto LABEL_123;
      }

      if (v8 != 48)
      {
        goto LABEL_123;
      }

      v5 |= 0x20u;
      v44 = (v7 + 1);
      v43 = *v7;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *v44;
      v43 = (v45 << 7) + v43 - 128;
      if ((v45 & 0x80000000) == 0)
      {
        v44 = (v7 + 2);
LABEL_83:
        *v80 = v44;
        *(a1 + 152) = v43 != 0;
        goto LABEL_131;
      }

      v71 = sub_19587DC(v7, v43);
      *v80 = v71;
      *(a1 + 152) = v72 != 0;
      if (!v71)
      {
        goto LABEL_157;
      }
    }

    else
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          v35 = (v7 - 1);
          while (1)
          {
            v36 = (v35 + 1);
            *v80 = v35 + 1;
            v37 = *(a1 + 64);
            if (v37 && (v38 = *(a1 + 56), v38 < *v37))
            {
              *(a1 + 56) = v38 + 1;
              v39 = *&v37[2 * v38 + 2];
            }

            else
            {
              v40 = *(a1 + 48);
              if (!v40)
              {
                operator new();
              }

              *v42 = v41;
              v42[1] = sub_195A650;
              *v41 = 0;
              v41[1] = 0;
              v41[2] = 0;
              v39 = sub_19593CC(a1 + 48, v41);
              v36 = *v80;
            }

            v35 = sub_1958890(v39, v36, a3);
            *v80 = v35;
            if (!v35)
            {
              goto LABEL_157;
            }

            if (*a3 <= v35 || *v35 != 34)
            {
              goto LABEL_131;
            }
          }
        }

        goto LABEL_123;
      }

      if (v8 != 40)
      {
        goto LABEL_123;
      }

      v5 |= 0x10u;
      LODWORD(v12) = *v7;
      if ((v12 & 0x80000000) == 0)
      {
        v13 = v7 + 1;
LABEL_135:
        *v80 = v13;
        *(a1 + 148) = v12;
        goto LABEL_131;
      }

      v12 = (v7[1] << 7) + v12 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v13 = v7 + 2;
        goto LABEL_135;
      }

      v76 = sub_19587DC(v7, v12);
      *v80 = v76;
      *(a1 + 148) = v77;
      if (!v76)
      {
        goto LABEL_157;
      }
    }

LABEL_131:
    if (sub_195ADC0(a3, v80, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 0x64)
  {
    if (v11 == 9)
    {
      if (v8 != 74)
      {
        goto LABEL_123;
      }

      *(a1 + 16) |= 1u;
      v54 = *(a1 + 8);
      v47 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
      if (v54)
      {
        v47 = *v47;
      }

      v48 = (a1 + 120);
LABEL_102:
      v55 = sub_194DB04(v48, v47);
      v22 = sub_1958890(v55, *v80, a3);
      goto LABEL_130;
    }

    if (v11 == 10)
    {
      if (v8 == 82)
      {
        v62 = v7 - 1;
        while (1)
        {
          v63 = v62 + 1;
          *v80 = v62 + 1;
          v64 = *(a1 + 112);
          if (v64 && (v65 = *(a1 + 104), v65 < *v64))
          {
            *(a1 + 104) = v65 + 1;
            v66 = *&v64[2 * v65 + 2];
          }

          else
          {
            v67 = sub_1551DC4(*(a1 + 96));
            v66 = sub_19593CC(a1 + 96, v67);
            v63 = *v80;
          }

          v62 = sub_21F8E38(a3, v66, v63);
          *v80 = v62;
          if (!v62)
          {
            goto LABEL_157;
          }

          if (*a3 <= v62 || *v62 != 82)
          {
            goto LABEL_131;
          }
        }
      }

      goto LABEL_123;
    }

    if (v11 != 100 || v8 != 32)
    {
      goto LABEL_123;
    }

    v24 = (v7 + 1);
    v23 = *v7;
    if (v23 < 0)
    {
      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if (v25 < 0)
      {
        *v80 = sub_19587DC(v7, v23);
        if (!*v80)
        {
          goto LABEL_157;
        }

        goto LABEL_44;
      }

      v24 = (v7 + 2);
    }

    *v80 = v24;
LABEL_44:
    if ((v23 - 1) > 3)
    {
      sub_156E918();
    }

    else
    {
      *(a1 + 16) |= 0x200u;
      *(a1 + 168) = v23;
    }

    goto LABEL_131;
  }

  if (v8 >> 3 <= 0x66)
  {
    if (v11 == 101)
    {
      if (v8 == 41)
      {
        v5 |= 0x100u;
        *(a1 + 160) = *v7;
        *v80 = v7 + 8;
        goto LABEL_131;
      }

      goto LABEL_123;
    }

    if (v8 != 48)
    {
      goto LABEL_123;
    }

    v15 = (v7 + 1);
    v14 = *v7;
    if (v14 < 0)
    {
      v16 = *v15;
      v14 = (v16 << 7) + v14 - 128;
      if (v16 < 0)
      {
        *v80 = sub_19587DC(v7, v14);
        if (!*v80)
        {
          goto LABEL_157;
        }

        goto LABEL_22;
      }

      v15 = (v7 + 2);
    }

    *v80 = v15;
LABEL_22:
    if (v14 > 3)
    {
      sub_156E8D8();
    }

    else
    {
      *(a1 + 16) |= 0x80u;
      *(a1 + 156) = v14;
    }

    goto LABEL_131;
  }

  if (v11 != 103)
  {
    if (v11 != 104 || v8 != 64)
    {
      goto LABEL_123;
    }

    v5 |= 0x40u;
    v33 = (v7 + 1);
    v32 = *v7;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_64;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if ((v34 & 0x80000000) == 0)
    {
      v33 = (v7 + 2);
LABEL_64:
      *v80 = v33;
      *(a1 + 153) = v32 != 0;
      goto LABEL_131;
    }

    v74 = sub_19587DC(v7, v32);
    *v80 = v74;
    *(a1 + 153) = v75 != 0;
    if (!v74)
    {
      goto LABEL_157;
    }

    goto LABEL_131;
  }

  if (v8 == 58)
  {
    *(a1 + 16) |= 2u;
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    v48 = (a1 + 128);
    goto LABEL_102;
  }

LABEL_123:
  if (v8)
  {
    v68 = (v8 & 7) == 4;
  }

  else
  {
    v68 = 1;
  }

  if (!v68)
  {
    v69 = *(a1 + 8);
    if (v69)
    {
      v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v70 = sub_11F1920((a1 + 8));
      v7 = *v80;
    }

    v22 = sub_1952690(v8, v70, v7, a3);
    goto LABEL_130;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_157:
  *v80 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v80;
}

char *sub_15480D4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 144);
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

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 20);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_1546828(v13, v15, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 136);
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

    v6 = sub_16E5FE0(v16, v18, a3);
  }

  v19 = *(a1 + 56);
  if (v19 >= 1)
  {
    v20 = 8;
    do
    {
      v21 = *(*(a1 + 64) + v20);
      v22 = *(v21 + 23);
      if (v22 < 0 && (v22 = v21[1], v22 > 127) || (*a3 - v6 + 14) < v22)
      {
        v6 = sub_1957480(a3, 4, v21, v6);
      }

      else
      {
        *v6 = 34;
        v6[1] = v22;
        if (*(v21 + 23) < 0)
        {
          v21 = *v21;
        }

        v23 = v6 + 2;
        memcpy(v6 + 2, v21, v22);
        v6 = &v23[v22];
      }

      v20 += 8;
      --v19;
    }

    while (v19);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v25 = *(a1 + 148);
    *v6 = 40;
    v6[1] = v25;
    if (v25 > 0x7F)
    {
      v6[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v6[2] = v25 >> 7;
      v24 = v6 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v27) = v6[2];
        do
        {
          *(v24 - 1) = v27 | 0x80;
          v27 = v26 >> 7;
          *v24++ = v26 >> 7;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v24 = v6 + 2;
    }
  }

  else
  {
    v24 = v6;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 152);
    *v24 = 48;
    v24[1] = v29;
    v24 += 2;
  }

  v30 = *(a1 + 80);
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      if (*a3 <= v24)
      {
        v24 = sub_225EB68(a3, v24);
      }

      v32 = *(*(a1 + 88) + 8 * j + 8);
      *v24 = 58;
      v33 = *(v32 + 20);
      v24[1] = v33;
      if (v33 > 0x7F)
      {
        v34 = sub_19575D0(v33, v24 + 1);
      }

      else
      {
        v34 = v24 + 2;
      }

      v24 = sub_154FCDC(v32, v34, a3);
    }
  }

  if (v5)
  {
    v24 = sub_128AEEC(a3, 9, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v24);
  }

  v35 = *(a1 + 104);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      if (*a3 <= v24)
      {
        v24 = sub_225EB68(a3, v24);
      }

      v37 = *(*(a1 + 112) + 8 * k + 8);
      *v24 = 82;
      v38 = *(v37 + 20);
      v24[1] = v38;
      if (v38 > 0x7F)
      {
        v39 = sub_19575D0(v38, v24 + 1);
      }

      else
      {
        v39 = v24 + 2;
      }

      v24 = sub_1543E88(v37, v39, a3);
    }
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v41 = *(a1 + 168);
    *v24 = 1696;
    v24[2] = v41;
    if (v41 > 0x7F)
    {
      v24[2] = v41 | 0x80;
      v42 = v41 >> 7;
      v24[3] = v41 >> 7;
      v40 = v24 + 4;
      if (v41 >= 0x4000)
      {
        LOBYTE(v24) = v24[3];
        do
        {
          *(v40 - 1) = v24 | 0x80;
          v24 = (v42 >> 7);
          *v40++ = v42 >> 7;
          v43 = v42 >> 14;
          v42 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v40 = v24 + 3;
    }
  }

  else
  {
    v40 = v24;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v44 = *(a1 + 160);
    *v40 = 1705;
    *(v40 + 2) = v44;
    v40 += 10;
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v40)
    {
      v40 = sub_225EB68(a3, v40);
    }

    v46 = *(a1 + 156);
    *v40 = 1712;
    v40[2] = v46;
    if (v46 > 0x7F)
    {
      v40[2] = v46 | 0x80;
      v47 = v46 >> 7;
      v40[3] = v46 >> 7;
      v45 = v40 + 4;
      if (v46 >= 0x4000)
      {
        LOBYTE(v48) = v40[3];
        do
        {
          *(v45 - 1) = v48 | 0x80;
          v48 = v47 >> 7;
          *v45++ = v47 >> 7;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
      }
    }

    else
    {
      v45 = v40 + 3;
    }
  }

  else
  {
    v45 = v40;
  }

  if ((v5 & 2) != 0)
  {
    v45 = sub_128AEEC(a3, 103, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v45);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v45)
    {
      v45 = sub_225EB68(a3, v45);
    }

    v50 = *(a1 + 153);
    *v45 = 1728;
    v45[2] = v50;
    v45 += 3;
  }

  v51 = *(a1 + 8);
  if ((v51 & 1) == 0)
  {
    return v45;
  }

  v53 = v51 & 0xFFFFFFFFFFFFFFFCLL;
  v54 = *(v53 + 31);
  if (v54 < 0)
  {
    v55 = *(v53 + 8);
    v54 = *(v53 + 16);
  }

  else
  {
    v55 = (v53 + 8);
  }

  if ((*a3 - v45) >= v54)
  {
    v56 = v54;
    memcpy(v45, v55, v54);
    v45 += v56;
    return v45;
  }

  return sub_1957130(a3, v55, v54, v45);
}

uint64_t sub_1548710(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    v3 = *(a1 + 144);
    v2 = 11;
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v3 >= 0)
    {
      v2 = v4;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = *(a1 + 32);
  v6 = v2 + v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = sub_1546FC4(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(a1 + 56);
  v13 = v6 + v12;
  if (v12 >= 1)
  {
    v14 = (*(a1 + 64) + 8);
    do
    {
      v15 = *v14++;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v13 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      --v12;
    }

    while (v12);
  }

  v18 = *(a1 + 80);
  v19 = v13 + v18;
  v20 = *(a1 + 88);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = sub_154FEF8(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(a1 + 104);
  v26 = v19 + v25;
  v27 = *(a1 + 112);
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = sub_1543FE4(v30);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(a1 + 16);
  if ((v32 & 7) != 0)
  {
    if (v32)
    {
      v45 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
      v46 = *(v45 + 23);
      v47 = *(v45 + 8);
      if ((v46 & 0x80u) == 0)
      {
        v47 = v46;
      }

      v26 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v32 & 2) == 0)
      {
LABEL_31:
        if ((v32 & 4) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else if ((v32 & 2) == 0)
    {
      goto LABEL_31;
    }

    v48 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    v49 = *(v48 + 23);
    v50 = *(v48 + 8);
    if ((v49 & 0x80u) == 0)
    {
      v50 = v49;
    }

    v26 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v32 & 4) != 0)
    {
LABEL_32:
      v33 = sub_16E62F4(*(a1 + 136));
      v26 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_33:
  if ((v32 & 0xF0) != 0)
  {
    if ((v32 & 0x10) != 0)
    {
      v34 = *(a1 + 148);
      v35 = ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v34 >= 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = 11;
      }

      v26 += v36;
    }

    if ((v32 & 0x40) != 0)
    {
      v26 += ((v32 >> 4) & 2) + 3;
    }

    else
    {
      v26 += (v32 >> 4) & 2;
    }

    if ((v32 & 0x80) != 0)
    {
      v37 = *(a1 + 156);
      v38 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v37 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 12;
      }

      v26 += v39;
    }
  }

  if ((v32 & 0x300) != 0)
  {
    if ((v32 & 0x100) != 0)
    {
      v26 += 10;
    }

    if ((v32 & 0x200) != 0)
    {
      v40 = *(a1 + 168);
      v41 = ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v40 >= 0)
      {
        v42 = v41;
      }

      else
      {
        v42 = 12;
      }

      v26 += v42;
    }
  }

  v43 = *(a1 + 8);
  if (v43)
  {
    v51 = v43 & 0xFFFFFFFFFFFFFFFCLL;
    v52 = *((v43 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v52 < 0)
    {
      v52 = *(v51 + 16);
    }

    v26 += v52;
  }

  *(a1 + 20) = v26;
  return v26;
}

uint64_t sub_1548A88(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 32);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_154F79C(*(*(v4 + 40) + 8 * v5));
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

uint64_t sub_1548B24(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26ED3C0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_1548B98(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1548BC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26ED3C0;
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
    sub_11F1A54((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
  v12 = *(a2 + 40);
  if (v12)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  return a1;
}

uint64_t sub_1548DBC(uint64_t a1)
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

  if (a1 != &off_2776E00)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      sub_153F9F4(v5);
      operator delete();
    }

    if (*(a1 + 80))
    {
      sub_16E8374();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_12E6204((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1548EA0(uint64_t a1)
{
  sub_1548DBC(a1);

  operator delete();
}

char *sub_1548ED8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
  {
    return v29;
  }

  while (1)
  {
    v6 = v29 + 1;
    v7 = *v29;
    if (*v29 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v29, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v29 + 2;
      }
    }

    v29 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      break;
    }

    if (v10 == 2)
    {
      if (v7 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 40) |= 2u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_16F5BD8(v16);
        *(a1 + 80) = v14;
        v6 = v29;
      }

      v13 = sub_21F7188(a3, v14, v6);
    }

    else
    {
      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 40) |= 1u;
      v23 = *(a1 + 72);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        sub_1551D64(v25);
        v23 = v26;
        *(a1 + 72) = v26;
        v6 = v29;
      }

      sub_21F3650(a3, v23, v6);
    }

LABEL_43:
    v29 = v13;
    if (!v13)
    {
      return 0;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      return v29;
    }
  }

  if (v7 == 26)
  {
    v17 = v6 - 1;
    while (1)
    {
      v18 = (v17 + 1);
      v29 = v17 + 1;
      v19 = *(a1 + 64);
      if (v19 && (v20 = *(a1 + 56), v20 < *v19))
      {
        *(a1 + 56) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = sub_16F5828(*(a1 + 48));
        v21 = sub_19593CC(a1 + 48, v22);
        v18 = v29;
      }

      v17 = sub_21F4D60(a3, v21, v18);
      v29 = v17;
      if (!v17)
      {
        return 0;
      }

      if (*a3 <= v17 || *v17 != 26)
      {
        goto LABEL_44;
      }
    }
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

  if (!v12)
  {
    if (v7 - 800 > 0x63F)
    {
      v27 = *(a1 + 8);
      if (v27)
      {
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v28 = sub_11F1920((a1 + 8));
        v6 = v29;
      }

      v13 = sub_1952690(v7, v28, v6, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v7, v6, &off_2776E00, (a1 + 8), a3);
    }

    goto LABEL_43;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v29;
  }

  return 0;
}

char *sub_1549158(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 72);
    *v4 = 10;
    v8 = *(v7 + 28);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1540418(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 80);
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

    v4 = sub_16E886C(v10, v12, a3);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 26;
      v16 = *(v15 + 44);
      v4[1] = v16;
      if (v16 > 0x7F)
      {
        v17 = sub_19575D0(v16, v4 + 1);
      }

      else
      {
        v17 = v4 + 2;
      }

      v4 = sub_16E5070(v15, v17, a3);
    }
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 100, 300, v4, a3);
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

uint64_t sub_1549388(uint64_t a1)
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
      v9 = sub_16E51F0(v8);
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
      v11 = sub_1541FC0(*(a1 + 72));
      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v12 = sub_16E8DA4(*(a1 + 80));
      v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_15494B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26ED440;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  return a1;
}

void sub_1549534(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1549564(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_26ED440;
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

  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v12 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  v14 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v14;
  return a1;
}

uint64_t sub_154979C(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2776E58)
  {
    if (*(a1 + 80))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 88))
    {
      sub_16EB0C0();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_1956AFC((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1549898(uint64_t a1)
{
  sub_154979C(a1);

  operator delete();
}

uint64_t sub_15498D0(uint64_t a1)
{
  sub_1951124((a1 + 16));
  result = sub_12A41D0(a1 + 48);
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

  v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
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

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = sub_16E4E44(*(a1 + 80));
  if ((v3 & 4) != 0)
  {
LABEL_5:
    result = sub_16EB0FC(*(a1 + 88));
  }

LABEL_6:
  if ((v3 & 0x78) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
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

uint64_t sub_154999C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v54 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v54, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v54 + 1);
    v8 = **v54;
    if (**v54 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v54, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v54 + 2);
      }
    }

    *v54 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v8 >> 3 <= 6)
      {
        if (v11 != 5)
        {
          if (v11 == 6 && v8 == 50)
          {
            v16 = (v7 - 1);
            while (1)
            {
              v17 = (v16 + 1);
              *v54 = v16 + 1;
              v18 = *(a1 + 64);
              if (v18 && (v19 = *(a1 + 56), v19 < *v18))
              {
                *(a1 + 56) = v19 + 1;
                v20 = *&v18[2 * v19 + 2];
              }

              else
              {
                v21 = *(a1 + 48);
                if (!v21)
                {
                  operator new();
                }

                *v23 = v22;
                v23[1] = sub_195A650;
                *v22 = 0;
                v22[1] = 0;
                v22[2] = 0;
                v20 = sub_19593CC(a1 + 48, v22);
                v17 = *v54;
              }

              v16 = sub_1958890(v20, v17, a3);
              *v54 = v16;
              if (!v16)
              {
                goto LABEL_98;
              }

              if (*a3 <= v16 || *v16 != 50)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_73;
        }

        if (v8 != 42)
        {
          goto LABEL_73;
        }

        *(a1 + 40) |= 1u;
        v35 = *(a1 + 8);
        v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
        if (v35)
        {
          v36 = *v36;
        }

        v37 = sub_194DB04((a1 + 72), v36);
        v27 = sub_1958890(v37, *v54, a3);
LABEL_82:
        *v54 = v27;
        if (!v27)
        {
          goto LABEL_98;
        }

        goto LABEL_83;
      }

      if (v11 != 7)
      {
        if (v11 != 8 || v8 != 64)
        {
          goto LABEL_73;
        }

        v28 = (v7 + 1);
        v29 = *v7;
        if (v29 < 0)
        {
          v30 = *v28;
          v31 = (v30 << 7) + v29;
          LODWORD(v29) = v31 - 128;
          if (v30 < 0)
          {
            *v54 = sub_19587DC(v7, (v31 - 128));
            if (!*v54)
            {
              goto LABEL_98;
            }

            LODWORD(v29) = v53;
            goto LABEL_49;
          }

          v28 = (v7 + 2);
        }

        *v54 = v28;
LABEL_49:
        if (sub_1393054(v29))
        {
          *(a1 + 40) |= 0x40u;
          *(a1 + 116) = v29;
        }

        else
        {
          sub_13B67EC();
        }

        goto LABEL_83;
      }

      if (v8 != 56)
      {
        goto LABEL_73;
      }

      v41 = (v7 + 1);
      v42 = *v7;
      if (v42 < 0)
      {
        v43 = *v41;
        v44 = (v43 << 7) + v42;
        LODWORD(v42) = v44 - 128;
        if (v43 < 0)
        {
          *v54 = sub_19587DC(v7, (v44 - 128));
          if (!*v54)
          {
            goto LABEL_98;
          }

          LODWORD(v42) = v50;
          goto LABEL_71;
        }

        v41 = (v7 + 2);
      }

      *v54 = v41;
LABEL_71:
      if (sub_1796880(v42))
      {
        *(a1 + 40) |= 0x20u;
        *(a1 + 112) = v42;
      }

      else
      {
        sub_13ED178();
      }

      goto LABEL_83;
    }

    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_73;
      }

      v5 |= 8u;
      v33 = (v7 + 1);
      v32 = *v7;
      if ((v32 & 0x8000000000000000) == 0)
      {
        goto LABEL_55;
      }

      v34 = *v33;
      v32 = (v34 << 7) + v32 - 128;
      if ((v34 & 0x80000000) == 0)
      {
        v33 = (v7 + 2);
LABEL_55:
        *v54 = v33;
        *(a1 + 96) = v32;
        goto LABEL_83;
      }

      v48 = sub_19587DC(v7, v32);
      *v54 = v48;
      *(a1 + 96) = v49;
      if (!v48)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_73;
      }

      v5 |= 0x10u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_18:
        *v54 = v14;
        *(a1 + 104) = v13;
        goto LABEL_83;
      }

      v51 = sub_19587DC(v7, v13);
      *v54 = v51;
      *(a1 + 104) = v52;
      if (!v51)
      {
        goto LABEL_98;
      }
    }

LABEL_83:
    if (sub_195ADC0(a3, v54, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_73;
    }

    *(a1 + 40) |= 2u;
    v38 = *(a1 + 80);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_16F5828(v40);
      *(a1 + 80) = v38;
      v7 = *v54;
    }

    v27 = sub_21F4D60(a3, v38, v7);
    goto LABEL_82;
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 40) |= 4u;
    v24 = *(a1 + 88);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5DB8(v26);
      *(a1 + 88) = v24;
      v7 = *v54;
    }

    v27 = sub_21F8D18(a3, v24, v7);
    goto LABEL_82;
  }

LABEL_73:
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
        v7 = *v54;
      }

      v27 = sub_1952690(v8, v47, v7, a3);
    }

    else
    {
      v27 = sub_19525AC((a1 + 16), v8, v7, &off_2776E58, (a1 + 8), a3);
    }

    goto LABEL_82;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_98:
  *v54 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return *v54;
}

char *sub_1549ED0(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 8) != 0)
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 104);
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v21 = *(a1 + 80);
    *v11 = 26;
    v22 = *(v21 + 44);
    v11[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v11 + 1);
    }

    else
    {
      v23 = v11 + 2;
    }

    v11 = sub_16E5070(v21, v23, a3);
    if ((v5 & 4) == 0)
    {
LABEL_21:
      if ((v5 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
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

  v25 = *(a1 + 88);
  *v11 = 34;
  v26 = *(v25 + 20);
  v11[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v11 + 1);
  }

  else
  {
    v27 = v11 + 2;
  }

  v11 = sub_16EBD38(v25, v27, a3);
  if (v5)
  {
LABEL_22:
    v11 = sub_128AEEC(a3, 5, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

LABEL_23:
  v15 = *(a1 + 56);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      v17 = *(*(a1 + 64) + v16);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = v17[1], v18 > 127) || *a3 - v11 + 14 < v18)
      {
        v11 = sub_1957480(a3, 6, v17, v11);
      }

      else
      {
        *v11 = 50;
        v11[1] = v18;
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = v11 + 2;
        memcpy(v11 + 2, v17, v18);
        v11 = &v19[v18];
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v24 = *(a1 + 112);
    *v11 = 56;
    v11[1] = v24;
    if (v24 > 0x7F)
    {
      v11[1] = v24 | 0x80;
      v28 = v24 >> 7;
      v11[2] = v24 >> 7;
      v20 = v11 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v29) = v11[2];
        do
        {
          *(v20 - 1) = v29 | 0x80;
          v29 = v28 >> 7;
          *v20++ = v28 >> 7;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v32 = *(a1 + 116);
    *v20 = 64;
    v20[1] = v32;
    if (v32 > 0x7F)
    {
      v20[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v20[2] = v32 >> 7;
      v31 = v20 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v34) = v20[2];
        do
        {
          *(v31 - 1) = v34 | 0x80;
          v34 = v33 >> 7;
          *v31++ = v33 >> 7;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
      }
    }

    else
    {
      v31 = v20 + 2;
    }
  }

  else
  {
    v31 = v20;
  }

  if (*(a1 + 26))
  {
    v31 = sub_1953428(a1 + 16, 100, 200, v31, a3);
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v31;
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

  if (*a3 - v31 >= v39)
  {
    v41 = v39;
    memcpy(v31, v40, v39);
    v31 += v41;
    return v31;
  }

  return sub_1957130(a3, v40, v39, v31);
}

uint64_t sub_154A34C(uint64_t a1)
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

  v9 = *(a1 + 40);
  if ((v9 & 0x7F) == 0)
  {
    goto LABEL_30;
  }

  if (v9)
  {
    v10 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_9:
      if ((v9 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_9;
  }

  v13 = sub_16E51F0(*(a1 + 80));
  v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 4) == 0)
  {
LABEL_10:
    if ((v9 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v14 = sub_16EC25C(*(a1 + 88));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 8) == 0)
  {
LABEL_11:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v9 & 0x20) == 0)
    {
LABEL_13:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_20:
  v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  v15 = *(a1 + 112);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 += v16;
  if ((v9 & 0x40) != 0)
  {
LABEL_26:
    v17 = *(a1 + 116);
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v18;
  }

LABEL_30:
  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v4 += v22;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_154A57C(uint64_t a1, uint64_t a2)
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

        goto LABEL_29;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 40) |= 2u;
    v14 = *(a1 + 80);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_16F5828(v16);
      *(a1 + 80) = v14;
    }

    if (*(a2 + 80))
    {
      v17 = *(a2 + 80);
    }

    else
    {
      v17 = &off_277E5E8;
    }

    sub_16E527C(v14, v17);
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
    *(a1 + 40) |= 4u;
    v18 = *(a1 + 88);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_16F5DB8(v20);
      *(a1 + 88) = v18;
    }

    if (*(a2 + 88))
    {
      v21 = *(a2 + 88);
    }

    else
    {
      v21 = &off_277E820;
    }

    sub_16EC8A0(v18, v21);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(a1 + 96) = *(a2 + 96);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_39;
    }

LABEL_38:
    *(a1 + 104) = *(a2 + 104);
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

LABEL_39:
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

uint64_t sub_154A774(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) != 0)
    {
      result = sub_16E5370(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = sub_16ECE70(*(a1 + 88));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_154A7DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26ED4C0;
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
    sub_13EC494((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

uint64_t sub_154A9A8(uint64_t a1)
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

  if (a1 != &off_2776ED0)
  {
    if (*(a1 + 48))
    {
      sub_16E4E08();
      operator delete();
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      sub_16E5B34(v5);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_13EBF74((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_154AA84(uint64_t a1)
{
  sub_154A9A8(a1);

  operator delete();
}

unsigned __int8 *sub_154AABC(unsigned __int8 *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16EF1B4(v4);
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
      result = sub_16E4E44(*(v1 + 6));
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

char *sub_154AB60(uint64_t a1, char *a2, int32x2_t *a3)
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

          sub_16F58FC(v24);
          v22 = v25;
          *(a1 + 56) = v25;
          v6 = v30;
        }

        v15 = sub_21F86E8(a3, v22, v6);
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
            sub_16F60C0(*(a1 + 24));
            v20 = sub_19593CC(a1 + 24, v21);
            v17 = v30;
          }

          v16 = sub_21F9E88(a3, v20, v17);
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
      v26 = *(a1 + 48);
      if (!v26)
      {
        v27 = *(a1 + 8);
        v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
        if (v27)
        {
          v28 = *v28;
        }

        v26 = sub_16F5828(v28);
        *(a1 + 48) = v26;
        v6 = v30;
      }

      v15 = sub_21F4D60(a3, v26, v6);
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