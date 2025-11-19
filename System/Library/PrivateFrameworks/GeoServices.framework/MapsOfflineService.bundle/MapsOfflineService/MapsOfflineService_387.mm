uint64_t sub_15D0C70(uint64_t a1)
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
      v9 = sub_15CC1B8(v8);
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
      v16 = sub_15D0C70(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 104);
  v18 = v11 + v17;
  if (v17 >= 1)
  {
    v19 = (*(a1 + 112) + 8);
    do
    {
      v20 = *v19++;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v18 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      --v17;
    }

    while (v17);
  }

  v23 = *(a1 + 128);
  v24 = v18 + v23;
  v25 = *(a1 + 136);
  if (v25)
  {
    v26 = (v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = 8 * v23;
    do
    {
      v28 = *v26++;
      v29 = sub_1579354(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 152);
  v31 = v24 + v30;
  v32 = *(a1 + 160);
  if (v32)
  {
    v33 = (v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  if (v30)
  {
    v34 = 8 * v30;
    do
    {
      v35 = *v33++;
      v36 = sub_1579354(v35);
      v31 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      v34 -= 8;
    }

    while (v34);
  }

  v37 = *(a1 + 176);
  v38 = v31 + 2 * v37;
  v39 = *(a1 + 184);
  if (v39)
  {
    v40 = (v39 + 8);
  }

  else
  {
    v40 = 0;
  }

  if (v37)
  {
    v41 = 8 * v37;
    do
    {
      v42 = *v40++;
      v43 = sub_15D0C70(v42);
      v38 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      v41 -= 8;
    }

    while (v41);
  }

  v44 = sub_1959F14((a1 + 192));
  v45 = *(a1 + 216);
  v46 = v44 + v38 + 2 * (v45 + *(a1 + 192));
  v47 = *(a1 + 224);
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
      v51 = sub_15CF228(v50);
      v46 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6);
      v49 -= 8;
    }

    while (v49);
  }

  v52 = *(a1 + 240);
  v53 = v46 + 2 * v52;
  v54 = *(a1 + 248);
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
      v58 = sub_15CC1B8(v57);
      v53 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6);
      v56 -= 8;
    }

    while (v56);
  }

  v59 = *(a1 + 264);
  v60 = v53 + 2 * v59;
  if (v59 >= 1)
  {
    v61 = (*(a1 + 272) + 8);
    do
    {
      v62 = *v61++;
      v63 = *(v62 + 23);
      v64 = *(v62 + 8);
      if ((v63 & 0x80u) == 0)
      {
        v64 = v63;
      }

      v60 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6);
      --v59;
    }

    while (v59);
  }

  v65 = *(a1 + 288);
  v66 = v60 + 2 * v65;
  v67 = *(a1 + 296);
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
      v71 = sub_157D798(v70);
      v66 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6);
      v69 -= 8;
    }

    while (v69);
  }

  v72 = *(a1 + 40);
  if (!v72)
  {
    goto LABEL_71;
  }

  if (v72)
  {
    v92 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
    v93 = *(v92 + 23);
    v94 = *(v92 + 8);
    if ((v93 & 0x80u) == 0)
    {
      v94 = v93;
    }

    v66 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v72 & 2) == 0)
    {
LABEL_62:
      if ((v72 & 4) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_118;
    }
  }

  else if ((v72 & 2) == 0)
  {
    goto LABEL_62;
  }

  v95 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
  v96 = *(v95 + 23);
  v97 = *(v95 + 8);
  if ((v96 & 0x80u) == 0)
  {
    v97 = v96;
  }

  v66 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 4) == 0)
  {
LABEL_63:
    if ((v72 & 8) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_121;
  }

LABEL_118:
  v98 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
  v99 = *(v98 + 23);
  v100 = *(v98 + 8);
  if ((v99 & 0x80u) == 0)
  {
    v100 = v99;
  }

  v66 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 8) == 0)
  {
LABEL_64:
    if ((v72 & 0x10) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_124;
  }

LABEL_121:
  v101 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
  v102 = *(v101 + 23);
  v103 = *(v101 + 8);
  if ((v102 & 0x80u) == 0)
  {
    v103 = v102;
  }

  v66 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x10) == 0)
  {
LABEL_65:
    if ((v72 & 0x20) == 0)
    {
      goto LABEL_66;
    }

LABEL_127:
    v107 = *(a1 + 344) & 0xFFFFFFFFFFFFFFFELL;
    v108 = *(v107 + 23);
    v109 = *(v107 + 8);
    if ((v108 & 0x80u) == 0)
    {
      v109 = v108;
    }

    v66 += v109 + ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v72 & 0x40) == 0)
    {
LABEL_67:
      if ((v72 & 0x80) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    }

    goto LABEL_130;
  }

LABEL_124:
  v104 = *(a1 + 336) & 0xFFFFFFFFFFFFFFFELL;
  v105 = *(v104 + 23);
  v106 = *(v104 + 8);
  if ((v105 & 0x80u) == 0)
  {
    v106 = v105;
  }

  v66 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x20) != 0)
  {
    goto LABEL_127;
  }

LABEL_66:
  if ((v72 & 0x40) == 0)
  {
    goto LABEL_67;
  }

