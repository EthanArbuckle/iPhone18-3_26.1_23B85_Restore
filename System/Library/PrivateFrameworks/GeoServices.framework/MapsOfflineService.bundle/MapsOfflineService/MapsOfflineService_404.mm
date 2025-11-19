uint64_t sub_167B238(uint64_t a1)
{
  if ((*(a1 + 19) & 0x20) != 0)
  {
    v2 = ((9 * (__clz(*(a1 + 680) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  v4 = v2 + v3;
  v5 = *(a1 + 48);
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
      v9 = sub_167DC8C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = sub_1959F14((a1 + 56));
  v11 = *(a1 + 80);
  v12 = v10 + *(a1 + 56) + v11 + v4;
  if (v11 >= 1)
  {
    v13 = (*(a1 + 88) + 8);
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

  v17 = *(a1 + 104);
  v18 = v12 + v17;
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
      v23 = sub_14F18E0(v22);
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
      v30 = sub_153007C(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(a1 + 152);
  v32 = v25 + v31;
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
      v37 = sub_1579354(v36);
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
      v44 = sub_18141A8(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(a1 + 200);
  v46 = v39 + 2 * v45;
  if (v45 >= 1)
  {
    v47 = (*(a1 + 208) + 8);
    do
    {
      v48 = *v47++;
      v49 = *(v48 + 23);
      v50 = *(v48 + 8);
      if ((v49 & 0x80u) == 0)
      {
        v50 = v49;
      }

      v46 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6);
      --v45;
    }

    while (v45);
  }

  v51 = *(a1 + 224);
  v52 = v46 + 2 * v51;
  v53 = *(a1 + 232);
  if (v53)
  {
    v54 = (v53 + 8);
  }

  else
  {
    v54 = 0;
  }

  if (v51)
  {
    v55 = 8 * v51;
    do
    {
      v56 = *v54++;
      v57 = sub_167DC8C(v56);
      v52 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6);
      v55 -= 8;
    }

    while (v55);
  }

  v58 = *(a1 + 248);
  v59 = v52 + 2 * v58;
  v60 = *(a1 + 256);
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
      v64 = sub_167CA74(v63);
      v59 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6);
      v62 -= 8;
    }

    while (v62);
  }

  v65 = *(a1 + 272);
  v66 = v59 + 2 * v65;
  v67 = *(a1 + 280);
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
      v71 = sub_15319C4(v70);
      v66 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6);
      v69 -= 8;
    }

    while (v69);
  }

  v72 = *(a1 + 296);
  v73 = v66 + 2 * v72;
  v74 = *(a1 + 304);
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
      v78 = sub_14F0760(v77);
      v73 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6);
      v76 -= 8;
    }

    while (v76);
  }

  v79 = *(a1 + 320);
  v80 = v73 + 2 * v79;
  v81 = *(a1 + 328);
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
      v85 = sub_1522E70(v84);
      v80 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6);
      v83 -= 8;
    }

    while (v83);
  }

  v86 = sub_1959F14((a1 + 336));
  v87 = *(a1 + 360);
  v88 = v86 + v80 + 2 * (v87 + *(a1 + 336));
  v89 = *(a1 + 368);
  if (v89)
  {
    v90 = (v89 + 8);
  }

  else
  {
    v90 = 0;
  }

  if (v87)
  {
    v91 = 8 * v87;
    do
    {
      v92 = *v90++;
      v93 = sub_14EB2A8(v92);
      v88 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6);
      v91 -= 8;
    }

    while (v91);
  }

  v94 = *(a1 + 384);
  v95 = v88 + 2 * v94;
  v96 = *(a1 + 392);
  if (v96)
  {
    v97 = (v96 + 8);
  }

  else
  {
    v97 = 0;
  }

  if (v94)
  {
    v98 = 8 * v94;
    do
    {
      v99 = *v97++;
      v100 = sub_14D9520(v99);
      v95 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6);
      v98 -= 8;
    }

    while (v98);
  }

  v101 = *(a1 + 408);
  v102 = v95 + 2 * v101;
  v103 = *(a1 + 416);
  if (v103)
  {
    v104 = (v103 + 8);
  }

  else
  {
    v104 = 0;
  }

  if (v101)
  {
    v105 = 8 * v101;
    do
    {
      v106 = *v104++;
      v107 = sub_150E62C(v106);
      v102 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6);
      v105 -= 8;
    }

    while (v105);
  }

  v108 = *(a1 + 432);
  v109 = v102 + 2 * v108;
  v110 = *(a1 + 440);
  if (v110)
  {
    v111 = (v110 + 8);
  }

  else
  {
    v111 = 0;
  }

  if (v108)
  {
    v112 = 8 * v108;
    do
    {
      v113 = *v111++;
      v114 = sub_152681C(v113);
      v109 += v114 + ((9 * (__clz(v114 | 1) ^ 0x1F) + 73) >> 6);
      v112 -= 8;
    }

    while (v112);
  }

  v115 = *(a1 + 16);
  if (!v115)
  {
    goto LABEL_108;
  }

  if (v115)
  {
    v132 = *(a1 + 448) & 0xFFFFFFFFFFFFFFFELL;
    v133 = *(v132 + 23);
    v134 = *(v132 + 8);
    if ((v133 & 0x80u) == 0)
    {
      v134 = v133;
    }

    v109 += v134 + ((9 * (__clz(v134 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v115 & 2) == 0)
    {
LABEL_101:
      if ((v115 & 4) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_188;
    }
  }

  else if ((v115 & 2) == 0)
  {
    goto LABEL_101;
  }

  v135 = *(a1 + 456) & 0xFFFFFFFFFFFFFFFELL;
  v136 = *(v135 + 23);
  v137 = *(v135 + 8);
  if ((v136 & 0x80u) == 0)
  {
    v137 = v136;
  }

  v109 += v137 + ((9 * (__clz(v137 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v115 & 4) == 0)
  {
LABEL_102:
    if ((v115 & 8) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_191;
  }

LABEL_188:
  v138 = *(a1 + 464) & 0xFFFFFFFFFFFFFFFELL;
  v139 = *(v138 + 23);
  v140 = *(v138 + 8);
  if ((v139 & 0x80u) == 0)
  {
    v140 = v139;
  }

  v109 += v140 + ((9 * (__clz(v140 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 8) == 0)
  {
LABEL_103:
    if ((v115 & 0x10) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_194;
  }

LABEL_191:
  v141 = *(a1 + 472) & 0xFFFFFFFFFFFFFFFELL;
  v142 = *(v141 + 23);
  v143 = *(v141 + 8);
  if ((v142 & 0x80u) == 0)
  {
    v143 = v142;
  }

  v109 += v143 + ((9 * (__clz(v143 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x10) == 0)
  {
LABEL_104:
    if ((v115 & 0x20) == 0)
    {
      goto LABEL_105;
    }

LABEL_195:
    v145 = sub_16E51F0(*(a1 + 488));
    v109 += v145 + ((9 * (__clz(v145 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v115 & 0x40) == 0)
    {
LABEL_106:
      if ((v115 & 0x80) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_107;
    }

    goto LABEL_196;
  }

LABEL_194:
  v144 = sub_16ED6F0(*(a1 + 480));
  v109 += v144 + ((9 * (__clz(v144 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v115 & 0x20) != 0)
  {
    goto LABEL_195;
  }

LABEL_105:
  if ((v115 & 0x40) == 0)
  {
    goto LABEL_106;
  }

LABEL_196:
  v146 = sub_16EC25C(*(a1 + 496));
  v109 += v146 + ((9 * (__clz(v146 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v115 & 0x80) != 0)
  {
LABEL_107:
    v116 = sub_14E8594(*(a1 + 504));
    v109 += v116 + ((9 * (__clz(v116 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_108:
  if ((v115 & 0xFF00) == 0)
  {
    goto LABEL_118;
  }

  if ((v115 & 0x100) != 0)
  {
    v147 = sub_167E9E4(*(a1 + 512));
    v109 += v147 + ((9 * (__clz(v147 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v115 & 0x200) == 0)
    {
LABEL_111:
      if ((v115 & 0x400) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_200;
    }
  }

  else if ((v115 & 0x200) == 0)
  {
    goto LABEL_111;
  }

  v148 = sub_167E9E4(*(a1 + 520));
  v109 += v148 + ((9 * (__clz(v148 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x400) == 0)
  {
LABEL_112:
    if ((v115 & 0x800) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_201;
  }

LABEL_200:
  v149 = sub_14F6CC0(*(a1 + 528));
  v109 += v149 + ((9 * (__clz(v149 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x800) == 0)
  {
LABEL_113:
    if ((v115 & 0x1000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_202;
  }

LABEL_201:
  v150 = sub_14FCA60(*(a1 + 536));
  v109 += v150 + ((9 * (__clz(v150 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x1000) == 0)
  {
LABEL_114:
    if ((v115 & 0x2000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_203;
  }

LABEL_202:
  v151 = sub_167E9E4(*(a1 + 544));
  v109 += v151 + ((9 * (__clz(v151 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x2000) == 0)
  {
LABEL_115:
    if ((v115 & 0x4000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_204;
  }

LABEL_203:
  v152 = sub_167E9E4(*(a1 + 552));
  v109 += v152 + ((9 * (__clz(v152 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x4000) == 0)
  {
LABEL_116:
    if ((v115 & 0x8000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

LABEL_204:
  v153 = sub_167E9E4(*(a1 + 560));
  v109 += v153 + ((9 * (__clz(v153 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x8000) != 0)
  {
LABEL_117:
    v117 = sub_167E9E4(*(a1 + 568));
    v109 += v117 + ((9 * (__clz(v117 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_118:
  if ((v115 & 0xFF0000) == 0)
  {
    goto LABEL_128;
  }

  if ((v115 & 0x10000) != 0)
  {
    v154 = sub_167E9E4(*(a1 + 576));
    v109 += v154 + ((9 * (__clz(v154 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v115 & 0x20000) == 0)
    {
LABEL_121:
      if ((v115 & 0x40000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_208;
    }
  }

  else if ((v115 & 0x20000) == 0)
  {
    goto LABEL_121;
  }

  v155 = sub_167E9E4(*(a1 + 584));
  v109 += v155 + ((9 * (__clz(v155 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x40000) == 0)
  {
LABEL_122:
    if ((v115 & 0x80000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_209;
  }

LABEL_208:
  v156 = sub_167E9E4(*(a1 + 592));
  v109 += v156 + ((9 * (__clz(v156 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x80000) == 0)
  {
LABEL_123:
    if ((v115 & 0x100000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_210;
  }

LABEL_209:
  v157 = sub_14F6888(*(a1 + 600));
  v109 += v157 + ((9 * (__clz(v157 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x100000) == 0)
  {
LABEL_124:
    if ((v115 & 0x200000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_211;
  }

LABEL_210:
  v158 = sub_167E9E4(*(a1 + 608));
  v109 += v158 + ((9 * (__clz(v158 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x200000) == 0)
  {
LABEL_125:
    if ((v115 & 0x400000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_212;
  }

LABEL_211:
  v159 = sub_167E9E4(*(a1 + 616));
  v109 += v159 + ((9 * (__clz(v159 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x400000) == 0)
  {
LABEL_126:
    if ((v115 & 0x800000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_212:
  v160 = sub_167E9E4(*(a1 + 624));
  v109 += v160 + ((9 * (__clz(v160 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x800000) != 0)
  {
LABEL_127:
    v118 = sub_167E9E4(*(a1 + 632));
    v109 += v118 + ((9 * (__clz(v118 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_128:
  if ((v115 & 0x1F000000) == 0)
  {
    goto LABEL_135;
  }

  if ((v115 & 0x1000000) != 0)
  {
    v161 = sub_14F8C50(*(a1 + 640));
    v109 += v161 + ((9 * (__clz(v161 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v115 & 0x2000000) == 0)
    {
LABEL_131:
      if ((v115 & 0x4000000) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_216;
    }
  }

  else if ((v115 & 0x2000000) == 0)
  {
    goto LABEL_131;
  }

  v162 = sub_15192FC(*(a1 + 648));
  v109 += v162 + ((9 * (__clz(v162 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x4000000) == 0)
  {
LABEL_132:
    if ((v115 & 0x8000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_217;
  }

LABEL_216:
  v163 = sub_14D9520(*(a1 + 656));
  v109 += v163 + ((9 * (__clz(v163 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x8000000) == 0)
  {
LABEL_133:
    if ((v115 & 0x10000000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_134;
  }

LABEL_217:
  v164 = sub_14EB2A8(*(a1 + 664));
  v109 += v164 + ((9 * (__clz(v164 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v115 & 0x10000000) != 0)
  {
LABEL_134:
    v119 = sub_14D9520(*(a1 + 672));
    v109 += v119 + ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_135:
  v120 = v109 + 9;
  if ((v115 & 0x40000000) == 0)
  {
    v120 = v109;
  }

  if (v115 < 0)
  {
    v120 += 9;
  }

  if (v115 >> 30)
  {
    result = v120;
  }

  else
  {
    result = v109;
  }

  v122 = *(a1 + 20);
  if (v122)
  {
    v123 = result + 9;
    if ((v122 & 1) == 0)
    {
      v123 = result;
    }

    if ((v122 & 2) != 0)
    {
      v123 += ((9 * (__clz(*(a1 + 712) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v122 & 4) != 0)
    {
      v124 = *(a1 + 720);
      v125 = ((9 * (__clz(v124 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v124 >= 0)
      {
        v126 = v125;
      }

      else
      {
        v126 = 12;
      }

      v123 += v126;
    }

    if ((v122 & 8) != 0)
    {
      v123 += 3;
    }

    if ((v122 & 0x10) != 0)
    {
      v123 += 3;
    }

    if ((v122 & 0x20) != 0)
    {
      result = v123 + 3;
    }

    else
    {
      result = v123;
    }

    if ((v122 & 0x40) != 0)
    {
      result += ((9 * (__clz(*(a1 + 728) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v122 & 0x80) != 0)
    {
      result += ((9 * (__clz(*(a1 + 736) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }
  }

  if ((v122 & 0x3F00) != 0)
  {
    v127 = result + 10;
    if ((v122 & 0x100) == 0)
    {
      v127 = result;
    }

    if ((v122 & 0x200) != 0)
    {
      v127 += 10;
    }

    if ((v122 & 0x400) != 0)
    {
      v127 += ((9 * (__clz(*(a1 + 760) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v122 & 0x800) != 0)
    {
      v127 += 10;
    }

    if ((v122 & 0x1000) != 0)
    {
      result = v127 + 6;
    }

    else
    {
      result = v127;
    }

    if ((v122 & 0x2000) != 0)
    {
      v128 = *(a1 + 780);
      v129 = ((9 * (__clz(v128 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v128 >= 0)
      {
        v130 = v129;
      }

      else
      {
        v130 = 12;
      }

      result += v130;
    }
  }

  v131 = *(a1 + 8);
  if (v131)
  {
    v165 = v131 & 0xFFFFFFFFFFFFFFFCLL;
    v166 = *((v131 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v166 < 0)
    {
      v166 = *(v165 + 16);
    }

    result += v166;
  }

  *(a1 + 24) = result;
  return result;
}

uint64_t sub_167BFE8(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C((a1 + 80));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_1956AFC((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_167C0B0(uint64_t a1)
{
  sub_167BFE8(a1);

  operator delete();
}

uint64_t sub_167C0E8(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  result = sub_12A41D0(a1 + 48);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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
    v5 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v3 & 0x7C) != 0)
  {
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_167C1C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v50 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v50, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v50 + 1);
    v8 = **v50;
    if (**v50 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v50, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v50 + 2);
      }
    }

    *v50 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v8 >> 3 <= 6)
      {
        if (v11 == 5)
        {
          if (v8 == 42)
          {
            v36 = v7 - 1;
            while (1)
            {
              v37 = (v36 + 1);
              *v50 = v36 + 1;
              v38 = *(a1 + 40);
              if (v38 && (v39 = *(a1 + 32), v39 < *v38))
              {
                *(a1 + 32) = v39 + 1;
                v40 = *&v38[2 * v39 + 2];
              }

              else
              {
                v41 = *(a1 + 24);
                if (!v41)
                {
                  operator new();
                }

                *v43 = v42;
                v43[1] = sub_195A650;
                *v42 = 0;
                v42[1] = 0;
                v42[2] = 0;
                v40 = sub_19593CC(a1 + 24, v42);
                v37 = *v50;
              }

              v36 = sub_1958890(v40, v37, a3);
              *v50 = v36;
              if (!v36)
              {
                goto LABEL_92;
              }

              if (*a3 <= v36 || *v36 != 42)
              {
                goto LABEL_82;
              }
            }
          }
        }

        else if (v11 == 6 && v8 == 50)
        {
          v21 = v7 - 1;
          while (1)
          {
            v22 = (v21 + 1);
            *v50 = v21 + 1;
            v23 = *(a1 + 64);
            if (v23 && (v24 = *(a1 + 56), v24 < *v23))
            {
              *(a1 + 56) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
            }

            else
            {
              v26 = *(a1 + 48);
              if (!v26)
              {
                operator new();
              }

              *v28 = v27;
              v28[1] = sub_195A650;
              *v27 = 0;
              v27[1] = 0;
              v27[2] = 0;
              v25 = sub_19593CC(a1 + 48, v27);
              v22 = *v50;
            }

            v21 = sub_1958890(v25, v22, a3);
            *v50 = v21;
            if (!v21)
            {
              goto LABEL_92;
            }

            if (*a3 <= v21 || *v21 != 50)
            {
              goto LABEL_82;
            }
          }
        }
      }

      else if (v11 == 7)
      {
        if (v8 == 57)
        {
          v35 = *v7;
          v12 = v7 + 2;
          v5 |= 0x10u;
          *(a1 + 96) = v35;
          goto LABEL_73;
        }
      }

      else if (v11 == 8)
      {
        if (v8 == 65)
        {
          v44 = *v7;
          v12 = v7 + 2;
          v5 |= 0x20u;
          *(a1 + 104) = v44;
          goto LABEL_73;
        }
      }

      else if (v11 == 9 && v8 == 73)
      {
        v13 = *v7;
        v12 = v7 + 2;
        v5 |= 0x40u;
        *(a1 + 112) = v13;
LABEL_73:
        *v50 = v12;
        goto LABEL_82;
      }

      goto LABEL_74;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_74;
        }

        *(a1 + 16) |= 1u;
        v29 = *(a1 + 8);
        v16 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v16 = *v16;
        }

        v17 = (a1 + 72);
      }

      else
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_74;
        }

        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 80);
      }

      v30 = sub_194DB04(v17, v16);
      v31 = sub_1958890(v30, *v50, a3);
LABEL_81:
      *v50 = v31;
      if (!v31)
      {
        goto LABEL_92;
      }

      goto LABEL_82;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_74;
    }

    v5 |= 8u;
    v18 = v7 + 1;
    v19 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v20 = *v18;
    v19 = v19 + (v20 << 7) - 128;
    if ((v20 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_30:
      *v50 = v18;
      *(a1 + 92) = v19;
      goto LABEL_82;
    }

    v48 = sub_1958770(v7, v19);
    *v50 = v48;
    *(a1 + 92) = v49;
    if (!v48)
    {
      goto LABEL_92;
    }

LABEL_82:
    if (sub_195ADC0(a3, v50, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 24)
  {
    v33 = v7 + 1;
    v32 = *v7;
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

    v34 = *v33;
    v32 = (v34 << 7) + v32 - 128;
    if (v34 < 0)
    {
      *v50 = sub_19587DC(v7, v32);
      if (!*v50)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v33 = v7 + 2;
LABEL_54:
      *v50 = v33;
    }

    if (v32 > 0x11)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 88) = v32;
    }

    goto LABEL_82;
  }

LABEL_74:
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
      v7 = *v50;
    }

    v31 = sub_1952690(v8, v47, v7, a3);
    goto LABEL_81;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_92:
  *v50 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v50;
}

char *sub_167C684(uint64_t a1, char *__dst, void *a3)
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
    v4 = sub_128AEEC(a3, 2, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, __dst);
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

  v8 = *(a1 + 88);
  *v4 = 24;
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

    v13 = *(a1 + 92);
    *v7 = 32;
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

  v17 = *(a1 + 32);
  if (v17 >= 1)
  {
    v18 = 8;
    do
    {
      v19 = *(*(a1 + 40) + v18);
      v20 = *(v19 + 23);
      if (v20 < 0 && (v20 = v19[1], v20 > 127) || *a3 - v12 + 14 < v20)
      {
        v12 = sub_1957480(a3, 5, v19, v12);
      }

      else
      {
        *v12 = 42;
        v12[1] = v20;
        if (*(v19 + 23) < 0)
        {
          v19 = *v19;
        }

        v21 = v12 + 2;
        memcpy(v21, v19, v20);
        v12 = &v21[v20];
      }

      v18 += 8;
      --v17;
    }

    while (v17);
  }

  v22 = *(a1 + 56);
  if (v22 >= 1)
  {
    v23 = 8;
    do
    {
      v24 = *(*(a1 + 64) + v23);
      v25 = *(v24 + 23);
      if (v25 < 0 && (v25 = v24[1], v25 > 127) || *a3 - v12 + 14 < v25)
      {
        v12 = sub_1957480(a3, 6, v24, v12);
      }

      else
      {
        *v12 = 50;
        v12[1] = v25;
        if (*(v24 + 23) < 0)
        {
          v24 = *v24;
        }

        v26 = v12 + 2;
        memcpy(v26, v24, v25);
        v12 = &v26[v25];
      }

      v23 += 8;
      --v22;
    }

    while (v22);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v27 = *(a1 + 96);
    *v12 = 57;
    *(v12 + 1) = v27;
    v12 += 9;
    if ((v6 & 0x20) == 0)
    {
LABEL_47:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_55;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_47;
  }

  if (*a3 <= v12)
  {
    v12 = sub_225EB68(a3, v12);
  }

  v28 = *(a1 + 104);
  *v12 = 65;
  *(v12 + 1) = v28;
  v12 += 9;
  if ((v6 & 0x40) != 0)
  {
LABEL_55:
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v29 = *(a1 + 112);
    *v12 = 73;
    *(v12 + 1) = v29;
    v12 += 9;
  }

LABEL_58:
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

  if (*a3 - v12 >= v33)
  {
    v35 = v33;
    memcpy(v12, v34, v33);
    v12 += v35;
    return v12;
  }

  return sub_1957130(a3, v34, v33, v12);
}

uint64_t sub_167CA74(uint64_t a1)
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

  v7 = *(a1 + 56);
  v8 = v3 + v7;
  if (v7 >= 1)
  {
    v9 = (*(a1 + 64) + 8);
    do
    {
      v10 = *v9++;
      v11 = *(v10 + 23);
      v12 = *(v10 + 8);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v11;
      }

      v8 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      --v7;
    }

    while (v7);
  }

  v13 = *(a1 + 16);
  if ((v13 & 0x7F) != 0)
  {
    if (v13)
    {
      v16 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v8 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_33;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v19 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v8 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
LABEL_19:
        if ((v13 & 0x10) != 0)
        {
          v8 += 9;
        }

        if ((v13 & 0x20) != 0)
        {
          v8 += 9;
        }

        if ((v13 & 0x40) != 0)
        {
          v8 += 9;
        }

        goto LABEL_25;
      }

LABEL_18:
      v8 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_19;
    }

LABEL_33:
    v22 = *(a1 + 88);
    v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v22 >= 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 11;
    }

    v8 += v24;
    if ((v13 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_25:
  v14 = *(a1 + 8);
  if (v14)
  {
    v25 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v26 < 0)
    {
      v26 = *(v25 + 16);
    }

    v8 += v26;
  }

  *(a1 + 20) = v8;
  return v8;
}

std::string *sub_167CC80(std::string *result, uint64_t a2)
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

  v14 = *(a2 + 16);
  if ((v14 & 0x7F) != 0)
  {
    if (v14)
    {
      v16 = *(a2 + 72);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v18 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v18 = *v18;
      }

      result = sub_194EA1C(&v3[3], (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_27;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v19 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v20 = v3->__r_.__value_.__l.__size_;
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }

LABEL_27:
    LODWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }

LABEL_28:
    HIDWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 92);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_29:
    v3[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
LABEL_16:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
        goto LABEL_17;
      }

LABEL_15:
      v3[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
      goto LABEL_16;
    }

LABEL_30:
    v3[4].__r_.__value_.__l.__size_ = *(a2 + 104);
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

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_167CE88(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26FC720;
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
  *(v2 + 132) = 0u;
  return result;
}

void *sub_167CF50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26FC7A0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_167CFD4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26FC820;
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

void *sub_167D084(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26FC8A0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  return result;
}

void *sub_167D128(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26FC920;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

double sub_167D1B0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26FC9A0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t sub_167D240(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26FCA20;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

double sub_167D2E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1679080(v2, a1, 0);
}

double sub_167D340(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_26FCB20;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = &qword_278E990;
  *(v2 + 80) = &qword_278E990;
  result = 0.0;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  return result;
}

uint64_t sub_167D3FC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    goto LABEL_15;
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

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_15:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_167D4F0(uint64_t a1)
{
  sub_167D3FC(a1);

  operator delete();
}

uint64_t sub_167D528(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) != 0)
  {
    if ((v1 & 1) == 0)
    {
      if ((v1 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_20:
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_24;
    }

    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

LABEL_27:
  if ((v1 & 0x60) != 0)
  {
    *(a1 + 68) = 0;
    *(a1 + 64) = 0;
  }

  v8 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v8)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_167D658(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_53;
        }

        *(a1 + 16) |= 1u;
        v18 = *(a1 + 8);
        v13 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v13 = *v13;
        }

        v14 = (a1 + 24);
      }

      else if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_53;
        }

        *(a1 + 16) |= 2u;
        v25 = *(a1 + 8);
        v13 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v13 = *v13;
        }

        v14 = (a1 + 32);
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_53;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v13 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v13 = *v13;
        }

        v14 = (a1 + 40);
      }

LABEL_49:
      v26 = sub_194DB04(v14, v13);
      v27 = sub_1958890(v26, *v35, a3);
LABEL_50:
      *v35 = v27;
      if (!v27)
      {
        goto LABEL_67;
      }

      goto LABEL_51;
    }

    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v11 != 4)
    {
      if (v11 == 5 && v8 == 42)
      {
        *(a1 + 16) |= 8u;
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v14 = (a1 + 48);
        goto LABEL_49;
      }

      goto LABEL_53;
    }

    if (v8 != 32)
    {
      goto LABEL_53;
    }

    v5 |= 0x20u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_39:
      *v35 = v19;
      *(a1 + 64) = v20;
      goto LABEL_51;
    }

    v31 = sub_1958770(v7, v20);
    *v35 = v31;
    *(a1 + 64) = v32;
    if (!v31)
    {
      goto LABEL_67;
    }

LABEL_51:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_53;
    }

    v5 |= 0x40u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_44;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_44:
      *v35 = v23;
      *(a1 + 68) = v22 != 0;
      goto LABEL_51;
    }

    v33 = sub_19587DC(v7, v22);
    *v35 = v33;
    *(a1 + 68) = v34 != 0;
    if (!v33)
    {
      goto LABEL_67;
    }

    goto LABEL_51;
  }

  if (v11 == 7 && v8 == 58)
  {
    *(a1 + 16) |= 0x10u;
    v17 = *(a1 + 8);
    v13 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v13 = *v13;
    }

    v14 = (a1 + 56);
    goto LABEL_49;
  }

LABEL_53:
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
    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = *v35;
    }

    v27 = sub_1952690(v8, v30, v7, a3);
    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_67:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_167D998(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 64);
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

LABEL_16:
  if ((v6 & 8) != 0)
  {
    v7 = sub_128AEEC(a3, 5, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v7);
    if ((v6 & 0x40) == 0)
    {
LABEL_18:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_18;
  }

  if (*a3 <= v7)
  {
    v7 = sub_225EB68(a3, v7);
  }

  v14 = *(a1 + 68);
  *v7 = 48;
  v7[1] = v14;
  v7 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_19:
    v7 = sub_128AEEC(a3, 7, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

LABEL_20:
  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v7;
  }

  v15 = v12 & 0xFFFFFFFFFFFFFFFCLL;
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

  if (*a3 - v7 >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

uint64_t sub_167DBAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
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
LABEL_7:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 4) != 0)
  {
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_167DC8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 7) != 0)
  {
    result = sub_167DBAC(a1);
  }

  else
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v10 = (9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6;
    v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    result = v5 + v9 + v13 + v6 + v10 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if ((v2 & 0x78) != 0)
  {
    if ((v2 & 8) != 0)
    {
      v16 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      result += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x10) == 0)
      {
LABEL_13:
        if ((v2 & 0x20) == 0)
        {
LABEL_15:
          result += (v2 >> 5) & 2;
          goto LABEL_16;
        }

LABEL_14:
        result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_15;
      }
    }

    else if ((v2 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    v19 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    result += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v15 = *(a1 + 8);
  if (v15)
  {
    v22 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    result += v23;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_167DE70(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) != 0)
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

    v9 = *(a2 + 32);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v3->__r_.__value_.__l.__size_;
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_21:
    v12 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v13 = v3->__r_.__value_.__l.__size_;
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }

LABEL_24:
    v15 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v16 = v3->__r_.__value_.__l.__size_;
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    result = sub_194EA1C(&v3[2], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_27:
    v18 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v19 = v3->__r_.__value_.__l.__size_;
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      v3[2].__r_.__value_.__s.__data_[20] = *(a2 + 68);
      goto LABEL_10;
    }

LABEL_30:
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v5 = *(a2 + 8);
  if (v5)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_167E044(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26FCC20;
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

  return a1;
}

void sub_167E120(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_167E154(uint64_t a1)
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

void sub_167E20C(uint64_t a1)
{
  sub_167E154(a1);

  operator delete();
}

uint64_t sub_167E244(uint64_t a1)
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

uint64_t sub_167E2C0(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_167E440(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_167E528(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_132CD7C(a1);
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

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    result = v4 + v8 + v5 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

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

uint64_t sub_167E624(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26FCCA0;
  *(result + 8) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a2;
  *(result + 40) = 0;
  return result;
}

void *sub_167E65C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1680D38(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_167E6DC(void *a1)
{
  sub_167E65C(a1);

  operator delete();
}

char *sub_167E714(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_167EB30(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2231168(a3, v16, v13);
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

char *sub_167E8A4(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_167E440(v8, v10, a3);
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

uint64_t sub_167E9E4(uint64_t a1)
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
      v7 = sub_167E528(v6);
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

uint64_t sub_167EA9C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26FCBA0;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 56) = &qword_278E990;
  *(result + 64) = 0;
  *(result + 68) = 0;
  return result;
}

void *sub_167EB30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26FCC20;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_167EBB4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26FCCA0;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_167EC54(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_167ED20(uint64_t a1)
{
  sub_167EC54(a1);

  operator delete();
}

uint64_t sub_167ED58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_17;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  *v3 = 0;
  *(v3 + 23) = 0;
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 40) = 0;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_167EE14(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v28, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v28 + 1);
    v8 = **v28;
    if (**v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v28 + 2);
      }
    }

    *v28 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v17 = *(a1 + 8);
          v14 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v14 = *v14;
          }

          v15 = (a1 + 24);
          goto LABEL_27;
        }
      }

      else if (v11 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v15 = (a1 + 32);
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_33;
    }

    v5 |= 8u;
    v21 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    v22 = *v21;
    v20 = (v22 << 7) + v20 - 128;
    if ((v22 & 0x80000000) == 0)
    {
      v21 = v7 + 2;
LABEL_32:
      *v28 = v21;
      *(a1 + 48) = v20;
      goto LABEL_41;
    }

    v26 = sub_19587DC(v7, v20);
    *v28 = v26;
    *(a1 + 48) = v27;
    if (!v26)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (sub_195ADC0(a3, v28, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 34)
  {
    *(a1 + 16) |= 4u;
    v16 = *(a1 + 8);
    v14 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v14 = *v14;
    }

    v15 = (a1 + 40);
LABEL_27:
    v18 = sub_194DB04(v15, v14);
    v19 = sub_1958890(v18, *v28, a3);
LABEL_40:
    *v28 = v19;
    if (!v19)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

LABEL_33:
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
    v24 = *(a1 + 8);
    if (v24)
    {
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v25 = sub_11F1920((a1 + 8));
      v7 = *v28;
    }

    v19 = sub_1952690(v8, v25, v7, a3);
    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_48:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_167F060(uint64_t a1, char *__dst, void *a3)
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
    if ((v6 & 8) == 0)
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
  if ((v6 & 8) == 0)
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

  v8 = *(a1 + 48);
  *v4 = 24;
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
  if ((v6 & 4) != 0)
  {
    v7 = sub_128AEEC(a3, 4, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v15)
  {
    v17 = v15;
    memcpy(v7, v16, v15);
    v7 += v17;
    return v7;
  }

  return sub_1957130(a3, v16, v15, v7);
}

uint64_t sub_167F1F0(uint64_t a1)
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

  v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_14:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_15:
  v9 = *(a1 + 8);
  if (v9)
  {
    v14 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_167F34C(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_11:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_167F418(uint64_t a1)
{
  sub_167F34C(a1);

  operator delete();
}

uint64_t sub_167F450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_17;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  *v3 = 0;
  *(v3 + 23) = 0;
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v6 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v6)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_167F508(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v23 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v23, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v23 + 1);
    v7 = **v23;
    if (**v23 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v23, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v23 + 2);
      }
    }

    *v23 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 8);
        v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v17 = *v17;
        }

        v18 = (a1 + 40);
        goto LABEL_31;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
        goto LABEL_31;
      }
    }

    else if (v10 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 8);
      v17 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
LABEL_31:
      v21 = sub_194DB04(v18, v17);
      v15 = sub_1958890(v21, *v23, a3);
      goto LABEL_32;
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
        return *v23;
      }

LABEL_38:
      *v23 = 0;
      return *v23;
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v6 = *v23;
    }

    v15 = sub_1952690(v7, v14, v6, a3);
LABEL_32:
    *v23 = v15;
    if (!v15)
    {
      goto LABEL_38;
    }
  }

  return *v23;
}

char *sub_167F6C4(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_5:
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

uint64_t sub_167F7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_16;
  }

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
  if ((v1 & 4) != 0)
  {
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v12 = *(a1 + 8);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v2 += v15;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_167F908(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26FCD20;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = 0;
  return result;
}

void *sub_167F990(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26FCDA0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

void *sub_167FA18(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1680EBC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_167FA98(void *a1)
{
  sub_167FA18(a1);

  operator delete();
}

uint64_t sub_167FAD0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1680044(v4);
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

char *sub_167FB4C(uint64_t a1, char *a2, int32x2_t *a3)
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
            v17 = sub_16803F0(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_2231288(a3, v16, v13);
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

char *sub_167FCDC(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_16801CC(v8, v10, a3);
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

uint64_t sub_167FE1C(uint64_t a1)
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
      v7 = sub_16802E4(v6);
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

std::string *sub_167FEC4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1680FCC(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_167FF98(void *a1)
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

void sub_168000C(void *a1)
{
  sub_167FF98(a1);

  operator delete();
}

uint64_t sub_1680044(uint64_t a1)
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

char *sub_1680068(uint64_t a1, char *a2, int32x2_t *a3)
{
  v18 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
  {
    goto LABEL_28;
  }

  while (1)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 17)
      {
        v15 = *v6;
        v14 = v6 + 8;
        v5 |= 2u;
        *(a1 + 32) = v15;
LABEL_22:
        v18 = v14;
        goto LABEL_23;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 9)
    {
      v16 = *v6;
      v14 = v6 + 8;
      v5 |= 1u;
      *(a1 + 24) = v16;
      goto LABEL_22;
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
      v6 = v18;
    }

    v18 = sub_1952690(v7, v13, v6, a3);
    if (!v18)
    {
      goto LABEL_29;
    }

LABEL_23:
    if (sub_195ADC0(a3, &v18, a3[11].i32[1]))
    {
      goto LABEL_28;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_28;
  }

LABEL_29:
  v18 = 0;
LABEL_28:
  *(a1 + 16) |= v5;
  return v18;
}

char *sub_16801CC(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 32);
    *v4 = 17;
    *(v4 + 1) = v8;
    v4 += 9;
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

uint64_t sub_16802E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 3) != 0)
  {
    v3 = v2;
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

uint64_t sub_1680350(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FCE20;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_16803F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FCEA0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void sub_1680B18(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1675B80(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1680B9C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_167D3FC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1680C20(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_167D128(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_1680C9C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_1680CAC(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_167EA9C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_1680D28(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1680D38(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_167E154(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_1680DBC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_167EB30(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1680E38(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_191F014();
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1680EBC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_167FF98(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1680F40(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_191FBE0(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_1680FBC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_1680FCC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_16803F0(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_1681048(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_16810B8()
{
  dword_27D3608 = 1;
  dword_27D3620 = 2;
  dword_27D3638 = 3;
  dword_27D3668 = 5;
  qword_27D3688 = &aAacGeoTypeAdmi[180];
  dword_27D3698 = 7;
  qword_27D3718 = &aAacGeoTypeAdmi[351];
  qword_27D3778 = &aAacGeoTypeAdmi[491];
  qword_27D37C0 = &aAacGeoTypeAdmi[596];
  qword_27D37F0 = &aAacGeoTypeAdmi[666];
  qword_27D3808 = &aAacGeoTypeAdmi[701];
  qword_27D3820 = &aAacGeoTypeAdmi[736];
  qword_27D3838 = &aAacGeoTypeAdmi[771];
  result = 15;
  qword_27D3850 = &aAacGeoTypeAdmi[806];
  qword_27D3868 = &aAacGeoTypeAdmi[841];
  qword_27D3880 = &aAacGeoTypeAdmi[876];
  qword_27D3898 = &aAacGeoTypeAdmi[911];
  qword_27D38B0 = &aAacGeoTypeAdmi[946];
  qword_27D38C8 = &aAacGeoTypeAdmi[981];
  qword_27D38E0 = &aAacGeoTypeAdmi[1016];
  qword_27D38F8 = &aAacGeoTypeAdmi[1051];
  qword_27D3910 = &aAacGeoTypeAdmi[1086];
  qword_27D3928 = &aAacGeoTypeAdmi[1121];
  qword_27D3940 = &aAacGeoTypeAdmi[1156];
  qword_27D3958 = &aAacGeoTypeAdmi[1191];
  qword_27D3970 = &aAacGeoTypeAdmi[1226];
  qword_27D3988 = &aAacGeoTypeAdmi[1261];
  qword_27D39A0 = &aAacGeoTypeAdmi[1296];
  qword_27D39B8 = &aAacGeoTypeAdmi[1331];
  qword_27D39D0 = &aAacGeoTypeAdmi[1366];
  qword_27D39E8 = &aAacGeoTypeAdmi[1401];
  qword_27D3A00 = &aAacGeoTypeAdmi[1436];
  qword_27D3A18 = &aAacGeoTypeAdmi[1471];
  qword_27D3A30 = &aAacGeoTypeAdmi[1506];
  dword_27D3A40 = 46;
  qword_27D3A48 = &aAacGeoTypeAdmi[1541];
  dword_27D3A58 = 47;
  qword_27D3A60 = &aAacGeoTypeAdmi[1576];
  qword_27D3A78 = &aAacGeoTypeAdmi[1611];
  qword_27D3A90 = &aAacGeoTypeAdmi[1646];
  dword_27D3AA0 = 50;
  qword_27D3AA8 = &aAacGeoTypeAdmi[1681];
  qword_27D3AC0 = &aAacGeoTypeAdmi[1716];
  qword_27D3AD8 = &aAacGeoTypeAdmi[1751];
  dword_27D3AE8 = 53;
  qword_27D3AF0 = &aAacGeoTypeAdmi[1777];
  dword_27D3B00 = 54;
  qword_27D3B08 = &aAacGeoTypeAdmi[1801];
  dword_27D3B18 = 55;
  qword_27D3B20 = &aAacGeoTypeAdmi[1829];
  dword_27D3B30 = 56;
  qword_27D3B38 = &aAacGeoTypeAdmi[1865];
  dword_27D3B48 = 57;
  qword_27D3B50 = &aAacGeoTypeAdmi[1901];
  dword_27D3B60 = 58;
  qword_27D3B68 = &aAacGeoTypeAdmi[1937];
  dword_27D3B78 = 59;
  qword_27D3B80 = &aAacGeoTypeAdmi[1973];
  qword_27D3B98 = &aAacGeoTypeAdmi[2009];
  dword_27D3BA8 = 61;
  qword_27D3BB0 = &aAacGeoTypeAdmi[2036];
  dword_27D3BC0 = 62;
  qword_27D3BC8 = &aAacGeoTypeAdmi[2071];
  dword_27D3BD8 = 63;
  qword_27D3BE0 = &aAacGeoTypeAdmi[2106];
  dword_27D3BF0 = 64;
  qword_27D3BF8 = &aAacGeoTypeAdmi[2141];
  dword_27D3C08 = 65;
  qword_27D3C10 = &aAacGeoTypeAdmi[2167];
  dword_27D3C20 = 66;
  qword_27D3C28 = &aAacGeoTypeAdmi[2201];
  dword_27D3C38 = 67;
  qword_27D3C40 = &aAacGeoTypeAdmi[2235];
  dword_27D3C50 = 68;
  qword_27D3C58 = &aAacGeoTypeAdmi[2269];
  dword_27D3C68 = 69;
  qword_27D3C70 = &aAacGeoTypeAdmi[2303];
  dword_27D3C80 = 70;
  qword_27D3C88 = &aAacGeoTypeAdmi[2337];
  dword_27D3C98 = 71;
  qword_27D3CA0 = &aAacGeoTypeAdmi[2369];
  qword_27D3CA8 = 42;
  dword_27D3CB0 = 72;
  qword_27D3CB8 = &aAacGeoTypeAdmi[2411];
  qword_27D3CC0 = 31;
  dword_27D3CC8 = 73;
  qword_27D3CD0 = &aAacGeoTypeAdmi[2442];
  qword_27D3CD8 = 41;
  dword_27D3CE0 = 74;
  qword_27D3CE8 = &aAacGeoTypeAdmi[2483];
  qword_27D3CF0 = 35;
  dword_27D3CF8 = 75;
  qword_27D3D00 = &aAacGeoTypeAdmi[2518];
  qword_27D3D08 = 28;
  dword_27D3D10 = 76;
  qword_27D3D18 = &aAacGeoTypeAdmi[2546];
  qword_27D3D20 = 14;
  dword_27D3D28 = 77;
  qword_27D3D30 = &aAacGeoTypeAdmi[2560];
  qword_27D3D38 = 16;
  dword_27D3D40 = 78;
  qword_27D3D48 = &aAacGeoTypeAdmi[2576];
  qword_27D3D50 = 13;
  dword_27D3D58 = 79;
  qword_27D3D60 = &aAacGeoTypeAdmi[2589];
  qword_27D3D68 = 16;
  dword_27D3D70 = 80;
  qword_27D3D78 = &aAacGeoTypeAdmi[2605];
  qword_27D3D80 = 29;
  dword_27D3D88 = 81;
  qword_27D3D90 = &aAacGeoTypeAdmi[2634];
  qword_27D3D98 = 38;
  dword_27D3DA0 = 82;
  qword_27D3DA8 = &aAacGeoTypeAdmi[2672];
  qword_27D3DB0 = 31;
  dword_27D3DB8 = 83;
  qword_27D3DC0 = &aAacGeoTypeAdmi[2703];
  qword_27D3DC8 = 23;
  dword_27D3DD0 = 84;
  qword_27D3DD8 = &aAacGeoTypeAdmi[2726];
  qword_27D3DE0 = 26;
  dword_27D3DE8 = 85;
  qword_27D3DF0 = &aAacGeoTypeAdmi[2752];
  qword_27D3DF8 = 12;
  dword_27D3E00 = 86;
  qword_27D3E08 = &aAacGeoTypeAdmi[2764];
  qword_27D3E10 = 13;
  dword_27D3E18 = 87;
  qword_27D3E20 = &aAacGeoTypeAdmi[2777];
  qword_27D3E28 = 23;
  dword_27D3E30 = 88;
  qword_27D3E38 = &aAacGeoTypeAdmi[2800];
  qword_27D3E40 = 27;
  dword_27D3E48 = 89;
  qword_27D3E50 = &aAacGeoTypeAdmi[2827];
  qword_27D3E58 = 13;
  dword_27D3E60 = 90;
  qword_27D3E68 = &aAacGeoTypeAdmi[2840];
  qword_27D3E70 = 15;
  dword_27D3E78 = 91;
  qword_27D3E80 = &aAacGeoTypeAdmi[2855];
  qword_27D3E88 = 12;
  dword_27D3E90 = 92;
  qword_27D3E98 = &aAacGeoTypeAdmi[2867];
  qword_27D3EA0 = 28;
  dword_27D3EA8 = 93;
  qword_27D3EB0 = &aAacGeoTypeAdmi[2895];
  qword_27D3EB8 = 27;
  dword_27D3EC0 = 94;
  qword_27D3EC8 = &aAacGeoTypeAdmi[2922];
  qword_27D3ED0 = 21;
  dword_27D3ED8 = 95;
  qword_27D3EE0 = &aAacGeoTypeAdmi[2943];
  qword_27D3EE8 = 17;
  dword_27D3EF0 = 96;
  qword_27D3EF8 = &aAacGeoTypeAdmi[2960];
  qword_27D3F00 = 15;
  dword_27D3F08 = 97;
  qword_27D3F10 = &aAacGeoTypeAdmi[2975];
  qword_27D3F18 = 18;
  dword_27D3F20 = 98;
  qword_27D3F28 = &aAacGeoTypeAdmi[2993];
  qword_27D3F30 = 25;
  dword_27D3F38 = 99;
  qword_27D3F40 = &aAacGeoTypeAdmi[3018];
  qword_27D3F48 = 24;
  dword_27D3F50 = 100;
  qword_27D3F58 = &aAacGeoTypeAdmi[3042];
  qword_27D3F60 = 20;
  dword_27D3F68 = 101;
  qword_27D3F70 = &aAacGeoTypeAdmi[3062];
  qword_27D3F78 = 22;
  dword_27D3F80 = 102;
  qword_27D3F88 = &aAacGeoTypeAdmi[3084];
  qword_27D3F90 = 28;
  dword_27D3F98 = 103;
  qword_27D3FA0 = &aAacGeoTypeAdmi[3112];
  qword_27D3FA8 = 16;
  dword_27D3FB0 = 104;
  qword_27D3FB8 = &aAacGeoTypeAdmi[3128];
  qword_27D3FC0 = 20;
  dword_27D3FC8 = 105;
  qword_27D3FD0 = &aAacGeoTypeAdmi[3148];
  qword_27D3FD8 = 14;
  dword_27D3FE0 = 106;
  qword_27D3FE8 = &aAacGeoTypeAdmi[3162];
  qword_27D3FF0 = 20;
  dword_27D3FF8 = 107;
  qword_27D4000 = &aAacGeoTypeAdmi[3182];
  qword_27D4008 = 17;
  dword_27D4010 = 108;
  qword_27D4018 = &aAacGeoTypeAdmi[3199];
  qword_27D4020 = 24;
  dword_27D4028 = 109;
  qword_27D4030 = &aAacGeoTypeAdmi[3223];
  qword_27D4038 = 29;
  dword_27D4040 = 110;
  qword_27D4048 = &aAacGeoTypeAdmi[3252];
  qword_27D4050 = 19;
  dword_27D4058 = 111;
  qword_27D4060 = &aAacGeoTypeAdmi[3271];
  qword_27D4068 = 17;
  dword_27D4070 = 112;
  qword_27D4078 = &aAacGeoTypeAdmi[3288];
  qword_27D4080 = 16;
  dword_27D4088 = 113;
  qword_27D4090 = &aAacGeoTypeAdmi[3304];
  qword_27D4098 = 15;
  dword_27D40A0 = 114;
  qword_27D40A8 = &aAacGeoTypeAdmi[3319];
  qword_27D40B0 = 21;
  dword_27D40B8 = 115;
  qword_27D40C0 = &aAacGeoTypeAdmi[3340];
  qword_27D40C8 = 15;
  dword_27D40D0 = 116;
  qword_27D40D8 = &aAacGeoTypeAdmi[3355];
  qword_27D40E0 = 19;
  dword_27D40E8 = 117;
  qword_27D40F0 = &aAacGeoTypeAdmi[3374];
  qword_27D40F8 = 27;
  dword_27D4100 = 118;
  qword_27D4108 = &aAacGeoTypeAdmi[3401];
  qword_27D4110 = 34;
  dword_27D4118 = 119;
  qword_27D4120 = &aAacGeoTypeAdmi[3435];
  qword_27D4128 = 32;
  dword_27D4130 = 120;
  qword_27D4138 = &aAacGeoTypeAdmi[3467];
  qword_27D4140 = 28;
  dword_27D4148 = 121;
  qword_27D4150 = &aAacGeoTypeAdmi[3495];
  qword_27D4158 = 25;
  dword_27D4160 = 122;
  qword_27D4168 = &aAacGeoTypeAdmi[3520];
  qword_27D4170 = 27;
  dword_27D4178 = 123;
  qword_27D4180 = &aAacGeoTypeAdmi[3547];
  qword_27D4188 = 14;
  dword_27D4190 = 124;
  qword_27D4198 = &aAacGeoTypeAdmi[3561];
  qword_27D41A0 = 12;
  dword_27D41A8 = 125;
  qword_27D41B0 = &aAacGeoTypeAdmi[3573];
  qword_27D41B8 = 26;
  dword_27D41C0 = 126;
  qword_27D41C8 = &aAacGeoTypeAdmi[3599];
  qword_27D41D0 = 25;
  dword_27D41D8 = 127;
  qword_27D41E0 = &aAacGeoTypeAdmi[3624];
  qword_27D41E8 = 14;
  qword_27D4410 = 15;
  dword_27D4418 = 141;
  qword_27D43F0 = &aAacGeoTypeAdmi[3983];
  qword_27D43F8 = 16;
  dword_27D4400 = 158;
  qword_27D4408 = &aAacGeoTypeAdmi[3999];
  qword_27D43D8 = &aAacGeoTypeAdmi[3967];
  qword_27D43E0 = 16;
  dword_27D43E8 = 157;
  dword_27D43B8 = 155;
  qword_27D43C0 = &aAacGeoTypeAdmi[3951];
  qword_27D43C8 = 16;
  dword_27D43D0 = 156;
  qword_27D4398 = 16;
  dword_27D43A0 = 154;
  qword_27D43A8 = &aAacGeoTypeAdmi[3935];
  qword_27D43B0 = 16;
  qword_27D4380 = 16;
  dword_27D4388 = 153;
  qword_27D4390 = &aAacGeoTypeAdmi[3919];
  qword_27D4360 = &aAacGeoTypeAdmi[3887];
  qword_27D4368 = 16;
  dword_27D4370 = 152;
  qword_27D4378 = &aAacGeoTypeAdmi[3903];
  qword_27D4348 = &aAacGeoTypeAdmi[3871];
  qword_27D4350 = 16;
  dword_27D4358 = 151;
  dword_27D4328 = 149;
  qword_27D4330 = &aAacGeoTypeAdmi[3855];
  qword_27D4338 = 16;
  dword_27D4340 = 150;
  qword_27D4308 = 15;
  dword_27D4310 = 140;
  qword_27D4318 = &aAacGeoTypeAdmi[3839];
  qword_27D4320 = 16;
  qword_27D42F0 = 15;
  dword_27D42F8 = 139;
  qword_27D4300 = &aAacGeoTypeAdmi[3824];
  qword_27D42D0 = &aAacGeoTypeAdmi[3796];
  qword_27D42D8 = 13;
  dword_27D42E0 = 138;
  qword_27D42E8 = &aAacGeoTypeAdmi[3809];
  dword_27D41F0 = 128;
  qword_27D42C0 = 15;
  dword_27D42C8 = 137;
  qword_27D42A0 = &aAacGeoTypeAdmi[3748];
  qword_27D42A8 = 33;
  dword_27D42B0 = 136;
  qword_27D42B8 = &aAacGeoTypeAdmi[3781];
  qword_27D4288 = &aAacGeoTypeAdmi[3732];
  qword_27D4290 = 16;
  dword_27D4298 = 135;
  dword_27D4268 = 133;
  qword_27D4270 = &aAacGeoTypeAdmi[3709];
  qword_27D4278 = 23;
  dword_27D4280 = 134;
  dword_27D4250 = 132;
  qword_27D4258 = &aAacGeoTypeAdmi[3692];
  qword_27D4260 = 17;
  qword_27D41F8 = &aAacGeoTypeAdmi[3638];
  dword_27D4238 = 131;
  qword_27D4240 = &aAacGeoTypeAdmi[3675];
  qword_27D4248 = 17;
  qword_27D4218 = 12;
  dword_27D4220 = 130;
  qword_27D4228 = &aAacGeoTypeAdmi[3667];
  qword_27D4230 = 8;
  qword_27D4200 = 17;
  dword_27D4208 = 129;
  qword_27D4210 = &aAacGeoTypeAdmi[3655];
  qword_27D4420 = &aAacGeoTypeAdmi[4014];
  dword_27D4430 = 142;
  qword_27D4438 = &aAacGeoTypeAdmi[4029];
  dword_27D4448 = 143;
  qword_27D4450 = &aAacGeoTypeAdmi[4044];
  dword_27D4460 = 144;
  qword_27D4468 = &aAacGeoTypeAdmi[4059];
  dword_27D4478 = 145;
  qword_27D4480 = &aAacGeoTypeAdmi[4074];
  dword_27D4490 = 146;
  qword_27D4498 = &aAacGeoTypeAdmi[4089];
  dword_27D44A8 = 147;
  qword_27D44B0 = &aAacGeoTypeAdmi[4104];
  dword_27D44C0 = 148;
  qword_27D44C8 = &aAacGeoTypeAdmi[4119];
  dword_27D44D8 = 159;
  qword_27D44E0 = &aAacGeoTypeAdmi[4137];
  dword_27D44F0 = 160;
  qword_27D44F8 = &aAacGeoTypeAdmi[4163];
  dword_27D4508 = 161;
  qword_27D4510 = &aAacGeoTypeAdmi[4189];
  dword_27D4520 = 162;
  qword_27D4528 = &aAacGeoTypeAdmi[4215];
  dword_27D4538 = 163;
  qword_27D4540 = &aAacGeoTypeAdmi[4233];
  dword_27D4550 = 164;
  qword_27D4558 = &aAacGeoTypeAdmi[4264];
  dword_27D4568 = 165;
  qword_27D4570 = &aAacGeoTypeAdmi[4288];
  dword_27D4580 = 166;
  qword_27D4588 = &aAacGeoTypeAdmi[4324];
  dword_27D4598 = 167;
  qword_27D45A0 = &aAacGeoTypeAdmi[4338];
  dword_27D45B0 = 168;
  qword_27D45B8 = &aAacGeoTypeAdmi[4350];
  dword_27D45C8 = 169;
  qword_27D45D0 = &aAacGeoTypeAdmi[4364];
  dword_27D45E0 = 170;
  qword_27D45E8 = &aAacGeoTypeAdmi[4378];
  dword_27D45F8 = 179;
  qword_27D4600 = &aAacGeoTypeAdmi[4393];
  dword_27D4610 = 180;
  qword_27D4618 = &aAacGeoTypeAdmi[4408];
  dword_27D4628 = 181;
  qword_27D4630 = &aAacGeoTypeAdmi[4423];
  dword_27D4640 = 182;
  qword_27D4648 = &aAacGeoTypeAdmi[4438];
  dword_27D4658 = 183;
  qword_27D4660 = &aAacGeoTypeAdmi[4453];
  dword_27D4670 = 184;
  qword_27D4678 = &aAacGeoTypeAdmi[4468];
  dword_27D4688 = 185;
  qword_27D4690 = &aAacGeoTypeAdmi[4483];
  dword_27D46A0 = 186;
  qword_27D46A8 = &aAacGeoTypeAdmi[4498];
  dword_27D46B8 = 187;
  qword_27D46C0 = &aAacGeoTypeAdmi[4513];
  dword_27D46D0 = 188;
  qword_27D46D8 = &aAacGeoTypeAdmi[4528];
  dword_27D46E8 = 171;
  qword_27D46F0 = &aAacGeoTypeAdmi[4542];
  dword_27D4700 = 172;
  qword_27D4708 = &aAacGeoTypeAdmi[4556];
  dword_27D4718 = 173;
  qword_27D4720 = &aAacGeoTypeAdmi[4570];
  dword_27D4730 = 174;
  qword_27D4738 = &aAacGeoTypeAdmi[4584];
  dword_27D4748 = 175;
  qword_27D4750 = &aAacGeoTypeAdmi[4598];
  dword_27D4760 = 176;
  qword_27D4768 = &aAacGeoTypeAdmi[4612];
  dword_27D4778 = 177;
  qword_27D4780 = &aAacGeoTypeAdmi[4626];
  dword_27D4790 = 178;
  qword_27D4798 = &aAacGeoTypeAdmi[4640];
  dword_27D47A8 = 189;
  qword_27D47B0 = &aAacGeoTypeAdmi[4649];
  dword_27D47C0 = 190;
  qword_27D47C8 = &aAacGeoTypeAdmi[4658];
  dword_27D47D8 = 191;
  qword_27D47E0 = &aAacGeoTypeAdmi[4667];
  dword_27D47F0 = 5786;
  qword_27D47F8 = &aAacGeoTypeAdmi[4693];
  dword_27D4808 = 192;
  qword_27D4810 = &aAacGeoTypeAdmi[4709];
  dword_27D4820 = 193;
  qword_27D4828 = &aAacGeoTypeAdmi[4729];
  dword_27D4838 = 194;
  qword_27D4840 = &aAacGeoTypeAdmi[4753];
  dword_27D4850 = 5787;
  qword_27D4858 = &aAacGeoTypeAdmi[4782];
  dword_27D4868 = 195;
  qword_27D4870 = &aAacGeoTypeAdmi[4799];
  dword_27D4880 = 196;
  qword_27D4888 = &aAacGeoTypeAdmi[4830];
  dword_27D4898 = 197;
  qword_27D48A0 = &aAacGeoTypeAdmi[4862];
  dword_27D48B0 = 198;
  qword_27D48B8 = &aAacGeoTypeAdmi[4885];
  dword_27D48C8 = 199;
  qword_27D48D0 = &aAacGeoTypeAdmi[4908];
  dword_27D48E0 = 200;
  qword_27D48E8 = &aAacGeoTypeAdmi[4931];
  dword_27D48F8 = 201;
  qword_27D4900 = &aAacGeoTypeAdmi[4945];
  dword_27D4910 = 202;
  qword_27D4918 = &aAacGeoTypeAdmi[4971];
  dword_27D4928 = 203;
  qword_27D4930 = &aAacGeoTypeAdmi[4981];
  dword_27D4940 = 204;
  qword_27D4948 = &aAacGeoTypeAdmi[5010];
  dword_27D4958 = 205;
  qword_27D4960 = &aAacGeoTypeAdmi[5026];
  dword_27D4970 = 206;
  qword_27D4978 = &aAacGeoTypeAdmi[5046];
  dword_27D4988 = 207;
  qword_27D4990 = &aAacGeoTypeAdmi[5067];
  dword_27D49A0 = 208;
  qword_27D49A8 = &aAacGeoTypeAdmi[5087];
  dword_27D49B8 = 209;
  qword_27D49C0 = &aAacGeoTypeAdmi[5102];
  dword_27D49D0 = 210;
  qword_27D49D8 = &aAacGeoTypeAdmi[5132];
  dword_27D49E8 = 211;
  qword_27D49F0 = &aAacGeoTypeAdmi[5157];
  dword_27D4A00 = 212;
  qword_27D4A08 = &aAacGeoTypeAdmi[5191];
  dword_27D4A18 = 213;
  qword_27D4A20 = &aAacGeoTypeAdmi[5220];
  dword_27D4A30 = 214;
  qword_27D4A38 = &aAacGeoTypeAdmi[5249];
  dword_27D4A48 = 215;
  qword_27D4A50 = &aAacGeoTypeAdmi[5262];
  dword_27D4A60 = 216;
  qword_27D4A68 = &aAacGeoTypeAdmi[5307];
  dword_27D4A78 = 217;
  qword_27D4A80 = &aAacGeoTypeAdmi[5343];
  dword_27D4A90 = 218;
  qword_27D4A98 = &aAacGeoTypeAdmi[5369];
  dword_27D4AA8 = 219;
  qword_27D4AB0 = &aAacGeoTypeAdmi[5410];
  dword_27D4AC0 = 220;
  qword_27D4AC8 = &aAacGeoTypeAdmi[5432];
  dword_27D4AD8 = 221;
  qword_27D4AE0 = &aAacGeoTypeAdmi[5456];
  dword_27D4AF0 = 222;
  qword_27D4AF8 = &aAacGeoTypeAdmi[5484];
  dword_27D4B08 = 223;
  qword_27D4B10 = &aAacGeoTypeAdmi[5506];
  dword_27D4B20 = 224;
  qword_27D4B28 = &aAacGeoTypeAdmi[5516];
  dword_27D4B38 = 225;
  qword_27D4B40 = &aAacGeoTypeAdmi[5534];
  dword_27D4B50 = 226;
  qword_27D4B58 = &aAacGeoTypeAdmi[5559];
  dword_27D4B68 = 227;
  qword_27D4B70 = &aAacGeoTypeAdmi[5579];
  dword_27D4B80 = 228;
  qword_27D4B88 = &aAacGeoTypeAdmi[5601];
  dword_27D4B98 = 229;
  qword_27D4BA0 = &aAacGeoTypeAdmi[5624];
  dword_27D4BB0 = 230;
  qword_27D4BB8 = &aAacGeoTypeAdmi[5645];
  dword_27D4BC8 = 231;
  qword_27D4BD0 = &aAacGeoTypeAdmi[5665];
  dword_27D4BE0 = 232;
  qword_27D4BE8 = &aAacGeoTypeAdmi[5685];
  dword_27D4BF8 = 233;
  qword_27D4C00 = &aAacGeoTypeAdmi[5707];
  dword_27D4C10 = 234;
  qword_27D4C18 = &aAacGeoTypeAdmi[5729];
  dword_27D4C28 = 235;
  qword_27D4C30 = &aAacGeoTypeAdmi[5753];
  dword_27D4C40 = 236;
  qword_27D4C48 = &aAacGeoTypeAdmi[5779];
  qword_27D3C90 = 32;
  dword_27D4C58 = 237;
  qword_27D4C60 = &aAacGeoTypeAdmi[5805];
  qword_27D3C78 = 34;
  dword_27D4C70 = 238;
  qword_27D4C78 = &aAacGeoTypeAdmi[5838];
  qword_27D3C60 = 34;
  dword_27D4C88 = 239;
  qword_27D4C90 = &aAacGeoTypeAdmi[5864];
  qword_27D3C48 = 34;
  dword_27D4CA0 = 240;
  qword_27D4CA8 = &aAacGeoTypeAdmi[5912];
  qword_27D3C30 = 34;
  dword_27D4CB8 = 241;
  qword_27D4CC0 = &aAacGeoTypeAdmi[5928];
  qword_27D3C18 = 34;
  dword_27D4CD0 = 242;
  qword_27D4CD8 = &aAacGeoTypeAdmi[5942];
  qword_27D3C00 = 26;
  dword_27D4CE8 = 243;
  qword_27D4CF0 = &aAacGeoTypeAdmi[5950];
  qword_27D3BE8 = 35;
  dword_27D4D00 = 244;
  qword_27D4D08 = &aAacGeoTypeAdmi[5962];
  qword_27D3BD0 = 35;
  dword_27D4D18 = 245;
  qword_27D4D20 = &aAacGeoTypeAdmi[5977];
  qword_27D3BB8 = 35;
  dword_27D4D30 = 246;
  qword_27D4D38 = &aAacGeoTypeAdmi[5988];
  qword_27D3BA0 = 27;
  dword_27D4D48 = 247;
  qword_27D3B88 = 36;
  dword_27D3B90 = 60;
  qword_27D4D50 = &aAacGeoTypeAdmi[5999];
  dword_27D4D60 = 248;
  qword_27D3B70 = 36;
  qword_27D4D68 = &aAacGeoTypeAdmi[6007];
  dword_27D4D78 = 249;
  qword_27D3B58 = 36;
  qword_27D4D80 = &aAacGeoTypeAdmi[6026];
  dword_27D4D90 = 250;
  qword_27D3B40 = 36;
  qword_27D4D98 = &aAacGeoTypeAdmi[6036];
  dword_27D4DA8 = 251;
  qword_27D3B28 = 36;
  qword_27D4DB0 = &aAacGeoTypeAdmi[6048];
  dword_27D4DC0 = 252;
  qword_27D3B10 = 28;
  qword_27D4DC8 = &aAacGeoTypeAdmi[6063];
  dword_27D4DD8 = 253;
  qword_27D3AF8 = 24;
  qword_27D4DE0 = &aAacGeoTypeAdmi[6079];
  dword_27D3AD0 = 52;
  qword_27D3AE0 = 26;
  dword_27D4DF0 = 254;
  dword_27D3AB8 = 51;
  qword_27D3AC8 = 35;
  qword_27D4DF8 = &aAacGeoTypeAdmi[6106];
  dword_27D4E08 = 255;
  qword_27D3AB0 = 35;
  qword_27D4E10 = &aAacGeoTypeAdmi[6133];
  qword_27D3A80 = 35;
  dword_27D3A88 = 49;
  qword_27D3A98 = 35;
  dword_27D4E20 = 256;
  qword_27D3A68 = 35;
  dword_27D3A70 = 48;
  qword_27D4E28 = &aAacGeoTypeAdmi[6160];
  dword_27D4E38 = 257;
  qword_27D3A50 = 35;
  qword_27D4E40 = &aAacGeoTypeAdmi[6184];
  dword_27D4E50 = 258;
  qword_27D3A38 = 35;
  qword_27D4E58 = &aAacGeoTypeAdmi[6208];
  qword_27D3A20 = 35;
  dword_27D3A28 = 45;
  dword_27D4E68 = 259;
  qword_27D3A08 = 35;
  dword_27D3A10 = 44;
  qword_27D4E70 = &aAacGeoTypeAdmi[6232];
  dword_27D4E80 = 260;
  qword_27D39F0 = 35;
  dword_27D39F8 = 43;
  qword_27D4E88 = &aAacGeoTypeAdmi[6243];
  dword_27D39C8 = 41;
  qword_27D39D8 = 35;
  dword_27D39E0 = 42;
  dword_27D4E98 = 261;
  dword_27D39B0 = 40;
  qword_27D39C0 = 35;
  qword_27D4EA0 = &aAacGeoTypeAdmi[6261];
  qword_27D3990 = 35;
  dword_27D3998 = 39;
  qword_27D39A8 = 35;
  dword_27D4EB0 = 262;
  qword_27D3978 = 35;
  dword_27D3980 = 38;
  qword_27D4EB8 = &aAacGeoTypeAdmi[6304];
  dword_27D3950 = 36;
  qword_27D3960 = 35;
  dword_27D3968 = 37;
  dword_27D4EC8 = 263;
  qword_27D3930 = 35;
  dword_27D3938 = 35;
  qword_27D3948 = 35;
  qword_27D4ED0 = &aAacGeoTypeAdmi[6341];
  dword_27D4EE0 = 264;
  qword_27D3918 = 35;
  dword_27D3920 = 34;
  qword_27D4EE8 = &aAacGeoTypeAdmi[6369];
  dword_27D4EF8 = 265;
  qword_27D3900 = 35;
  dword_27D3908 = 33;
  qword_27D4F00 = &aAacGeoTypeAdmi[6399];
  dword_27D38D8 = 31;
  qword_27D38E8 = 35;
  dword_27D38F0 = 32;
  dword_27D4F10 = 266;
  qword_27D38B8 = 35;
  dword_27D38C0 = 30;
  qword_27D38D0 = 35;
  qword_27D4F18 = &aAacGeoTypeAdmi[6429];
  qword_27D38A0 = 35;
  dword_27D38A8 = 29;
  dword_27D4F28 = 267;
  dword_27D3878 = 27;
  qword_27D3888 = 35;
  dword_27D3890 = 28;
  qword_27D4F30 = &aAacGeoTypeAdmi[6457];
  dword_27D4F40 = 268;
  qword_27D3858 = 35;
  dword_27D3860 = 26;
  qword_27D3870 = 35;
  qword_27D4F48 = &aAacGeoTypeAdmi[6498];
  qword_27D3840 = 35;
  dword_27D3848 = 25;
  dword_27D4F58 = 269;
  dword_27D3818 = 23;
  qword_27D3828 = 35;
  dword_27D3830 = 24;
  qword_27D4F60 = &aAacGeoTypeAdmi[6533];
  dword_27D4F70 = 270;
  qword_27D37F8 = 35;
  dword_27D3800 = 22;
  qword_27D3810 = 35;
  qword_27D37D8 = &aAacGeoTypeAdmi[631];
  unk_27D37E0 = 35;
  dword_27D37D0 = 20;
  dword_27D37E8 = 21;
  qword_27D37A8 = &aAacGeoTypeAdmi[561];
  unk_27D37B0 = 35;
  dword_27D37B8 = 19;
  qword_27D37C8 = 35;
  qword_27D4F78 = &aAacGeoTypeAdmi[6559];
  qword_27D3790 = &aAacGeoTypeAdmi[526];
  unk_27D3798 = 35;
  dword_27D3788 = 17;
  dword_27D37A0 = 18;
  qword_27D3760 = &aAacGeoTypeAdmi[456];
  unk_27D3768 = 35;
  dword_27D3770 = 16;
  qword_27D3780 = 35;
  dword_27D4F88 = 271;
  qword_27D3748 = &aAacGeoTypeAdmi[421];
  unk_27D3750 = 35;
  dword_27D3758 = 15;
  qword_27D3730 = &aAacGeoTypeAdmi[386];
  unk_27D3738 = 35;
  dword_27D3728 = 13;
  dword_27D3740 = 14;
  qword_27D4F90 = &aAacGeoTypeAdmi[6581];
  qword_27D3700 = &aAacGeoTypeAdmi[316];
  unk_27D3708 = 35;
  dword_27D3710 = 12;
  qword_27D3720 = 35;
  qword_27D36E8 = &aAacGeoTypeAdmi[284];
  unk_27D36F0 = 32;
  dword_27D36F8 = 11;
  dword_27D4FA0 = 272;
  qword_27D36D0 = &aAacGeoTypeAdmi[258];
  unk_27D36D8 = 26;
  dword_27D36E0 = 10;
  qword_27D36B8 = &aAacGeoTypeAdmi[232];
  unk_27D36C0 = 26;
  dword_27D36C8 = 9;
  qword_27D4FA8 = &aAacGeoTypeAdmi[6601];
  qword_27D36A0 = &aAacGeoTypeAdmi[206];
  unk_27D36A8 = 26;
  dword_27D36B0 = 8;
  qword_27D3670 = &aAacGeoTypeAdmi[154];
  unk_27D3678 = 26;
  dword_27D3680 = 6;
  qword_27D3690 = 26;
  dword_27D4FB8 = 5785;
  qword_27D3658 = &aAacGeoTypeAdmi[128];
  unk_27D3660 = 26;
  qword_27D3640 = &aAacGeoTypeAdmi[102];
  unk_27D3648 = 26;
  dword_27D3650 = 4;
  qword_27D4FC0 = &aAacGeoTypeAdmi[6631];
  dword_27D4FD0 = 273;
  qword_27D3628 = &aAacGeoTypeAdmi[76];
  unk_27D3630 = 26;
  qword_27D4FD8 = &aAacGeoTypeAdmi[6639];
  qword_27D3610 = &aAacGeoTypeAdmi[50];
  unk_27D3618 = 26;
  dword_27D4FE8 = 274;
  qword_27D35F8 = &aAacGeoTypeAdmi[24];
  unk_27D3600 = 26;
  dword_27D35F0 = 0;
  qword_27D4FF0 = &aAacGeoTypeAdmi[6664];
  qword_27D35E0 = aAacGeoTypeAdmi;
  *algn_27D35E8 = 24;
  dword_27D5000 = 275;
  qword_27D4428 = 15;
  qword_27D4440 = 15;
  dword_27D53F0 = 317;
  qword_27D5800 = &aAacGeoTypeAdmi[8499];
  dword_27D5828 = 352;
  dword_27D5840 = 353;
  qword_27D5B78 = &aAacGeoTypeAdmi[9554];
  dword_27D5B88 = 387;
  qword_27D5B80 = 29;
  qword_27D5B60 = &aAacGeoTypeAdmi[9524];
  dword_27D5B70 = 386;
  qword_27D5B68 = 30;
  qword_27D5B48 = &aAacGeoTypeAdmi[9494];
  dword_27D5B58 = 385;
  qword_27D5B50 = 30;
  qword_27D5B30 = &aAacGeoTypeAdmi[9456];
  dword_27D5B40 = 384;
  qword_27D5B38 = 38;
  qword_27D5B18 = &aAacGeoTypeAdmi[9421];
  dword_27D5B28 = 383;
  qword_27D5B20 = 35;
  qword_27D5B00 = &aAacGeoTypeAdmi[9395];
  dword_27D5B10 = 382;
  qword_27D5B08 = 26;
  qword_27D5AE8 = &aAacGeoTypeAdmi[9358];
  dword_27D5AF8 = 381;
  qword_27D5AF0 = 37;
  qword_27D5AD0 = &aAacGeoTypeAdmi[9343];
  dword_27D5AE0 = 380;
  qword_27D5AD8 = 15;
  qword_27D5AB8 = &aAacGeoTypeAdmi[9332];
  dword_27D5AC8 = 379;
  qword_27D5AC0 = 11;
  qword_27D5AA0 = &aAacGeoTypeAdmi[9317];
  dword_27D5AB0 = 378;
  qword_27D5AA8 = 15;
  qword_27D5A88 = &aAacGeoTypeAdmi[9292];
  dword_27D5A98 = 5776;
  qword_27D5A90 = 25;
  qword_27D5A70 = &aAacGeoTypeAdmi[9278];
  dword_27D5A80 = 377;
  qword_27D5A78 = 14;
  qword_27D5A58 = &aAacGeoTypeAdmi[9263];
  dword_27D5A68 = 376;
  qword_27D5A60 = 15;
  qword_27D5A40 = &aAacGeoTypeAdmi[9244];
  dword_27D5A50 = 375;
  qword_27D5A48 = 19;
  qword_27D5A28 = &aAacGeoTypeAdmi[9224];
  dword_27D5A38 = 374;
  qword_27D5A30 = 20;
  qword_27D5A10 = &aAacGeoTypeAdmi[9202];
  dword_27D5A20 = 373;
  qword_27D5A18 = 22;
  qword_27D59F8 = &aAacGeoTypeAdmi[9190];
  dword_27D5A08 = 372;
  qword_27D5A00 = 12;
  qword_27D59E0 = &aAacGeoTypeAdmi[9161];
  dword_27D59F0 = 371;
  qword_27D59E8 = 29;
  qword_27D59C8 = &aAacGeoTypeAdmi[9133];
  dword_27D59D8 = 370;
  qword_27D59D0 = 28;
  qword_27D59B0 = &aAacGeoTypeAdmi[9106];
  dword_27D59C0 = 369;
  qword_27D59B8 = 27;
  qword_27D5998 = &aAacGeoTypeAdmi[9079];
  dword_27D59A8 = 368;
  qword_27D59A0 = 27;
  qword_27D5980 = &aAacGeoTypeAdmi[9048];
  dword_27D5990 = 367;
  qword_27D5988 = 31;
  qword_27D5968 = &aAacGeoTypeAdmi[9023];
  dword_27D5978 = 366;
  qword_27D5970 = 25;
  qword_27D5950 = &aAacGeoTypeAdmi[8995];
  dword_27D5960 = 365;
  qword_27D5958 = 28;
  qword_27D5938 = &aAacGeoTypeAdmi[8965];
  dword_27D5948 = 364;
  qword_27D5940 = 30;
  qword_27D5920 = &aAacGeoTypeAdmi[8932];
  dword_27D5930 = 363;
  qword_27D5928 = 33;
  qword_27D5908 = &aAacGeoTypeAdmi[8892];
  dword_27D5918 = 362;
  qword_27D5910 = 40;
  qword_27D58F0 = &aAacGeoTypeAdmi[8855];
  dword_27D5900 = 361;
  qword_27D58F8 = 37;
  qword_27D58D8 = &aAacGeoTypeAdmi[8816];
  dword_27D58E8 = 360;
  qword_27D58E0 = 39;
  qword_27D58C0 = &aAacGeoTypeAdmi[8786];
  dword_27D58D0 = 359;
  qword_27D58C8 = 30;
  qword_27D58A8 = &aAacGeoTypeAdmi[8748];
  dword_27D58B8 = 358;
  qword_27D58B0 = 38;
  qword_27D5890 = &aAacGeoTypeAdmi[8709];
  dword_27D58A0 = 357;
  qword_27D5898 = 39;
  qword_27D5878 = &aAacGeoTypeAdmi[8676];
  dword_27D5888 = 356;
  qword_27D5880 = 33;
  qword_27D5860 = &aAacGeoTypeAdmi[8646];
  dword_27D5870 = 355;
  qword_27D5868 = 30;
  qword_27D5848 = &aAacGeoTypeAdmi[8612];
  dword_27D5858 = 354;
  qword_27D5850 = 34;
  qword_27D5830 = &aAacGeoTypeAdmi[8569];
  qword_27D4EA8 = 43;
  qword_27D5838 = 43;
  dword_27D5810 = 351;
  qword_27D5818 = &aAacGeoTypeAdmi[8535];
  qword_27D5808 = 36;
  qword_27D5820 = 34;
  qword_27D4AA0 = 41;
  qword_27D4F38 = 41;
  qword_27D57F0 = 41;
  dword_27D57F8 = 350;
  dword_27D53D8 = 316;
  dword_27D57E0 = 349;
  qword_27D57E8 = &aAacGeoTypeAdmi[8458];
  dword_27D53C0 = 315;
  qword_27D53C8 = &aAacGeoTypeAdmi[7450];
  qword_27D53D0 = 11;
  dword_27D53A8 = 314;
  qword_27D53B0 = &aAacGeoTypeAdmi[7441];
  qword_27D53B8 = 9;
  dword_27D5390 = 313;
  qword_27D5398 = &aAacGeoTypeAdmi[7432];
  qword_27D53A0 = 9;
  dword_27D5378 = 312;
  qword_27D5380 = &aAacGeoTypeAdmi[7422];
  qword_27D5388 = 10;
  dword_27D5360 = 311;
  qword_27D5368 = &aAacGeoTypeAdmi[7406];
  qword_27D5370 = 16;
  dword_27D5348 = 310;
  qword_27D5350 = &aAacGeoTypeAdmi[7389];
  qword_27D5358 = 17;
  dword_27D5330 = 309;
  qword_27D5338 = &aAacGeoTypeAdmi[7369];
  qword_27D5340 = 20;
  dword_27D5318 = 308;
  qword_27D5320 = &aAacGeoTypeAdmi[7349];
  qword_27D5328 = 20;
  dword_27D5300 = 307;
  qword_27D5308 = &aAacGeoTypeAdmi[7332];
  qword_27D5310 = 17;
  dword_27D52E8 = 306;
  qword_27D52F0 = &aAacGeoTypeAdmi[7312];
  qword_27D52F8 = 20;
  dword_27D52D0 = 305;
  qword_27D52D8 = &aAacGeoTypeAdmi[7299];
  qword_27D52E0 = 13;
  dword_27D52B8 = 304;
  qword_27D52C0 = &aAacGeoTypeAdmi[7282];
  qword_27D52C8 = 17;
  dword_27D52A0 = 303;
  qword_27D52A8 = &aAacGeoTypeAdmi[7265];
  qword_27D52B0 = 17;
  dword_27D5288 = 302;
  qword_27D5290 = &aAacGeoTypeAdmi[7248];
  qword_27D5298 = 17;
  dword_27D5270 = 301;
  qword_27D5278 = &aAacGeoTypeAdmi[7233];
  qword_27D5280 = 15;
  dword_27D5258 = 300;
  qword_27D5260 = &aAacGeoTypeAdmi[7216];
  qword_27D5268 = 17;
  dword_27D5240 = 299;
  qword_27D5248 = &aAacGeoTypeAdmi[7199];
  qword_27D5250 = 17;
  dword_27D5228 = 298;
  qword_27D5230 = &aAacGeoTypeAdmi[7182];
  qword_27D5238 = 17;
  dword_27D5210 = 297;
  qword_27D5218 = &aAacGeoTypeAdmi[7167];
  qword_27D5220 = 15;
  dword_27D51F8 = 296;
  qword_27D5200 = &aAacGeoTypeAdmi[7150];
  qword_27D5208 = 17;
  dword_27D51E0 = 295;
  qword_27D51E8 = &aAacGeoTypeAdmi[7133];
  qword_27D51F0 = 17;
  dword_27D51C8 = 294;
  qword_27D51D0 = &aAacGeoTypeAdmi[7116];
  qword_27D51D8 = 17;
  dword_27D51B0 = 293;
  qword_27D51B8 = &aAacGeoTypeAdmi[7101];
  qword_27D51C0 = 15;
  dword_27D5198 = 292;
  qword_27D51A0 = &aAacGeoTypeAdmi[7078];
  qword_27D51A8 = 23;
  dword_27D5180 = 291;
  qword_27D5188 = &aAacGeoTypeAdmi[7068];
  qword_27D5190 = 10;
  dword_27D5168 = 290;
  qword_27D5170 = &aAacGeoTypeAdmi[7058];
  qword_27D5178 = 10;
  dword_27D5150 = 289;
  qword_27D5158 = &aAacGeoTypeAdmi[7032];
  qword_27D5160 = 26;
  dword_27D5138 = 288;
  qword_27D5140 = &aAacGeoTypeAdmi[7006];
  qword_27D5148 = 26;
  dword_27D5120 = 287;
  qword_27D5128 = &aAacGeoTypeAdmi[6980];
  qword_27D5130 = 26;
  dword_27D5108 = 286;
  qword_27D5110 = &aAacGeoTypeAdmi[6953];
  qword_27D5118 = 27;
  dword_27D50F0 = 285;
  qword_27D50F8 = &aAacGeoTypeAdmi[6926];
  qword_27D5100 = 27;
  dword_27D50D8 = 284;
  qword_27D50E0 = &aAacGeoTypeAdmi[6899];
  qword_27D50E8 = 27;
  dword_27D50C0 = 283;
  qword_27D50C8 = &aAacGeoTypeAdmi[6887];
  qword_27D50D0 = 12;
  dword_27D50A8 = 282;
  qword_27D50B0 = &aAacGeoTypeAdmi[6872];
  qword_27D50B8 = 15;
  dword_27D5090 = 281;
  qword_27D5098 = &aAacGeoTypeAdmi[6846];
  qword_27D50A0 = 26;
  dword_27D5078 = 280;
  qword_27D5080 = &aAacGeoTypeAdmi[6832];
  qword_27D5088 = 14;
  dword_27D5060 = 279;
  qword_27D5068 = &aAacGeoTypeAdmi[6817];
  qword_27D5070 = 15;
  dword_27D5048 = 278;
  qword_27D5050 = &aAacGeoTypeAdmi[6788];
  qword_27D5058 = 29;
  dword_27D5030 = 277;
  qword_27D5038 = &aAacGeoTypeAdmi[6759];
  qword_27D5040 = 29;
  dword_27D5018 = 276;
  qword_27D5020 = &aAacGeoTypeAdmi[6714];
  qword_27D5028 = 45;
  qword_27D5008 = &aAacGeoTypeAdmi[6682];
  qword_27D5010 = 32;
  qword_27D53E0 = &aAacGeoTypeAdmi[7461];
  qword_27D53F8 = &aAacGeoTypeAdmi[7478];
  qword_27D4FF8 = 18;
  dword_27D5408 = 318;
  qword_27D5410 = &aAacGeoTypeAdmi[7492];
  qword_27D4FE0 = 25;
  dword_27D5420 = 319;
  qword_27D5428 = &aAacGeoTypeAdmi[7515];
  qword_27D4FC8 = 8;
  dword_27D5438 = 320;
  qword_27D5440 = &aAacGeoTypeAdmi[7536];
  qword_27D4FB0 = 30;
  dword_27D5450 = 321;
  qword_27D5458 = &aAacGeoTypeAdmi[7566];
  qword_27D4F98 = 20;
  dword_27D5468 = 322;
  qword_27D5470 = &aAacGeoTypeAdmi[7604];
  qword_27D4F80 = 22;
  dword_27D5480 = 5781;
  qword_27D5488 = &aAacGeoTypeAdmi[7628];
  qword_27D4F68 = 26;
  dword_27D5498 = 323;
  qword_27D54A0 = &aAacGeoTypeAdmi[7659];
  qword_27D4F50 = 35;
  dword_27D54B0 = 324;
  qword_27D54B8 = &aAacGeoTypeAdmi[7690];
  dword_27D54C8 = 5780;
  qword_27D54D0 = &aAacGeoTypeAdmi[7707];
  dword_27D54E0 = 325;
  qword_27D4F20 = 28;
  qword_27D54E8 = &aAacGeoTypeAdmi[7731];
  dword_27D54F8 = 326;
  qword_27D4F08 = 30;
  qword_27D5500 = &aAacGeoTypeAdmi[7760];
  dword_27D5510 = 327;
  qword_27D4EF0 = 30;
  dword_27D5528 = 5812;
  qword_27D5530 = &aAacGeoTypeAdmi[7792];
  qword_27D4ED8 = 28;
  dword_27D5540 = 5815;
  qword_27D5548 = &aAacGeoTypeAdmi[7825];
  qword_27D4EC0 = 37;
  dword_27D5558 = 328;
  qword_27D5560 = &aAacGeoTypeAdmi[7840];
  dword_27D5570 = 329;
  qword_27D5578 = &aAacGeoTypeAdmi[7858];
  qword_27D4E90 = 18;
  dword_27D5588 = 330;
  qword_27D5590 = &aAacGeoTypeAdmi[7887];
  qword_27D4E78 = 11;
  dword_27D55A0 = 5778;
  qword_27D55A8 = &aAacGeoTypeAdmi[7902];
  qword_27D4E60 = 24;
  dword_27D55B8 = 331;
  qword_27D55C0 = &aAacGeoTypeAdmi[7913];
  qword_27D4E48 = 24;
  dword_27D55D0 = 332;
  qword_27D55D8 = &aAacGeoTypeAdmi[7942];
  qword_27D4E30 = 24;
  dword_27D55E8 = 333;
  qword_27D55F0 = &aAacGeoTypeAdmi[7968];
  qword_27D4E18 = 27;
  dword_27D5600 = 334;
  qword_27D5608 = &aAacGeoTypeAdmi[7999];
  qword_27D4E00 = 27;
  dword_27D5618 = 335;
  qword_27D5620 = &aAacGeoTypeAdmi[8012];
  qword_27D4DE8 = 27;
  dword_27D5630 = 336;
  qword_27D5638 = &aAacGeoTypeAdmi[8036];
  qword_27D4DD0 = 16;
  dword_27D5648 = 5804;
  qword_27D5650 = &aAacGeoTypeAdmi[8052];
  qword_27D4DB8 = 15;
  dword_27D5660 = 5803;
  qword_27D5668 = &aAacGeoTypeAdmi[8067];
  qword_27D4DA0 = 12;
  dword_27D5678 = 5797;
  qword_27D5680 = &aAacGeoTypeAdmi[8075];
  qword_27D4D88 = 10;
  dword_27D5690 = 337;
  qword_27D5698 = &aAacGeoTypeAdmi[8086];
  qword_27D4D70 = 19;
  dword_27D56A8 = 5798;
  qword_27D56B0 = &aAacGeoTypeAdmi[8094];
  qword_27D4D58 = 8;
  dword_27D56C0 = 338;
  qword_27D56C8 = &aAacGeoTypeAdmi[8123];
  qword_27D4D40 = 11;
  dword_27D56D8 = 5790;
  qword_27D56E0 = &aAacGeoTypeAdmi[8136];
  qword_27D4D28 = 11;
  dword_27D56F0 = 339;
  qword_27D56F8 = &aAacGeoTypeAdmi[8160];
  qword_27D4D10 = 15;
  dword_27D5708 = 340;
  qword_27D5710 = &aAacGeoTypeAdmi[8180];
  qword_27D4CF8 = 12;
  dword_27D5720 = 341;
  qword_27D5728 = &aAacGeoTypeAdmi[8205];
  qword_27D4CE0 = 8;
  dword_27D5738 = 342;
  qword_27D5740 = &aAacGeoTypeAdmi[8236];
  qword_27D4CC8 = 14;
  dword_27D5750 = 343;
  qword_27D5758 = &aAacGeoTypeAdmi[8272];
  qword_27D4CB0 = 16;
  dword_27D5768 = 344;
  qword_27D5770 = &aAacGeoTypeAdmi[8301];
  qword_27D4C98 = 48;
  dword_27D5780 = 345;
  qword_27D5788 = &aAacGeoTypeAdmi[8341];
  qword_27D4C80 = 26;
  dword_27D5798 = 346;
  qword_27D57A0 = &aAacGeoTypeAdmi[8372];
  qword_27D4C68 = 33;
  dword_27D57B0 = 347;
  qword_27D57B8 = &aAacGeoTypeAdmi[8401];
  qword_27D4C50 = 26;
  dword_27D57C8 = 348;
  qword_27D57D0 = &aAacGeoTypeAdmi[8433];
  qword_27D4C38 = 26;
  qword_27D5B90 = &aAacGeoTypeAdmi[9583];
  dword_27D5BA0 = 388;
  qword_27D4C20 = 24;
  qword_27D5BA8 = &aAacGeoTypeAdmi[9594];
  dword_27D5BB8 = 389;
  qword_27D4C08 = 22;
  qword_27D5BC0 = &aAacGeoTypeAdmi[9623];
  dword_27D5BD0 = 390;
  qword_27D4BF0 = 22;
  qword_27D5BD8 = &aAacGeoTypeAdmi[9638];
  dword_27D5BE8 = 391;
  qword_27D4BD8 = 20;
  qword_27D5BF0 = &aAacGeoTypeAdmi[9652];
  dword_27D5C00 = 392;
  qword_27D4BC0 = 20;
  qword_27D5C08 = &aAacGeoTypeAdmi[9660];
  dword_27D5C18 = 393;
  qword_27D4BA8 = 21;
  qword_27D5C20 = &aAacGeoTypeAdmi[9679];
  dword_27D5C30 = 394;
  qword_27D4B90 = 23;
  qword_27D5C38 = &aAacGeoTypeAdmi[9702];
  dword_27D5C48 = 395;
  qword_27D4B78 = 22;
  qword_27D5C50 = &aAacGeoTypeAdmi[9712];
  dword_27D5C60 = 396;
  qword_27D4B60 = 20;
  qword_27D5C68 = &aAacGeoTypeAdmi[9732];
  dword_27D5C78 = 397;
  qword_27D4B48 = 25;
  qword_27D5C80 = &aAacGeoTypeAdmi[9750];
  dword_27D5C90 = 398;
  qword_27D4B30 = 18;
  qword_27D5C98 = &aAacGeoTypeAdmi[9770];
  dword_27D5CA8 = 399;
  qword_27D4B18 = 10;
  qword_27D5CB0 = &aAacGeoTypeAdmi[9783];
  dword_27D5CC0 = 400;
  qword_27D4B00 = 22;
  qword_27D5CC8 = &aAacGeoTypeAdmi[9800];
  dword_27D5CD8 = 401;
  qword_27D4AE8 = 28;
  qword_27D5CE0 = &aAacGeoTypeAdmi[9828];
  dword_27D5CF0 = 402;
  qword_27D4AD0 = 24;
  qword_27D5CF8 = &aAacGeoTypeAdmi[9859];
  dword_27D5D08 = 403;
  qword_27D4AB8 = 22;
  qword_27D5D10 = &aAacGeoTypeAdmi[9882];
  dword_27D5D20 = 404;
  qword_27D5D28 = &aAacGeoTypeAdmi[9902];
  dword_27D5D38 = 405;
  qword_27D4A88 = 26;
  qword_27D5D40 = &aAacGeoTypeAdmi[9917];
  dword_27D5D50 = 5784;
  qword_27D4A70 = 36;
  qword_27D5D58 = &aAacGeoTypeAdmi[9939];
  dword_27D5D68 = 406;
  qword_27D4A58 = 45;
  qword_27D5D70 = &aAacGeoTypeAdmi[9960];
  dword_27D5D80 = 407;
  qword_27D4A40 = 13;
  qword_27D5D88 = &aAacGeoTypeAdmi[9983];
  dword_27D5D98 = 408;
  qword_27D4A28 = 29;
  qword_27D5DA0 = &aAacGeoTypeAdmi[10010];
  dword_27D5DB0 = 409;
  qword_27D4A10 = 29;
  qword_27D5DB8 = &aAacGeoTypeAdmi[10047];
  dword_27D5DC8 = 410;
  qword_27D49F8 = 34;
  qword_27D5DD0 = &aAacGeoTypeAdmi[10064];
  dword_27D5DE0 = 411;
  qword_27D49E0 = 25;
  qword_27D5DE8 = &aAacGeoTypeAdmi[10093];
  dword_27D5DF8 = 412;
  qword_27D49C8 = 30;
  qword_27D5E00 = &aAacGeoTypeAdmi[10119];
  dword_27D5E10 = 413;
  qword_27D49B0 = 15;
  qword_27D5E18 = &aAacGeoTypeAdmi[10129];
  dword_27D5E28 = 414;
  qword_27D4998 = 20;
  qword_27D5E30 = &aAacGeoTypeAdmi[10146];
  dword_27D5E40 = 415;
  qword_27D4980 = 21;
  qword_27D5E48 = &aAacGeoTypeAdmi[10180];
  dword_27D5E58 = 416;
  qword_27D4968 = 20;
  qword_27D5E60 = &aAacGeoTypeAdmi[10196];
  dword_27D5E70 = 417;
  qword_27D4950 = 16;
  qword_27D5E78 = &aAacGeoTypeAdmi[10209];
  dword_27D5E88 = 418;
  qword_27D4938 = 29;
  qword_27D5E90 = &aAacGeoTypeAdmi[10230];
  dword_27D5EA0 = 419;
  qword_27D4920 = 10;
  qword_27D5EA8 = &aAacGeoTypeAdmi[10241];
  dword_27D5EB8 = 5801;
  qword_27D4908 = 26;
  qword_27D5EC0 = &aAacGeoTypeAdmi[10261];
  dword_27D5ED0 = 5802;
  qword_27D48F0 = 14;
  qword_27D5ED8 = &aAacGeoTypeAdmi[10281];
  dword_27D5EE8 = 420;
  qword_27D48D8 = 23;
  qword_27D5EF0 = &aAacGeoTypeAdmi[10295];
  dword_27D5F00 = 421;
  qword_27D48C0 = 23;
  qword_27D5F08 = &aAacGeoTypeAdmi[10319];
  dword_27D5F18 = 422;
  qword_27D48A8 = 23;
  qword_27D5F20 = &aAacGeoTypeAdmi[10340];
  dword_27D5F30 = 423;
  qword_27D4890 = 32;
  qword_27D5F38 = &aAacGeoTypeAdmi[10379];
  dword_27D5F48 = 424;
  qword_27D4878 = 31;
  qword_27D5F50 = &aAacGeoTypeAdmi[10413];
  dword_27D5F60 = 425;
  qword_27D4860 = 17;
  qword_27D5F68 = &aAacGeoTypeAdmi[10447];
  dword_27D5F78 = 426;
  qword_27D4848 = 29;
  qword_27D5F80 = &aAacGeoTypeAdmi[10481];
  dword_27D5F90 = 427;
  qword_27D4830 = 24;
  qword_27D5F98 = &aAacGeoTypeAdmi[10502];
  dword_27D5FA8 = 428;
  qword_27D4818 = 20;
  qword_27D5FB0 = &aAacGeoTypeAdmi[10546];
  dword_27D5FC0 = 429;
  qword_27D4800 = 16;
  qword_27D5FC8 = &aAacGeoTypeAdmi[10580];
  dword_27D5FD8 = 430;
  qword_27D47E8 = 26;
  qword_27D5FE0 = &aAacGeoTypeAdmi[10609];
  dword_27D5FF0 = 431;
  qword_27D47D0 = 9;
  qword_27D5FF8 = &aAacGeoTypeAdmi[10626];
  dword_27D6008 = 432;
  qword_27D47B8 = 9;
  qword_27D6010 = &aAacGeoTypeAdmi[10660];
  dword_27D6020 = 433;
  qword_27D47A0 = 9;
  qword_27D6028 = &aAacGeoTypeAdmi[10693];
  dword_27D6038 = 434;
  qword_27D4788 = 14;
  qword_27D6040 = &aAacGeoTypeAdmi[10706];
  dword_27D6050 = 5799;
  qword_27D4770 = 14;
  qword_27D6058 = &aAacGeoTypeAdmi[10728];
  dword_27D6068 = 435;
  qword_27D4758 = 14;
  qword_27D6070 = &aAacGeoTypeAdmi[10744];
  dword_27D6080 = 5788;
  qword_27D4740 = 14;
  qword_27D6088 = &aAacGeoTypeAdmi[10753];
  dword_27D6098 = 5789;
  qword_27D4728 = 14;
  qword_27D60A0 = &aAacGeoTypeAdmi[10762];
  dword_27D60B0 = 436;
  qword_27D4710 = 14;
  qword_27D60B8 = &aAacGeoTypeAdmi[10789];
  dword_27D60C8 = 437;
  qword_27D46F8 = 14;
  qword_27D60D0 = &aAacGeoTypeAdmi[10820];
  dword_27D60E0 = 5800;
  qword_27D46E0 = 14;
  qword_27D60E8 = &aAacGeoTypeAdmi[10841];
  dword_27D60F8 = 438;
  qword_27D46C8 = 15;
  qword_27D6100 = &aAacGeoTypeAdmi[10858];
  dword_27D6110 = 439;
  qword_27D46B0 = 15;
  qword_27D6118 = &aAacGeoTypeAdmi[10880];
  dword_27D6128 = 440;
  qword_27D4698 = 15;
  qword_27D6130 = &aAacGeoTypeAdmi[10904];
  dword_27D6140 = 441;
  qword_27D4680 = 15;
  qword_27D6148 = &aAacGeoTypeAdmi[10922];
  dword_27D6158 = 442;
  qword_27D4668 = 15;
  qword_27D6160 = &aAacGeoTypeAdmi[10941];
  dword_27D6170 = 443;
  qword_27D4650 = 15;
  qword_27D6178 = &aAacGeoTypeAdmi[10969];
  dword_27D6188 = 444;
  qword_27D4638 = 15;
  qword_27D6190 = &aAacGeoTypeAdmi[10984];
  dword_27D61A0 = 445;
  qword_27D4620 = 15;
  qword_27D61A8 = &aAacGeoTypeAdmi[11008];
  dword_27D61B8 = 5796;
  qword_27D4608 = 15;
  qword_27D61C0 = &aAacGeoTypeAdmi[11031];
  dword_27D61D0 = 446;
  qword_27D45F0 = 15;
  qword_27D61D8 = &aAacGeoTypeAdmi[11060];
  dword_27D61E8 = 447;
  qword_27D45D8 = 14;
  qword_27D61F0 = &aAacGeoTypeAdmi[11100];
  dword_27D6200 = 448;
  qword_27D45C0 = 14;
  qword_27D6208 = &aAacGeoTypeAdmi[11138];
  dword_27D6218 = 449;
  qword_27D45A8 = 12;
  qword_27D6220 = &aAacGeoTypeAdmi[11171];
  dword_27D6230 = 450;
  qword_27D4590 = 14;
  qword_27D6238 = &aAacGeoTypeAdmi[11198];
  dword_27D6248 = 451;
  qword_27D4578 = 36;
  qword_27D6250 = &aAacGeoTypeAdmi[11237];
  dword_27D6260 = 452;
  qword_27D4560 = 24;
  qword_27D6268 = &aAacGeoTypeAdmi[11256];
  dword_27D6278 = 453;
  qword_27D4548 = 31;
  qword_27D6280 = &aAacGeoTypeAdmi[11279];
  dword_27D6290 = 5824;
  qword_27D4530 = 18;
  qword_27D6298 = &aAacGeoTypeAdmi[11298];
  dword_27D62A8 = 454;
  qword_27D4518 = 26;
  qword_27D62B0 = &aAacGeoTypeAdmi[11307];
  dword_27D62C0 = 455;
  qword_27D4500 = 26;
  qword_27D62C8 = &aAacGeoTypeAdmi[11332];
  dword_27D62D8 = 456;
  qword_27D44E8 = 26;
  qword_27D62E0 = &aAacGeoTypeAdmi[11371];
  dword_27D62F0 = 457;
  qword_27D44D0 = 18;
  qword_27D62F8 = &aAacGeoTypeAdmi[11387];
  dword_27D6308 = 5816;
  qword_27D44B8 = 15;
  qword_27D6310 = &aAacGeoTypeAdmi[11397];
  dword_27D6320 = 458;
  qword_27D44A0 = 15;
  qword_27D6328 = &aAacGeoTypeAdmi[11409];
  dword_27D6338 = 459;
  qword_27D4488 = 15;
  qword_27D6340 = &aAacGeoTypeAdmi[11427];
  dword_27D6350 = 460;
  qword_27D4470 = 15;
  qword_27D6358 = &aAacGeoTypeAdmi[11446];
  dword_27D6368 = 461;
  qword_27D4458 = 15;
  qword_27D6370 = &aAacGeoTypeAdmi[11472];
  dword_27D6380 = 5813;
  qword_27D57D8 = 25;
  qword_27D6388 = &aAacGeoTypeAdmi[11483];
  qword_27D53E8 = 17;
  dword_27D6398 = 462;
  qword_27D57A8 = 29;
  qword_27D57C0 = 32;
  qword_27D5400 = 14;
  qword_27D5418 = 23;
  qword_27D5430 = 21;
  qword_27D5448 = 30;
  qword_27D5778 = 40;
  qword_27D5790 = 31;
  qword_27D5460 = 38;
  qword_27D5478 = 24;
  qword_27D5490 = 31;
  qword_27D54A8 = 31;
  qword_27D5748 = 36;
  qword_27D5760 = 29;
  qword_27D54C0 = 17;
  qword_27D54D8 = 24;
  qword_27D54F0 = 29;
  qword_27D5508 = 8;
  qword_27D5718 = 25;
  qword_27D5730 = 31;
  qword_27D5520 = 24;
  qword_27D5538 = 33;
  qword_27D5550 = 15;
  qword_27D5568 = 18;
  qword_27D56E8 = 24;
  qword_27D5700 = 20;
  qword_27D5580 = 29;
  qword_27D5598 = 15;
  qword_27D55B0 = 11;
  qword_27D55C8 = 29;
  qword_27D56B8 = 29;
  qword_27D56D0 = 13;
  qword_27D55E0 = 26;
  qword_27D55F8 = 31;
  qword_27D5610 = 13;
  qword_27D5628 = 24;
  qword_27D5688 = 11;
  qword_27D56A0 = 8;
  qword_27D5640 = 16;
  qword_27D5658 = 15;
  qword_27D5670 = 8;
  qword_27D5B98 = 11;
  qword_27D5BB0 = 29;
  qword_27D5BC8 = 15;
  qword_27D5BE0 = 14;
  qword_27D5BF8 = 8;
  qword_27D5C10 = 19;
  qword_27D5C28 = 23;
  qword_27D5C40 = 10;
  qword_27D5C58 = 20;
  qword_27D5C70 = 18;
  qword_27D5C88 = 20;
  qword_27D5CA0 = 13;
  qword_27D5CB8 = 17;
  qword_27D5CD0 = 28;
  qword_27D5CE8 = 31;
  qword_27D5D00 = 23;
  qword_27D5D18 = 20;
  qword_27D5D30 = 15;
  qword_27D5D48 = 22;
  qword_27D5D60 = 21;
  qword_27D5D78 = 23;
  qword_27D5D90 = 27;
  qword_27D5DA8 = 37;
  qword_27D5DC0 = 17;
  qword_27D5DD8 = 29;
  qword_27D5DF0 = 26;
  qword_27D5E08 = 10;
  qword_27D5E20 = 17;
  qword_27D5E38 = 34;
  qword_27D5E50 = 16;
  qword_27D5E68 = 13;
  qword_27D5E80 = 21;
  qword_27D5E98 = 11;
  qword_27D5EB0 = 20;
  qword_27D5EC8 = 20;
  qword_27D5EE0 = 14;
  qword_27D5EF8 = 24;
  qword_27D5F10 = 21;
  qword_27D5F28 = 39;
  qword_27D5F40 = 34;
  qword_27D5F58 = 34;
  qword_27D5F70 = 34;
  qword_27D5F88 = 21;
  qword_27D5FA0 = 44;
  qword_27D5FB8 = 34;
  qword_27D5FD0 = 29;
  qword_27D5FE8 = 17;
  qword_27D6000 = 34;
  qword_27D6018 = 33;
  qword_27D6030 = 13;
  qword_27D6048 = 22;
  qword_27D6060 = 16;
  qword_27D6078 = 9;
  qword_27D6090 = 9;
  qword_27D60A8 = 27;
  qword_27D60C0 = 31;
  qword_27D60D8 = 21;
  qword_27D60F0 = 17;
  qword_27D6108 = 22;
  qword_27D6120 = 24;
  qword_27D6138 = 18;
  qword_27D6150 = 19;
  qword_27D6168 = 28;
  qword_27D6180 = 15;
  qword_27D6198 = 24;
  qword_27D61B0 = 23;
  qword_27D61C8 = 29;
  qword_27D61E0 = 40;
  qword_27D61F8 = 38;
  qword_27D6210 = 33;
  qword_27D6228 = 27;
  qword_27D6240 = 39;
  qword_27D6258 = 19;
  qword_27D6270 = 23;
  qword_27D6288 = 19;
  qword_27D62A0 = 9;
  qword_27D62B8 = 25;
  qword_27D62D0 = 39;
  qword_27D62E8 = 16;
  qword_27D6300 = 10;
  qword_27D6318 = 12;
  qword_27D6330 = 18;
  qword_27D6348 = 19;
  qword_27D6360 = 26;
  qword_27D6378 = 11;
  qword_27D6390 = 24;
  qword_27D7338 = 20;
  *(&qword_27D35E0 + &loc_4000) = 817;
  *(&qword_27D35E0 + &loc_4018) = 818;
  *(&qword_27D35E0 + &loc_4030) = 819;
  *(&qword_27D35E0 + &loc_4048) = 820;
  *(&qword_27D35E0 + &loc_4060) = 821;
  *(&qword_27D35E0 + &loc_4078) = 822;
  *(&qword_27D35E0 + &loc_4090) = 823;
  *(&qword_27D35E0 + sub_40A8) = 806;
  *(&qword_27D35E0 + &loc_40C0) = 824;
  *(&qword_27D35E0 + &loc_40D8) = 825;
  *(&qword_27D35E0 + &loc_40F0) = 826;
  *(&qword_27D35E0 + &loc_4120) = 828;
  *(&qword_27D35E0 + &loc_4138) = 829;
  *(&qword_27D35E0 + &loc_4150) = 830;
  *(&qword_27D35E0 + &loc_4168) = 831;
  *(&qword_27D35E0 + &loc_4180) = 832;
  *(&qword_27D35E0 + sub_4198) = 833;
  *(&qword_27D35E0 + &loc_41B0) = 807;
  *(&qword_27D35E0 + &loc_41C8) = 834;
  *(&qword_27D35E0 + &loc_41E0) = 835;
  *(&qword_27D35E0 + &loc_41F8) = 836;
  *(&qword_27D35E0 + &loc_4210) = 837;
  *(&qword_27D35E0 + &loc_4224 + 4) = 838;
  *(&qword_27D35E0 + &loc_4240) = 839;
  *(&qword_27D35E0 + &loc_4258) = 840;
  *(&qword_27D35E0 + &loc_4270) = 841;
  *(&qword_27D35E0 + &loc_4288) = 842;
  *(&qword_27D35E0 + &loc_42A0) = 843;
  *(&qword_27D35E0 + &locret_42B8) = 808;
  *(&qword_27D35E0 + &loc_42D0) = 844;
  *(&qword_27D35E0 + &loc_42E8) = 845;
  *(&qword_27D35E0 + &loc_4300) = 846;
  *(&qword_27D35E0 + &loc_4318) = 847;
  *(&qword_27D35E0 + &loc_4330) = 848;
  *(&qword_27D35E0 + &loc_4348) = 849;
  *(&qword_27D35E0 + &loc_4360) = 850;
  *(&qword_27D35E0 + &loc_4378) = 851;
  *(&qword_27D35E0 + &locret_4390) = 852;
  *(&qword_27D35E0 + &loc_43A8) = 853;
  *(&qword_27D35E0 + &loc_43B8 + 8) = 809;
  *(&qword_27D35E0 + &loc_43D8) = 810;
  *(&qword_27D35E0 + &loc_43F0) = 811;
  *(&qword_27D35E0 + &loc_4408) = 812;
  *(&qword_27D35E0 + &loc_4420) = 813;
  *(&qword_27D35E0 + &loc_4450) = 855;
  *(&qword_27D35E0 + &loc_4468) = 856;
  *(&qword_27D35E0 + &loc_4480) = 857;
  *(&qword_27D35E0 + &loc_4498) = 858;
  *(&qword_27D35E0 + &loc_44C8) = 860;
  *(&qword_27D35E0 + &loc_44E0) = 861;
  *(&qword_27D35E0 + &loc_44F8) = 862;
  *(&qword_27D35E0 + &loc_4510) = 863;
  *(&qword_27D35E0 + &loc_4528) = 864;
  *(&qword_27D35E0 + &loc_4540) = 865;
  *(&qword_27D35E0 + &loc_4558) = 866;
  *(&qword_27D35E0 + &loc_4570) = 867;
  *(&qword_27D35E0 + &loc_4588) = 868;
  *(&qword_27D35E0 + &loc_45A0) = 869;
  *(&qword_27D35E0 + &loc_45B8) = 5791;
  *(&qword_27D35E0 + sub_45D0) = 870;
  *(&qword_27D35E0 + &loc_45E8) = 5777;
  *(&qword_27D35E0 + &loc_4600) = 871;
  *(&qword_27D35E0 + &loc_4618) = 872;
  *(&qword_27D35E0 + &loc_4630) = 873;
  *(&qword_27D35E0 + &loc_4648) = 874;
  *(&qword_27D35E0 + &loc_4660) = 875;
  *(&qword_27D35E0 + &loc_4678) = 876;
  *(&qword_27D35E0 + &loc_4690) = 877;
  *(&qword_27D35E0 + &loc_46A8) = 878;
  *(&qword_27D35E0 + &loc_46C0) = 879;
  *(&qword_27D35E0 + &loc_46D8) = 880;
  *(&qword_27D35E0 + &loc_46F0) = 881;
  *(&qword_27D35E0 + &loc_4708) = 882;
  *(&qword_27D35E0 + &locret_4720) = 883;
  *(&qword_27D35E0 + &loc_4738) = 884;
  *(&qword_27D35E0 + &loc_4750) = 885;
  *(&qword_27D35E0 + &loc_4768) = 886;
  *(&qword_27D35E0 + &locret_4780) = 887;
  *(&qword_27D35E0 + &loc_4798) = 888;
  *(&qword_27D35E0 + &loc_47B0) = 889;
  *(&qword_27D35E0 + &loc_47C8) = 890;
  *(&qword_27D35E0 + &loc_47E0) = 891;
  *(&qword_27D35E0 + &loc_4810) = 893;
  *(&qword_27D35E0 + &loc_4828) = 894;
  *(&qword_27D35E0 + &loc_4840) = 895;
  *(&qword_27D35E0 + &loc_4858) = 896;
  *(&qword_27D35E0 + &loc_4870) = 897;
  *(&qword_27D35E0 + &loc_4888) = 898;
  *(&qword_27D35E0 + &loc_48A0) = 899;
  *(&qword_27D35E0 + &loc_48B8) = 900;
  *(&qword_27D35E0 + &loc_48D0) = 901;
  *(&qword_27D35E0 + &loc_48E8) = 902;
  *(&qword_27D35E0 + &loc_4900) = 903;
  *(&qword_27D35E0 + &loc_4918) = 904;
  *(&qword_27D35E0 + &loc_4930) = 905;
  *(&qword_27D35E0 + &loc_4948) = 906;
  *(&qword_27D35E0 + &loc_4960) = 907;
  *(&qword_27D35E0 + &loc_4978) = 908;
  *(&qword_27D35E0 + &loc_4990) = 909;
  *(&qword_27D35E0 + &loc_49A8) = 5805;
  *(&qword_27D35E0 + &loc_49C0) = 5806;
  *(&qword_27D35E0 + &loc_49D8) = 5807;
  *(&qword_27D35E0 + &loc_49F0) = 5809;
  *(&qword_27D35E0 + &loc_4A08) = 5810;
  *(&qword_27D35E0 + &loc_4A20) = 910;
  *(&qword_27D35E0 + &loc_4A38) = 911;
  *(&qword_27D35E0 + &loc_4A50) = 912;
  *(&qword_27D35E0 + &loc_4A68) = 913;
  *(&qword_27D35E0 + &loc_4A80) = 914;
  *(&qword_27D35E0 + &loc_4A98) = 915;
  *(&qword_27D35E0 + &loc_4AB0) = 916;
  *(&qword_27D35E0 + &loc_4AC8) = 917;
  *(&qword_27D35E0 + &loc_4AE0) = 918;
  *(&qword_27D35E0 + &loc_4AF8) = 919;
  *(&qword_27D35E0 + &loc_4B10) = 920;
  *(&qword_27D35E0 + &loc_4B28) = 921;
  *(&qword_27D35E0 + &loc_4B40) = 922;
  *(&qword_27D35E0 + &loc_4B58) = 923;
  *(&qword_27D35E0 + &loc_4B70) = 924;
  *(&qword_27D35E0 + &loc_4B88) = 925;
  *(&qword_27D35E0 + sub_4BA0) = 926;
  *(&qword_27D35E0 + &loc_4BB8) = 927;
  *(&qword_27D35E0 + &loc_4BD0) = 928;
  *(&qword_27D35E0 + &loc_4BE8) = 929;
  *(&qword_27D35E0 + &loc_4C00) = 930;
  *(&qword_27D35E0 + &loc_4C18) = 931;
  *(&qword_27D35E0 + &loc_4C30) = 932;
  *(&qword_27D35E0 + &loc_4C48) = 933;
  *(&qword_27D35E0 + &loc_4C60) = 934;
  *(&qword_27D35E0 + &loc_4C78) = 935;
  *(&qword_27D35E0 + &loc_4C90) = 936;
  *(&qword_27D35E0 + &loc_4CA8) = 937;
  *(&qword_27D35E0 + &loc_4CC0) = 938;
  *(&qword_27D35E0 + &loc_4CD8) = 939;
  *(&qword_27D35E0 + &loc_4CF0) = 940;
  qword_27D63A0 = &aAacGeoTypeAdmi[11507];
  dword_27D63B0 = 463;
  qword_27D63B8 = &aAacGeoTypeAdmi[11533];
  dword_27D63C8 = 464;
  qword_27D63D0 = &aAacGeoTypeAdmi[11556];
  dword_27D63E0 = 465;
  qword_27D63E8 = &aAacGeoTypeAdmi[11569];
  dword_27D63F8 = 466;
  qword_27D6400 = &aAacGeoTypeAdmi[11585];
  dword_27D6410 = 467;
  qword_27D6418 = &aAacGeoTypeAdmi[11613];
  dword_27D6428 = 468;
  qword_27D6430 = &aAacGeoTypeAdmi[11631];
  dword_27D6440 = 469;
  qword_27D6448 = &aAacGeoTypeAdmi[11649];
  dword_27D6458 = 470;
  qword_27D6460 = &aAacGeoTypeAdmi[11667];
  dword_27D6470 = 471;
  qword_27D6478 = &aAacGeoTypeAdmi[11685];
  dword_27D6488 = 472;
  qword_27D6490 = &aAacGeoTypeAdmi[11703];
  dword_27D64A0 = 473;
  qword_27D64A8 = &aAacGeoTypeAdmi[11707];
  dword_27D64B8 = 474;
  qword_27D64C0 = &aAacGeoTypeAdmi[11723];
  dword_27D64D0 = 635;
  qword_27D64D8 = &aAacGeoTypeAdmi[11753];
  dword_27D64E8 = 636;
  qword_27D64F0 = &aAacGeoTypeAdmi[11786];
  dword_27D6500 = 637;
  qword_27D6508 = &aAacGeoTypeAdmi[11794];
  dword_27D6518 = 638;
  qword_27D6520 = &aAacGeoTypeAdmi[11804];
  dword_27D6530 = 639;
  qword_27D6538 = &aAacGeoTypeAdmi[11816];
  dword_27D6548 = 640;
  qword_27D6550 = &aAacGeoTypeAdmi[11833];
  dword_27D6560 = 641;
  qword_27D6568 = &aAacGeoTypeAdmi[11843];
  dword_27D6578 = 642;
  qword_27D6580 = &aAacGeoTypeAdmi[11855];
  dword_27D6590 = 651;
  qword_27D6598 = &aAacGeoTypeAdmi[11868];
  dword_27D65A8 = 643;
  qword_27D65B0 = &aAacGeoTypeAdmi[11880];
  dword_27D65C0 = 644;
  qword_27D65C8 = &aAacGeoTypeAdmi[11892];
  dword_27D65D8 = 645;
  qword_27D65E0 = &aAacGeoTypeAdmi[11904];
  dword_27D65F0 = 646;
  qword_27D65F8 = &aAacGeoTypeAdmi[11916];
  dword_27D6608 = 647;
  qword_27D6610 = &aAacGeoTypeAdmi[11928];
  dword_27D6620 = 648;
  qword_27D6628 = &aAacGeoTypeAdmi[11940];
  dword_27D6638 = 649;
  qword_27D6640 = &aAacGeoTypeAdmi[11952];
  dword_27D6650 = 650;
  qword_27D6658 = &aAacGeoTypeAdmi[11964];
  dword_27D6668 = 652;
  qword_27D6670 = &aAacGeoTypeAdmi[11975];
  dword_27D6680 = 653;
  qword_27D6688 = &aAacGeoTypeAdmi[11984];
  dword_27D6698 = 5811;
  qword_27D66A0 = &aAacGeoTypeAdmi[12007];
  dword_27D66B0 = 5814;
  qword_27D66B8 = &aAacGeoTypeAdmi[12039];
  dword_27D66C8 = 5792;
  qword_27D66D0 = &aAacGeoTypeAdmi[12048];
  dword_27D66E0 = 654;
  qword_27D66E8 = &aAacGeoTypeAdmi[12060];
  dword_27D66F8 = 655;
  qword_27D6700 = &aAacGeoTypeAdmi[12096];
  qword_27D6708 = 49;
  dword_27D6710 = 656;
  qword_27D6718 = &aAacGeoTypeAdmi[12145];
  dword_27D6728 = 657;
  qword_27D6730 = &aAacGeoTypeAdmi[12178];
  dword_27D6740 = 658;
  qword_27D6748 = &aAacGeoTypeAdmi[12211];
  dword_27D6758 = 5782;
  qword_27D6760 = &aAacGeoTypeAdmi[12229];
  dword_27D6770 = 5783;
  qword_27D6778 = &aAacGeoTypeAdmi[12254];
  dword_27D6788 = 659;
  qword_27D6790 = &aAacGeoTypeAdmi[12269];
  dword_27D67A0 = 660;
  qword_27D67A8 = &aAacGeoTypeAdmi[12284];
  dword_27D67B8 = 661;
  qword_27D67C0 = &aAacGeoTypeAdmi[12298];
  dword_27D67D0 = 662;
  qword_27D67D8 = &aAacGeoTypeAdmi[12315];
  dword_27D67E8 = 663;
  qword_27D67F0 = &aAacGeoTypeAdmi[12329];
  dword_27D6800 = 664;
  qword_27D6808 = &aAacGeoTypeAdmi[12342];
  dword_27D6818 = 665;
  qword_27D6820 = &aAacGeoTypeAdmi[12351];
  dword_27D6830 = 666;
  qword_27D6838 = &aAacGeoTypeAdmi[12362];
  dword_27D6848 = 667;
  qword_27D6850 = &aAacGeoTypeAdmi[12372];
  dword_27D6860 = 668;
  qword_27D6868 = &aAacGeoTypeAdmi[12389];
  dword_27D6878 = 669;
  qword_27D6880 = &aAacGeoTypeAdmi[12401];
  dword_27D6890 = 670;
  qword_27D6898 = &aAacGeoTypeAdmi[12415];
  dword_27D68A8 = 671;
  qword_27D68B0 = &aAacGeoTypeAdmi[12430];
  dword_27D68C0 = 672;
  qword_27D68C8 = &aAacGeoTypeAdmi[12443];
  dword_27D68D8 = 673;
  qword_27D68E0 = &aAacGeoTypeAdmi[12455];
  dword_27D68F0 = 674;
  qword_27D68F8 = &aAacGeoTypeAdmi[12467];
  dword_27D6908 = 675;
  qword_27D6910 = &aAacGeoTypeAdmi[12484];
  qword_27D6F58 = &aAacGeoTypeAdmi[13973];
  dword_27D6F68 = 742;
  qword_27D6F60 = 13;
  qword_27D6F40 = &aAacGeoTypeAdmi[13953];
  dword_27D6F50 = 741;
  qword_27D6F48 = 20;
  qword_27D6F28 = &aAacGeoTypeAdmi[13936];
  dword_27D6F38 = 740;
  qword_27D6F30 = 17;
  qword_27D6F10 = &aAacGeoTypeAdmi[13900];
  dword_27D6F20 = 739;
  qword_27D6F18 = 36;
  qword_27D6EF8 = &aAacGeoTypeAdmi[13864];
  dword_27D6F08 = 738;
  qword_27D6F00 = 36;
  qword_27D6EE0 = &aAacGeoTypeAdmi[13849];
  dword_27D6EF0 = 737;
  qword_27D6EE8 = 15;
  qword_27D6EC8 = &aAacGeoTypeAdmi[13837];
  dword_27D6ED8 = 736;
  qword_27D6ED0 = 12;
  qword_27D6EB0 = &aAacGeoTypeAdmi[13819];
  dword_27D6EC0 = 735;
  qword_27D6EB8 = 18;
  qword_27D6E98 = &aAacGeoTypeAdmi[13793];
  dword_27D6EA8 = 734;
  qword_27D6EA0 = 26;
  qword_27D6E80 = &aAacGeoTypeAdmi[13782];
  dword_27D6E90 = 733;
  qword_27D6E88 = 11;
  qword_27D6E68 = &aAacGeoTypeAdmi[13768];
  dword_27D6E78 = 732;
  qword_27D6E70 = 14;
  qword_27D6E50 = &aAacGeoTypeAdmi[13755];
  dword_27D6E60 = 731;
  qword_27D6E58 = 13;
  qword_27D6E38 = &aAacGeoTypeAdmi[13742];
  dword_27D6E48 = 730;
  qword_27D6E40 = 13;
  qword_27D6E20 = &aAacGeoTypeAdmi[13710];
  dword_27D6E30 = 729;
  qword_27D6E28 = 32;
  qword_27D6E08 = &aAacGeoTypeAdmi[13678];
  dword_27D6E18 = 728;
  qword_27D6E10 = 32;
  qword_27D6DF0 = &aAacGeoTypeAdmi[13650];
  dword_27D6E00 = 727;
  qword_27D6DF8 = 28;
  qword_27D6DD8 = &aAacGeoTypeAdmi[13639];
  dword_27D6DE8 = 726;
  qword_27D6DE0 = 11;
  qword_27D6DC0 = &aAacGeoTypeAdmi[13621];
  dword_27D6DD0 = 725;
  qword_27D6DC8 = 18;
  qword_27D6DA8 = &aAacGeoTypeAdmi[13592];
  dword_27D6DB8 = 724;
  qword_27D6DB0 = 29;
  qword_27D6D90 = &aAacGeoTypeAdmi[13575];
  dword_27D6DA0 = 723;
  qword_27D6D98 = 17;
  qword_27D6D78 = &aAacGeoTypeAdmi[13555];
  dword_27D6D88 = 722;
  qword_27D6D80 = 20;
  qword_27D6D60 = &aAacGeoTypeAdmi[13528];
  dword_27D6D70 = 721;
  qword_27D6D68 = 27;
  qword_27D6D48 = &aAacGeoTypeAdmi[13511];
  dword_27D6D58 = 720;
  qword_27D6D50 = 17;
  qword_27D6D30 = &aAacGeoTypeAdmi[13494];
  dword_27D6D40 = 719;
  qword_27D6D38 = 17;
  qword_27D6D18 = &aAacGeoTypeAdmi[13477];
  dword_27D6D28 = 718;
  qword_27D6D20 = 17;
  qword_27D6D00 = &aAacGeoTypeAdmi[13460];
  dword_27D6D10 = 717;
  qword_27D6D08 = 17;
  qword_27D6CE8 = &aAacGeoTypeAdmi[13443];
  dword_27D6CF8 = 716;
  qword_27D6CF0 = 17;
  qword_27D6CD0 = &aAacGeoTypeAdmi[13426];
  dword_27D6CE0 = 715;
  qword_27D6CD8 = 17;
  qword_27D6CB8 = &aAacGeoTypeAdmi[13409];
  dword_27D6CC8 = 714;
  qword_27D6CC0 = 17;
  qword_27D6CA0 = &aAacGeoTypeAdmi[13392];
  dword_27D6CB0 = 713;
  qword_27D6CA8 = 17;
  qword_27D6C88 = &aAacGeoTypeAdmi[13375];
  dword_27D6C98 = 712;
  qword_27D6C90 = 17;
  qword_27D6C70 = &aAacGeoTypeAdmi[13358];
  dword_27D6C80 = 711;
  qword_27D6C78 = 17;
  qword_27D6C58 = &aAacGeoTypeAdmi[13343];
  dword_27D6C68 = 710;
  qword_27D6C60 = 15;
  qword_27D6C40 = &aAacGeoTypeAdmi[13314];
  dword_27D6C50 = 709;
  qword_27D6C48 = 29;
  qword_27D6C28 = &aAacGeoTypeAdmi[13296];
  dword_27D6C38 = 708;
  qword_27D6C30 = 18;
  qword_27D6C10 = &aAacGeoTypeAdmi[13278];
  dword_27D6C20 = 707;
  qword_27D6C18 = 18;
  qword_27D6BF8 = &aAacGeoTypeAdmi[13260];
  dword_27D6C08 = 706;
  qword_27D6C00 = 18;
  qword_27D6BE0 = &aAacGeoTypeAdmi[13242];
  dword_27D6BF0 = 705;
  qword_27D6BE8 = 18;
  qword_27D6BC8 = &aAacGeoTypeAdmi[13224];
  dword_27D6BD8 = 704;
  qword_27D6BD0 = 18;
  qword_27D6BB0 = &aAacGeoTypeAdmi[13206];
  dword_27D6BC0 = 703;
  qword_27D6BB8 = 18;
  qword_27D6B98 = &aAacGeoTypeAdmi[13188];
  dword_27D6BA8 = 702;
  qword_27D6BA0 = 18;
  qword_27D6B80 = &aAacGeoTypeAdmi[13170];
  dword_27D6B90 = 701;
  qword_27D6B88 = 18;
  qword_27D6B68 = &aAacGeoTypeAdmi[13152];
  dword_27D6B78 = 700;
  qword_27D6B70 = 18;
  qword_27D6B50 = &aAacGeoTypeAdmi[13134];
  dword_27D6B60 = 699;
  qword_27D6B58 = 18;
  qword_27D6B38 = &aAacGeoTypeAdmi[13118];
  dword_27D6B48 = 698;
  qword_27D6B40 = 16;
  qword_27D6B20 = &aAacGeoTypeAdmi[13103];
  dword_27D6B30 = 697;
  qword_27D6B28 = 15;
  qword_27D6B08 = &aAacGeoTypeAdmi[13085];
  dword_27D6B18 = 696;
  qword_27D6B10 = 18;
  qword_27D6AF0 = &aAacGeoTypeAdmi[13061];
  dword_27D6B00 = 695;
  qword_27D6AF8 = 24;
  qword_27D6AD8 = &aAacGeoTypeAdmi[13031];
  dword_27D6AE8 = 694;
  qword_27D6AE0 = 30;
  qword_27D6AC0 = &aAacGeoTypeAdmi[13000];
  dword_27D6AD0 = 693;
  qword_27D6AC8 = 31;
  qword_27D6AA8 = &aAacGeoTypeAdmi[12985];
  dword_27D6AB8 = 692;
  qword_27D6AB0 = 15;
  qword_27D6A90 = &aAacGeoTypeAdmi[12969];
  dword_27D6AA0 = 691;
  qword_27D6A98 = 16;
  qword_27D6A78 = &aAacGeoTypeAdmi[12939];
  dword_27D6A88 = 690;
  qword_27D6A80 = 30;
  qword_27D6A60 = &aAacGeoTypeAdmi[12907];
  dword_27D6A70 = 689;
  qword_27D6A68 = 32;
  qword_27D6A48 = &aAacGeoTypeAdmi[12888];
  dword_27D6A58 = 688;
  qword_27D6A50 = 19;
  qword_27D6A30 = &aAacGeoTypeAdmi[12872];
  dword_27D6A40 = 687;
  qword_27D6A38 = 16;
  qword_27D6A18 = &aAacGeoTypeAdmi[12855];
  dword_27D6A28 = 686;
  qword_27D6A20 = 17;
  qword_27D6A00 = &aAacGeoTypeAdmi[12824];
  dword_27D6A10 = 685;
  qword_27D6A08 = 31;
  qword_27D69E8 = &aAacGeoTypeAdmi[12780];
  dword_27D69F8 = 684;
  qword_27D69F0 = 44;
  qword_27D69D0 = &aAacGeoTypeAdmi[12735];
  dword_27D69E0 = 683;
  qword_27D69D8 = 45;
  qword_27D69B8 = &aAacGeoTypeAdmi[12714];
  dword_27D69C8 = 5828;
  qword_27D69C0 = 21;
  qword_27D69A0 = &aAacGeoTypeAdmi[12683];
  dword_27D69B0 = 682;
  qword_27D69A8 = 31;
  qword_27D6988 = &aAacGeoTypeAdmi[12652];
  dword_27D6998 = 681;
  qword_27D6990 = 31;
  qword_27D6970 = &aAacGeoTypeAdmi[12623];
  dword_27D6980 = 680;
  qword_27D6978 = 29;
  qword_27D6958 = &aAacGeoTypeAdmi[12585];
  dword_27D6968 = 679;
  qword_27D6960 = 38;
  qword_27D6940 = &aAacGeoTypeAdmi[12525];
  qword_27D6948 = 60;
  dword_27D6950 = 678;
  qword_27D6928 = &aAacGeoTypeAdmi[12505];
  dword_27D6938 = 677;
  qword_27D6930 = 20;
  dword_27D6920 = 676;
  qword_27D6F70 = &aAacGeoTypeAdmi[13986];
  qword_27D6918 = 21;
  dword_27D6F80 = 743;
  qword_27D6F88 = &aAacGeoTypeAdmi[14005];
  qword_27D6900 = 17;
  qword_27D6F90 = 38;
  dword_27D6F98 = 744;
  qword_27D68E8 = 12;
  qword_27D6FA0 = &aAacGeoTypeAdmi[14043];
  dword_27D6FB0 = 745;
  qword_27D68D0 = 12;
  qword_27D6FB8 = &aAacGeoTypeAdmi[14073];
  dword_27D6FC8 = 746;
  qword_27D68B8 = 13;
  qword_27D6FD0 = &aAacGeoTypeAdmi[14105];
  dword_27D6FE0 = 747;
  qword_27D68A0 = 15;
  qword_27D6FE8 = &aAacGeoTypeAdmi[14120];
  dword_27D6FF8 = 748;
  qword_27D6888 = 14;
  qword_27D7000 = &aAacGeoTypeAdmi[14139];
  dword_27D7010 = 749;
  qword_27D6870 = 12;
  qword_27D7018 = &aAacGeoTypeAdmi[14152];
  dword_27D7028 = 750;
  qword_27D6858 = 17;
  qword_27D7030 = &aAacGeoTypeAdmi[14168];
  dword_27D7040 = 751;
  qword_27D6840 = 10;
  qword_27D7048 = &aAacGeoTypeAdmi[14194];
  dword_27D7058 = 752;
  qword_27D6828 = 11;
  qword_27D7060 = &aAacGeoTypeAdmi[14222];
  dword_27D7070 = 753;
  qword_27D6810 = 9;
  qword_27D7078 = &aAacGeoTypeAdmi[14250];
  dword_27D7088 = 754;
  qword_27D67F8 = 13;
  qword_27D7090 = &aAacGeoTypeAdmi[14278];
  dword_27D70A0 = 755;
  qword_27D67E0 = 14;
  qword_27D70A8 = &aAacGeoTypeAdmi[14308];
  dword_27D70B8 = 756;
  qword_27D67C8 = 17;
  qword_27D70C0 = &aAacGeoTypeAdmi[14330];
  dword_27D70D0 = 757;
  qword_27D67B0 = 14;
  qword_27D70D8 = &aAacGeoTypeAdmi[14362];
  dword_27D70E8 = 758;
  qword_27D6798 = 15;
  qword_27D70F0 = &aAacGeoTypeAdmi[14388];
  dword_27D7100 = 759;
  qword_27D6780 = 15;
  qword_27D7108 = &aAacGeoTypeAdmi[14417];
  dword_27D7118 = 760;
  qword_27D6768 = 25;
  qword_27D7120 = &aAacGeoTypeAdmi[14432];
  dword_27D7130 = 761;
  qword_27D6750 = 18;
  qword_27D7138 = &aAacGeoTypeAdmi[14457];
  dword_27D7148 = 762;
  qword_27D6738 = 33;
  qword_27D7150 = &aAacGeoTypeAdmi[14484];
  dword_27D7160 = 763;
  qword_27D6720 = 33;
  qword_27D7168 = &aAacGeoTypeAdmi[14506];
  dword_27D7178 = 764;
  qword_27D7180 = &aAacGeoTypeAdmi[14525];
  dword_27D7190 = 765;
  qword_27D7198 = &aAacGeoTypeAdmi[14543];
  qword_27D66F0 = 36;
  dword_27D71A8 = 766;
  qword_27D71B0 = &aAacGeoTypeAdmi[14562];
  qword_27D66D8 = 12;
  dword_27D71C0 = 767;
  qword_27D71C8 = &aAacGeoTypeAdmi[14590];
  qword_27D66C0 = 9;
  dword_27D71D8 = 768;
  qword_27D71E0 = &aAacGeoTypeAdmi[14610];
  qword_27D66A8 = 32;
  dword_27D71F0 = 769;
  qword_27D71F8 = &aAacGeoTypeAdmi[14634];
  qword_27D6690 = 23;
  dword_27D7208 = 770;
  qword_27D7210 = &aAacGeoTypeAdmi[14660];
  qword_27D6678 = 9;
  dword_27D7220 = 771;
  qword_27D7228 = &aAacGeoTypeAdmi[14691];
  qword_27D6660 = 11;
  dword_27D7238 = 772;
  qword_27D7240 = &aAacGeoTypeAdmi[14721];
  qword_27D6648 = 12;
  dword_27D7250 = 773;
  qword_27D7258 = &aAacGeoTypeAdmi[14744];
  qword_27D6630 = 12;
  dword_27D7268 = 774;
  qword_27D7270 = &aAacGeoTypeAdmi[14770];
  qword_27D6618 = 12;
  dword_27D7280 = 775;
  qword_27D7288 = &aAacGeoTypeAdmi[14789];
  qword_27D6600 = 12;
  dword_27D7298 = 776;
  qword_27D72A0 = &aAacGeoTypeAdmi[14805];
  qword_27D65E8 = 12;
  dword_27D72B0 = 777;
  qword_27D72B8 = &aAacGeoTypeAdmi[14828];
  qword_27D65D0 = 12;
  dword_27D72C8 = 778;
  qword_27D72D0 = &aAacGeoTypeAdmi[14854];
  qword_27D65B8 = 12;
  dword_27D72E0 = 779;
  qword_27D72E8 = &aAacGeoTypeAdmi[14876];
  qword_27D65A0 = 12;
  dword_27D72F8 = 780;
  qword_27D7300 = &aAacGeoTypeAdmi[14899];
  qword_27D6588 = 13;
  dword_27D7310 = 781;
  qword_27D7318 = &aAacGeoTypeAdmi[14922];
  qword_27D6570 = 12;
  dword_27D7328 = 782;
  qword_27D6540 = 17;
  qword_27D6558 = 10;
  qword_27D7330 = &aAacGeoTypeAdmi[14942];
  qword_27D63A8 = 26;
  qword_27D63C0 = 23;
  qword_27D63D8 = 13;
  qword_27D6510 = 10;
  qword_27D6528 = 12;
  qword_27D63F0 = 16;
  qword_27D6408 = 28;
  qword_27D6420 = 18;
  qword_27D6438 = 18;
  qword_27D64E0 = 33;
  qword_27D64F8 = 8;
  qword_27D6450 = 18;
  qword_27D6468 = 18;
  qword_27D6480 = 18;
  qword_27D6498 = 4;
  qword_27D64B0 = 16;
  qword_27D64C8 = 30;
  qword_27D6F78 = 19;
  qword_27D6FA8 = 30;
  qword_27D6FC0 = 32;
  qword_27D6FD8 = 15;
  qword_27D6FF0 = 19;
  qword_27D7008 = 13;
  qword_27D7020 = 16;
  qword_27D7038 = 26;
  qword_27D7050 = 28;
  qword_27D7068 = 28;
  qword_27D7080 = 28;
  qword_27D7098 = 30;
  qword_27D70B0 = 22;
  qword_27D70C8 = 32;
  qword_27D70E0 = 26;
  qword_27D70F8 = 29;
  qword_27D7110 = 15;
  qword_27D7128 = 25;
  qword_27D7140 = 27;
  qword_27D7158 = 22;
  qword_27D7170 = 19;
  qword_27D7188 = 18;
  qword_27D71A0 = 19;
  qword_27D71B8 = 28;
  qword_27D71D0 = 20;
  qword_27D71E8 = 24;
  qword_27D7200 = 26;
  qword_27D7218 = 31;
  qword_27D7230 = 30;
  qword_27D7248 = 23;
  qword_27D7260 = 26;
  qword_27D7278 = 19;
  qword_27D7290 = 16;
  qword_27D72A8 = 23;
  qword_27D72C0 = 26;
  qword_27D72D8 = 22;
  qword_27D72F0 = 23;
  qword_27D7308 = 23;
  qword_27D7320 = 20;
  qword_27D82D8 = &aAacGeoTypeAdmi[18206];
  *(&qword_27D35E0 + &loc_4D08) = 941;
  *(&qword_27D35E0 + &loc_4D20) = 942;
  *(&qword_27D35E0 + &loc_4D38) = 943;
  *(&qword_27D35E0 + &loc_4D50) = 944;
  *(&qword_27D35E0 + &loc_4D68) = 945;
  *(&qword_27D35E0 + &loc_4D80) = 946;
  *(&qword_27D35E0 + &loc_4D98) = 947;
  *(&qword_27D35E0 + &loc_4DB0) = 948;
  *(&qword_27D35E0 + &loc_4DC8) = 949;
  *(&qword_27D35E0 + &loc_4DE0) = 950;
  *(&qword_27D35E0 + &loc_4DF8) = 951;
  *(&qword_27D35E0 + &loc_4E10) = 952;
  *(&qword_27D35E0 + &loc_4E28) = 953;
  *(&qword_27D35E0 + &loc_4E40) = 954;
  *(&qword_27D35E0 + &loc_4E70) = 956;
  *(&qword_27D35E0 + &loc_4E88) = 957;
  *(&qword_27D35E0 + &loc_4EA0) = 958;
  *(&qword_27D35E0 + &loc_4EB8) = 959;
  *(&qword_27D35E0 + &loc_4ED0) = 960;
  *(&qword_27D35E0 + &loc_4EE8) = 961;
  *(&qword_27D35E0 + sub_4F00) = 962;
  *(&qword_27D35E0 + &loc_4F18) = 963;
  *(&qword_27D35E0 + &loc_4F30) = 964;
  *(&qword_27D35E0 + &loc_4F48) = 965;
  *(&qword_27D35E0 + &loc_4F60) = 966;
  *(&qword_27D35E0 + &loc_4F90) = 968;
  *(&qword_27D35E0 + &loc_4FA8) = 969;
  *(&qword_27D35E0 + &loc_4FC0) = 970;
  *(&qword_27D35E0 + &loc_4FD8) = 971;
  *(&qword_27D35E0 + &loc_5008) = 972;
  *(&qword_27D35E0 + &loc_5020) = 973;
  *(&qword_27D35E0 + &loc_5038) = 974;
  *(&qword_27D35E0 + &loc_5050) = 975;
  *(&qword_27D35E0 + &loc_5068) = 976;
  *(&qword_27D35E0 + &loc_5080) = 977;
  *(&qword_27D35E0 + &loc_5098) = 978;
  *(&qword_27D35E0 + &loc_50B0) = 979;
  *(&qword_27D35E0 + &loc_50C8) = 980;
  *(&qword_27D35E0 + &loc_50E0) = 981;
  *(&qword_27D35E0 + &loc_50F8) = 982;
  *(&qword_27D35E0 + &loc_5110) = 983;
  *(&qword_27D35E0 + &loc_5128) = 984;
  *(&qword_27D35E0 + &loc_5140) = 985;
  *(&qword_27D35E0 + &loc_5158) = 986;
  *(&qword_27D35E0 + &loc_5170) = 987;
  *(&qword_27D35E0 + &loc_5188) = 988;
  *(&qword_27D35E0 + &loc_51B8) = 990;
  *(&qword_27D35E0 + &loc_51CC + 4) = 991;
  *(&qword_27D35E0 + &loc_51E8) = 992;
  *(&qword_27D35E0 + &loc_5200) = 993;
  *(&qword_27D35E0 + &loc_5218) = 5821;
  *(&qword_27D35E0 + &loc_5230) = 994;
  *(&qword_27D35E0 + &loc_5244 + 4) = 995;
  *(&qword_27D35E0 + &loc_5260) = 996;
  *(&qword_27D35E0 + &loc_5278) = 997;
  *(&qword_27D35E0 + &loc_5290) = 998;
  *(&qword_27D35E0 + &loc_52A8) = 999;
  *(&qword_27D35E0 + &loc_52C0) = 1000;
  *(&qword_27D35E0 + &loc_52D8) = 1001;
  *(&qword_27D35E0 + &loc_5304 + 4) = 1003;
  *(&qword_27D35E0 + &loc_5320) = 1004;
  *(&qword_27D35E0 + &loc_5338) = 1005;
  *(&qword_27D35E0 + &loc_534C + 4) = 1006;
  *(&qword_27D35E0 + &loc_5364 + 4) = 1007;
  *(&qword_27D35E0 + &loc_5380) = 1008;
  *(&qword_27D35E0 + &loc_5398) = 1009;
  *(&qword_27D35E0 + &loc_53B0) = 1010;
  *(&qword_27D35E0 + &loc_53C8) = 1011;
  *(&qword_27D35E0 + &loc_53DC + 4) = 5822;
  *(&qword_27D35E0 + &loc_53F8) = 1012;
  *(&qword_27D35E0 + &loc_5410) = 1013;
  *(&qword_27D35E0 + &loc_5428) = 1014;
  *(&qword_27D35E0 + &loc_5440) = 1015;
  *(&qword_27D35E0 + &loc_5458) = 1016;
  *(&qword_27D35E0 + &loc_5470) = 1017;
  *(&qword_27D35E0 + &loc_5488) = 1018;
  *(&qword_27D35E0 + &loc_54A0) = 1019;
  *(&qword_27D35E0 + &loc_54B8) = 1020;
  *(&qword_27D35E0 + &loc_54CC + 4) = 1021;
  *(&qword_27D35E0 + &loc_54E4 + 4) = 1022;
  *(&qword_27D35E0 + &loc_5500) = 1023;
  *(&qword_27D35E0 + &loc_5518) = 1024;
  *(&qword_27D35E0 + &loc_5530) = 1025;
  *(&qword_27D35E0 + &loc_5548) = 1026;
  *(&qword_27D35E0 + &loc_5560) = 1027;
  *(&qword_27D35E0 + &loc_5578) = 1028;
  *(&qword_27D35E0 + &loc_5590) = 1029;
  *(&qword_27D35E0 + &loc_55A8) = 1030;
  *(&qword_27D35E0 + &loc_55C0) = 1031;
  *(&qword_27D35E0 + &loc_55D8) = 1032;
  *(&qword_27D35E0 + &loc_55F0) = 1033;
  *(&qword_27D35E0 + &loc_5608) = 1034;
  *(&qword_27D35E0 + &loc_5620) = 1035;
  *(&qword_27D35E0 + &loc_5638) = 1036;
  *(&qword_27D35E0 + &loc_5650) = 1037;
  *(&qword_27D35E0 + &loc_5668) = 1038;
  *(&qword_27D35E0 + &loc_5680) = 1039;
  *(&qword_27D35E0 + &loc_5698) = 1040;
  *(&qword_27D35E0 + &loc_56B0) = 1041;
  *(&qword_27D35E0 + &loc_56C8) = 1042;
  *(&qword_27D35E0 + &loc_56E0) = 1043;
  *(&qword_27D35E0 + &loc_56F4 + 4) = 1044;
  *(&qword_27D35E0 + &loc_570C + 4) = 1045;
  *(&qword_27D35E0 + &loc_5728) = 1046;
  *(&qword_27D35E0 + &loc_5740) = 1047;
  *(&qword_27D35E0 + &loc_5758) = 1048;
  *(&qword_27D35E0 + &loc_5770) = 1049;
  *(&qword_27D35E0 + &locret_5788) = 1050;
  *(&qword_27D35E0 + &loc_57A0) = 1051;
  *(&qword_27D35E0 + &loc_57B8) = 1052;
  *(&qword_27D35E0 + &loc_57D0) = 1053;
  *(&qword_27D35E0 + &loc_57E8) = 1054;
  *(&qword_27D35E0 + &loc_5800) = 1055;
  *(&qword_27D35E0 + &loc_5814 + 4) = 1056;
  *(&qword_27D35E0 + sub_5830) = 1057;
  *(&qword_27D35E0 + &loc_5848) = 1058;
  *(&qword_27D35E0 + &loc_5860) = 1059;
  *(&qword_27D35E0 + &loc_5890) = 1061;
  *(&qword_27D35E0 + &loc_58A8) = 1062;
  qword_27D7FD8 = &aAacGeoTypeAdmi[17265];
  qword_27D7FC0 = &aAacGeoTypeAdmi[17231];
  qword_27D7FC8 = 34;
  *(&qword_27D35E0 + &loc_58C0) = 1063;
  qword_27D7FB0 = 34;
  *(&qword_27D35E0 + &loc_58D8) = 1064;
  qword_27D7FA8 = &aAacGeoTypeAdmi[17197];
  qword_27D7F98 = 34;
  qword_27D7F90 = &aAacGeoTypeAdmi[17163];
  *(&qword_27D35E0 + &loc_58F0) = 1065;
  qword_27D7F78 = &aAacGeoTypeAdmi[17129];
  qword_27D7F80 = 34;
  *(&qword_27D35E0 + &loc_5908) = 1066;
  *(&qword_27D35E0 + &loc_5920) = 1067;
  qword_27D7F60 = &aAacGeoTypeAdmi[17102];
  qword_27D7F68 = 27;
  qword_27D7F48 = &aAacGeoTypeAdmi[17075];
  qword_27D7F50 = 27;
  *(&qword_27D35E0 + &loc_5938) = 1068;
  qword_27D7F38 = 27;
  *(&qword_27D35E0 + &loc_5950) = 1069;
  qword_27D7F30 = &aAacGeoTypeAdmi[17048];
  qword_27D7F20 = 27;
  qword_27D7F18 = &aAacGeoTypeAdmi[17021];
  *(&qword_27D35E0 + &loc_5968) = 1070;
  qword_27D7F00 = &aAacGeoTypeAdmi[16994];
  qword_27D7F08 = 27;
  *(&qword_27D35E0 + &loc_5980) = 1071;
  *(&qword_27D35E0 + &loc_5994 + 4) = 5794;
  qword_27D7EE8 = &aAacGeoTypeAdmi[16977];
  qword_27D7EF0 = 17;
  qword_27D7ED0 = &aAacGeoTypeAdmi[16948];
  qword_27D7ED8 = 29;
  *(&qword_27D35E0 + sub_59B0) = 1072;
  qword_27D7EC0 = 26;
  *(&qword_27D35E0 + &loc_59C8) = 1073;
  qword_27D7EB8 = &aAacGeoTypeAdmi[16922];
  qword_27D7EA8 = 24;
  qword_27D7EA0 = &aAacGeoTypeAdmi[16898];
  *(&qword_27D35E0 + &loc_59E0) = 1074;
  qword_27D7E88 = &aAacGeoTypeAdmi[16877];
  qword_27D7E90 = 21;
  *(&qword_27D35E0 + &loc_59F8) = 1075;
  *(&qword_27D35E0 + &loc_5A10) = 1076;
  qword_27D7E70 = &aAacGeoTypeAdmi[16856];
  qword_27D7E78 = 21;
  qword_27D7E58 = &aAacGeoTypeAdmi[16838];
  qword_27D7E60 = 18;
  *(&qword_27D35E0 + &loc_5A28) = 1077;
  qword_27D7E48 = 32;
  *(&qword_27D35E0 + &loc_5A40) = 1078;
  qword_27D7E40 = &aAacGeoTypeAdmi[16806];
  qword_27D7E30 = 29;
  qword_27D7E28 = &aAacGeoTypeAdmi[16777];
  *(&qword_27D35E0 + &loc_5A58) = 1079;
  qword_27D7E10 = &aAacGeoTypeAdmi[16765];
  qword_27D7E18 = 12;
  *(&qword_27D35E0 + &loc_5A70) = 1080;
  *(&qword_27D35E0 + &loc_47F8) = 892;
  qword_27D7DF8 = &aAacGeoTypeAdmi[16740];
  qword_27D7E00 = 25;
  qword_27D7DE0 = &aAacGeoTypeAdmi[16730];
  qword_27D7DE8 = 10;
  *(&qword_27D35E0 + &loc_5A88) = 1081;
  qword_27D7DD0 = 13;
  *(&qword_27D35E0 + &loc_5AA0) = 1082;
  qword_27D7DC8 = &aAacGeoTypeAdmi[16717];
  qword_27D7DB8 = 10;
  qword_27D7DB0 = &aAacGeoTypeAdmi[16707];
  *(&qword_27D35E0 + &loc_5AB8) = 1083;
  qword_27D7D98 = &aAacGeoTypeAdmi[16689];
  qword_27D7DA0 = 18;
  qword_27D7D80 = &aAacGeoTypeAdmi[16664];
  qword_27D7D88 = 25;
  *(&qword_27D35E0 + &loc_5AD0) = 1084;
  qword_27D7D70 = 16;
  v1 = &loc_4108;
  *(&qword_27D35E0 + v1) = 827;
  qword_27D7D68 = &aAacGeoTypeAdmi[v1];
  *(&qword_27D35E0 + &loc_5AE8) = 1085;
  qword_27D7D50 = &aAacGeoTypeAdmi[16636];
  qword_27D7D58 = 12;
  *(&qword_27D35E0 + &loc_5B00) = 1086;
  *(&qword_27D35E0 + &loc_5B18) = 1087;
  qword_27D7D38 = &aAacGeoTypeAdmi[16611];
  qword_27D7D40 = 25;
  qword_27D7D20 = &aAacGeoTypeAdmi[16586];
  qword_27D7D28 = 25;
  *(&qword_27D35E0 + &loc_5B30) = 5823;
  qword_27D7D10 = 25;
  *(&qword_27D35E0 + &loc_5B44 + 4) = 1088;
  qword_27D7D08 = &aAacGeoTypeAdmi[16561];
  qword_27D7CF8 = 32;
  qword_27D7CF0 = &aAacGeoTypeAdmi[16529];
  *(&qword_27D35E0 + &loc_5B60) = 1089;
  qword_27D7CD8 = &aAacGeoTypeAdmi[16497];
  qword_27D7CE0 = 32;
  *(&qword_27D35E0 + &loc_5B78) = 1090;
  *(&qword_27D35E0 + &loc_5B90) = 1091;
  qword_27D7CC0 = &aAacGeoTypeAdmi[16465];
  qword_27D7CC8 = 32;
  qword_27D7CA8 = &aAacGeoTypeAdmi[16442];
  qword_27D7CB0 = 23;
  *(&qword_27D35E0 + &loc_5BA8) = 1092;
  qword_27D7C98 = 23;
  *(&qword_27D35E0 + &loc_5BBC + 4) = 1093;
  qword_27D7C90 = &aAacGeoTypeAdmi[16419];
  qword_27D7C80 = 23;
  qword_27D7C78 = &aAacGeoTypeAdmi[16396];
  *(&qword_27D35E0 + &loc_5BD8) = 1094;
  qword_27D7C60 = &aAacGeoTypeAdmi[16377];
  qword_27D7C68 = 19;
  *(&qword_27D35E0 + &loc_5BF0) = 1095;
  *(&qword_27D35E0 + &loc_5C08) = 1096;
  qword_27D7C48 = &aAacGeoTypeAdmi[16358];
  qword_27D7C50 = 19;
  qword_27D7C30 = &aAacGeoTypeAdmi[16339];
  qword_27D7C38 = 19;
  *(&qword_27D35E0 + &loc_5C20) = 1097;
  qword_27D7C20 = 16;
  *(&qword_27D35E0 + &loc_5C38) = 1098;
  qword_27D7C18 = &aAacGeoTypeAdmi[16323];
  qword_27D7C08 = 17;
  qword_27D7C00 = &aAacGeoTypeAdmi[16306];
  *(&qword_27D35E0 + &loc_5C50) = 1099;
  qword_27D7BE8 = &aAacGeoTypeAdmi[16294];
  qword_27D7BF0 = 12;
  *(&qword_27D35E0 + &loc_5C68) = 1100;
  *(&qword_27D35E0 + &loc_5C80) = 1101;
  qword_27D7BD0 = &aAacGeoTypeAdmi[16283];
  qword_27D7BD8 = 11;
  qword_27D7BB8 = &aAacGeoTypeAdmi[16263];
  qword_27D7BC0 = 20;
  dword_27D7340 = 783;
  qword_27D7BA0 = &aAacGeoTypeAdmi[16252];
  qword_27D7BA8 = 11;
  qword_27D7348 = &aAacGeoTypeAdmi[14962];
  qword_27D7B88 = &aAacGeoTypeAdmi[16240];
  qword_27D7B90 = 12;
  dword_27D7358 = 784;
  qword_27D7B70 = &aAacGeoTypeAdmi[16220];
  qword_27D7B78 = 20;
  qword_27D7B58 = &aAacGeoTypeAdmi[16189];
  qword_27D7B60 = 31;
  qword_27D7360 = &aAacGeoTypeAdmi[14982];
  qword_27D7B40 = &aAacGeoTypeAdmi[16165];
  qword_27D7B48 = 24;
  dword_27D7370 = 785;
  qword_27D7B28 = &aAacGeoTypeAdmi[16152];
  qword_27D7B30 = 13;
  qword_27D7378 = &aAacGeoTypeAdmi[14999];
  dword_27D7388 = 786;
  qword_27D7B18 = 23;
  qword_27D7390 = &aAacGeoTypeAdmi[15022];
  qword_27D7B10 = &aAacGeoTypeAdmi[16129];
  qword_27D7B00 = 30;
  dword_27D73A0 = 787;
  qword_27D7AF8 = &aAacGeoTypeAdmi[16099];
  qword_27D73A8 = &aAacGeoTypeAdmi[15041];
  qword_27D7AE0 = &aAacGeoTypeAdmi[16082];
  qword_27D7AE8 = 17;
  dword_27D73B8 = 788;
  qword_27D7AC8 = &aAacGeoTypeAdmi[16065];
  qword_27D7AD0 = 17;
  qword_27D7AB0 = &aAacGeoTypeAdmi[16038];
  qword_27D7AB8 = 27;
  qword_27D7A80 = &aAacGeoTypeAdmi[16012];
  qword_27D7A98 = &aAacGeoTypeAdmi[16027];
  qword_27D7AA0 = 11;
  v2 = &loc_44B0;
  *(&qword_27D35E0 + v2) = 859;
  qword_27D7A88 = 15;
  qword_27D73C0 = &aAacGeoTypeAdmi[15060];
  qword_27D7A68 = &aAacGeoTypeAdmi[15985];
  qword_27D7A70 = 27;
  dword_27D73D0 = 789;
  qword_27D7A50 = &aAacGeoTypeAdmi[15960];
  qword_27D7A58 = 25;
  qword_27D73D8 = &aAacGeoTypeAdmi[15087];
  dword_27D73E8 = 790;
  v3 = &loc_4438;
  *(&qword_27D35E0 + v3) = 854;
  qword_27D7A38 = &aAacGeoTypeAdmi[15941];
  qword_27D7A40 = 19;
  qword_27D7A20 = &aAacGeoTypeAdmi[15929];
  qword_27D7A28 = 12;
  qword_27D73F0 = &aAacGeoTypeAdmi[15101];
  qword_27D7A08 = &aAacGeoTypeAdmi[15912];
  qword_27D7A10 = 17;
  dword_27D7400 = 791;
  qword_27D79F0 = &aAacGeoTypeAdmi[15902];
  qword_27D79F8 = 10;
  qword_27D7408 = &aAacGeoTypeAdmi[15131];
  qword_27D79D8 = &aAacGeoTypeAdmi[15892];
  qword_27D79E0 = 10;
  dword_27D7418 = 792;
  qword_27D79C0 = &aAacGeoTypeAdmi[15882];
  qword_27D79C8 = 10;
  qword_27D79A8 = &aAacGeoTypeAdmi[15872];
  qword_27D79B0 = 10;
  qword_27D7420 = &aAacGeoTypeAdmi[15161];
  qword_27D7990 = &aAacGeoTypeAdmi[15862];
  qword_27D7998 = 10;
  dword_27D7430 = 793;
  qword_27D7978 = &aAacGeoTypeAdmi[15851];
  qword_27D7980 = 11;
  qword_27D7438 = &aAacGeoTypeAdmi[15191];
  dword_27D7448 = 5793;
  qword_27D7968 = 11;
  qword_27D7450 = &aAacGeoTypeAdmi[15205];
  qword_27D7960 = &aAacGeoTypeAdmi[15840];
  qword_27D7950 = 11;
  dword_27D7460 = 794;
  qword_27D7948 = &aAacGeoTypeAdmi[15829];
  qword_27D7468 = &aAacGeoTypeAdmi[15221];
  qword_27D7930 = &aAacGeoTypeAdmi[15818];
  qword_27D7938 = 11;
  dword_27D7478 = 795;
  qword_27D7918 = &aAacGeoTypeAdmi[15807];
  qword_27D7920 = 11;
  qword_27D7900 = &aAacGeoTypeAdmi[15796];
  qword_27D7908 = 11;
  qword_27D7480 = &aAacGeoTypeAdmi[15234];
  qword_27D78E8 = &aAacGeoTypeAdmi[15785];
  qword_27D78F0 = 11;
  dword_27D7490 = 796;
  qword_27D78D0 = &aAacGeoTypeAdmi[15774];
  qword_27D78D8 = 11;
  qword_27D7498 = &aAacGeoTypeAdmi[15248];
  qword_27D78B8 = &aAacGeoTypeAdmi[15763];
  qword_27D78C0 = 11;
  dword_27D74A8 = 797;
  qword_27D78A0 = &aAacGeoTypeAdmi[15752];
  qword_27D78A8 = 11;
  qword_27D7888 = &aAacGeoTypeAdmi[15742];
  qword_27D7890 = 10;
  qword_27D74B0 = &aAacGeoTypeAdmi[15262];
  qword_27D7870 = &aAacGeoTypeAdmi[15731];
  qword_27D7878 = 11;
  dword_27D74C0 = 798;
  qword_27D7858 = &aAacGeoTypeAdmi[15720];
  qword_27D7860 = 11;
  qword_27D74C8 = &aAacGeoTypeAdmi[15276];
  dword_27D74D8 = 799;
  qword_27D7848 = 11;
  qword_27D74E0 = &aAacGeoTypeAdmi[15290];
  qword_27D7840 = &aAacGeoTypeAdmi[15709];
  qword_27D7830 = 11;
  dword_27D74F0 = 800;
  qword_27D7828 = &aAacGeoTypeAdmi[15698];
  qword_27D74F8 = &aAacGeoTypeAdmi[15304];
  qword_27D7810 = &aAacGeoTypeAdmi[15687];
  qword_27D7818 = 11;
  dword_27D7508 = 801;
  qword_27D77F8 = &aAacGeoTypeAdmi[15676];
  qword_27D7800 = 11;
  qword_27D77E0 = &aAacGeoTypeAdmi[15665];
  qword_27D77E8 = 11;
  qword_27D7510 = &aAacGeoTypeAdmi[15323];
  qword_27D77C8 = &aAacGeoTypeAdmi[15654];
  qword_27D77D0 = 11;
  dword_27D7520 = 802;
  qword_27D77B0 = &aAacGeoTypeAdmi[15643];
  qword_27D77B8 = 11;
  qword_27D7528 = &aAacGeoTypeAdmi[15339];
  qword_27D7798 = &aAacGeoTypeAdmi[15632];
  qword_27D77A0 = 11;
  dword_27D7538 = 5795;
  qword_27D7780 = &aAacGeoTypeAdmi[15622];
  qword_27D7788 = 10;
  qword_27D7768 = &aAacGeoTypeAdmi[15611];
  qword_27D7770 = 11;
  qword_27D7540 = &aAacGeoTypeAdmi[15363];
  qword_27D7750 = &aAacGeoTypeAdmi[15600];
  qword_27D7758 = 11;
  dword_27D7550 = 803;
  qword_27D7738 = &aAacGeoTypeAdmi[15589];
  qword_27D7740 = 11;
  qword_27D7558 = &aAacGeoTypeAdmi[15372];
  dword_27D7568 = 804;
  qword_27D7728 = 11;
  qword_27D7570 = &aAacGeoTypeAdmi[15382];
  qword_27D7720 = &aAacGeoTypeAdmi[15578];
  qword_27D7710 = 11;
  dword_27D7580 = 805;
  qword_27D7708 = &aAacGeoTypeAdmi[15567];
  qword_27D7588 = &aAacGeoTypeAdmi[15392];
  qword_27D76F0 = &aAacGeoTypeAdmi[15556];
  qword_27D76F8 = 11;
  dword_27D7598 = 814;
  qword_27D76D8 = &aAacGeoTypeAdmi[15545];
  qword_27D76E0 = 11;
  qword_27D76C0 = &aAacGeoTypeAdmi[15534];
  qword_27D76C8 = 11;
  qword_27D75A0 = &aAacGeoTypeAdmi[15403];
  qword_27D76A8 = &aAacGeoTypeAdmi[15523];
  qword_27D76B0 = 11;
  dword_27D75B0 = 815;
  qword_27D7690 = &aAacGeoTypeAdmi[15512];
  qword_27D7698 = 11;
  qword_27D75B8 = &aAacGeoTypeAdmi[15414];
  qword_27D7678 = &aAacGeoTypeAdmi[15502];
  qword_27D7680 = 10;
  dword_27D75C8 = 816;
  qword_27D7660 = &aAacGeoTypeAdmi[15491];
  qword_27D7668 = 11;
  qword_27D7648 = &aAacGeoTypeAdmi[15480];
  qword_27D7650 = 11;
  qword_27D75D0 = &aAacGeoTypeAdmi[15425];
  qword_27D75E8 = &aAacGeoTypeAdmi[15436];
  qword_27D7638 = 11;
  qword_27D7600 = &aAacGeoTypeAdmi[15447];
  qword_27D7630 = &aAacGeoTypeAdmi[15469];
  qword_27D7618 = &aAacGeoTypeAdmi[15458];
  qword_27D7FF0 = &aAacGeoTypeAdmi[17299];
  qword_27D7620 = 11;
  qword_27D8008 = &aAacGeoTypeAdmi[17326];
  qword_27D7608 = 11;
  qword_27D8020 = &aAacGeoTypeAdmi[17353];
  qword_27D8038 = &aAacGeoTypeAdmi[17380];
  qword_27D75F0 = 11;
  qword_27D8050 = &aAacGeoTypeAdmi[17407];
  qword_27D8068 = &aAacGeoTypeAdmi[17434];
  qword_27D75D8 = 11;
  qword_27D8080 = &aAacGeoTypeAdmi[v3];
  qword_27D8098 = &aAacGeoTypeAdmi[17494];
  qword_27D75C0 = 11;
  qword_27D80B0 = &aAacGeoTypeAdmi[17524];
  qword_27D75A8 = 11;
  qword_27D80C8 = &aAacGeoTypeAdmi[17554];
  qword_27D80E0 = &aAacGeoTypeAdmi[v2];
  qword_27D7590 = 11;
  qword_27D80F8 = &aAacGeoTypeAdmi[17613];
  qword_27D8110 = &aAacGeoTypeAdmi[17642];
  qword_27D7578 = 10;
  qword_27D8128 = &aAacGeoTypeAdmi[17671];
  qword_27D8140 = &aAacGeoTypeAdmi[17700];
  qword_27D8158 = &aAacGeoTypeAdmi[17729];
  qword_27D8170 = &aAacGeoTypeAdmi[17761];
  qword_27D7560 = 10;
  qword_27D8188 = &aAacGeoTypeAdmi[17793];
  qword_27D7548 = 9;
  qword_27D81A0 = &aAacGeoTypeAdmi[17825];
  qword_27D81B8 = &aAacGeoTypeAdmi[17857];
  qword_27D7530 = 24;
  qword_27D81D0 = &aAacGeoTypeAdmi[17889];
  qword_27D81E8 = &aAacGeoTypeAdmi[17917];
  qword_27D7518 = 16;
  qword_27D8200 = &aAacGeoTypeAdmi[17945];
  qword_27D7500 = 19;
  qword_27D8218 = &aAacGeoTypeAdmi[17973];
  qword_27D8230 = &aAacGeoTypeAdmi[18001];
  qword_27D74E8 = 14;
  qword_27D8248 = &aAacGeoTypeAdmi[18029];
  qword_27D8260 = &aAacGeoTypeAdmi[18058];
  qword_27D74D0 = 14;
  qword_27D8278 = &aAacGeoTypeAdmi[18087];
  qword_27D74B8 = 14;
  qword_27D8290 = &aAacGeoTypeAdmi[18116];
  qword_27D82A8 = &aAacGeoTypeAdmi[18145];
  qword_27D74A0 = 14;
  qword_27D82C0 = &aAacGeoTypeAdmi[18174];
  qword_27D7350 = 20;
  qword_27D7368 = 17;
  qword_27D7470 = 13;
  qword_27D7488 = 14;
  qword_27D7380 = 23;
  qword_27D7398 = 19;
  qword_27D73B0 = 19;
  qword_27D73C8 = 27;
  qword_27D7440 = 14;
  qword_27D7458 = 16;
  qword_27D73E0 = 14;
  qword_27D73F8 = 30;
  qword_27D7410 = 30;
  qword_27D7428 = 30;
  qword_27D7FE0 = 34;
  qword_27D7FF8 = 27;
  qword_27D8010 = 27;
  qword_27D8028 = 27;
  qword_27D8040 = 27;
  qword_27D8058 = 27;
  qword_27D8070 = 30;
  qword_27D8088 = 30;
  qword_27D80A0 = 30;
  qword_27D80B8 = 30;
  qword_27D80D0 = 30;
  qword_27D80E8 = 29;
  qword_27D8100 = 29;
  qword_27D8118 = 29;
  qword_27D8130 = 29;
  qword_27D8148 = 29;
  qword_27D8160 = 32;
  qword_27D8178 = 32;
  qword_27D8190 = 32;
  qword_27D81A8 = 32;
  qword_27D81C0 = 32;
  qword_27D81D8 = 28;
  qword_27D81F0 = 28;
  qword_27D8208 = 28;
  qword_27D8220 = 28;
  qword_27D8238 = 28;
  qword_27D8250 = 29;
  qword_27D8268 = 29;
  qword_27D8280 = 29;
  qword_27D8298 = 29;
  qword_27D82B0 = 29;
  qword_27D82C8 = 32;
  *(&qword_27D35E0 + &loc_5C98) = 1102;
  *(&qword_27D35E0 + &locret_5CB0) = 1103;
  *(&qword_27D35E0 + &loc_5CC8) = 1104;
  *(&qword_27D35E0 + &loc_5CE0) = 1105;
  *(&qword_27D35E0 + &loc_5CF8) = 1106;
  *(&qword_27D35E0 + &loc_5D10) = 1107;
  *(&qword_27D35E0 + &loc_5D28) = 1108;
  *(&qword_27D35E0 + &loc_5D40) = 1109;
  *(&qword_27D35E0 + &loc_5D54 + 4) = 1110;
  *(&qword_27D35E0 + &loc_5D70) = 1111;
  *(&qword_27D35E0 + &loc_5D88) = 1112;
  *(&qword_27D35E0 + &loc_5DA0) = 1113;
  *(&qword_27D35E0 + &loc_5DB8) = 1114;
  *(&qword_27D35E0 + &loc_5DD0) = 1115;
  *(&qword_27D35E0 + &loc_5DE8) = 1116;
  *(&qword_27D35E0 + &loc_5E00) = 1117;
  *(&qword_27D35E0 + &loc_5E18) = 1118;
  *(&qword_27D35E0 + &loc_5E30) = 1119;
  *(&qword_27D35E0 + &loc_5E48) = 1120;
  *(&qword_27D35E0 + &loc_5E60) = 1121;
  *(&qword_27D35E0 + &loc_5E78) = 1122;
  *(&qword_27D35E0 + &loc_5E90) = 1123;
  *(&qword_27D35E0 + &loc_5EA8) = 1124;
  *(&qword_27D35E0 + &loc_5EC0) = 1125;
  *(&qword_27D35E0 + &loc_5ED8) = 1126;
  *(&qword_27D35E0 + &loc_5EF0) = 1127;
  *(&qword_27D35E0 + &loc_5F08) = 1128;
  *(&qword_27D35E0 + &loc_5F20) = 1129;
  *(&qword_27D35E0 + &loc_5F38) = 1130;
  *(&qword_27D35E0 + &loc_5F68) = 1132;
  *(&qword_27D35E0 + &loc_5F80) = 1133;
  *(&qword_27D35E0 + &loc_5F98) = 5774;
  *(&qword_27D35E0 + &loc_5FB0) = 5819;
  *(&qword_27D35E0 + &loc_5FC8) = 5820;
  *(&qword_27D35E0 + &loc_5FDC + 4) = 5817;
  *(&qword_27D35E0 + &loc_5FF8) = 5818;
  *(&qword_27D35E0 + &loc_6010) = 5775;
  *(&qword_27D35E0 + &loc_6028) = 5773;
  *(&qword_27D35E0 + &loc_6040) = 1134;
  *(&qword_27D35E0 + &loc_6058) = 1135;
  *(&qword_27D35E0 + &loc_6070) = 1136;
  *(&qword_27D35E0 + &loc_6088) = 1137;
  *(&qword_27D35E0 + &loc_60A0) = 1138;
  *(&qword_27D35E0 + &loc_60B8) = 1139;
  *(&qword_27D35E0 + &loc_60D0) = 1140;
  *(&qword_27D35E0 + &loc_60E8) = 1141;
  *(&qword_27D35E0 + &loc_6100) = 1142;
  *(&qword_27D35E0 + &locret_6118) = 1143;
  *(&qword_27D35E0 + &loc_6130) = 1144;
  *(&qword_27D35E0 + &loc_6148) = 1145;
  *(&qword_27D35E0 + &loc_6160) = 1146;
  *(&qword_27D35E0 + &loc_6178) = 1147;
  *(&qword_27D35E0 + &loc_6190) = 1148;
  *(&qword_27D35E0 + &loc_61A8) = 1149;
  *(&qword_27D35E0 + &loc_61C0) = 1150;
  *(&qword_27D35E0 + &loc_61D8) = 1151;
  *(&qword_27D35E0 + &loc_61F0) = 1152;
  *(&qword_27D35E0 + &loc_6208) = 1153;
  *(&qword_27D35E0 + sub_6220) = 1154;
  *(&qword_27D35E0 + &loc_6238) = 1155;
  *(&qword_27D35E0 + &loc_6250) = 1156;
  *(&qword_27D35E0 + &loc_6268) = 1157;
  *(&qword_27D35E0 + &loc_6280) = 1158;
  *(&qword_27D35E0 + &loc_6298) = 1159;
  *(&qword_27D35E0 + &loc_62B0) = 1160;
  *(&qword_27D35E0 + &loc_62C8) = 1161;
  *(&qword_27D35E0 + &loc_62E0) = 1162;
  *(&qword_27D35E0 + &locret_6310) = 1164;
  *(&qword_27D35E0 + &locret_6328) = 1165;
  *(&qword_27D35E0 + &loc_6340) = 1166;
  *(&qword_27D35E0 + &loc_6358) = 1167;
  *(&qword_27D35E0 + &loc_6370) = 1168;
  *(&qword_27D35E0 + &loc_6388) = 2615;
  *(&qword_27D35E0 + &loc_63A0) = 2616;
  *(&qword_27D35E0 + &loc_63B8) = 3679;
  *(&qword_27D35E0 + &loc_63D0) = 3680;
  *(&qword_27D35E0 + &loc_63E8) = 3681;
  *(&qword_27D35E0 + &loc_6418) = 3683;
  *(&qword_27D35E0 + &loc_6430) = 3684;
  *(&qword_27D35E0 + &loc_6448) = 3685;
  *(&qword_27D35E0 + &loc_6460) = 3686;
  *(&qword_27D35E0 + &loc_6478) = 3687;
  *(&qword_27D35E0 + &loc_6490) = 3688;
  *(&qword_27D35E0 + &loc_64A8) = 3689;
  *(&qword_27D35E0 + &loc_64C0) = 3690;
  *(&qword_27D35E0 + &loc_64D8) = 3691;
  *(&qword_27D35E0 + &loc_64F0) = 3692;
  *(&qword_27D35E0 + &loc_6508) = 3693;
  *(&qword_27D35E0 + &loc_6520) = 3694;
  *(&qword_27D35E0 + &loc_6538) = 3695;
  *(&qword_27D35E0 + &loc_6550) = 3696;
  *(&qword_27D35E0 + &loc_6568) = 3697;
  *(&qword_27D35E0 + &loc_6580) = 3698;
  *(&qword_27D35E0 + &loc_6598) = 3699;
  *(&qword_27D35E0 + &loc_65B0) = 3700;
  qword_27D9A00 = "browse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9A08 = 22;
  qword_27D99E8 = "browse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D99F0 = 22;
  qword_27D99D0 = "browse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_63F4 + 12) = 3682;
  qword_27D99D8 = 22;
  *(&qword_27D35E0 + &loc_65C8) = 3701;
  *(&qword_27D35E0 + &loc_65E0) = 3702;
  qword_27D99B8 = "browse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D99C0 = 18;
  qword_27D99A0 = "browse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D99A8 = 15;
  *(&qword_27D35E0 + &loc_65F8) = 3704;
  qword_27D9990 = 14;
  *(&qword_27D35E0 + &loc_6610) = 3705;
  qword_27D9988 = "brand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9978 = 22;
  qword_27D9970 = "available_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6628) = 3707;
  qword_27D9958 = "addr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9960 = 18;
  *(&qword_27D35E0 + &loc_6640) = 3769;
  *(&qword_27D35E0 + &loc_6658) = 3770;
  qword_27D9940 = "VP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9948 = 8;
  qword_27D9928 = "VP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9930 = 8;
  *(&qword_27D35E0 + &loc_6670) = 3771;
  qword_27D9918 = 8;
  *(&qword_27D35E0 + &loc_6688) = 3775;
  qword_27D9910 = "VP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9900 = 8;
  qword_27D98F8 = "VP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_669C + 4) = 5827;
  qword_27D98E0 = "VIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D98E8 = 26;
  *(&qword_27D35E0 + &loc_62F8) = 1163;
  *(&qword_27D35E0 + &sub_66B8) = 3776;
  qword_27D98C8 = "VIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D98D0 = 22;
  qword_27D98B0 = "VIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D98B8 = 21;
  *(&qword_27D35E0 + &loc_66D0) = 3777;
  qword_27D98A0 = 10;
  *(&qword_27D35E0 + &loc_66E8) = 3778;
  qword_27D9898 = "VENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9888 = 11;
  qword_27D9880 = "V3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6700) = 3779;
  qword_27D9868 = "V3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9870 = 21;
  *(&qword_27D35E0 + &loc_6718) = 3780;
  *(&qword_27D35E0 + &loc_6730) = 3781;
  qword_27D9850 = "V3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9858 = 12;
  qword_27D9838 = "V3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9840 = 22;
  *(&qword_27D35E0 + &loc_6748) = 3783;
  qword_27D9828 = 26;
  *(&qword_27D35E0 + &loc_6760) = 4245;
  qword_27D9820 = "V2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9810 = 21;
  qword_27D9808 = "V2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6778) = 4246;
  qword_27D97F0 = "V2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D97F8 = 27;
  *(&qword_27D35E0 + &loc_6790) = 4247;
  *(&qword_27D35E0 + &loc_67A8) = 4248;
  qword_27D97D8 = "V2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D97E0 = 22;
  qword_27D97C0 = "V1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D97C8 = 30;
  *(&qword_27D35E0 + &loc_67C0) = 4249;
  qword_27D97B0 = 26;
  *(&qword_27D35E0 + &loc_67D8) = 4250;
  qword_27D97A8 = "V1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9798 = 27;
  qword_27D9790 = "V1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_67F0) = 4266;
  qword_27D9778 = "V1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9780 = 23;
  *(&qword_27D35E0 + &loc_6808) = 4267;
  *(&qword_27D35E0 + &loc_6820) = 4268;
  qword_27D9760 = "V1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9768 = 19;
  qword_27D9748 = "V1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9750 = 23;
  *(&qword_27D35E0 + &loc_6838) = 4269;
  qword_27D9738 = 20;
  *(&qword_27D35E0 + &loc_6850) = 4270;
  qword_27D9730 = "V1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9720 = 39;
  qword_27D9718 = "V1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6868) = 4271;
  qword_27D9700 = "V1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9708 = 35;
  *(&qword_27D35E0 + &loc_6880) = 4272;
  *(&qword_27D35E0 + &loc_6898) = 4273;
  qword_27D96E8 = "V1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D96F0 = 36;
  qword_27D96D0 = "V1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D96D8 = 32;
  *(&qword_27D35E0 + &loc_68B0) = 4274;
  qword_27D96C0 = 40;
  *(&qword_27D35E0 + &loc_68C8) = 4275;
  qword_27D96B8 = "V1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D96A8 = 36;
  qword_27D96A0 = "V1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_68E0) = 4276;
  qword_27D9688 = "V1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9690 = 37;
  *(&qword_27D35E0 + &loc_68F8) = 4277;
  *(&qword_27D35E0 + &loc_6910) = 4278;
  qword_27D9670 = "V1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9678 = 33;
  qword_27D9658 = "V0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9660 = 12;
  *(&qword_27D35E0 + &loc_6928) = 4279;
  qword_27D9648 = 13;
  *(&qword_27D35E0 + &loc_6940) = 4280;
  qword_27D9640 = "V0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9630 = 22;
  qword_27D9628 = "UTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6958) = 4281;
  qword_27D9610 = "UTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9618 = 26;
  *(&qword_27D35E0 + &loc_6970) = 4282;
  *(&qword_27D35E0 + &loc_6988) = 4283;
  qword_27D95F8 = "UA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9600 = 16;
  qword_27D95E0 = "UA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D95E8 = 19;
  *(&qword_27D35E0 + &loc_69A0) = 4284;
  qword_27D95D0 = 21;
  *(&qword_27D35E0 + &loc_69B8) = 4285;
  qword_27D95C8 = "UA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D95B8 = 12;
  qword_27D95B0 = "UA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_69D0) = 4286;
  qword_27D9598 = "UA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D95A0 = 22;
  *(&qword_27D35E0 + &loc_69E8) = 4287;
  qword_27D9588 = 13;
  *(&qword_27D35E0 + &loc_6A00) = 4288;
  qword_27D9580 = "UA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9570 = 18;
  qword_27D9568 = "UA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6A18) = 4289;
  qword_27D9550 = "TYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9558 = 12;
  v4 = &loc_5878;
  *(&qword_27D35E0 + v4) = 1060;
  qword_27D9540 = 13;
  v5 = &loc_5F50;
  *(&qword_27D35E0 + v5) = 1131;
  qword_27D9538 = &aAacGeoTypeAdmi[v4];
  qword_27D9528 = 16;
  qword_27D9520 = "TYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6A30) = 4290;
  qword_27D9508 = "TYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9510 = 22;
  *(&qword_27D35E0 + &loc_6A48) = 4291;
  *(&qword_27D35E0 + &loc_6A60) = 4292;
  qword_27D94F0 = "TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D94F8 = 15;
  qword_27D94D8 = "TYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D94E0 = 8;
  *(&qword_27D35E0 + &loc_6A78) = 4293;
  qword_27D94C8 = 25;
  *(&qword_27D35E0 + &loc_6A90) = 4294;
  qword_27D94C0 = "TILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D94B0 = 25;
  qword_27D94A8 = "TERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6AA8) = 4295;
  qword_27D9490 = "TAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9498 = 8;
  *(&qword_27D35E0 + &loc_6AC0) = 5825;
  *(&qword_27D35E0 + &loc_6AD8) = 5535;
  qword_27D9478 = "STREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9480 = 22;
  qword_27D9460 = "STREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9468 = 18;
  *(&qword_27D35E0 + &loc_6AF0) = 5826;
  qword_27D9450 = 12;
  *(&qword_27D35E0 + &loc_6B08) = 5640;
  qword_27D9448 = "STREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9438 = 25;
  qword_27D9430 = "STOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6B20) = 5641;
  qword_27D9418 = "SPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9420 = 22;
  *(&qword_27D35E0 + &loc_6B38) = 5642;
  *(&qword_27D35E0 + &loc_6B50) = 5643;
  qword_27D9400 = "SPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9408 = 26;
  qword_27D93E8 = "SPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D93F0 = 13;
  *(&qword_27D35E0 + &loc_6B68) = 5644;
  qword_27D93D8 = 42;
  *(&qword_27D35E0 + &loc_6B80) = 5765;
  qword_27D93C0 = 51;
  qword_27D93D0 = "SPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D93B8 = "SPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6B98) = 5766;
  qword_27D93A0 = "SPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D93A8 = 52;
  *(&qword_27D35E0 + &loc_6BB0) = 5767;
  *(&qword_27D35E0 + &loc_6BC8) = 5768;
  qword_27D9388 = "SPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9390 = 37;
  qword_27D9370 = "SPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9378 = 36;
  *(&qword_27D35E0 + &loc_6BE0) = 5769;
  qword_27D9360 = 35;
  *(&qword_27D35E0 + &loc_6BF8) = 5770;
  qword_27D9358 = "SPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9348 = 39;
  qword_27D9340 = "SPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  *(&qword_27D35E0 + &loc_6C10) = 5771;
  qword_27D9328 = "SPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9330 = 21;
  *(&qword_27D35E0 + &loc_6C24 + 4) = 5772;
  qword_27D9318 = 21;
  qword_27D82F0 = &aAacGeoTypeAdmi[18238];
  qword_27D9310 = "SPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8308 = &aAacGeoTypeAdmi[18270];
  qword_27D92F8 = "SPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9300 = 25;
  qword_27D92E0 = "SMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D92E8 = 19;
  qword_27D8320 = &aAacGeoTypeAdmi[18302];
  qword_27D92C8 = "SMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D92D0 = 17;
  qword_27D8338 = &aAacGeoTypeAdmi[18334];
  qword_27D92B0 = "SMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D92B8 = 15;
  qword_27D9298 = "SMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D92A0 = 19;
  qword_27D8350 = &aAacGeoTypeAdmi[18347];
  qword_27D8368 = &aAacGeoTypeAdmi[18363];
  qword_27D9288 = 20;
  qword_27D9268 = "SESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9280 = "SESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9270 = 16;
  qword_27D9250 = "SESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9258 = 17;
  qword_27D8380 = &aAacGeoTypeAdmi[18380];
  qword_27D8398 = &aAacGeoTypeAdmi[18392];
  qword_27D9240 = 15;
  qword_27D83B0 = &aAacGeoTypeAdmi[18404];
  qword_27D9238 = "SEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D83C8 = &aAacGeoTypeAdmi[18413];
  qword_27D9220 = "SEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9228 = 22;
  qword_27D83E0 = &aAacGeoTypeAdmi[18424];
  qword_27D9208 = "SCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9210 = 21;
  qword_27D91F0 = "SCTR_SMOOTH_GLOBAL_SOCSCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D91F8 = 22;
  qword_27D83F8 = &aAacGeoTypeAdmi[18437];
  qword_27D91D8 = "SCORE_PER_CUM_IMPR_POSSCTR_SMOOTH_GLOBAL_SOCSCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D91E0 = 22;
  qword_27D8410 = &aAacGeoTypeAdmi[18453];
  qword_27D91C0 = "SCORE_PER_CUM_IMPRSCORE_PER_CUM_IMPR_POSSCTR_SMOOTH_GLOBAL_SOCSCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D91C8 = 18;
  qword_27D8428 = &aAacGeoTypeAdmi[18470];
  qword_27D91B0 = 10;
  v6 = &loc_4E58;
  *(&qword_27D35E0 + v6) = 955;
  qword_27D91A8 = "SCORE_DIFFSCORE_PER_CUM_IMPRSCORE_PER_CUM_IMPR_POSSCTR_SMOOTH_GLOBAL_SOCSCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8440 = &aAacGeoTypeAdmi[18483];
  qword_27D9190 = "SCORE_CROSS_RANKSCORE_DIFFSCORE_PER_CUM_IMPRSCORE_PER_CUM_IMPR_POSSCTR_SMOOTH_GLOBAL_SOCSCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9198 = 16;
  qword_27D9178 = "SAME_AS_PREVSCORE_CROSS_RANKSCORE_DIFFSCORE_PER_CUM_IMPRSCORE_PER_CUM_IMPR_POSSCTR_SMOOTH_GLOBAL_SOCSCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9180 = 12;
  qword_27D8458 = &aAacGeoTypeAdmi[18493];
  qword_27D9160 = "RTV0_RESULTTYPE_LOCALSCORESAME_AS_PREVSCORE_CROSS_RANKSCORE_DIFFSCORE_PER_CUM_IMPRSCORE_PER_CUM_IMPR_POSSCTR_SMOOTH_GLOBAL_SOCSCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9168 = 26;
  qword_27D8470 = &aAacGeoTypeAdmi[18504];
  qword_27D9148 = "RTV0_RESULTTYPE_GLOBALSCORERTV0_RESULTTYPE_LOCALSCORESAME_AS_PREVSCORE_CROSS_RANKSCORE_DIFFSCORE_PER_CUM_IMPRSCORE_PER_CUM_IMPR_POSSCTR_SMOOTH_GLOBAL_SOCSCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9150 = 27;
  qword_27D9130 = "RTV0_AGG_SCORERTV0_RESULTTYPE_GLOBALSCORERTV0_RESULTTYPE_LOCALSCORESAME_AS_PREVSCORE_CROSS_RANKSCORE_DIFFSCORE_PER_CUM_IMPRSCORE_PER_CUM_IMPR_POSSCTR_SMOOTH_GLOBAL_SOCSCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9138 = 14;
  qword_27D8488 = &aAacGeoTypeAdmi[18516];
  qword_27D84A0 = &aAacGeoTypeAdmi[18534];
  qword_27D9120 = 14;
  qword_27D84B8 = &aAacGeoTypeAdmi[18554];
  qword_27D9118 = "RESULT_TYPE_QSRTV0_AGG_SCORERTV0_RESULTTYPE_GLOBALSCORERTV0_RESULTTYPE_LOCALSCORESAME_AS_PREVSCORE_CROSS_RANKSCORE_DIFFSCORE_PER_CUM_IMPRSCORE_PER_CUM_IMPR_POSSCTR_SMOOTH_GLOBAL_SOCSCTR_SMOOTH_LOCAL_SOCSEARCH_SEQUENCE_NUMBERSEQUENCE_NUMBERSESSION_GUID_HIGHSESSION_GUID_LOWSESSION_RANKER_SCORESMOOTH_MAINLINE_CTRSMOOTH_TYPE_CTRSMOOTH_TYPE_CTR_BSMOOTH_TYPE_CTR_RAWSPELLER_COMPLETION_LENGTHSPELLER_EDIT_DISTANCESPELLER_IS_COMPLETIONSPELLER_RESULT_STATUS_NOT_IN_WHITE_LISTSPELLER_RESULT_STATUS_NOT_PROCESSEDSPELLER_RESULT_STATUS_NO_SUGGESTIONSSPELLER_RESULT_STATUS_SPELL_CORRECTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_ATTEMPTEDSPELLER_RESULT_STATUS_SPELL_CORRECTION_NOT_REQUIREDSPELLER_RESULT_STATUS_SPELL_NO_SUGGESTIONSSPELLER_SCORESPELL_SUGGESTION_RAW_SCORESPELL_SUGGESTION_SCORESTOP_WORD_PROCESSED_QUERYSTREET_MATCHSTREET_POI_DENSITYSTREET_TYPE_MATCH_TYPETAP_DIFFTERMINAL_INTENT_ATTRIBUTETILE_FREQUENCY_ZOOM_LEVELTYPE_IS_TYPE_IS_AddressTYPE_IS_BrowseCategoryTYPE_IS_BusinessTYPE_IS_QueryTYPING_SPEEDUA_ABANDONMENT_PCTUA_GLOBAL_CTRUA_GLOBAL_CTR_VARIANCEUA_LOCAL_CTRUA_LOCAL_CTR_VARIANCEUA_SEARCH_CLICK_PCTUA_TAP_BELOW_PCTUTILITY_CAT_EFFECTIVE_DISTUTILITY_CAT_RANK_BOOSTV0_GLOBAL_SOCV0_LOCAL_SOCV1JPTRANSIT5_TAPPED_PREFIX_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT5_TAPPED_PREFIX_ID_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_COUNTSV1JPTRANSIT_TAPPED_PREFIX_GEO_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_COUNTSV1JPTRANSIT_TAPPED_PREFIX_ID_GEO_COUNTSV1_SMOOTH_GLOBAL_SOCV1_SMOOTH_GLOBAL_SOC_CDV1_SMOOTH_LOCAL_SOCV1_TAPPED_PREFIX_COUNTSV1_TAPPED_PREFIX_GEO_COUNTSV1_TAPPED_PREFIX_ID_COUNTSV1_TAPPED_PREFIX_ID_GEO_COUNTSV2_GLOBAL_CLICK_COUNTSV2_GLOBAL_IMPRESSION_COUNTSV2_LOCAL_CLICK_COUNTSV2_LOCAL_IMPRESSION_COUNTSV3_GLOBAL_CLICK_COUNTSV3_GLOBAL_ECV3_LOCAL_CLICK_COUNTSV3_LOCAL_ECVENUE_NAMEVIEWPORT_ELAPSED_TIMEVIEWPORT_USER_DISTANCEVIEWPORT_USER_LOG_DISTANCEVP_LAT_NVP_LAT_SVP_LNG_EVP_LNG_Waddr_search_stringavailable_for_downloadbrand_muid_keybrowse_categorybrowse_country_keybrowse_country_key_ausbrowse_country_key_autbrowse_country_key_canbrowse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D84D0 = &aAacGeoTypeAdmi[18579];
  qword_27D9100 = &aAacGeoTypeAdmi[21656];
  qword_27D9108 = 14;
  qword_27D90E8 = &aAacGeoTypeAdmi[21641];
  qword_27D90F0 = 15;
  qword_27D84E8 = &aAacGeoTypeAdmi[18595];
  qword_27D90D0 = &aAacGeoTypeAdmi[21626];
  qword_27D90D8 = 15;
  qword_27D8500 = &aAacGeoTypeAdmi[18617];
  qword_27D90B8 = &aAacGeoTypeAdmi[21611];
  qword_27D90C0 = 15;
  qword_27D90A0 = &aAacGeoTypeAdmi[21588];
  qword_27D90A8 = 23;
  qword_27D8518 = &aAacGeoTypeAdmi[18643];
  qword_27D8530 = &aAacGeoTypeAdmi[18671];
  v7 = &loc_4F78;
  *(&qword_27D35E0 + v7) = 967;
  qword_27D9088 = &aAacGeoTypeAdmi[21566];
  qword_27D9090 = 22;
  qword_27D9070 = &aAacGeoTypeAdmi[21548];
  qword_27D9078 = 18;
  qword_27D8548 = &aAacGeoTypeAdmi[18694];
  qword_27D9058 = &aAacGeoTypeAdmi[21539];
  qword_27D9060 = 9;
  qword_27D8560 = &aAacGeoTypeAdmi[18719];
  qword_27D9040 = &aAacGeoTypeAdmi[21514];
  qword_27D9048 = 25;
  qword_27D9028 = &aAacGeoTypeAdmi[21495];
  qword_27D9030 = 19;
  qword_27D8578 = &aAacGeoTypeAdmi[18734];
  qword_27D8590 = &aAacGeoTypeAdmi[18753];
  qword_27D9018 = 19;
  qword_27D85A8 = &aAacGeoTypeAdmi[18774];
  qword_27D9010 = &aAacGeoTypeAdmi[21476];
  v8 = &loc_4FF0;
  *(&qword_27D35E0 + v8) = 5779;
  qword_27D8FF8 = &aAacGeoTypeAdmi[21460];
  qword_27D9000 = 16;
  qword_27D8FE0 = &aAacGeoTypeAdmi[21433];
  qword_27D8FE8 = 27;
  qword_27D85C0 = &aAacGeoTypeAdmi[18798];
  qword_27D8FC8 = &aAacGeoTypeAdmi[21405];
  qword_27D8FD0 = 28;
  qword_27D85D8 = &aAacGeoTypeAdmi[18827];
  qword_27D8FB0 = &aAacGeoTypeAdmi[21390];
  qword_27D8FB8 = 15;
  qword_27D8F98 = &aAacGeoTypeAdmi[21377];
  qword_27D8FA0 = 13;
  qword_27D85F0 = &aAacGeoTypeAdmi[18845];
  qword_27D8F80 = &aAacGeoTypeAdmi[21368];
  qword_27D83B8 = 9;
  qword_27D8F88 = 9;
  qword_27D8F68 = &aAacGeoTypeAdmi[21354];
  qword_27D8F70 = 14;
  qword_27D8608 = &aAacGeoTypeAdmi[18864];
  qword_27D8620 = &aAacGeoTypeAdmi[18891];
  qword_27D8F58 = 16;
  qword_27D8638 = &aAacGeoTypeAdmi[18922];
  qword_27D8F50 = &aAacGeoTypeAdmi[21338];
  qword_27D8650 = &aAacGeoTypeAdmi[18953];
  qword_27D8F38 = &aAacGeoTypeAdmi[21324];
  qword_27D8F40 = 14;
  qword_27D8F20 = &aAacGeoTypeAdmi[21306];
  qword_27D8F28 = 18;
  qword_27D8668 = &aAacGeoTypeAdmi[18981];
  qword_27D8F08 = &aAacGeoTypeAdmi[21289];
  qword_27D8F10 = 17;
  qword_27D8680 = &aAacGeoTypeAdmi[19009];
  qword_27D8EF0 = &aAacGeoTypeAdmi[21273];
  qword_27D8EF8 = 16;
  qword_27D8ED8 = &aAacGeoTypeAdmi[21260];
  qword_27D8EE0 = 13;
  qword_27D8698 = &aAacGeoTypeAdmi[19035];
  qword_27D86B0 = &aAacGeoTypeAdmi[19061];
  qword_27D8EC8 = 16;
  qword_27D86C8 = &aAacGeoTypeAdmi[19087];
  qword_27D8EC0 = &aAacGeoTypeAdmi[21244];
  v9 = &loc_52F0;
  *(&qword_27D35E0 + v9) = 1002;
  qword_27D8EA8 = &aAacGeoTypeAdmi[v9];
  qword_27D8EB0 = 12;
  qword_27D8E90 = &aAacGeoTypeAdmi[21220];
  qword_27D8E98 = 12;
  qword_27D86E0 = &aAacGeoTypeAdmi[19113];
  qword_27D8E78 = &aAacGeoTypeAdmi[21189];
  qword_27D8E80 = 31;
  qword_27D86F8 = &aAacGeoTypeAdmi[19134];
  qword_27D8E60 = &aAacGeoTypeAdmi[21157];
  qword_27D8E68 = 32;
  qword_27D8E48 = &aAacGeoTypeAdmi[21130];
  qword_27D8E50 = 27;
  qword_27D8710 = &aAacGeoTypeAdmi[19153];
  qword_27D8E30 = &aAacGeoTypeAdmi[21103];
  qword_27D8610 = 27;
  qword_27D8E38 = 27;
  qword_27D8E18 = &aAacGeoTypeAdmi[21069];
  qword_27D8E20 = 34;
  qword_27D8728 = &aAacGeoTypeAdmi[19174];
  qword_27D8740 = &aAacGeoTypeAdmi[19203];
  qword_27D8E08 = 28;
  qword_27D8758 = &aAacGeoTypeAdmi[19226];
  qword_27D8DF0 = 35;
  qword_27D8E00 = &aAacGeoTypeAdmi[21041];
  qword_27D8DE8 = &aAacGeoTypeAdmi[21006];
  qword_27D8DD8 = 17;
  qword_27D8770 = &aAacGeoTypeAdmi[19250];
  qword_27D8DD0 = &aAacGeoTypeAdmi[20989];
  v10 = &loc_51A0;
  *(&qword_27D35E0 + v10) = 989;
  qword_27D8DB8 = &aAacGeoTypeAdmi[20970];
  qword_27D8DC0 = 19;
  qword_27D8DA0 = &aAacGeoTypeAdmi[20933];
  qword_27D8DA8 = 37;
  qword_27D8788 = &aAacGeoTypeAdmi[19275];
  qword_27D8D88 = &aAacGeoTypeAdmi[v10];
  qword_27D8D90 = 37;
  qword_27D87A0 = &aAacGeoTypeAdmi[19304];
  qword_27D87B8 = &aAacGeoTypeAdmi[19344];
  qword_27D8D78 = 37;
  qword_27D87D0 = &aAacGeoTypeAdmi[19370];
  qword_27D8D70 = &aAacGeoTypeAdmi[20859];
  qword_27D87E8 = &aAacGeoTypeAdmi[19395];
  qword_27D8D58 = &aAacGeoTypeAdmi[20822];
  qword_27D8D60 = 37;
  qword_27D8D40 = &aAacGeoTypeAdmi[20782];
  qword_27D8D48 = 40;
  qword_27D8800 = &aAacGeoTypeAdmi[19412];
  qword_27D8D28 = &aAacGeoTypeAdmi[20742];
  qword_27D8D30 = 40;
  qword_27D8818 = &aAacGeoTypeAdmi[19426];
  qword_27D8D10 = &aAacGeoTypeAdmi[20703];
  qword_27D8D18 = 39;
  qword_27D8CF8 = &aAacGeoTypeAdmi[20659];
  qword_27D8D00 = 44;
  qword_27D8830 = &aAacGeoTypeAdmi[19454];
  qword_27D8848 = &aAacGeoTypeAdmi[19476];
  qword_27D8CE8 = 44;
  qword_27D8860 = &aAacGeoTypeAdmi[19496];
  qword_27D8CE0 = &aAacGeoTypeAdmi[20615];
  qword_27D8878 = &aAacGeoTypeAdmi[19516];
  qword_27D8CC8 = &aAacGeoTypeAdmi[20586];
  qword_27D8CD0 = 29;
  qword_27D8CB0 = &aAacGeoTypeAdmi[20538];
  qword_27D8CB8 = 48;
  qword_27D8890 = &aAacGeoTypeAdmi[19542];
  qword_27D8C98 = &aAacGeoTypeAdmi[20501];
  qword_27D8CA0 = 37;
  qword_27D88A8 = &aAacGeoTypeAdmi[19567];
  qword_27D8C80 = &aAacGeoTypeAdmi[v8];
  qword_27D8C88 = 37;
  qword_27D88C0 = &aAacGeoTypeAdmi[19591];
  qword_27D8C68 = &aAacGeoTypeAdmi[20424];
  qword_27D8C70 = 40;
  qword_27D8C50 = &aAacGeoTypeAdmi[20384];
  qword_27D8C58 = 40;
  qword_27D88D8 = &aAacGeoTypeAdmi[19610];
  qword_27D8C38 = &aAacGeoTypeAdmi[v7];
  qword_27D8C40 = 40;
  qword_27D88F0 = &aAacGeoTypeAdmi[19626];
  qword_27D8C20 = &aAacGeoTypeAdmi[20304];
  qword_27D87A8 = 40;
  qword_27D8C28 = 40;
  qword_27D8C08 = &aAacGeoTypeAdmi[20265];
  qword_27D8C10 = 39;
  qword_27D8908 = &aAacGeoTypeAdmi[19641];
  qword_27D8920 = &aAacGeoTypeAdmi[19662];
  qword_27D8BF8 = 39;
  qword_27D8B90 = &aAacGeoTypeAdmi[20142];
  qword_27D8BF0 = &aAacGeoTypeAdmi[20226];
  qword_27D8BE0 = 15;
  qword_27D8BD8 = &aAacGeoTypeAdmi[20211];
  qword_27D8BC8 = 18;
  qword_27D8BA8 = &aAacGeoTypeAdmi[20174];
  qword_27D8BC0 = &aAacGeoTypeAdmi[20193];
  qword_27D82E0 = 32;
  qword_27D8BB0 = 19;
  qword_27D82F8 = 32;
  qword_27D8310 = 32;
  qword_27D8328 = 32;
  qword_27D8B98 = 32;
  qword_27D8938 = &aAacGeoTypeAdmi[19676];
  qword_27D8B78 = &aAacGeoTypeAdmi[20122];
  qword_27D8B80 = 20;
  qword_27D8950 = &aAacGeoTypeAdmi[19693];
  qword_27D8B60 = &aAacGeoTypeAdmi[20103];
  qword_27D8B68 = 19;
  qword_27D8B48 = &aAacGeoTypeAdmi[20088];
  qword_27D8B50 = 15;
  qword_27D8968 = &aAacGeoTypeAdmi[19709];
  qword_27D8980 = &aAacGeoTypeAdmi[19734];
  qword_27D8B38 = 14;
  qword_27D8998 = &aAacGeoTypeAdmi[19747];
  qword_27D8B30 = &aAacGeoTypeAdmi[20074];
  qword_27D8B20 = 18;
  qword_27D89B0 = &aAacGeoTypeAdmi[19760];
  qword_27D8B18 = &aAacGeoTypeAdmi[v6];
  qword_27D89C8 = &aAacGeoTypeAdmi[19785];
  qword_27D8B00 = &aAacGeoTypeAdmi[20035];
  qword_27D8B08 = 21;
  qword_27D8AE8 = &aAacGeoTypeAdmi[20014];
  qword_27D8AF0 = 21;
  qword_27D89E0 = &aAacGeoTypeAdmi[19802];
  qword_27D8AD0 = &aAacGeoTypeAdmi[19991];
  qword_27D8AD8 = 23;
  qword_27D89F8 = &aAacGeoTypeAdmi[19815];
  qword_27D8AB8 = &aAacGeoTypeAdmi[19966];
  qword_27D8AC0 = 25;
  qword_27D8AA0 = &aAacGeoTypeAdmi[19942];
  qword_27D8AA8 = 24;
  qword_27D8A10 = &aAacGeoTypeAdmi[19834];
  qword_27D8A28 = &aAacGeoTypeAdmi[19847];
  qword_27D8A90 = 21;
  qword_27D8A58 = &aAacGeoTypeAdmi[19885];
  qword_27D8A88 = &aAacGeoTypeAdmi[19921];
  qword_27D8A78 = 17;
  qword_27D8A70 = &aAacGeoTypeAdmi[19904];
  qword_27D8A60 = 19;
  qword_27D8A40 = &aAacGeoTypeAdmi[19866];
  qword_27D8340 = 13;
  qword_27D83E8 = 13;
  qword_27D8430 = 13;
  qword_27D8A30 = 19;
  qword_27D8A48 = 19;
  qword_27D8988 = 13;
  qword_27D89A0 = 13;
  qword_27D89E8 = 13;
  qword_27D8A18 = 13;
  qword_27D9A18 = "browse_country_key_chebrowse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9A30 = "browse_country_key_deubrowse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8A00 = 19;
  qword_27D9A48 = "browse_country_key_dnkbrowse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9A60 = "browse_country_key_finbrowse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9A78 = "browse_country_key_frabrowse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9A90 = "browse_country_key_gbrbrowse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9AA8 = "browse_country_key_jpnbrowse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9AC0 = "browse_country_key_nldbrowse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D89D0 = 17;
  qword_27D9AD8 = "browse_country_key_usabrowse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D89B8 = 25;
  qword_27D9AF0 = "browse_localized_category_keybrowse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9B08 = "browse_nearby_localizationbrowse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9B20 = "browse_sytle_attribute_keybusiness_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9B38 = "business_idcat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9B50 = "cat_suggestion_rank_cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9B68 = "cat_suggestion_rank_0cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9B80 = "cat_suggestion_rank_1cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9B98 = "cat_suggestion_rank_2category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8970 = 25;
  qword_27D9BB0 = "category_canonical_namechain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8538 = 23;
  qword_27D8748 = 23;
  qword_27D9BB8 = 23;
  qword_27D8958 = 16;
  qword_27D9BC8 = "chain_nameclosest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8940 = 17;
  qword_27D9BE0 = "closest_bizclosest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9BF8 = "closest_chain_door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8928 = 14;
  qword_27D9C10 = "door_numberentity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9C28 = "entity_type_addressentity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8910 = 21;
  qword_27D9C40 = "entity_type_airportentity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D88F8 = 15;
  qword_27D9C58 = "entity_type_landmarkentity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9C70 = "entity_type_listentity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D88E0 = 16;
  qword_27D9C88 = "entity_type_propertyentity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9CA0 = "entity_type_queryentity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D88C8 = 19;
  qword_27D9CB8 = "entity_type_transitflyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D88B0 = 24;
  qword_27D9CD0 = "flyover_idgeo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9CE8 = "geo_idgeo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8880 = 26;
  qword_27D8898 = 25;
  qword_27D9CF0 = 6;
  qword_27D9D00 = "geo_id_encryptedis_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9D18 = "is_short_circuitedmatched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9D30 = "matched_display_name_languagemixed_intent_address_triggermixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8850 = 20;
  qword_27D8868 = 20;
  qword_27D85C8 = 29;
  qword_27D8730 = 29;
  qword_27D8790 = 29;
  qword_27D9AF8 = 29;
  qword_27D9D38 = 29;
  qword_27D8838 = 22;
  qword_27D8820 = 28;
  qword_27D9D48 = &aAacGeoTypeAdmi[v5];
  qword_27D9D60 = "mixed_intent_geo_idmixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9D78 = "mixed_intent_query_containment_display_stringmixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8808 = 14;
  qword_27D9D80 = 45;
  qword_27D9D90 = "mixed_intent_query_highlight_extramixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D87F0 = 17;
  qword_27D9D98 = 34;
  qword_27D9DA8 = "mixed_intent_query_primary_entity_display_stringpopulation_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D87C0 = 26;
  qword_27D87D8 = 25;
  qword_27D9DB0 = 48;
  qword_27D9DC0 = "population_less_10K_1K_distancepopulation_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9DD8 = "population_less_10K_1K_distance_admin_0population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9DF0 = "population_less_10K_1K_distance_admin_1population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9E08 = "population_less_10K_1K_distance_admin_2population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9E20 = "population_less_10K_1K_distance_admin_3population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9E38 = "population_less_10K_1K_distance_admin_4population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9E50 = "population_less_10K_1K_distance_admin_5population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9E68 = "population_less_10K_1K_distance_admin_6population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9E80 = "population_less_10K_1K_distance_admin_7population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9E98 = "population_less_10K_5K_distancepopulation_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8760 = 24;
  qword_27D8778 = 25;
  qword_27D8628 = 31;
  qword_27D8640 = 31;
  qword_27D86E8 = 21;
  qword_27D8700 = 19;
  qword_27D8718 = 21;
  qword_27D9DC8 = 31;
  qword_27D9EA0 = 31;
  qword_27D9EB0 = "population_less_10K_5K_distance_admin_0population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9EC8 = "population_less_10K_5K_distance_admin_1population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9EE0 = "population_less_10K_5K_distance_admin_2population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9EF8 = "population_less_10K_5K_distance_admin_3population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9F10 = "population_less_10K_5K_distance_admin_4population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9F28 = "population_less_10K_5K_distance_admin_5population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9F40 = "population_less_10K_5K_distance_admin_6population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9F58 = "population_less_10K_5K_distance_admin_7qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8658 = 28;
  qword_27D8670 = 28;
  qword_27D8688 = 26;
  qword_27D86B8 = 26;
  qword_27D86D0 = 26;
  qword_27D86A0 = 26;
  qword_27D9DE0 = 39;
  qword_27D9DF8 = 39;
  qword_27D9E10 = 39;
  qword_27D9E28 = 39;
  qword_27D9E40 = 39;
  qword_27D9E58 = 39;
  qword_27D9E70 = 39;
  qword_27D9E88 = 39;
  qword_27D9EB8 = 39;
  qword_27D9ED0 = 39;
  qword_27D9EE8 = 39;
  qword_27D9F00 = 39;
  qword_27D9F18 = 39;
  qword_27D9F30 = 39;
  qword_27D9F48 = 39;
  qword_27D9F60 = 39;
  qword_27D9F70 = "qu_metadataqu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D83D0 = 11;
  qword_27D8460 = 11;
  qword_27D85F8 = 19;
  qword_27D9B40 = 11;
  qword_27D9BE8 = 11;
  qword_27D9C18 = 11;
  qword_27D9F78 = 11;
  qword_27D9F88 = "qu_metadata_jsonqu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9FA0 = "qu_metadata_weightquery_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8490 = 18;
  qword_27D85E0 = 18;
  qword_27D9D20 = 18;
  qword_27D9FA8 = 18;
  qword_27D9FB8 = "query_is_categoryquery_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9FD0 = "query_is_chainquery_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D85B0 = 24;
  qword_27D9FE8 = "query_is_keywordquery_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27DA000 = "query_string_is_catquery_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8568 = 15;
  qword_27D8580 = 19;
  qword_27D8598 = 21;
  qword_27D9C30 = 19;
  qword_27D9C48 = 19;
  qword_27D9CC0 = 19;
  qword_27D9D68 = 19;
  qword_27DA008 = 19;
  qword_27DA018 = "query_string_is_chainquery_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27DA030 = "query_string_is_global_navquery_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8508 = 26;
  qword_27D8550 = 25;
  qword_27D9B10 = 26;
  qword_27D9B28 = 26;
  qword_27DA038 = 26;
  qword_27DA048 = "query_string_is_local_navquery_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8520 = 28;
  qword_27D84C0 = 25;
  qword_27DA050 = 25;
  qword_27DA060 = "query_string_is_mixed_intentquery_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9D50 = 28;
  qword_27DA068 = 28;
  qword_27DA078 = "query_string_is_propertyquery_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D84F0 = 22;
  qword_27DA080 = 24;
  qword_27DA090 = "query_type_allraw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D84D8 = 16;
  qword_27D9C00 = 14;
  qword_27D9FD8 = 14;
  qword_27DA098 = 14;
  qword_27DA0A8 = "raw_prefixresult_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8448 = 10;
  qword_27D84A8 = 20;
  qword_27D8478 = 12;
  qword_27D9BD0 = 10;
  qword_27D9CD8 = 10;
  qword_27DA0B0 = 10;
  qword_27DA0C0 = "result_type_allrewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27DA0D8 = "rewritten_query_indexserver_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27DA0F0 = "server_result_normalized_scoreserver_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27DA0F8 = 30;
  qword_27DA108 = "server_type_jvmsort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27DA0C8 = 15;
  qword_27DA110 = 15;
  qword_27DA120 = "sort_priority_mappingstreet_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8400 = 16;
  qword_27D8418 = 17;
  qword_27D9B70 = 21;
  qword_27D9B88 = 21;
  qword_27D9BA0 = 21;
  qword_27DA020 = 21;
  qword_27DA0E0 = 21;
  qword_27DA128 = 21;
  qword_27DA138 = "street_closeness_trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8370 = 17;
  qword_27D9CA8 = 17;
  qword_27D9FC0 = 17;
  qword_27DA140 = 17;
  qword_27DA150 = "trigger_nametypevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8388 = 12;
  qword_27D83A0 = 12;
  qword_27DA158 = 12;
  qword_27DA168 = "typevenue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27DA170 = 4;
  qword_27DA180 = "venue_idyelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27DA188 = 8;
  qword_27DA198 = "yelp_LOG_NUM_RATINGSyelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27DA1B0 = "yelp_LOG_NUM_REVIEWSyelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D9B58 = 20;
  qword_27D9C60 = 20;
  qword_27D9C90 = 20;
  qword_27DA1A0 = 20;
  qword_27DA1B8 = 20;
  qword_27DA1C8 = "yelp_NORMALIZED_RATINGyelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27D8358 = 16;
  qword_27D9A20 = 22;
  qword_27D9A38 = 22;
  qword_27D9A50 = 22;
  qword_27D9A68 = 22;
  qword_27D9A80 = 22;
  qword_27D9A98 = 22;
  qword_27D9AB0 = 22;
  qword_27D9AC8 = 22;
  qword_27D9AE0 = 22;
  qword_27DA1D0 = 22;
  qword_27DA1E0 = "yelp_NUM_RATINGSyelp_NUM_REVIEWS";
  qword_27DA1F8 = "yelp_NUM_REVIEWS";
  qword_27D9C78 = 16;
  qword_27D9D08 = 16;
  qword_27D9F90 = 16;
  qword_27D9FF0 = 16;
  qword_27DA1E8 = 16;
  qword_27DA200 = 16;
  qword_27D5518 = &aAacGeoTypeAdmi[7768];
  return result;
}

void sub_168847C()
{
  dword_278E518 = 200;
  qword_278E520 = &unk_234A050;
  sub_194EE44(&off_278BBB8, 200, 9, 0, 0);
  dword_278E528 = 201;
  qword_278E530 = &off_277C888;
  sub_194F72C(&off_278BBB8, 201, 11, 1, 0, &off_277C888);
  dword_278E538 = 200;
  qword_278E540 = &unk_234A068;
  sub_194EE44(&off_278BC40, 200, 9, 1, 0);
  dword_278E548 = 201;
  qword_278E550 = &off_277C858;

  sub_194F72C(&off_278BC40, 201, 11, 1, 0, &off_277C858);
}

uint64_t sub_1688584()
{
  qword_27D32B0 = "SIGNIFICANCE_HIGHSIGNIFICANCE_LOWSIGNIFICANCE_MEDIUMSIGNIFICANCE_ULTRA";
  *algn_27D32B8 = 17;
  dword_27D32C0 = 2;
  qword_27D32C8 = "SIGNIFICANCE_LOWSIGNIFICANCE_MEDIUMSIGNIFICANCE_ULTRA";
  unk_27D32D0 = 16;
  dword_27D32D8 = 0;
  qword_27D32E0 = "SIGNIFICANCE_MEDIUMSIGNIFICANCE_ULTRA";
  unk_27D32E8 = 19;
  dword_27D32F0 = 1;
  qword_27D32F8 = "SIGNIFICANCE_ULTRA";
  unk_27D3300 = 18;
  dword_27D3308 = 3;
  qword_27D3310 = "ALT_NAME_COMPOUND_DECOMPOUNDALT_NAME_LOG_DECOMPOUNDALT_NAME_LOG_WINALT_NAME_LOG_WIN_SIMILARALT_NAME_MISSPELLINGALT_NAME_NGRAMALT_NAME_PERMUTATIONALT_NAME_PHONETICALT_NAME_REMOVE_CATEGORYALT_NAME_REMOVE_COMMON_PHRASEALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  *algn_27D3318 = 28;
  dword_27D3320 = 4;
  qword_27D3328 = "ALT_NAME_LOG_DECOMPOUNDALT_NAME_LOG_WINALT_NAME_LOG_WIN_SIMILARALT_NAME_MISSPELLINGALT_NAME_NGRAMALT_NAME_PERMUTATIONALT_NAME_PHONETICALT_NAME_REMOVE_CATEGORYALT_NAME_REMOVE_COMMON_PHRASEALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3330 = 23;
  dword_27D3338 = 17;
  qword_27D3340 = "ALT_NAME_LOG_WINALT_NAME_LOG_WIN_SIMILARALT_NAME_MISSPELLINGALT_NAME_NGRAMALT_NAME_PERMUTATIONALT_NAME_PHONETICALT_NAME_REMOVE_CATEGORYALT_NAME_REMOVE_COMMON_PHRASEALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3348 = 16;
  dword_27D3350 = 3;
  qword_27D3358 = "ALT_NAME_LOG_WIN_SIMILARALT_NAME_MISSPELLINGALT_NAME_NGRAMALT_NAME_PERMUTATIONALT_NAME_PHONETICALT_NAME_REMOVE_CATEGORYALT_NAME_REMOVE_COMMON_PHRASEALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3360 = 24;
  dword_27D3368 = 13;
  qword_27D3370 = "ALT_NAME_MISSPELLINGALT_NAME_NGRAMALT_NAME_PERMUTATIONALT_NAME_PHONETICALT_NAME_REMOVE_CATEGORYALT_NAME_REMOVE_COMMON_PHRASEALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3378 = 20;
  dword_27D3380 = 10;
  qword_27D3388 = "ALT_NAME_NGRAMALT_NAME_PERMUTATIONALT_NAME_PHONETICALT_NAME_REMOVE_CATEGORYALT_NAME_REMOVE_COMMON_PHRASEALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3390 = 14;
  dword_27D3398 = 7;
  qword_27D33A0 = "ALT_NAME_PERMUTATIONALT_NAME_PHONETICALT_NAME_REMOVE_CATEGORYALT_NAME_REMOVE_COMMON_PHRASEALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D33A8 = 20;
  dword_27D33B0 = 6;
  qword_27D33B8 = "ALT_NAME_PHONETICALT_NAME_REMOVE_CATEGORYALT_NAME_REMOVE_COMMON_PHRASEALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D33C0 = 17;
  dword_27D33C8 = 2;
  qword_27D33D0 = "ALT_NAME_REMOVE_CATEGORYALT_NAME_REMOVE_COMMON_PHRASEALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D33D8 = 24;
  dword_27D33E0 = 5;
  qword_27D33E8 = "ALT_NAME_REMOVE_COMMON_PHRASEALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D33F0 = 29;
  dword_27D33F8 = 9;
  qword_27D3400 = "ALT_NAME_REPLACEMENTALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3408 = 20;
  dword_27D3410 = 16;
  qword_27D3418 = "ALT_NAME_SEMANTIC_MATCHALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3420 = 23;
  dword_27D3428 = 15;
  qword_27D3430 = "ALT_NAME_SKIPGRAMALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3438 = 17;
  dword_27D3440 = 8;
  qword_27D3448 = "ALT_NAME_SYNONYMALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3450 = 16;
  dword_27D3458 = 1;
  qword_27D3460 = "ALT_NAME_UNKNOWNALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3468 = 16;
  dword_27D3470 = 0;
  qword_27D3478 = "ALT_NAME_WEBALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3480 = 12;
  dword_27D3488 = 12;
  qword_27D3490 = "ALT_NAME_WEB_CONTENT_MATCHALT_NAME_ZHUYIN";
  unk_27D3498 = 26;
  dword_27D34A0 = 14;
  qword_27D34A8 = "ALT_NAME_ZHUYIN";
  unk_27D34B0 = 15;
  dword_27D34B8 = 11;
  qword_27D34C0 = "SUGGESTION_ADDRESSSUGGESTION_BROWSE_CATEGORYSUGGESTION_BUSINESSSUGGESTION_CATEGORYSUGGESTION_CHAINSUGGESTION_COLLECTIONSUGGESTION_DIRECTION_INTENTSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_QUERYSUGGESTION_SENTINELSUGGESTION_TRANSIT";
  *algn_27D34C8 = 18;
  dword_27D34D0 = 3;
  qword_27D34D8 = "SUGGESTION_BROWSE_CATEGORYSUGGESTION_BUSINESSSUGGESTION_CATEGORYSUGGESTION_CHAINSUGGESTION_COLLECTIONSUGGESTION_DIRECTION_INTENTSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_QUERYSUGGESTION_SENTINELSUGGESTION_TRANSIT";
  unk_27D34E0 = 26;
  dword_27D34E8 = 7;
  qword_27D34F0 = "SUGGESTION_BUSINESSSUGGESTION_CATEGORYSUGGESTION_CHAINSUGGESTION_COLLECTIONSUGGESTION_DIRECTION_INTENTSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_QUERYSUGGESTION_SENTINELSUGGESTION_TRANSIT";
  unk_27D34F8 = 19;
  dword_27D3500 = 2;
  qword_27D3508 = "SUGGESTION_CATEGORYSUGGESTION_CHAINSUGGESTION_COLLECTIONSUGGESTION_DIRECTION_INTENTSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_QUERYSUGGESTION_SENTINELSUGGESTION_TRANSIT";
  unk_27D3510 = 19;
  dword_27D3518 = 5;
  qword_27D3520 = "SUGGESTION_CHAINSUGGESTION_COLLECTIONSUGGESTION_DIRECTION_INTENTSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_QUERYSUGGESTION_SENTINELSUGGESTION_TRANSIT";
  unk_27D3528 = 16;
  dword_27D3530 = 6;
  qword_27D3538 = "SUGGESTION_COLLECTIONSUGGESTION_DIRECTION_INTENTSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_QUERYSUGGESTION_SENTINELSUGGESTION_TRANSIT";
  unk_27D3540 = 21;
  dword_27D3548 = 10;
  qword_27D3550 = "SUGGESTION_DIRECTION_INTENTSUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_QUERYSUGGESTION_SENTINELSUGGESTION_TRANSIT";
  unk_27D3558 = 27;
  dword_27D3560 = 9;
  qword_27D3568 = "SUGGESTION_MIXED_INTENTSUGGESTION_PUBLISHERSUGGESTION_QUERYSUGGESTION_SENTINELSUGGESTION_TRANSIT";
  unk_27D3570 = 23;
  dword_27D3578 = 8;
  qword_27D3580 = "SUGGESTION_PUBLISHERSUGGESTION_QUERYSUGGESTION_SENTINELSUGGESTION_TRANSIT";
  unk_27D3588 = 20;
  dword_27D3590 = 11;
  qword_27D3598 = "SUGGESTION_QUERYSUGGESTION_SENTINELSUGGESTION_TRANSIT";
  unk_27D35A0 = 16;
  dword_27D35A8 = 1;
  qword_27D35B0 = "SUGGESTION_SENTINELSUGGESTION_TRANSIT";
  unk_27D35B8 = 19;
  dword_27D35C0 = 0;
  qword_27D35C8 = "SUGGESTION_TRANSIT";
  unk_27D35D0 = 18;
  dword_27D35D8 = 4;
  sub_16810B8();
  qword_27DA210 = "UPDATE_NOTIFICATION_TYPE_POIUPDATE_NOTIFICATION_TYPE_UNKNOWNUPDATE_NOTIFICATION_TYPE_VOLATILE";
  *algn_27DA218 = 28;
  dword_27DA220 = 1;
  qword_27DA228 = "UPDATE_NOTIFICATION_TYPE_UNKNOWNUPDATE_NOTIFICATION_TYPE_VOLATILE";
  unk_27DA230 = 32;
  dword_27DA238 = 0;
  qword_27DA240 = "UPDATE_NOTIFICATION_TYPE_VOLATILE";
  unk_27DA248 = 33;
  dword_27DA250 = 2;
  qword_27DA258 = "RESOURCE_TYPE_BYTESRESOURCE_TYPE_POIRESOURCE_TYPE_POPULARITYRESOURCE_TYPE_UNKNOWNRESOURCE_TYPE_UPDATE_NOTIFICATIONRESOURCE_TYPE_VECTOR_INFO";
  unk_27DA260 = 19;
  dword_27DA268 = 2;
  qword_27DA270 = "RESOURCE_TYPE_POIRESOURCE_TYPE_POPULARITYRESOURCE_TYPE_UNKNOWNRESOURCE_TYPE_UPDATE_NOTIFICATIONRESOURCE_TYPE_VECTOR_INFO";
  qword_27DA278 = 17;
  dword_27DA280 = 1;
  qword_27DA288 = "RESOURCE_TYPE_POPULARITYRESOURCE_TYPE_UNKNOWNRESOURCE_TYPE_UPDATE_NOTIFICATIONRESOURCE_TYPE_VECTOR_INFO";
  qword_27DA290 = 24;
  dword_27DA298 = 3;
  qword_27DA2A0 = "RESOURCE_TYPE_UNKNOWNRESOURCE_TYPE_UPDATE_NOTIFICATIONRESOURCE_TYPE_VECTOR_INFO";
  unk_27DA2A8 = 21;
  dword_27DA2B0 = 0;
  qword_27DA2B8 = "RESOURCE_TYPE_UPDATE_NOTIFICATIONRESOURCE_TYPE_VECTOR_INFO";
  unk_27DA2C0 = 33;
  dword_27DA2C8 = 4;
  qword_27DA2D0 = "RESOURCE_TYPE_VECTOR_INFO";
  unk_27DA2D8 = 25;
  dword_27DA2E0 = 5;
  qword_27DA2E8 = "BYTES_RESOURCE_TYPE_PLACESBYTES_RESOURCE_TYPE_POPULARITYBYTES_RESOURCE_TYPE_SEARCHBYTES_RESOURCE_TYPE_SERVICE_DIRECTIVEBYTES_RESOURCE_TYPE_UNKNOWN";
  unk_27DA2F0 = 26;
  dword_27DA2F8 = 1;
  qword_27DA300 = "BYTES_RESOURCE_TYPE_POPULARITYBYTES_RESOURCE_TYPE_SEARCHBYTES_RESOURCE_TYPE_SERVICE_DIRECTIVEBYTES_RESOURCE_TYPE_UNKNOWN";
  unk_27DA308 = 30;
  dword_27DA310 = 3;
  qword_27DA318 = "BYTES_RESOURCE_TYPE_SEARCHBYTES_RESOURCE_TYPE_SERVICE_DIRECTIVEBYTES_RESOURCE_TYPE_UNKNOWN";
  unk_27DA320 = 26;
  dword_27DA328 = 2;
  qword_27DA330 = "BYTES_RESOURCE_TYPE_SERVICE_DIRECTIVEBYTES_RESOURCE_TYPE_UNKNOWN";
  unk_27DA338 = 37;
  dword_27DA340 = 4;
  qword_27DA348 = "BYTES_RESOURCE_TYPE_UNKNOWN";
  unk_27DA350 = 27;
  dword_27DA358 = 0;
  qword_27DA360 = "DATACOPYREQUEST_PRIORITY_HIGHDATACOPYREQUEST_PRIORITY_NORMAL";
  *algn_27DA368 = 29;
  dword_27DA370 = 1;
  qword_27DA378 = "DATACOPYREQUEST_PRIORITY_NORMAL";
  unk_27DA380 = 31;
  dword_27DA388 = 0;
  qword_27DA390 = "KITTYHAWK_STOREFRONTMUNIN_STOREFRONT";
  *algn_27DA398 = 20;
  dword_27DA3A0 = 2;
  qword_27DA3A8 = "MUNIN_STOREFRONT";
  unk_27DA3B0 = 16;
  dword_27DA3B8 = 1;
  qword_27DA3C0 = "BAD_IMAGEBAD_STOREFRONTBASEMAP_STOREFRONTNOT_A_STOREFRONTOTHERPERMANENTLY_CLOSED_NOT_IN_DBPOI_CONTAINMENTPOI_UNVERIFIABLEPOLICY_VIOLATION";
  *algn_27DA3C8 = 9;
  dword_27DA3D0 = 2;
  qword_27DA3D8 = "BAD_STOREFRONTBASEMAP_STOREFRONTNOT_A_STOREFRONTOTHERPERMANENTLY_CLOSED_NOT_IN_DBPOI_CONTAINMENTPOI_UNVERIFIABLEPOLICY_VIOLATION";
  unk_27DA3E0 = 14;
  dword_27DA3E8 = 1;
  qword_27DA3F0 = "BASEMAP_STOREFRONTNOT_A_STOREFRONTOTHERPERMANENTLY_CLOSED_NOT_IN_DBPOI_CONTAINMENTPOI_UNVERIFIABLEPOLICY_VIOLATION";
  unk_27DA3F8 = 18;
  dword_27DA400 = 9;
  qword_27DA408 = "NOT_A_STOREFRONTOTHERPERMANENTLY_CLOSED_NOT_IN_DBPOI_CONTAINMENTPOI_UNVERIFIABLEPOLICY_VIOLATION";
  unk_27DA410 = 16;
  dword_27DA418 = 3;
  qword_27DA420 = "OTHERPERMANENTLY_CLOSED_NOT_IN_DBPOI_CONTAINMENTPOI_UNVERIFIABLEPOLICY_VIOLATION";
  unk_27DA428 = 5;
  dword_27DA430 = 7;
  qword_27DA438 = "PERMANENTLY_CLOSED_NOT_IN_DBPOI_CONTAINMENTPOI_UNVERIFIABLEPOLICY_VIOLATION";
  unk_27DA440 = 28;
  dword_27DA448 = 8;
  qword_27DA450 = "POI_CONTAINMENTPOI_UNVERIFIABLEPOLICY_VIOLATION";
  unk_27DA458 = 15;
  dword_27DA460 = 6;
  qword_27DA468 = "POI_UNVERIFIABLEPOLICY_VIOLATION";
  unk_27DA470 = 16;
  dword_27DA478 = 5;
  qword_27DA480 = "POLICY_VIOLATION";
  unk_27DA488 = 16;
  dword_27DA490 = 4;
  qword_27DA498 = "CLOSEDFREE_TRAFFICHEAVY_TRAFFICLONG_QUEUES_TRAFFICQUEUING_TRAFFICSLOW_TRAFFICSTATIONARY_TRAFFICUNKNOWN";
  unk_27DA4A0 = 6;
  dword_27DA4A8 = 7;
  result = 12;
  qword_27DA4B0 = "FREE_TRAFFICHEAVY_TRAFFICLONG_QUEUES_TRAFFICQUEUING_TRAFFICSLOW_TRAFFICSTATIONARY_TRAFFICUNKNOWN";
  unk_27DA4B8 = 12;
  dword_27DA4C0 = 2;
  qword_27DA4C8 = "HEAVY_TRAFFICLONG_QUEUES_TRAFFICQUEUING_TRAFFICSLOW_TRAFFICSTATIONARY_TRAFFICUNKNOWN";
  qword_27DA4D0 = 13;
  dword_27DA4D8 = 3;
  qword_27DA4E0 = "LONG_QUEUES_TRAFFICQUEUING_TRAFFICSLOW_TRAFFICSTATIONARY_TRAFFICUNKNOWN";
  unk_27DA4E8 = 19;
  dword_27DA4F0 = 1;
  qword_27DA4F8 = "QUEUING_TRAFFICSLOW_TRAFFICSTATIONARY_TRAFFICUNKNOWN";
  unk_27DA500 = 15;
  dword_27DA508 = 5;
  qword_27DA510 = "SLOW_TRAFFICSTATIONARY_TRAFFICUNKNOWN";
  unk_27DA518 = 12;
  dword_27DA520 = 4;
  qword_27DA528 = "STATIONARY_TRAFFICUNKNOWN";
  unk_27DA530 = 18;
  dword_27DA538 = 6;
  qword_27DA540 = "UNKNOWN";
  unk_27DA548 = 7;
  dword_27DA550 = 8;
  qword_27DA558 = "HIGH_OCCUPANCY";
  unk_27DA560 = 14;
  dword_27DA568 = 0;
  qword_27DA570 = "CREATION_TIME_MAP_MATCHEDCREATION_TIME_RT_LOCCREATION_TIME_UN_MAP_MATCHEDDISPATCHER_READDISPATCHER_WRITEMAP_MATCHER_READMAP_MATCHER_WRITEMODEL_RUNNER_READ";
  *algn_27DA578 = 25;
  dword_27DA580 = 7;
  qword_27DA588 = "CREATION_TIME_RT_LOCCREATION_TIME_UN_MAP_MATCHEDDISPATCHER_READDISPATCHER_WRITEMAP_MATCHER_READMAP_MATCHER_WRITEMODEL_RUNNER_READ";
  unk_27DA590 = 20;
  dword_27DA598 = 1;
  qword_27DA5A0 = "CREATION_TIME_UN_MAP_MATCHEDDISPATCHER_READDISPATCHER_WRITEMAP_MATCHER_READMAP_MATCHER_WRITEMODEL_RUNNER_READ";
  unk_27DA5A8 = 28;
  dword_27DA5B0 = 4;
  qword_27DA5B8 = "DISPATCHER_READDISPATCHER_WRITEMAP_MATCHER_READMAP_MATCHER_WRITEMODEL_RUNNER_READ";
  unk_27DA5C0 = 15;
  dword_27DA5C8 = 2;
  qword_27DA5D0 = "DISPATCHER_WRITEMAP_MATCHER_READMAP_MATCHER_WRITEMODEL_RUNNER_READ";
  unk_27DA5D8 = 16;
  dword_27DA5E0 = 3;
  qword_27DA5E8 = "MAP_MATCHER_READMAP_MATCHER_WRITEMODEL_RUNNER_READ";
  unk_27DA5F0 = 16;
  dword_27DA5F8 = 5;
  qword_27DA600 = "MAP_MATCHER_WRITEMODEL_RUNNER_READ";
  unk_27DA608 = 17;
  dword_27DA610 = 6;
  qword_27DA618 = "MODEL_RUNNER_READ";
  unk_27DA620 = 17;
  dword_27DA628 = 8;
  return result;
}

uint64_t sub_1688B20(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_7;
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
        goto LABEL_15;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v8 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sub_1710D18(*(a1 + 72));
    goto LABEL_7;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v3 & 8) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 72) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

void sub_1688C30(uint64_t a1, uint64_t a2)
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
  if ((v9 & 0x1F) != 0)
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

        goto LABEL_22;
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

      goto LABEL_25;
    }

LABEL_22:
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
LABEL_11:
        *(a1 + 16) |= v9;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 80) = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_25:
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

      sub_1738E68(v22);
      *(a1 + 72) = v20;
    }

    if (*(a2 + 72))
    {
      v23 = *(a2 + 72);
    }

    else
    {
      v23 = &off_2780410;
    }

    sub_1713980(v20, v23);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1688E0C(uint64_t a1)
{
  if ((*(a1 + 16) & 8) == 0)
  {
    return 1;
  }

  result = sub_171437C(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1688E3C(uint64_t a1)
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

  if (a1 != &off_277C8B0 && *(a1 + 72))
  {
    sub_1735504();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1688F40(uint64_t a1)
{
  sub_1688E3C(a1);

  operator delete();
}

uint64_t sub_1688F78(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 4)
    {
      if (v11 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v23 = *(a1 + 8);
          v21 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v23)
          {
            v21 = *v21;
          }

          v22 = (a1 + 48);
          goto LABEL_38;
        }

        goto LABEL_50;
      }

      if (v11 != 3)
      {
        if (v11 == 4 && v8 == 34)
        {
          v12 = (v7 - 1);
          while (1)
          {
            v13 = (v12 + 1);
            *v39 = v12 + 1;
            v14 = *(a1 + 40);
            if (v14 && (v15 = *(a1 + 32), v15 < *v14))
            {
              *(a1 + 32) = v15 + 1;
              v16 = *&v14[2 * v15 + 2];
            }

            else
            {
              v17 = *(a1 + 24);
              if (!v17)
              {
                operator new();
              }

              *v19 = v18;
              v19[1] = sub_195A650;
              *v18 = 0;
              v18[1] = 0;
              v18[2] = 0;
              v16 = sub_19593CC(a1 + 24, v18);
              v13 = *v39;
            }

            v12 = sub_1958890(v16, v13, a3);
            *v39 = v12;
            if (!v12)
            {
              goto LABEL_65;
            }

            if (*a3 <= v12 || *v12 != 34)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_50;
      }

      if (v8 != 26)
      {
        goto LABEL_50;
      }

      *(a1 + 16) |= 8u;
      v27 = *(a1 + 72);
      if (!v27)
      {
        v28 = *(a1 + 8);
        v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
        if (v28)
        {
          v29 = *v29;
        }

        sub_1738E68(v29);
        v27 = v30;
        *(a1 + 72) = v30;
        v7 = *v39;
      }

      v26 = sub_2231438(a3, v27, v7);
LABEL_57:
      *v39 = v26;
      if (!v26)
      {
        goto LABEL_65;
      }

      goto LABEL_58;
    }

    if (v11 == 5)
    {
      if (v8 != 42)
      {
        goto LABEL_50;
      }

      *(a1 + 16) |= 2u;
      v24 = *(a1 + 8);
      v21 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v21 = *v21;
      }

      v22 = (a1 + 56);
LABEL_38:
      v25 = sub_194DB04(v22, v21);
      v26 = sub_1958890(v25, *v39, a3);
      goto LABEL_57;
    }

    if (v11 != 6)
    {
      break;
    }

    if (v8 != 48)
    {
      goto LABEL_50;
    }

    v5 |= 0x10u;
    v32 = (v7 + 1);
    LODWORD(v31) = *v7;
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    v33 = *v32;
    v31 = v31 + (v33 << 7) - 128;
    if ((v33 & 0x80000000) == 0)
    {
      v32 = (v7 + 2);
LABEL_49:
      *v39 = v32;
      *(a1 + 80) = v31;
      goto LABEL_58;
    }

    v37 = sub_19587DC(v7, v31);
    *v39 = v37;
    *(a1 + 80) = v38;
    if (!v37)
    {
      goto LABEL_65;
    }

LABEL_58:
    if (sub_195ADC0(a3, v39, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 7 && v8 == 58)
  {
    *(a1 + 16) |= 4u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = (a1 + 64);
    goto LABEL_38;
  }

LABEL_50:
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
      v7 = *v39;
    }

    v26 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_57;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_65:
  *v39 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v39;
}