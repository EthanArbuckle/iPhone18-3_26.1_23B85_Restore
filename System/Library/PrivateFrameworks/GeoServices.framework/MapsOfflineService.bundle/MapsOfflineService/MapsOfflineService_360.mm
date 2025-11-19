void sub_14C868C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1449ED8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1568258((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_144D55C((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
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
    sub_1201B48(a1 + 120, v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
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
    sub_144D55C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
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
    sub_15682E4((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
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
    sub_12E5E34((a1 + 192), v36, (v35 + 8), v34, **(a1 + 208) - *(a1 + 200));
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
    sub_1201B48(a1 + 216, v41, (v40 + 8), v39, **(a1 + 232) - *(a1 + 224));
    v42 = *(a1 + 224) + v39;
    *(a1 + 224) = v42;
    v43 = *(a1 + 232);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 248);
  if (v44)
  {
    v45 = *(a2 + 256);
    v46 = sub_19592E8(a1 + 240, *(a2 + 248));
    sub_1201B48(a1 + 240, v46, (v45 + 8), v44, **(a1 + 256) - *(a1 + 248));
    v47 = *(a1 + 248) + v44;
    *(a1 + 248) = v47;
    v48 = *(a1 + 256);
    if (*v48 < v47)
    {
      *v48 = v47;
    }
  }

  v49 = *(a2 + 40);
  if (!v49)
  {
    goto LABEL_77;
  }

  if (v49)
  {
    v50 = *(a2 + 264);
    *(a1 + 40) |= 1u;
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    sub_194EA1C((a1 + 264), (v50 & 0xFFFFFFFFFFFFFFFELL), v52);
    if ((v49 & 2) == 0)
    {
LABEL_31:
      if ((v49 & 4) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }
  }

  else if ((v49 & 2) == 0)
  {
    goto LABEL_31;
  }

  v53 = *(a2 + 272);
  *(a1 + 40) |= 2u;
  v54 = *(a1 + 8);
  v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
  if (v54)
  {
    v55 = *v55;
  }

  sub_194EA1C((a1 + 272), (v53 & 0xFFFFFFFFFFFFFFFELL), v55);
  if ((v49 & 4) == 0)
  {
LABEL_32:
    if ((v49 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

LABEL_44:
  v56 = *(a2 + 280);
  *(a1 + 40) |= 4u;
  v57 = *(a1 + 8);
  v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL);
  if (v57)
  {
    v58 = *v58;
  }

  sub_194EA1C((a1 + 280), (v56 & 0xFFFFFFFFFFFFFFFELL), v58);
  if ((v49 & 8) == 0)
  {
LABEL_33:
    if ((v49 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_50;
  }

LABEL_47:
  v59 = *(a2 + 288);
  *(a1 + 40) |= 8u;
  v60 = *(a1 + 8);
  v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
  if (v60)
  {
    v61 = *v61;
  }

  sub_194EA1C((a1 + 288), (v59 & 0xFFFFFFFFFFFFFFFELL), v61);
  if ((v49 & 0x10) == 0)
  {
LABEL_34:
    if ((v49 & 0x20) == 0)
    {
      goto LABEL_35;
    }

LABEL_53:
    *(a1 + 40) |= 0x20u;
    v65 = *(a1 + 304);
    if (!v65)
    {
      v66 = *(a1 + 8);
      v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
      if (v66)
      {
        v67 = *v67;
      }

      v65 = sub_16F5BD8(v67);
      *(a1 + 304) = v65;
    }

    if (*(a2 + 304))
    {
      v68 = *(a2 + 304);
    }

    else
    {
      v68 = &off_277E738;
    }

    sub_16E4964(v65, v68);
    if ((v49 & 0x40) == 0)
    {
LABEL_36:
      if ((v49 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_50:
  v62 = *(a2 + 296);
  *(a1 + 40) |= 0x10u;
  v63 = *(a1 + 8);
  v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
  if (v63)
  {
    v64 = *v64;
  }

  sub_194EA1C((a1 + 296), (v62 & 0xFFFFFFFFFFFFFFFELL), v64);
  if ((v49 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_35:
  if ((v49 & 0x40) == 0)
  {
    goto LABEL_36;
  }

LABEL_61:
  *(a1 + 40) |= 0x40u;
  v69 = *(a1 + 312);
  if (!v69)
  {
    v70 = *(a1 + 8);
    v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
    if (v70)
    {
      v71 = *v71;
    }

    v69 = sub_14BD814(v71);
    *(a1 + 312) = v69;
  }

  if (*(a2 + 312))
  {
    v72 = *(a2 + 312);
  }

  else
  {
    v72 = &off_2772E28;
  }

  sub_149429C(v69, v72);
  if ((v49 & 0x80) != 0)
  {
LABEL_69:
    *(a1 + 40) |= 0x80u;
    v73 = *(a1 + 320);
    if (!v73)
    {
      v74 = *(a1 + 8);
      v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
      if (v74)
      {
        v75 = *v75;
      }

      sub_155193C(v75);
      *(a1 + 320) = v73;
    }

    if (*(a2 + 320))
    {
      v76 = *(a2 + 320);
    }

    else
    {
      v76 = &off_2776700;
    }

    sub_14C9078(v73, v76);
  }

LABEL_77:
  if ((v49 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v49 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v77 = *(a1 + 328);
    if (!v77)
    {
      v78 = *(a1 + 8);
      v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
      if (v78)
      {
        v79 = *v79;
      }

      v77 = sub_16F5F38(v79);
      *(a1 + 328) = v77;
    }

    if (*(a2 + 328))
    {
      v80 = *(a2 + 328);
    }

    else
    {
      v80 = &off_277E980;
    }

    sub_121721C(v77, v80);
    if ((v49 & 0x200) == 0)
    {
LABEL_80:
      if ((v49 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_103;
    }
  }

  else if ((v49 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(a1 + 40) |= 0x200u;
  v81 = *(a1 + 336);
  if (!v81)
  {
    v82 = *(a1 + 8);
    v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
    if (v82)
    {
      v83 = *v83;
    }

    v81 = sub_1552788(v83);
    *(a1 + 336) = v81;
  }

  if (*(a2 + 336))
  {
    v84 = *(a2 + 336);
  }

  else
  {
    v84 = &off_27770C8;
  }

  sub_14C99B8(v81, v84);
  if ((v49 & 0x400) == 0)
  {
LABEL_81:
    if ((v49 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_111;
  }

LABEL_103:
  *(a1 + 40) |= 0x400u;
  v85 = *(a1 + 344);
  if (!v85)
  {
    v86 = *(a1 + 8);
    v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
    if (v86)
    {
      v87 = *v87;
    }

    v85 = sub_14BD8FC(v87);
    *(a1 + 344) = v85;
  }

  if (*(a2 + 344))
  {
    v88 = *(a2 + 344);
  }

  else
  {
    v88 = &off_2772ED0;
  }

  sub_14955F0(v85, v88);
  if ((v49 & 0x800) == 0)
  {
LABEL_82:
    if ((v49 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_119;
  }

LABEL_111:
  *(a1 + 40) |= 0x800u;
  v89 = *(a1 + 352);
  if (!v89)
  {
    v90 = *(a1 + 8);
    v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
    if (v90)
    {
      v91 = *v91;
    }

    v89 = sub_13F0FB4(v91);
    *(a1 + 352) = v89;
  }

  if (*(a2 + 352))
  {
    v92 = *(a2 + 352);
  }

  else
  {
    v92 = &off_276F370;
  }

  sub_13F0A84(v89, v92);
  if ((v49 & 0x1000) == 0)
  {
LABEL_83:
    if ((v49 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(a1 + 40) |= 0x1000u;
  v93 = *(a1 + 360);
  if (!v93)
  {
    v94 = *(a1 + 8);
    v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
    if (v94)
    {
      v95 = *v95;
    }

    sub_14D5A00(v95);
    *(a1 + 360) = v93;
  }

  if (*(a2 + 360))
  {
    v96 = *(a2 + 360);
  }

  else
  {
    v96 = &off_2773F38;
  }

  sub_14C52AC(v93, v96);
  if ((v49 & 0x2000) == 0)
  {
LABEL_84:
    if ((v49 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_135;
  }

LABEL_127:
  *(a1 + 40) |= 0x2000u;
  v97 = *(a1 + 368);
  if (!v97)
  {
    v98 = *(a1 + 8);
    v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
    if (v98)
    {
      v99 = *v99;
    }

    v97 = sub_16F5BD8(v99);
    *(a1 + 368) = v97;
  }

  if (*(a2 + 368))
  {
    v100 = *(a2 + 368);
  }

  else
  {
    v100 = &off_277E738;
  }

  sub_16E4964(v97, v100);
  if ((v49 & 0x4000) == 0)
  {
LABEL_85:
    if ((v49 & 0x8000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(a1 + 40) |= 0x4000u;
  v101 = *(a1 + 376);
  if (!v101)
  {
    v102 = *(a1 + 8);
    v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
    if (v102)
    {
      v103 = *v103;
    }

    v101 = sub_14BF3C4(v103);
    *(a1 + 376) = v101;
  }

  if (*(a2 + 376))
  {
    v104 = *(a2 + 376);
  }

  else
  {
    v104 = &off_2773A48;
  }

  sub_14B5E78(v101, v104);
  if ((v49 & 0x8000) != 0)
  {
LABEL_143:
    *(a1 + 40) |= 0x8000u;
    v105 = *(a1 + 384);
    if (!v105)
    {
      v106 = *(a1 + 8);
      v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
      if (v106)
      {
        v107 = *v107;
      }

      v105 = sub_16F65CC(v107);
      *(a1 + 384) = v105;
    }

    if (*(a2 + 384))
    {
      v108 = *(a2 + 384);
    }

    else
    {
      v108 = &off_277EBD8;
    }

    sub_12C3070(v105, v108);
  }

LABEL_151:
  if ((v49 & 0xFF0000) == 0)
  {
    goto LABEL_162;
  }

  if ((v49 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v110 = *(a1 + 392);
    if (!v110)
    {
      v111 = *(a1 + 8);
      v112 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
      if (v111)
      {
        v112 = *v112;
      }

      v110 = sub_14BF5F4(v112);
      *(a1 + 392) = v110;
    }

    if (*(a2 + 392))
    {
      v113 = *(a2 + 392);
    }

    else
    {
      v113 = &off_2773BF8;
    }

    sub_140C624(v110, v113);
    if ((v49 & 0x20000) == 0)
    {
LABEL_154:
      if ((v49 & 0x40000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_189;
    }
  }

  else if ((v49 & 0x20000) == 0)
  {
    goto LABEL_154;
  }

  *(a1 + 40) |= 0x20000u;
  v114 = *(a1 + 400);
  if (!v114)
  {
    v115 = *(a1 + 8);
    v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
    if (v115)
    {
      v116 = *v116;
    }

    v114 = sub_14BD980(v116);
    *(a1 + 400) = v114;
  }

  if (*(a2 + 400))
  {
    v117 = *(a2 + 400);
  }

  else
  {
    v117 = &off_2772EF0;
  }

  sub_13E88F4(v114, v117);
  if ((v49 & 0x40000) == 0)
  {
LABEL_155:
    if ((v49 & 0x80000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_197;
  }

LABEL_189:
  *(a1 + 40) |= 0x40000u;
  v118 = *(a1 + 408);
  if (!v118)
  {
    v119 = *(a1 + 8);
    v120 = (v119 & 0xFFFFFFFFFFFFFFFCLL);
    if (v119)
    {
      v120 = *v120;
    }

    v118 = sub_14BC6D4(v120);
    *(a1 + 408) = v118;
  }

  if (*(a2 + 408))
  {
    v121 = *(a2 + 408);
  }

  else
  {
    v121 = &off_2772200;
  }

  sub_1477734(v118, v121);
  if ((v49 & 0x80000) == 0)
  {
LABEL_156:
    if ((v49 & 0x100000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_198;
  }

LABEL_197:
  *(a1 + 416) = *(a2 + 416);
  if ((v49 & 0x100000) == 0)
  {
LABEL_157:
    if ((v49 & 0x200000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_199;
  }

LABEL_198:
  *(a1 + 420) = *(a2 + 420);
  if ((v49 & 0x200000) == 0)
  {
LABEL_158:
    if ((v49 & 0x400000) == 0)
    {
      goto LABEL_159;
    }

LABEL_200:
    *(a1 + 432) = *(a2 + 432);
    if ((v49 & 0x800000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

LABEL_199:
  *(a1 + 424) = *(a2 + 424);
  if ((v49 & 0x400000) != 0)
  {
    goto LABEL_200;
  }

LABEL_159:
  if ((v49 & 0x800000) != 0)
  {
LABEL_160:
    *(a1 + 436) = *(a2 + 436);
  }

LABEL_161:
  *(a1 + 40) |= v49;
LABEL_162:
  if ((v49 & 0xF000000) == 0)
  {
    goto LABEL_169;
  }

  if ((v49 & 0x1000000) != 0)
  {
    *(a1 + 440) = *(a2 + 440);
    if ((v49 & 0x2000000) == 0)
    {
LABEL_165:
      if ((v49 & 0x4000000) == 0)
      {
        goto LABEL_166;
      }

LABEL_204:
      *(a1 + 452) = *(a2 + 452);
      if ((v49 & 0x8000000) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_167;
    }
  }

  else if ((v49 & 0x2000000) == 0)
  {
    goto LABEL_165;
  }

  *(a1 + 448) = *(a2 + 448);
  if ((v49 & 0x4000000) != 0)
  {
    goto LABEL_204;
  }

LABEL_166:
  if ((v49 & 0x8000000) != 0)
  {
LABEL_167:
    *(a1 + 456) = *(a2 + 456);
  }

LABEL_168:
  *(a1 + 40) |= v49;
LABEL_169:
  sub_225EA0C(a1 + 16, a2 + 16);
  v109 = *(a2 + 8);
  if (v109)
  {

    sub_1957EF4((a1 + 8), (v109 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14C9078(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 48);
    v6 = sub_19592E8(a1 + 32, *(a2 + 40));
    sub_1201B48(a1 + 32, v6, (v5 + 8), v4, **(a1 + 48) - *(a1 + 40));
    v7 = *(a1 + 40) + v4;
    *(a1 + 40) = v7;
    v8 = *(a1 + 48);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a1 + 56);
    sub_1958E5C((a1 + 56), v10 + v9);
    v11 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy((v11 + 4 * v10), *(a2 + 64), 4 * *(a2 + 56));
  }

  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v13 + v12);
    v14 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v14 + 4 * v13), *(a2 + 80), 4 * *(a2 + 72));
  }

  v15 = *(a2 + 88);
  if (v15)
  {
    v16 = *(a1 + 88);
    sub_1958E5C((a1 + 88), v16 + v15);
    v17 = *(a1 + 96);
    *(a1 + 88) += *(a2 + 88);
    memcpy((v17 + 4 * v16), *(a2 + 96), 4 * *(a2 + 88));
  }

  v18 = *(a2 + 16);
  if (!v18)
  {
    goto LABEL_44;
  }

  if (v18)
  {
    v19 = *(a2 + 104);
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    sub_194EA1C((a1 + 104), (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v18 & 2) == 0)
    {
LABEL_13:
      if ((v18 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_13;
  }

  v22 = *(a2 + 112);
  *(a1 + 16) |= 2u;
  v23 = *(a1 + 8);
  v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
  if (v23)
  {
    v24 = *v24;
  }

  sub_194EA1C((a1 + 112), (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v18 & 4) == 0)
  {
LABEL_14:
    if ((v18 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_26:
  v25 = *(a2 + 120);
  *(a1 + 16) |= 4u;
  v26 = *(a1 + 8);
  v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
  if (v26)
  {
    v27 = *v27;
  }

  sub_194EA1C((a1 + 120), (v25 & 0xFFFFFFFFFFFFFFFELL), v27);
  if ((v18 & 8) == 0)
  {
LABEL_15:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_29:
  v28 = *(a2 + 128);
  *(a1 + 16) |= 8u;
  v29 = *(a1 + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (v29)
  {
    v30 = *v30;
  }

  sub_194EA1C((a1 + 128), (v28 & 0xFFFFFFFFFFFFFFFELL), v30);
  if ((v18 & 0x10) == 0)
  {
LABEL_16:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_35:
    v34 = *(a2 + 144);
    *(a1 + 16) |= 0x20u;
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    sub_194EA1C((a1 + 144), (v34 & 0xFFFFFFFFFFFFFFFELL), v36);
    if ((v18 & 0x40) == 0)
    {
LABEL_18:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_32:
  v31 = *(a2 + 136);
  *(a1 + 16) |= 0x10u;
  v32 = *(a1 + 8);
  v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
  if (v32)
  {
    v33 = *v33;
  }

  sub_194EA1C((a1 + 136), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_38:
  v37 = *(a2 + 152);
  *(a1 + 16) |= 0x40u;
  v38 = *(a1 + 8);
  v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
  if (v38)
  {
    v39 = *v39;
  }

  sub_194EA1C((a1 + 152), (v37 & 0xFFFFFFFFFFFFFFFELL), v39);
  if ((v18 & 0x80) != 0)
  {
LABEL_41:
    v40 = *(a2 + 160);
    *(a1 + 16) |= 0x80u;
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    sub_194EA1C((a1 + 160), (v40 & 0xFFFFFFFFFFFFFFFELL), v42);
  }

LABEL_44:
  if ((v18 & 0xFF00) == 0)
  {
    goto LABEL_113;
  }

  if ((v18 & 0x100) != 0)
  {
    v43 = *(a2 + 168);
    *(a1 + 16) |= 0x100u;
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    sub_194EA1C((a1 + 168), (v43 & 0xFFFFFFFFFFFFFFFELL), v45);
    if ((v18 & 0x200) == 0)
    {
LABEL_47:
      if ((v18 & 0x400) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_65;
    }
  }

  else if ((v18 & 0x200) == 0)
  {
    goto LABEL_47;
  }

  *(a1 + 16) |= 0x200u;
  v46 = *(a1 + 176);
  if (!v46)
  {
    v47 = *(a1 + 8);
    v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      v48 = *v48;
    }

    v46 = sub_1551750(v48);
    *(a1 + 176) = v46;
  }

  if (*(a2 + 176))
  {
    v49 = *(a2 + 176);
  }

  else
  {
    v49 = &off_2776680;
  }

  sub_1537234(v46, v49);
  if ((v18 & 0x400) == 0)
  {
LABEL_48:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_73;
  }

LABEL_65:
  *(a1 + 16) |= 0x400u;
  v50 = *(a1 + 184);
  if (!v50)
  {
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    v50 = sub_16F63DC(v52);
    *(a1 + 184) = v50;
  }

  if (*(a2 + 184))
  {
    v53 = *(a2 + 184);
  }

  else
  {
    v53 = &off_277EB40;
  }

  sub_16F34FC(v50, v53);
  if ((v18 & 0x800) == 0)
  {
LABEL_49:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_81;
  }

LABEL_73:
  *(a1 + 16) |= 0x800u;
  v54 = *(a1 + 192);
  if (!v54)
  {
    v55 = *(a1 + 8);
    v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
    if (v55)
    {
      v56 = *v56;
    }

    v54 = sub_16F6380(v56);
    *(a1 + 192) = v54;
  }

  if (*(a2 + 192))
  {
    v57 = *(a2 + 192);
  }

  else
  {
    v57 = &off_277EB00;
  }

  sub_16F2CF0(v54, v57);
  if ((v18 & 0x1000) == 0)
  {
LABEL_50:
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_89;
  }

LABEL_81:
  *(a1 + 16) |= 0x1000u;
  v58 = *(a1 + 200);
  if (!v58)
  {
    v59 = *(a1 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    v58 = sub_16F6530(v60);
    *(a1 + 200) = v58;
  }

  if (*(a2 + 200))
  {
    v61 = *(a2 + 200);
  }

  else
  {
    v61 = &off_277EBA8;
  }

  sub_16F49C4(v58, v61);
  if ((v18 & 0x2000) == 0)
  {
LABEL_51:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_97;
  }

LABEL_89:
  *(a1 + 16) |= 0x2000u;
  v62 = *(a1 + 208);
  if (!v62)
  {
    v63 = *(a1 + 8);
    v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
    if (v63)
    {
      v64 = *v64;
    }

    v62 = sub_15517C8(v64);
    *(a1 + 208) = v62;
  }

  if (*(a2 + 208))
  {
    v65 = *(a2 + 208);
  }

  else
  {
    v65 = &off_27766A0;
  }

  sub_1485514(v62, v65);
  if ((v18 & 0x4000) == 0)
  {
LABEL_52:
    if ((v18 & 0x8000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_105;
  }

LABEL_97:
  *(a1 + 16) |= 0x4000u;
  v66 = *(a1 + 216);
  if (!v66)
  {
    v67 = *(a1 + 8);
    v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
    if (v67)
    {
      v68 = *v68;
    }

    v66 = sub_1551844(v68);
    *(a1 + 216) = v66;
  }

  if (*(a2 + 216))
  {
    v69 = *(a2 + 216);
  }

  else
  {
    v69 = &off_27766C0;
  }

  sub_140C624(v66, v69);
  if ((v18 & 0x8000) != 0)
  {
LABEL_105:
    *(a1 + 16) |= 0x8000u;
    v70 = *(a1 + 224);
    if (!v70)
    {
      v71 = *(a1 + 8);
      v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
      if (v71)
      {
        v72 = *v72;
      }

      v70 = sub_15518C0(v72);
      *(a1 + 224) = v70;
    }

    if (*(a2 + 224))
    {
      v73 = *(a2 + 224);
    }

    else
    {
      v73 = &off_27766E0;
    }

    sub_1485514(v70, v73);
  }

LABEL_113:
  if ((v18 & 0xFF0000) == 0)
  {
    goto LABEL_124;
  }

  if ((v18 & 0x10000) != 0)
  {
    *(a1 + 232) = *(a2 + 232);
    if ((v18 & 0x20000) == 0)
    {
LABEL_116:
      if ((v18 & 0x40000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_183;
    }
  }

  else if ((v18 & 0x20000) == 0)
  {
    goto LABEL_116;
  }

  *(a1 + 233) = *(a2 + 233);
  if ((v18 & 0x40000) == 0)
  {
LABEL_117:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_184;
  }

LABEL_183:
  *(a1 + 234) = *(a2 + 234);
  if ((v18 & 0x80000) == 0)
  {
LABEL_118:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_185;
  }

LABEL_184:
  *(a1 + 235) = *(a2 + 235);
  if ((v18 & 0x100000) == 0)
  {
LABEL_119:
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_186;
  }

LABEL_185:
  *(a1 + 236) = *(a2 + 236);
  if ((v18 & 0x200000) == 0)
  {
LABEL_120:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_121;
    }

LABEL_187:
    *(a1 + 238) = *(a2 + 238);
    if ((v18 & 0x800000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

LABEL_186:
  *(a1 + 237) = *(a2 + 237);
  if ((v18 & 0x400000) != 0)
  {
    goto LABEL_187;
  }

LABEL_121:
  if ((v18 & 0x800000) != 0)
  {
LABEL_122:
    *(a1 + 239) = *(a2 + 239);
  }

LABEL_123:
  *(a1 + 16) |= v18;
LABEL_124:
  if (!HIBYTE(v18))
  {
    goto LABEL_134;
  }

  if ((v18 & 0x1000000) != 0)
  {
    *(a1 + 240) = *(a2 + 240);
    if ((v18 & 0x2000000) == 0)
    {
LABEL_127:
      if ((v18 & 0x4000000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_215;
    }
  }

  else if ((v18 & 0x2000000) == 0)
  {
    goto LABEL_127;
  }

  *(a1 + 241) = *(a2 + 241);
  if ((v18 & 0x4000000) == 0)
  {
LABEL_128:
    if ((v18 & 0x8000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_216;
  }

LABEL_215:
  *(a1 + 242) = *(a2 + 242);
  if ((v18 & 0x8000000) == 0)
  {
LABEL_129:
    if ((v18 & 0x10000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_217;
  }

LABEL_216:
  *(a1 + 243) = *(a2 + 243);
  if ((v18 & 0x10000000) == 0)
  {
LABEL_130:
    if ((v18 & 0x20000000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_218;
  }

LABEL_217:
  *(a1 + 244) = *(a2 + 244);
  if ((v18 & 0x20000000) == 0)
  {
LABEL_131:
    if ((v18 & 0x40000000) == 0)
    {
      goto LABEL_132;
    }

LABEL_219:
    *(a1 + 246) = *(a2 + 246);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

LABEL_220:
    *(a1 + 247) = *(a2 + 247);
    goto LABEL_133;
  }

LABEL_218:
  *(a1 + 245) = *(a2 + 245);
  if ((v18 & 0x40000000) != 0)
  {
    goto LABEL_219;
  }

LABEL_132:
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_220;
  }

LABEL_133:
  *(a1 + 16) |= v18;
LABEL_134:
  v74 = *(a2 + 20);
  if (!v74)
  {
    goto LABEL_145;
  }

  if (v74)
  {
    *(a1 + 248) = *(a2 + 248);
    if ((v74 & 2) == 0)
    {
LABEL_137:
      if ((v74 & 4) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_191;
    }
  }

  else if ((v74 & 2) == 0)
  {
    goto LABEL_137;
  }

  *(a1 + 249) = *(a2 + 249);
  if ((v74 & 4) == 0)
  {
LABEL_138:
    if ((v74 & 8) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_192;
  }

LABEL_191:
  *(a1 + 250) = *(a2 + 250);
  if ((v74 & 8) == 0)
  {
LABEL_139:
    if ((v74 & 0x10) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_193;
  }

LABEL_192:
  *(a1 + 251) = *(a2 + 251);
  if ((v74 & 0x10) == 0)
  {
LABEL_140:
    if ((v74 & 0x20) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(a1 + 252) = *(a2 + 252);
  if ((v74 & 0x20) == 0)
  {
LABEL_141:
    if ((v74 & 0x40) == 0)
    {
      goto LABEL_142;
    }

LABEL_195:
    *(a1 + 254) = *(a2 + 254);
    if ((v74 & 0x80) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

LABEL_194:
  *(a1 + 253) = *(a2 + 253);
  if ((v74 & 0x40) != 0)
  {
    goto LABEL_195;
  }

LABEL_142:
  if ((v74 & 0x80) != 0)
  {
LABEL_143:
    *(a1 + 255) = *(a2 + 255);
  }

LABEL_144:
  *(a1 + 20) |= v74;
LABEL_145:
  if ((v74 & 0xFF00) == 0)
  {
    goto LABEL_156;
  }

  if ((v74 & 0x100) != 0)
  {
    *(a1 + 256) = *(a2 + 256);
    if ((v74 & 0x200) == 0)
    {
LABEL_148:
      if ((v74 & 0x400) == 0)
      {
        goto LABEL_149;
      }

      goto LABEL_199;
    }
  }

  else if ((v74 & 0x200) == 0)
  {
    goto LABEL_148;
  }

  *(a1 + 257) = *(a2 + 257);
  if ((v74 & 0x400) == 0)
  {
LABEL_149:
    if ((v74 & 0x800) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(a1 + 258) = *(a2 + 258);
  if ((v74 & 0x800) == 0)
  {
LABEL_150:
    if ((v74 & 0x1000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_201;
  }

LABEL_200:
  *(a1 + 259) = *(a2 + 259);
  if ((v74 & 0x1000) == 0)
  {
LABEL_151:
    if ((v74 & 0x2000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_202;
  }

LABEL_201:
  *(a1 + 260) = *(a2 + 260);
  if ((v74 & 0x2000) == 0)
  {
LABEL_152:
    if ((v74 & 0x4000) == 0)
    {
      goto LABEL_153;
    }

LABEL_203:
    *(a1 + 262) = *(a2 + 262);
    if ((v74 & 0x8000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_154;
  }

LABEL_202:
  *(a1 + 261) = *(a2 + 261);
  if ((v74 & 0x4000) != 0)
  {
    goto LABEL_203;
  }

LABEL_153:
  if ((v74 & 0x8000) != 0)
  {
LABEL_154:
    *(a1 + 263) = *(a2 + 263);
  }

LABEL_155:
  *(a1 + 20) |= v74;
LABEL_156:
  if ((v74 & 0xFF0000) == 0)
  {
    goto LABEL_167;
  }

  if ((v74 & 0x10000) != 0)
  {
    *(a1 + 264) = *(a2 + 264);
    if ((v74 & 0x20000) == 0)
    {
LABEL_159:
      if ((v74 & 0x40000) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_207;
    }
  }

  else if ((v74 & 0x20000) == 0)
  {
    goto LABEL_159;
  }

  *(a1 + 265) = *(a2 + 265);
  if ((v74 & 0x40000) == 0)
  {
LABEL_160:
    if ((v74 & 0x80000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_208;
  }

LABEL_207:
  *(a1 + 266) = *(a2 + 266);
  if ((v74 & 0x80000) == 0)
  {
LABEL_161:
    if ((v74 & 0x100000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_209;
  }

LABEL_208:
  *(a1 + 267) = *(a2 + 267);
  if ((v74 & 0x100000) == 0)
  {
LABEL_162:
    if ((v74 & 0x200000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_210;
  }

LABEL_209:
  *(a1 + 268) = *(a2 + 268);
  if ((v74 & 0x200000) == 0)
  {
LABEL_163:
    if ((v74 & 0x400000) == 0)
    {
      goto LABEL_164;
    }

LABEL_211:
    *(a1 + 270) = *(a2 + 270);
    if ((v74 & 0x800000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

LABEL_210:
  *(a1 + 269) = *(a2 + 269);
  if ((v74 & 0x400000) != 0)
  {
    goto LABEL_211;
  }

LABEL_164:
  if ((v74 & 0x800000) != 0)
  {
LABEL_165:
    *(a1 + 271) = *(a2 + 271);
  }

LABEL_166:
  *(a1 + 20) |= v74;
LABEL_167:
  if (!HIBYTE(v74))
  {
    goto LABEL_177;
  }

  if ((v74 & 0x1000000) != 0)
  {
    *(a1 + 272) = *(a2 + 272);
    if ((v74 & 0x2000000) == 0)
    {
LABEL_170:
      if ((v74 & 0x4000000) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_223;
    }
  }

  else if ((v74 & 0x2000000) == 0)
  {
    goto LABEL_170;
  }

  *(a1 + 276) = *(a2 + 276);
  if ((v74 & 0x4000000) == 0)
  {
LABEL_171:
    if ((v74 & 0x8000000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_224;
  }

LABEL_223:
  *(a1 + 280) = *(a2 + 280);
  if ((v74 & 0x8000000) == 0)
  {
LABEL_172:
    if ((v74 & 0x10000000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_225;
  }

LABEL_224:
  *(a1 + 284) = *(a2 + 284);
  if ((v74 & 0x10000000) == 0)
  {
LABEL_173:
    if ((v74 & 0x20000000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_226;
  }

LABEL_225:
  *(a1 + 288) = *(a2 + 288);
  if ((v74 & 0x20000000) == 0)
  {
LABEL_174:
    if ((v74 & 0x40000000) == 0)
    {
      goto LABEL_175;
    }

LABEL_227:
    *(a1 + 296) = *(a2 + 296);
    if ((v74 & 0x80000000) == 0)
    {
      goto LABEL_176;
    }

LABEL_228:
    *(a1 + 300) = *(a2 + 300);
    goto LABEL_176;
  }

LABEL_226:
  *(a1 + 292) = *(a2 + 292);
  if ((v74 & 0x40000000) != 0)
  {
    goto LABEL_227;
  }

LABEL_175:
  if ((v74 & 0x80000000) != 0)
  {
    goto LABEL_228;
  }

LABEL_176:
  *(a1 + 20) |= v74;
LABEL_177:
  v75 = *(a2 + 8);
  if (v75)
  {

    sub_1957EF4((a1 + 8), (v75 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_14C99B8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1201B48(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_1201B48(&v3[1].__r_.__value_.__r.__words[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v12 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v9;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v12;
    v13 = v3[2].__r_.__value_.__l.__size_;
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void sub_14C9AD0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_14C6964(a1);

    sub_14C868C(a1, a2);
  }
}

uint64_t sub_14C9B1C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_14D04F4(*(*(a1 + 64) + 8 * v3));
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
      v8 = sub_14C3CB8(*(*(a1 + 88) + 8 * v6));
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
      v11 = sub_14D0578(*(*(a1 + 112) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 152);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_14D0578(*(*(a1 + 160) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_14C9CF4(a1 + 168);
    if (result)
    {
      v15 = *(a1 + 200);
      while (v15 >= 1)
      {
        v16 = v15 - 1;
        v17 = sub_16EF064(*(*(a1 + 208) + 8 * v15));
        result = 0;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          return result;
        }
      }

      v18 = *(a1 + 40);
      if ((v18 & 0x20) != 0)
      {
        result = sub_16E4B4C(*(a1 + 304));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x40) != 0)
      {
        v19 = *(a1 + 312);
        if ((*(v19 + 16) & 8) != 0)
        {
          result = sub_195228C(*(v19 + 96) + 16);
          if (!result)
          {
            return result;
          }

          v18 = *(a1 + 40);
        }
      }

      if ((v18 & 0x80) != 0)
      {
        result = sub_14C9D50(*(a1 + 320));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x100) != 0)
      {
        result = sub_16EE510(*(a1 + 328));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x800) != 0)
      {
        result = sub_13F0B14(*(a1 + 352));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x1000) != 0)
      {
        result = sub_14C55B0(*(a1 + 360));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x2000) != 0)
      {
        result = sub_16E4B4C(*(a1 + 368));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x4000) != 0)
      {
        result = sub_14B6108(*(a1 + 376));
        if (!result)
        {
          return result;
        }

        v18 = *(a1 + 40);
      }

      if ((v18 & 0x40000) == 0)
      {
        return 1;
      }

      result = sub_195228C(*(a1 + 408) + 16);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_14C9CF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 2) != 0)
    {
      result = sub_149FBF4(*(v3 + 32));
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

uint64_t sub_14C9D50(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x400) != 0)
  {
    result = sub_16F35C0(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) == 0)
  {
    return 1;
  }

  result = sub_16F2D80(*(a1 + 192));
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_14C9D9C(uint64_t a1, uint64_t a2)
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
  v20 = *(a1 + 168);
  v21 = *(a1 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v20;
  *(a2 + 176) = v21;
  v22 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v22;
  v23 = *(a1 + 192);
  v24 = *(a1 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = v23;
  *(a2 + 200) = v24;
  v25 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = v25;
  v26 = *(a1 + 216);
  v27 = *(a1 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v26;
  *(a2 + 224) = v27;
  v28 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = v28;
  v29 = *(a1 + 240);
  v30 = *(a1 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v29;
  *(a2 + 248) = v30;
  v31 = *(a1 + 256);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = v31;
  v32 = *(a2 + 264);
  *(a2 + 264) = *(a1 + 264);
  *(a1 + 264) = v32;
  v33 = *(a2 + 272);
  *(a2 + 272) = *(a1 + 272);
  *(a1 + 272) = v33;
  v34 = *(a2 + 280);
  *(a2 + 280) = *(a1 + 280);
  *(a1 + 280) = v34;
  v35 = *(a2 + 288);
  *(a2 + 288) = *(a1 + 288);
  *(a1 + 288) = v35;
  v36 = *(a2 + 296);
  *(a2 + 296) = *(a1 + 296);
  *(a1 + 296) = v36;
  v37 = *(a1 + 304);
  v38 = *(a1 + 312);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 304) = v37;
  *(a2 + 312) = v38;
  v39 = *(a1 + 320);
  v40 = *(a1 + 328);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 320) = v39;
  *(a2 + 328) = v40;
  sub_1464C30((a1 + 336), a2 + 336);
  v41 = *(a1 + 456);
  *(a1 + 456) = *(a2 + 456);
  *(a2 + 456) = v41;
}

uint64_t sub_14C9FA8(uint64_t a1)
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

uint64_t sub_14C9FCC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E8140;
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
  *(a1 + 192) = &qword_278E990;
  *(a1 + 200) = &qword_278E990;
  *(a1 + 208) = &qword_278E990;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  return a1;
}

void sub_14CA078(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14CA0AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v41 = a1 + 16;
  *a1 = off_26E8140;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(a2 + 64);
    v7 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1568258((a1 + 48), v7, (v6 + 8), v5, **(a1 + 64) - *(a1 + 56));
    v8 = *(a1 + 56) + v5;
    *(a1 + 56) = v8;
    v9 = *(a1 + 64);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v10 = *(a2 + 80);
  if (v10)
  {
    v11 = *(a2 + 88);
    v12 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1566A98((a1 + 72), v12, (v11 + 8), v10, **(a1 + 88) - *(a1 + 80));
    v13 = *(a1 + 80) + v10;
    *(a1 + 80) = v13;
    v14 = *(a1 + 88);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v15 = *(a2 + 104);
  if (v15)
  {
    v16 = *(a2 + 112);
    v17 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1566A0C((a1 + 96), v17, (v16 + 8), v15, **(a1 + 112) - *(a1 + 104));
    v18 = *(a1 + 104) + v15;
    *(a1 + 104) = v18;
    v19 = *(a1 + 112);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v20 = *(a2 + 128);
  if (v20)
  {
    v21 = *(a2 + 136);
    v22 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_1566980((a1 + 120), v22, (v21 + 8), v20, **(a1 + 136) - *(a1 + 128));
    v23 = *(a1 + 128) + v20;
    *(a1 + 128) = v23;
    v24 = *(a1 + 136);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v25 = *(a2 + 152);
  if (v25)
  {
    v26 = *(a2 + 160);
    v27 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_1568370((a1 + 144), v27, (v26 + 8), v25, **(a1 + 160) - *(a1 + 152));
    v28 = *(a1 + 152) + v25;
    *(a1 + 152) = v28;
    v29 = *(a1 + 160);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v30 = *(a2 + 176);
  if (v30)
  {
    v31 = *(a2 + 184);
    v32 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_1201B48(a1 + 168, v32, (v31 + 8), v30, **(a1 + 184) - *(a1 + 176));
    v33 = *(a1 + 176) + v30;
    *(a1 + 176) = v33;
    v34 = *(a1 + 184);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 8);
  if (v35)
  {
    sub_1957EF4(v4, (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v41, a2 + 16);
  *(a1 + 192) = &qword_278E990;
  v36 = *(a2 + 40);
  if (v36)
  {
    v37 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v37 = *v37;
    }

    sub_194EA1C((a1 + 192), (*(a2 + 192) & 0xFFFFFFFFFFFFFFFELL), v37);
    v36 = *(a2 + 40);
  }

  *(a1 + 200) = &qword_278E990;
  if ((v36 & 2) != 0)
  {
    v38 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v38 = *v38;
    }

    sub_194EA1C((a1 + 200), (*(a2 + 200) & 0xFFFFFFFFFFFFFFFELL), v38);
    v36 = *(a2 + 40);
  }

  *(a1 + 208) = &qword_278E990;
  if ((v36 & 4) != 0)
  {
    v39 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v39 = *v39;
    }

    sub_194EA1C((a1 + 208), (*(a2 + 208) & 0xFFFFFFFFFFFFFFFELL), v39);
    v36 = *(a2 + 40);
  }

  if ((v36 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 216) = 0;
  if ((v36 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 224) = 0;
  if ((v36 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 232) = 0;
  if ((v36 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

void *sub_14CA658(void *a1)
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

  sub_14CA728(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 21);
  sub_1567FBC(a1 + 18);
  sub_1564BCC(a1 + 15);
  sub_1564C50(a1 + 12);
  sub_1564CD4(a1 + 9);
  sub_1567E30(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_14CA728(uint64_t a1)
{
  v3 = *(a1 + 192);
  v2 = (a1 + 192);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 200) != &qword_278E990)
  {
    sub_194E89C((a1 + 200));
  }

  result = (a1 + 208);
  if (*(a1 + 208) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_27741B0)
  {
    v5 = *(a1 + 216);
    if (v5)
    {
      sub_13F0C4C(v5);
      operator delete();
    }

    v6 = *(a1 + 224);
    if (v6)
    {
      sub_14C42A0(v6);
      operator delete();
    }

    v7 = *(a1 + 232);
    if (v7)
    {
      sub_154C050(v7);
      operator delete();
    }

    result = *(a1 + 240);
    if (result)
    {
      sub_14BA020(result);

      operator delete();
    }
  }

  return result;
}

void sub_14CA82C(void *a1)
{
  sub_14CA658(a1);

  operator delete();
}

uint64_t sub_14CA864(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_14C0B74(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      sub_14A05E0(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 104);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 112) + 8);
    do
    {
      v10 = *v9++;
      sub_14A1624(v10);
      --v8;
    }

    while (v8);
    *(a1 + 104) = 0;
  }

  v11 = *(a1 + 128);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 136) + 8);
    do
    {
      v13 = *v12++;
      sub_14A4824(v13);
      --v11;
    }

    while (v11);
    *(a1 + 128) = 0;
  }

  v14 = *(a1 + 152);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 160) + 8);
    do
    {
      v16 = *v15++;
      sub_14A52E8(v16);
      --v14;
    }

    while (v14);
    *(a1 + 152) = 0;
  }

  result = sub_12A41D0(a1 + 168);
  v18 = *(a1 + 40);
  if ((v18 & 0x7F) != 0)
  {
    if ((v18 & 1) == 0)
    {
      if ((v18 & 2) == 0)
      {
        goto LABEL_24;
      }

LABEL_34:
      v20 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v20 + 23) < 0)
      {
        **v20 = 0;
        *(v20 + 8) = 0;
        if ((v18 & 4) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        *v20 = 0;
        *(v20 + 23) = 0;
        if ((v18 & 4) != 0)
        {
          goto LABEL_38;
        }
      }

LABEL_25:
      if ((v18 & 8) == 0)
      {
        goto LABEL_26;
      }

LABEL_42:
      result = sub_13F0C88(*(a1 + 216));
      if ((v18 & 0x10) == 0)
      {
LABEL_27:
        if ((v18 & 0x20) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_44;
      }

LABEL_43:
      result = sub_14C43E4(*(a1 + 224));
      if ((v18 & 0x20) == 0)
      {
LABEL_28:
        if ((v18 & 0x40) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

LABEL_44:
      result = sub_14C9FA8(*(a1 + 232));
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_47;
      }

LABEL_45:
      v22 = *(a1 + 240);
      v23 = *(v22 + 8);
      result = v22 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v23)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_47;
    }

    v19 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v19 + 23) < 0)
    {
      **v19 = 0;
      *(v19 + 8) = 0;
      if ((v18 & 2) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      *v19 = 0;
      *(v19 + 23) = 0;
      if ((v18 & 2) != 0)
      {
        goto LABEL_34;
      }
    }

LABEL_24:
    if ((v18 & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_38:
    v21 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v21 + 23) < 0)
    {
      **v21 = 0;
      *(v21 + 8) = 0;
      if ((v18 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v21 = 0;
      *(v21 + 23) = 0;
      if ((v18 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_26:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

LABEL_47:
  v25 = *(a1 + 8);
  v24 = a1 + 8;
  *(v24 + 240) = 0;
  *(v24 + 32) = 0;
  if (v25)
  {

    return sub_1957EA8(v24);
  }

  return result;
}

uint64_t sub_14CAA90(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v85 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v85, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v85 + 1);
    v8 = **v85;
    if (**v85 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v85, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v85 + 2);
      }
    }

    *v85 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_122;
        }

        v11 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v14 = (v13 << 7) + v12;
        v12 = (v14 - 128);
        if (v13 < 0)
        {
          *v85 = sub_19587DC(v7, (v14 - 128));
          if (!*v85)
          {
            goto LABEL_146;
          }

          v12 = v82;
        }

        else
        {
          v11 = (v7 + 2);
LABEL_12:
          *v85 = v11;
        }

        if (v12 > 0x3C || ((1 << v12) & 0x1004010040100027) == 0)
        {
          v83 = *(a1 + 8);
          if (v83)
          {
            v84 = ((v83 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v84 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(1, v12, v84);
        }

        else
        {
          *(a1 + 40) |= 0x80u;
          *(a1 + 248) = v12;
        }

        goto LABEL_133;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_122;
        }

        v55 = v7 - 1;
        while (1)
        {
          v56 = v55 + 1;
          *v85 = v55 + 1;
          v57 = *(a1 + 64);
          if (v57 && (v58 = *(a1 + 56), v58 < *v57))
          {
            *(a1 + 56) = v58 + 1;
            v59 = *&v57[2 * v58 + 2];
          }

          else
          {
            v60 = sub_14D59A4(*(a1 + 48));
            v59 = sub_19593CC(a1 + 48, v60);
            v56 = *v85;
          }

          v55 = sub_2212320(a3, v59, v56);
          *v85 = v55;
          if (!v55)
          {
            goto LABEL_146;
          }

          if (*a3 <= v55 || *v55 != 18)
          {
            goto LABEL_133;
          }
        }

      case 3u:
        if (v8 != 26)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 1u;
        v43 = *(a1 + 8);
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v44 = *v44;
        }

        v45 = (a1 + 192);
        goto LABEL_105;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 8u;
        v46 = *(a1 + 216);
        if (!v46)
        {
          v47 = *(a1 + 8);
          v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
          if (v47)
          {
            v48 = *v48;
          }

          v46 = sub_13F1010(v48);
          *(a1 + 216) = v46;
          v7 = *v85;
        }

        v19 = sub_220B538(a3, v46, v7);
        goto LABEL_132;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_122;
        }

        v23 = v7 - 1;
        while (1)
        {
          v24 = v23 + 1;
          *v85 = v23 + 1;
          v25 = *(a1 + 88);
          if (v25 && (v26 = *(a1 + 80), v26 < *v25))
          {
            *(a1 + 80) = v26 + 1;
            v27 = *&v25[2 * v26 + 2];
          }

          else
          {
            sub_14BE058(*(a1 + 72));
            v27 = sub_19593CC(a1 + 72, v28);
            v24 = *v85;
          }

          v23 = sub_220E988(a3, v27, v24);
          *v85 = v23;
          if (!v23)
          {
            goto LABEL_146;
          }

          if (*a3 <= v23 || *v23 != 42)
          {
            goto LABEL_133;
          }
        }

      case 6u:
        if (v8 != 50)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 2u;
        v61 = *(a1 + 8);
        v44 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
        if (v61)
        {
          v44 = *v44;
        }

        v45 = (a1 + 200);
        goto LABEL_105;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 4u;
        v65 = *(a1 + 8);
        v44 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
        if (v65)
        {
          v44 = *v44;
        }

        v45 = (a1 + 208);
LABEL_105:
        v66 = sub_194DB04(v45, v44);
        v19 = sub_1958890(v66, *v85, a3);
        goto LABEL_132;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_122;
        }

        v49 = v7 - 1;
        while (1)
        {
          v50 = v49 + 1;
          *v85 = v49 + 1;
          v51 = *(a1 + 112);
          if (v51 && (v52 = *(a1 + 104), v52 < *v51))
          {
            *(a1 + 104) = v52 + 1;
            v53 = *&v51[2 * v52 + 2];
          }

          else
          {
            v54 = sub_14BE0EC(*(a1 + 96));
            v53 = sub_19593CC(a1 + 96, v54);
            v50 = *v85;
          }

          v49 = sub_220E8F8(a3, v53, v50);
          *v85 = v49;
          if (!v49)
          {
            goto LABEL_146;
          }

          if (*a3 <= v49 || *v49 != 66)
          {
            goto LABEL_133;
          }
        }

      case 9u:
        if (v8 != 74)
        {
          goto LABEL_122;
        }

        v71 = (v7 - 1);
        while (1)
        {
          v72 = (v71 + 1);
          *v85 = v71 + 1;
          v73 = *(a1 + 136);
          if (v73 && (v74 = *(a1 + 128), v74 < *v73))
          {
            *(a1 + 128) = v74 + 1;
            v75 = *&v73[2 * v74 + 2];
          }

          else
          {
            v76 = sub_14BE3A4(*(a1 + 120));
            v75 = sub_19593CC(a1 + 120, v76);
            v72 = *v85;
          }

          v71 = sub_220E868(a3, v75, v72);
          *v85 = v71;
          if (!v71)
          {
            goto LABEL_146;
          }

          if (*a3 <= v71 || *v71 != 74)
          {
            goto LABEL_133;
          }
        }

      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_122;
        }

        v37 = (v7 - 1);
        while (1)
        {
          v38 = (v37 + 1);
          *v85 = v37 + 1;
          v39 = *(a1 + 160);
          if (v39 && (v40 = *(a1 + 152), v40 < *v39))
          {
            *(a1 + 152) = v40 + 1;
            v41 = *&v39[2 * v40 + 2];
          }

          else
          {
            sub_14BE448(*(a1 + 144));
            v41 = sub_19593CC(a1 + 144, v42);
            v38 = *v85;
          }

          v37 = sub_2213640(a3, v41, v38);
          *v85 = v37;
          if (!v37)
          {
            goto LABEL_146;
          }

          if (*a3 <= v37 || *v37 != 82)
          {
            goto LABEL_133;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 0x10u;
        v67 = *(a1 + 224);
        if (!v67)
        {
          v68 = *(a1 + 8);
          v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
          if (v68)
          {
            v69 = *v69;
          }

          sub_14D5A00(v69);
          v67 = v70;
          *(a1 + 224) = v70;
          v7 = *v85;
        }

        v19 = sub_22132E0(a3, v67, v7);
        goto LABEL_132;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_122;
        }

        v5 |= 0x100u;
        v20 = (v7 + 1);
        v21 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v22 = *v20;
        v21 = v21 + (v22 << 7) - 128;
        if (v22 < 0)
        {
          v80 = sub_1958770(v7, v21);
          *v85 = v80;
          *(a1 + 252) = v81;
          if (!v80)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v20 = (v7 + 2);
LABEL_28:
          *v85 = v20;
          *(a1 + 252) = v21;
        }

        goto LABEL_133;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_122;
        }

        v29 = (v7 - 1);
        while (1)
        {
          v30 = (v29 + 1);
          *v85 = v29 + 1;
          v31 = *(a1 + 184);
          if (v31 && (v32 = *(a1 + 176), v32 < *v31))
          {
            *(a1 + 176) = v32 + 1;
            v33 = *&v31[2 * v32 + 2];
          }

          else
          {
            v34 = *(a1 + 168);
            if (!v34)
            {
              operator new();
            }

            *v36 = v35;
            v36[1] = sub_195A650;
            *v35 = 0;
            v35[1] = 0;
            v35[2] = 0;
            v33 = sub_19593CC(a1 + 168, v35);
            v30 = *v85;
          }

          v29 = sub_1958890(v33, v30, a3);
          *v85 = v29;
          if (!v29)
          {
            goto LABEL_146;
          }

          if (*a3 <= v29 || *v29 != 106)
          {
            goto LABEL_133;
          }
        }

      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 0x20u;
        v62 = *(a1 + 232);
        if (!v62)
        {
          v63 = *(a1 + 8);
          v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
          if (v63)
          {
            v64 = *v64;
          }

          v62 = sub_155248C(v64);
          *(a1 + 232) = v62;
          v7 = *v85;
        }

        v19 = sub_22136D0(a3, v62, v7);
        goto LABEL_132;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_122;
        }

        *(a1 + 40) |= 0x40u;
        v16 = *(a1 + 240);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_14BF800(v18);
          *(a1 + 240) = v16;
          v7 = *v85;
        }

        v19 = sub_2213760(a3, v16, v7);
        goto LABEL_132;
      default:
LABEL_122:
        if (v8)
        {
          v77 = (v8 & 7) == 4;
        }

        else
        {
          v77 = 1;
        }

        if (!v77)
        {
          if (v8 - 8000 < 0x648 || v8 - 80008 <= 0x31F)
          {
            v19 = sub_19525AC((a1 + 16), v8, v7, &off_27741B0, (a1 + 8), a3);
          }

          else
          {
            v78 = *(a1 + 8);
            if (v78)
            {
              v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v79 = sub_11F1920((a1 + 8));
              v7 = *v85;
            }

            v19 = sub_1952690(v8, v79, v7, a3);
          }

LABEL_132:
          *v85 = v19;
          if (!v19)
          {
            goto LABEL_146;
          }

LABEL_133:
          if (sub_195ADC0(a3, v85, a3[11].i32[1]))
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
LABEL_146:
          *v85 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v85;
    }
  }
}

char *sub_14CB33C(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 248);
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

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 44);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_14C1D0C(v13, v15, a3);
    }
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 3, *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 216);
    *v6 = 34;
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

    v6 = sub_13F0E14(v16, v18, a3);
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v21 = *(*(a1 + 88) + 8 * j + 8);
      *v6 = 42;
      v22 = *(v21 + 20);
      v6[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v6 + 1);
      }

      else
      {
        v23 = v6 + 2;
      }

      v6 = sub_14A0B70(v21, v23, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    v6 = sub_128AEEC(a3, 6, *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  if ((v5 & 4) != 0)
  {
    v6 = sub_128AEEC(a3, 7, *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL, v6);
  }

  v24 = *(a1 + 104);
  if (v24)
  {
    for (k = 0; k != v24; ++k)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v26 = *(*(a1 + 112) + 8 * k + 8);
      *v6 = 66;
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

      v6 = sub_14A196C(v26, v28, a3);
    }
  }

  v29 = *(a1 + 128);
  if (v29)
  {
    for (m = 0; m != v29; ++m)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v31 = *(*(a1 + 136) + 8 * m + 8);
      *v6 = 74;
      v32 = *(v31 + 20);
      v6[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v6 + 1);
      }

      else
      {
        v33 = v6 + 2;
      }

      v6 = sub_14A4BF0(v31, v33, a3);
    }
  }

  v34 = *(a1 + 152);
  if (v34)
  {
    for (n = 0; n != v34; ++n)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v36 = *(*(a1 + 160) + 8 * n + 8);
      *v6 = 82;
      v37 = *(v36 + 20);
      v6[1] = v37;
      if (v37 > 0x7F)
      {
        v38 = sub_19575D0(v37, v6 + 1);
      }

      else
      {
        v38 = v6 + 2;
      }

      v6 = sub_14A5550(v36, v38, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v39 = *(a1 + 224);
    *v6 = 90;
    v40 = *(v39 + 20);
    v6[1] = v40;
    if (v40 > 0x7F)
    {
      v41 = sub_19575D0(v40, v6 + 1);
    }

    else
    {
      v41 = v6 + 2;
    }

    v6 = sub_14C4AD4(v39, v41, a3);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v43 = *(a1 + 252);
    *v6 = 96;
    v6[1] = v43;
    if (v43 > 0x7F)
    {
      v6[1] = v43 | 0x80;
      v44 = v43 >> 7;
      v6[2] = v43 >> 7;
      v42 = v6 + 3;
      if (v43 >= 0x4000)
      {
        LOBYTE(v45) = v6[2];
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
      v42 = v6 + 2;
    }
  }

  else
  {
    v42 = v6;
  }

  v47 = *(a1 + 176);
  if (v47 >= 1)
  {
    v48 = 8;
    do
    {
      v49 = *(*(a1 + 184) + v48);
      v50 = *(v49 + 23);
      if (v50 < 0 && (v50 = v49[1], v50 > 127) || (*a3 - v42 + 14) < v50)
      {
        v42 = sub_1957480(a3, 13, v49, v42);
      }

      else
      {
        *v42 = 106;
        v42[1] = v50;
        if (*(v49 + 23) < 0)
        {
          v49 = *v49;
        }

        v51 = v42 + 2;
        memcpy(v51, v49, v50);
        v42 = &v51[v50];
      }

      v48 += 8;
      --v47;
    }

    while (v47);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v52 = *(a1 + 232);
    *v42 = 114;
    v53 = *(v52 + 20);
    v42[1] = v53;
    if (v53 > 0x7F)
    {
      v54 = sub_19575D0(v53, v42 + 1);
    }

    else
    {
      v54 = v42 + 2;
    }

    v42 = sub_154C2E0(v52, v54, a3);
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v55 = *(a1 + 240);
    *v42 = 122;
    v56 = *(v55 + 20);
    v42[1] = v56;
    if (v56 > 0x7F)
    {
      v57 = sub_19575D0(v56, v42 + 1);
    }

    else
    {
      v57 = v42 + 2;
    }

    v42 = sub_14BA25C(v55, v57, a3);
  }

  if (*(a1 + 26))
  {
    v42 = sub_1953428(a1 + 16, 1000, 10101, v42, a3);
  }

  v58 = *(a1 + 8);
  if ((v58 & 1) == 0)
  {
    return v42;
  }

  v60 = v58 & 0xFFFFFFFFFFFFFFFCLL;
  v61 = *(v60 + 31);
  if (v61 < 0)
  {
    v62 = *(v60 + 8);
    v61 = *(v60 + 16);
  }

  else
  {
    v62 = (v60 + 8);
  }

  if ((*a3 - v42) >= v61)
  {
    v63 = v61;
    memcpy(v42, v62, v61);
    v42 += v63;
    return v42;
  }

  return sub_1957130(a3, v62, v61, v42);
}

uint64_t sub_14CBA38(uint64_t a1)
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
      v9 = sub_14C2C70(v8);
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
      v16 = sub_14A0FE0(v15);
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
      v23 = sub_14A1BA4(v22);
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
      v30 = sub_14A4EC0(v29);
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
      v37 = sub_14A5700(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(a1 + 176);
  v39 = v32 + v38;
  if (v38 >= 1)
  {
    v40 = (*(a1 + 184) + 8);
    do
    {
      v41 = *v40++;
      v42 = *(v41 + 23);
      v43 = *(v41 + 8);
      if ((v42 & 0x80u) == 0)
      {
        v43 = v42;
      }

      v39 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      --v38;
    }

    while (v38);
  }

  v44 = *(a1 + 40);
  if (v44)
  {
    if (v44)
    {
      v50 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
      v51 = *(v50 + 23);
      v52 = *(v50 + 8);
      if ((v51 & 0x80u) == 0)
      {
        v52 = v51;
      }

      v39 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v44 & 2) == 0)
      {
LABEL_39:
        if ((v44 & 4) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_59;
      }
    }

    else if ((v44 & 2) == 0)
    {
      goto LABEL_39;
    }

    v53 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
    v54 = *(v53 + 23);
    v55 = *(v53 + 8);
    if ((v54 & 0x80u) == 0)
    {
      v55 = v54;
    }

    v39 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 4) == 0)
    {
LABEL_40:
      if ((v44 & 8) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_62;
    }

LABEL_59:
    v56 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v57 = *(v56 + 23);
    v58 = *(v56 + 8);
    if ((v57 & 0x80u) == 0)
    {
      v58 = v57;
    }

    v39 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 8) == 0)
    {
LABEL_41:
      if ((v44 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_63;
    }

LABEL_62:
    v59 = sub_13F0F3C(*(a1 + 216));
    v39 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 0x10) == 0)
    {
LABEL_42:
      if ((v44 & 0x20) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_64;
    }

LABEL_63:
    v60 = sub_14C4FF8(*(a1 + 224));
    v39 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 0x20) == 0)
    {
LABEL_43:
      if ((v44 & 0x40) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_65;
    }

LABEL_64:
    v61 = sub_154C490(*(a1 + 232));
    v39 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 0x40) == 0)
    {
LABEL_44:
      if ((v44 & 0x80) == 0)
      {
        goto LABEL_49;
      }

LABEL_45:
      v45 = *(a1 + 248);
      v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v45 >= 0)
      {
        v47 = v46;
      }

      else
      {
        v47 = 11;
      }

      v39 += v47;
      goto LABEL_49;
    }

LABEL_65:
    v62 = sub_14BA384(*(a1 + 240));
    v39 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v44 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

LABEL_49:
  if ((v44 & 0x100) != 0)
  {
    v39 += ((9 * (__clz(*(a1 + 252) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v48 = *(a1 + 8);
  if (v48)
  {
    v63 = v48 & 0xFFFFFFFFFFFFFFFCLL;
    v64 = *((v48 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v64 < 0)
    {
      v64 = *(v63 + 16);
    }

    v39 += v64;
  }

  *(a1 + 44) = v39;
  return v39;
}

void sub_14CBE90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1568258((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_1566A98((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    sub_1566A0C((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
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
    sub_1566980((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
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
    sub_1568370((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
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
    sub_1201B48(a1 + 168, v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 40);
  if (v34)
  {
    if (v34)
    {
      v37 = *(a2 + 192);
      *(a1 + 40) |= 1u;
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      sub_194EA1C((a1 + 192), (v37 & 0xFFFFFFFFFFFFFFFELL), v39);
      if ((v34 & 2) == 0)
      {
LABEL_22:
        if ((v34 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_42;
      }
    }

    else if ((v34 & 2) == 0)
    {
      goto LABEL_22;
    }

    v40 = *(a2 + 200);
    *(a1 + 40) |= 2u;
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    sub_194EA1C((a1 + 200), (v40 & 0xFFFFFFFFFFFFFFFELL), v42);
    if ((v34 & 4) == 0)
    {
LABEL_23:
      if ((v34 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_45;
    }

LABEL_42:
    v43 = *(a2 + 208);
    *(a1 + 40) |= 4u;
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    sub_194EA1C((a1 + 208), (v43 & 0xFFFFFFFFFFFFFFFELL), v45);
    if ((v34 & 8) == 0)
    {
LABEL_24:
      if ((v34 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(a1 + 40) |= 8u;
    v46 = *(a1 + 216);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      v46 = sub_13F1010(v48);
      *(a1 + 216) = v46;
    }

    if (*(a2 + 216))
    {
      v49 = *(a2 + 216);
    }

    else
    {
      v49 = &off_276F3A8;
    }

    sub_12B9D50(v46, v49);
    if ((v34 & 0x10) == 0)
    {
LABEL_25:
      if ((v34 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_61;
    }

LABEL_53:
    *(a1 + 40) |= 0x10u;
    v50 = *(a1 + 224);
    if (!v50)
    {
      v51 = *(a1 + 8);
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51)
      {
        v52 = *v52;
      }

      sub_14D5A00(v52);
      *(a1 + 224) = v50;
    }

    if (*(a2 + 224))
    {
      v53 = *(a2 + 224);
    }

    else
    {
      v53 = &off_2773F38;
    }

    sub_14C52AC(v50, v53);
    if ((v34 & 0x20) == 0)
    {
LABEL_26:
      if ((v34 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_69;
    }

LABEL_61:
    *(a1 + 40) |= 0x20u;
    v54 = *(a1 + 232);
    if (!v54)
    {
      v55 = *(a1 + 8);
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
      if (v55)
      {
        v56 = *v56;
      }

      v54 = sub_155248C(v56);
      *(a1 + 232) = v54;
    }

    if (*(a2 + 232))
    {
      v57 = *(a2 + 232);
    }

    else
    {
      v57 = &off_2776F70;
    }

    sub_121721C(v54, v57);
    if ((v34 & 0x40) == 0)
    {
LABEL_27:
      if ((v34 & 0x80) == 0)
      {
LABEL_29:
        *(a1 + 40) |= v34;
        goto LABEL_30;
      }

LABEL_28:
      *(a1 + 248) = *(a2 + 248);
      goto LABEL_29;
    }

LABEL_69:
    *(a1 + 40) |= 0x40u;
    v58 = *(a1 + 240);
    if (!v58)
    {
      v59 = *(a1 + 8);
      v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
      if (v59)
      {
        v60 = *v60;
      }

      v58 = sub_14BF800(v60);
      *(a1 + 240) = v58;
    }

    if (*(a2 + 240))
    {
      v61 = *(a2 + 240);
    }

    else
    {
      v61 = &off_2773C88;
    }

    sub_12B9D50(v58, v61);
    if ((v34 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_30:
  if ((v34 & 0x100) != 0)
  {
    v35 = *(a2 + 252);
    *(a1 + 40) |= 0x100u;
    *(a1 + 252) = v35;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v36 = *(a2 + 8);
  if (v36)
  {

    sub_1957EF4((a1 + 8), (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14CC34C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_14CA864(a1);

    sub_14CBE90(a1, a2);
  }
}

uint64_t sub_14CC398(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_14C3CB8(*(*(a1 + 64) + 8 * v3));
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
      v8 = sub_14A14B0(*(*(a1 + 88) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    result = sub_12D45E0(a1 + 96);
    if (result)
    {
      result = sub_148A2D8(a1 + 120);
      if (result)
      {
        if ((*(a1 + 40) & 0x10) == 0)
        {
          return 1;
        }

        result = sub_14C55B0(*(a1 + 224));
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

__n128 sub_14CC448(uint64_t a1, uint64_t a2)
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
  v20 = *(a1 + 168);
  v21 = *(a1 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v20;
  *(a2 + 176) = v21;
  v22 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v22;
  v23 = *(a2 + 192);
  *(a2 + 192) = *(a1 + 192);
  *(a1 + 192) = v23;
  v24 = *(a2 + 200);
  *(a2 + 200) = *(a1 + 200);
  *(a1 + 200) = v24;
  v25 = *(a2 + 208);
  *(a2 + 208) = *(a1 + 208);
  *(a1 + 208) = v25;
  v26 = *(a1 + 216);
  v27 = *(a1 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v26;
  *(a2 + 224) = v27;
  v28 = *(a1 + 232);
  v29 = *(a1 + 240);
  result = *(a2 + 232);
  *(a1 + 232) = result;
  *(a2 + 232) = v28;
  *(a2 + 240) = v29;
  v31 = *(a1 + 248);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = v31;
  return result;
}

uint64_t sub_14CC5C8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_16E4E44(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  v6 = *(a1 + 40);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      result = sub_153FDC8(*(a1 + 72));
    }

    if ((v6 & 2) != 0)
    {
      result = sub_16E48B0(*(a1 + 80));
    }
  }

  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 32) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_14CC674(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_14;
  }

  if (v2)
  {
    result = sub_15498D0(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      result = sub_154B55C(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
        goto LABEL_12;
      }

LABEL_10:
      v3 = *(v1 + 48);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }

      goto LABEL_12;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_154AABC(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x10) != 0)
  {
    result = sub_1479D14(*(v1 + 56));
  }

LABEL_14:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 64) = 0;
  }

  if ((v2 & 0x700) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 2;
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

uint64_t sub_14CC748(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26E81C0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a2;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = &qword_278E990;
  *(a1 + 256) = &qword_278E990;
  *(a1 + 264) = &qword_278E990;
  *(a1 + 272) = &qword_278E990;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 800000;
  return a1;
}

void sub_14CC820(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_14CC854(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v54 = (a1 + 8);
  *(a1 + 16) = 0;
  v53 = a1 + 16;
  *a1 = off_26E81C0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = *(a2 + 64);
  if (v5)
  {
    v6 = *(a2 + 72);
    v7 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_1449ED8(v4, v7, (v6 + 8), v5, **(a1 + 72) - *(a1 + 64));
    v8 = *(a1 + 64) + v5;
    *(a1 + 64) = v8;
    v9 = *(a1 + 72);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v10 = *(a2 + 88);
  if (v10)
  {
    v11 = *(a2 + 96);
    v12 = sub_19592E8(a1 + 80, v10);
    sub_144D55C((a1 + 80), v12, (v11 + 8), v10, **(a1 + 96) - *(a1 + 88));
    v13 = *(a1 + 88) + v10;
    *(a1 + 88) = v13;
    v14 = *(a1 + 96);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v15 = *(a2 + 112);
  if (v15)
  {
    v16 = *(a2 + 120);
    v17 = sub_19592E8(a1 + 104, v15);
    sub_1201B48(a1 + 104, v17, (v16 + 8), v15, **(a1 + 120) - *(a1 + 112));
    v18 = *(a1 + 112) + v15;
    *(a1 + 112) = v18;
    v19 = *(a1 + 120);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v20 = *(a2 + 136);
  if (v20)
  {
    v21 = *(a2 + 144);
    v22 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1409AF8((a1 + 128), v22, (v21 + 8), v20, **(a1 + 144) - *(a1 + 136));
    v23 = *(a1 + 136) + v20;
    *(a1 + 136) = v23;
    v24 = *(a1 + 144);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v25 = *(a2 + 160);
  if (v25)
  {
    v26 = *(a2 + 168);
    v27 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_144D55C((a1 + 152), v27, (v26 + 8), v25, **(a1 + 168) - *(a1 + 160));
    v28 = *(a1 + 160) + v25;
    *(a1 + 160) = v28;
    v29 = *(a1 + 168);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v30 = *(a2 + 184);
  if (v30)
  {
    v31 = *(a2 + 192);
    v32 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_12E5E34((a1 + 176), v32, (v31 + 8), v30, **(a1 + 192) - *(a1 + 184));
    v33 = *(a1 + 184) + v30;
    *(a1 + 184) = v33;
    v34 = *(a1 + 192);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v35 = *(a2 + 208);
  if (v35)
  {
    v36 = *(a2 + 216);
    v37 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_1201B48(a1 + 200, v37, (v36 + 8), v35, **(a1 + 216) - *(a1 + 208));
    v38 = *(a1 + 208) + v35;
    *(a1 + 208) = v38;
    v39 = *(a1 + 216);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v40 = *(a2 + 232);
  if (v40)
  {
    v41 = *(a2 + 240);
    v42 = sub_19592E8(a1 + 224, *(a2 + 232));
    sub_1201B48(a1 + 224, v42, (v41 + 8), v40, **(a1 + 240) - *(a1 + 232));
    v43 = *(a1 + 232) + v40;
    *(a1 + 232) = v43;
    v44 = *(a1 + 240);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 8);
  if (v45)
  {
    sub_1957EF4(v54, (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v53, a2 + 16);
  *(a1 + 248) = &qword_278E990;
  v46 = *(a2 + 40);
  if (v46)
  {
    v47 = (*v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v54)
    {
      v47 = *v47;
    }

    sub_194EA1C((a1 + 248), (*(a2 + 248) & 0xFFFFFFFFFFFFFFFELL), v47);
    v46 = *(a2 + 40);
  }

  *(a1 + 256) = &qword_278E990;
  if ((v46 & 2) != 0)
  {
    v48 = (*v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v54)
    {
      v48 = *v48;
    }

    sub_194EA1C((a1 + 256), (*(a2 + 256) & 0xFFFFFFFFFFFFFFFELL), v48);
    v46 = *(a2 + 40);
  }

  *(a1 + 264) = &qword_278E990;
  if ((v46 & 4) != 0)
  {
    v49 = (*v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v54)
    {
      v49 = *v49;
    }

    sub_194EA1C((a1 + 264), (*(a2 + 264) & 0xFFFFFFFFFFFFFFFELL), v49);
    v46 = *(a2 + 40);
  }

  *(a1 + 272) = &qword_278E990;
  if ((v46 & 8) != 0)
  {
    v50 = (*v54 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v54)
    {
      v50 = *v50;
    }

    sub_194EA1C((a1 + 272), (*(a2 + 272) & 0xFFFFFFFFFFFFFFFELL), v50);
    v46 = *(a2 + 40);
  }

  if ((v46 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 280) = 0;
  if ((v46 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 288) = 0;
  if ((v46 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 296) = 0;
  if ((v46 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 304) = 0;
  if ((v46 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 312) = 0;
  if ((v46 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 320) = 0;
  if ((v46 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 328) = 0;
  if ((v46 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v46 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v46 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v46 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v46 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v46 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v46 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v46 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  if ((v46 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 400) = 0;
  if ((v46 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 408) = 0;
  if ((v46 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 416) = 0;
  v51 = *(a2 + 424);
  *(a1 + 436) = *(a2 + 436);
  *(a1 + 424) = v51;
  return a1;
}

void *sub_14CD33C(void *a1)
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

  sub_14CD41C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 28);
  sub_1956AFC(a1 + 25);
  sub_12E5CA0(a1 + 22);
  sub_144D2B0(a1 + 19);
  sub_140996C(a1 + 16);
  sub_1956AFC(a1 + 13);
  sub_144D2B0(a1 + 10);
  sub_1449E54(a1 + 7);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_14CD41C(uint64_t a1)
{
  v3 = *(a1 + 248);
  result = (a1 + 248);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (*(a1 + 256) != &qword_278E990)
  {
    sub_194E89C((a1 + 256));
  }

  if (*(a1 + 264) != &qword_278E990)
  {
    sub_194E89C((a1 + 264));
  }

  if (*(a1 + 272) != &qword_278E990)
  {
    sub_194E89C((a1 + 272));
  }

  if (a1 != &off_27742B0)
  {
    v4 = *(a1 + 280);
    if (v4)
    {
      sub_1491354(v4);
      operator delete();
    }

    v5 = *(a1 + 288);
    if (v5)
    {
      sub_1548DBC(v5);
      operator delete();
    }

    if (*(a1 + 296))
    {
      sub_16EE080();
      operator delete();
    }

    v6 = *(a1 + 304);
    if (v6)
    {
      sub_1550360(v6);
      operator delete();
    }

    v7 = *(a1 + 312);
    if (v7)
    {
      sub_154CE10(v7);
      operator delete();
    }

    v8 = *(a1 + 320);
    if (v8)
    {
      sub_14AB180(v8);
      operator delete();
    }

    v9 = *(a1 + 328);
    if (v9)
    {
      sub_14AE124(v9);
      operator delete();
    }

    v10 = *(a1 + 336);
    if (v10)
    {
      sub_14AF234(v10);
      operator delete();
    }

    v11 = *(a1 + 344);
    if (v11)
    {
      sub_1494DF0(v11);
      operator delete();
    }

    v12 = *(a1 + 352);
    if (v12)
    {
      sub_153875C(v12);
      operator delete();
    }

    if (*(a1 + 360))
    {
      sub_16E8374();
      operator delete();
    }

    if (*(a1 + 368))
    {
      sub_13F0544();
      operator delete();
    }

    v13 = *(a1 + 376);
    if (v13)
    {
      sub_14AD374(v13);
      operator delete();
    }

    v14 = *(a1 + 384);
    if (v14)
    {
      sub_14754E4(v14);
      operator delete();
    }

    v15 = *(a1 + 392);
    if (v15)
    {
      sub_14B4E48(v15);
      operator delete();
    }

    if (*(a1 + 400))
    {
      sub_16F4BC4();
      operator delete();
    }

    v16 = *(a1 + 408);
    if (v16)
    {
      sub_14D08A0(v16);
      operator delete();
    }

    result = *(a1 + 416);
    if (result)
    {
      sub_1477220(result);

      operator delete();
    }
  }

  return result;
}

void sub_14CD6FC(void *a1)
{
  sub_14CD33C(a1);

  operator delete();
}

uint64_t sub_14CD734(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 72) + 8);
    do
    {
      v4 = *v3++;
      sub_14CC5C8(v4);
      --v2;
    }

    while (v2);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 88);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 96) + 8);
    do
    {
      v7 = *v6++;
      sub_14CC674(v7);
      --v5;
    }

    while (v5);
    *(a1 + 88) = 0;
  }

  sub_12A41D0(a1 + 104);
  v8 = *(a1 + 136);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 144) + 8);
    do
    {
      v10 = *v9++;
      sub_16E48B0(v10);
      --v8;
    }

    while (v8);
    *(a1 + 136) = 0;
  }

  v11 = *(a1 + 160);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 168) + 8);
    do
    {
      v13 = *v12++;
      sub_14CC674(v13);
      --v11;
    }

    while (v11);
    *(a1 + 160) = 0;
  }

  v14 = *(a1 + 184);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 192) + 8);
    do
    {
      v16 = *v15++;
      sub_16EEC04(v16);
      --v14;
    }

    while (v14);
    *(a1 + 184) = 0;
  }

  sub_12A41D0(a1 + 200);
  result = sub_12A41D0(a1 + 224);
  v18 = *(a1 + 40);
  if (!v18)
  {
    goto LABEL_31;
  }

  if ((v18 & 1) == 0)
  {
    if ((v18 & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_76:
    v24 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v24 + 23) < 0)
    {
      **v24 = 0;
      *(v24 + 8) = 0;
      if ((v18 & 4) != 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      *v24 = 0;
      *(v24 + 23) = 0;
      if ((v18 & 4) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_25:
    if ((v18 & 8) == 0)
    {
      goto LABEL_26;
    }

LABEL_84:
    v26 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v26 + 23) < 0)
    {
      **v26 = 0;
      *(v26 + 8) = 0;
      if ((v18 & 0x10) != 0)
      {
        goto LABEL_88;
      }
    }

    else
    {
      *v26 = 0;
      *(v26 + 23) = 0;
      if ((v18 & 0x10) != 0)
      {
        goto LABEL_88;
      }
    }

LABEL_27:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_89:
    result = sub_14CC5C8(*(a1 + 288));
    if ((v18 & 0x40) == 0)
    {
LABEL_29:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_90;
  }

  v19 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v19 + 23) < 0)
  {
    **v19 = 0;
    *(v19 + 8) = 0;
    if ((v18 & 2) != 0)
    {
      goto LABEL_76;
    }
  }

  else
  {
    *v19 = 0;
    *(v19 + 23) = 0;
    if ((v18 & 2) != 0)
    {
      goto LABEL_76;
    }
  }

LABEL_24:
  if ((v18 & 4) == 0)
  {
    goto LABEL_25;
  }

LABEL_80:
  v25 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v25 + 23) < 0)
  {
    **v25 = 0;
    *(v25 + 8) = 0;
    if ((v18 & 8) != 0)
    {
      goto LABEL_84;
    }
  }

  else
  {
    *v25 = 0;
    *(v25 + 23) = 0;
    if ((v18 & 8) != 0)
    {
      goto LABEL_84;
    }
  }

LABEL_26:
  if ((v18 & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_88:
  result = sub_1491400(*(a1 + 280));
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_89;
  }

LABEL_28:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_90:
  result = sub_16EE0BC(*(a1 + 296));
  if ((v18 & 0x80) != 0)
  {
LABEL_30:
    result = sub_14C5A04(*(a1 + 304));
  }

LABEL_31:
  if ((v18 & 0xFF00) == 0)
  {
    goto LABEL_41;
  }

  if ((v18 & 0x100) != 0)
  {
    result = sub_14CC674(*(a1 + 312));
    if ((v18 & 0x200) == 0)
    {
LABEL_34:
      if ((v18 & 0x400) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_53;
    }
  }

  else if ((v18 & 0x200) == 0)
  {
    goto LABEL_34;
  }

  result = sub_149200C(*(a1 + 320));
  if ((v18 & 0x400) == 0)
  {
LABEL_35:
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = sub_1492094(*(a1 + 328));
  if ((v18 & 0x800) == 0)
  {
LABEL_36:
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = sub_1492110(*(a1 + 336));
  if ((v18 & 0x1000) == 0)
  {
LABEL_37:
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = sub_1494E9C(*(a1 + 344));
  if ((v18 & 0x2000) == 0)
  {
LABEL_38:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = sub_14C56B8(*(a1 + 352));
  if ((v18 & 0x4000) == 0)
  {
LABEL_39:
    if ((v18 & 0x8000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_57:
  result = sub_16E48B0(*(a1 + 360));
  if ((v18 & 0x8000) != 0)
  {
LABEL_40:
    result = sub_13F0580(*(a1 + 368));
  }

LABEL_41:
  if ((v18 & 0x3F0000) == 0)
  {
    goto LABEL_67;
  }

  if ((v18 & 0x10000) != 0)
  {
    result = sub_1492188(*(a1 + 376));
    if ((v18 & 0x20000) == 0)
    {
LABEL_44:
      if ((v18 & 0x40000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }
  }

  else if ((v18 & 0x20000) == 0)
  {
    goto LABEL_44;
  }

  result = sub_147559C(*(a1 + 384));
  if ((v18 & 0x40000) == 0)
  {
LABEL_45:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_46;
    }

LABEL_62:
    result = sub_16F4C00(*(a1 + 400));
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_65;
    }

LABEL_63:
    v20 = *(a1 + 408);
    v21 = *(v20 + 8);
    result = v20 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v21)
    {
      result = sub_1957EA8(result);
    }

    goto LABEL_65;
  }

LABEL_61:
  result = sub_14B4FA4(*(a1 + 392));
  if ((v18 & 0x80000) != 0)
  {
    goto LABEL_62;
  }

LABEL_46:
  if ((v18 & 0x100000) != 0)
  {
    goto LABEL_63;
  }

LABEL_65:
  if ((v18 & 0x200000) != 0)
  {
    result = sub_14772E0(*(a1 + 416));
  }

LABEL_67:
  if ((v18 & 0xC00000) != 0)
  {
    *(a1 + 428) = 0;
    *(a1 + 424) = 0;
  }

  if (HIBYTE(v18))
  {
    *(a1 + 444) = 0;
    *(a1 + 437) = 0;
    *(a1 + 429) = 0;
  }

  v23 = *(a1 + 8);
  v22 = a1 + 8;
  *(v22 + 440) = 800000;
  *(v22 + 32) = 0;
  if (v23)
  {

    return sub_1957EA8(v22);
  }

  return result;
}

uint64_t sub_14CDAC4(uint64_t a1)
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

char *sub_14CDB84(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 0x400000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 424);
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

    v11 = *(a1 + 280);
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

    v6 = sub_149160C(v11, v13, a3);
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v14 = *(a1 + 288);
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

    v6 = sub_1549158(v14, v16, a3);
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v19 = *(*(a1 + 72) + 8 * i + 8);
      *v6 = 34;
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

      v6 = sub_1549158(v19, v21, a3);
    }
  }

  if ((v5 & 0x800000) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v22 = *(a1 + 428);
    *v6 = 40;
    v6[1] = v22;
    v6 += 2;
    if ((v5 & 0x1000000) == 0)
    {
LABEL_34:
      if ((v5 & 0x2000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 0x1000000) == 0)
  {
    goto LABEL_34;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v23 = *(a1 + 429);
  *v6 = 48;
  v6[1] = v23;
  v6 += 2;
  if ((v5 & 0x2000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v24 = *(a1 + 430);
  *v6 = 56;
  v6[1] = v24;
  v6 += 2;
  if ((v5 & 0x40) != 0)
  {
LABEL_46:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v25 = *(a1 + 296);
    *v6 = 66;
    v26 = *(v25 + 20);
    v6[1] = v26;
    if (v26 > 0x7F)
    {
      v27 = sub_19575D0(v26, v6 + 1);
    }

    else
    {
      v27 = v6 + 2;
    }

    v6 = sub_16EE2C4(v25, v27, a3);
  }

LABEL_52:
  if (*(a1 + 44))
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v29 = *(a1 + 448);
    *v6 = 72;
    v6[1] = v29;
    if (v29 > 0x7F)
    {
      v6[1] = v29 | 0x80;
      v30 = v29 >> 7;
      v6[2] = v29 >> 7;
      v28 = v6 + 3;
      if (v29 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v28 - 1) = v6 | 0x80;
          LODWORD(v6) = v30 >> 7;
          *v28++ = v30 >> 7;
          v31 = v30 >> 14;
          v30 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v28 = v6 + 2;
    }
  }

  else
  {
    v28 = v6;
  }

  v32 = *(a1 + 40);
  if ((v32 & 0x80) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v33 = *(a1 + 304);
    *v28 = 82;
    v34 = *(v33 + 64);
    v28[1] = v34;
    if (v34 > 0x7F)
    {
      v35 = sub_19575D0(v34, v28 + 1);
    }

    else
    {
      v35 = v28 + 2;
    }

    v28 = sub_15506E0(v33, v35, a3);
  }

  if ((v32 & 0x100) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v36 = *(a1 + 312);
    *v28 = 90;
    v37 = *(v36 + 20);
    v28[1] = v37;
    if (v37 > 0x7F)
    {
      v38 = sub_19575D0(v37, v28 + 1);
    }

    else
    {
      v38 = v28 + 2;
    }

    v28 = sub_154D580(v36, v38, a3);
  }

  v39 = *(a1 + 88);
  if (v39)
  {
    for (j = 0; j != v39; ++j)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v41 = *(*(a1 + 96) + 8 * j + 8);
      *v28 = 98;
      v42 = *(v41 + 20);
      v28[1] = v42;
      if (v42 > 0x7F)
      {
        v43 = sub_19575D0(v42, v28 + 1);
      }

      else
      {
        v43 = v28 + 2;
      }

      v28 = sub_154D580(v41, v43, a3);
    }
  }

  if ((v32 & 0x200) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v51 = *(a1 + 320);
    *v28 = 106;
    v52 = *(v51 + 20);
    v28[1] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v28 + 1);
    }

    else
    {
      v53 = v28 + 2;
    }

    v28 = sub_14AB638(v51, v53, a3);
    if ((v32 & 0x400) == 0)
    {
LABEL_85:
      if ((v32 & 0x800) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_136;
    }
  }

  else if ((v32 & 0x400) == 0)
  {
    goto LABEL_85;
  }

  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v57 = *(a1 + 328);
  *v28 = 114;
  v58 = *(v57 + 44);
  v28[1] = v58;
  if (v58 > 0x7F)
  {
    v59 = sub_19575D0(v58, v28 + 1);
  }

  else
  {
    v59 = v28 + 2;
  }

  v28 = sub_14AE67C(v57, v59, a3);
  if ((v32 & 0x800) == 0)
  {
LABEL_86:
    if ((v32 & 0x4000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_148;
  }

LABEL_136:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v63 = *(a1 + 336);
  *v28 = 122;
  v64 = *(v63 + 20);
  v28[1] = v64;
  if (v64 > 0x7F)
  {
    v65 = sub_19575D0(v64, v28 + 1);
  }

  else
  {
    v65 = v28 + 2;
  }

  v28 = sub_14AF5E4(v63, v65, a3);
  if ((v32 & 0x4000000) == 0)
  {
LABEL_87:
    if ((v32 & 0x1000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_151;
  }

LABEL_148:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v69 = *(a1 + 431);
  *v28 = 384;
  v28[2] = v69;
  v28 += 3;
  if ((v32 & 0x1000) == 0)
  {
LABEL_88:
    if ((v32 & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_174;
  }

LABEL_151:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v70 = *(a1 + 344);
  *v28 = 402;
  v71 = *(v70 + 20);
  v28[2] = v71;
  if (v71 > 0x7F)
  {
    v72 = sub_19575D0(v71, v28 + 2);
  }

  else
  {
    v72 = v28 + 3;
  }

  v28 = sub_1495324(v70, v72, a3);
  if ((v32 & 1) == 0)
  {
LABEL_89:
    if ((v32 & 2) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_174:
  v28 = sub_128AEEC(a3, 19, *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL, v28);
  if ((v32 & 2) != 0)
  {
LABEL_90:
    v28 = sub_128AEEC(a3, 20, *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL, v28);
  }

LABEL_91:
  v44 = *(a1 + 112);
  if (v44 >= 1)
  {
    v45 = 8;
    do
    {
      v28 = sub_1355F54(a3, 21, *(*(a1 + 120) + v45), v28);
      v45 += 8;
      --v44;
    }

    while (v44);
  }

  v46 = *(a1 + 136);
  if (v46)
  {
    for (k = 0; k != v46; ++k)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v48 = *(*(a1 + 144) + 8 * k + 8);
      *v28 = 434;
      v49 = *(v48 + 44);
      v28[2] = v49;
      if (v49 > 0x7F)
      {
        v50 = sub_19575D0(v49, v28 + 2);
      }

      else
      {
        v50 = v28 + 3;
      }

      v28 = sub_16E886C(v48, v50, a3);
    }
  }

  if ((v32 & 0x2000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v54 = *(a1 + 352);
    *v28 = 442;
    v55 = *(v54 + 24);
    v28[2] = v55;
    if (v55 > 0x7F)
    {
      v56 = sub_19575D0(v55, v28 + 2);
    }

    else
    {
      v56 = v28 + 3;
    }

    v28 = sub_1538BB4(v54, v56, a3);
    if ((v32 & 0x4000) == 0)
    {
LABEL_104:
      if ((v32 & 0x8000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_142;
    }
  }

  else if ((v32 & 0x4000) == 0)
  {
    goto LABEL_104;
  }

  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v60 = *(a1 + 360);
  *v28 = 450;
  v61 = *(v60 + 44);
  v28[2] = v61;
  if (v61 > 0x7F)
  {
    v62 = sub_19575D0(v61, v28 + 2);
  }

  else
  {
    v62 = v28 + 3;
  }

  v28 = sub_16E886C(v60, v62, a3);
  if ((v32 & 0x8000) == 0)
  {
LABEL_105:
    if ((v32 & 0x10000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_157;
  }

LABEL_142:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v66 = *(a1 + 368);
  *v28 = 458;
  v67 = *(v66 + 44);
  v28[2] = v67;
  if (v67 > 0x7F)
  {
    v68 = sub_19575D0(v67, v28 + 2);
  }

  else
  {
    v68 = v28 + 3;
  }

  v28 = sub_13F0804(v66, v68, a3);
  if ((v32 & 0x10000000) == 0)
  {
LABEL_106:
    if ((v32 & 0x20000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_160;
  }

LABEL_157:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v73 = *(a1 + 440);
  *v28 = 464;
  v28[2] = v73;
  v28 += 3;
  if ((v32 & 0x20000000) == 0)
  {
LABEL_107:
    if ((v32 & 4) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_163;
  }

LABEL_160:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v74 = *(a1 + 441);
  *v28 = 472;
  v28[2] = v74;
  v28 += 3;
  if ((v32 & 4) == 0)
  {
LABEL_108:
    if ((v32 & 8) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_164;
  }

LABEL_163:
  v28 = sub_128AEEC(a3, 28, *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL, v28);
  if ((v32 & 8) == 0)
  {
LABEL_109:
    if ((v32 & 0x8000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_165;
  }

LABEL_164:
  v28 = sub_128AEEC(a3, 29, *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL, v28);
  if ((v32 & 0x8000000) == 0)
  {
LABEL_110:
    if ((v32 & 0x10000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_168;
  }

LABEL_165:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v75 = *(a1 + 432);
  *v28 = 497;
  *(v28 + 2) = v75;
  v28 += 10;
  if ((v32 & 0x10000) == 0)
  {
LABEL_111:
    if ((v32 & 0x20000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_178;
  }

LABEL_168:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v76 = *(a1 + 376);
  *v28 = 506;
  v77 = *(v76 + 20);
  v28[2] = v77;
  if (v77 > 0x7F)
  {
    v78 = sub_19575D0(v77, v28 + 2);
  }

  else
  {
    v78 = v28 + 3;
  }

  v28 = sub_14AD624(v76, v78, a3);
  if ((v32 & 0x20000) == 0)
  {
LABEL_112:
    if ((v32 & 0x40000000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_184;
  }

LABEL_178:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v79 = *(a1 + 384);
  *v28 = 642;
  v80 = *(v79 + 20);
  v28[2] = v80;
  if (v80 > 0x7F)
  {
    v81 = sub_19575D0(v80, v28 + 2);
  }

  else
  {
    v81 = v28 + 3;
  }

  v28 = sub_1475A28(v79, v81, a3);
  if ((v32 & 0x40000000) != 0)
  {
LABEL_184:
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v82 = *(a1 + 442);
    *v28 = 648;
    v28[2] = v82;
    v28 += 3;
  }

LABEL_187:
  v83 = *(a1 + 160);
  if (v83)
  {
    for (m = 0; m != v83; ++m)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v85 = *(*(a1 + 168) + 8 * m + 8);
      *v28 = 658;
      v86 = *(v85 + 20);
      v28[2] = v86;
      if (v86 > 0x7F)
      {
        v87 = sub_19575D0(v86, v28 + 2);
      }

      else
      {
        v87 = v28 + 3;
      }

      v28 = sub_154D580(v85, v87, a3);
    }
  }

  if ((v32 & 0x40000) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v88 = *(a1 + 392);
    *v28 = 666;
    v89 = *(v88 + 20);
    v28[2] = v89;
    if (v89 > 0x7F)
    {
      v90 = sub_19575D0(v89, v28 + 2);
    }

    else
    {
      v90 = v28 + 3;
    }

    v28 = sub_14B56C0(v88, v90, a3);
    if ((v32 & 0x80000) == 0)
    {
LABEL_197:
      if ((v32 & 0x100000) == 0)
      {
        goto LABEL_198;
      }

      goto LABEL_212;
    }
  }

  else if ((v32 & 0x80000) == 0)
  {
    goto LABEL_197;
  }

  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v91 = *(a1 + 400);
  *v28 = 674;
  v92 = *(v91 + 20);
  v28[2] = v92;
  if (v92 > 0x7F)
  {
    v93 = sub_19575D0(v92, v28 + 2);
  }

  else
  {
    v93 = v28 + 3;
  }

  v28 = sub_16F4F90(v91, v93, a3);
  if ((v32 & 0x100000) == 0)
  {
LABEL_198:
    if ((v32 & 0x200000) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_218;
  }

LABEL_212:
  if (*a3 <= v28)
  {
    v28 = sub_225EB68(a3, v28);
  }

  v94 = *(a1 + 408);
  *v28 = 682;
  v95 = *(v94 + 20);
  v28[2] = v95;
  if (v95 > 0x7F)
  {
    v96 = sub_19575D0(v95, v28 + 2);
  }

  else
  {
    v96 = v28 + 3;
  }

  v28 = sub_14D0AB4(v94, v96, a3);
  if ((v32 & 0x200000) != 0)
  {
LABEL_218:
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v97 = *(a1 + 416);
    *v28 = 690;
    v98 = *(v97 + 64);
    v28[2] = v98;
    if (v98 > 0x7F)
    {
      v99 = sub_19575D0(v98, v28 + 2);
    }

    else
    {
      v99 = v28 + 3;
    }

    v28 = sub_1477524(v97, v99, a3);
  }

LABEL_224:
  v100 = *(a1 + 184);
  if (v100)
  {
    for (n = 0; n != v100; ++n)
    {
      if (*a3 <= v28)
      {
        v28 = sub_225EB68(a3, v28);
      }

      v102 = *(*(a1 + 192) + 8 * n + 8);
      *v28 = 1698;
      v103 = *(v102 + 20);
      v28[2] = v103;
      if (v103 > 0x7F)
      {
        v104 = sub_19575D0(v103, v28 + 2);
      }

      else
      {
        v104 = v28 + 3;
      }

      v28 = sub_16EEE1C(v102, v104, a3);
    }
  }

  v105 = *(a1 + 208);
  if (v105 >= 1)
  {
    v106 = 8;
    do
    {
      v28 = sub_1355F54(a3, 101, *(*(a1 + 216) + v106), v28);
      v106 += 8;
      --v105;
    }

    while (v105);
  }

  v107 = *(a1 + 232);
  if (v107 >= 1)
  {
    v108 = 8;
    do
    {
      v109 = *(*(a1 + 240) + v108);
      v110 = *(v109 + 23);
      if (v110 < 0 && (v110 = v109[1], v110 > 127) || (*a3 - v28 + 13) < v110)
      {
        v28 = sub_1957480(a3, 102, v109, v28);
      }

      else
      {
        *v28 = 1714;
        v28[2] = v110;
        if (*(v109 + 23) < 0)
        {
          v109 = *v109;
        }

        v111 = v28 + 3;
        memcpy(v28 + 3, v109, v110);
        v28 = &v111[v110];
      }

      v108 += 8;
      --v107;
    }

    while (v107);
  }

  if (v32 < 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v113 = *(a1 + 444);
    *v28 = 1720;
    v28[2] = v113;
    if (v113 > 0x7F)
    {
      v28[2] = v113 | 0x80;
      v114 = v113 >> 7;
      v28[3] = v113 >> 7;
      v112 = v28 + 4;
      if (v113 >= 0x4000)
      {
        LOBYTE(v115) = v28[3];
        do
        {
          *(v112 - 1) = v115 | 0x80;
          v115 = v114 >> 7;
          *v112++ = v114 >> 7;
          v116 = v114 >> 14;
          v114 >>= 7;
        }

        while (v116);
      }
    }

    else
    {
      v112 = v28 + 3;
    }
  }

  else
  {
    v112 = v28;
  }

  if (*(a1 + 26))
  {
    v112 = sub_1953428(a1 + 16, 1000, 1201, v112, a3);
  }

  v117 = *(a1 + 8);
  if ((v117 & 1) == 0)
  {
    return v112;
  }

  v119 = v117 & 0xFFFFFFFFFFFFFFFCLL;
  v120 = *(v119 + 31);
  if (v120 < 0)
  {
    v121 = *(v119 + 8);
    v120 = *(v119 + 16);
  }

  else
  {
    v121 = (v119 + 8);
  }

  if ((*a3 - v112) >= v120)
  {
    v122 = v120;
    memcpy(v112, v121, v120);
    v112 += v122;
    return v112;
  }

  return sub_1957130(a3, v121, v120, v112);
}

uint64_t sub_14CEB30(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  v5 = *(a1 + 72);
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
      v9 = sub_1549388(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 88);
  v11 = v4 + v10;
  v12 = *(a1 + 96);
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
      v16 = sub_154DABC(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 112);
  v18 = v11 + 2 * v17;
  if (v17 >= 1)
  {
    v19 = (*(a1 + 120) + 8);
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

  v23 = *(a1 + 136);
  v24 = v18 + 2 * v23;
  v25 = *(a1 + 144);
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
      v29 = sub_16E8DA4(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 160);
  v31 = v24 + 2 * v30;
  v32 = *(a1 + 168);
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
      v36 = sub_154DABC(v35);
      v31 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      v34 -= 8;
    }

    while (v34);
  }

  v37 = *(a1 + 184);
  v38 = v31 + 2 * v37;
  v39 = *(a1 + 192);
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
      v43 = sub_16EEF64(v42);
      v38 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6);
      v41 -= 8;
    }

    while (v41);
  }

  v44 = *(a1 + 208);
  v45 = v38 + 2 * v44;
  if (v44 >= 1)
  {
    v46 = (*(a1 + 216) + 8);
    do
    {
      v47 = *v46++;
      v48 = *(v47 + 23);
      v49 = *(v47 + 8);
      if ((v48 & 0x80u) == 0)
      {
        v49 = v48;
      }

      v45 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      --v44;
    }

    while (v44);
  }

  v50 = *(a1 + 232);
  v51 = v45 + 2 * v50;
  if (v50 >= 1)
  {
    v52 = (*(a1 + 240) + 8);
    do
    {
      v53 = *v52++;
      v54 = *(v53 + 23);
      v55 = *(v53 + 8);
      if ((v54 & 0x80u) == 0)
      {
        v55 = v54;
      }

      v51 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6);
      --v50;
    }

    while (v50);
  }

  v56 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_56;
  }

  if (v56)
  {
    v65 = *(a1 + 248) & 0xFFFFFFFFFFFFFFFELL;
    v66 = *(v65 + 23);
    v67 = *(v65 + 8);
    if ((v66 & 0x80u) == 0)
    {
      v67 = v66;
    }

    v51 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v56 & 2) == 0)
    {
LABEL_49:
      if ((v56 & 4) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_103;
    }
  }

  else if ((v56 & 2) == 0)
  {
    goto LABEL_49;
  }

  v68 = *(a1 + 256) & 0xFFFFFFFFFFFFFFFELL;
  v69 = *(v68 + 23);
  v70 = *(v68 + 8);
  if ((v69 & 0x80u) == 0)
  {
    v70 = v69;
  }

  v51 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 4) == 0)
  {
LABEL_50:
    if ((v56 & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_106;
  }

LABEL_103:
  v71 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
  v72 = *(v71 + 23);
  v73 = *(v71 + 8);
  if ((v72 & 0x80u) == 0)
  {
    v73 = v72;
  }

  v51 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 8) == 0)
  {
LABEL_51:
    if ((v56 & 0x10) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_109;
  }

LABEL_106:
  v74 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
  v75 = *(v74 + 23);
  v76 = *(v74 + 8);
  if ((v75 & 0x80u) == 0)
  {
    v76 = v75;
  }

  v51 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x10) == 0)
  {
LABEL_52:
    if ((v56 & 0x20) == 0)
    {
      goto LABEL_53;
    }

LABEL_110:
    v78 = sub_1549388(*(a1 + 288));
    v51 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v56 & 0x40) == 0)
    {
LABEL_54:
      if ((v56 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    goto LABEL_111;
  }

LABEL_109:
  v77 = sub_14917A0(*(a1 + 280));
  v51 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v56 & 0x20) != 0)
  {
    goto LABEL_110;
  }

LABEL_53:
  if ((v56 & 0x40) == 0)
  {
    goto LABEL_54;
  }

LABEL_111:
  v79 = sub_16EE474(*(a1 + 296));
  v51 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v56 & 0x80) != 0)
  {
LABEL_55:
    v57 = sub_15508CC(*(a1 + 304));
    v51 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_56:
  if ((v56 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  if ((v56 & 0x100) != 0)
  {
    v80 = sub_154DABC(*(a1 + 312));
    v51 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v56 & 0x200) == 0)
    {
LABEL_59:
      if ((v56 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_115;
    }
  }

  else if ((v56 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v81 = sub_14AB8E8(*(a1 + 320));
  v51 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v56 & 0x400) == 0)
  {
LABEL_60:
    if ((v56 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_116;
  }

LABEL_115:
  v82 = sub_14AE9A0(*(a1 + 328));
  v51 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v56 & 0x800) == 0)
  {
LABEL_61:
    if ((v56 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_117;
  }

LABEL_116:
  v83 = sub_14AF7DC(*(a1 + 336));
  v51 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v56 & 0x1000) == 0)
  {
LABEL_62:
    if ((v56 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_118;
  }

LABEL_117:
  v84 = sub_1495570(*(a1 + 344));
  v51 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x2000) == 0)
  {
LABEL_63:
    if ((v56 & 0x4000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_119;
  }

LABEL_118:
  v85 = sub_153A048(*(a1 + 352));
  v51 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x4000) == 0)
  {
LABEL_64:
    if ((v56 & 0x8000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_119:
  v86 = sub_16E8DA4(*(a1 + 360));
  v51 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x8000) != 0)
  {
LABEL_65:
    v58 = sub_13F09D8(*(a1 + 368));
    v51 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_66:
  if ((v56 & 0xFF0000) == 0)
  {
    goto LABEL_79;
  }

  if ((v56 & 0x10000) != 0)
  {
    v87 = sub_14AD7A0(*(a1 + 376));
    v51 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v56 & 0x20000) == 0)
    {
LABEL_69:
      if ((v56 & 0x40000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_123;
    }
  }

  else if ((v56 & 0x20000) == 0)
  {
    goto LABEL_69;
  }

  v88 = sub_1475E08(*(a1 + 384));
  v51 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x40000) == 0)
  {
LABEL_70:
    if ((v56 & 0x80000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_124;
  }

LABEL_123:
  v89 = sub_14B5BB4(*(a1 + 392));
  v51 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x80000) == 0)
  {
LABEL_71:
    if ((v56 & 0x100000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_125;
  }

LABEL_124:
  v90 = sub_16F5164(*(a1 + 400));
  v51 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x100000) == 0)
  {
LABEL_72:
    if ((v56 & 0x200000) == 0)
    {
      goto LABEL_73;
    }

LABEL_126:
    v92 = sub_1477688(*(a1 + 416));
    v51 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v56 & 0x400000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_78;
  }

LABEL_125:
  v91 = sub_14D0BDC(*(a1 + 408));
  v51 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v56 & 0x200000) != 0)
  {
    goto LABEL_126;
  }

LABEL_73:
  if ((v56 & 0x400000) != 0)
  {
LABEL_74:
    v59 = *(a1 + 424);
    v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v59 >= 0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 11;
    }

    v51 += v61;
  }

LABEL_78:
  v51 += (v56 >> 22) & 2;
LABEL_79:
  if (BYTE3(v56))
  {
    v62 = v51 + (BYTE3(v56) & 2) + ((v56 >> 23) & 2);
    if ((v56 & 0x4000000) != 0)
    {
      v62 += 3;
    }

    if ((v56 & 0x8000000) != 0)
    {
      v62 += 10;
    }

    if ((v56 & 0x10000000) != 0)
    {
      v62 += 3;
    }

    if ((v56 & 0x20000000) != 0)
    {
      v62 += 3;
    }

    if ((v56 & 0x40000000) != 0)
    {
      v51 = v62 + 3;
    }

    else
    {
      v51 = v62;
    }

    if ((v56 & 0x80000000) != 0)
    {
      v51 += ((9 * (__clz(*(a1 + 444) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if (*(a1 + 44))
  {
    v51 += ((9 * (__clz(*(a1 + 448) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v63 = *(a1 + 8);
  if (v63)
  {
    v93 = v63 & 0xFFFFFFFFFFFFFFFCLL;
    v94 = *((v63 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v94 < 0)
    {
      v94 = *(v93 + 16);
    }

    v51 += v94;
  }

  *(a1 + 48) = v51;
  return v51;
}

void sub_14CF3F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    v5 = *(a2 + 72);
    v6 = sub_19592E8(a1 + 56, *(a2 + 64));
    sub_1449ED8((a1 + 56), v6, (v5 + 8), v4, **(a1 + 72) - *(a1 + 64));
    v7 = *(a1 + 64) + v4;
    *(a1 + 64) = v7;
    v8 = *(a1 + 72);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 88);
  if (v9)
  {
    v10 = *(a2 + 96);
    v11 = sub_19592E8(a1 + 80, *(a2 + 88));
    sub_144D55C((a1 + 80), v11, (v10 + 8), v9, **(a1 + 96) - *(a1 + 88));
    v12 = *(a1 + 88) + v9;
    *(a1 + 88) = v12;
    v13 = *(a1 + 96);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 112);
  if (v14)
  {
    v15 = *(a2 + 120);
    v16 = sub_19592E8(a1 + 104, *(a2 + 112));
    sub_1201B48(a1 + 104, v16, (v15 + 8), v14, **(a1 + 120) - *(a1 + 112));
    v17 = *(a1 + 112) + v14;
    *(a1 + 112) = v17;
    v18 = *(a1 + 120);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 136);
  if (v19)
  {
    v20 = *(a2 + 144);
    v21 = sub_19592E8(a1 + 128, *(a2 + 136));
    sub_1409AF8((a1 + 128), v21, (v20 + 8), v19, **(a1 + 144) - *(a1 + 136));
    v22 = *(a1 + 136) + v19;
    *(a1 + 136) = v22;
    v23 = *(a1 + 144);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 160);
  if (v24)
  {
    v25 = *(a2 + 168);
    v26 = sub_19592E8(a1 + 152, *(a2 + 160));
    sub_144D55C((a1 + 152), v26, (v25 + 8), v24, **(a1 + 168) - *(a1 + 160));
    v27 = *(a1 + 160) + v24;
    *(a1 + 160) = v27;
    v28 = *(a1 + 168);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 184);
  if (v29)
  {
    v30 = *(a2 + 192);
    v31 = sub_19592E8(a1 + 176, *(a2 + 184));
    sub_12E5E34((a1 + 176), v31, (v30 + 8), v29, **(a1 + 192) - *(a1 + 184));
    v32 = *(a1 + 184) + v29;
    *(a1 + 184) = v32;
    v33 = *(a1 + 192);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 208);
  if (v34)
  {
    v35 = *(a2 + 216);
    v36 = sub_19592E8(a1 + 200, *(a2 + 208));
    sub_1201B48(a1 + 200, v36, (v35 + 8), v34, **(a1 + 216) - *(a1 + 208));
    v37 = *(a1 + 208) + v34;
    *(a1 + 208) = v37;
    v38 = *(a1 + 216);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 232);
  if (v39)
  {
    v40 = *(a2 + 240);
    v41 = sub_19592E8(a1 + 224, *(a2 + 232));
    sub_1201B48(a1 + 224, v41, (v40 + 8), v39, **(a1 + 240) - *(a1 + 232));
    v42 = *(a1 + 232) + v39;
    *(a1 + 232) = v42;
    v43 = *(a1 + 240);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 40);
  if (!v44)
  {
    goto LABEL_79;
  }

  if (v44)
  {
    v45 = *(a2 + 248);
    *(a1 + 40) |= 1u;
    v46 = *(a1 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    sub_194EA1C((a1 + 248), (v45 & 0xFFFFFFFFFFFFFFFELL), v47);
    if ((v44 & 2) == 0)
    {
LABEL_28:
      if ((v44 & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_41;
    }
  }

  else if ((v44 & 2) == 0)
  {
    goto LABEL_28;
  }

  v48 = *(a2 + 256);
  *(a1 + 40) |= 2u;
  v49 = *(a1 + 8);
  v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
  if (v49)
  {
    v50 = *v50;
  }

  sub_194EA1C((a1 + 256), (v48 & 0xFFFFFFFFFFFFFFFELL), v50);
  if ((v44 & 4) == 0)
  {
LABEL_29:
    if ((v44 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_41:
  v51 = *(a2 + 264);
  *(a1 + 40) |= 4u;
  v52 = *(a1 + 8);
  v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
  if (v52)
  {
    v53 = *v53;
  }

  sub_194EA1C((a1 + 264), (v51 & 0xFFFFFFFFFFFFFFFELL), v53);
  if ((v44 & 8) == 0)
  {
LABEL_30:
    if ((v44 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

LABEL_44:
  v54 = *(a2 + 272);
  *(a1 + 40) |= 8u;
  v55 = *(a1 + 8);
  v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
  if (v55)
  {
    v56 = *v56;
  }

  sub_194EA1C((a1 + 272), (v54 & 0xFFFFFFFFFFFFFFFELL), v56);
  if ((v44 & 0x10) == 0)
  {
LABEL_31:
    if ((v44 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_55:
    *(a1 + 40) |= 0x20u;
    v61 = *(a1 + 288);
    if (!v61)
    {
      v62 = *(a1 + 8);
      v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
      if (v62)
      {
        v63 = *v63;
      }

      v61 = sub_1552260(v63);
      *(a1 + 288) = v61;
    }

    if (*(a2 + 288))
    {
      v64 = *(a2 + 288);
    }

    else
    {
      v64 = &off_2776E00;
    }

    sub_14CFEBC(v61, v64);
    if ((v44 & 0x40) == 0)
    {
LABEL_33:
      if ((v44 & 0x80) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_71;
    }

    goto LABEL_63;
  }

LABEL_47:
  *(a1 + 40) |= 0x10u;
  v57 = *(a1 + 280);
  if (!v57)
  {
    v58 = *(a1 + 8);
    v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
    if (v58)
    {
      v59 = *v59;
    }

    v57 = sub_14BD794(v59);
    *(a1 + 280) = v57;
  }

  if (*(a2 + 280))
  {
    v60 = *(a2 + 280);
  }

  else
  {
    v60 = &off_2772DF8;
  }

  sub_1491830(v57, v60);
  if ((v44 & 0x20) != 0)
  {
    goto LABEL_55;
  }

LABEL_32:
  if ((v44 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_63:
  *(a1 + 40) |= 0x40u;
  v65 = *(a1 + 296);
  if (!v65)
  {
    v66 = *(a1 + 8);
    v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL);
    if (v66)
    {
      v67 = *v67;
    }

    v65 = sub_16F5F38(v67);
    *(a1 + 296) = v65;
  }

  if (*(a2 + 296))
  {
    v68 = *(a2 + 296);
  }

  else
  {
    v68 = &off_277E980;
  }

  sub_121721C(v65, v68);
  if ((v44 & 0x80) != 0)
  {
LABEL_71:
    *(a1 + 40) |= 0x80u;
    v69 = *(a1 + 304);
    if (!v69)
    {
      v70 = *(a1 + 8);
      v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
      if (v70)
      {
        v71 = *v71;
      }

      v69 = sub_1552788(v71);
      *(a1 + 304) = v69;
    }

    if (*(a2 + 304))
    {
      v72 = *(a2 + 304);
    }

    else
    {
      v72 = &off_27770C8;
    }

    sub_14C99B8(v69, v72);
  }

LABEL_79:
  if ((v44 & 0xFF00) == 0)
  {
    goto LABEL_153;
  }

  if ((v44 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v73 = *(a1 + 312);
    if (!v73)
    {
      v74 = *(a1 + 8);
      v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
      if (v74)
      {
        v75 = *v75;
      }

      sub_1552584(v75);
      *(a1 + 312) = v73;
    }

    if (*(a2 + 312))
    {
      v76 = *(a2 + 312);
    }

    else
    {
      v76 = &off_2776FB8;
    }

    sub_14D0028(v73, v76);
    if ((v44 & 0x200) == 0)
    {
LABEL_82:
      if ((v44 & 0x400) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_105;
    }
  }

  else if ((v44 & 0x200) == 0)
  {
    goto LABEL_82;
  }

  *(a1 + 40) |= 0x200u;
  v77 = *(a1 + 320);
  if (!v77)
  {
    v78 = *(a1 + 8);
    v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
    if (v78)
    {
      v79 = *v79;
    }

    v77 = sub_14BE994(v79);
    *(a1 + 320) = v77;
  }

  if (*(a2 + 320))
  {
    v80 = *(a2 + 320);
  }

  else
  {
    v80 = &off_2773678;
  }

  sub_1494784(v77, v80);
  if ((v44 & 0x400) == 0)
  {
LABEL_83:
    if ((v44 & 0x800) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_113;
  }

LABEL_105:
  *(a1 + 40) |= 0x400u;
  v81 = *(a1 + 328);
  if (!v81)
  {
    v82 = *(a1 + 8);
    v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
    if (v82)
    {
      v83 = *v83;
    }

    v81 = sub_14BED24(v83);
    *(a1 + 328) = v81;
  }

  if (*(a2 + 328))
  {
    v84 = *(a2 + 328);
  }

  else
  {
    v84 = &off_2773798;
  }

  sub_14948DC(v81, v84);
  if ((v44 & 0x800) == 0)
  {
LABEL_84:
    if ((v44 & 0x1000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_121;
  }

LABEL_113:
  *(a1 + 40) |= 0x800u;
  v85 = *(a1 + 336);
  if (!v85)
  {
    v86 = *(a1 + 8);
    v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
    if (v86)
    {
      v87 = *v87;
    }

    v85 = sub_14BEDFC(v87);
    *(a1 + 336) = v85;
  }

  if (*(a2 + 336))
  {
    v88 = *(a2 + 336);
  }

  else
  {
    v88 = &off_2773810;
  }

  sub_1494A24(v85, v88);
  if ((v44 & 0x1000) == 0)
  {
LABEL_85:
    if ((v44 & 0x2000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_129;
  }

LABEL_121:
  *(a1 + 40) |= 0x1000u;
  v89 = *(a1 + 344);
  if (!v89)
  {
    v90 = *(a1 + 8);
    v91 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
    if (v90)
    {
      v91 = *v91;
    }

    v89 = sub_14BD8FC(v91);
    *(a1 + 344) = v89;
  }

  if (*(a2 + 344))
  {
    v92 = *(a2 + 344);
  }

  else
  {
    v92 = &off_2772ED0;
  }

  sub_14955F0(v89, v92);
  if ((v44 & 0x2000) == 0)
  {
LABEL_86:
    if ((v44 & 0x4000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_137;
  }

LABEL_129:
  *(a1 + 40) |= 0x2000u;
  v93 = *(a1 + 352);
  if (!v93)
  {
    v94 = *(a1 + 8);
    v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
    if (v94)
    {
      v95 = *v95;
    }

    sub_155193C(v95);
    *(a1 + 352) = v93;
  }

  if (*(a2 + 352))
  {
    v96 = *(a2 + 352);
  }

  else
  {
    v96 = &off_2776700;
  }

  sub_14C9078(v93, v96);
  if ((v44 & 0x4000) == 0)
  {
LABEL_87:
    if ((v44 & 0x8000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_145;
  }

LABEL_137:
  *(a1 + 40) |= 0x4000u;
  v97 = *(a1 + 360);
  if (!v97)
  {
    v98 = *(a1 + 8);
    v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
    if (v98)
    {
      v99 = *v99;
    }

    v97 = sub_16F5BD8(v99);
    *(a1 + 360) = v97;
  }

  if (*(a2 + 360))
  {
    v100 = *(a2 + 360);
  }

  else
  {
    v100 = &off_277E738;
  }

  sub_16E4964(v97, v100);
  if ((v44 & 0x8000) != 0)
  {
LABEL_145:
    *(a1 + 40) |= 0x8000u;
    v101 = *(a1 + 368);
    if (!v101)
    {
      v102 = *(a1 + 8);
      v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
      if (v102)
      {
        v103 = *v103;
      }

      v101 = sub_13F0FB4(v103);
      *(a1 + 368) = v101;
    }

    if (*(a2 + 368))
    {
      v104 = *(a2 + 368);
    }

    else
    {
      v104 = &off_276F370;
    }

    sub_13F0A84(v101, v104);
  }

LABEL_153:
  if ((v44 & 0xFF0000) == 0)
  {
    goto LABEL_164;
  }

  if ((v44 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v107 = *(a1 + 376);
    if (!v107)
    {
      v108 = *(a1 + 8);
      v109 = (v108 & 0xFFFFFFFFFFFFFFFCLL);
      if (v108)
      {
        v109 = *v109;
      }

      v107 = sub_14BEC30(v109);
      *(a1 + 376) = v107;
    }

    if (*(a2 + 376))
    {
      v110 = *(a2 + 376);
    }

    else
    {
      v110 = &off_2773750;
    }

    sub_1494BAC(v107, v110);
    if ((v44 & 0x20000) == 0)
    {
LABEL_156:
      if ((v44 & 0x40000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_196;
    }
  }

  else if ((v44 & 0x20000) == 0)
  {
    goto LABEL_156;
  }

  *(a1 + 40) |= 0x20000u;
  v111 = *(a1 + 384);
  if (!v111)
  {
    v112 = *(a1 + 8);
    v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
    if (v112)
    {
      v113 = *v113;
    }

    v111 = sub_14BC508(v113);
    *(a1 + 384) = v111;
  }

  if (*(a2 + 384))
  {
    v114 = *(a2 + 384);
  }

  else
  {
    v114 = &off_27721B8;
  }

  sub_1475FBC(v111, v114);
  if ((v44 & 0x40000) == 0)
  {
LABEL_157:
    if ((v44 & 0x80000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_204;
  }

LABEL_196:
  *(a1 + 40) |= 0x40000u;
  v115 = *(a1 + 392);
  if (!v115)
  {
    v116 = *(a1 + 8);
    v117 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
    if (v116)
    {
      v117 = *v117;
    }

    v115 = sub_14BF3C4(v117);
    *(a1 + 392) = v115;
  }

  if (*(a2 + 392))
  {
    v118 = *(a2 + 392);
  }

  else
  {
    v118 = &off_2773A48;
  }

  sub_14B5E78(v115, v118);
  if ((v44 & 0x80000) == 0)
  {
LABEL_158:
    if ((v44 & 0x100000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_212;
  }

LABEL_204:
  *(a1 + 40) |= 0x80000u;
  v119 = *(a1 + 400);
  if (!v119)
  {
    v120 = *(a1 + 8);
    v121 = (v120 & 0xFFFFFFFFFFFFFFFCLL);
    if (v120)
    {
      v121 = *v121;
    }

    v119 = sub_16F65CC(v121);
    *(a1 + 400) = v119;
  }

  if (*(a2 + 400))
  {
    v122 = *(a2 + 400);
  }

  else
  {
    v122 = &off_277EBD8;
  }

  sub_12C3070(v119, v122);
  if ((v44 & 0x100000) == 0)
  {
LABEL_159:
    if ((v44 & 0x200000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_220;
  }

LABEL_212:
  *(a1 + 40) |= 0x100000u;
  v123 = *(a1 + 408);
  if (!v123)
  {
    v124 = *(a1 + 8);
    v125 = (v124 & 0xFFFFFFFFFFFFFFFCLL);
    if (v124)
    {
      v125 = *v125;
    }

    v123 = sub_14D5BE0(v125);
    *(a1 + 408) = v123;
  }

  if (*(a2 + 408))
  {
    v126 = *(a2 + 408);
  }

  else
  {
    v126 = &off_2774478;
  }

  sub_12B9D50(v123, v126);
  if ((v44 & 0x200000) == 0)
  {
LABEL_160:
    if ((v44 & 0x400000) == 0)
    {
      goto LABEL_161;
    }

LABEL_228:
    *(a1 + 424) = *(a2 + 424);
    if ((v44 & 0x800000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

LABEL_220:
  *(a1 + 40) |= 0x200000u;
  v127 = *(a1 + 416);
  if (!v127)
  {
    v128 = *(a1 + 8);
    v129 = (v128 & 0xFFFFFFFFFFFFFFFCLL);
    if (v128)
    {
      v129 = *v129;
    }

    v127 = sub_14BC6D4(v129);
    *(a1 + 416) = v127;
  }

  if (*(a2 + 416))
  {
    v130 = *(a2 + 416);
  }

  else
  {
    v130 = &off_2772200;
  }

  sub_1477734(v127, v130);
  if ((v44 & 0x400000) != 0)
  {
    goto LABEL_228;
  }

LABEL_161:
  if ((v44 & 0x800000) != 0)
  {
LABEL_162:
    *(a1 + 428) = *(a2 + 428);
  }

LABEL_163:
  *(a1 + 40) |= v44;
LABEL_164:
  if (!HIBYTE(v44))
  {
    goto LABEL_174;
  }

  if ((v44 & 0x1000000) != 0)
  {
    *(a1 + 429) = *(a2 + 429);
    if ((v44 & 0x2000000) == 0)
    {
LABEL_167:
      if ((v44 & 0x4000000) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_232;
    }
  }

  else if ((v44 & 0x2000000) == 0)
  {
    goto LABEL_167;
  }

  *(a1 + 430) = *(a2 + 430);
  if ((v44 & 0x4000000) == 0)
  {
LABEL_168:
    if ((v44 & 0x8000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_233;
  }

LABEL_232:
  *(a1 + 431) = *(a2 + 431);
  if ((v44 & 0x8000000) == 0)
  {
LABEL_169:
    if ((v44 & 0x10000000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_234;
  }

LABEL_233:
  *(a1 + 432) = *(a2 + 432);
  if ((v44 & 0x10000000) == 0)
  {
LABEL_170:
    if ((v44 & 0x20000000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_235;
  }

LABEL_234:
  *(a1 + 440) = *(a2 + 440);
  if ((v44 & 0x20000000) == 0)
  {
LABEL_171:
    if ((v44 & 0x40000000) == 0)
    {
      goto LABEL_172;
    }

LABEL_236:
    *(a1 + 442) = *(a2 + 442);
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_173;
    }

LABEL_237:
    *(a1 + 444) = *(a2 + 444);
    goto LABEL_173;
  }

LABEL_235:
  *(a1 + 441) = *(a2 + 441);
  if ((v44 & 0x40000000) != 0)
  {
    goto LABEL_236;
  }

LABEL_172:
  if ((v44 & 0x80000000) != 0)
  {
    goto LABEL_237;
  }

LABEL_173:
  *(a1 + 40) |= v44;
LABEL_174:
  if (*(a2 + 44))
  {
    v105 = *(a2 + 448);
    *(a1 + 44) |= 1u;
    *(a1 + 448) = v105;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v106 = *(a2 + 8);
  if (v106)
  {

    sub_1957EF4((a1 + 8), (v106 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14CFEBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_11F1A54((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        sub_1551D64(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_27769A8;
      }

      sub_1542CDC(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
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
      }

      if (*(a2 + 80))
      {
        v17 = *(a2 + 80);
      }

      else
      {
        v17 = &off_277E738;
      }

      sub_16E4964(v14, v17);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_14D0028(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
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

        v6 = sub_15522BC(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2776E58;
      }

      sub_154A57C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_38;
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

      v10 = sub_1552318(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2776ED0;
    }

    sub_154B0BC(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_15523B4(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_2776F10;
    }

    sub_154B900(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    }

LABEL_46:
    *(a1 + 16) |= 8u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1552508(v20);
      *(a1 + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_2776F98;
    }

    sub_1494B38(v18, v21);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_62;
    }

LABEL_54:
    *(a1 + 16) |= 0x10u;
    v22 = *(a1 + 56);
    if (!v22)
    {
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v22 = sub_1552410(v24);
      *(a1 + 56) = v22;
    }

    if (*(a2 + 56))
    {
      v25 = *(a2 + 56);
    }

    else
    {
      v25 = &off_2776F48;
    }

    sub_121721C(v22, v25);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_63;
    }

LABEL_62:
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
      *(a1 + 68) = *(a2 + 68);
      goto LABEL_11;
    }

LABEL_63:
    *(a1 + 65) = *(a2 + 65);
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

LABEL_66:
    *(a1 + 76) = *(a2 + 76);
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *(a1 + 72) = *(a2 + 72);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_66;
  }

LABEL_15:
  if ((v4 & 0x400) != 0)
  {
LABEL_16:
    *(a1 + 80) = *(a2 + 80);
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

void sub_14D02A4(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_14CD734(a1);

    sub_14CF3F8(a1, a2);
  }
}

uint64_t sub_14D02F0(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 64);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_14D04F4(*(*(a1 + 72) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 88);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_14D0578(*(*(a1 + 96) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 136);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_16E4B4C(*(*(a1 + 144) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 160);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_14D0578(*(*(a1 + 168) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(a1 + 184);
    while (v15 >= 1)
    {
      v16 = v15 - 1;
      v17 = sub_16EF064(*(*(a1 + 192) + 8 * v15));
      result = 0;
      v15 = v16;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    v18 = *(a1 + 40);
    if ((v18 & 0x20) != 0)
    {
      result = sub_14D04F4(*(a1 + 288));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x40) != 0)
    {
      result = sub_16EE510(*(a1 + 296));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x100) != 0)
    {
      result = sub_14D0578(*(a1 + 312));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x400) != 0)
    {
      result = sub_195228C(*(a1 + 328) + 16);
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x2000) != 0)
    {
      result = sub_14C9D50(*(a1 + 352));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x4000) != 0)
    {
      result = sub_16E4B4C(*(a1 + 360));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x8000) != 0)
    {
      result = sub_13F0B14(*(a1 + 368));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x20000) != 0)
    {
      v19 = *(a1 + 384);
      v20 = *(v19 + 32);
      while (v20 >= 1)
      {
        v21 = v20 - 1;
        v22 = sub_14752B0(*(*(v19 + 40) + 8 * v20));
        result = 0;
        v20 = v21;
        if ((v22 & 1) == 0)
        {
          return result;
        }
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x40000) != 0)
    {
      result = sub_14B6108(*(a1 + 392));
      if (!result)
      {
        return result;
      }

      v18 = *(a1 + 40);
    }

    if ((v18 & 0x200000) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 416) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14D04F4(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_16E5370(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      result = sub_1543A14(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 40);
    }

    if ((v6 & 2) == 0)
    {
      return 1;
    }

    result = sub_16E4B4C(*(a1 + 80));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_14D0578(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_154A774(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_154B21C(*(a1 + 32));
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

  result = sub_154B9B4(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_14D05D8(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 280);
  v5 = a1 + 280;
  sub_1951F08((a1 + 16), (a2 + 16));
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  LODWORD(v6) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  LODWORD(v6) = *(a1 + 44);
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  v9 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v10;
  *(a2 + 88) = v11;
  v12 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v12;
  v13 = *(a1 + 104);
  v14 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  *(a2 + 112) = v14;
  v15 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v15;
  v16 = *(a1 + 128);
  v17 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v16;
  *(a2 + 136) = v17;
  v18 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v18;
  v19 = *(a1 + 152);
  v20 = *(a1 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = v19;
  *(a2 + 160) = v20;
  v21 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v21;
  v22 = *(a1 + 176);
  v23 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v22;
  *(a2 + 184) = v23;
  v24 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = v24;
  v25 = *(a1 + 200);
  v26 = *(a1 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = v25;
  *(a2 + 208) = v26;
  v27 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v27;
  v28 = *(a1 + 224);
  v29 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v28;
  *(a2 + 232) = v29;
  v30 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v30;
  v31 = *(a2 + 248);
  *(a2 + 248) = *(a1 + 248);
  *(a1 + 248) = v31;
  v32 = *(a2 + 256);
  *(a2 + 256) = *(a1 + 256);
  *(a1 + 256) = v32;
  v33 = *(a2 + 264);
  *(a2 + 264) = *(a1 + 264);
  *(a1 + 264) = v33;
  v34 = *(a2 + 272);
  *(a2 + 272) = *(a1 + 272);
  *(a1 + 272) = v34;
  v35 = *(a1 + 280);
  v36 = *(a1 + 288);
  *v5 = *v4;
  *(a2 + 280) = v35;
  *(a2 + 288) = v36;
  v37 = *(v5 + 16);
  v38 = *(a1 + 304);
  *(v5 + 16) = v4[1];
  *(a2 + 304) = v38;
  *(v4 + 2) = v37;
  v39 = *(v5 + 32);
  v40 = *(a1 + 320);
  *(v5 + 32) = v4[2];
  *(a2 + 320) = v40;
  *(v4 + 4) = v39;
  sub_1464C30((a1 + 328), a2 + 328);
  v41 = *(a1 + 448);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 448) = v41;
}

uint64_t sub_14D07F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26E8240;
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

void sub_14D0870(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_14D08A0(void *a1)
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

void sub_14D0914(void *a1)
{
  sub_14D08A0(a1);

  operator delete();
}

char *sub_14D094C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v17, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v17 + 1;
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v17, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v17 + 2;
      }
    }

    v17 = v6;
    if (v7 == 8)
    {
      v14 = v6 + 1;
      v13 = *v6;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if (v15 < 0)
      {
        v17 = sub_19587DC(v6, v13);
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        v14 = v6 + 2;
LABEL_19:
        v17 = v14;
      }

      if (v13 > 2)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v13;
      }

      continue;
    }

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
        return v17;
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
      v6 = v17;
    }

    v17 = sub_1952690(v7, v12, v6, a3);
    if (!v17)
    {
      return 0;
    }
  }

  return v17;
}

char *sub_14D0AB4(uint64_t a1, char *__dst, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
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

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v5;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 31);
  if (v13 < 0)
  {
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (v12 + 8);
  }

  if (*a3 - v5 >= v13)
  {
    v15 = v13;
    memcpy(v5, v14, v13);
    v5 += v15;
    return v5;
  }

  return sub_1957130(a3, v14, v13, v5);
}

uint64_t sub_14D0BDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v1 += v6;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_14D0C60(uint64_t a1)
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
  if (a1 != &off_2774498)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_1458388(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_144A1C8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14D0D24(uint64_t a1)
{
  sub_14D0C60(a1);

  operator delete();
}

uint64_t sub_14D0D5C(uint64_t result)
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

  if (*(v1 + 16))
  {
    result = sub_144E5CC(*(v1 + 48));
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

char *sub_14D0DEC(uint64_t a1, char *a2, int32x2_t *a3)
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

          sub_14BAE64(v17);
          v15 = v18;
          *(a1 + 48) = v18;
          v6 = v26;
        }

        v14 = sub_22095B8(a3, v15, v6);
        goto LABEL_25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v19 = v6 - 1;
      while (1)
      {
        v20 = (v19 + 1);
        v26 = v19 + 1;
        v21 = *(a1 + 40);
        if (v21 && (v22 = *(a1 + 32), v22 < *v21))
        {
          *(a1 + 32) = v22 + 1;
          v23 = *&v21[2 * v22 + 2];
        }

        else
        {
          sub_14BAE64(*(a1 + 24));
          v23 = sub_19593CC(a1 + 24, v24);
          v20 = v26;
        }

        v19 = sub_22095B8(a3, v23, v20);
        v26 = v19;
        if (!v19)
        {
          return 0;
        }

        if (*a3 <= v19 || *v19 != 10)
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

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_25:
    v26 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v26;
}