LABEL_130:
  v110 = *(a1 + 352) & 0xFFFFFFFFFFFFFFFELL;
  v111 = *(v110 + 23);
  v112 = *(v110 + 8);
  if ((v111 & 0x80u) == 0)
  {
    v112 = v111;
  }

  v66 += v112 + ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x80) != 0)
  {
LABEL_68:
    v73 = *(a1 + 360) & 0xFFFFFFFFFFFFFFFELL;
    v74 = *(v73 + 23);
    v75 = *(v73 + 8);
    if ((v74 & 0x80u) == 0)
    {
      v75 = v74;
    }

    v66 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_71:
  if ((v72 & 0xFF00) == 0)
  {
    goto LABEL_81;
  }

  if ((v72 & 0x100) != 0)
  {
    v113 = sub_16EE474(*(a1 + 368));
    v66 += v113 + ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v72 & 0x200) == 0)
    {
LABEL_74:
      if ((v72 & 0x400) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_136;
    }
  }

  else if ((v72 & 0x200) == 0)
  {
    goto LABEL_74;
  }

  v114 = sub_1548710(*(a1 + 376));
  v66 += v114 + ((9 * (__clz(v114 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v72 & 0x400) == 0)
  {
LABEL_75:
    if ((v72 & 0x800) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_137;
  }

LABEL_136:
  v115 = sub_15C6544(*(a1 + 384));
  v66 += v115 + ((9 * (__clz(v115 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v72 & 0x800) == 0)
  {
LABEL_76:
    if ((v72 & 0x1000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_138;
  }

LABEL_137:
  v116 = sub_15C6544(*(a1 + 392));
  v66 += v116 + ((9 * (__clz(v116 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v72 & 0x1000) == 0)
  {
LABEL_77:
    if ((v72 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_139;
  }

LABEL_138:
  v117 = sub_15BFDEC(*(a1 + 400));
  v66 += v117 + ((9 * (__clz(v117 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x2000) == 0)
  {
LABEL_78:
    if ((v72 & 0x4000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_140;
  }

LABEL_139:
  v118 = sub_167E9E4(*(a1 + 408));
  v66 += v118 + ((9 * (__clz(v118 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x4000) == 0)
  {
LABEL_79:
    if ((v72 & 0x8000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_140:
  v119 = sub_15D24F8(*(a1 + 416));
  v66 += v119 + ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v72 & 0x8000) != 0)
  {
LABEL_80:
    v76 = sub_157CE54(*(a1 + 424));
    v66 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_81:
  if ((v72 & 0xFF0000) == 0)
  {
    goto LABEL_105;
  }

  if ((v72 & 0x10000) != 0)
  {
    v120 = sub_13B7050(*(a1 + 432));
    v66 += v120 + ((9 * (__clz(v120 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v72 & 0x20000) == 0)
    {
LABEL_84:
      if ((v72 & 0x40000) == 0)
      {
        goto LABEL_85;
      }

LABEL_144:
      v121 = *(a1 + 448);
      v122 = ((9 * (__clz(v121 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v121 >= 0)
      {
        v123 = v122;
      }

      else
      {
        v123 = 11;
      }

      v66 += v123;
      if ((v72 & 0x80000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_86;
    }
  }

  else if ((v72 & 0x20000) == 0)
  {
    goto LABEL_84;
  }

  v66 += ((9 * (__clz(*(a1 + 440) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v72 & 0x40000) != 0)
  {
    goto LABEL_144;
  }

LABEL_85:
  if ((v72 & 0x80000) != 0)
  {
LABEL_86:
    v77 = *(a1 + 452);
    v78 = ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v77 >= 0)
    {
      v79 = v78;
    }

    else
    {
      v79 = 12;
    }

    v66 += v79;
  }

LABEL_90:
  v80 = v66 + 3;
  if ((v72 & 0x100000) == 0)
  {
    v80 = v66;
  }

  if ((v72 & 0x200000) != 0)
  {
    v66 = v80 + 3;
  }

  else
  {
    v66 = v80;
  }

  if ((v72 & 0x400000) != 0)
  {
    v81 = *(a1 + 460);
    v82 = ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v81 >= 0)
    {
      v83 = v82;
    }

    else
    {
      v83 = 12;
    }

    v66 += v83;
  }

  if ((v72 & 0x800000) != 0)
  {
    v84 = *(a1 + 464);
    v85 = ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v84 >= 0)
    {
      v86 = v85;
    }

    else
    {
      v86 = 12;
    }

    v66 += v86;
  }

LABEL_105:
  if ((v72 & 0x1000000) != 0)
  {
    v87 = *(a1 + 468);
    v88 = ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v87 >= 0)
    {
      v89 = v88;
    }

    else
    {
      v89 = 12;
    }

    v66 += v89;
  }

  v90 = *(a1 + 8);
  if (v90)
  {
    v124 = v90 & 0xFFFFFFFFFFFFFFFCLL;
    v125 = *((v90 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v125 < 0)
    {
      v125 = *(v124 + 16);
    }

    v66 += v125;
  }

  *(a1 + 44) = v66;
  return v66;
}

void sub_15D158C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_15D7858((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_15D78E4((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_1311FF0((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
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
    sub_1311FF0((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
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
    sub_15D78E4((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 192);
  if (v34)
  {
    v35 = *(a1 + 192);
    sub_1959094((a1 + 192), v35 + v34);
    v36 = *(a1 + 200);
    *(a1 + 192) += *(a2 + 192);
    memcpy((v36 + 8 * v35), *(a2 + 200), 8 * *(a2 + 192));
  }

  v37 = *(a2 + 216);
  if (v37)
  {
    v38 = *(a2 + 224);
    v39 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_15D7970((a1 + 208), v39, (v38 + 8), v37, **(a1 + 224) - *(a1 + 216));
    v40 = *(a1 + 216) + v37;
    *(a1 + 216) = v40;
    v41 = *(a1 + 224);
    if (*v41 < v40)
    {
      *v41 = v40;
    }
  }

  v42 = *(a2 + 240);
  if (v42)
  {
    v43 = *(a2 + 248);
    v44 = sub_19592E8(a1 + 232, *(a2 + 240));
    sub_15D7858((a1 + 232), v44, (v43 + 8), v42, **(a1 + 248) - *(a1 + 240));
    v45 = *(a1 + 240) + v42;
    *(a1 + 240) = v45;
    v46 = *(a1 + 248);
    if (*v46 < v45)
    {
      *v46 = v45;
    }
  }

  v47 = *(a2 + 264);
  if (v47)
  {
    v48 = *(a2 + 272);
    v49 = sub_19592E8(a1 + 256, *(a2 + 264));
    sub_1201B48(a1 + 256, v49, (v48 + 8), v47, **(a1 + 272) - *(a1 + 264));
    v50 = *(a1 + 264) + v47;
    *(a1 + 264) = v50;
    v51 = *(a1 + 272);
    if (*v51 < v50)
    {
      *v51 = v50;
    }
  }

  v52 = *(a2 + 288);
  if (v52)
  {
    v53 = *(a2 + 296);
    v54 = sub_19592E8(a1 + 280, *(a2 + 288));
    sub_15D79FC((a1 + 280), v54, (v53 + 8), v52, **(a1 + 296) - *(a1 + 288));
    v55 = *(a1 + 288) + v52;
    *(a1 + 288) = v55;
    v56 = *(a1 + 296);
    if (*v56 < v55)
    {
      *v56 = v55;
    }
  }

  v57 = *(a2 + 40);
  if (!v57)
  {
    goto LABEL_67;
  }

  if (v57)
  {
    v58 = *(a2 + 304);
    *(a1 + 40) |= 1u;
    v59 = *(a1 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    sub_194EA1C((a1 + 304), (v58 & 0xFFFFFFFFFFFFFFFELL), v60);
    if ((v57 & 2) == 0)
    {
LABEL_36:
      if ((v57 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_49;
    }
  }

  else if ((v57 & 2) == 0)
  {
    goto LABEL_36;
  }

  v61 = *(a2 + 312);
  *(a1 + 40) |= 2u;
  v62 = *(a1 + 8);
  v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
  if (v62)
  {
    v63 = *v63;
  }

  sub_194EA1C((a1 + 312), (v61 & 0xFFFFFFFFFFFFFFFELL), v63);
  if ((v57 & 4) == 0)
  {
LABEL_37:
    if ((v57 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_52;
  }

LABEL_49:
  v64 = *(a2 + 320);
  *(a1 + 40) |= 4u;
  v65 = *(a1 + 8);
  v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
  if (v65)
  {
    v66 = *v66;
  }

  sub_194EA1C((a1 + 320), (v64 & 0xFFFFFFFFFFFFFFFELL), v66);
  if ((v57 & 8) == 0)
  {
LABEL_38:
    if ((v57 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_55;
  }

LABEL_52:
  v67 = *(a2 + 328);
  *(a1 + 40) |= 8u;
  v68 = *(a1 + 8);
  v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
  if (v68)
  {
    v69 = *v69;
  }

  sub_194EA1C((a1 + 328), (v67 & 0xFFFFFFFFFFFFFFFELL), v69);
  if ((v57 & 0x10) == 0)
  {
LABEL_39:
    if ((v57 & 0x20) == 0)
    {
      goto LABEL_40;
    }

LABEL_58:
    v73 = *(a2 + 344);
    *(a1 + 40) |= 0x20u;
    v74 = *(a1 + 8);
    v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
    if (v74)
    {
      v75 = *v75;
    }

    sub_194EA1C((a1 + 344), (v73 & 0xFFFFFFFFFFFFFFFELL), v75);
    if ((v57 & 0x40) == 0)
    {
LABEL_41:
      if ((v57 & 0x80) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    goto LABEL_61;
  }

LABEL_55:
  v70 = *(a2 + 336);
  *(a1 + 40) |= 0x10u;
  v71 = *(a1 + 8);
  v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
  if (v71)
  {
    v72 = *v72;
  }

  sub_194EA1C((a1 + 336), (v70 & 0xFFFFFFFFFFFFFFFELL), v72);
  if ((v57 & 0x20) != 0)
  {
    goto LABEL_58;
  }

LABEL_40:
  if ((v57 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_61:
  v76 = *(a2 + 352);
  *(a1 + 40) |= 0x40u;
  v77 = *(a1 + 8);
  v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL);
  if (v77)
  {
    v78 = *v78;
  }

  sub_194EA1C((a1 + 352), (v76 & 0xFFFFFFFFFFFFFFFELL), v78);
  if ((v57 & 0x80) != 0)
  {
LABEL_64:
    v79 = *(a2 + 360);
    *(a1 + 40) |= 0x80u;
    v80 = *(a1 + 8);
    v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
    if (v80)
    {
      v81 = *v81;
    }

    sub_194EA44((a1 + 360), (v79 & 0xFFFFFFFFFFFFFFFELL), v81);
  }

LABEL_67:
  if ((v57 & 0xFF00) == 0)
  {
    goto LABEL_141;
  }

  if ((v57 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v82 = *(a1 + 368);
    if (!v82)
    {
      v83 = *(a1 + 8);
      v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
      if (v83)
      {
        v84 = *v84;
      }

      v82 = sub_16F5F38(v84);
      *(a1 + 368) = v82;
    }

    if (*(a2 + 368))
    {
      v85 = *(a2 + 368);
    }

    else
    {
      v85 = &off_277E980;
    }

    sub_121721C(v82, v85);
  }

  if ((v57 & 0x200) != 0)
  {
    *(a1 + 40) |= 0x200u;
    v86 = *(a1 + 376);
    if (!v86)
    {
      v87 = *(a1 + 8);
      v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
      if (v87)
      {
        v88 = *v88;
      }

      sub_155218C(v88);
      *(a1 + 376) = v86;
    }

    if (*(a2 + 376))
    {
      v89 = *(a2 + 376);
    }

    else
    {
      v89 = &off_2776D50;
    }

    sub_14D3AD8(v86, v89);
  }

  if ((v57 & 0x400) != 0)
  {
    *(a1 + 40) |= 0x400u;
    v90 = *(a1 + 384);
    if (!v90)
    {
      v91 = *(a1 + 8);
      v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
      if (v91)
      {
        v92 = *v92;
      }

      sub_15D462C(v92);
      *(a1 + 384) = v90;
    }

    if (*(a2 + 384))
    {
      v93 = *(a2 + 384);
    }

    else
    {
      v93 = &off_2778DA8;
    }

    sub_15C7EF4(v90, v93);
    if ((v57 & 0x800) == 0)
    {
LABEL_88:
      if ((v57 & 0x1000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_109;
    }
  }

  else if ((v57 & 0x800) == 0)
  {
    goto LABEL_88;
  }

  *(a1 + 40) |= 0x800u;
  v94 = *(a1 + 392);
  if (!v94)
  {
    v95 = *(a1 + 8);
    v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
    if (v95)
    {
      v96 = *v96;
    }

    sub_15D462C(v96);
    *(a1 + 392) = v94;
  }

  if (*(a2 + 392))
  {
    v97 = *(a2 + 392);
  }

  else
  {
    v97 = &off_2778DA8;
  }

  sub_15C7EF4(v94, v97);
  if ((v57 & 0x1000) == 0)
  {
LABEL_89:
    if ((v57 & 0x2000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(a1 + 40) |= 0x1000u;
  v98 = *(a1 + 400);
  if (!v98)
  {
    v99 = *(a1 + 8);
    v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
    if (v99)
    {
      v100 = *v100;
    }

    v98 = sub_15C0034(v100);
    *(a1 + 400) = v98;
  }

  if (*(a2 + 400))
  {
    v101 = *(a2 + 400);
  }

  else
  {
    v101 = &off_2778D10;
  }

  sub_12EB184(v98, v101);
  if ((v57 & 0x2000) == 0)
  {
LABEL_90:
    if ((v57 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_125;
  }

LABEL_117:
  *(a1 + 40) |= 0x2000u;
  v102 = *(a1 + 408);
  if (!v102)
  {
    v103 = *(a1 + 8);
    v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
    if (v103)
    {
      v104 = *v104;
    }

    v102 = sub_167EBB4(v104);
    *(a1 + 408) = v102;
  }

  if (*(a2 + 408))
  {
    v105 = *(a2 + 408);
  }

  else
  {
    v105 = &off_277C7C0;
  }

  sub_1673FA0(v102, v105);
  if ((v57 & 0x4000) == 0)
  {
LABEL_91:
    if ((v57 & 0x8000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_133;
  }

LABEL_125:
  *(a1 + 40) |= 0x4000u;
  v106 = *(a1 + 416);
  if (!v106)
  {
    v107 = *(a1 + 8);
    v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL);
    if (v107)
    {
      v108 = *v108;
    }

    v106 = sub_15D4BD8(v108);
    *(a1 + 416) = v106;
  }

  if (*(a2 + 416))
  {
    v109 = *(a2 + 416);
  }

  else
  {
    v109 = &off_27795D0;
  }

  sub_12AAC24(v106, v109);
  if ((v57 & 0x8000) != 0)
  {
LABEL_133:
    *(a1 + 40) |= 0x8000u;
    v110 = *(a1 + 424);
    if (!v110)
    {
      v111 = *(a1 + 8);
      v112 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
      if (v111)
      {
        v112 = *v112;
      }

      sub_157D924(v112);
      *(a1 + 424) = v110;
    }

    if (*(a2 + 424))
    {
      v113 = *(a2 + 424);
    }

    else
    {
      v113 = &off_2777810;
    }

    sub_157D090(v110, v113);
  }

LABEL_141:
  if ((v57 & 0xFF0000) == 0)
  {
    goto LABEL_152;
  }

  if ((v57 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v116 = *(a1 + 432);
    if (!v116)
    {
      v117 = *(a1 + 8);
      v118 = (v117 & 0xFFFFFFFFFFFFFFFCLL);
      if (v117)
      {
        v118 = *v118;
      }

      v116 = sub_13B736C(v118);
      *(a1 + 432) = v116;
    }

    if (*(a2 + 432))
    {
      v119 = *(a2 + 432);
    }

    else
    {
      v119 = &off_276E0F0;
    }

    sub_13B71CC(v116, v119);
    if ((v57 & 0x20000) == 0)
    {
LABEL_144:
      if ((v57 & 0x40000) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_167;
    }
  }

  else if ((v57 & 0x20000) == 0)
  {
    goto LABEL_144;
  }

  *(a1 + 440) = *(a2 + 440);
  if ((v57 & 0x40000) == 0)
  {
LABEL_145:
    if ((v57 & 0x80000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(a1 + 448) = *(a2 + 448);
  if ((v57 & 0x80000) == 0)
  {
LABEL_146:
    if ((v57 & 0x100000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(a1 + 452) = *(a2 + 452);
  if ((v57 & 0x100000) == 0)
  {
LABEL_147:
    if ((v57 & 0x200000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_170;
  }

LABEL_169:
  *(a1 + 456) = *(a2 + 456);
  if ((v57 & 0x200000) == 0)
  {
LABEL_148:
    if ((v57 & 0x400000) == 0)
    {
      goto LABEL_149;
    }

LABEL_171:
    *(a1 + 460) = *(a2 + 460);
    if ((v57 & 0x800000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_150;
  }

LABEL_170:
  *(a1 + 457) = *(a2 + 457);
  if ((v57 & 0x400000) != 0)
  {
    goto LABEL_171;
  }

LABEL_149:
  if ((v57 & 0x800000) != 0)
  {
LABEL_150:
    *(a1 + 464) = *(a2 + 464);
  }

LABEL_151:
  *(a1 + 40) |= v57;
LABEL_152:
  if ((v57 & 0x1000000) != 0)
  {
    v114 = *(a2 + 468);
    *(a1 + 40) |= 0x1000000u;
    *(a1 + 468) = v114;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v115 = *(a2 + 8);
  if (v115)
  {

    sub_1957EF4((a1 + 8), (v115 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15D1F04(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_15CCD5C(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_15D202C(a1 + 72);
    if (result)
    {
      result = sub_15D202C(a1 + 168);
      if (result)
      {
        result = sub_15D2084(a1 + 208);
        if (result)
        {
          v6 = *(a1 + 240);
          while (v6 >= 1)
          {
            v7 = v6 - 1;
            v8 = sub_15CCD5C(*(*(a1 + 248) + 8 * v6));
            result = 0;
            v6 = v7;
            if ((v8 & 1) == 0)
            {
              return result;
            }
          }

          v9 = *(a1 + 40);
          if ((v9 & 0x100) != 0)
          {
            result = sub_16EE510(*(a1 + 368));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }

          if ((v9 & 0x200) != 0)
          {
            result = sub_14D3EC8(*(a1 + 376));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }

          if ((v9 & 0x400) != 0)
          {
            result = sub_15C9E7C(*(a1 + 384));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }

          if ((v9 & 0x800) != 0)
          {
            result = sub_15C9E7C(*(a1 + 392));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }

          if ((v9 & 0x2000) != 0)
          {
            result = sub_1674864(*(a1 + 408));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }

          if ((v9 & 0x8000) == 0)
          {
            return 1;
          }

          result = sub_157D31C(*(a1 + 424));
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

BOOL sub_15D202C(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_15D1F04(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_15D2084(uint64_t a1)
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
        v7 = sub_1674700(*(*(v4 + 40) + 8 * v5));
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

void *sub_15D2120(void *a1)
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

void sub_15D2194(void *a1)
{
  sub_15D2120(a1);

  operator delete();
}

char *sub_15D21CC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
  {
    goto LABEL_35;
  }

  while (1)
  {
    v6 = v20 + 1;
    v7 = *v20;
    if (*v20 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v20, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v20 + 2;
      }
    }

    v20 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 17)
      {
        *(a1 + 24) = *v6;
        v20 = v6 + 8;
        v5 = 1;
        goto LABEL_27;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v14 = v6 + 1;
      v15 = *v6;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v14;
      v17 = (v16 << 7) + v15;
      LODWORD(v15) = v17 - 128;
      if (v16 < 0)
      {
        v20 = sub_19587DC(v6, (v17 - 128));
        if (!v20)
        {
          goto LABEL_36;
        }

        LODWORD(v15) = v18;
      }

      else
      {
        v14 = v6 + 2;
LABEL_24:
        v20 = v14;
      }

      if (sub_157BACC(v15))
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v15;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_27;
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
      v6 = v20;
    }

    v20 = sub_1952690(v7, v13, v6, a3);
    if (!v20)
    {
      goto LABEL_36;
    }

LABEL_27:
    if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
    {
      goto LABEL_35;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_35;
  }

LABEL_36:
  v20 = 0;
LABEL_35:
  *(a1 + 16) |= v5;
  return v20;
}

char *sub_15D2398(uint64_t a1, char *__dst, _DWORD *a3)
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

    v11 = *(a1 + 24);
    *v6 = 17;
    *(v6 + 1) = v11;
    v6 += 9;
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

uint64_t sub_15D24F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
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
  }

  else
  {
    v2 = 0;
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

  *(a1 + 20) = v2;
  return v2;
}

void *sub_15D2594(void *a1)
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

  sub_15D2618(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_15D2618(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27795F8)
  {
    if (*(a1 + 32))
    {
      sub_16EE080();
      operator delete();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      sub_15C17FC(v4);
      operator delete();
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      sub_15CF550(v5);
      operator delete();
    }

    result = *(a1 + 56);
    if (result)
    {
      sub_153FD8C();

      operator delete();
    }
  }

  return result;
}

void sub_15D26FC(void *a1)
{
  sub_15D2594(a1);

  operator delete();
}

uint64_t sub_15D2734(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
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

LABEL_21:
    result = sub_15C1F38(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_22;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  result = sub_16EE0BC(*(result + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_22:
  result = sub_15CF894(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_153FDC8(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
    *(v1 + 96) = 0;
    *(v1 + 88) = 0;
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

uint64_t sub_15D2820(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v44, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v44 + 1);
    v8 = **v44;
    if (**v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v44 + 2);
      }
    }

    *v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      if (v8 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 2u;
            v23 = *(a1 + 32);
            if (!v23)
            {
              v24 = *(a1 + 8);
              v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
              if (v24)
              {
                v25 = *v25;
              }

              v23 = sub_16F5F38(v25);
              *(a1 + 32) = v23;
              v7 = *v44;
            }

            v22 = sub_21F4CD0(a3, v23, v7);
            goto LABEL_72;
          }
        }

        else if (v11 == 2 && v8 == 17)
        {
          v18 = *v7;
          v12 = v7 + 8;
          v5 |= 0x20u;
          *(a1 + 64) = v18;
          goto LABEL_60;
        }
      }

      else if (v11 == 3)
      {
        if (v8 == 25)
        {
          v30 = *v7;
          v12 = v7 + 8;
          v5 |= 0x40u;
          *(a1 + 72) = v30;
          goto LABEL_60;
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 33)
        {
          v35 = *v7;
          v12 = v7 + 8;
          v5 |= 0x80u;
          *(a1 + 80) = v35;
          goto LABEL_60;
        }
      }

      else if (v11 == 5 && v8 == 41)
      {
        v13 = *v7;
        v12 = v7 + 8;
        v5 |= 0x100u;
        *(a1 + 88) = v13;
LABEL_60:
        *v44 = v12;
        goto LABEL_73;
      }

      goto LABEL_65;
    }

    if (v8 >> 3 <= 8)
    {
      if (v11 == 6)
      {
        if (v8 != 50)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 4u;
        v26 = *(a1 + 40);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          sub_15D462C(v28);
          v26 = v29;
          *(a1 + 40) = v29;
          v7 = *v44;
        }

        sub_2226DAC(a3, v26, v7);
      }

      else
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_65;
        }

        *(a1 + 16) |= 8u;
        v19 = *(a1 + 48);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_15D4B7C(v21);
          *(a1 + 48) = v19;
          v7 = *v44;
        }

        v22 = sub_2226E40(a3, v19, v7);
      }

      goto LABEL_72;
    }

    if (v11 == 9)
    {
      if (v8 != 74)
      {
        goto LABEL_65;
      }

      *(a1 + 16) |= 0x10u;
      v31 = *(a1 + 56);
      if (!v31)
      {
        v32 = *(a1 + 8);
        v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
        if (v32)
        {
          v33 = *v33;
        }

        sub_1551D64(v33);
        v31 = v34;
        *(a1 + 56) = v34;
        v7 = *v44;
      }

      sub_21F3650(a3, v31, v7);
LABEL_72:
      *v44 = v22;
      if (!v22)
      {
        goto LABEL_80;
      }

      goto LABEL_73;
    }

    if (v11 == 10)
    {
      break;
    }

    if (v11 != 11 || v8 != 88)
    {
      goto LABEL_65;
    }

    v5 |= 0x200u;
    v14 = (v7 + 1);
    v15 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v16 = *v14;
    v15 = v15 + (v16 << 7) - 128;
    if ((v16 & 0x80000000) == 0)
    {
      v14 = (v7 + 2);
LABEL_22:
      *v44 = v14;
      *(a1 + 96) = v15;
      goto LABEL_73;
    }

    v42 = sub_1958770(v7, v15);
    *v44 = v42;
    *(a1 + 96) = v43;
    if (!v42)
    {
      goto LABEL_80;
    }

LABEL_73:
    if (sub_195ADC0(a3, v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 82)
  {
    *(a1 + 16) |= 1u;
    v36 = *(a1 + 8);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v38 = sub_194DB04((a1 + 24), v37);
    v22 = sub_1958890(v38, *v44, a3);
    goto LABEL_72;
  }

LABEL_65:
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
      v7 = *v44;
    }

    v22 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_72;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_80:
  *v44 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v44;
}

char *sub_15D2BF8(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v8 = *(a1 + 32);
    *v4 = 10;
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

    v4 = sub_16EE2C4(v8, v10, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 64);
  *v4 = 17;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 72);
  *v4 = 25;
  *(v4 + 1) = v12;
  v4 += 9;
  if ((v6 & 0x80) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v13 = *(a1 + 80);
  *v4 = 33;
  *(v4 + 1) = v13;
  v4 += 9;
  if ((v6 & 0x100) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 88);
  *v4 = 41;
  *(v4 + 1) = v14;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 40);
  *v4 = 50;
  v16 = *(v15 + 36);
  v4[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v4 + 1);
  }

  else
  {
    v17 = v4 + 2;
  }

  v4 = sub_15C2CA0(v15, v17, a3);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_36:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 48);
  *v4 = 58;
  v19 = *(v18 + 44);
  v4[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v4 + 1);
  }

  else
  {
    v20 = v4 + 2;
  }

  v4 = sub_15CFD5C(v18, v20, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_48:
    v4 = sub_128AEEC(a3, 10, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 56);
  *v4 = 74;
  v22 = *(v21 + 28);
  v4[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v4 + 1);
  }

  else
  {
    v23 = v4 + 2;
  }

  v4 = sub_1540418(v21, v23, a3);
  if (v6)
  {
    goto LABEL_48;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    v7 = v4;
    goto LABEL_56;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v24 = *(a1 + 96);
  *v4 = 88;
  v4[1] = v24;
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v25 = v24 >> 7;
    v4[2] = v24 >> 7;
    v7 = v4 + 3;
    if (v24 >= 0x4000)
    {
      LOBYTE(v26) = v4[2];
      do
      {
        *(v7 - 1) = v26 | 0x80;
        v26 = v25 >> 7;
        *v7++ = v25 >> 7;
        v27 = v25 >> 14;
        v25 >>= 7;
      }

      while (v27);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_56:
  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v7;
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

  if ((*a3 - v7) >= v31)
  {
    v33 = v31;
    memcpy(v7, v32, v31);
    v7 += v33;
    return v7;
  }

  return sub_1957130(a3, v32, v31, v7);
}

uint64_t sub_15D2FD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    result = 0;
    goto LABEL_21;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = sub_16EE474(*(a1 + 32));
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_29:
    v13 = sub_15D0C70(*(a1 + 48));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = sub_15C6544(*(a1 + 40));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((v2 & 0x10) != 0)
  {
LABEL_13:
    v9 = sub_1541FC0(*(a1 + 56));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v10 = v3 + 9;
  if ((v2 & 0x20) == 0)
  {
    v10 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v10 += 9;
  }

  if ((v2 & 0x80) != 0)
  {
    result = v10 + 9;
  }

  else
  {
    result = v10;
  }

LABEL_21:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result += 9;
    }

    if ((v2 & 0x200) != 0)
    {
      result += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v14 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    result += v15;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15D31B4(uint64_t a1, uint64_t a2)
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

      v9 = sub_16F5F38(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_277E980;
    }

    sub_121721C(v9, v12);
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

      sub_15D462C(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2778DA8;
    }

    sub_15C7EF4(v13, v16);
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

      v17 = sub_15D4B7C(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_27793F8;
    }

    sub_15D158C(v17, v20);
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

      sub_1551D64(v23);
      *(a1 + 56) = v21;
    }

    if (*(a2 + 56))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = &off_27769A8;
    }

    sub_1542CDC(v21, v24);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(a1 + 64) = *(a2 + 64);
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

LABEL_58:
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
      *(a1 + 88) = *(a2 + 88);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 96) = *(a2 + 96);
    }

    *(a1 + 16) |= v4;
  }

  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15D3400(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16EE510(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_15C9E7C(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_15D1F04(*(a1 + 48));
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

  result = sub_1543A14(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_15D3484(void *a1)
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

  sub_15D3508(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_15D3508(uint64_t a1)
{
  v3 = *(a1 + 24);
  result = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2779660)
  {
    if (*(a1 + 32))
    {
      sub_16EE080();
      operator delete();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      sub_15D2594(v4);
      operator delete();
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      sub_14D5F60(v5);
      operator delete();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      sub_15BA884(v6);
      operator delete();
    }

    if (*(a1 + 64))
    {
      sub_16EB0C0();
      operator delete();
    }

    if (*(a1 + 72))
    {
      sub_15794BC();
      operator delete();
    }

    result = *(a1 + 80);
    if (result)
    {
      sub_15794BC();

      operator delete();
    }
  }

  return result;
}

void sub_15D3644(void *a1)
{
  sub_15D3484(a1);

  operator delete();
}

uint64_t sub_15D367C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (*(result + 16))
  {
    v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if ((*(result + 16) & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  result = sub_16EE0BC(*(result + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = sub_15D2734(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = sub_14D5F9C(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    result = sub_16EB0FC(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_22:
  result = sub_15BA988(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_24:
  result = sub_15794F8(*(v1 + 72));
  if (v2 < 0)
  {
LABEL_10:
    result = sub_15794F8(*(v1 + 80));
  }

LABEL_11:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 80) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_15D3778(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v42 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v42, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v42 + 1);
    v8 = **v42;
    if (**v42 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v42, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v42 + 2);
      }
    }

    *v42 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_70;
        }

        *(a1 + 16) |= 2u;
        v27 = *(a1 + 32);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_16F5F38(v29);
          *(a1 + 32) = v27;
          v7 = *v42;
        }

        v20 = sub_21F4CD0(a3, v27, v7);
      }

      else
      {
        if (v11 != 4 || v8 != 34)
        {
          goto LABEL_70;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 40);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          sub_15D4C54(v18);
          v16 = v19;
          *(a1 + 40) = v19;
          v7 = *v42;
        }

        v20 = sub_22271A4(a3, v16, v7);
      }
    }

    else
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 17)
        {
          v5 |= 0x100u;
          *(a1 + 88) = *v7;
          *v42 = v7 + 8;
          goto LABEL_78;
        }

        goto LABEL_70;
      }

      if (v8 != 10)
      {
        goto LABEL_70;
      }

      *(a1 + 16) |= 1u;
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v26 = sub_194DB04((a1 + 24), v25);
      v20 = sub_1958890(v26, *v42, a3);
    }

LABEL_77:
    *v42 = v20;
    if (!v20)
    {
      goto LABEL_83;
    }

LABEL_78:
    if (sub_195ADC0(a3, v42, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 != 42)
      {
        goto LABEL_70;
      }

      *(a1 + 16) |= 8u;
      v33 = *(a1 + 48);
      if (!v33)
      {
        v34 = *(a1 + 8);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        sub_14D6BF8(v35);
        v33 = v36;
        *(a1 + 48) = v36;
        v7 = *v42;
      }

      v20 = sub_2227234(a3, v33, v7);
    }

    else
    {
      if (v11 != 6 || v8 != 50)
      {
        goto LABEL_70;
      }

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

        v21 = sub_15BAF80(v23);
        *(a1 + 56) = v21;
        v7 = *v42;
      }

      v20 = sub_2204D00(a3, v21, v7);
    }

    goto LABEL_77;
  }

  if (v11 == 7)
  {
    if (v8 != 58)
    {
      goto LABEL_70;
    }

    *(a1 + 16) |= 0x20u;
    v30 = *(a1 + 64);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_16F5DB8(v32);
      *(a1 + 64) = v30;
      v7 = *v42;
    }

    v20 = sub_21F8D18(a3, v30, v7);
    goto LABEL_77;
  }

  if (v11 == 8)
  {
    if (v8 == 66)
    {
      *(a1 + 16) |= 0x40u;
      v12 = *(a1 + 72);
      if (!v12)
      {
        v37 = *(a1 + 8);
        v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
        if (v37)
        {
          v38 = *v38;
        }

        v12 = sub_157B6F8(v38);
        *(a1 + 72) = v12;
        goto LABEL_68;
      }

LABEL_69:
      v20 = sub_21F4E80(a3, v12, v7);
      goto LABEL_77;
    }
  }

  else if (v11 == 9 && v8 == 74)
  {
    *(a1 + 16) |= 0x80u;
    v12 = *(a1 + 80);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_157B6F8(v14);
      *(a1 + 80) = v12;
LABEL_68:
      v7 = *v42;
      goto LABEL_69;
    }

    goto LABEL_69;
  }

LABEL_70:
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
      v7 = *v42;
    }

    v20 = sub_1952690(v8, v41, v7, a3);
    goto LABEL_77;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_83:
  *v42 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v42;
}

char *sub_15D3B7C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 88);
  *v4 = 17;
  *(v4 + 1) = v7;
  v4 += 9;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 32);
  *v4 = 26;
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

  v4 = sub_16EE2C4(v8, v10, a3);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v11 = *(a1 + 40);
  *v4 = 34;
  v12 = *(v11 + 20);
  v4[1] = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, v4 + 1);
  }

  else
  {
    v13 = v4 + 2;
  }

  v4 = sub_15D2BF8(v11, v13, a3);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 48);
  *v4 = 42;
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

  v4 = sub_14D6440(v14, v16, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_33:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v17 = *(a1 + 56);
  *v4 = 50;
  v18 = *(v17 + 20);
  v4[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v4 + 1);
  }

  else
  {
    v19 = v4 + 2;
  }

  v4 = sub_15BAC90(v17, v19, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v20 = *(a1 + 64);
  *v4 = 58;
  v21 = *(v20 + 20);
  v4[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v4 + 1);
  }

  else
  {
    v22 = v4 + 2;
  }

  v4 = sub_16EBD38(v20, v22, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v23 = *(a1 + 72);
  *v4 = 66;
  v24 = *(v23 + 40);
  v4[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v4 + 1);
  }

  else
  {
    v25 = v4 + 2;
  }

  v4 = sub_1579704(v23, v25, a3);
  if ((v6 & 0x80) != 0)
  {
LABEL_51:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v26 = *(a1 + 80);
    *v4 = 74;
    v27 = *(v26 + 40);
    v4[1] = v27;
    if (v27 > 0x7F)
    {
      v28 = sub_19575D0(v27, v4 + 1);
    }

    else
    {
      v28 = v4 + 2;
    }

    v4 = sub_1579704(v26, v28, a3);
  }

LABEL_57:
  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v32)
  {
    v34 = v32;
    memcpy(v4, v33, v32);
    v4 += v34;
    return v4;
  }

  return sub_1957130(a3, v33, v32, v4);
}

uint64_t sub_15D3F68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_16EE474(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
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
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v11 = sub_15D2FD8(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_14D68A8(*(a1 + 48));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = sub_15BAE20(*(a1 + 56));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = sub_16EC25C(*(a1 + 64));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_26:
  v15 = sub_1579844(*(a1 + 72));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = sub_1579844(*(a1 + 80));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0x100) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v16 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    result += v17;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_15D418C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_70;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(a1 + 16) |= 2u;
  v8 = *(a1 + 32);
  if (!v8)
  {
    v9 = *(a1 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v8 = sub_16F5F38(v10);
    *(a1 + 32) = v8;
  }

  if (*(a2 + 32))
  {
    v11 = *(a2 + 32);
  }

  else
  {
    v11 = &off_277E980;
  }

  sub_121721C(v8, v11);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_20:
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

    sub_15D4C54(v14);
    *(a1 + 40) = v12;
  }

  if (*(a2 + 40))
  {
    v15 = *(a2 + 40);
  }

  else
  {
    v15 = &off_27795F8;
  }

  sub_15D31B4(v12, v15);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_36:
    *(a1 + 16) |= 0x10u;
    v20 = *(a1 + 56);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_15BAF80(v22);
      *(a1 + 56) = v20;
    }

    if (*(a2 + 56))
    {
      v23 = *(a2 + 56);
    }

    else
    {
      v23 = &off_2778B50;
    }

    sub_14B0C78(v20, v23);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_44;
  }

LABEL_28:
  *(a1 + 16) |= 8u;
  v16 = *(a1 + 48);
  if (!v16)
  {
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_14D6BF8(v18);
    *(a1 + 48) = v16;
  }

  if (*(a2 + 48))
  {
    v19 = *(a2 + 48);
  }

  else
  {
    v19 = &off_2774648;
  }

  sub_14D6A80(v16, v19);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_36;
  }

LABEL_7:
  if ((v4 & 0x20) != 0)
  {
LABEL_44:
    *(a1 + 16) |= 0x20u;
    v24 = *(a1 + 64);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5DB8(v26);
      *(a1 + 64) = v24;
    }

    if (*(a2 + 64))
    {
      v27 = *(a2 + 64);
    }

    else
    {
      v27 = &off_277E820;
    }

    sub_16EC8A0(v24, v27);
  }

LABEL_52:
  if ((v4 & 0x40) != 0)
  {
    *(a1 + 16) |= 0x40u;
    v28 = *(a1 + 72);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_157B6F8(v30);
      *(a1 + 72) = v28;
    }

    if (*(a2 + 72))
    {
      v31 = *(a2 + 72);
    }

    else
    {
      v31 = &off_2777780;
    }

    sub_15798EC(v28, v31);
  }

  if ((v4 & 0x80) != 0)
  {
    *(a1 + 16) |= 0x80u;
    v32 = *(a1 + 80);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_157B6F8(v34);
      *(a1 + 80) = v32;
    }

    if (*(a2 + 80))
    {
      v35 = *(a2 + 80);
    }

    else
    {
      v35 = &off_2777780;
    }

    sub_15798EC(v32, v35);
  }

LABEL_70:
  if ((v4 & 0x100) != 0)
  {
    v36 = *(a2 + 88);
    *(a1 + 16) |= 0x100u;
    *(a1 + 88) = v36;
  }

  v37 = *(a2 + 8);
  if (v37)
  {

    sub_1957EF4((a1 + 8), (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15D4468(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16EE510(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_15D3400(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_14D6BB8(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = sub_16ECE70(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_15D44EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F4578;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  return result;
}

uint64_t sub_15D4574(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F45F8;
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
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

double sub_15D462C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_15C1638(v2, a1, 0);
}

void *sub_15D468C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F46F8;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

double sub_15D4714(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F4778;
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
  *(v2 + 120) = 0;
  *(v2 + 128) = a1;
  *(v2 + 136) = &qword_278E990;
  *(v2 + 144) = &qword_278E990;
  result = 0.0;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0;
  return result;
}

void *sub_15D4804(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F47F8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_15D4888(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F4878;
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

uint64_t sub_15D492C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F48F8;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

void *sub_15D49B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F4978;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_15D4A5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F49F8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_15D4AE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F4A78;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_15D4B7C(uint64_t a1)
{
  if (!a1)
  {

    sub_15D7A78();
  }

  return sub_15CF448(v3, a1, 0);
}

uint64_t sub_15D4BD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F4B78;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_15D4C54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F4BF8;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  return result;
}

double sub_15D4CE8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F4C78;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  return result;
}

void *sub_15D4D78(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = &off_26F4CF8;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = a2;
  a1[8] = 0;
  a1[9] = a2;
  a1[10] = &qword_278E990;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_15D4DF8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_15D4E28(uint64_t a1)
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

  v5 = (a1 + 80);
  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 64);
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15D4EE0(uint64_t a1)
{
  sub_15D4E28(a1);

  operator delete();
}

unsigned __int8 *sub_15D4F18(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v3 & 0x1E) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
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

uint64_t sub_15D4FB0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v50 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v50, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    do
    {
      v8 = (*v50 + 1);
      v9 = **v50;
      if (**v50 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(*v50, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = (*v50 + 2);
        }
      }

      *v50 = v8;
      v13 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v13 == 1)
        {
          if (v9 == 10)
          {
            *(a1 + 40) |= 1u;
            v29 = *(a1 + 8);
            v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
            if (v29)
            {
              v30 = *v30;
            }

            v31 = sub_194DB04((a1 + 80), v30);
            v32 = sub_1958890(v31, *v50, a3);
LABEL_91:
            *v50 = v32;
            if (!v32)
            {
              goto LABEL_97;
            }

            continue;
          }

LABEL_82:
          if (v9)
          {
            v48 = (v9 & 7) == 4;
          }

          else
          {
            v48 = 1;
          }

          if (v48)
          {
            if (v8)
            {
              a3[10].i32[0] = v9 - 1;
              break;
            }

LABEL_97:
            *v50 = 0;
            break;
          }

          if ((v9 - 8008) >> 3 > 0x3E6)
          {
            if (*v7)
            {
              v49 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v49 = sub_11F1920((a1 + 8));
              v8 = *v50;
            }

            v32 = sub_1952690(v9, v49, v8, a3);
          }

          else
          {
            v32 = sub_19525AC((a1 + 16), v9, v8, &off_27796E0, (a1 + 8), a3);
          }

          goto LABEL_91;
        }

        if (v13 == 2)
        {
          if (v9 != 21)
          {
            goto LABEL_82;
          }

          v5 |= 2u;
          *(a1 + 88) = *v8;
          *v50 = v8 + 1;
        }

        else
        {
          if (v13 != 3 || v9 != 24)
          {
            goto LABEL_82;
          }

          v5 |= 4u;
          v19 = v8 + 1;
          LODWORD(v18) = *v8;
          if ((v18 & 0x80) != 0)
          {
            v20 = *v19;
            v18 = v18 + (v20 << 7) - 128;
            if (v20 < 0)
            {
              v46 = sub_19587DC(v8, v18);
              *v50 = v46;
              *(a1 + 92) = v47;
              if (!v46)
              {
                goto LABEL_97;
              }

              continue;
            }

            v19 = v8 + 2;
          }

          *v50 = v19;
          *(a1 + 92) = v18;
        }
      }

      else
      {
        if (v9 >> 3 > 5)
        {
          if (v13 == 6)
          {
            if (v9 == 48)
            {
              v36 = v8 - 1;
              while (1)
              {
                *v50 = v36 + 1;
                v37 = v36[1];
                if (v37 < 0)
                {
                  v38 = (v36[2] << 7) + v37;
                  LODWORD(v37) = v38 - 128;
                  if (v36[2] < 0)
                  {
                    v36 = sub_19587DC((v36 + 1), (v38 - 128));
                    LODWORD(v37) = v39;
                  }

                  else
                  {
                    v36 += 3;
                  }
                }

                else
                {
                  v36 += 2;
                }

                *v50 = v36;
                v40 = *(a1 + 48);
                if (v40 == *(a1 + 52))
                {
                  v41 = v40 + 1;
                  sub_1958E5C((a1 + 48), v40 + 1);
                  *(*(a1 + 56) + 4 * v40) = v37;
                  v36 = *v50;
                }

                else
                {
                  *(*(a1 + 56) + 4 * v40) = v37;
                  v41 = v40 + 1;
                }

                *(a1 + 48) = v41;
                if (!v36)
                {
                  goto LABEL_97;
                }

                if (*a3 <= v36 || *v36 != 48)
                {
                  goto LABEL_92;
                }
              }
            }

            if (v9 == 50)
            {
              v32 = sub_1958908((a1 + 48), v8, a3);
              goto LABEL_91;
            }

            goto LABEL_82;
          }

          if (v13 != 7)
          {
            goto LABEL_82;
          }

          if (v9 != 56)
          {
            if (v9 == 58)
            {
              *&v51 = a1 + 64;
              *(&v51 + 1) = sub_1578F74;
              v52 = a1 + 8;
              v53 = 7;
              v32 = sub_1216588(a3, v8, &v51);
              goto LABEL_91;
            }

            goto LABEL_82;
          }

          v21 = v8 - 1;
LABEL_32:
          *v50 = v21 + 1;
          v22 = *(v21 + 1);
          v23 = (v21 + 2);
          if (v22 < 0)
          {
            v24 = *v23;
            v25 = (v24 << 7) + v22;
            LODWORD(v22) = v25 - 128;
            if ((v24 & 0x80000000) == 0)
            {
              v23 = (v21 + 3);
              goto LABEL_35;
            }

            *v50 = sub_19587DC(v21 + 1, (v25 - 128));
            if (!*v50)
            {
              goto LABEL_97;
            }

            LODWORD(v22) = v28;
          }

          else
          {
LABEL_35:
            *v50 = v23;
          }

          if (sub_1578F74(v22))
          {
            v26 = *(a1 + 64);
            if (v26 == *(a1 + 68))
            {
              v27 = v26 + 1;
              sub_1958E5C((a1 + 64), v26 + 1);
              *(*(a1 + 72) + 4 * v26) = v22;
            }

            else
            {
              *(*(a1 + 72) + 4 * v26) = v22;
              v27 = v26 + 1;
            }

            *(a1 + 64) = v27;
          }

          else
          {
            sub_13137F8();
          }

          v21 = *v50;
          if (*a3 <= *v50 || **v50 != 56)
          {
            continue;
          }

          goto LABEL_32;
        }

        if (v13 == 4)
        {
          if (v9 != 32)
          {
            goto LABEL_82;
          }

          v5 |= 8u;
          v34 = v8 + 1;
          LODWORD(v33) = *v8;
          if ((v33 & 0x80) != 0)
          {
            v35 = *v34;
            v33 = v33 + (v35 << 7) - 128;
            if (v35 < 0)
            {
              v42 = sub_19587DC(v8, v33);
              *v50 = v42;
              *(a1 + 96) = v43;
              if (!v42)
              {
                goto LABEL_97;
              }

              continue;
            }

            v34 = v8 + 2;
          }

          *v50 = v34;
          *(a1 + 96) = v33;
        }

        else
        {
          if (v13 != 5 || v9 != 40)
          {
            goto LABEL_82;
          }

          v5 |= 0x10u;
          v15 = v8 + 1;
          LODWORD(v14) = *v8;
          if ((v14 & 0x80) != 0)
          {
            v16 = *v15;
            v14 = v14 + (v16 << 7) - 128;
            if (v16 < 0)
            {
              v44 = sub_19587DC(v8, v14);
              *v50 = v44;
              *(a1 + 100) = v45;
              if (!v44)
              {
                goto LABEL_97;
              }

              continue;
            }

            v15 = v8 + 2;
          }

          *v50 = v15;
          *(a1 + 100) = v14;
        }
      }

LABEL_92:
      ;
    }

    while ((sub_195ADC0(a3, v50, a3[11].i32[1]) & 1) == 0);
  }

  *(a1 + 40) |= v5;
  return *v50;
}

char *sub_15D54C0(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 88);
    *v4 = 21;
    *(v4 + 1) = v8;
    v4 += 5;
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, a2);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
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

  v9 = *(a1 + 92);
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
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 96);
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
        LOBYTE(v16) = v7[2];
        do
        {
          *(v13 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v13++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
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

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v19 = *(a1 + 100);
    *v13 = 40;
    v13[1] = v19;
    if (v19 > 0x7F)
    {
      v13[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v13[2] = v19 >> 7;
      v18 = v13 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v13) = v13[2];
        do
        {
          *(v18 - 1) = v13 | 0x80;
          v13 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v13 + 2;
    }
  }

  else
  {
    v18 = v13;
  }

  v22 = *(a1 + 48);
  if (v22 < 1)
  {
    v25 = v18;
  }

  else
  {
    for (i = 0; i != v22; ++i)
    {
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v24 = *(*(a1 + 56) + 4 * i);
      *v18 = 48;
      v18[1] = v24;
      if (v24 > 0x7F)
      {
        v18[1] = v24 | 0x80;
        v26 = v24 >> 7;
        v18[2] = v24 >> 7;
        v25 = v18 + 3;
        if (v24 >= 0x4000)
        {
          LOBYTE(v18) = v18[2];
          do
          {
            *(v25 - 1) = v18 | 0x80;
            v18 = (v26 >> 7);
            *v25++ = v26 >> 7;
            v27 = v26 >> 14;
            v26 >>= 7;
          }

          while (v27);
        }
      }

      else
      {
        v25 = v18 + 2;
      }

      v18 = v25;
    }
  }

  v28 = *(a1 + 64);
  if (v28 < 1)
  {
    v31 = v25;
  }

  else
  {
    for (j = 0; j != v28; ++j)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v30 = *(*(a1 + 72) + 4 * j);
      *v25 = 56;
      v25[1] = v30;
      if (v30 > 0x7F)
      {
        v25[1] = v30 | 0x80;
        v32 = v30 >> 7;
        v25[2] = v30 >> 7;
        v31 = v25 + 3;
        if (v30 >= 0x4000)
        {
          LOBYTE(v33) = v25[2];
          do
          {
            *(v31 - 1) = v33 | 0x80;
            v33 = v32 >> 7;
            *v31++ = v32 >> 7;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
        }
      }

      else
      {
        v31 = v25 + 2;
      }

      v25 = v31;
    }
  }

  if (*(a1 + 26))
  {
    v31 = sub_1953428(a1 + 16, 1001, 2000, v31, a3);
  }

  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v31;
  }

  v37 = v35 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = *(v37 + 31);
  if (v38 < 0)
  {
    v39 = *(v37 + 8);
    v38 = *(v37 + 16);
  }

  else
  {
    v39 = (v37 + 8);
  }

  if (*a3 - v31 >= v38)
  {
    v40 = v38;
    memcpy(v31, v39, v38);
    v31 += v40;
    return v31;
  }

  return sub_1957130(a3, v39, v38, v31);
}

uint64_t sub_15D58D4(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959E04((a1 + 48));
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 72) + 4 * v5);
      if (v7 < 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      }

      v6 += v8;
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  result = v3 + v2 + *(a1 + 48) + v4 + v6;
  v10 = *(a1 + 40);
  if ((v10 & 0x1F) == 0)
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v11 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v10 & 2) != 0)
  {
    result += 5;
  }

  if ((v10 & 4) != 0)
  {
    v18 = *(a1 + 92);
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v18 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 11;
    }

    result += v20;
    if ((v10 & 8) == 0)
    {
LABEL_18:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_18;
  }

  v21 = *(a1 + 96);
  v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v21 >= 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 11;
  }

  result += v23;
  if ((v10 & 0x10) != 0)
  {
LABEL_19:
    v14 = *(a1 + 100);
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v14 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 11;
    }

    result += v16;
  }

LABEL_23:
  v17 = *(a1 + 8);
  if (v17)
  {
    v24 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    result += v25;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_15D5A9C(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v9 + v8);
    v10 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v10 + 4 * v9), *(a2 + 72), 4 * *(a2 + 64));
  }

  v11 = *(a2 + 40);
  if ((v11 & 0x1F) != 0)
  {
    if (v11)
    {
      v13 = *(a2 + 80);
      *(a1 + 40) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_194EA1C((a1 + 80), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v11 & 2) == 0)
      {
LABEL_8:
        if ((v11 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 88) = *(a2 + 88);
    if ((v11 & 4) == 0)
    {
LABEL_9:
      if ((v11 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 92) = *(a2 + 92);
    if ((v11 & 8) == 0)
    {
LABEL_10:
      if ((v11 & 0x10) == 0)
      {
LABEL_12:
        *(a1 + 40) |= v11;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 100) = *(a2 + 100);
      goto LABEL_12;
    }

LABEL_22:
    *(a1 + 96) = *(a2 + 96);
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  sub_225EA0C(a1 + 16, a2 + 16);
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_15D5C38(uint64_t a1)
{
  if (!a1)
  {

    sub_15D7AE4();
  }

  return sub_15D4D78(v3, a1, 0);
}

void sub_15D69D8(void *a1)
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
          sub_15B6FF0(*v3);
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

std::string *sub_15D6A5C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15BA5D4(v9);
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
      result = sub_15D6AD8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15D6AE8(void *a1)
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
          sub_15BB008();
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

uint64_t *sub_15D6B6C(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15BBB14(v9);
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
      result = sub_15D6BE8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15D6BF8(void *a1)
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
          sub_15BC038(*v3);
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

void sub_15D6C7C(void *a1)
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
          sub_15BC674(*v3);
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

std::string *sub_15D6D00(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15BE238(v9);
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
      result = sub_13121F8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_15D6D7C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15BE2BC(v9);
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
      result = sub_15D6DF8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15D6E08(void *a1)
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
          sub_15C00BC(*v3);
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

void sub_15D6E8C(void *a1)
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
          sub_16D5138();
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

void sub_15D6F10(void *a1)
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
          sub_15BF504(*v3);
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

void sub_15D6F94(void *a1)
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
          sub_15CCE90(*v3);
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

void sub_15D7018(void *a1)
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
          sub_15CE184(*v3);
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

void sub_15D709C(void *a1)
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
          sub_15CE850(*v3);
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

void sub_15D7120(void *a1)
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
          sub_15CD8CC(*v3);
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

void sub_15D71A4(void *a1)
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
          sub_1672750();
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

void sub_15D7228(void *a1)
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
          sub_15CA798(*v3);
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

void sub_15D72AC(void *a1)
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
          sub_15CF550();
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

void sub_15D7330(void *a1)
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
          sub_15CED10(*v3);
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

void sub_15D73B4(void *a1)
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
          sub_157D478(*v3);
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

std::string *sub_15D7438(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15D44EC(v9);
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
      result = sub_156BD3C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_15D74B4(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16D5AB8(v9);
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
      result = sub_15D7530(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_15D7540(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15BFFB0(v9);
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
      result = sub_13120E8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_15D75BC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15D4804(v9);
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
      result = sub_13120E8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_15D7638(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15D49B8(v9);
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
      result = sub_15D76B4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_15D76C4(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15D4A5C(v9);
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

uint64_t *sub_15D7740(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15D492C(v9);
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
      result = sub_15D77BC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15D77CC(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_167CE88(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_15D7848(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_15D7858(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      sub_15D4714(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_15D78D4(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_15D78E4(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      result = sub_15D4B7C(v9);
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
      result = sub_15D7960(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15D7970(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_15D4AE0(v9);
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
      sub_15D79EC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_15D79FC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_157D9B8(v9);
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

void sub_15D7C7C()
{

  operator new();
}

void sub_15D7D54()
{
  dword_278D940 = 1201;
  qword_278D948 = &off_2776BC0;
  sub_194F72C(&off_27868A0, 1201, 11, 1, 0, &off_2776BC0);
  dword_278D950 = 1202;
  qword_278D958 = &off_277C7C0;
  sub_194F72C(&off_27868A0, 1202, 11, 0, 0, &off_277C7C0);
  dword_278D960 = 1001;
  byte_278D964 = 0;
  sub_194EE44(&off_27796E0, 1001, 8, 0, 0);
  dword_278D968 = 1002;
  byte_278D96C = 0;
  sub_194EE44(&off_27796E0, 1002, 8, 0, 0);
  dword_278D970 = 1003;
  byte_278D974 = 0;
  sub_194EE44(&off_27796E0, 1003, 8, 0, 0);
  dword_278D978 = 1101;
  qword_278D980 = &unk_233B4A0;
  sub_194EE44(&off_27796E0, 1101, 9, 0, 0);
  dword_278D988 = 1201;
  qword_278D990 = 0;
  sub_194EE44(&off_27796E0, 1201, 3, 0, 0);
  dword_278D998 = 1301;
  qword_278D9A0 = 0;
  sub_194EE44(&off_27796E0, 1301, 1, 0, 0);
  dword_278D9A8 = 1302;
  qword_278D9B0 = 0;
  sub_194EE44(&off_27796E0, 1302, 1, 0, 0);
  qword_278D9B8 = 1303;
  sub_194EE44(&off_27796E0, 1303, 5, 0, 0);
  dword_278D9C0 = 1401;
  byte_278D9C4 = 0;
  sub_194EE44(&off_27796E0, 1401, 8, 0, 0);
  dword_278D9C8 = 1402;
  byte_278D9CC = 0;
  sub_194EE44(&off_27796E0, 1402, 8, 0, 0);
  dword_278D9D0 = 1403;
  byte_278D9D4 = 0;

  sub_194EE44(&off_27796E0, 1403, 8, 0, 0);
}

uint64_t sub_15D7FD8()
{
  qword_27CCB20 = "INDEX_QUERY_ANDINDEX_QUERY_NEGATIVE_TERMINDEX_QUERY_NOTINDEX_QUERY_ORINDEX_QUERY_TERM";
  *algn_27CCB28 = 15;
  dword_27CCB30 = 0;
  qword_27CCB38 = "INDEX_QUERY_NEGATIVE_TERMINDEX_QUERY_NOTINDEX_QUERY_ORINDEX_QUERY_TERM";
  unk_27CCB40 = 25;
  dword_27CCB48 = 3;
  qword_27CCB50 = "INDEX_QUERY_NOTINDEX_QUERY_ORINDEX_QUERY_TERM";
  unk_27CCB58 = 15;
  dword_27CCB60 = 4;
  qword_27CCB68 = "INDEX_QUERY_ORINDEX_QUERY_TERM";
  unk_27CCB70 = 14;
  dword_27CCB78 = 1;
  qword_27CCB80 = "INDEX_QUERY_TERM";
  unk_27CCB88 = 16;
  dword_27CCB90 = 2;
  qword_27CCB98 = "ALLOWED_XXXFIX_ANYALLOWED_XXXFIX_EMPTYALLOWED_XXXFIX_ILLEGALALLOWED_XXXFIX_NON_EMPTY";
  unk_27CCBA0 = 18;
  dword_27CCBA8 = 1;
  qword_27CCBB0 = "ALLOWED_XXXFIX_EMPTYALLOWED_XXXFIX_ILLEGALALLOWED_XXXFIX_NON_EMPTY";
  unk_27CCBB8 = 20;
  dword_27CCBC0 = 0;
  qword_27CCBC8 = "ALLOWED_XXXFIX_ILLEGALALLOWED_XXXFIX_NON_EMPTY";
  unk_27CCBD0 = 22;
  dword_27CCBD8 = 3;
  qword_27CCBE0 = "ALLOWED_XXXFIX_NON_EMPTY";
  unk_27CCBE8 = 24;
  dword_27CCBF0 = 2;
  qword_27CCBF8 = "DAY_USED_FOR_OPEN_AT_FILTERING_NADAY_USED_FOR_OPEN_AT_FILTERING_TODAYDAY_USED_FOR_OPEN_AT_FILTERING_TOMORROW";
  unk_27CCC00 = 33;
  dword_27CCC08 = 0;
  qword_27CCC10 = "DAY_USED_FOR_OPEN_AT_FILTERING_TODAYDAY_USED_FOR_OPEN_AT_FILTERING_TOMORROW";
  unk_27CCC18 = 36;
  dword_27CCC20 = 1;
  qword_27CCC28 = "DAY_USED_FOR_OPEN_AT_FILTERING_TOMORROW";
  unk_27CCC30 = 39;
  dword_27CCC38 = 2;
  qword_27CCC40 = "CUT_OFF_FIVECUT_OFF_NONECUT_OFF_TOP_FLOOR";
  *algn_27CCC48 = 12;
  dword_27CCC50 = 2;
  qword_27CCC58 = "CUT_OFF_NONECUT_OFF_TOP_FLOOR";
  unk_27CCC60 = 12;
  dword_27CCC68 = 1;
  qword_27CCC70 = "CUT_OFF_TOP_FLOOR";
  unk_27CCC78 = 17;
  dword_27CCC80 = 0;
  qword_27CCC88 = "GEO_INTERPRETATION_GEOGEO_INTERPRETATION_GLOBALGEO_INTERPRETATION_NONEGEO_INTERPRETATION_VIEWPORT";
  unk_27CCC90 = 22;
  dword_27CCC98 = 2;
  qword_27CCCA0 = "GEO_INTERPRETATION_GLOBALGEO_INTERPRETATION_NONEGEO_INTERPRETATION_VIEWPORT";
  unk_27CCCA8 = 25;
  dword_27CCCB0 = 3;
  qword_27CCCB8 = "GEO_INTERPRETATION_NONEGEO_INTERPRETATION_VIEWPORT";
  unk_27CCCC0 = 23;
  dword_27CCCC8 = 0;
  qword_27CCCD0 = "GEO_INTERPRETATION_VIEWPORT";
  unk_27CCCD8 = 27;
  dword_27CCCE0 = 1;
  qword_27CCCE8 = "GEO_EXTENSION_MINGEO_EXTENSION_NONEGEO_EXTENSION_SECOND";
  unk_27CCCF0 = 17;
  dword_27CCCF8 = 1;
  qword_27CCD00 = "GEO_EXTENSION_NONEGEO_EXTENSION_SECOND";
  unk_27CCD08 = 18;
  dword_27CCD10 = 0;
  qword_27CCD18 = "GEO_EXTENSION_SECOND";
  unk_27CCD20 = 20;
  dword_27CCD28 = 2;
  qword_27CCD30 = "CATEGORY_INTERPRETATION_CLASSIFIERCATEGORY_INTERPRETATION_FILTERCATEGORY_INTERPRETATION_NONE";
  *algn_27CCD38 = 34;
  dword_27CCD40 = 2;
  qword_27CCD48 = "CATEGORY_INTERPRETATION_FILTERCATEGORY_INTERPRETATION_NONE";
  unk_27CCD50 = 30;
  dword_27CCD58 = 1;
  qword_27CCD60 = "CATEGORY_INTERPRETATION_NONE";
  unk_27CCD68 = 28;
  dword_27CCD70 = 0;
  qword_27CCD78 = "PROPERTY_INTERPRETATION_CLASSIFIERPROPERTY_INTERPRETATION_FILTERPROPERTY_INTERPRETATION_NONE";
  unk_27CCD80 = 34;
  dword_27CCD88 = 2;
  qword_27CCD90 = "PROPERTY_INTERPRETATION_FILTERPROPERTY_INTERPRETATION_NONE";
  unk_27CCD98 = 30;
  dword_27CCDA0 = 1;
  qword_27CCDA8 = "PROPERTY_INTERPRETATION_NONE";
  unk_27CCDB0 = 28;
  dword_27CCDB8 = 0;
  qword_27CCDC0 = "ADDRESS_INTERPRETATION_ADDRESSADDRESS_INTERPRETATION_NONE";
  *algn_27CCDC8 = 30;
  dword_27CCDD0 = 1;
  qword_27CCDD8 = "ADDRESS_INTERPRETATION_NONE";
  unk_27CCDE0 = 27;
  dword_27CCDE8 = 0;
  qword_27CCDF0 = "CHAIN_INTERPRETATION_CHAINCHAIN_INTERPRETATION_NONE";
  *algn_27CCDF8 = 26;
  dword_27CCE00 = 1;
  qword_27CCE08 = "CHAIN_INTERPRETATION_NONE";
  unk_27CCE10 = 25;
  dword_27CCE18 = 0;
  qword_27CCE20 = "EXACT_INTERPRETATION_FULL_NAME_MATCHEXACT_INTERPRETATION_NONEEXACT_INTERPRETATION_PASSTHROUGH";
  *algn_27CCE28 = 36;
  dword_27CCE30 = 2;
  qword_27CCE38 = "EXACT_INTERPRETATION_NONEEXACT_INTERPRETATION_PASSTHROUGH";
  unk_27CCE40 = 25;
  dword_27CCE48 = 0;
  qword_27CCE50 = "EXACT_INTERPRETATION_PASSTHROUGH";
  unk_27CCE58 = 32;
  dword_27CCE60 = 1;
  qword_27CCE68 = "VOC_INTERPRETATION_NONEVOC_INTERPRETATION_PHRASE";
  unk_27CCE70 = 23;
  dword_27CCE78 = 0;
  qword_27CCE80 = "VOC_INTERPRETATION_PHRASE";
  unk_27CCE88 = 25;
  dword_27CCE90 = 1;
  qword_27CCE98 = "REWRITE_GEOREWRITE_POIREWRITE_REV";
  unk_27CCEA0 = 11;
  dword_27CCEA8 = 1;
  qword_27CCEB0 = "REWRITE_POIREWRITE_REV";
  unk_27CCEB8 = 11;
  dword_27CCEC0 = 0;
  qword_27CCEC8 = "REWRITE_REV";
  unk_27CCED0 = 11;
  dword_27CCED8 = 2;
  qword_27CCEE0 = "SESSION_ENTITY_TYPE_ATTRIBUTESESSION_ENTITY_TYPE_BRANDSESSION_ENTITY_TYPE_CATEGORYSESSION_ENTITY_TYPE_QUERYSESSION_ENTITY_TYPE_UNKNOWN";
  *algn_27CCEE8 = 29;
  dword_27CCEF0 = 3;
  qword_27CCEF8 = "SESSION_ENTITY_TYPE_BRANDSESSION_ENTITY_TYPE_CATEGORYSESSION_ENTITY_TYPE_QUERYSESSION_ENTITY_TYPE_UNKNOWN";
  unk_27CCF00 = 25;
  dword_27CCF08 = 2;
  qword_27CCF10 = "SESSION_ENTITY_TYPE_CATEGORYSESSION_ENTITY_TYPE_QUERYSESSION_ENTITY_TYPE_UNKNOWN";
  unk_27CCF18 = 28;
  dword_27CCF20 = 1;
  qword_27CCF28 = "SESSION_ENTITY_TYPE_QUERYSESSION_ENTITY_TYPE_UNKNOWN";
  unk_27CCF30 = 25;
  dword_27CCF38 = 4;
  qword_27CCF40 = "SESSION_ENTITY_TYPE_UNKNOWN";
  unk_27CCF48 = 27;
  dword_27CCF50 = 0;
  qword_27CCF58 = "METADATA_SOURCE_ACMETADATA_SOURCE_BROWSE_SUGGESTIONMETADATA_SOURCE_BROWSE_SUGGESTION_CARPLAYMETADATA_SOURCE_BROWSE_SUGGESTION_NAVMETADATA_SOURCE_NONEMETADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCF60 = 18;
  dword_27CCF68 = 1;
  qword_27CCF70 = "METADATA_SOURCE_BROWSE_SUGGESTIONMETADATA_SOURCE_BROWSE_SUGGESTION_CARPLAYMETADATA_SOURCE_BROWSE_SUGGESTION_NAVMETADATA_SOURCE_NONEMETADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCF78 = 33;
  dword_27CCF80 = 3;
  qword_27CCF88 = "METADATA_SOURCE_BROWSE_SUGGESTION_CARPLAYMETADATA_SOURCE_BROWSE_SUGGESTION_NAVMETADATA_SOURCE_NONEMETADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCF90 = 41;
  dword_27CCF98 = 4;
  qword_27CCFA0 = "METADATA_SOURCE_BROWSE_SUGGESTION_NAVMETADATA_SOURCE_NONEMETADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCFA8 = 37;
  dword_27CCFB0 = 5;
  qword_27CCFB8 = "METADATA_SOURCE_NONEMETADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCFC0 = 20;
  dword_27CCFC8 = 0;
  qword_27CCFD0 = "METADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCFD8 = 41;
  dword_27CCFE0 = 6;
  qword_27CCFE8 = "METADATA_SOURCE_ZKW";
  unk_27CCFF0 = 19;
  dword_27CCFF8 = 2;
  qword_27CD000 = "METADATA_TYPE_CATEGORYMETADATA_TYPE_CHAINMETADATA_TYPE_GEOMETADATA_TYPE_NONEMETADATA_TYPE_POIMETADATA_TYPE_REWRITE";
  *algn_27CD008 = 22;
  dword_27CD010 = 1;
  qword_27CD018 = "METADATA_TYPE_CHAINMETADATA_TYPE_GEOMETADATA_TYPE_NONEMETADATA_TYPE_POIMETADATA_TYPE_REWRITE";
  unk_27CD020 = 19;
  dword_27CD028 = 2;
  qword_27CD030 = "METADATA_TYPE_GEOMETADATA_TYPE_NONEMETADATA_TYPE_POIMETADATA_TYPE_REWRITE";
  unk_27CD038 = 17;
  dword_27CD040 = 4;
  qword_27CD048 = "METADATA_TYPE_NONEMETADATA_TYPE_POIMETADATA_TYPE_REWRITE";
  unk_27CD050 = 18;
  dword_27CD058 = 0;
  qword_27CD060 = "METADATA_TYPE_POIMETADATA_TYPE_REWRITE";
  unk_27CD068 = 17;
  dword_27CD070 = 3;
  qword_27CD078 = "METADATA_TYPE_REWRITE";
  unk_27CD080 = 21;
  dword_27CD088 = 5;
  qword_27CD090 = "DELTAFULL";
  *algn_27CD098 = 5;
  dword_27CD0A0 = 1;
  qword_27CD0A8 = "FULL";
  unk_27CD0B0 = 4;
  dword_27CD0B8 = 0;
  qword_27CD0C0 = "DOWNLOADINGFINISHEDFINISHED_ERRORINGESTINGINITIALIZED";
  *algn_27CD0C8 = 11;
  dword_27CD0D0 = 4;
  result = 8;
  qword_27CD0D8 = "FINISHEDFINISHED_ERRORINGESTINGINITIALIZED";
  unk_27CD0E0 = 8;
  dword_27CD0E8 = 0;
  qword_27CD0F0 = "FINISHED_ERRORINGESTINGINITIALIZED";
  unk_27CD0F8 = 14;
  dword_27CD100 = 1;
  qword_27CD108 = "INGESTINGINITIALIZED";
  unk_27CD110 = 9;
  dword_27CD118 = 3;
  qword_27CD120 = "INITIALIZED";
  unk_27CD128 = 11;
  dword_27CD130 = 2;
  qword_27CD138 = "PLACE_RESPONSE_DATA_ORIGIN_FROM_BUSINESS_LOGICPLACE_RESPONSE_DATA_ORIGIN_FROM_RESPONSE_CACHEPLACE_RESPONSE_DATA_ORIGIN_UNKNOWN";
  unk_27CD140 = 46;
  dword_27CD148 = 1;
  qword_27CD150 = "PLACE_RESPONSE_DATA_ORIGIN_FROM_RESPONSE_CACHEPLACE_RESPONSE_DATA_ORIGIN_UNKNOWN";
  unk_27CD158 = 46;
  dword_27CD160 = 2;
  qword_27CD168 = "PLACE_RESPONSE_DATA_ORIGIN_UNKNOWN";
  unk_27CD170 = 34;
  dword_27CD178 = 0;
  qword_27CD180 = "ALLATTRIBUTEBRANDCATEGORYKEYWORD";
  *algn_27CD188 = 3;
  dword_27CD190 = 0;
  qword_27CD198 = "ATTRIBUTEBRANDCATEGORYKEYWORD";
  unk_27CD1A0 = 9;
  dword_27CD1A8 = 3;
  qword_27CD1B0 = "BRANDCATEGORYKEYWORD";
  unk_27CD1B8 = 5;
  dword_27CD1C0 = 2;
  qword_27CD1C8 = "CATEGORYKEYWORD";
  unk_27CD1D0 = 8;
  dword_27CD1D8 = 1;
  qword_27CD1E0 = "KEYWORD";
  unk_27CD1E8 = 7;
  dword_27CD1F0 = 4;
  return result;
}

uint64_t *sub_15D84D0(int a1)
{
  if ((atomic_load_explicit(&qword_27CD2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CD2F0))
  {
    byte_27CD2E8 = sub_1956BB4(&qword_27CD270, dword_233B560, 5, byte_27CD2F8);
    __cxa_guard_release(&qword_27CD2F0);
  }

  v2 = sub_1956B30(&qword_27CD270, dword_233B560, 5uLL, a1);
  if (v2 != -1)
  {
    return &byte_27CD2F8[24 * v2];
  }

  if ((atomic_load_explicit(byte_278E9A8, memory_order_acquire) & 1) == 0)
  {
    sub_1956C4C();
  }

  return &qword_278E990;
}

uint64_t *sub_15D85B8(int a1)
{
  if ((atomic_load_explicit(&qword_27CD4B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CD4B0))
  {
    byte_27CD4A8 = sub_1956BB4(&qword_27CD370, "\n", 13, byte_27CD4B8);
    __cxa_guard_release(&qword_27CD4B0);
  }

  v2 = sub_1956B30(&qword_27CD370, "\n", 0xDuLL, a1);
  if (v2 != -1)
  {
    return &byte_27CD4B8[24 * v2];
  }

  if ((atomic_load_explicit(byte_278E9A8, memory_order_acquire) & 1) == 0)
  {
    sub_1956C4C();
  }

  return &qword_278E990;
}

uint64_t sub_15D86AC(int a1)
{
  result = 1;
  if (a1 <= 547)
  {
    if (a1 <= 269)
    {
      if (a1 <= 131)
      {
        if (a1 <= 0x3C && ((1 << a1) & 0x101D101100001101) != 0)
        {
          return result;
        }

        v6 = a1 - 64;
        if (v6 <= 0x3C)
        {
          v4 = 1 << v6;
          v5 = 0x1010110104100111;
          goto LABEL_28;
        }

        return 0;
      }

      if ((a1 - 132) <= 0x3C && ((1 << (a1 + 124)) & 0x1900044001101011) != 0)
      {
        return result;
      }

      v8 = a1 - 203;
      if (v8 > 0x3B)
      {
        return 0;
      }

      v4 = 1 << v8;
      v5 = 0x800008828080821;
    }

    else
    {
      if (a1 > 403)
      {
        if ((a1 - 404) <= 0x3A && ((1 << (a1 + 108)) & 0x444040044446451) != 0)
        {
          return result;
        }

        v3 = a1 - 478;
        if (v3 <= 0x37)
        {
          v4 = 1 << v3;
          v5 = 0xC0404404140045;
          goto LABEL_28;
        }

        return 0;
      }

      if ((a1 - 340) <= 0x3C && ((1 << (a1 - 84)) & 0x1411001011111111) != 0)
      {
        return result;
      }

      v9 = a1 - 270;
      if (v9 > 0x3E)
      {
        return 0;
      }

      v4 = 1 << v9;
      v5 = 0x4444000000400001;
    }

LABEL_28:
    if ((v4 & v5) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 779)
  {
    if (a1 > 701)
    {
      if ((a1 - 702) <= 0x3E && ((1 << (a1 + 66)) & 0x4444400004000115) != 0 || a1 == 776)
      {
        return result;
      }
    }

    else
    {
      if ((a1 - 548) <= 0x3C && ((1 << (a1 - 36)) & 0x1114044040040441) != 0)
      {
        return result;
      }

      v7 = a1 - 634;
      if (v7 <= 0x3C)
      {
        v4 = 1 << v7;
        v5 = 0x1101100000101201;
        goto LABEL_28;
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 858:
    case 860:
    case 882:
    case 886:
    case 901:
    case 931:
    case 932:
    case 934:
    case 936:
    case 937:
    case 938:
    case 940:
    case 941:
    case 943:
    case 944:
    case 946:
    case 947:
    case 948:
    case 949:
    case 950:
    case 951:
    case 952:
    case 953:
    case 955:
    case 956:
    case 957:
    case 958:
    case 959:
    case 960:
    case 961:
    case 962:
    case 963:
    case 964:
    case 965:
    case 967:
    case 968:
    case 969:
    case 970:
    case 971:
    case 972:
    case 973:
    case 974:
    case 975:
    case 976:
    case 977:
    case 978:
    case 979:
    case 980:
    case 981:
    case 984:
    case 985:
    case 986:
      return result;
    case 859:
    case 861:
    case 862:
    case 863:
    case 864:
    case 865:
    case 866:
    case 867:
    case 868:
    case 869:
    case 870:
    case 871:
    case 872:
    case 873:
    case 874:
    case 875:
    case 876:
    case 877:
    case 878:
    case 879:
    case 880:
    case 881:
    case 883:
    case 884:
    case 885:
    case 887:
    case 888:
    case 889:
    case 890:
    case 891:
    case 892:
    case 893:
    case 894:
    case 895:
    case 896:
    case 897:
    case 898:
    case 899:
    case 900:
    case 902:
    case 903:
    case 904:
    case 905:
    case 906:
    case 907:
    case 908:
    case 909:
    case 910:
    case 911:
    case 912:
    case 913:
    case 914:
    case 915:
    case 916:
    case 917:
    case 918:
    case 919:
    case 920:
    case 921:
    case 922:
    case 923:
    case 924:
    case 925:
    case 926:
    case 927:
    case 928:
    case 929:
    case 930:
    case 933:
    case 935:
    case 939:
    case 942:
    case 945:
    case 954:
    case 966:
    case 982:
    case 983:
      return 0;
    default:
      if ((a1 - 780) > 0x3C || ((1 << (a1 - 12)) & 0x1040404008100111) == 0)
      {
        v10 = a1 - 990;
        if (v10 > 9 || ((1 << v10) & 0x291) == 0)
        {
          return 0;
        }
      }

      break;
  }

  return result;
}

uint64_t sub_15D8B44(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F5060;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 60) = 1;
  return result;
}

uint64_t sub_15D8B90(uint64_t a1)
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
  sub_15EEEE4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15D8C3C(uint64_t a1)
{
  sub_15D8B90(a1);

  operator delete();
}

uint64_t sub_15D8C74(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15D9850(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 60) = 1;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_15D8D38(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v36, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v36 + 1);
    v8 = **v36;
    if (**v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v36 + 2);
      }
    }

    *v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            *v36 = v13 + 1;
            v15 = *(a1 + 40);
            if (v15 && (v16 = *(a1 + 32), v16 < *v15))
            {
              *(a1 + 32) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = sub_15E0CD4(*(a1 + 24));
              v17 = sub_19593CC(a1 + 24, v18);
              v14 = *v36;
            }

            v13 = sub_22272C4(a3, v17, v14);
            *v36 = v13;
            if (!v13)
            {
              goto LABEL_59;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_49;
            }
          }
        }

        goto LABEL_41;
      }

      if (v8 != 10)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v25 = sub_194DB04((a1 + 48), v24);
      v26 = sub_1958890(v25, *v36, a3);
LABEL_48:
      *v36 = v26;
      if (!v26)
      {
        goto LABEL_59;
      }

      goto LABEL_49;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 2u;
    v28 = v7 + 1;
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_40:
      *v36 = v28;
      *(a1 + 56) = v27 != 0;
      goto LABEL_49;
    }

    v34 = sub_19587DC(v7, v27);
    *v36 = v34;
    *(a1 + 56) = v35 != 0;
    if (!v34)
    {
      goto LABEL_59;
    }

LABEL_49:
    if (sub_195ADC0(a3, v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 32)
  {
    v19 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v19;
    v22 = (v21 << 7) + v20;
    LODWORD(v20) = v22 - 128;
    if (v21 < 0)
    {
      *v36 = sub_19587DC(v7, (v22 - 128));
      if (!*v36)
      {
        goto LABEL_59;
      }

      LODWORD(v20) = v33;
    }

    else
    {
      v19 = v7 + 2;
LABEL_29:
      *v36 = v19;
    }

    if (sub_12AE1F4(v20))
    {
      *(a1 + 16) |= 4u;
      *(a1 + 60) = v20;
    }

    else
    {
      sub_12E8500();
    }

    goto LABEL_49;
  }

LABEL_41:
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
      v7 = *v36;
    }

    v26 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_59:
  *v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v36;
}

char *sub_15D903C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v10 = *(v9 + 20);
      v4[1] = v10;
      if (v10 > 0x7F)
      {
        v11 = sub_19575D0(v10, v4 + 1);
      }

      else
      {
        v11 = v4 + 2;
      }

      v4 = sub_15D9AEC(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 56);
    *v4 = 24;
    v4[1] = v12;
    v4 += 2;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v14 = *(a1 + 60);
    *v4 = 32;
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v4[2] = v14 >> 7;
      v13 = v4 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v16) = v4[2];
        do
        {
          *(v13 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v13++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v13 = v4 + 2;
    }
  }

  else
  {
    v13 = v4;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v13;
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

  if (*a3 - v13 >= v21)
  {
    v23 = v21;
    memcpy(v13, v22, v21);
    v13 += v23;
    return v13;
  }

  return sub_1957130(a3, v22, v21, v13);
}

uint64_t sub_15D925C(uint64_t a1)
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
      v7 = sub_15D9C94(v6);
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
  if ((v8 & 7) != 0)
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

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8 & 2;
    if ((v8 & 4) != 0)
    {
      v12 = *(a1 + 60);
      if (v12 < 0)
      {
        v13 = 11;
      }

      else
      {
        v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v13;
    }
  }

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

void sub_15D9390(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF280((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 56) = *(a2 + 56);
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

void sub_15D94BC(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_15D8C74(a1);

    sub_15D9390(a1, a2);
  }
}

__n128 sub_15D9510(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v7;
  LOBYTE(v7) = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  LODWORD(v7) = *(a1 + 60);
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = v7;
  return result;
}

void *sub_15D9594(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F50E0;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_15D95CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F50E0;
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
    sub_15EF30C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_15D9754(uint64_t a1)
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
  if (a1 != &off_2779748)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15E0864(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15EEF68((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15D9818(uint64_t a1)
{
  sub_15D9754(a1);

  operator delete();
}

uint64_t sub_15D9850(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15DA604(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48);
    v6 = *(v5 + 8);
    result = v5 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v6)
    {
      result = sub_1957EA8(result);
    }
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_15D98F0(uint64_t a1)
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

char *sub_15D9908(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_15E12B4(v17);
          *(a1 + 48) = v15;
          v6 = v25;
        }

        v14 = sub_22273E4(a3, v15, v6);
        goto LABEL_25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v18 = v6 - 1;
      while (1)
      {
        v19 = (v18 + 1);
        v25 = v18 + 1;
        v20 = *(a1 + 40);
        if (v20 && (v21 = *(a1 + 32), v21 < *v20))
        {
          *(a1 + 32) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          sub_15E0DEC(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = v25;
        }

        v18 = sub_2227354(a3, v22, v19);
        v25 = v18;
        if (!v18)
        {
          return 0;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_35;
        }
      }
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
LABEL_25:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v25;
}

char *sub_15D9AEC(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_15DAB38(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 48);
    *__dst = 26;
    v12 = *(v11 + 20);
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, __dst + 1);
    }

    else
    {
      v13 = __dst + 2;
    }

    __dst = sub_15E0A78(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_1957130(a3, v18, v17, __dst);
}

uint64_t sub_15D9C94(uint64_t a1)
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
      v7 = sub_15DB030(v6);
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
    v8 = sub_15E0BA0(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_15D9D70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF30C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    v10 = *(a1 + 48);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_15E12B4(v12);
      *(a1 + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_2779900;
    }

    sub_12B9D50(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15D9E80(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_15D9850(a1);

    sub_15D9D70(a1, a2);
  }
}

void *sub_15D9EE4(void *a1)
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

void sub_15D9F58(void *a1)
{
  sub_15D9EE4(a1);

  operator delete();
}

uint64_t sub_15D9F90(uint64_t a1)
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

char *sub_15D9FB8(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 32) = v20;
      goto LABEL_35;
    }

    v29 = sub_1958770(v7, v20);
    v31 = v29;
    *(a1 + 32) = v30;
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

    v5 |= 2u;
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
      v31 = v16;
      *(a1 + 28) = v17;
      goto LABEL_35;
    }

    v25 = sub_1958770(v7, v17);
    v31 = v25;
    *(a1 + 28) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
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
      *(a1 + 24) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
    v31 = v27;
    *(a1 + 24) = v28;
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

char *sub_15DA200(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_15DA438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_15DA514(uint64_t a1)
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
  if (a1 != &off_27797A8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_15D9EE4(v6);
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

void sub_15DA5CC(uint64_t a1)
{
  sub_15DA514(a1);

  operator delete();
}

uint64_t sub_15DA604(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_15D9F90(*(result + 24));
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 32) = 0u;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 80) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_15DA67C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v60 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v60, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v60 + 1;
    v8 = *v60;
    if (*v60 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v60, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v60 + 2;
      }
    }

    v60 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_68;
        }

        v5 |= 8u;
        v29 = v7 + 1;
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = v7 + 2;
LABEL_51:
          v60 = v29;
          *(a1 + 48) = v28;
          goto LABEL_76;
        }

        v52 = sub_19587DC(v7, v28);
        v60 = v52;
        *(a1 + 48) = v53;
        if (!v52)
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_68;
        }

        v5 |= 0x10u;
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
          v60 = v20;
          *(a1 + 56) = v19;
          goto LABEL_76;
        }

        v46 = sub_19587DC(v7, v19);
        v60 = v46;
        *(a1 + 56) = v47;
        if (!v46)
        {
          goto LABEL_97;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_68;
      }

      v5 |= 2u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_46:
        v60 = v26;
        *(a1 + 32) = v25;
        goto LABEL_76;
      }

      v50 = sub_19587DC(v7, v25);
      v60 = v50;
      *(a1 + 32) = v51;
      if (!v50)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_68;
      }

      v5 |= 4u;
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
        v60 = v17;
        *(a1 + 40) = v16;
        goto LABEL_76;
      }

      v44 = sub_19587DC(v7, v16);
      v60 = v44;
      *(a1 + 40) = v45;
      if (!v44)
      {
        goto LABEL_97;
      }
    }

LABEL_76:
    if (sub_195ADC0(a3, &v60, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_68;
      }

      v5 |= 0x20u;
      v36 = v7 + 1;
      v35 = *v7;
      if ((v35 & 0x8000000000000000) == 0)
      {
        goto LABEL_62;
      }

      v37 = *v36;
      v35 = (v37 << 7) + v35 - 128;
      if ((v37 & 0x80000000) == 0)
      {
        v36 = v7 + 2;
LABEL_62:
        v60 = v36;
        *(a1 + 64) = v35;
        goto LABEL_76;
      }

      v54 = sub_19587DC(v7, v35);
      v60 = v54;
      *(a1 + 64) = v55;
      if (!v54)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_68;
      }

      v5 |= 0x100u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_41:
        v60 = v23;
        *(a1 + 88) = v22 != 0;
        goto LABEL_76;
      }

      v48 = sub_19587DC(v7, v22);
      v60 = v48;
      *(a1 + 88) = v49 != 0;
      if (!v48)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_76;
  }

  if (v11 != 7)
  {
    if (v11 == 8)
    {
      if (v8 != 64)
      {
        goto LABEL_68;
      }

      v5 |= 0x40u;
      v39 = v7 + 1;
      v38 = *v7;
      if ((v38 & 0x8000000000000000) == 0)
      {
        goto LABEL_67;
      }

      v40 = *v39;
      v38 = (v40 << 7) + v38 - 128;
      if ((v40 & 0x80000000) == 0)
      {
        v39 = v7 + 2;
LABEL_67:
        v60 = v39;
        *(a1 + 72) = v38;
        goto LABEL_76;
      }

      v58 = sub_19587DC(v7, v38);
      v60 = v58;
      *(a1 + 72) = v59;
      if (!v58)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 9 || v8 != 72)
      {
        goto LABEL_68;
      }

      v5 |= 0x80u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_16:
        v60 = v13;
        *(a1 + 80) = v12;
        goto LABEL_76;
      }

      v56 = sub_19587DC(v7, v12);
      v60 = v56;
      *(a1 + 80) = v57;
      if (!v56)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_76;
  }

  if (v8 == 58)
  {
    *(a1 + 16) |= 1u;
    v31 = *(a1 + 24);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_15E0D70(v33);
      *(a1 + 24) = v31;
      v7 = v60;
    }

    v34 = sub_2227474(a3, v31, v7);
LABEL_75:
    v60 = v34;
    if (!v34)
    {
      goto LABEL_97;
    }

    goto LABEL_76;
  }

LABEL_68:
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
      v7 = v60;
    }

    v34 = sub_1952690(v8, v43, v7, a3);
    goto LABEL_75;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_97:
  v60 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v60;
}

char *sub_15DAB38(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 40);
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

    v16 = *(a1 + 48);
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

    v20 = *(a1 + 56);
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 64);
    *v19 = 40;
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
          v19 = (v26 >> 7);
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

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_53:
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v30 = *(a1 + 24);
    *v24 = 58;
    v31 = *(v30 + 20);
    v24[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v24 + 1);
    }

    else
    {
      v32 = v24 + 2;
    }

    v24 = sub_15DA200(v30, v32, a3);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_59;
  }

  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v29 = *(a1 + 88);
  *v24 = 48;
  v24[1] = v29;
  v24 += 2;
  if (v5)
  {
    goto LABEL_53;
  }

LABEL_48:
  if ((v5 & 0x40) == 0)
  {
LABEL_49:
    v28 = v24;
    goto LABEL_66;
  }

LABEL_59:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v33 = *(a1 + 72);
  *v24 = 64;
  v24[1] = v33;
  if (v33 > 0x7F)
  {
    v24[1] = v33 | 0x80;
    v34 = v33 >> 7;
    v24[2] = v33 >> 7;
    v28 = v24 + 3;
    if (v33 >= 0x4000)
    {
      LOBYTE(v24) = v24[2];
      do
      {
        *(v28 - 1) = v24 | 0x80;
        v24 = (v34 >> 7);
        *v28++ = v34 >> 7;
        v35 = v34 >> 14;
        v34 >>= 7;
      }

      while (v35);
    }
  }

  else
  {
    v28 = v24 + 2;
  }

LABEL_66:
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v37 = *(a1 + 80);
    *v28 = 72;
    v28[1] = v37;
    if (v37 > 0x7F)
    {
      v28[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v28[2] = v37 >> 7;
      v36 = v28 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v36 - 1) = v28 | 0x80;
          v28 = (v38 >> 7);
          *v36++ = v38 >> 7;
          v39 = v38 >> 14;
          v38 >>= 7;
        }

        while (v39);
      }
    }

    else
    {
      v36 = v28 + 2;
    }
  }

  else
  {
    v36 = v28;
  }

  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v36;
  }

  v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
  v43 = *(v42 + 31);
  if (v43 < 0)
  {
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
  }

  else
  {
    v44 = (v42 + 8);
  }

  if (*a3 - v36 >= v43)
  {
    v45 = v43;
    memcpy(v36, v44, v43);
    v36 += v45;
    return v36;
  }

  return sub_1957130(a3, v44, v43, v36);
}

uint64_t sub_15DB030(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = sub_15DA438(*(a1 + 24));
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
    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  v3 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_15:
  result = v3 + ((v2 >> 7) & 2);
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