uint64_t sub_1522E70(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 56) + 4 * v5);
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
  v9 = v2 + v3 + v4 + v8;
  v10 = *(a1 + 80);
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
      v14 = sub_151C340(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 96);
  v16 = v9 + v15;
  v17 = *(a1 + 104);
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
      v21 = sub_151C340(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 120);
  v23 = v16 + v22;
  v24 = *(a1 + 128);
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
      v28 = sub_14F5DE8(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 144);
  v30 = v23 + v29;
  v31 = *(a1 + 152);
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
      v35 = sub_16E7590(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 168);
  v37 = v30 + 2 * v36;
  v38 = *(a1 + 176);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = sub_151BCF0(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 192);
  v44 = v37 + 2 * v43;
  v45 = *(a1 + 200);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = sub_14D9520(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 216);
  v51 = v44 + 2 * v50;
  v52 = *(a1 + 224);
  if (v52)
  {
    v53 = (v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  if (v50)
  {
    v54 = 8 * v50;
    do
    {
      v55 = *v53++;
      v56 = sub_14F5DE8(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = sub_1959F14((a1 + 232));
  v58 = *(a1 + 256);
  v59 = v57 + v51 + 2 * (v58 + *(a1 + 232));
  v60 = *(a1 + 264);
  if (v60)
  {
    v61 = (v60 + 8);
  }

  else
  {
    v61 = 0;
  }

  if (v58)
  {
    v62 = 8 * v58;
    do
    {
      v63 = *v61++;
      v64 = sub_151CF90(v63);
      v59 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6);
      v62 -= 8;
    }

    while (v62);
  }

  v65 = *(a1 + 280);
  v66 = v59 + 2 * v65;
  v67 = *(a1 + 288);
  if (v67)
  {
    v68 = (v67 + 8);
  }

  else
  {
    v68 = 0;
  }

  if (v65)
  {
    v69 = 8 * v65;
    do
    {
      v70 = *v68++;
      v71 = sub_151E050(v70);
      v66 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6);
      v69 -= 8;
    }

    while (v69);
  }

  v72 = *(a1 + 304);
  v73 = v66 + 2 * v72;
  v74 = *(a1 + 312);
  if (v74)
  {
    v75 = (v74 + 8);
  }

  else
  {
    v75 = 0;
  }

  if (v72)
  {
    v76 = 8 * v72;
    do
    {
      v77 = *v75++;
      v78 = sub_16E7590(v77);
      v73 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6);
      v76 -= 8;
    }

    while (v76);
  }

  v79 = *(a1 + 328);
  v80 = v73 + 2 * v79;
  v81 = *(a1 + 336);
  if (v81)
  {
    v82 = (v81 + 8);
  }

  else
  {
    v82 = 0;
  }

  if (v79)
  {
    v83 = 8 * v79;
    do
    {
      v84 = *v82++;
      v85 = sub_151EAE0(v84);
      v80 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6);
      v83 -= 8;
    }

    while (v83);
  }

  v86 = *(a1 + 352);
  v87 = v80 + 2 * v86;
  v88 = *(a1 + 360);
  if (v88)
  {
    v89 = (v88 + 8);
  }

  else
  {
    v89 = 0;
  }

  if (v86)
  {
    v90 = 8 * v86;
    do
    {
      v91 = *v89++;
      v92 = sub_1525584(v91);
      v87 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6);
      v90 -= 8;
    }

    while (v90);
  }

  v93 = *(a1 + 376);
  v94 = v87 + 2 * v93;
  if (v93 >= 1)
  {
    v95 = (*(a1 + 384) + 8);
    do
    {
      v96 = *v95++;
      v97 = *(v96 + 23);
      v98 = *(v96 + 8);
      if ((v97 & 0x80u) == 0)
      {
        v98 = v97;
      }

      v94 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6);
      --v93;
    }

    while (v93);
  }

  v99 = *(a1 + 400);
  v100 = v94 + 2 * v99;
  if (v99 >= 1)
  {
    v101 = (*(a1 + 408) + 8);
    do
    {
      v102 = *v101++;
      v103 = *(v102 + 23);
      v104 = *(v102 + 8);
      if ((v103 & 0x80u) == 0)
      {
        v104 = v103;
      }

      v100 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6);
      --v99;
    }

    while (v99);
  }

  v105 = *(a1 + 424);
  v106 = v100 + 2 * v105;
  v107 = *(a1 + 432);
  if (v107)
  {
    v108 = (v107 + 8);
  }

  else
  {
    v108 = 0;
  }

  if (v105)
  {
    v109 = 8 * v105;
    do
    {
      v110 = *v108++;
      v111 = sub_151C340(v110);
      v106 += v111 + ((9 * (__clz(v111 | 1) ^ 0x1F) + 73) >> 6);
      v109 -= 8;
    }

    while (v109);
  }

  v112 = *(a1 + 448);
  v113 = v106 + 2 * v112;
  v114 = *(a1 + 456);
  if (v114)
  {
    v115 = (v114 + 8);
  }

  else
  {
    v115 = 0;
  }

  if (v112)
  {
    v116 = 8 * v112;
    do
    {
      v117 = *v115++;
      v118 = sub_1520264(v117);
      v113 += v118 + ((9 * (__clz(v118 | 1) ^ 0x1F) + 73) >> 6);
      v116 -= 8;
    }

    while (v116);
  }

  v119 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_113;
  }

  if (v119)
  {
    v123 = *(a1 + 464) & 0xFFFFFFFFFFFFFFFELL;
    v124 = *(v123 + 23);
    v125 = *(v123 + 8);
    if ((v124 & 0x80u) == 0)
    {
      v125 = v124;
    }

    v113 += v125 + ((9 * (__clz(v125 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v119 & 2) == 0)
    {
LABEL_106:
      if ((v119 & 4) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_137;
    }
  }

  else if ((v119 & 2) == 0)
  {
    goto LABEL_106;
  }

  v126 = *(a1 + 472) & 0xFFFFFFFFFFFFFFFELL;
  v127 = *(v126 + 23);
  v128 = *(v126 + 8);
  if ((v127 & 0x80u) == 0)
  {
    v128 = v127;
  }

  v113 += v128 + ((9 * (__clz(v128 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v119 & 4) == 0)
  {
LABEL_107:
    if ((v119 & 8) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_138;
  }

LABEL_137:
  v129 = sub_14EB2A8(*(a1 + 480));
  v113 += v129 + ((9 * (__clz(v129 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v119 & 8) == 0)
  {
LABEL_108:
    if ((v119 & 0x10) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_139;
  }

LABEL_138:
  v130 = sub_14F7418(*(a1 + 488));
  v113 += v130 + ((9 * (__clz(v130 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v119 & 0x10) == 0)
  {
LABEL_109:
    if ((v119 & 0x20) == 0)
    {
      goto LABEL_110;
    }

LABEL_140:
    v132 = sub_151B590(*(a1 + 504));
    v113 += v132 + ((9 * (__clz(v132 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v119 & 0x40) == 0)
    {
LABEL_111:
      if ((v119 & 0x80) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

    goto LABEL_141;
  }

LABEL_139:
  v131 = sub_151F414(*(a1 + 496));
  v113 += v131 + ((9 * (__clz(v131 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v119 & 0x20) != 0)
  {
    goto LABEL_140;
  }

LABEL_110:
  if ((v119 & 0x40) == 0)
  {
    goto LABEL_111;
  }

LABEL_141:
  v113 += ((9 * (__clz(*(a1 + 512) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v119 & 0x80) != 0)
  {
LABEL_112:
    v113 += ((9 * (__clz(*(a1 + 520) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_113:
  if ((v119 & 0xFF00) == 0)
  {
    goto LABEL_127;
  }

  if ((v119 & 0x100) != 0)
  {
    v113 += ((9 * (__clz(*(a1 + 528) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  if ((v119 & 0x200) != 0)
  {
    v113 += ((9 * (__clz(*(a1 + 536) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

  v120 = v113 + ((v119 >> 9) & 2);
  if ((v119 & 0x800) != 0)
  {
    v120 += 3;
  }

  if ((v119 & 0x1000) != 0)
  {
    v113 = v120 + 6;
  }

  else
  {
    v113 = v120;
  }

  if ((v119 & 0x2000) != 0)
  {
    v133 = *(a1 + 552);
    v134 = ((9 * (__clz(v133 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v133 >= 0)
    {
      v135 = v134;
    }

    else
    {
      v135 = 12;
    }

    v113 += v135;
    if ((v119 & 0x4000) == 0)
    {
LABEL_125:
      if ((v119 & 0x8000) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_126;
    }
  }

  else if ((v119 & 0x4000) == 0)
  {
    goto LABEL_125;
  }

  v136 = *(a1 + 556);
  v137 = ((9 * (__clz(v136 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v136 >= 0)
  {
    v138 = v137;
  }

  else
  {
    v138 = 12;
  }

  v113 += v138;
  if ((v119 & 0x8000) != 0)
  {
LABEL_126:
    v113 += ((9 * (__clz(*(a1 + 560) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

LABEL_127:
  if ((v119 & 0x10000) != 0)
  {
    v113 += ((9 * (__clz(*(a1 + 568) | 1) ^ 0x3F) + 73) >> 6) + 2;
  }

  v121 = *(a1 + 8);
  if (v121)
  {
    v139 = v121 & 0xFFFFFFFFFFFFFFFCLL;
    v140 = *((v121 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v140 < 0)
    {
      v140 = *(v139 + 16);
    }

    v113 += v140;
  }

  *(a1 + 44) = v113;
  return v113;
}

uint64_t sub_1523738(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 1) == 0 || (~*(*(*i + 96) + 16) & 9) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

void *sub_15237A0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13473FC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1523820(void *a1)
{
  sub_15237A0(a1);

  operator delete();
}

uint64_t sub_1523858(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1531498(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
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

char *sub_15238E8(uint64_t a1, char *a2, int32x2_t *a3)
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

    v5 |= 2u;
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
      v32 = v19;
      *(a1 + 52) = v20;
      goto LABEL_39;
    }

    v30 = sub_1958770(v7, v20);
    v32 = v30;
    *(a1 + 52) = v31;
    if (!v30)
    {
      goto LABEL_48;
    }

LABEL_39:
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

    v5 |= 1u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_25:
      v32 = v16;
      *(a1 + 48) = v17;
      goto LABEL_39;
    }

    v28 = sub_1958770(v7, v17);
    v32 = v28;
    *(a1 + 48) = v29;
    if (!v28)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v11 == 1 && v8 == 10)
  {
    v22 = v7 - 1;
    while (1)
    {
      v23 = (v22 + 1);
      v32 = v22 + 1;
      v24 = *(a1 + 40);
      if (v24 && (v25 = *(a1 + 32), v25 < *v24))
      {
        *(a1 + 32) = v25 + 1;
        v26 = *&v24[2 * v25 + 2];
      }

      else
      {
        v27 = sub_155136C(*(a1 + 24));
        v26 = sub_19593CC(a1 + 24, v27);
        v23 = v32;
      }

      v22 = sub_21FC4F0(a3, v26, v23);
      v32 = v22;
      if (!v22)
      {
        goto LABEL_48;
      }

      if (*a3 <= v22 || *v22 != 10)
      {
        goto LABEL_39;
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
      v7 = v32;
    }

    v32 = sub_1952690(v8, v15, v7, a3);
    if (!v32)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_1523B60(uint64_t a1, char *__dst, _DWORD *a3)
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
      v9 = *(v8 + 56);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_15317E4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 48);
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
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v12 - 1) = __dst | 0x80;
          LODWORD(__dst) = v14 >> 7;
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
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

  if ((v11 & 2) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 52);
    *v12 = 24;
    v12[1] = v17;
    if (v17 > 0x7F)
    {
      v12[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v12[2] = v17 >> 7;
      v16 = v12 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v12) = v12[2];
        do
        {
          *(v16 - 1) = v12 | 0x80;
          LODWORD(v12) = v18 >> 7;
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v12 + 2;
    }
  }

  else
  {
    v16 = v12;
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v16;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  if (*a3 - v16 >= v23)
  {
    v25 = v23;
    memcpy(v16, v24, v23);
    v16 += v25;
    return v16;
  }

  return sub_1957130(a3, v24, v23, v16);
}

uint64_t sub_1523DA8(uint64_t a1)
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
      v7 = sub_15319C4(v6);
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
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_1523EAC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1347FD8(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
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
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_1523FB0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_156A600(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1524030(void *a1)
{
  sub_1523FB0(a1);

  operator delete();
}

uint64_t sub_1524068(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1523858(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
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

char *sub_15240F8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 3)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
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
        v32 = v17;
        *(a1 + 56) = v16;
        goto LABEL_40;
      }

      v28 = sub_19587DC(v7, v16);
      v32 = v28;
      *(a1 + 56) = v29;
      if (!v28)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v11 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 1u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_39:
        v32 = v26;
        *(a1 + 48) = v25;
        goto LABEL_40;
      }

      v30 = sub_19587DC(v7, v25);
      v32 = v30;
      *(a1 + 48) = v31;
      if (!v30)
      {
        goto LABEL_49;
      }
    }

LABEL_40:
    if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v19 = v7 - 1;
    while (1)
    {
      v20 = (v19 + 1);
      v32 = v19 + 1;
      v21 = *(a1 + 40);
      if (v21 && (v22 = *(a1 + 32), v22 < *v21))
      {
        *(a1 + 32) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
      }

      else
      {
        v24 = sub_152B280(*(a1 + 24));
        v23 = sub_19593CC(a1 + 24, v24);
        v20 = v32;
      }

      v19 = sub_2219D68(a3, v23, v20);
      v32 = v19;
      if (!v19)
      {
        goto LABEL_49;
      }

      if (*a3 <= v19 || *v19 != 26)
      {
        goto LABEL_40;
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
      v7 = v32;
    }

    v32 = sub_1952690(v8, v15, v7, a3);
    if (!v32)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_1524370(uint64_t a1, char *__dst, _DWORD *a3)
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

    v12 = *(a1 + 56);
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

      v11 = sub_1523B60(v17, v19, a3);
    }
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v11;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *(v22 + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  if (*a3 - v11 >= v23)
  {
    v25 = v23;
    memcpy(v11, v24, v23);
    v11 += v25;
    return v11;
  }

  return sub_1957130(a3, v24, v23, v11);
}

uint64_t sub_15245BC(uint64_t a1)
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
      v7 = sub_1523DA8(v6);
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
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
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

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_15246B8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_156C520(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
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
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15247BC(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_27761F0)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }

    if (*(a1 + 112))
    {
      sub_16EB0C0();
      operator delete();
    }

    if (*(a1 + 120))
    {
      sub_16E4E08();
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956AFC((a1 + 72));
  sub_156A684((a1 + 48));
  sub_156A600((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15248E8(uint64_t a1)
{
  sub_15247BC(a1);

  operator delete();
}

uint64_t sub_1524920(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_1523858(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_1524068(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  result = sub_12A41D0(a1 + 72);
  v9 = *(a1 + 16);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    result = sub_16E5B70(*(a1 + 104));
    if ((v9 & 4) == 0)
    {
LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_26;
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

LABEL_26:
  result = sub_16EB0FC(*(a1 + 112));
  if ((v9 & 8) != 0)
  {
LABEL_14:
    result = sub_16E4E44(*(a1 + 120));
  }

LABEL_15:
  if ((v9 & 0x70) != 0)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_1524A50(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 5)
    {
      break;
    }

    if (v8 >> 3 <= 7)
    {
      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 8u;
        v31 = *(a1 + 120);
        if (!v31)
        {
          v32 = *(a1 + 8);
          v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
          if (v32)
          {
            v33 = *v33;
          }

          v31 = sub_16F5828(v33);
          *(a1 + 120) = v31;
          v7 = *v65;
        }

        v15 = sub_21F4D60(a3, v31, v7);
        goto LABEL_101;
      }

      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_94;
      }

      v24 = (v7 + 1);
      v25 = *v7;
      if (v25 < 0)
      {
        v26 = *v24;
        v27 = (v26 << 7) + v25;
        LODWORD(v25) = v27 - 128;
        if ((v26 & 0x80000000) == 0)
        {
          v24 = (v7 + 2);
          goto LABEL_44;
        }

        *v65 = sub_19587DC(v7, (v27 - 128));
        if (!*v65)
        {
          goto LABEL_114;
        }

        LODWORD(v25) = v60;
      }

      else
      {
LABEL_44:
        *v65 = v24;
      }

      if (sub_1796880(v25))
      {
        *(a1 + 16) |= 0x40u;
        *(a1 + 144) = v25;
      }

      else
      {
        sub_13ED178();
      }

      goto LABEL_102;
    }

    if (v11 == 8)
    {
      if (v8 == 66)
      {
        v40 = (v7 - 1);
        while (1)
        {
          v41 = (v40 + 1);
          *v65 = v40 + 1;
          v42 = *(a1 + 64);
          if (v42 && (v43 = *(a1 + 56), v43 < *v42))
          {
            *(a1 + 56) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = sub_152B31C(*(a1 + 48));
            v44 = sub_19593CC(a1 + 48, v45);
            v41 = *v65;
          }

          v40 = sub_2219DF8(a3, v44, v41);
          *v65 = v40;
          if (!v40)
          {
            goto LABEL_114;
          }

          if (*a3 <= v40 || *v40 != 66)
          {
            goto LABEL_102;
          }
        }
      }

      goto LABEL_94;
    }

    if (v11 == 9)
    {
      if (v8 == 74)
      {
        v49 = (v7 - 1);
        while (1)
        {
          v50 = (v49 + 1);
          *v65 = v49 + 1;
          v51 = *(a1 + 88);
          if (v51 && (v52 = *(a1 + 80), v52 < *v51))
          {
            *(a1 + 80) = v52 + 1;
            v53 = *&v51[2 * v52 + 2];
          }

          else
          {
            v54 = *(a1 + 72);
            if (!v54)
            {
              operator new();
            }

            *v56 = v55;
            v56[1] = sub_195A650;
            *v55 = 0;
            v55[1] = 0;
            v55[2] = 0;
            v53 = sub_19593CC(a1 + 72, v55);
            v50 = *v65;
          }

          v49 = sub_1958890(v53, v50, a3);
          *v65 = v49;
          if (!v49)
          {
            goto LABEL_114;
          }

          if (*a3 <= v49 || *v49 != 74)
          {
            goto LABEL_102;
          }
        }
      }

      goto LABEL_94;
    }

    if (v11 != 10 || v8 != 80)
    {
      goto LABEL_94;
    }

    v5 |= 0x20u;
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
      *v65 = v17;
      *(a1 + 136) = v16;
      goto LABEL_102;
    }

    v63 = sub_19587DC(v7, v16);
    *v65 = v63;
    *(a1 + 136) = v64;
    if (!v63)
    {
      goto LABEL_114;
    }

LABEL_102:
    if (sub_195ADC0(a3, v65, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 != 2 || v8 != 18)
      {
        goto LABEL_94;
      }

      *(a1 + 16) |= 2u;
      v20 = *(a1 + 104);
      if (!v20)
      {
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        sub_16F58FC(v22);
        v20 = v23;
        *(a1 + 104) = v23;
        v7 = *v65;
      }

      v15 = sub_21F86E8(a3, v20, v7);
LABEL_101:
      *v65 = v15;
      if (!v15)
      {
        goto LABEL_114;
      }

      goto LABEL_102;
    }

    if (v8 != 8)
    {
      goto LABEL_94;
    }

    v5 |= 0x10u;
    v29 = (v7 + 1);
    v28 = *v7;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v30 = *v29;
    v28 = (v30 << 7) + v28 - 128;
    if ((v30 & 0x80000000) == 0)
    {
      v29 = (v7 + 2);
LABEL_51:
      *v65 = v29;
      *(a1 + 128) = v28;
      goto LABEL_102;
    }

    v61 = sub_19587DC(v7, v28);
    *v65 = v61;
    *(a1 + 128) = v62;
    if (!v61)
    {
      goto LABEL_114;
    }

    goto LABEL_102;
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_94;
      }

      *(a1 + 16) |= 1u;
      v46 = *(a1 + 8);
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      if (v46)
      {
        v47 = *v47;
      }

      v48 = sub_194DB04((a1 + 96), v47);
      v15 = sub_1958890(v48, *v65, a3);
    }

    else
    {
      if (v11 != 5 || v8 != 42)
      {
        goto LABEL_94;
      }

      *(a1 + 16) |= 4u;
      v12 = *(a1 + 112);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_16F5DB8(v14);
        *(a1 + 112) = v12;
        v7 = *v65;
      }

      v15 = sub_21F8D18(a3, v12, v7);
    }

    goto LABEL_101;
  }

  if (v8 == 26)
  {
    v34 = (v7 - 1);
    while (1)
    {
      v35 = (v34 + 1);
      *v65 = v34 + 1;
      v36 = *(a1 + 40);
      if (v36 && (v37 = *(a1 + 32), v37 < *v36))
      {
        *(a1 + 32) = v37 + 1;
        v38 = *&v36[2 * v37 + 2];
      }

      else
      {
        v39 = sub_152B280(*(a1 + 24));
        v38 = sub_19593CC(a1 + 24, v39);
        v35 = *v65;
      }

      v34 = sub_2219D68(a3, v38, v35);
      *v65 = v34;
      if (!v34)
      {
        goto LABEL_114;
      }

      if (*a3 <= v34 || *v34 != 26)
      {
        goto LABEL_102;
      }
    }
  }

LABEL_94:
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
      v7 = *v65;
    }

    v15 = sub_1952690(v8, v59, v7, a3);
    goto LABEL_101;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_114:
  *v65 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v65;
}

char *sub_1525040(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
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

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v11 = *(a1 + 104);
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

    v6 = sub_16E5FE0(v11, v13, a3);
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

      v6 = sub_1523B60(v16, v18, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 4, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 4) == 0)
    {
LABEL_27:
      if ((v5 & 8) == 0)
      {
        goto LABEL_28;
      }

LABEL_37:
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v23 = *(a1 + 120);
      *v6 = 50;
      v24 = *(v23 + 44);
      v6[1] = v24;
      if (v24 > 0x7F)
      {
        v25 = sub_19575D0(v24, v6 + 1);
      }

      else
      {
        v25 = v6 + 2;
      }

      v6 = sub_16E5070(v23, v25, a3);
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_27;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 112);
  *v6 = 42;
  v21 = *(v20 + 20);
  v6[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v6 + 1);
  }

  else
  {
    v22 = v6 + 2;
  }

  v6 = sub_16EBD38(v20, v22, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  if ((v5 & 0x40) == 0)
  {
LABEL_29:
    v19 = v6;
    goto LABEL_50;
  }

LABEL_43:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v26 = *(a1 + 144);
  *v6 = 56;
  v6[1] = v26;
  if (v26 > 0x7F)
  {
    v6[1] = v26 | 0x80;
    v27 = v26 >> 7;
    v6[2] = v26 >> 7;
    v19 = v6 + 3;
    if (v26 >= 0x4000)
    {
      LOBYTE(v28) = v6[2];
      do
      {
        *(v19 - 1) = v28 | 0x80;
        v28 = v27 >> 7;
        *v19++ = v27 >> 7;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
    }
  }

  else
  {
    v19 = v6 + 2;
  }

LABEL_50:
  v30 = *(a1 + 56);
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v32 = *(*(a1 + 64) + 8 * j + 8);
      *v19 = 66;
      v33 = *(v32 + 20);
      v19[1] = v33;
      if (v33 > 0x7F)
      {
        v34 = sub_19575D0(v33, v19 + 1);
      }

      else
      {
        v34 = v19 + 2;
      }

      v19 = sub_1524370(v32, v34, a3);
    }
  }

  v35 = *(a1 + 80);
  if (v35 >= 1)
  {
    v36 = 8;
    do
    {
      v37 = *(*(a1 + 88) + v36);
      v38 = *(v37 + 23);
      if (v38 < 0 && (v38 = v37[1], v38 > 127) || *a3 - v19 + 14 < v38)
      {
        v19 = sub_1957480(a3, 9, v37, v19);
      }

      else
      {
        *v19 = 74;
        v19[1] = v38;
        if (*(v37 + 23) < 0)
        {
          v37 = *v37;
        }

        v39 = v19 + 2;
        memcpy(v19 + 2, v37, v38);
        v19 = &v39[v38];
      }

      v36 += 8;
      --v35;
    }

    while (v35);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v41 = *(a1 + 136);
    *v19 = 80;
    v19[1] = v41;
    if (v41 > 0x7F)
    {
      v19[1] = v41 | 0x80;
      v42 = v41 >> 7;
      v19[2] = v41 >> 7;
      v40 = v19 + 3;
      if (v41 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v40 - 1) = v19 | 0x80;
          v19 = (v42 >> 7);
          *v40++ = v42 >> 7;
          v43 = v42 >> 14;
          v42 >>= 7;
        }

        while (v43);
      }
    }

    else
    {
      v40 = v19 + 2;
    }
  }

  else
  {
    v40 = v19;
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

  if (*a3 - v40 >= v47)
  {
    v49 = v47;
    memcpy(v40, v48, v47);
    v40 += v49;
    return v40;
  }

  return sub_1957130(a3, v48, v47, v40);
}

uint64_t sub_1525584(uint64_t a1)
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
      v7 = sub_1523DA8(v6);
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
      v14 = sub_15245BC(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  if (v15 >= 1)
  {
    v17 = (*(a1 + 88) + 8);
    do
    {
      v18 = *v17++;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v16 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      --v15;
    }

    while (v15);
  }

  v21 = *(a1 + 16);
  if ((v21 & 0x7F) != 0)
  {
    if (v21)
    {
      v27 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v28 = *(v27 + 23);
      v29 = *(v27 + 8);
      if ((v28 & 0x80u) == 0)
      {
        v29 = v28;
      }

      v16 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v21 & 2) == 0)
      {
LABEL_23:
        if ((v21 & 4) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_38;
      }
    }

    else if ((v21 & 2) == 0)
    {
      goto LABEL_23;
    }

    v30 = sub_16E62F4(*(a1 + 104));
    v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 4) == 0)
    {
LABEL_24:
      if ((v21 & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_39;
    }

LABEL_38:
    v31 = sub_16EC25C(*(a1 + 112));
    v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 8) == 0)
    {
LABEL_25:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_40;
    }

LABEL_39:
    v32 = sub_16E51F0(*(a1 + 120));
    v16 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v21 & 0x10) == 0)
    {
LABEL_26:
      if ((v21 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }

LABEL_40:
    v16 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v21 & 0x20) == 0)
    {
LABEL_27:
      if ((v21 & 0x40) == 0)
      {
        goto LABEL_32;
      }

LABEL_28:
      v22 = *(a1 + 144);
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v22 >= 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 11;
      }

      v16 += v24;
      goto LABEL_32;
    }

LABEL_41:
    v16 += ((9 * (__clz(*(a1 + 136) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_32:
  v25 = *(a1 + 8);
  if (v25)
  {
    v33 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    v16 += v34;
  }

  *(a1 + 20) = v16;
  return v16;
}

void sub_152584C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_156C520((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_156C5AC((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1201B48(a1 + 72, v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x7F) != 0)
  {
    if (v19)
    {
      v21 = *(a2 + 96);
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      sub_194EA1C((a1 + 96), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_35;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v24 = *(a1 + 104);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_16F58FC(v26);
      *(a1 + 104) = v24;
    }

    if (*(a2 + 104))
    {
      v27 = *(a2 + 104);
    }

    else
    {
      v27 = &off_277E650;
    }

    sub_16E645C(v24, v27);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(a1 + 16) |= 4u;
    v28 = *(a1 + 112);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_16F5DB8(v30);
      *(a1 + 112) = v28;
    }

    if (*(a2 + 112))
    {
      v31 = *(a2 + 112);
    }

    else
    {
      v31 = &off_277E820;
    }

    sub_16EC8A0(v28, v31);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_51;
    }

LABEL_43:
    *(a1 + 16) |= 8u;
    v32 = *(a1 + 120);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_16F5828(v34);
      *(a1 + 120) = v32;
    }

    if (*(a2 + 120))
    {
      v35 = *(a2 + 120);
    }

    else
    {
      v35 = &off_277E5E8;
    }

    sub_16E527C(v32, v35);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(a1 + 128) = *(a2 + 128);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
LABEL_19:
        *(a1 + 16) |= v19;
        goto LABEL_20;
      }

LABEL_18:
      *(a1 + 144) = *(a2 + 144);
      goto LABEL_19;
    }

LABEL_52:
    *(a1 + 136) = *(a2 + 136);
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1525B30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16E6614(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_16ECE70(*(a1 + 112));
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

  result = sub_16E5370(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1525BA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26EC0C0;
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

void sub_1525CC0(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1525D00(uint64_t a1)
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

void sub_1525DA8(uint64_t a1)
{
  sub_1525D00(a1);

  operator delete();
}

uint64_t sub_1525DE0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1526024(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_152619C(uint64_t a1)
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

void *sub_152628C(void *a1)
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

void sub_1526300(void *a1)
{
  sub_152628C(a1);

  operator delete();
}

uint64_t sub_1526338(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
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

char *sub_1526360(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_34;
      }

      v5 |= 4u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_33:
        v29 = v20;
        *(a1 + 36) = v19 != 0;
        goto LABEL_41;
      }

      v27 = sub_19587DC(v7, v19);
      v29 = v27;
      *(a1 + 36) = v28 != 0;
      if (!v27)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v11 != 4 || v8 != 32)
      {
        goto LABEL_34;
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
        v29 = v16;
        *(a1 + 40) = v17;
        goto LABEL_41;
      }

      v25 = sub_1958770(v7, v17);
      v29 = v25;
      *(a1 + 40) = v26;
      if (!v25)
      {
        goto LABEL_53;
      }
    }

LABEL_41:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 == 9)
    {
      v5 |= 1u;
      *(a1 + 24) = *v7;
      v29 = v7 + 8;
      goto LABEL_41;
    }
  }

  else if (v11 == 2 && v8 == 16)
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
      v29 = sub_19587DC(v7, v13);
      if (!v29)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v14 = v7 + 2;
LABEL_17:
      v29 = v14;
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

    goto LABEL_41;
  }

LABEL_34:
  if (v8)
  {
    v22 = (v8 & 7) == 4;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = *(a1 + 8);
    if (v23)
    {
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v24 = sub_11F1920((a1 + 8));
      v7 = v29;
    }

    v29 = sub_1952690(v8, v24, v7, a3);
    if (!v29)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_1526600(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *__dst = 9;
    *(__dst + 1) = v6;
    __dst += 9;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 32);
    *__dst = 16;
    __dst[1] = v8;
    if (v8 > 0x7F)
    {
      __dst[1] = v8 | 0x80;
      v9 = v8 >> 7;
      __dst[2] = v8 >> 7;
      v7 = __dst + 3;
      if (v8 >= 0x4000)
      {
        LOBYTE(v10) = __dst[2];
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
      v7 = __dst + 2;
    }
  }

  else
  {
    v7 = __dst;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 36);
    *v7 = 24;
    v7[1] = v12;
    v7 += 2;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 40);
    *v7 = 32;
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v7[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v7[2] = v14 >> 7;
      v13 = v7 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v7) = v7[2];
        do
        {
          *(v13 - 1) = v7 | 0x80;
          LODWORD(v7) = v15 >> 7;
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = v7 + 2;
    }
  }

  else
  {
    v13 = v7;
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v13;
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

  if (*a3 - v13 >= v20)
  {
    v22 = v20;
    memcpy(v13, v21, v20);
    v13 += v22;
    return v13;
  }

  return sub_1957130(a3, v21, v20, v13);
}

uint64_t sub_152681C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(a1 + 32);
      if (v3 < 0)
      {
        v4 = 11;
      }

      else
      {
        v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v4;
    }

    v5 = v2 + ((v1 >> 1) & 2);
    if ((v1 & 8) != 0)
    {
      v5 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v5 += v9;
  }

  *(a1 + 20) = v5;
  return v5;
}

std::string *sub_15268D4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      result[1].__r_.__value_.__s.__data_[12] = *(a2 + 36);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_1526960(uint64_t a1)
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
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1526A24(uint64_t a1)
{
  sub_1526960(a1);

  operator delete();
}

uint64_t sub_1526A5C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v31, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v31 + 1);
    v7 = **v31;
    if (**v31 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v31, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v31 + 2);
      }
    }

    *v31 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4 && v7 == 34)
        {
          v15 = v6 - 1;
          while (1)
          {
            v16 = v15 + 1;
            *v31 = v15 + 1;
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
              v16 = *v31;
            }

            v15 = sub_22002C0(a3, v19, v16);
            *v31 = v15;
            if (!v15)
            {
              break;
            }

            if (*a3 <= v15 || *v15 != 34)
            {
              goto LABEL_49;
            }
          }

LABEL_57:
          *v31 = 0;
          return *v31;
        }

LABEL_41:
        if (v7)
        {
          v27 = (v7 & 7) == 4;
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          if (v6)
          {
            a3[10].i32[0] = v7 - 1;
            return *v31;
          }

          goto LABEL_57;
        }

        v28 = *(a1 + 8);
        if (v28)
        {
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v29 = sub_11F1920((a1 + 8));
          v6 = *v31;
        }

        v26 = sub_1952690(v7, v29, v6, a3);
        goto LABEL_48;
      }

      if (v7 != 26)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 2u;
      v24 = *(a1 + 8);
      v13 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v13 = *v13;
      }

      v14 = (a1 + 56);
    }

    else
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v22 = v6 + 1;
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            *v31 = sub_19587DC(v6, v21);
            if (!*v31)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v22 = v6 + 2;
LABEL_33:
            *v31 = v22;
          }

          if (v21 > 2)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v21;
          }

          continue;
        }

        goto LABEL_41;
      }

      if (v10 != 2 || v7 != 18)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 48);
    }

    v25 = sub_194DB04(v14, v13);
    v26 = sub_1958890(v25, *v31, a3);
LABEL_48:
    *v31 = v26;
    if (!v26)
    {
      goto LABEL_57;
    }

LABEL_49:
    ;
  }

  return *v31;
}

char *sub_1526CF4(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 64);
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 3, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v6);
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
      *v6 = 34;
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

      v6 = sub_16E74A8(v13, v15, a3);
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v19)
  {
    v21 = v19;
    memcpy(v6, v20, v19);
    v6 += v21;
    return v6;
  }

  return sub_1957130(a3, v20, v19, v6);
}

uint64_t sub_1526EF8(uint64_t a1)
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

  v8 = *(a1 + 16);
  if ((v8 & 7) == 0)
  {
    goto LABEL_24;
  }

  if (v8)
  {
    v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
LABEL_20:
    v15 = *(a1 + 64);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v16;
  }

LABEL_24:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_152708C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8540;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0x100000000;
  return result;
}

void *sub_152710C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E85C0;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_1527194(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8640;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_1527210(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E86C0;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_152728C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8740;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_1527308(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E87C0;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_1527384(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8840;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_1527400(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E88C0;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_152747C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8940;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_15274F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E89C0;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

uint64_t sub_1527574(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8A40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  return result;
}

void *sub_15275F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8AC0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_152767C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8B40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  return result;
}

uint64_t sub_1527700(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8BC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  return result;
}

uint64_t sub_1527784(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8C40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  return result;
}

uint64_t sub_1527808(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8CC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  return result;
}

uint64_t sub_152788C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8D40;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

double sub_1527914(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E8DC0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  return result;
}

void *sub_15279A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E8E40;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_1527A30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E8EC0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  result[10] = &qword_278E990;
  result[11] = &qword_278E990;
  return result;
}

uint64_t sub_1527ADC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E8F40;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_1527B64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E8FC0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = a1;
  result[7] = 0;
  result[8] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_1527C0C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9040;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_1527CAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E90C0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  result = 0.0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0;
  return result;
}

uint64_t sub_1527D78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E9140;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1527DF4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E91C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

double sub_1527E90(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26E9240;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = a1;
  *(v2 + 160) = 0;
  result = 0.0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  return result;
}

uint64_t sub_1527F5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E92C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

void *sub_1527FE4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9340;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = &qword_278E990;
  result[9] = &qword_278E990;
  result[10] = 0;
  return result;
}

double sub_1528090(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_14E628C(v2, a1, 0);
}

void *sub_15280F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9440;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_1528174(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E94C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  return result;
}

void *sub_15281FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9540;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  return result;
}

double sub_1528284(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E95C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_1528304(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9640;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

double sub_1528388(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E96C0;
  result = 0.0;
  *(v2 + 16) = xmmword_232F5B0;
  *(v2 + 32) = 1;
  return result;
}

uint64_t sub_1528410(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E9740;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_152848C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E97C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  return result;
}

void *sub_1528528(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9840;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_15285A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E98C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[5] = 0;
  result[6] = 0;
  result[4] = a1;
  return result;
}

double sub_1528644(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E9940;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_15286C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26E99C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_1528744(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9A40;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_15287EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26E9AC0;
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
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

void *sub_15288A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9B40;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_152891C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26E9BC0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  return result;
}

void *sub_15289A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9C40;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_1528A2C(uint64_t a1)
{
  if (!a1)
  {

    sub_156C638();
  }

  *result = &off_26E9CC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  return result;
}

void *sub_1528AA8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9D40;
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
  result[12] = &qword_278E990;
  result[13] = &qword_278E990;
  result[14] = 0;
  result[15] = 0;
  *(result + 125) = 0;
  return result;
}

void *sub_1528B68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9DC0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = 0;
  return result;
}

void *sub_1528C00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26E9E40;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_1528C84(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26E9EC0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = 0;
  *(result + 44) = 1;
  return result;
}

uint64_t sub_1528D14(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9F40;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = &qword_278E990;
  *(result + 72) = &qword_278E990;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  return result;
}

uint64_t sub_1528DCC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26E9FC0;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1528E80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA040;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = &qword_278E990;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 1;
  return result;
}

void *sub_1528F34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EA0C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

double sub_1528FB8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26EA140;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 1;
  return result;
}

void *sub_152903C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EA1C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_15290C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA240;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = a1;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = a1;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 272) = 1;
  return result;
}

uint64_t sub_15291A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EA2C0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1529230(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EA340;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

void *sub_15292B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA3C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = 0;
  return result;
}

uint64_t sub_1529368(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA440;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_1529410(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA4C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

uint64_t sub_15294BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA540;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = 0;
  return result;
}

void *sub_1529564(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA5C0;
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
  result[12] = &qword_278E990;
  result[13] = &qword_278E990;
  result[15] = 0;
  result[16] = 0;
  result[14] = 0;
  return result;
}

uint64_t sub_1529624(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA640;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 58) = 0;
  return result;
}

void *sub_15296D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EA6C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  return result;
}

void *sub_1529780(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EA740;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  return result;
}

uint64_t sub_152980C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EA7C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = &qword_278E990;
  *(result + 96) = 0;
  *(result + 102) = 0;
  *(result + 112) = -9;
  return result;
}

uint64_t sub_15298CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26EA840;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_1529948(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EA8C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = 0;
  return result;
}

uint64_t sub_15299D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EA940;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

void *sub_1529A58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EA9C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = 0;
  return result;
}

uint64_t sub_1529B00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EAA40;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1529B7C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EAAC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1529BF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EAB40;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_1529C98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *&result = sub_15075D8(v2, a1, 0).n128_u64[0];
  return result;
}

void *sub_1529CF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EAC40;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

uint64_t sub_1529D9C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26EACC0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

void *sub_1529E24(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EAD40;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_1529EC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EADC0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_1529F6C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EAE40;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_152A010(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EAEC0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_152A0B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EAF40;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0xFFFFFFF700000000;
  return result;
}

uint64_t sub_152A138(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EAFC0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_152A1B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EB040;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_152A23C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EB0C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = a1;
  *(result + 112) = a1;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = a1;
  *(result + 152) = a1;
  *(result + 160) = 0;
  *(result + 168) = 0;
  *(result + 176) = a1;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 200) = 0;
  *(result + 208) = 0;
  return result;
}

uint64_t sub_152A314(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EB140;
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

void *sub_152A3B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EB1C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = a1;
  result[7] = 0;
  result[8] = 0;
  result[6] = 0;
  *(result + 69) = 0;
  return result;
}

void *sub_152A464(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EB240;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_152A4DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EB2C0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_152A558(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EB340;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_152A5D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EB3C0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_152A64C(uint64_t a1)
{
  if (!a1)
  {

    sub_156C69C();
  }

  return sub_15123C4(v3, a1, 0);
}

double sub_152A6A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26EB4C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

uint64_t sub_152A728(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EB540;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_152A7C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26EB5C0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_152A844(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26EB640;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_152A8C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26EB6C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 61) = 0u;
  return result;
}

uint64_t sub_152A944(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EB740;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = a1;
  *(result + 112) = 0;
  *(result + 116) = 0;
  return result;
}

double sub_152AA00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26EB7C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 1;
  return result;
}

uint64_t sub_152AA84(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EB840;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

uint64_t sub_152AB20(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EB8C0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_152AB9C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EB940;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 1;
  return result;
}

double sub_152AC40(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26EB9C0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  return result;
}

uint64_t sub_152ACC0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EBA40;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_152AD60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EBAC0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  return result;
}

void *sub_152ADEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EBB40;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_152AE74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EBBC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 106) = 0u;
  return result;
}

double sub_152AF24(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26EBC40;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = &qword_278E990;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  return result;
}

void *sub_152AFD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EBCC0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_152B054(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EBD40;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

void *sub_152B0F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26EBDC0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_152B17C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EBE40;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = 0;
  return result;
}

uint64_t sub_152B224(uint64_t a1)
{
  if (!a1)
  {

    sub_156C708();
  }

  return sub_1520594(v3, a1, 0);
}

void *sub_152B280(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EBF40;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_152B31C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EBFC0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

double sub_152B3B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26EC040;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = &qword_278E990;
  result = 0.0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 132) = 0u;
  return result;
}

void *sub_152B480(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26EC0C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

uint64_t sub_152B524(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26EC140;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_152B5A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26EC1C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = 0;
  return result;
}

uint64_t *sub_152B68C(int a1)
{
  if ((atomic_load_explicit(&qword_27CC620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CC620))
  {
    byte_27CC618 = sub_1956BB4(&off_26EDA30, "\a", 9, byte_27CC628);
    __cxa_guard_release(&qword_27CC620);
  }

  v2 = sub_1956B30(&off_26EDA30, "\a", 9uLL, a1);
  if (v2 != -1)
  {
    return &byte_27CC628[24 * v2];
  }

  if ((atomic_load_explicit(byte_278E9A8, memory_order_acquire) & 1) == 0)
  {
    sub_1956C4C();
  }

  return &qword_278E990;
}

uint64_t sub_152B774(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26EC240;
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
  *(a1 + 120) = &qword_278E990;
  *(a1 + 128) = &qword_278E990;
  *(a1 + 136) = &qword_278E990;
  *(a1 + 144) = &qword_278E990;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  return a1;
}

void sub_152B820(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_152B850(void *a1)
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

  sub_152B900(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13EBF74(a1 + 12);
  sub_12E6204(a1 + 9);
  sub_156C774(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_152B900(uint64_t a1)
{
  v3 = *(a1 + 120);
  v2 = (a1 + 120);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C((a1 + 128));
  }

  if (*(a1 + 136) != &qword_278E990)
  {
    sub_194E89C((a1 + 136));
  }

  result = (a1 + 144);
  if (*(a1 + 144) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2776328)
  {
    v5 = *(a1 + 152);
    if (v5)
    {
      sub_16E5B34(v5);
      operator delete();
    }

    if (*(a1 + 160))
    {
      sub_16ED13C();
      operator delete();
    }

    if (*(a1 + 168))
    {
      sub_16ED13C();
      operator delete();
    }

    if (*(a1 + 176))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 184))
    {
      sub_16EB0C0();
      operator delete();
    }

    if (*(a1 + 192))
    {
      sub_16F0320();
      operator delete();
    }

    v6 = *(a1 + 200);
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }

    result = *(a1 + 208);
    if (result)
    {
      sub_152E008(result);

      operator delete();
    }
  }

  return result;
}

void sub_152BA9C(void *a1)
{
  sub_152B850(a1);

  operator delete();
}

uint64_t sub_152BAD4(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_15344F0(v5);
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
      result = sub_16E4E44(v8);
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
      result = sub_16EF1B4(v11);
      --v9;
    }

    while (v9);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 40);
  if (!v12)
  {
    goto LABEL_23;
  }

  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_45:
    v16 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v16 + 23) < 0)
    {
      **v16 = 0;
      *(v16 + 8) = 0;
      if ((v12 & 4) != 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      *v16 = 0;
      *(v16 + 23) = 0;
      if ((v12 & 4) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_17:
    if ((v12 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_53:
    v18 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v18 + 23) < 0)
    {
      **v18 = 0;
      *(v18 + 8) = 0;
      if ((v12 & 0x10) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      *v18 = 0;
      *(v18 + 23) = 0;
      if ((v12 & 0x10) != 0)
      {
        goto LABEL_57;
      }
    }

LABEL_19:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_58:
    result = sub_16ED178(*(a1 + 160));
    if ((v12 & 0x40) == 0)
    {
LABEL_21:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_59;
  }

  v15 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_45;
    }
  }

LABEL_16:
  if ((v12 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_49:
  v17 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v17 + 23) < 0)
  {
    **v17 = 0;
    *(v17 + 8) = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    *v17 = 0;
    *(v17 + 23) = 0;
    if ((v12 & 8) != 0)
    {
      goto LABEL_53;
    }
  }

LABEL_18:
  if ((v12 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_57:
  result = sub_16E5B70(*(a1 + 152));
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_58;
  }

LABEL_20:
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_59:
  result = sub_16ED178(*(a1 + 168));
  if ((v12 & 0x80) != 0)
  {
LABEL_22:
    result = sub_16E4E44(*(a1 + 176));
  }

LABEL_23:
  if ((v12 & 0xF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v12 & 0x100) != 0)
  {
    result = sub_16EB0FC(*(a1 + 184));
    if ((v12 & 0x200) == 0)
    {
LABEL_26:
      if ((v12 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_42;
    }
  }

  else if ((v12 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  result = sub_16F035C(*(a1 + 192));
  if ((v12 & 0x400) == 0)
  {
LABEL_27:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_42:
  result = sub_16E5B70(*(a1 + 200));
  if ((v12 & 0x800) != 0)
  {
LABEL_28:
    result = sub_152BD38(*(a1 + 208));
  }

LABEL_29:
  if ((v12 & 0xF000) != 0)
  {
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  if ((v12 & 0x1F0000) != 0)
  {
    *(a1 + 244) = 0;
    *(a1 + 236) = 0;
    *(a1 + 260) = 0;
    *(a1 + 252) = 0;
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

uint64_t sub_152BD38(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_17DB104(*(result + 24));
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

    result = sub_16E4E44(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_16E4E44(*(v1 + 40));
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

uint64_t sub_152BDC0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v101 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v101, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v101 + 1);
    v8 = **v101;
    if (**v101 < 0)
    {
      v8 = v8 + (*v7 << 7) - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v101, v8);
      }

      else
      {
        v7 = (*v101 + 2);
      }
    }

    *v101 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_149;
        }

        v5 |= 0x1000u;
        v10 = (v7 + 1);
        v9 = *v7;
        if ((v9 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v11 = *v10;
        v9 = (v11 << 7) + v9 - 128;
        if ((v11 & 0x80000000) == 0)
        {
          v10 = (v7 + 2);
LABEL_12:
          *v101 = v10;
          *(a1 + 216) = v9;
          goto LABEL_147;
        }

        v91 = sub_19587DC(v7, v9);
        *v101 = v91;
        *(a1 + 216) = v92;
        if (v91)
        {
          goto LABEL_147;
        }

        goto LABEL_185;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_149;
        }

        v5 |= 0x2000u;
        LODWORD(v46) = *v7;
        if ((v46 & 0x80000000) == 0)
        {
          v47 = v7 + 1;
LABEL_160:
          *v101 = v47;
          *(a1 + 224) = v46;
          goto LABEL_147;
        }

        v46 = (v7[1] << 7) + v46 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v47 = v7 + 2;
          goto LABEL_160;
        }

        v93 = sub_19587DC(v7, v46);
        *v101 = v93;
        *(a1 + 224) = v94;
        if (!v93)
        {
          goto LABEL_185;
        }

        goto LABEL_147;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_149;
        }

        v37 = (v7 + 1);
        v38 = *v7;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v39 = *v37;
        v40 = (v39 << 7) + v38;
        LODWORD(v38) = v40 - 128;
        if (v39 < 0)
        {
          *v101 = sub_19587DC(v7, (v40 - 128));
          if (!*v101)
          {
            goto LABEL_185;
          }

          LODWORD(v38) = v88;
        }

        else
        {
          v37 = (v7 + 2);
LABEL_59:
          *v101 = v37;
        }

        if (sub_14E9E48(v38))
        {
          *(a1 + 40) |= 0x4000u;
          *(a1 + 228) = v38;
        }

        else
        {
          sub_1313740();
        }

        goto LABEL_147;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 1u;
        v42 = *(a1 + 8);
        v16 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v42)
        {
          v16 = *v16;
        }

        v17 = (a1 + 120);
        goto LABEL_114;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 0x10u;
        v24 = *(a1 + 152);
        if (v24)
        {
          goto LABEL_145;
        }

        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        sub_16F58FC(v26);
        v24 = v27;
        *(a1 + 152) = v27;
        goto LABEL_144;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 0x20u;
        v43 = *(a1 + 160);
        if (v43)
        {
          goto LABEL_100;
        }

        v58 = *(a1 + 8);
        v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
        if (v58)
        {
          v59 = *v59;
        }

        v43 = sub_16F5E18(v59);
        *(a1 + 160) = v43;
        goto LABEL_99;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 2u;
        v66 = *(a1 + 8);
        v16 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
        if (v66)
        {
          v16 = *v16;
        }

        v17 = (a1 + 128);
        goto LABEL_114;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 0x40u;
        v43 = *(a1 + 168);
        if (v43)
        {
          goto LABEL_100;
        }

        v44 = *(a1 + 8);
        v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v45 = *v45;
        }

        v43 = sub_16F5E18(v45);
        *(a1 + 168) = v43;
LABEL_99:
        v7 = *v101;
LABEL_100:
        v51 = sub_21F4F10(a3, v43, v7);
        goto LABEL_146;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 0x80u;
        v74 = *(a1 + 176);
        if (!v74)
        {
          v75 = *(a1 + 8);
          v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
          if (v75)
          {
            v76 = *v76;
          }

          v74 = sub_16F5828(v76);
          *(a1 + 176) = v74;
          v7 = *v101;
        }

        v51 = sub_21F4D60(a3, v74, v7);
        goto LABEL_146;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_149;
        }

        v31 = v7 - 1;
        while (1)
        {
          v32 = v31 + 1;
          *v101 = v31 + 1;
          v33 = *(a1 + 64);
          if (v33 && (v34 = *(a1 + 56), v34 < *v33))
          {
            *(a1 + 56) = v34 + 1;
            v35 = *&v33[2 * v34 + 2];
          }

          else
          {
            v36 = sub_15516F0(*(a1 + 48));
            v35 = sub_19593CC(a1 + 48, v36);
            v32 = *v101;
          }

          v31 = sub_2219E88(a3, v35, v32);
          *v101 = v31;
          if (!v31)
          {
            goto LABEL_185;
          }

          if (*a3 <= v31 || *v31 != 82)
          {
            goto LABEL_147;
          }
        }

      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_149;
        }

        v72 = (v7 + 1);
        v71 = *v7;
        if ((v71 & 0x8000000000000000) == 0)
        {
          goto LABEL_125;
        }

        v73 = *v72;
        v71 = (v73 << 7) + v71 - 128;
        if (v73 < 0)
        {
          *v101 = sub_19587DC(v7, v71);
          if (!*v101)
          {
            goto LABEL_185;
          }
        }

        else
        {
          v72 = (v7 + 2);
LABEL_125:
          *v101 = v72;
        }

        if (v71 > 5)
        {
          sub_156E7E0();
        }

        else
        {
          *(a1 + 40) |= 0x8000u;
          *(a1 + 232) = v71;
        }

        goto LABEL_147;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_149;
        }

        v18 = (v7 - 1);
        while (1)
        {
          v19 = (v18 + 1);
          *v101 = v18 + 1;
          v20 = *(a1 + 88);
          if (v20 && (v21 = *(a1 + 80), v21 < *v20))
          {
            *(a1 + 80) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_16F5828(*(a1 + 72));
            v22 = sub_19593CC(a1 + 72, v23);
            v19 = *v101;
          }

          v18 = sub_21F4D60(a3, v22, v19);
          *v101 = v18;
          if (!v18)
          {
            goto LABEL_185;
          }

          if (*a3 <= v18 || *v18 != 98)
          {
            goto LABEL_147;
          }
        }

      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_149;
        }

        v5 |= 0x40000u;
        v29 = (v7 + 1);
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if (v30 < 0)
        {
          v86 = sub_19587DC(v7, v28);
          *v101 = v86;
          *(a1 + 248) = v87 != 0;
          if (!v86)
          {
            goto LABEL_185;
          }
        }

        else
        {
          v29 = (v7 + 2);
LABEL_44:
          *v101 = v29;
          *(a1 + 248) = v28 != 0;
        }

        goto LABEL_147;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_149;
        }

        v5 |= 0x10000u;
        LODWORD(v64) = *v7;
        if ((v64 & 0x80000000) == 0)
        {
          v65 = v7 + 1;
LABEL_163:
          *v101 = v65;
          *(a1 + 236) = v64;
          goto LABEL_147;
        }

        v64 = (v7[1] << 7) + v64 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v65 = v7 + 2;
          goto LABEL_163;
        }

        v95 = sub_19587DC(v7, v64);
        *v101 = v95;
        *(a1 + 236) = v96;
        if (!v95)
        {
          goto LABEL_185;
        }

        goto LABEL_147;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 4u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 136);
        goto LABEL_114;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 8u;
        v41 = *(a1 + 8);
        v16 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
        if (v41)
        {
          v16 = *v16;
        }

        v17 = (a1 + 144);
LABEL_114:
        v67 = sub_194DB04(v17, v16);
        v51 = sub_1958890(v67, *v101, a3);
        goto LABEL_146;
      case 0x11u:
        if (v8 != 137)
        {
          goto LABEL_149;
        }

        v5 |= 0x20000u;
        *(a1 + 240) = *v7;
        *v101 = v7 + 8;
        goto LABEL_147;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 0x100u;
        v48 = *(a1 + 184);
        if (!v48)
        {
          v49 = *(a1 + 8);
          v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v50 = *v50;
          }

          v48 = sub_16F5DB8(v50);
          *(a1 + 184) = v48;
          v7 = *v101;
        }

        v51 = sub_21F8D18(a3, v48, v7);
        goto LABEL_146;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 0x200u;
        v68 = *(a1 + 192);
        if (!v68)
        {
          v69 = *(a1 + 8);
          v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
          if (v69)
          {
            v70 = *v70;
          }

          v68 = sub_16F6144(v70);
          *(a1 + 192) = v68;
          v7 = *v101;
        }

        v51 = sub_21FC730(a3, v68, v7);
        goto LABEL_146;
      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 0x400u;
        v24 = *(a1 + 200);
        if (!v24)
        {
          v80 = *(a1 + 8);
          v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
          if (v80)
          {
            v81 = *v81;
          }

          sub_16F58FC(v81);
          v24 = v82;
          *(a1 + 200) = v82;
LABEL_144:
          v7 = *v101;
        }

LABEL_145:
        v51 = sub_21F86E8(a3, v24, v7);
        goto LABEL_146;
      case 0x15u:
        if (v8 != 170)
        {
          goto LABEL_149;
        }

        v52 = (v7 - 2);
        while (1)
        {
          v53 = (v52 + 2);
          *v101 = v52 + 2;
          v54 = *(a1 + 112);
          if (v54 && (v55 = *(a1 + 104), v55 < *v54))
          {
            *(a1 + 104) = v55 + 1;
            v56 = *&v54[2 * v55 + 2];
          }

          else
          {
            sub_16F60C0(*(a1 + 96));
            v56 = sub_19593CC(a1 + 96, v57);
            v53 = *v101;
          }

          v52 = sub_21F9E88(a3, v56, v53);
          *v101 = v52;
          if (!v52)
          {
            goto LABEL_185;
          }

          if (*a3 <= v52 || *v52 != 426)
          {
            goto LABEL_147;
          }
        }

      case 0x16u:
        if (v8 != 178)
        {
          goto LABEL_149;
        }

        *(a1 + 40) |= 0x800u;
        v60 = *(a1 + 208);
        if (!v60)
        {
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          sub_1550F7C(v62);
          v60 = v63;
          *(a1 + 208) = v63;
          v7 = *v101;
        }

        v51 = sub_2219F18(a3, v60, v7);
        goto LABEL_146;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_149;
        }

        v5 |= 0x80000u;
        v78 = (v7 + 1);
        v77 = *v7;
        if ((v77 & 0x8000000000000000) == 0)
        {
          goto LABEL_138;
        }

        v79 = *v78;
        v77 = (v79 << 7) + v77 - 128;
        if (v79 < 0)
        {
          v97 = sub_19587DC(v7, v77);
          *v101 = v97;
          *(a1 + 249) = v98 != 0;
          if (!v97)
          {
            goto LABEL_185;
          }
        }

        else
        {
          v78 = (v7 + 2);
LABEL_138:
          *v101 = v78;
          *(a1 + 249) = v77 != 0;
        }

        goto LABEL_147;
      default:
        if (v8 >> 3 == 100 && v8 == 32)
        {
          v5 |= 0x100000u;
          v13 = (v7 + 1);
          v12 = *v7;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if ((v14 & 0x80000000) == 0)
          {
            v13 = (v7 + 2);
LABEL_18:
            *v101 = v13;
            *(a1 + 256) = v12;
            goto LABEL_147;
          }

          v89 = sub_19587DC(v7, v12);
          *v101 = v89;
          *(a1 + 256) = v90;
          if (!v89)
          {
            goto LABEL_185;
          }

LABEL_147:
          if (sub_195ADC0(a3, v101, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_149:
        if (v8)
        {
          v83 = (v8 & 7) == 4;
        }

        else
        {
          v83 = 1;
        }

        if (!v83)
        {
          if (v8 - 1600 > 0xF9F)
          {
            v84 = *(a1 + 8);
            if (v84)
            {
              v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v99 = v8;
              v100 = sub_11F1920((a1 + 8));
              v8 = v99;
              v85 = v100;
              v7 = *v101;
            }

            v51 = sub_1952690(v8, v85, v7, a3);
          }

          else
          {
            v51 = sub_19525AC((a1 + 16), v8, v7, &off_2776328, (a1 + 8), a3);
          }

LABEL_146:
          *v101 = v51;
          if (!v51)
          {
            goto LABEL_185;
          }

          goto LABEL_147;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_185:
          *v101 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v101;
    }
  }
}

char *sub_152C800(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 216);
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

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 224);
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

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 228);
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
    v15 = sub_128AEEC(a3, 4, *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL, v15);
    if ((v5 & 0x10) == 0)
    {
LABEL_30:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_42;
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

  v19 = *(a1 + 152);
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

  v15 = sub_16E5FE0(v19, v21, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_31:
    if ((v5 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_48;
  }

LABEL_42:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v22 = *(a1 + 160);
  *v15 = 50;
  v23 = *(v22 + 20);
  v15[1] = v23;
  if (v23 > 0x7F)
  {
    v24 = sub_19575D0(v23, v15 + 1);
  }

  else
  {
    v24 = v15 + 2;
  }

  v15 = sub_16ED4B0(v22, v24, a3);
  if ((v5 & 2) == 0)
  {
LABEL_32:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_49;
  }

LABEL_48:
  v15 = sub_128AEEC(a3, 7, *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL, v15);
  if ((v5 & 0x40) == 0)
  {
LABEL_33:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v25 = *(a1 + 168);
  *v15 = 66;
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

  v15 = sub_16ED4B0(v25, v27, a3);
  if ((v5 & 0x80) != 0)
  {
LABEL_55:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v28 = *(a1 + 176);
    *v15 = 74;
    v29 = *(v28 + 44);
    v15[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v15 + 1);
    }

    else
    {
      v30 = v15 + 2;
    }

    v15 = sub_16E5070(v28, v30, a3);
  }

LABEL_61:
  v31 = *(a1 + 56);
  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v33 = *(*(a1 + 64) + 8 * i + 8);
      *v15 = 82;
      v34 = *(v33 + 20);
      v15[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v15 + 1);
      }

      else
      {
        v35 = v15 + 2;
      }

      v15 = sub_1535400(v33, v35, a3);
    }
  }

  if ((v5 & 0x8000) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v37 = *(a1 + 232);
    *v15 = 88;
    v15[1] = v37;
    if (v37 > 0x7F)
    {
      v15[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v15[2] = v37 >> 7;
      v36 = v15 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v39) = v15[2];
        do
        {
          *(v36 - 1) = v39 | 0x80;
          v39 = v38 >> 7;
          *v36++ = v38 >> 7;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v36 = v15 + 2;
    }
  }

  else
  {
    v36 = v15;
  }

  v41 = *(a1 + 80);
  if (v41)
  {
    for (j = 0; j != v41; ++j)
    {
      if (*a3 <= v36)
      {
        v36 = sub_225EB68(a3, v36);
      }

      v43 = *(*(a1 + 88) + 8 * j + 8);
      *v36 = 98;
      v44 = *(v43 + 44);
      v36[1] = v44;
      if (v44 > 0x7F)
      {
        v45 = sub_19575D0(v44, v36 + 1);
      }

      else
      {
        v45 = v36 + 2;
      }

      v36 = sub_16E5070(v43, v45, a3);
    }
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v46 = *(a1 + 248);
    *v36 = 104;
    v36[1] = v46;
    v36 += 2;
  }

  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v48 = *(a1 + 236);
    *v36 = 112;
    v36[1] = v48;
    if (v48 > 0x7F)
    {
      v36[1] = v48 | 0x80;
      v49 = v48 >> 7;
      v36[2] = v48 >> 7;
      v47 = v36 + 3;
      if (v48 >= 0x4000)
      {
        LOBYTE(v36) = v36[2];
        do
        {
          *(v47 - 1) = v36 | 0x80;
          v36 = (v49 >> 7);
          *v47++ = v49 >> 7;
          v50 = v49 >> 14;
          v49 >>= 7;
        }

        while (v50);
      }
    }

    else
    {
      v47 = v36 + 2;
    }
  }

  else
  {
    v47 = v36;
  }

  if ((v5 & 4) != 0)
  {
    v47 = sub_128AEEC(a3, 15, *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL, v47);
    if ((v5 & 8) == 0)
    {
LABEL_101:
      if ((v5 & 0x20000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_108;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_101;
  }

  v47 = sub_128AEEC(a3, 16, *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL, v47);
  if ((v5 & 0x20000) == 0)
  {
LABEL_102:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*a3 <= v47)
  {
    v47 = sub_225EB68(a3, v47);
  }

  v51 = *(a1 + 240);
  *v47 = 393;
  *(v47 + 2) = v51;
  v47 += 10;
  if ((v5 & 0x100) == 0)
  {
LABEL_103:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_117;
  }

LABEL_111:
  if (*a3 <= v47)
  {
    v47 = sub_225EB68(a3, v47);
  }

  v52 = *(a1 + 184);
  *v47 = 402;
  v53 = *(v52 + 20);
  v47[2] = v53;
  if (v53 > 0x7F)
  {
    v54 = sub_19575D0(v53, v47 + 2);
  }

  else
  {
    v54 = v47 + 3;
  }

  v47 = sub_16EBD38(v52, v54, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_104:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_123;
  }

LABEL_117:
  if (*a3 <= v47)
  {
    v47 = sub_225EB68(a3, v47);
  }

  v55 = *(a1 + 192);
  *v47 = 410;
  v56 = *(v55 + 20);
  v47[2] = v56;
  if (v56 > 0x7F)
  {
    v57 = sub_19575D0(v56, v47 + 2);
  }

  else
  {
    v57 = v47 + 3;
  }

  v47 = sub_16F04D8(v55, v57, a3);
  if ((v5 & 0x400) != 0)
  {
LABEL_123:
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v58 = *(a1 + 200);
    *v47 = 418;
    v59 = *(v58 + 20);
    v47[2] = v59;
    if (v59 > 0x7F)
    {
      v60 = sub_19575D0(v59, v47 + 2);
    }

    else
    {
      v60 = v47 + 3;
    }

    v47 = sub_16E5FE0(v58, v60, a3);
  }

LABEL_129:
  v61 = *(a1 + 104);
  if (v61)
  {
    for (k = 0; k != v61; ++k)
    {
      if (*a3 <= v47)
      {
        v47 = sub_225EB68(a3, v47);
      }

      v63 = *(*(a1 + 112) + 8 * k + 8);
      *v47 = 426;
      v64 = *(v63 + 20);
      v47[2] = v64;
      if (v64 > 0x7F)
      {
        v65 = sub_19575D0(v64, v47 + 2);
      }

      else
      {
        v65 = v47 + 3;
      }

      v47 = sub_16EF7E0(v63, v65, a3);
    }
  }

  if ((v5 & 0x800) == 0)
  {
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_139;
    }

LABEL_147:
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v70 = *(a1 + 249);
    *v47 = 440;
    v47[2] = v70;
    v47 += 3;
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_150;
  }

  if (*a3 <= v47)
  {
    v47 = sub_225EB68(a3, v47);
  }

  v67 = *(a1 + 208);
  *v47 = 434;
  v68 = *(v67 + 20);
  v47[2] = v68;
  if (v68 > 0x7F)
  {
    v69 = sub_19575D0(v68, v47 + 2);
  }

  else
  {
    v69 = v47 + 3;
  }

  v47 = sub_152E324(v67, v69, a3);
  if ((v5 & 0x80000) != 0)
  {
    goto LABEL_147;
  }

LABEL_139:
  if ((v5 & 0x100000) == 0)
  {
LABEL_140:
    v66 = v47;
    goto LABEL_157;
  }

LABEL_150:
  if (*a3 <= v47)
  {
    v47 = sub_225EB68(a3, v47);
  }

  v71 = *(a1 + 256);
  *v47 = 1696;
  v47[2] = v71;
  if (v71 > 0x7F)
  {
    v47[2] = v71 | 0x80;
    v72 = v71 >> 7;
    v47[3] = v71 >> 7;
    v66 = v47 + 4;
    if (v71 >= 0x4000)
    {
      LOBYTE(v73) = v47[3];
      do
      {
        *(v66 - 1) = v73 | 0x80;
        v73 = v72 >> 7;
        *v66++ = v72 >> 7;
        v74 = v72 >> 14;
        v72 >>= 7;
      }

      while (v74);
    }
  }

  else
  {
    v66 = v47 + 3;
  }

LABEL_157:
  if (*(a1 + 26))
  {
    v66 = sub_1953428(a1 + 16, 200, 700, v66, a3);
  }

  v75 = *(a1 + 8);
  if ((v75 & 1) == 0)
  {
    return v66;
  }

  v77 = v75 & 0xFFFFFFFFFFFFFFFCLL;
  v78 = *(v77 + 31);
  if (v78 < 0)
  {
    v79 = *(v77 + 8);
    v78 = *(v77 + 16);
  }

  else
  {
    v79 = (v77 + 8);
  }

  if ((*a3 - v66) >= v78)
  {
    v80 = v78;
    memcpy(v66, v79, v78);
    v66 += v80;
    return v66;
  }

  return sub_1957130(a3, v79, v78, v66);
}

uint64_t sub_152D208(uint64_t a1)
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
      v9 = sub_1535D8C(v8);
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
      v16 = sub_16E51F0(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + 2 * v17;
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
      v23 = sub_16EFD54(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_29;
  }

  if (v24)
  {
    v36 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v37 = *(v36 + 23);
    v38 = *(v36 + 8);
    if ((v37 & 0x80u) == 0)
    {
      v38 = v37;
    }

    v18 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 2) == 0)
    {
LABEL_22:
      if ((v24 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_63;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_22;
  }

  v39 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v40 = *(v39 + 23);
  v41 = *(v39 + 8);
  if ((v40 & 0x80u) == 0)
  {
    v41 = v40;
  }

  v18 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 4) == 0)
  {
LABEL_23:
    if ((v24 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_66;
  }

LABEL_63:
  v42 = *(a1 + 136) & 0xFFFFFFFFFFFFFFFELL;
  v43 = *(v42 + 23);
  v44 = *(v42 + 8);
  if ((v43 & 0x80u) == 0)
  {
    v44 = v43;
  }

  v18 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 8) == 0)
  {
LABEL_24:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_66:
  v45 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFELL;
  v46 = *(v45 + 23);
  v47 = *(v45 + 8);
  if ((v46 & 0x80u) == 0)
  {
    v47 = v46;
  }

  v18 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x10) == 0)
  {
LABEL_25:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_70:
    v49 = sub_16ED6F0(*(a1 + 160));
    v18 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 0x40) == 0)
    {
LABEL_27:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_69:
  v48 = sub_16E62F4(*(a1 + 152));
  v18 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x20) != 0)
  {
    goto LABEL_70;
  }

LABEL_26:
  if ((v24 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_71:
  v50 = sub_16ED6F0(*(a1 + 168));
  v18 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v24 & 0x80) != 0)
  {
LABEL_28:
    v25 = sub_16E51F0(*(a1 + 176));
    v18 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_29:
  if ((v24 & 0xFF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v24 & 0x100) != 0)
  {
    v51 = sub_16EC25C(*(a1 + 184));
    v18 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v24 & 0x200) == 0)
    {
LABEL_32:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_75;
    }
  }

  else if ((v24 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  v52 = sub_16F05A0(*(a1 + 192));
  v18 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x400) == 0)
  {
LABEL_33:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_76;
  }

LABEL_75:
  v53 = sub_16E62F4(*(a1 + 200));
  v18 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x800) == 0)
  {
LABEL_34:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_77;
  }

LABEL_76:
  v54 = sub_152E510(*(a1 + 208));
  v18 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v24 & 0x1000) == 0)
  {
LABEL_35:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_78;
  }

LABEL_77:
  v18 += ((9 * (__clz(*(a1 + 216) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v24 & 0x2000) == 0)
  {
LABEL_36:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_82;
  }

LABEL_78:
  v55 = *(a1 + 224);
  v56 = ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v55 >= 0)
  {
    v57 = v56;
  }

  else
  {
    v57 = 11;
  }

  v18 += v57;
  if ((v24 & 0x4000) == 0)
  {
LABEL_37:
    if ((v24 & 0x8000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_82:
  v58 = *(a1 + 228);
  v59 = ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v58 >= 0)
  {
    v60 = v59;
  }

  else
  {
    v60 = 11;
  }

  v18 += v60;
  if ((v24 & 0x8000) != 0)
  {
LABEL_38:
    v26 = *(a1 + 232);
    v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v26 >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 11;
    }

    v18 += v28;
  }

LABEL_42:
  if ((v24 & 0x1F0000) != 0)
  {
    if ((v24 & 0x10000) != 0)
    {
      v29 = *(a1 + 236);
      v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v29 >= 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 11;
      }

      v18 += v31;
    }

    v32 = v18 + 10;
    if ((v24 & 0x20000) == 0)
    {
      v32 = v18;
    }

    v33 = v32 + ((v24 >> 17) & 2);
    if ((v24 & 0x80000) != 0)
    {
      v18 = v33 + 3;
    }

    else
    {
      v18 = v33;
    }

    if ((v24 & 0x100000) != 0)
    {
      v18 += ((9 * (__clz(*(a1 + 256) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }
  }

  v34 = *(a1 + 8);
  if (v34)
  {
    v61 = v34 & 0xFFFFFFFFFFFFFFFCLL;
    v62 = *((v34 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v62 < 0)
    {
      v62 = *(v61 + 16);
    }

    v18 += v62;
  }

  *(a1 + 44) = v18;
  return v18;
}

void sub_152D77C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_156D2CC((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_11F1A54((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_13EC494((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 40);
  if (!v19)
  {
    goto LABEL_65;
  }

  if (v19)
  {
    v20 = *(a2 + 120);
    *(a1 + 40) |= 1u;
    v21 = *(a1 + 8);
    v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
    if (v21)
    {
      v22 = *v22;
    }

    sub_194EA1C((a1 + 120), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    if ((v19 & 2) == 0)
    {
LABEL_13:
      if ((v19 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(a2 + 128);
  *(a1 + 40) |= 2u;
  v24 = *(a1 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a1 + 128), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
  if ((v19 & 4) == 0)
  {
LABEL_14:
    if ((v19 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v29 = *(a2 + 144);
    *(a1 + 40) |= 8u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    sub_194EA1C((a1 + 144), (v29 & 0xFFFFFFFFFFFFFFFELL), v31);
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

LABEL_23:
  v26 = *(a2 + 136);
  *(a1 + 40) |= 4u;
  v27 = *(a1 + 8);
  v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
  if (v27)
  {
    v28 = *v28;
  }

  sub_194EA1C((a1 + 136), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v19 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v19 & 0x10) != 0)
  {
LABEL_29:
    *(a1 + 40) |= 0x10u;
    v32 = *(a1 + 152);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      sub_16F58FC(v34);
      *(a1 + 152) = v32;
    }

    if (*(a2 + 152))
    {
      v35 = *(a2 + 152);
    }

    else
    {
      v35 = &off_277E650;
    }

    sub_16E645C(v32, v35);
  }

LABEL_37:
  if ((v19 & 0x20) != 0)
  {
    *(a1 + 40) |= 0x20u;
    v36 = *(a1 + 160);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_16F5E18(v38);
      *(a1 + 160) = v36;
    }

    if (*(a2 + 160))
    {
      v39 = *(a2 + 160);
    }

    else
    {
      v39 = &off_277E918;
    }

    sub_16ED814(v36, v39);
    if ((v19 & 0x40) == 0)
    {
LABEL_39:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_57;
    }
  }

  else if ((v19 & 0x40) == 0)
  {
    goto LABEL_39;
  }

  *(a1 + 40) |= 0x40u;
  v40 = *(a1 + 168);
  if (!v40)
  {
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    v40 = sub_16F5E18(v42);
    *(a1 + 168) = v40;
  }

  if (*(a2 + 168))
  {
    v43 = *(a2 + 168);
  }

  else
  {
    v43 = &off_277E918;
  }

  sub_16ED814(v40, v43);
  if ((v19 & 0x80) != 0)
  {
LABEL_57:
    *(a1 + 40) |= 0x80u;
    v44 = *(a1 + 176);
    if (!v44)
    {
      v45 = *(a1 + 8);
      v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
      if (v45)
      {
        v46 = *v46;
      }

      v44 = sub_16F5828(v46);
      *(a1 + 176) = v44;
    }

    if (*(a2 + 176))
    {
      v47 = *(a2 + 176);
    }

    else
    {
      v47 = &off_277E5E8;
    }

    sub_16E527C(v44, v47);
  }

LABEL_65:
  if ((v19 & 0xFF00) == 0)
  {
    goto LABEL_76;
  }

  if ((v19 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v49 = *(a1 + 184);
    if (!v49)
    {
      v50 = *(a1 + 8);
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
      if (v50)
      {
        v51 = *v51;
      }

      v49 = sub_16F5DB8(v51);
      *(a1 + 184) = v49;
    }

    if (*(a2 + 184))
    {
      v52 = *(a2 + 184);
    }

    else
    {
      v52 = &off_277E820;
    }

    sub_16EC8A0(v49, v52);
    if ((v19 & 0x200) == 0)
    {
LABEL_68:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_104;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_68;
  }

  *(a1 + 40) |= 0x200u;
  v53 = *(a1 + 192);
  if (!v53)
  {
    v54 = *(a1 + 8);
    v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (v54)
    {
      v55 = *v55;
    }

    v53 = sub_16F6144(v55);
    *(a1 + 192) = v53;
  }

  if (*(a2 + 192))
  {
    v56 = *(a2 + 192);
  }

  else
  {
    v56 = &off_277EA18;
  }

  sub_132DE2C(v53, v56);
  if ((v19 & 0x400) == 0)
  {
LABEL_69:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(a1 + 40) |= 0x400u;
  v57 = *(a1 + 200);
  if (!v57)
  {
    v58 = *(a1 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    sub_16F58FC(v59);
    *(a1 + 200) = v57;
  }

  if (*(a2 + 200))
  {
    v60 = *(a2 + 200);
  }

  else
  {
    v60 = &off_277E650;
  }

  sub_16E645C(v57, v60);
  if ((v19 & 0x800) == 0)
  {
LABEL_70:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(a1 + 40) |= 0x800u;
  v61 = *(a1 + 208);
  if (!v61)
  {
    v62 = *(a1 + 8);
    v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
    if (v62)
    {
      v63 = *v63;
    }

    sub_1550F7C(v63);
    *(a1 + 208) = v61;
  }

  if (*(a2 + 208))
  {
    v64 = *(a2 + 208);
  }

  else
  {
    v64 = &off_2776430;
  }

  sub_152DD18(v61, v64);
  if ((v19 & 0x1000) == 0)
  {
LABEL_71:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_121;
  }

LABEL_120:
  *(a1 + 216) = *(a2 + 216);
  if ((v19 & 0x2000) == 0)
  {
LABEL_72:
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_73;
    }

LABEL_122:
    *(a1 + 228) = *(a2 + 228);
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_121:
  *(a1 + 224) = *(a2 + 224);
  if ((v19 & 0x4000) != 0)
  {
    goto LABEL_122;
  }

LABEL_73:
  if ((v19 & 0x8000) != 0)
  {
LABEL_74:
    *(a1 + 232) = *(a2 + 232);
  }

LABEL_75:
  *(a1 + 40) |= v19;
LABEL_76:
  if ((v19 & 0x1F0000) == 0)
  {
    goto LABEL_84;
  }

  if ((v19 & 0x10000) != 0)
  {
    *(a1 + 236) = *(a2 + 236);
    if ((v19 & 0x20000) == 0)
    {
LABEL_79:
      if ((v19 & 0x40000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_126;
    }
  }

  else if ((v19 & 0x20000) == 0)
  {
    goto LABEL_79;
  }

  *(a1 + 240) = *(a2 + 240);
  if ((v19 & 0x40000) == 0)
  {
LABEL_80:
    if ((v19 & 0x80000) == 0)
    {
      goto LABEL_81;
    }

LABEL_127:
    *(a1 + 249) = *(a2 + 249);
    if ((v19 & 0x100000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_126:
  *(a1 + 248) = *(a2 + 248);
  if ((v19 & 0x80000) != 0)
  {
    goto LABEL_127;
  }

LABEL_81:
  if ((v19 & 0x100000) != 0)
  {
LABEL_82:
    *(a1 + 256) = *(a2 + 256);
  }

LABEL_83:
  *(a1 + 40) |= v19;
LABEL_84:
  sub_225EA0C(a1 + 16, a2 + 16);
  v48 = *(a2 + 8);
  if (v48)
  {

    sub_1957EF4((a1 + 8), (v48 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_152DD18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
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

        sub_1868ECC(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_2787A70;
      }

      sub_17DBC2C(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
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

        v9 = sub_16F5828(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277E5E8;
      }

      sub_16E527C(v9, v12);
    }

    if ((v4 & 4) != 0)
    {
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

        v13 = sub_16F5828(v15);
        *(a1 + 40) = v13;
      }

      if (*(a2 + 40))
      {
        v16 = *(a2 + 40);
      }

      else
      {
        v16 = &off_277E5E8;
      }

      sub_16E527C(v13, v16);
    }
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_152DE60(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1536A78(*(*(a1 + 64) + 8 * v3));
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
      v8 = sub_16E5370(*(*(a1 + 88) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 104);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_16F0144(*(*(a1 + 112) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 40);
    if ((v12 & 0x10) != 0)
    {
      result = sub_16E6614(*(a1 + 152));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x20) != 0)
    {
      result = sub_16ED98C(*(a1 + 160));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x40) != 0)
    {
      result = sub_16ED98C(*(a1 + 168));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x80) != 0)
    {
      result = sub_16E5370(*(a1 + 176));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x100) != 0)
    {
      result = sub_16ECE70(*(a1 + 184));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x200) != 0)
    {
      result = sub_16F061C(*(a1 + 192));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x400) != 0)
    {
      result = sub_16E6614(*(a1 + 200));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 40);
    }

    if ((v12 & 0x800) == 0)
    {
      return 1;
    }

    result = sub_152DFAC(*(a1 + 208));
    if (result)
    {
      return 1;
    }
  }

  return result;
}