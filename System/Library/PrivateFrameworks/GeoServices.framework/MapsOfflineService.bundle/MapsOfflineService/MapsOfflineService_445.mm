void sub_180FE5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    goto LABEL_75;
  }

  if (v4)
  {
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 64);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_185D5B8(v7);
      *(a1 + 64) = v5;
    }

    if (*(a2 + 64))
    {
      v8 = *(a2 + 64);
    }

    else
    {
      v8 = &off_2782530;
    }

    sub_1799668(v5, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(a1 + 40) |= 2u;
  v9 = *(a1 + 72);
  if (!v9)
  {
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v9 = sub_185D99C(v11);
    *(a1 + 72) = v9;
  }

  if (*(a2 + 72))
  {
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = &off_27827D0;
  }

  sub_138F72C(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_27:
  *(a1 + 40) |= 4u;
  v13 = *(a1 + 80);
  if (!v13)
  {
    v14 = *(a1 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_185DA98(v15);
    *(a1 + 80) = v13;
  }

  if (*(a2 + 80))
  {
    v16 = *(a2 + 80);
  }

  else
  {
    v16 = &off_2782830;
  }

  sub_138F72C(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_35:
  *(a1 + 40) |= 8u;
  v17 = *(a1 + 88);
  if (!v17)
  {
    v18 = *(a1 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_185DB50(v19);
    *(a1 + 88) = v17;
  }

  if (*(a2 + 88))
  {
    v20 = *(a2 + 88);
  }

  else
  {
    v20 = &off_27828B0;
  }

  sub_138F72C(v17, v20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_43:
  *(a1 + 40) |= 0x10u;
  v21 = *(a1 + 96);
  if (!v21)
  {
    v22 = *(a1 + 8);
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    v21 = sub_185DD10(v23);
    *(a1 + 96) = v21;
  }

  if (*(a2 + 96))
  {
    v24 = *(a2 + 96);
  }

  else
  {
    v24 = &off_27829B0;
  }

  sub_138F72C(v21, v24);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_51:
  *(a1 + 40) |= 0x20u;
  v25 = *(a1 + 104);
  if (!v25)
  {
    v26 = *(a1 + 8);
    v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
    if (v26)
    {
      v27 = *v27;
    }

    v25 = sub_185F2E8(v27);
    *(a1 + 104) = v25;
  }

  if (*(a2 + 104))
  {
    v28 = *(a2 + 104);
  }

  else
  {
    v28 = &off_27835A0;
  }

  sub_138F72C(v25, v28);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

LABEL_59:
  *(a1 + 40) |= 0x40u;
  v29 = *(a1 + 112);
  if (!v29)
  {
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v29 = sub_185F424(v31);
    *(a1 + 112) = v29;
  }

  if (*(a2 + 112))
  {
    v32 = *(a2 + 112);
  }

  else
  {
    v32 = &off_2783660;
  }

  sub_17BF5DC(v29, v32);
  if ((v4 & 0x80) != 0)
  {
LABEL_67:
    *(a1 + 40) |= 0x80u;
    v33 = *(a1 + 120);
    if (!v33)
    {
      v34 = *(a1 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_185F980(v35);
      *(a1 + 120) = v33;
    }

    if (*(a2 + 120))
    {
      v36 = *(a2 + 120);
    }

    else
    {
      v36 = &off_2783900;
    }

    sub_179D8E4(v33, v36);
  }

LABEL_75:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_150;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v37 = *(a1 + 128);
    if (!v37)
    {
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      v37 = sub_185F840(v39);
      *(a1 + 128) = v37;
    }

    if (*(a2 + 128))
    {
      v40 = *(a2 + 128);
    }

    else
    {
      v40 = &off_2783880;
    }

    sub_138F72C(v37, v40);
  }

  if ((v4 & 0x200) != 0)
  {
    *(a1 + 40) |= 0x200u;
    v41 = *(a1 + 136);
    if (!v41)
    {
      v42 = *(a1 + 8);
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }

      v41 = sub_185EA88(v43);
      *(a1 + 136) = v41;
    }

    v44 = *(a2 + 136);
    if (!v44)
    {
      v44 = &off_27830F0;
    }

    v45 = v44[1];
    if (v45)
    {
      sub_1957EF4((v41 + 8), (v45 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v4 & 0x400) != 0)
  {
    *(a1 + 40) |= 0x400u;
    v46 = *(a1 + 144);
    if (!v46)
    {
      v47 = *(a1 + 8);
      v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v48 = *v48;
      }

      sub_185E5BC(v48);
      *(a1 + 144) = v46;
    }

    if (*(a2 + 144))
    {
      v49 = *(a2 + 144);
    }

    else
    {
      v49 = &off_2782D18;
    }

    sub_17AB97C(v46, v49);
    if ((v4 & 0x800) == 0)
    {
LABEL_96:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_114;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_96;
  }

  *(a1 + 40) |= 0x800u;
  v50 = *(a1 + 152);
  if (!v50)
  {
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    sub_185FEC4(v52);
    *(a1 + 152) = v50;
  }

  if (*(a2 + 152))
  {
    v53 = *(a2 + 152);
  }

  else
  {
    v53 = &off_2783B10;
  }

  sub_17CA5CC(v50, v53);
  if ((v4 & 0x1000) != 0)
  {
LABEL_114:
    *(a1 + 40) |= 0x1000u;
    v54 = *(a1 + 160);
    if (!v54)
    {
      v55 = *(a1 + 8);
      v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
      if (v55)
      {
        v56 = *v56;
      }

      v54 = sub_185FF78(v56);
      *(a1 + 160) = v54;
    }

    v57 = *(a2 + 160);
    if (!v57)
    {
      v57 = &off_2783B70;
    }

    v58 = v57[1];
    if (v58)
    {
      sub_1957EF4((v54 + 8), (v58 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_122:
  if ((v4 & 0x2000) != 0)
  {
    *(a1 + 40) |= 0x2000u;
    v59 = *(a1 + 168);
    if (!v59)
    {
      v60 = *(a1 + 8);
      v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
      if (v60)
      {
        v61 = *v61;
      }

      v59 = sub_186004C(v61);
      *(a1 + 168) = v59;
    }

    if (*(a2 + 168))
    {
      v62 = *(a2 + 168);
    }

    else
    {
      v62 = &off_2783BC8;
    }

    sub_17B56AC(v59, v62);
    if ((v4 & 0x4000) == 0)
    {
LABEL_124:
      if ((v4 & 0x8000) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_142;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_124;
  }

  *(a1 + 40) |= 0x4000u;
  v63 = *(a1 + 176);
  if (!v63)
  {
    v64 = *(a1 + 8);
    v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
    if (v64)
    {
      v65 = *v65;
    }

    v63 = sub_1860160(v65);
    *(a1 + 176) = v63;
  }

  if (*(a2 + 176))
  {
    v66 = *(a2 + 176);
  }

  else
  {
    v66 = &off_2783CE8;
  }

  sub_1393C9C(v63, v66);
  if ((v4 & 0x8000) != 0)
  {
LABEL_142:
    *(a1 + 40) |= 0x8000u;
    v67 = *(a1 + 184);
    if (!v67)
    {
      v68 = *(a1 + 8);
      v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL);
      if (v68)
      {
        v69 = *v69;
      }

      v67 = sub_1860218(v69);
      *(a1 + 184) = v67;
    }

    v70 = *(a2 + 184);
    if (!v70)
    {
      v70 = &off_2783D50;
    }

    v71 = v70[1];
    if (v71)
    {
      sub_1957EF4((v67 + 8), (v71 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_150:
  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      *(a1 + 40) |= 0x10000u;
      v72 = *(a1 + 192);
      if (!v72)
      {
        v73 = *(a1 + 8);
        v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
        if (v73)
        {
          v74 = *v74;
        }

        v72 = sub_185EBA0(v74);
        *(a1 + 192) = v72;
      }

      v75 = *(a2 + 192);
      if (!v75)
      {
        v75 = &off_2783138;
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
      v77 = *(a1 + 200);
      if (!v77)
      {
        v78 = *(a1 + 8);
        v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
        if (v78)
        {
          v79 = *v79;
        }

        v77 = sub_18603A8(v79);
        *(a1 + 200) = v77;
      }

      v80 = *(a2 + 200);
      if (!v80)
      {
        v80 = &off_2783DC8;
      }

      v81 = v80[1];
      if (v81)
      {
        sub_1957EF4((v77 + 8), (v81 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x40000) != 0)
    {
      *(a1 + 40) |= 0x40000u;
      v82 = *(a1 + 208);
      if (!v82)
      {
        v83 = *(a1 + 8);
        v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
        if (v83)
        {
          v84 = *v84;
        }

        v82 = sub_186047C(v84);
        *(a1 + 208) = v82;
      }

      v85 = *(a2 + 208);
      if (!v85)
      {
        v85 = &off_2783E28;
      }

      v86 = v85[1];
      if (v86)
      {
        sub_1957EF4((v82 + 8), (v86 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x80000) != 0)
    {
      *(a1 + 40) |= 0x80000u;
      v87 = *(a1 + 216);
      if (!v87)
      {
        v88 = *(a1 + 8);
        v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
        if (v88)
        {
          v89 = *v89;
        }

        v87 = sub_18609BC(v89);
        *(a1 + 216) = v87;
      }

      if (*(a2 + 216))
      {
        v90 = *(a2 + 216);
      }

      else
      {
        v90 = &off_27840D0;
      }

      sub_140C624(v87, v90);
    }

    if ((v4 & 0x100000) != 0)
    {
      *(a1 + 40) |= 0x100000u;
      v91 = *(a1 + 224);
      if (!v91)
      {
        v92 = *(a1 + 8);
        v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
        if (v92)
        {
          v93 = *v93;
        }

        v91 = sub_185EC74(v93);
        *(a1 + 224) = v91;
      }

      v94 = *(a2 + 224);
      if (!v94)
      {
        v94 = &off_2783198;
      }

      v95 = v94[1];
      if (v95)
      {
        sub_1957EF4((v91 + 8), (v95 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x200000) != 0)
    {
      *(a1 + 40) |= 0x200000u;
      v96 = *(a1 + 232);
      if (!v96)
      {
        v97 = *(a1 + 8);
        v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
        if (v97)
        {
          v98 = *v98;
        }

        v96 = sub_185F214(v98);
        *(a1 + 232) = v96;
      }

      v99 = *(a2 + 232);
      if (!v99)
      {
        v99 = &off_2783510;
      }

      v100 = v99[1];
      if (v100)
      {
        sub_1957EF4((v96 + 8), (v100 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x400000) != 0)
    {
      *(a1 + 40) |= 0x400000u;
      v101 = *(a1 + 240);
      if (!v101)
      {
        v102 = *(a1 + 8);
        v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
        if (v102)
        {
          v103 = *v103;
        }

        v101 = sub_1860B80(v103);
        *(a1 + 240) = v101;
      }

      if (*(a2 + 240))
      {
        v104 = *(a2 + 240);
      }

      else
      {
        v104 = &off_2784220;
      }

      sub_17D8D10(v101, v104);
    }

    if ((v4 & 0x800000) != 0)
    {
      *(a1 + 40) |= 0x800000u;
      v105 = *(a1 + 248);
      if (!v105)
      {
        v106 = *(a1 + 8);
        v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
        if (v106)
        {
          v107 = *v107;
        }

        v105 = sub_185E87C(v107);
        *(a1 + 248) = v105;
      }

      v108 = *(a2 + 248);
      if (!v108)
      {
        v108 = &off_2782F30;
      }

      v109 = v108[1];
      if (v109)
      {
        sub_1957EF4((v105 + 8), (v109 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }
  }

  if (HIBYTE(v4))
  {
    if ((v4 & 0x1000000) != 0)
    {
      *(a1 + 40) |= 0x1000000u;
      v110 = *(a1 + 256);
      if (!v110)
      {
        v111 = *(a1 + 8);
        v112 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
        if (v111)
        {
          v112 = *v112;
        }

        v110 = sub_1860EA8(v112);
        *(a1 + 256) = v110;
      }

      v113 = *(a2 + 256);
      if (!v113)
      {
        v113 = &off_27843A0;
      }

      v114 = v113[1];
      if (v114)
      {
        sub_1957EF4((v110 + 8), (v114 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v4 & 0x2000000) != 0)
    {
      *(a1 + 40) |= 0x2000000u;
      v115 = *(a1 + 264);
      if (!v115)
      {
        v116 = *(a1 + 8);
        v117 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
        if (v116)
        {
          v117 = *v117;
        }

        v115 = sub_1861044(v117);
        *(a1 + 264) = v115;
      }

      if (*(a2 + 264))
      {
        v118 = *(a2 + 264);
      }

      else
      {
        v118 = &off_27843F0;
      }

      sub_12EE670(v115, v118);
      if ((v4 & 0x4000000) == 0)
      {
LABEL_235:
        if ((v4 & 0x8000000) == 0)
        {
          goto LABEL_236;
        }

        goto LABEL_254;
      }
    }

    else if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_235;
    }

    *(a1 + 40) |= 0x4000000u;
    v119 = *(a1 + 272);
    if (!v119)
    {
      v120 = *(a1 + 8);
      v121 = (v120 & 0xFFFFFFFFFFFFFFFCLL);
      if (v120)
      {
        v121 = *v121;
      }

      sub_18616B4(v121);
      *(a1 + 272) = v119;
    }

    if (*(a2 + 272))
    {
      v122 = *(a2 + 272);
    }

    else
    {
      v122 = &off_27846A0;
    }

    sub_17E3CD8(v119, v122);
    if ((v4 & 0x8000000) == 0)
    {
LABEL_236:
      if ((v4 & 0x10000000) == 0)
      {
LABEL_270:
        if ((v4 & 0x20000000) != 0)
        {
          *(a1 + 40) |= 0x20000000u;
          v132 = *(a1 + 296);
          if (!v132)
          {
            v133 = *(a1 + 8);
            v134 = (v133 & 0xFFFFFFFFFFFFFFFCLL);
            if (v133)
            {
              v134 = *v134;
            }

            v132 = sub_185E120(v134);
            *(a1 + 296) = v132;
          }

          v135 = *(a2 + 296);
          if (!v135)
          {
            v135 = &off_2782AE0;
          }

          v136 = v135[1];
          if (v136)
          {
            sub_1957EF4((v132 + 8), (v136 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }
        }

        if ((v4 & 0x40000000) != 0)
        {
          *(a1 + 40) |= 0x40000000u;
          v137 = *(a1 + 304);
          if (!v137)
          {
            v138 = *(a1 + 8);
            v139 = (v138 & 0xFFFFFFFFFFFFFFFCLL);
            if (v138)
            {
              v139 = *v139;
            }

            v137 = sub_185E4E8(v139);
            *(a1 + 304) = v137;
          }

          v140 = *(a2 + 304);
          if (!v140)
          {
            v140 = &off_2782C80;
          }

          v141 = v140[1];
          if (v141)
          {
            sub_1957EF4((v137 + 8), (v141 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }
        }

        if ((v4 & 0x80000000) != 0)
        {
          *(a1 + 40) |= 0x80000000;
          v142 = *(a1 + 312);
          if (!v142)
          {
            v143 = *(a1 + 8);
            v144 = (v143 & 0xFFFFFFFFFFFFFFFCLL);
            if (v143)
            {
              v144 = *v144;
            }

            v142 = sub_185F560(v144);
            *(a1 + 312) = v142;
          }

          if (*(a2 + 312))
          {
            v145 = *(a2 + 312);
          }

          else
          {
            v145 = &off_2783738;
          }

          sub_179D8E4(v142, v145);
        }

        goto LABEL_297;
      }

LABEL_262:
      *(a1 + 40) |= 0x10000000u;
      v127 = *(a1 + 288);
      if (!v127)
      {
        v128 = *(a1 + 8);
        v129 = (v128 & 0xFFFFFFFFFFFFFFFCLL);
        if (v128)
        {
          v129 = *v129;
        }

        v127 = sub_185DF64(v129);
        *(a1 + 288) = v127;
      }

      v130 = *(a2 + 288);
      if (!v130)
      {
        v130 = &off_2782A98;
      }

      v131 = v130[1];
      if (v131)
      {
        sub_1957EF4((v127 + 8), (v131 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      goto LABEL_270;
    }

LABEL_254:
    *(a1 + 40) |= 0x8000000u;
    v123 = *(a1 + 280);
    if (!v123)
    {
      v124 = *(a1 + 8);
      v125 = (v124 & 0xFFFFFFFFFFFFFFFCLL);
      if (v124)
      {
        v125 = *v125;
      }

      v123 = sub_185DDC8(v125);
      *(a1 + 280) = v123;
    }

    if (*(a2 + 280))
    {
      v126 = *(a2 + 280);
    }

    else
    {
      v126 = &off_2782A18;
    }

    sub_1441C28(v123, v126);
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_270;
    }

    goto LABEL_262;
  }

LABEL_297:
  v146 = *(a2 + 44);
  if (v146)
  {
    if (v146)
    {
      *(a1 + 44) |= 1u;
      v147 = *(a1 + 320);
      if (!v147)
      {
        v148 = *(a1 + 8);
        v149 = (v148 & 0xFFFFFFFFFFFFFFFCLL);
        if (v148)
        {
          v149 = *v149;
        }

        v147 = sub_18619C8(v149);
        *(a1 + 320) = v147;
      }

      v150 = *(a2 + 320);
      if (!v150)
      {
        v150 = &off_2784848;
      }

      v151 = v150[1];
      if (v151)
      {
        sub_1957EF4((v147 + 8), (v151 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 2) != 0)
    {
      *(a1 + 44) |= 2u;
      v152 = *(a1 + 328);
      if (!v152)
      {
        v153 = *(a1 + 8);
        v154 = (v153 & 0xFFFFFFFFFFFFFFFCLL);
        if (v153)
        {
          v154 = *v154;
        }

        v152 = sub_1861AE4(v154);
        *(a1 + 328) = v152;
      }

      v155 = *(a2 + 328);
      if (!v155)
      {
        v155 = &off_2784898;
      }

      v156 = v155[1];
      if (v156)
      {
        sub_1957EF4((v152 + 8), (v156 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 4) != 0)
    {
      *(a1 + 44) |= 4u;
      v157 = *(a1 + 336);
      if (!v157)
      {
        v158 = *(a1 + 8);
        v159 = (v158 & 0xFFFFFFFFFFFFFFFCLL);
        if (v158)
        {
          v159 = *v159;
        }

        v157 = sub_1861BB8(v159);
        *(a1 + 336) = v157;
      }

      v160 = *(a2 + 336);
      if (!v160)
      {
        v160 = &off_2784928;
      }

      v161 = v160[1];
      if (v161)
      {
        sub_1957EF4((v157 + 8), (v161 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 8) != 0)
    {
      *(a1 + 44) |= 8u;
      v162 = *(a1 + 344);
      if (!v162)
      {
        v163 = *(a1 + 8);
        v164 = (v163 & 0xFFFFFFFFFFFFFFFCLL);
        if (v163)
        {
          v164 = *v164;
        }

        v162 = sub_1861CE8(v164);
        *(a1 + 344) = v162;
      }

      if (*(a2 + 344))
      {
        v165 = *(a2 + 344);
      }

      else
      {
        v165 = &off_2784A00;
      }

      sub_12B9D50(v162, v165);
    }

    if ((v146 & 0x10) != 0)
    {
      *(a1 + 44) |= 0x10u;
      v166 = *(a1 + 352);
      if (!v166)
      {
        v167 = *(a1 + 8);
        v168 = (v167 & 0xFFFFFFFFFFFFFFFCLL);
        if (v167)
        {
          v168 = *v168;
        }

        v166 = sub_1869894(v168);
        *(a1 + 352) = v166;
      }

      v169 = *(a2 + 352);
      if (!v169)
      {
        v169 = &off_2787BA8;
      }

      v170 = v169[1];
      if (v170)
      {
        sub_1957EF4((v166 + 8), (v170 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 0x20) != 0)
    {
      *(a1 + 44) |= 0x20u;
      v171 = *(a1 + 360);
      if (!v171)
      {
        v172 = *(a1 + 8);
        v173 = (v172 & 0xFFFFFFFFFFFFFFFCLL);
        if (v172)
        {
          v173 = *v173;
        }

        v171 = sub_1861E00(v173);
        *(a1 + 360) = v171;
      }

      v174 = *(a2 + 360);
      if (!v174)
      {
        v174 = &off_2784A60;
      }

      v175 = v174[1];
      if (v175)
      {
        sub_1957EF4((v171 + 8), (v175 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 0x40) != 0)
    {
      *(a1 + 44) |= 0x40u;
      v176 = *(a1 + 368);
      if (!v176)
      {
        v177 = *(a1 + 8);
        v178 = (v177 & 0xFFFFFFFFFFFFFFFCLL);
        if (v177)
        {
          v178 = *v178;
        }

        v176 = sub_1862228(v178);
        *(a1 + 368) = v176;
      }

      v179 = *(a2 + 368);
      if (!v179)
      {
        v179 = &off_2784B90;
      }

      v180 = v179[1];
      if (v180)
      {
        sub_1957EF4((v176 + 8), (v180 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 0x80) != 0)
    {
      *(a1 + 44) |= 0x80u;
      v181 = *(a1 + 376);
      if (!v181)
      {
        v182 = *(a1 + 8);
        v183 = (v182 & 0xFFFFFFFFFFFFFFFCLL);
        if (v182)
        {
          v183 = *v183;
        }

        v181 = sub_1862318(v183);
        *(a1 + 376) = v181;
      }

      v184 = *(a2 + 376);
      if (!v184)
      {
        v184 = &off_2784BC8;
      }

      v185 = v184[1];
      if (v185)
      {
        sub_1957EF4((v181 + 8), (v185 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }
  }

  if ((v146 & 0xFF00) != 0)
  {
    if ((v146 & 0x100) != 0)
    {
      *(a1 + 44) |= 0x100u;
      v186 = *(a1 + 384);
      if (!v186)
      {
        v187 = *(a1 + 8);
        v188 = (v187 & 0xFFFFFFFFFFFFFFFCLL);
        if (v187)
        {
          v188 = *v188;
        }

        v186 = sub_1862418(v188);
        *(a1 + 384) = v186;
      }

      v189 = *(a2 + 384);
      if (!v189)
      {
        v189 = &off_2784C10;
      }

      v190 = v189[1];
      if (v190)
      {
        sub_1957EF4((v186 + 8), (v190 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 0x200) != 0)
    {
      *(a1 + 44) |= 0x200u;
      v191 = *(a1 + 392);
      if (!v191)
      {
        v192 = *(a1 + 8);
        v193 = (v192 & 0xFFFFFFFFFFFFFFFCLL);
        if (v192)
        {
          v193 = *v193;
        }

        v191 = sub_1861F18(v193);
        *(a1 + 392) = v191;
      }

      v194 = *(a2 + 392);
      if (!v194)
      {
        v194 = &off_2784AA8;
      }

      v195 = v194[1];
      if (v195)
      {
        sub_1957EF4((v191 + 8), (v195 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 0x400) != 0)
    {
      *(a1 + 44) |= 0x400u;
      v196 = *(a1 + 400);
      if (!v196)
      {
        v197 = *(a1 + 8);
        v198 = (v197 & 0xFFFFFFFFFFFFFFFCLL);
        if (v197)
        {
          v198 = *v198;
        }

        v196 = sub_186200C(v198);
        *(a1 + 400) = v196;
      }

      v199 = *(a2 + 400);
      if (!v199)
      {
        v199 = &off_2784AE0;
      }

      v200 = v199[1];
      if (v200)
      {
        sub_1957EF4((v196 + 8), (v200 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 0x800) != 0)
    {
      *(a1 + 44) |= 0x800u;
      v201 = *(a1 + 408);
      if (!v201)
      {
        v202 = *(a1 + 8);
        v203 = (v202 & 0xFFFFFFFFFFFFFFFCLL);
        if (v202)
        {
          v203 = *v203;
        }

        v201 = sub_19295B8(v203);
        *(a1 + 408) = v201;
      }

      v204 = *(a2 + 408);
      if (!v204)
      {
        v204 = &off_278BDB0;
      }

      v205 = v204[1];
      if (v205)
      {
        sub_1957EF4((v201 + 8), (v205 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 0x1000) != 0)
    {
      *(a1 + 44) |= 0x1000u;
      v206 = *(a1 + 416);
      if (!v206)
      {
        v207 = *(a1 + 8);
        v208 = (v207 & 0xFFFFFFFFFFFFFFFCLL);
        if (v207)
        {
          v208 = *v208;
        }

        v206 = sub_1862128(v208);
        *(a1 + 416) = v206;
      }

      v209 = *(a2 + 416);
      if (!v209)
      {
        v209 = &off_2784B40;
      }

      v210 = v209[1];
      if (v210)
      {
        sub_1957EF4((v206 + 8), (v210 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v146 & 0x2000) != 0)
    {
      *(a1 + 44) |= 0x2000u;
      v211 = *(a1 + 424);
      if (!v211)
      {
        v212 = *(a1 + 8);
        v213 = (v212 & 0xFFFFFFFFFFFFFFFCLL);
        if (v212)
        {
          v213 = *v213;
        }

        v211 = sub_1861810(v213);
        *(a1 + 424) = v211;
      }

      if (*(a2 + 424))
      {
        v214 = *(a2 + 424);
      }

      else
      {
        v214 = &off_27847A0;
      }

      sub_138F72C(v211, v214);
      if ((v146 & 0x4000) == 0)
      {
LABEL_418:
        if ((v146 & 0x8000) == 0)
        {
          goto LABEL_444;
        }

        goto LABEL_436;
      }
    }

    else if ((v146 & 0x4000) == 0)
    {
      goto LABEL_418;
    }

    *(a1 + 44) |= 0x4000u;
    v215 = *(a1 + 432);
    if (!v215)
    {
      v216 = *(a1 + 8);
      v217 = (v216 & 0xFFFFFFFFFFFFFFFCLL);
      if (v216)
      {
        v217 = *v217;
      }

      v215 = sub_18618E8(v217);
      *(a1 + 432) = v215;
    }

    if (*(a2 + 432))
    {
      v218 = *(a2 + 432);
    }

    else
    {
      v218 = &off_27847F8;
    }

    sub_138F72C(v215, v218);
    if ((v146 & 0x8000) != 0)
    {
LABEL_436:
      *(a1 + 44) |= 0x8000u;
      v219 = *(a1 + 440);
      if (!v219)
      {
        v220 = *(a1 + 8);
        v221 = (v220 & 0xFFFFFFFFFFFFFFFCLL);
        if (v220)
        {
          v221 = *v221;
        }

        v219 = sub_185FE0C(v221);
        *(a1 + 440) = v219;
      }

      if (*(a2 + 440))
      {
        v222 = *(a2 + 440);
      }

      else
      {
        v222 = &off_2783A78;
      }

      sub_138F72C(v219, v222);
    }
  }

LABEL_444:
  if ((v146 & 0xFF0000) == 0)
  {
    goto LABEL_519;
  }

  if ((v146 & 0x10000) != 0)
  {
    *(a1 + 44) |= 0x10000u;
    v223 = *(a1 + 448);
    if (!v223)
    {
      v224 = *(a1 + 8);
      v225 = (v224 & 0xFFFFFFFFFFFFFFFCLL);
      if (v224)
      {
        v225 = *v225;
      }

      v223 = sub_185F618(v225);
      *(a1 + 448) = v223;
    }

    if (*(a2 + 448))
    {
      v226 = *(a2 + 448);
    }

    else
    {
      v226 = &off_27837B8;
    }

    sub_138F72C(v223, v226);
    if ((v146 & 0x20000) == 0)
    {
LABEL_447:
      if ((v146 & 0x40000) == 0)
      {
        goto LABEL_473;
      }

      goto LABEL_465;
    }
  }

  else if ((v146 & 0x20000) == 0)
  {
    goto LABEL_447;
  }

  *(a1 + 44) |= 0x20000u;
  v227 = *(a1 + 456);
  if (!v227)
  {
    v228 = *(a1 + 8);
    v229 = (v228 & 0xFFFFFFFFFFFFFFFCLL);
    if (v228)
    {
      v229 = *v229;
    }

    v227 = sub_13AE304(v229);
    *(a1 + 456) = v227;
  }

  if (*(a2 + 456))
  {
    v230 = *(a2 + 456);
  }

  else
  {
    v230 = &off_276D7C0;
  }

  sub_1393C9C(v227, v230);
  if ((v146 & 0x40000) != 0)
  {
LABEL_465:
    *(a1 + 44) |= 0x40000u;
    v231 = *(a1 + 464);
    if (!v231)
    {
      v232 = *(a1 + 8);
      v233 = (v232 & 0xFFFFFFFFFFFFFFFCLL);
      if (v232)
      {
        v233 = *v233;
      }

      v231 = sub_191F918(v233);
      *(a1 + 464) = v231;
    }

    v234 = *(a2 + 464);
    if (!v234)
    {
      v234 = &off_278BB40;
    }

    v235 = v234[1];
    if (v235)
    {
      sub_1957EF4((v231 + 8), (v235 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_473:
  if ((v146 & 0x80000) != 0)
  {
    *(a1 + 44) |= 0x80000u;
    v236 = *(a1 + 472);
    if (!v236)
    {
      v237 = *(a1 + 8);
      v238 = (v237 & 0xFFFFFFFFFFFFFFFCLL);
      if (v237)
      {
        v238 = *v238;
      }

      v236 = sub_1862490(v238);
      *(a1 + 472) = v236;
    }

    v239 = *(a2 + 472);
    if (!v239)
    {
      v239 = &off_2784C28;
    }

    v240 = v239[1];
    if (v240)
    {
      sub_1957EF4((v236 + 8), (v240 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v146 & 0x100000) == 0)
  {
    if ((v146 & 0x200000) == 0)
    {
      goto LABEL_484;
    }

LABEL_494:
    *(a1 + 44) |= 0x200000u;
    v245 = *(a1 + 488);
    if (!v245)
    {
      v246 = *(a1 + 8);
      v247 = (v246 & 0xFFFFFFFFFFFFFFFCLL);
      if (v246)
      {
        v247 = *v247;
      }

      v245 = sub_18627B0(v247);
      *(a1 + 488) = v245;
    }

    if (*(a2 + 488))
    {
      v248 = *(a2 + 488);
    }

    else
    {
      v248 = &off_2784D60;
    }

    sub_1393C9C(v245, v248);
    if ((v146 & 0x400000) == 0)
    {
      goto LABEL_510;
    }

    goto LABEL_502;
  }

  *(a1 + 44) |= 0x100000u;
  v241 = *(a1 + 480);
  if (!v241)
  {
    v242 = *(a1 + 8);
    v243 = (v242 & 0xFFFFFFFFFFFFFFFCLL);
    if (v242)
    {
      v243 = *v243;
    }

    v241 = sub_185D8E4(v243);
    *(a1 + 480) = v241;
  }

  if (*(a2 + 480))
  {
    v244 = *(a2 + 480);
  }

  else
  {
    v244 = &off_2782720;
  }

  sub_179D8E4(v241, v244);
  if ((v146 & 0x200000) != 0)
  {
    goto LABEL_494;
  }

LABEL_484:
  if ((v146 & 0x400000) != 0)
  {
LABEL_502:
    *(a1 + 44) |= 0x400000u;
    v249 = *(a1 + 496);
    if (!v249)
    {
      v250 = *(a1 + 8);
      v251 = (v250 & 0xFFFFFFFFFFFFFFFCLL);
      if (v250)
      {
        v251 = *v251;
      }

      v249 = sub_191F990(v251);
      *(a1 + 496) = v249;
    }

    v252 = *(a2 + 496);
    if (!v252)
    {
      v252 = &off_278BB58;
    }

    v253 = v252[1];
    if (v253)
    {
      sub_1957EF4((v249 + 8), (v253 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_510:
  if ((v146 & 0x800000) != 0)
  {
    *(a1 + 44) |= 0x800000u;
    v254 = *(a1 + 504);
    if (!v254)
    {
      v255 = *(a1 + 8);
      v256 = (v255 & 0xFFFFFFFFFFFFFFFCLL);
      if (v255)
      {
        v256 = *v256;
      }

      v254 = sub_1866344(v256);
      *(a1 + 504) = v254;
    }

    if (*(a2 + 504))
    {
      v257 = *(a2 + 504);
    }

    else
    {
      v257 = &off_2787548;
    }

    sub_138F72C(v254, v257);
  }

LABEL_519:
  if (!HIBYTE(v146))
  {
    goto LABEL_593;
  }

  if ((v146 & 0x1000000) != 0)
  {
    *(a1 + 44) |= 0x1000000u;
    v258 = *(a1 + 512);
    if (!v258)
    {
      v259 = *(a1 + 8);
      v260 = (v259 & 0xFFFFFFFFFFFFFFFCLL);
      if (v259)
      {
        v260 = *v260;
      }

      v258 = sub_18663A0(v260);
      *(a1 + 512) = v258;
    }

    if (*(a2 + 512))
    {
      v261 = *(a2 + 512);
    }

    else
    {
      v261 = &off_2787578;
    }

    sub_138F72C(v258, v261);
    if ((v146 & 0x2000000) == 0)
    {
LABEL_522:
      if ((v146 & 0x4000000) == 0)
      {
        goto LABEL_523;
      }

      goto LABEL_545;
    }
  }

  else if ((v146 & 0x2000000) == 0)
  {
    goto LABEL_522;
  }

  *(a1 + 44) |= 0x2000000u;
  v262 = *(a1 + 520);
  if (!v262)
  {
    v263 = *(a1 + 8);
    v264 = (v263 & 0xFFFFFFFFFFFFFFFCLL);
    if (v263)
    {
      v264 = *v264;
    }

    v262 = sub_18663FC(v264);
    *(a1 + 520) = v262;
  }

  if (*(a2 + 520))
  {
    v265 = *(a2 + 520);
  }

  else
  {
    v265 = &off_27875A8;
  }

  sub_138F72C(v262, v265);
  if ((v146 & 0x4000000) == 0)
  {
LABEL_523:
    if ((v146 & 0x8000000) == 0)
    {
      goto LABEL_524;
    }

    goto LABEL_553;
  }

LABEL_545:
  *(a1 + 44) |= 0x4000000u;
  v266 = *(a1 + 528);
  if (!v266)
  {
    v267 = *(a1 + 8);
    v268 = (v267 & 0xFFFFFFFFFFFFFFFCLL);
    if (v267)
    {
      v268 = *v268;
    }

    v266 = sub_1866458(v268);
    *(a1 + 528) = v266;
  }

  if (*(a2 + 528))
  {
    v269 = *(a2 + 528);
  }

  else
  {
    v269 = &off_27875D8;
  }

  sub_138F72C(v266, v269);
  if ((v146 & 0x8000000) == 0)
  {
LABEL_524:
    if ((v146 & 0x10000000) == 0)
    {
      goto LABEL_525;
    }

    goto LABEL_561;
  }

LABEL_553:
  *(a1 + 44) |= 0x8000000u;
  v270 = *(a1 + 536);
  if (!v270)
  {
    v271 = *(a1 + 8);
    v272 = (v271 & 0xFFFFFFFFFFFFFFFCLL);
    if (v271)
    {
      v272 = *v272;
    }

    v270 = sub_18664B4(v272);
    *(a1 + 536) = v270;
  }

  if (*(a2 + 536))
  {
    v273 = *(a2 + 536);
  }

  else
  {
    v273 = &off_2787608;
  }

  sub_138F72C(v270, v273);
  if ((v146 & 0x10000000) == 0)
  {
LABEL_525:
    if ((v146 & 0x20000000) == 0)
    {
      goto LABEL_526;
    }

    goto LABEL_569;
  }

LABEL_561:
  *(a1 + 44) |= 0x10000000u;
  v274 = *(a1 + 544);
  if (!v274)
  {
    v275 = *(a1 + 8);
    v276 = (v275 & 0xFFFFFFFFFFFFFFFCLL);
    if (v275)
    {
      v276 = *v276;
    }

    v274 = sub_1866510(v276);
    *(a1 + 544) = v274;
  }

  if (*(a2 + 544))
  {
    v277 = *(a2 + 544);
  }

  else
  {
    v277 = &off_2787638;
  }

  sub_18121A4(v274, v277);
  if ((v146 & 0x20000000) == 0)
  {
LABEL_526:
    if ((v146 & 0x40000000) == 0)
    {
      goto LABEL_527;
    }

    goto LABEL_577;
  }

LABEL_569:
  *(a1 + 44) |= 0x20000000u;
  v278 = *(a1 + 552);
  if (!v278)
  {
    v279 = *(a1 + 8);
    v280 = (v279 & 0xFFFFFFFFFFFFFFFCLL);
    if (v279)
    {
      v280 = *v280;
    }

    v278 = sub_18666C4(v280);
    *(a1 + 552) = v278;
  }

  if (*(a2 + 552))
  {
    v281 = *(a2 + 552);
  }

  else
  {
    v281 = &off_2787708;
  }

  sub_181228C(v278, v281);
  if ((v146 & 0x40000000) == 0)
  {
LABEL_527:
    if ((v146 & 0x80000000) == 0)
    {
      goto LABEL_593;
    }

    goto LABEL_585;
  }

LABEL_577:
  *(a1 + 44) |= 0x40000000u;
  v282 = *(a1 + 560);
  if (!v282)
  {
    v283 = *(a1 + 8);
    v284 = (v283 & 0xFFFFFFFFFFFFFFFCLL);
    if (v283)
    {
      v284 = *v284;
    }

    v282 = sub_1866720(v284);
    *(a1 + 560) = v282;
  }

  if (*(a2 + 560))
  {
    v285 = *(a2 + 560);
  }

  else
  {
    v285 = &off_2787740;
  }

  sub_138F72C(v282, v285);
  if ((v146 & 0x80000000) != 0)
  {
LABEL_585:
    *(a1 + 44) |= 0x80000000;
    v286 = *(a1 + 568);
    if (!v286)
    {
      v287 = *(a1 + 8);
      v288 = (v287 & 0xFFFFFFFFFFFFFFFCLL);
      if (v287)
      {
        v288 = *v288;
      }

      v286 = sub_186677C(v288);
      *(a1 + 568) = v286;
    }

    if (*(a2 + 568))
    {
      v289 = *(a2 + 568);
    }

    else
    {
      v289 = &off_2787770;
    }

    sub_181231C(v286, v289);
  }

LABEL_593:
  v290 = *(a2 + 48);
  if (!v290)
  {
    goto LABEL_667;
  }

  if (v290)
  {
    *(a1 + 48) |= 1u;
    v291 = *(a1 + 576);
    if (!v291)
    {
      v292 = *(a1 + 8);
      v293 = (v292 & 0xFFFFFFFFFFFFFFFCLL);
      if (v292)
      {
        v293 = *v293;
      }

      v291 = sub_18667D8(v293);
      *(a1 + 576) = v291;
    }

    if (*(a2 + 576))
    {
      v294 = *(a2 + 576);
    }

    else
    {
      v294 = &off_27877C0;
    }

    sub_138F72C(v291, v294);
    if ((v290 & 2) == 0)
    {
LABEL_596:
      if ((v290 & 4) == 0)
      {
        goto LABEL_597;
      }

      goto LABEL_618;
    }
  }

  else if ((v290 & 2) == 0)
  {
    goto LABEL_596;
  }

  *(a1 + 48) |= 2u;
  v295 = *(a1 + 584);
  if (!v295)
  {
    v296 = *(a1 + 8);
    v297 = (v296 & 0xFFFFFFFFFFFFFFFCLL);
    if (v296)
    {
      v297 = *v297;
    }

    v295 = sub_18629A8(v297);
    *(a1 + 584) = v295;
  }

  if (*(a2 + 584))
  {
    v298 = *(a2 + 584);
  }

  else
  {
    v298 = &off_2784EC8;
  }

  sub_138F72C(v295, v298);
  if ((v290 & 4) == 0)
  {
LABEL_597:
    if ((v290 & 8) == 0)
    {
      goto LABEL_598;
    }

    goto LABEL_626;
  }

LABEL_618:
  *(a1 + 48) |= 4u;
  v299 = *(a1 + 592);
  if (!v299)
  {
    v300 = *(a1 + 8);
    v301 = (v300 & 0xFFFFFFFFFFFFFFFCLL);
    if (v300)
    {
      v301 = *v301;
    }

    v299 = sub_1866834(v301);
    *(a1 + 592) = v299;
  }

  if (*(a2 + 592))
  {
    v302 = *(a2 + 592);
  }

  else
  {
    v302 = &off_27877F0;
  }

  sub_1393C9C(v299, v302);
  if ((v290 & 8) == 0)
  {
LABEL_598:
    if ((v290 & 0x10) == 0)
    {
      goto LABEL_599;
    }

    goto LABEL_634;
  }

LABEL_626:
  *(a1 + 48) |= 8u;
  v303 = *(a1 + 600);
  if (!v303)
  {
    v304 = *(a1 + 8);
    v305 = (v304 & 0xFFFFFFFFFFFFFFFCLL);
    if (v304)
    {
      v305 = *v305;
    }

    v303 = sub_1866B08(v305);
    *(a1 + 600) = v303;
  }

  if (*(a2 + 600))
  {
    v306 = *(a2 + 600);
  }

  else
  {
    v306 = &off_27878E0;
  }

  sub_138F72C(v303, v306);
  if ((v290 & 0x10) == 0)
  {
LABEL_599:
    if ((v290 & 0x20) == 0)
    {
      goto LABEL_600;
    }

LABEL_642:
    *(a1 + 48) |= 0x20u;
    v311 = *(a1 + 616);
    if (!v311)
    {
      v312 = *(a1 + 8);
      v313 = (v312 & 0xFFFFFFFFFFFFFFFCLL);
      if (v312)
      {
        v313 = *v313;
      }

      v311 = sub_1866890(v313);
      *(a1 + 616) = v311;
    }

    if (*(a2 + 616))
    {
      v314 = *(a2 + 616);
    }

    else
    {
      v314 = &off_2787828;
    }

    sub_138F72C(v311, v314);
    if ((v290 & 0x40) == 0)
    {
      goto LABEL_658;
    }

    goto LABEL_650;
  }

LABEL_634:
  *(a1 + 48) |= 0x10u;
  v307 = *(a1 + 608);
  if (!v307)
  {
    v308 = *(a1 + 8);
    v309 = (v308 & 0xFFFFFFFFFFFFFFFCLL);
    if (v308)
    {
      v309 = *v309;
    }

    v307 = sub_186656C(v309);
    *(a1 + 608) = v307;
  }

  if (*(a2 + 608))
  {
    v310 = *(a2 + 608);
  }

  else
  {
    v310 = &off_2787678;
  }

  sub_13978A4(v307, v310);
  if ((v290 & 0x20) != 0)
  {
    goto LABEL_642;
  }

LABEL_600:
  if ((v290 & 0x40) != 0)
  {
LABEL_650:
    *(a1 + 48) |= 0x40u;
    v315 = *(a1 + 624);
    if (!v315)
    {
      v316 = *(a1 + 8);
      v317 = (v316 & 0xFFFFFFFFFFFFFFFCLL);
      if (v316)
      {
        v317 = *v317;
      }

      v315 = sub_1866A90(v317);
      *(a1 + 624) = v315;
    }

    v318 = *(a2 + 624);
    if (!v318)
    {
      v318 = &off_27878C8;
    }

    v319 = v318[1];
    if (v319)
    {
      sub_1957EF4((v315 + 8), (v319 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_658:
  if ((v290 & 0x80) != 0)
  {
    *(a1 + 48) |= 0x80u;
    v320 = *(a1 + 632);
    if (!v320)
    {
      v321 = *(a1 + 8);
      v322 = (v321 & 0xFFFFFFFFFFFFFFFCLL);
      if (v321)
      {
        v322 = *v322;
      }

      v320 = sub_18601BC(v322);
      *(a1 + 632) = v320;
    }

    if (*(a2 + 632))
    {
      v323 = *(a2 + 632);
    }

    else
    {
      v323 = &off_2783D20;
    }

    sub_138F72C(v320, v323);
  }

LABEL_667:
  if ((v290 & 0xFF00) == 0)
  {
    goto LABEL_741;
  }

  if ((v290 & 0x100) != 0)
  {
    *(a1 + 48) |= 0x100u;
    v324 = *(a1 + 640);
    if (!v324)
    {
      v325 = *(a1 + 8);
      v326 = (v325 & 0xFFFFFFFFFFFFFFFCLL);
      if (v325)
      {
        v326 = *v326;
      }

      v324 = sub_191FA08(v326);
      *(a1 + 640) = v324;
    }

    v327 = *(a2 + 640);
    if (!v327)
    {
      v327 = &off_278BB70;
    }

    v328 = v327[1];
    if (v328)
    {
      sub_1957EF4((v324 + 8), (v328 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v290 & 0x200) != 0)
  {
    *(a1 + 48) |= 0x200u;
    v329 = *(a1 + 648);
    if (!v329)
    {
      v330 = *(a1 + 8);
      v331 = (v330 & 0xFFFFFFFFFFFFFFFCLL);
      if (v330)
      {
        v331 = *v331;
      }

      v329 = sub_186660C(v331);
      *(a1 + 648) = v329;
    }

    if (*(a2 + 648))
    {
      v332 = *(a2 + 648);
    }

    else
    {
      v332 = &off_27876A8;
    }

    sub_138F72C(v329, v332);
    if ((v290 & 0x400) == 0)
    {
LABEL_679:
      if ((v290 & 0x800) == 0)
      {
        goto LABEL_680;
      }

      goto LABEL_699;
    }
  }

  else if ((v290 & 0x400) == 0)
  {
    goto LABEL_679;
  }

  *(a1 + 48) |= 0x400u;
  v333 = *(a1 + 656);
  if (!v333)
  {
    v334 = *(a1 + 8);
    v335 = (v334 & 0xFFFFFFFFFFFFFFFCLL);
    if (v334)
    {
      v335 = *v335;
    }

    v333 = sub_1864108(v335);
    *(a1 + 656) = v333;
  }

  if (*(a2 + 656))
  {
    v336 = *(a2 + 656);
  }

  else
  {
    v336 = &off_2786530;
  }

  sub_138F72C(v333, v336);
  if ((v290 & 0x800) == 0)
  {
LABEL_680:
    if ((v290 & 0x1000) == 0)
    {
      goto LABEL_681;
    }

LABEL_707:
    *(a1 + 48) |= 0x1000u;
    v341 = *(a1 + 672);
    if (!v341)
    {
      v342 = *(a1 + 8);
      v343 = (v342 & 0xFFFFFFFFFFFFFFFCLL);
      if (v342)
      {
        v343 = *v343;
      }

      v341 = sub_1866668(v343);
      *(a1 + 672) = v341;
    }

    if (*(a2 + 672))
    {
      v344 = *(a2 + 672);
    }

    else
    {
      v344 = &off_27876D8;
    }

    sub_138F72C(v341, v344);
    if ((v290 & 0x2000) == 0)
    {
      goto LABEL_723;
    }

    goto LABEL_715;
  }

LABEL_699:
  *(a1 + 48) |= 0x800u;
  v337 = *(a1 + 664);
  if (!v337)
  {
    v338 = *(a1 + 8);
    v339 = (v338 & 0xFFFFFFFFFFFFFFFCLL);
    if (v338)
    {
      v339 = *v339;
    }

    v337 = sub_1860C24(v339);
    *(a1 + 664) = v337;
  }

  if (*(a2 + 664))
  {
    v340 = *(a2 + 664);
  }

  else
  {
    v340 = &off_2784258;
  }

  sub_17D98F8(v337, v340);
  if ((v290 & 0x1000) != 0)
  {
    goto LABEL_707;
  }

LABEL_681:
  if ((v290 & 0x2000) != 0)
  {
LABEL_715:
    *(a1 + 48) |= 0x2000u;
    v345 = *(a1 + 680);
    if (!v345)
    {
      v346 = *(a1 + 8);
      v347 = (v346 & 0xFFFFFFFFFFFFFFFCLL);
      if (v346)
      {
        v347 = *v347;
      }

      v345 = sub_1860550(v347);
      *(a1 + 680) = v345;
    }

    v348 = *(a2 + 680);
    if (!v348)
    {
      v348 = &off_2783E88;
    }

    v349 = v348[1];
    if (v349)
    {
      sub_1957EF4((v345 + 8), (v349 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_723:
  if ((v290 & 0x4000) != 0)
  {
    *(a1 + 48) |= 0x4000u;
    v350 = *(a1 + 688);
    if (!v350)
    {
      v351 = *(a1 + 8);
      v352 = (v351 & 0xFFFFFFFFFFFFFFFCLL);
      if (v351)
      {
        v352 = *v352;
      }

      v350 = sub_1860798(v352);
      *(a1 + 688) = v350;
    }

    v353 = *(a2 + 688);
    if (!v353)
    {
      v353 = &off_2783FA0;
    }

    v354 = v353[1];
    if (v354)
    {
      sub_1957EF4((v350 + 8), (v354 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v290 & 0x8000) != 0)
  {
    *(a1 + 48) |= 0x8000u;
    v355 = *(a1 + 696);
    if (!v355)
    {
      v356 = *(a1 + 8);
      v357 = (v356 & 0xFFFFFFFFFFFFFFFCLL);
      if (v356)
      {
        v357 = *v357;
      }

      v355 = sub_186086C(v357);
      *(a1 + 696) = v355;
    }

    v358 = *(a2 + 696);
    if (!v358)
    {
      v358 = &off_2784008;
    }

    v359 = v358[1];
    if (v359)
    {
      sub_1957EF4((v355 + 8), (v359 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_741:
  if ((v290 & 0xFF0000) != 0)
  {
    if ((v290 & 0x10000) != 0)
    {
      *(a1 + 48) |= 0x10000u;
      v360 = *(a1 + 704);
      if (!v360)
      {
        v361 = *(a1 + 8);
        v362 = (v361 & 0xFFFFFFFFFFFFFFFCLL);
        if (v361)
        {
          v362 = *v362;
        }

        v360 = sub_1863F7C(v362);
        *(a1 + 704) = v360;
      }

      if (*(a2 + 704))
      {
        v363 = *(a2 + 704);
      }

      else
      {
        v363 = &off_2786440;
      }

      sub_138F72C(v360, v363);
    }

    if ((v290 & 0x20000) != 0)
    {
      *(a1 + 48) |= 0x20000u;
      v364 = *(a1 + 712);
      if (!v364)
      {
        v365 = *(a1 + 8);
        v366 = (v365 & 0xFFFFFFFFFFFFFFFCLL);
        if (v365)
        {
          v366 = *v366;
        }

        v364 = sub_1866D00(v366);
        *(a1 + 712) = v364;
      }

      v367 = *(a2 + 712);
      if (!v367)
      {
        v367 = &off_27879A0;
      }

      v368 = v367[1];
      if (v368)
      {
        sub_1957EF4((v364 + 8), (v368 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v290 & 0x40000) != 0)
    {
      *(a1 + 48) |= 0x40000u;
      v369 = *(a1 + 720);
      if (!v369)
      {
        v370 = *(a1 + 8);
        v371 = (v370 & 0xFFFFFFFFFFFFFFFCLL);
        if (v370)
        {
          v371 = *v371;
        }

        v369 = sub_185EFF4(v371);
        *(a1 + 720) = v369;
      }

      v372 = *(a2 + 720);
      if (!v372)
      {
        v372 = &off_2783438;
      }

      v373 = v372[1];
      if (v373)
      {
        sub_1957EF4((v369 + 8), (v373 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v290 & 0x80000) != 0)
    {
      *(a1 + 48) |= 0x80000u;
      v374 = *(a1 + 728);
      if (!v374)
      {
        v375 = *(a1 + 8);
        v376 = (v375 & 0xFFFFFFFFFFFFFFFCLL);
        if (v375)
        {
          v376 = *v376;
        }

        v374 = sub_1860624(v376);
        *(a1 + 728) = v374;
      }

      v377 = *(a2 + 728);
      if (!v377)
      {
        v377 = &off_2783F38;
      }

      v378 = v377[1];
      if (v378)
      {
        sub_1957EF4((v374 + 8), (v378 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v290 & 0x100000) != 0)
    {
      *(a1 + 48) |= 0x100000u;
      v379 = *(a1 + 736);
      if (!v379)
      {
        v380 = *(a1 + 8);
        v381 = (v380 & 0xFFFFFFFFFFFFFFFCLL);
        if (v380)
        {
          v381 = *v381;
        }

        v379 = sub_1865AF0(v381);
        *(a1 + 736) = v379;
      }

      if (*(a2 + 736))
      {
        v382 = *(a2 + 736);
      }

      else
      {
        v382 = &off_27870F0;
      }

      sub_12EE670(v379, v382);
    }

    if ((v290 & 0x200000) != 0)
    {
      *(a1 + 48) |= 0x200000u;
      v383 = *(a1 + 744);
      if (!v383)
      {
        v384 = *(a1 + 8);
        v385 = (v384 & 0xFFFFFFFFFFFFFFFCLL);
        if (v384)
        {
          v385 = *v385;
        }

        v383 = sub_1866E78(v385);
        *(a1 + 744) = v383;
      }

      v386 = *(a2 + 744);
      if (!v386)
      {
        v386 = &off_2787A58;
      }

      v387 = v386[1];
      if (v387)
      {
        sub_1957EF4((v383 + 8), (v387 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v290 & 0x400000) != 0)
    {
      *(a1 + 48) |= 0x400000u;
      v388 = *(a1 + 752);
      if (!v388)
      {
        v389 = *(a1 + 8);
        v390 = (v389 & 0xFFFFFFFFFFFFFFFCLL);
        if (v389)
        {
          v390 = *v390;
        }

        v388 = sub_185F0C8(v390);
        *(a1 + 752) = v388;
      }

      v391 = *(a2 + 752);
      if (!v391)
      {
        v391 = &off_2783490;
      }

      v392 = v391[1];
      if (v392)
      {
        sub_1957EF4((v388 + 8), (v392 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v290 & 0x800000) != 0)
    {
      *(a1 + 48) |= 0x800000u;
      v393 = *(a1 + 760);
      if (!v393)
      {
        v394 = *(a1 + 8);
        v395 = (v394 & 0xFFFFFFFFFFFFFFFCLL);
        if (v394)
        {
          v395 = *v395;
        }

        v393 = sub_185F140(v395);
        *(a1 + 760) = v393;
      }

      v396 = *(a2 + 760);
      if (!v396)
      {
        v396 = &off_27834A8;
      }

      v397 = v396[1];
      if (v397)
      {
        sub_1957EF4((v393 + 8), (v397 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }
  }

  if (!HIBYTE(v290))
  {
    goto LABEL_888;
  }

  if ((v290 & 0x1000000) != 0)
  {
    *(a1 + 48) |= 0x1000000u;
    v398 = *(a1 + 768);
    if (!v398)
    {
      v399 = *(a1 + 8);
      v400 = (v399 & 0xFFFFFFFFFFFFFFFCLL);
      if (v399)
      {
        v400 = *v400;
      }

      v398 = sub_1863A50(v400);
      *(a1 + 768) = v398;
    }

    if (*(a2 + 768))
    {
      v401 = *(a2 + 768);
    }

    else
    {
      v401 = &off_2786208;
    }

    sub_1425F24(v398, v401);
    if ((v290 & 0x2000000) == 0)
    {
LABEL_817:
      if ((v290 & 0x4000000) == 0)
      {
        goto LABEL_818;
      }

      goto LABEL_840;
    }
  }

  else if ((v290 & 0x2000000) == 0)
  {
    goto LABEL_817;
  }

  *(a1 + 48) |= 0x2000000u;
  v402 = *(a1 + 776);
  if (!v402)
  {
    v403 = *(a1 + 8);
    v404 = (v403 & 0xFFFFFFFFFFFFFFFCLL);
    if (v403)
    {
      v404 = *v404;
    }

    v402 = sub_1863144(v404);
    *(a1 + 776) = v402;
  }

  if (*(a2 + 776))
  {
    v405 = *(a2 + 776);
  }

  else
  {
    v405 = &off_2785D28;
  }

  sub_138F72C(v402, v405);
  if ((v290 & 0x4000000) == 0)
  {
LABEL_818:
    if ((v290 & 0x8000000) == 0)
    {
      goto LABEL_819;
    }

    goto LABEL_848;
  }

LABEL_840:
  *(a1 + 48) |= 0x4000000u;
  v406 = *(a1 + 784);
  if (!v406)
  {
    v407 = *(a1 + 8);
    v408 = (v407 & 0xFFFFFFFFFFFFFFFCLL);
    if (v407)
    {
      v408 = *v408;
    }

    v406 = sub_186365C(v408);
    *(a1 + 784) = v406;
  }

  if (*(a2 + 784))
  {
    v409 = *(a2 + 784);
  }

  else
  {
    v409 = &off_2786040;
  }

  sub_138F72C(v406, v409);
  if ((v290 & 0x8000000) == 0)
  {
LABEL_819:
    if ((v290 & 0x10000000) == 0)
    {
      goto LABEL_820;
    }

    goto LABEL_856;
  }

LABEL_848:
  *(a1 + 48) |= 0x8000000u;
  v410 = *(a1 + 792);
  if (!v410)
  {
    v411 = *(a1 + 8);
    v412 = (v411 & 0xFFFFFFFFFFFFFFFCLL);
    if (v411)
    {
      v412 = *v412;
    }

    v410 = sub_1860CDC(v412);
    *(a1 + 792) = v410;
  }

  if (*(a2 + 792))
  {
    v413 = *(a2 + 792);
  }

  else
  {
    v413 = &off_27842F0;
  }

  sub_17DA688(v410, v413);
  if ((v290 & 0x10000000) == 0)
  {
LABEL_820:
    if ((v290 & 0x20000000) == 0)
    {
      goto LABEL_821;
    }

LABEL_864:
    *(a1 + 48) |= 0x20000000u;
    v418 = *(a1 + 808);
    if (!v418)
    {
      v419 = *(a1 + 8);
      v420 = (v419 & 0xFFFFFFFFFFFFFFFCLL);
      if (v419)
      {
        v420 = *v420;
      }

      v418 = sub_18632B4(v420);
      *(a1 + 808) = v418;
    }

    if (*(a2 + 808))
    {
      v421 = *(a2 + 808);
    }

    else
    {
      v421 = &off_2785E58;
    }

    sub_138F72C(v418, v421);
    if ((v290 & 0x40000000) == 0)
    {
LABEL_822:
      if ((v290 & 0x80000000) == 0)
      {
        goto LABEL_888;
      }

      goto LABEL_880;
    }

    goto LABEL_872;
  }

LABEL_856:
  *(a1 + 48) |= 0x10000000u;
  v414 = *(a1 + 800);
  if (!v414)
  {
    v415 = *(a1 + 8);
    v416 = (v415 & 0xFFFFFFFFFFFFFFFCLL);
    if (v415)
    {
      v416 = *v416;
    }

    v414 = sub_18631FC(v416);
    *(a1 + 800) = v414;
  }

  if (*(a2 + 800))
  {
    v417 = *(a2 + 800);
  }

  else
  {
    v417 = &off_2785DA8;
  }

  sub_138F72C(v414, v417);
  if ((v290 & 0x20000000) != 0)
  {
    goto LABEL_864;
  }

LABEL_821:
  if ((v290 & 0x40000000) == 0)
  {
    goto LABEL_822;
  }

LABEL_872:
  *(a1 + 48) |= 0x40000000u;
  v422 = *(a1 + 816);
  if (!v422)
  {
    v423 = *(a1 + 8);
    v424 = (v423 & 0xFFFFFFFFFFFFFFFCLL);
    if (v423)
    {
      v424 = *v424;
    }

    v422 = sub_186336C(v424);
    *(a1 + 816) = v422;
  }

  if (*(a2 + 816))
  {
    v425 = *(a2 + 816);
  }

  else
  {
    v425 = &off_2785ED0;
  }

  sub_138F72C(v422, v425);
  if ((v290 & 0x80000000) != 0)
  {
LABEL_880:
    *(a1 + 48) |= 0x80000000;
    v426 = *(a1 + 824);
    if (!v426)
    {
      v427 = *(a1 + 8);
      v428 = (v427 & 0xFFFFFFFFFFFFFFFCLL);
      if (v427)
      {
        v428 = *v428;
      }

      v426 = sub_1863424(v428);
      *(a1 + 824) = v426;
    }

    if (*(a2 + 824))
    {
      v429 = *(a2 + 824);
    }

    else
    {
      v429 = &off_2785F38;
    }

    sub_138F72C(v426, v429);
  }

LABEL_888:
  v430 = *(a2 + 52);
  if ((v430 & 0x3F) == 0)
  {
    goto LABEL_944;
  }

  if ((v430 & 1) == 0)
  {
    if ((v430 & 2) == 0)
    {
      goto LABEL_891;
    }

LABEL_901:
    *(a1 + 52) |= 2u;
    v435 = *(a1 + 840);
    if (!v435)
    {
      v436 = *(a1 + 8);
      v437 = (v436 & 0xFFFFFFFFFFFFFFFCLL);
      if (v436)
      {
        v437 = *v437;
      }

      v435 = sub_1863520(v437);
      *(a1 + 840) = v435;
    }

    if (*(a2 + 840))
    {
      v438 = *(a2 + 840);
    }

    else
    {
      v438 = &off_2785F98;
    }

    sub_138F72C(v435, v438);
    if ((v430 & 4) == 0)
    {
      goto LABEL_917;
    }

    goto LABEL_909;
  }

  *(a1 + 52) |= 1u;
  v431 = *(a1 + 832);
  if (!v431)
  {
    v432 = *(a1 + 8);
    v433 = (v432 & 0xFFFFFFFFFFFFFFFCLL);
    if (v432)
    {
      v433 = *v433;
    }

    v431 = sub_186308C(v433);
    *(a1 + 832) = v431;
  }

  if (*(a2 + 832))
  {
    v434 = *(a2 + 832);
  }

  else
  {
    v434 = &off_2785CB8;
  }

  sub_1393C9C(v431, v434);
  if ((v430 & 2) != 0)
  {
    goto LABEL_901;
  }

LABEL_891:
  if ((v430 & 4) != 0)
  {
LABEL_909:
    *(a1 + 52) |= 4u;
    v439 = *(a1 + 848);
    if (!v439)
    {
      v440 = *(a1 + 8);
      v441 = (v440 & 0xFFFFFFFFFFFFFFFCLL);
      if (v440)
      {
        v441 = *v441;
      }

      v439 = sub_185FB9C(v441);
      *(a1 + 848) = v439;
    }

    v442 = *(a2 + 848);
    if (!v442)
    {
      v442 = &off_27839D8;
    }

    v443 = v442[1];
    if (v443)
    {
      sub_1957EF4((v439 + 8), (v443 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

LABEL_917:
  if ((v430 & 8) != 0)
  {
    *(a1 + 52) |= 8u;
    v444 = *(a1 + 856);
    if (!v444)
    {
      v445 = *(a1 + 8);
      v446 = (v445 & 0xFFFFFFFFFFFFFFFCLL);
      if (v445)
      {
        v446 = *v446;
      }

      v444 = sub_185FD38(v446);
      *(a1 + 856) = v444;
    }

    v447 = *(a2 + 856);
    if (!v447)
    {
      v447 = &off_2783A20;
    }

    v448 = v447[1];
    if (v448)
    {
      sub_1957EF4((v444 + 8), (v448 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }
  }

  if ((v430 & 0x10) != 0)
  {
    *(a1 + 52) |= 0x10u;
    v449 = *(a1 + 864);
    if (!v449)
    {
      v450 = *(a1 + 8);
      v451 = (v450 & 0xFFFFFFFFFFFFFFFCLL);
      if (v450)
      {
        v451 = *v451;
      }

      v449 = sub_18641C0(v451);
      *(a1 + 864) = v449;
    }

    if (*(a2 + 864))
    {
      v452 = *(a2 + 864);
    }

    else
    {
      v452 = &off_2786598;
    }

    sub_138F72C(v449, v452);
  }

  if ((v430 & 0x20) != 0)
  {
    *(a1 + 52) |= 0x20u;
    v453 = *(a1 + 872);
    if (!v453)
    {
      v454 = *(a1 + 8);
      v455 = (v454 & 0xFFFFFFFFFFFFFFFCLL);
      if (v454)
      {
        v455 = *v455;
      }

      v453 = sub_186383C(v455);
      *(a1 + 872) = v453;
    }

    if (*(a2 + 872))
    {
      v456 = *(a2 + 872);
    }

    else
    {
      v456 = &off_27860D0;
    }

    sub_138F72C(v453, v456);
  }

LABEL_944:
  sub_225EA0C(a1 + 16, a2 + 16);
  v457 = *(a2 + 8);
  if (v457)
  {

    sub_1957EF4((a1 + 8), (v457 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18121A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x7F) != 0)
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 52) = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_17:
    *(a1 + 53) = *(a2 + 53);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

LABEL_18:
    *(a1 + 54) = *(a2 + 54);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 55) = *(a2 + 55);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        *(a1 + 40) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 57) = *(a2 + 57);
      goto LABEL_10;
    }

LABEL_20:
    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_181228C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(a1 + 48) = *(a2 + 48);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 52) = *(a2 + 52);
    }

    *(a1 + 40) |= v4;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_181231C(uint64_t a1, uint64_t a2)
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

        v6 = sub_185D248(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_27822C8;
      }

      sub_1793540(v6, v9);
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

    *(a1 + 40) |= 2u;
    v10 = *(a1 + 56);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_185D248(v12);
      *(a1 + 56) = v10;
    }

    if (*(a2 + 56))
    {
      v13 = *(a2 + 56);
    }

    else
    {
      v13 = &off_27822C8;
    }

    sub_1793540(v10, v13);
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

LABEL_28:
    *(a1 + 40) |= 4u;
    v14 = *(a1 + 64);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_185D2C4(v16);
      *(a1 + 64) = v14;
    }

    if (*(a2 + 64))
    {
      v17 = *(a2 + 64);
    }

    else
    {
      v17 = &off_27822F0;
    }

    sub_128F8FC(v14, v17);
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

uint64_t sub_1812498(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      result = sub_195228C(*(a1 + 64) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 2) != 0)
    {
      result = sub_195228C(*(a1 + 72) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 4) != 0)
    {
      result = sub_195228C(*(a1 + 80) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_195228C(*(a1 + 88) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_195228C(*(a1 + 96) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x20) != 0)
    {
      result = sub_195228C(*(a1 + 104) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x40) != 0)
    {
      result = sub_195228C(*(a1 + 112) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80) != 0)
    {
      result = sub_195228C(*(a1 + 120) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x100) != 0)
    {
      result = sub_195228C(*(a1 + 128) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x800) != 0)
    {
      result = sub_17CA8A0(*(a1 + 152));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x2000) != 0)
    {
      result = sub_195228C(*(a1 + 168) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = sub_195228C(*(a1 + 176) + 16);
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x80000000) == 0 || (result = sub_195228C(*(a1 + 312) + 16), result))
    {
      v4 = *(a1 + 44);
      if ((v4 & 0x2000) != 0)
      {
        result = sub_195228C(*(a1 + 424) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x4000) != 0)
      {
        result = sub_195228C(*(a1 + 432) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x8000) != 0)
      {
        result = sub_195228C(*(a1 + 440) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x10000) != 0)
      {
        result = sub_195228C(*(a1 + 448) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x20000) != 0)
      {
        result = sub_1393D18(*(a1 + 456));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x100000) != 0)
      {
        result = sub_195228C(*(a1 + 480) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x200000) != 0)
      {
        result = sub_195228C(*(a1 + 488) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x800000) != 0)
      {
        result = sub_195228C(*(a1 + 504) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x1000000) != 0)
      {
        result = sub_195228C(*(a1 + 512) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x2000000) != 0)
      {
        result = sub_195228C(*(a1 + 520) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x4000000) != 0)
      {
        result = sub_195228C(*(a1 + 528) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x8000000) != 0)
      {
        result = sub_195228C(*(a1 + 536) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x10000000) != 0)
      {
        result = sub_195228C(*(a1 + 544) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x20000000) != 0)
      {
        result = sub_195228C(*(a1 + 552) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x40000000) != 0)
      {
        result = sub_195228C(*(a1 + 560) + 16);
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 44);
      }

      if ((v4 & 0x80000000) == 0 || (result = sub_195228C(*(a1 + 568) + 16), result))
      {
        v5 = *(a1 + 48);
        if (v5)
        {
          result = sub_195228C(*(a1 + 576) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 2) != 0)
        {
          result = sub_195228C(*(a1 + 584) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 4) != 0)
        {
          result = sub_195228C(*(a1 + 592) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 8) != 0)
        {
          result = sub_195228C(*(a1 + 600) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x10) != 0)
        {
          v6 = *(a1 + 608);
          v7 = *(v6 + 24);
          while (v7 >= 1)
          {
            v8 = v7 - 1;
            v9 = sub_17A8EF8(*(*(v6 + 32) + 8 * v7));
            result = 0;
            v7 = v8;
            if ((v9 & 1) == 0)
            {
              return result;
            }
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x20) != 0)
        {
          result = sub_195228C(*(a1 + 616) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x80) != 0)
        {
          result = sub_195228C(*(a1 + 632) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x200) != 0)
        {
          result = sub_195228C(*(a1 + 648) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x400) != 0)
        {
          result = sub_195228C(*(a1 + 656) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x800) != 0)
        {
          result = sub_195228C(*(a1 + 664) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x1000) != 0)
        {
          result = sub_195228C(*(a1 + 672) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x10000) != 0)
        {
          result = sub_195228C(*(a1 + 704) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x1000000) != 0)
        {
          result = sub_195228C(*(a1 + 768) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x2000000) != 0)
        {
          result = sub_195228C(*(a1 + 776) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x4000000) != 0)
        {
          result = sub_195228C(*(a1 + 784) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x10000000) != 0)
        {
          result = sub_195228C(*(a1 + 800) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x20000000) != 0)
        {
          result = sub_195228C(*(a1 + 808) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x40000000) != 0)
        {
          result = sub_195228C(*(a1 + 816) + 16);
          if (!result)
          {
            return result;
          }

          v5 = *(a1 + 48);
        }

        if ((v5 & 0x80000000) == 0 || (result = sub_195228C(*(a1 + 824) + 16), result))
        {
          v10 = *(a1 + 52);
          if (v10)
          {
            result = sub_195228C(*(a1 + 832) + 16);
            if (!result)
            {
              return result;
            }

            v10 = *(a1 + 52);
          }

          if ((v10 & 2) != 0)
          {
            result = sub_195228C(*(a1 + 840) + 16);
            if (!result)
            {
              return result;
            }

            v10 = *(a1 + 52);
          }

          if ((v10 & 0x10) != 0)
          {
            result = sub_195228C(*(a1 + 864) + 16);
            if (!result)
            {
              return result;
            }

            v10 = *(a1 + 52);
          }

          if ((v10 & 0x20) == 0)
          {
            return 1;
          }

          result = sub_195228C(*(a1 + 872) + 16);
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

BOOL sub_1812A2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_17A8EF8(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1812B14(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2710258;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 164) = 0u;
  return a1;
}

void sub_1812BA0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1812BD4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_2710258;
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
    sub_193D920((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
    sub_193D9AC((a1 + 96), v18, (v17 + 8), v16, **(a1 + 112) - *(a1 + 104));
    v19 = *(a1 + 104) + v16;
    *(a1 + 104) = v19;
    v20 = *(a1 + 112);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 8);
  if (v21)
  {
    sub_1957EF4(v4, (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  v22 = *(a2 + 40);
  if (v22)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v22 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  v23 = *(a2 + 136);
  v24 = *(a2 + 152);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 152) = v24;
  *(a1 + 136) = v23;
  return a1;
}

uint64_t sub_1812EE8(uint64_t a1)
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

  if (a1 != &off_2785600)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_17F2ACC(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_17F3474(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_193B778((a1 + 96));
  sub_1956AFC((a1 + 72));
  sub_193B6F4((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1812FE0(uint64_t a1)
{
  sub_1812EE8(a1);

  operator delete();
}

uint64_t sub_1813018(uint64_t a1)
{
  sub_1951124((a1 + 16));
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_17F8280(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  result = sub_12A41D0(a1 + 72);
  v6 = *(a1 + 104);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 112) + 8);
    do
    {
      v8 = *v7++;
      result = sub_17D6634(v8);
      --v6;
    }

    while (v6);
    *(a1 + 104) = 0;
  }

  v9 = *(a1 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      result = sub_17D6634(*(a1 + 120));
    }

    if ((v9 & 2) != 0)
    {
      result = sub_17F3564(*(a1 + 128));
    }
  }

  if ((v9 & 0xFC) != 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    *(a1 + 152) = 0;
  }

  if ((v9 & 0xF00) != 0)
  {
    *(a1 + 172) = 0;
    *(a1 + 164) = 0;
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 32) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

uint64_t sub_1813118(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v81 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v81, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v81 + 1);
    v8 = **v81;
    if (**v81 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v81, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v81 + 2);
      }
    }

    *v81 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_101;
        }

        v11 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v11;
        v14 = (v13 << 7) + v12;
        LODWORD(v12) = v14 - 128;
        if (v13 < 0)
        {
          *v81 = sub_19587DC(v7, (v14 - 128));
          if (!*v81)
          {
            goto LABEL_148;
          }

          LODWORD(v12) = v77;
        }

        else
        {
          v11 = (v7 + 2);
LABEL_12:
          *v81 = v11;
        }

        if (sub_1792D34(v12))
        {
          *(a1 + 40) |= 4u;
          *(a1 + 136) = v12;
        }

        else
        {
          sub_12E8450();
        }

        goto LABEL_121;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_101;
        }

        v38 = (v7 + 1);
        v39 = *v7;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_61;
        }

        v40 = *v38;
        v41 = (v40 << 7) + v39;
        LODWORD(v39) = v41 - 128;
        if (v40 < 0)
        {
          *v81 = sub_19587DC(v7, (v41 - 128));
          if (!*v81)
          {
            goto LABEL_148;
          }

          LODWORD(v39) = v78;
        }

        else
        {
          v38 = (v7 + 2);
LABEL_61:
          *v81 = v38;
        }

        if (sub_14CB318(v39))
        {
          *(a1 + 40) |= 8u;
          *(a1 + 140) = v39;
        }

        else
        {
          sub_12E8418();
        }

        goto LABEL_121;
      case 3u:
        if (v8 != 25)
        {
          goto LABEL_101;
        }

        v5 |= 0x10u;
        *(a1 + 144) = *v7;
        *v81 = v7 + 8;
        goto LABEL_121;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_101;
        }

        v5 |= 0x20u;
        v29 = (v7 + 1);
        v30 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v31 = *v29;
        v30 = v30 + (v31 << 7) - 128;
        if (v31 < 0)
        {
          v75 = sub_1958770(v7, v30);
          *v81 = v75;
          *(a1 + 152) = v76;
          if (!v75)
          {
            goto LABEL_148;
          }
        }

        else
        {
          v29 = (v7 + 2);
LABEL_46:
          *v81 = v29;
          *(a1 + 152) = v30;
        }

        goto LABEL_121;
      case 5u:
        if (v8 != 40)
        {
          goto LABEL_101;
        }

        v5 |= 0x40u;
        LODWORD(v22) = *v7;
        if ((v22 & 0x80000000) == 0)
        {
          v23 = v7 + 1;
LABEL_114:
          *v81 = v23;
          *(a1 + 156) = v22;
          goto LABEL_121;
        }

        v22 = (v7[1] << 7) + v22 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v23 = v7 + 2;
          goto LABEL_114;
        }

        v69 = sub_19587DC(v7, v22);
        *v81 = v69;
        *(a1 + 156) = v70;
        if (!v69)
        {
          goto LABEL_148;
        }

        goto LABEL_121;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_101;
        }

        v5 |= 0x80u;
        LODWORD(v42) = *v7;
        if ((v42 & 0x80000000) == 0)
        {
          v43 = v7 + 1;
LABEL_120:
          *v81 = v43;
          *(a1 + 160) = v42;
          goto LABEL_121;
        }

        v42 = (v7[1] << 7) + v42 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v43 = v7 + 2;
          goto LABEL_120;
        }

        v79 = sub_19587DC(v7, v42);
        *v81 = v79;
        *(a1 + 160) = v80;
        if (!v79)
        {
          goto LABEL_148;
        }

        goto LABEL_121;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_101;
        }

        *(a1 + 40) |= 1u;
        v50 = *(a1 + 120);
        if (!v50)
        {
          v51 = *(a1 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          v50 = sub_186280C(v52);
          *(a1 + 120) = v50;
          v7 = *v81;
        }

        v53 = sub_2245944(a3, v50, v7);
        goto LABEL_110;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_101;
        }

        v32 = (v7 - 1);
        while (1)
        {
          v33 = (v32 + 1);
          *v81 = v32 + 1;
          v34 = *(a1 + 64);
          if (v34 && (v35 = *(a1 + 56), v35 < *v34))
          {
            *(a1 + 56) = v35 + 1;
            v36 = *&v34[2 * v35 + 2];
          }

          else
          {
            v37 = sub_1862A04(*(a1 + 48));
            v36 = sub_19593CC(a1 + 48, v37);
            v33 = *v81;
          }

          v32 = sub_224D888(a3, v36, v33);
          *v81 = v32;
          if (!v32)
          {
            goto LABEL_148;
          }

          if (*a3 <= v32 || *v32 != 66)
          {
            goto LABEL_121;
          }
        }

      case 9u:
        if (v8 != 74)
        {
          goto LABEL_101;
        }

        v57 = (v7 - 1);
        while (1)
        {
          v58 = (v57 + 1);
          *v81 = v57 + 1;
          v59 = *(a1 + 88);
          if (v59 && (v60 = *(a1 + 80), v60 < *v59))
          {
            *(a1 + 80) = v60 + 1;
            v61 = *&v59[2 * v60 + 2];
          }

          else
          {
            v62 = *(a1 + 72);
            if (!v62)
            {
              operator new();
            }

            *v64 = v63;
            v64[1] = sub_195A650;
            *v63 = 0;
            v63[1] = 0;
            v63[2] = 0;
            v61 = sub_19593CC(a1 + 72, v63);
            v58 = *v81;
          }

          v57 = sub_1958890(v61, v58, a3);
          *v81 = v57;
          if (!v57)
          {
            goto LABEL_148;
          }

          if (*a3 <= v57 || *v57 != 74)
          {
            goto LABEL_121;
          }
        }

      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_101;
        }

        v5 |= 0x100u;
        v26 = (v7 + 1);
        v27 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        v28 = *v26;
        v27 = v27 + (v28 << 7) - 128;
        if (v28 < 0)
        {
          v73 = sub_1958770(v7, v27);
          *v81 = v73;
          *(a1 + 164) = v74;
          if (!v73)
          {
            goto LABEL_148;
          }
        }

        else
        {
          v26 = (v7 + 2);
LABEL_39:
          *v81 = v26;
          *(a1 + 164) = v27;
        }

        goto LABEL_121;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_101;
        }

        *(a1 + 40) |= 2u;
        v54 = *(a1 + 128);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_1862868(v56);
          *(a1 + 128) = v54;
          v7 = *v81;
        }

        v53 = sub_224D918(a3, v54, v7);
        goto LABEL_110;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_101;
        }

        v20 = (v7 + 1);
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          *v81 = sub_19587DC(v7, v19);
          if (!*v81)
          {
            goto LABEL_148;
          }
        }

        else
        {
          v20 = (v7 + 2);
LABEL_26:
          *v81 = v20;
        }

        if (v19 > 2)
        {
          sub_19481DC();
        }

        else
        {
          *(a1 + 40) |= 0x200u;
          *(a1 + 168) = v19;
        }

        goto LABEL_121;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_101;
        }

        v5 |= 0x400u;
        LODWORD(v24) = *v7;
        if ((v24 & 0x80000000) == 0)
        {
          v25 = v7 + 1;
LABEL_117:
          *v81 = v25;
          *(a1 + 172) = v24;
          goto LABEL_121;
        }

        v24 = (v7[1] << 7) + v24 - 128;
        if ((v7[1] & 0x80000000) == 0)
        {
          v25 = v7 + 2;
          goto LABEL_117;
        }

        v71 = sub_19587DC(v7, v24);
        *v81 = v71;
        *(a1 + 172) = v72;
        if (!v71)
        {
          goto LABEL_148;
        }

        goto LABEL_121;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_101;
        }

        v44 = v7 - 1;
        while (1)
        {
          v45 = v44 + 1;
          *v81 = v44 + 1;
          v46 = *(a1 + 112);
          if (v46 && (v47 = *(a1 + 104), v47 < *v46))
          {
            *(a1 + 104) = v47 + 1;
            v48 = *&v46[2 * v47 + 2];
          }

          else
          {
            v49 = sub_186280C(*(a1 + 96));
            v48 = sub_19593CC(a1 + 96, v49);
            v45 = *v81;
          }

          v44 = sub_2245944(a3, v48, v45);
          *v81 = v44;
          if (!v44)
          {
            goto LABEL_148;
          }

          if (*a3 <= v44 || *v44 != 114)
          {
            goto LABEL_121;
          }
        }

      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_101;
        }

        v15 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        v17 = *v15;
        v18 = (v17 << 7) + v16;
        LODWORD(v16) = v18 - 128;
        if (v17 < 0)
        {
          *v81 = sub_19587DC(v7, (v18 - 128));
          if (!*v81)
          {
            goto LABEL_148;
          }

          LODWORD(v16) = v68;
        }

        else
        {
          v15 = (v7 + 2);
LABEL_19:
          *v81 = v15;
        }

        if (sub_16E4BFC(v16))
        {
          *(a1 + 40) |= 0x800u;
          *(a1 + 176) = v16;
        }

        else
        {
          sub_12E8538();
        }

        goto LABEL_121;
      default:
LABEL_101:
        if (v8)
        {
          v65 = (v8 & 7) == 4;
        }

        else
        {
          v65 = 1;
        }

        if (!v65)
        {
          if ((v8 - 8000) >> 5 > 0x112)
          {
            v66 = *(a1 + 8);
            if (v66)
            {
              v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v67 = sub_11F1920((a1 + 8));
              v7 = *v81;
            }

            v53 = sub_1952690(v8, v67, v7, a3);
          }

          else
          {
            v53 = sub_19525AC((a1 + 16), v8, v7, &off_2785600, (a1 + 8), a3);
          }

LABEL_110:
          *v81 = v53;
          if (!v53)
          {
            goto LABEL_148;
          }

LABEL_121:
          if (sub_195ADC0(a3, v81, a3[11].i32[1]))
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
LABEL_148:
          *v81 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v81;
    }
  }
}

char *sub_1813974(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 136);
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

    v12 = *(a1 + 140);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v15 = *(a1 + 144);
    *v11 = 25;
    *(v11 + 1) = v15;
    v11 += 9;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 152);
    *v11 = 32;
    v11[1] = v17;
    if (v17 > 0x7F)
    {
      v11[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v11[2] = v17 >> 7;
      v16 = v11 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v19) = v11[2];
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
      v16 = v11 + 2;
    }
  }

  else
  {
    v16 = v11;
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v22 = *(a1 + 156);
    *v16 = 40;
    v16[1] = v22;
    if (v22 > 0x7F)
    {
      v16[1] = v22 | 0x80;
      v23 = v22 >> 7;
      v16[2] = v22 >> 7;
      v21 = v16 + 3;
      if (v22 >= 0x4000)
      {
        LOBYTE(v16) = v16[2];
        do
        {
          *(v21 - 1) = v16 | 0x80;
          v16 = (v23 >> 7);
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v26 = *(a1 + 160);
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

  if (v5)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v30 = *(a1 + 120);
    *v25 = 58;
    v31 = *(v30 + 44);
    v25[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v25 + 1);
    }

    else
    {
      v32 = v25 + 2;
    }

    v25 = sub_17F2F28(v30, v32, a3);
  }

  v33 = *(a1 + 56);
  if (v33)
  {
    for (i = 0; i != v33; ++i)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v35 = *(*(a1 + 64) + 8 * i + 8);
      *v25 = 66;
      v36 = *(v35 + 56);
      v25[1] = v36;
      if (v36 > 0x7F)
      {
        v37 = sub_19575D0(v36, v25 + 1);
      }

      else
      {
        v37 = v25 + 2;
      }

      v25 = sub_17FC7F8(v35, v37, a3);
    }
  }

  v38 = *(a1 + 80);
  if (v38 >= 1)
  {
    v39 = 8;
    do
    {
      v40 = *(*(a1 + 88) + v39);
      v41 = *(v40 + 23);
      if (v41 < 0 && (v41 = v40[1], v41 > 127) || (*a3 - v25 + 14) < v41)
      {
        v25 = sub_1957480(a3, 9, v40, v25);
      }

      else
      {
        *v25 = 74;
        v25[1] = v41;
        if (*(v40 + 23) < 0)
        {
          v40 = *v40;
        }

        v42 = v25 + 2;
        memcpy(v25 + 2, v40, v41);
        v25 = &v42[v41];
      }

      v39 += 8;
      --v38;
    }

    while (v38);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v44 = *(a1 + 164);
    *v25 = 80;
    v25[1] = v44;
    if (v44 > 0x7F)
    {
      v25[1] = v44 | 0x80;
      v45 = v44 >> 7;
      v25[2] = v44 >> 7;
      v43 = v25 + 3;
      if (v44 >= 0x4000)
      {
        LOBYTE(v46) = v25[2];
        do
        {
          *(v43 - 1) = v46 | 0x80;
          v46 = v45 >> 7;
          *v43++ = v45 >> 7;
          v47 = v45 >> 14;
          v45 >>= 7;
        }

        while (v47);
      }
    }

    else
    {
      v43 = v25 + 2;
    }
  }

  else
  {
    v43 = v25;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v48 = *(a1 + 128);
    *v43 = 90;
    v49 = *(v48 + 20);
    v43[1] = v49;
    if (v49 > 0x7F)
    {
      v50 = sub_19575D0(v49, v43 + 1);
    }

    else
    {
      v50 = v43 + 2;
    }

    v43 = sub_17F37F0(v48, v50, a3);
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v43)
    {
      v43 = sub_225EB68(a3, v43);
    }

    v52 = *(a1 + 168);
    *v43 = 96;
    v43[1] = v52;
    if (v52 > 0x7F)
    {
      v43[1] = v52 | 0x80;
      v53 = v52 >> 7;
      v43[2] = v52 >> 7;
      v51 = v43 + 3;
      if (v52 >= 0x4000)
      {
        LOBYTE(v43) = v43[2];
        do
        {
          *(v51 - 1) = v43 | 0x80;
          v43 = (v53 >> 7);
          *v51++ = v53 >> 7;
          v54 = v53 >> 14;
          v53 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v51 = v43 + 2;
    }
  }

  else
  {
    v51 = v43;
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v51)
    {
      v51 = sub_225EB68(a3, v51);
    }

    v56 = *(a1 + 172);
    *v51 = 104;
    v51[1] = v56;
    if (v56 > 0x7F)
    {
      v51[1] = v56 | 0x80;
      v57 = v56 >> 7;
      v51[2] = v56 >> 7;
      v55 = v51 + 3;
      if (v56 >= 0x4000)
      {
        LOBYTE(v51) = v51[2];
        do
        {
          *(v55 - 1) = v51 | 0x80;
          v51 = (v57 >> 7);
          *v55++ = v57 >> 7;
          v58 = v57 >> 14;
          v57 >>= 7;
        }

        while (v58);
      }
    }

    else
    {
      v55 = v51 + 2;
    }
  }

  else
  {
    v55 = v51;
  }

  v59 = *(a1 + 104);
  if (v59)
  {
    for (j = 0; j != v59; ++j)
    {
      if (*a3 <= v55)
      {
        v55 = sub_225EB68(a3, v55);
      }

      v61 = *(*(a1 + 112) + 8 * j + 8);
      *v55 = 114;
      v62 = *(v61 + 44);
      v55[1] = v62;
      if (v62 > 0x7F)
      {
        v63 = sub_19575D0(v62, v55 + 1);
      }

      else
      {
        v63 = v55 + 2;
      }

      v55 = sub_17F2F28(v61, v63, a3);
    }
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v55)
    {
      v55 = sub_225EB68(a3, v55);
    }

    v65 = *(a1 + 176);
    *v55 = 120;
    v55[1] = v65;
    if (v65 > 0x7F)
    {
      v55[1] = v65 | 0x80;
      v66 = v65 >> 7;
      v55[2] = v65 >> 7;
      v64 = v55 + 3;
      if (v65 >= 0x4000)
      {
        LOBYTE(v55) = v55[2];
        do
        {
          *(v64 - 1) = v55 | 0x80;
          v55 = (v66 >> 7);
          *v64++ = v66 >> 7;
          v67 = v66 >> 14;
          v66 >>= 7;
        }

        while (v67);
      }
    }

    else
    {
      v64 = v55 + 2;
    }
  }

  else
  {
    v64 = v55;
  }

  if (*(a1 + 26))
  {
    v64 = sub_1953428(a1 + 16, 1000, 2100, v64, a3);
  }

  v68 = *(a1 + 8);
  if ((v68 & 1) == 0)
  {
    return v64;
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

  if ((*a3 - v64) >= v71)
  {
    v73 = v71;
    memcpy(v64, v72, v71);
    v64 += v73;
    return v64;
  }

  return sub_1957130(a3, v72, v71, v64);
}

uint64_t sub_18141A8(uint64_t a1)
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
      v9 = sub_17FF454(v8);
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
      v22 = sub_17F3130(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 40);
  if (!v23)
  {
    goto LABEL_36;
  }

  if (v23)
  {
    v35 = sub_17F3130(*(a1 + 120));
    v17 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_21:
      if ((v23 & 4) == 0)
      {
        goto LABEL_22;
      }

LABEL_49:
      v37 = *(a1 + 136);
      v38 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v37 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 11;
      }

      v17 += v39;
      if ((v23 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_21;
  }

  v36 = sub_17F3958(*(a1 + 128));
  v17 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) != 0)
  {
    goto LABEL_49;
  }

LABEL_22:
  if ((v23 & 8) != 0)
  {
LABEL_23:
    v24 = *(a1 + 140);
    v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v24 >= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 11;
    }

    v17 += v26;
  }

LABEL_27:
  if ((v23 & 0x10) != 0)
  {
    v17 += 9;
  }

  if ((v23 & 0x20) != 0)
  {
    v17 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 0x40) == 0)
    {
LABEL_31:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }
  }

  else if ((v23 & 0x40) == 0)
  {
    goto LABEL_31;
  }

  v40 = *(a1 + 156);
  v41 = ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v40 >= 0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 11;
  }

  v17 += v42;
  if ((v23 & 0x80) != 0)
  {
LABEL_32:
    v27 = *(a1 + 160);
    v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v27 >= 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 11;
    }

    v17 += v29;
  }

LABEL_36:
  if ((v23 & 0xF00) == 0)
  {
    goto LABEL_45;
  }

  if ((v23 & 0x100) != 0)
  {
    v17 += ((9 * (__clz(*(a1 + 164) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 0x200) == 0)
    {
LABEL_39:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_39;
  }

  v43 = *(a1 + 168);
  v44 = ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v43 >= 0)
  {
    v45 = v44;
  }

  else
  {
    v45 = 11;
  }

  v17 += v45;
  if ((v23 & 0x400) == 0)
  {
LABEL_40:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_65:
  v46 = *(a1 + 172);
  v47 = ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v46 >= 0)
  {
    v48 = v47;
  }

  else
  {
    v48 = 11;
  }

  v17 += v48;
  if ((v23 & 0x800) != 0)
  {
LABEL_41:
    v30 = *(a1 + 176);
    v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v30 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 11;
    }

    v17 += v32;
  }

LABEL_45:
  v33 = *(a1 + 8);
  if (v33)
  {
    v49 = v33 & 0xFFFFFFFFFFFFFFFCLL;
    v50 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v50 < 0)
    {
      v50 = *(v49 + 16);
    }

    v17 += v50;
  }

  *(a1 + 44) = v17;
  return v17;
}

void sub_1814564(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193D920((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_193D9AC((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 40);
  if (v19)
  {
    if (v19)
    {
      *(a1 + 40) |= 1u;
      v21 = *(a1 + 120);
      if (!v21)
      {
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v21 = sub_186280C(v23);
        *(a1 + 120) = v21;
      }

      if (*(a2 + 120))
      {
        v24 = *(a2 + 120);
      }

      else
      {
        v24 = &off_2784D98;
      }

      sub_17D7738(v21, v24);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_48;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 40) |= 2u;
    v25 = *(a1 + 128);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_1862868(v27);
      *(a1 + 128) = v25;
    }

    if (*(a2 + 128))
    {
      v28 = *(a2 + 128);
    }

    else
    {
      v28 = &off_2784E00;
    }

    sub_128E5DC(v25, v28);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(a1 + 136) = *(a2 + 136);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }

LABEL_49:
    *(a1 + 140) = *(a2 + 140);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(a1 + 144) = *(a2 + 144);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(a1 + 152) = *(a2 + 152);
    if ((v19 & 0x40) == 0)
    {
LABEL_18:
      if ((v19 & 0x80) == 0)
      {
LABEL_20:
        *(a1 + 40) |= v19;
        goto LABEL_21;
      }

LABEL_19:
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_20;
    }

LABEL_52:
    *(a1 + 156) = *(a2 + 156);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  if ((v19 & 0xF00) == 0)
  {
    goto LABEL_28;
  }

  if ((v19 & 0x100) != 0)
  {
    *(a1 + 164) = *(a2 + 164);
    if ((v19 & 0x200) == 0)
    {
LABEL_24:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_25;
      }

LABEL_56:
      *(a1 + 172) = *(a2 + 172);
      if ((v19 & 0x800) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  *(a1 + 168) = *(a2 + 168);
  if ((v19 & 0x400) != 0)
  {
    goto LABEL_56;
  }

LABEL_25:
  if ((v19 & 0x800) != 0)
  {
LABEL_26:
    *(a1 + 176) = *(a2 + 176);
  }

LABEL_27:
  *(a1 + 40) |= v19;
LABEL_28:
  sub_225EA0C(a1 + 16, a2 + 16);
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1814850(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_1813018(a1);

    sub_1814564(a1, a2);
  }
}

uint64_t sub_181489C(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1806290(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 104);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_195228C(*(*(a1 + 112) + 8 * v6) + 16);
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 120) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 sub_181493C(uint64_t a1, uint64_t a2)
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
  v17 = *(a1 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v16;
  *(a2 + 144) = v17;
  v18 = *(a1 + 152);
  v19 = *(a1 + 160);
  result = *(a2 + 152);
  *(a1 + 152) = result;
  *(a2 + 152) = v18;
  *(a2 + 160) = v19;
  v21 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = v21;
  LODWORD(v21) = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = v21;
  return result;
}

uint64_t sub_1814A4C(uint64_t a1)
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
  if (a1 != &off_27856B8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_18079D0(v6);
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

void sub_1814B04(uint64_t a1)
{
  sub_1814A4C(a1);

  operator delete();
}

uint64_t sub_1814B3C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_18083FC(*(result + 24));
  }

  if ((v2 & 0x3E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
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

char *sub_1814BA8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v43 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v43, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v43 + 1;
    v8 = *v43;
    if (*v43 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v43, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v43 + 2;
      }
    }

    v43 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_52;
      }

      v19 = v7 + 1;
      v20 = *v7;
      if (v20 < 0)
      {
        v21 = *v19;
        v22 = (v21 << 7) + v20;
        LODWORD(v20) = v22 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v19 = v7 + 2;
          goto LABEL_33;
        }

        v43 = sub_19587DC(v7, (v22 - 128));
        if (!v43)
        {
          goto LABEL_77;
        }

        LODWORD(v20) = v36;
      }

      else
      {
LABEL_33:
        v43 = v19;
      }

      if (sub_1792D34(v20))
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v20;
      }

      else
      {
        sub_12E8450();
      }

      goto LABEL_60;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_52;
      }

      v5 |= 4u;
      v27 = v7 + 1;
      v28 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v29 = *v27;
      v28 = v28 + (v29 << 7) - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v27 = v7 + 2;
LABEL_46:
        v43 = v27;
        *(a1 + 36) = v28;
        goto LABEL_60;
      }

      v39 = sub_1958770(v7, v28);
      v43 = v39;
      *(a1 + 36) = v40;
      if (!v39)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_52;
      }

      v5 |= 8u;
      v13 = v7 + 1;
      v14 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v13;
      v14 = v14 + (v15 << 7) - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_18:
        v43 = v13;
        *(a1 + 40) = v14;
        goto LABEL_60;
      }

      v37 = sub_1958770(v7, v14);
      v43 = v37;
      *(a1 + 40) = v38;
      if (!v37)
      {
        goto LABEL_77;
      }
    }

LABEL_60:
    if (sub_195ADC0(a3, &v43, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 5)
  {
    if (v8 != 42)
    {
      goto LABEL_52;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 24);
    if (!v23)
    {
      v24 = *(a1 + 8);
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_1862A60(v25);
      *(a1 + 24) = v23;
      v7 = v43;
    }

    v26 = sub_224D9A8(a3, v23, v7);
LABEL_59:
    v43 = v26;
    if (!v26)
    {
      goto LABEL_77;
    }

    goto LABEL_60;
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_52;
    }

    v5 |= 0x10u;
    v31 = v7 + 1;
    v30 = *v7;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_51;
    }

    v32 = *v31;
    v30 = (v32 << 7) + v30 - 128;
    if ((v32 & 0x80000000) == 0)
    {
      v31 = v7 + 2;
LABEL_51:
      v43 = v31;
      *(a1 + 44) = v30 != 0;
      goto LABEL_60;
    }

    v41 = sub_19587DC(v7, v30);
    v43 = v41;
    *(a1 + 44) = v42 != 0;
    if (!v41)
    {
      goto LABEL_77;
    }

    goto LABEL_60;
  }

  if (v11 == 7 && v8 == 56)
  {
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if (v18 < 0)
    {
      v43 = sub_19587DC(v7, v16);
      if (!v43)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v17 = v7 + 2;
LABEL_26:
      v43 = v17;
    }

    if (v16 > 1)
    {
      sub_13ED178();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 48) = v16;
    }

    goto LABEL_60;
  }

LABEL_52:
  if (v8)
  {
    v33 = (v8 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v35 = sub_11F1920((a1 + 8));
      v7 = v43;
    }

    v26 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_59;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_77:
  v43 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v43;
}

char *sub_1814F68(uint64_t a1, char *__dst, unint64_t *a3)
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

    v12 = *(a1 + 36);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
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

  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_30;
    }

LABEL_38:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v23 = *(a1 + 44);
    *v15 = 48;
    v15[1] = v23;
    v15 += 2;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v20 = *(a1 + 24);
  *v15 = 42;
  v21 = *(v20 + 56);
  v15[1] = v21;
  if (v21 > 0x7F)
  {
    v22 = sub_19575D0(v21, v15 + 1);
  }

  else
  {
    v22 = v15 + 2;
  }

  v15 = sub_180B930(v20, v22, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_38;
  }

LABEL_30:
  if ((v5 & 0x20) == 0)
  {
LABEL_31:
    v19 = v15;
    goto LABEL_48;
  }

LABEL_41:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v24 = *(a1 + 48);
  *v15 = 56;
  v15[1] = v24;
  if (v24 > 0x7F)
  {
    v15[1] = v24 | 0x80;
    v25 = v24 >> 7;
    v15[2] = v24 >> 7;
    v19 = v15 + 3;
    if (v24 >= 0x4000)
    {
      LOBYTE(v15) = v15[2];
      do
      {
        *(v19 - 1) = v15 | 0x80;
        v15 = (v25 >> 7);
        *v19++ = v25 >> 7;
        v26 = v25 >> 14;
        v25 >>= 7;
      }

      while (v26);
    }
  }

  else
  {
    v19 = v15 + 2;
  }

LABEL_48:
  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v19;
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

  if ((*a3 - v19) >= v30)
  {
    v32 = v30;
    memcpy(v19, v31, v30);
    v19 += v32;
    return v19;
  }

  return sub_1957130(a3, v31, v30, v19);
}

uint64_t sub_18152CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    result = 0;
    goto LABEL_19;
  }

  if (v2)
  {
    v5 = sub_180E384(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v6 = *(a1 + 32);
  if (v6 < 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v7;
LABEL_11:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v3 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_13:
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  result = v3 + ((v2 >> 3) & 2);
  if ((v2 & 0x20) != 0)
  {
    v8 = *(a1 + 48);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    result += v10;
  }

LABEL_19:
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    result += v13;
  }

  *(a1 + 20) = result;
  return result;
}

void sub_181542C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
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

        v6 = sub_1862A60(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2785290;
      }

      sub_180FE5C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 36) = *(a2 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 16) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_9;
    }

LABEL_25:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1815544(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_1814B3C(a1);

    sub_181542C(a1, a2);
  }
}

uint64_t sub_1815590(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_1812498(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18155D0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2710358;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_1815644(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1815674(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_2710358;
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
    sub_193DA38((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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

uint64_t sub_1815868(uint64_t a1)
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

  if (a1 != &off_27856F0)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      sub_17961E0(v5);
      operator delete();
    }

    v6 = *(a1 + 80);
    if (v6)
    {
      sub_179DCA4(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_193B7FC((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_181594C(uint64_t a1)
{
  sub_1815868(a1);

  operator delete();
}

char *sub_1815984(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
  {
    return v28;
  }

  while (1)
  {
    v6 = v28 + 1;
    v7 = *v28;
    if (*v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v28 + 2;
      }
    }

    v28 = v6;
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

        v14 = sub_185D940(v16);
        *(a1 + 80) = v14;
        v6 = v28;
      }

      v13 = sub_2241E6C(a3, v14, v6);
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

        v23 = sub_185D55C(v25);
        *(a1 + 72) = v23;
        v6 = v28;
      }

      v13 = sub_2241DDC(a3, v23, v6);
    }

LABEL_43:
    v28 = v13;
    if (!v13)
    {
      return 0;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v28, a3[11].i32[1]))
    {
      return v28;
    }
  }

  if (v7 == 26)
  {
    v17 = v6 - 1;
    while (1)
    {
      v18 = (v17 + 1);
      v28 = v17 + 1;
      v19 = *(a1 + 64);
      if (v19 && (v20 = *(a1 + 56), v20 < *v19))
      {
        *(a1 + 56) = v20 + 1;
        v21 = *&v19[2 * v20 + 2];
      }

      else
      {
        v22 = sub_1862BF4(*(a1 + 48));
        v21 = sub_19593CC(a1 + 48, v22);
        v18 = v28;
      }

      v17 = sub_2248654(a3, v21, v18);
      v28 = v17;
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
    if ((v7 - 8000) >> 6 > 0x7C)
    {
      v26 = *(a1 + 8);
      if (v26)
      {
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v27 = sub_11F1920((a1 + 8));
        v6 = v28;
      }

      v13 = sub_1952690(v7, v27, v6, a3);
    }

    else
    {
      v13 = sub_19525AC((a1 + 16), v7, v6, &off_27856F0, (a1 + 8), a3);
    }

    goto LABEL_43;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return v28;
  }

  return 0;
}

char *sub_1815C14(uint64_t a1, char *a2, unint64_t *a3)
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

    v4 = sub_17968D0(v7, v9, a3);
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

    v4 = sub_179E324(v10, v12, a3);
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

      v4 = sub_18167E0(v15, v17, a3);
    }
  }

  if (*(a1 + 26))
  {
    v4 = sub_1953428(a1 + 16, 1000, 2000, v4, a3);
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

  if ((*a3 - v4) >= v21)
  {
    v23 = v21;
    memcpy(v4, v22, v21);
    v4 += v23;
    return v4;
  }

  return sub_1957130(a3, v22, v21, v4);
}

uint64_t sub_1815E44(uint64_t a1)
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
      v9 = sub_1816C08(v8);
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
      v11 = sub_1797A98(*(a1 + 72));
      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v12 = sub_179E704(*(a1 + 80));
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

uint64_t sub_1815F6C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_27103D8;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 100) = 0u;
  return a1;
}

void sub_1815FE8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_181601C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_27103D8;
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
    sub_13EC520((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
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
  if ((v12 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  v13 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v13;
  return a1;
}

uint64_t sub_1816264(uint64_t a1)
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

  if (a1 != &off_2785748)
  {
    if (*(a1 + 72))
    {
      sub_16E7270();
      operator delete();
    }

    if (*(a1 + 80))
    {
      sub_16E7270();
      operator delete();
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      sub_17C3670(v5);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_13EBFF8((a1 + 48));
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1816368(uint64_t a1)
{
  sub_1816264(a1);

  operator delete();
}

char *sub_18163A0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v44 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v44, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v44 + 1;
    v8 = *v44;
    if (*v44 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v44, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v44 + 2;
      }
    }

    v44 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      if (v8 >> 3 <= 5)
      {
        if (v11 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_68;
          }

          *(a1 + 40) |= 1u;
          v12 = *(a1 + 72);
          if (v12)
          {
            goto LABEL_51;
          }

          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v12 = sub_16F5A54(v30);
          *(a1 + 72) = v12;
        }

        else
        {
          if (v11 != 5 || v8 != 42)
          {
            goto LABEL_68;
          }

          *(a1 + 40) |= 2u;
          v12 = *(a1 + 80);
          if (v12)
          {
            goto LABEL_51;
          }

          v13 = *(a1 + 8);
          v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v13)
          {
            v14 = *v14;
          }

          v12 = sub_16F5A54(v14);
          *(a1 + 80) = v12;
        }

        v7 = v44;
LABEL_51:
        v22 = sub_22002C0(a3, v12, v7);
        goto LABEL_52;
      }

      if (v11 != 6)
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_68;
        }

        *(a1 + 40) |= 4u;
        v19 = *(a1 + 88);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_185F7E4(v21);
          *(a1 + 88) = v19;
          v7 = v44;
        }

        v22 = sub_2244DBC(a3, v19, v7);
LABEL_52:
        v44 = v22;
        if (!v22)
        {
          goto LABEL_87;
        }

        goto LABEL_66;
      }

      if (v8 != 48)
      {
        goto LABEL_68;
      }

      v32 = v7 + 1;
      v31 = *v7;
      if (v31 < 0)
      {
        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if (v33 < 0)
        {
          v44 = sub_19587DC(v7, v31);
          if (!v44)
          {
            goto LABEL_87;
          }

          goto LABEL_59;
        }

        v32 = v7 + 2;
      }

      v44 = v32;
LABEL_59:
      if (v31 > 4)
      {
        sub_12E84C8();
      }

      else
      {
        *(a1 + 40) |= 0x20u;
        *(a1 + 112) = v31;
      }

      goto LABEL_66;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 == 2)
    {
      if (v8 != 16)
      {
        goto LABEL_68;
      }

      v5 |= 8u;
      v35 = v7 + 1;
      v34 = *v7;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_65;
      }

      v36 = *v35;
      v34 = (v36 << 7) + v34 - 128;
      if ((v36 & 0x80000000) == 0)
      {
        v35 = v7 + 2;
LABEL_65:
        v44 = v35;
        *(a1 + 96) = v34;
        goto LABEL_66;
      }

      v42 = sub_19587DC(v7, v34);
      v44 = v42;
      *(a1 + 96) = v43;
      if (!v42)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v11 != 3 || v8 != 24)
      {
        goto LABEL_68;
      }

      v5 |= 0x10u;
      v17 = v7 + 1;
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_26:
        v44 = v17;
        *(a1 + 104) = v16;
        goto LABEL_66;
      }

      v40 = sub_19587DC(v7, v16);
      v44 = v40;
      *(a1 + 104) = v41;
      if (!v40)
      {
        goto LABEL_87;
      }
    }

LABEL_66:
    if (sub_195ADC0(a3, &v44, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    v23 = v7 - 1;
    while (1)
    {
      v24 = (v23 + 1);
      v44 = v23 + 1;
      v25 = *(a1 + 64);
      if (v25 && (v26 = *(a1 + 56), v26 < *v25))
      {
        *(a1 + 56) = v26 + 1;
        v27 = *&v25[2 * v26 + 2];
      }

      else
      {
        v28 = sub_185F788(*(a1 + 48));
        v27 = sub_19593CC(a1 + 48, v28);
        v24 = v44;
      }

      v23 = sub_2205BA0(a3, v27, v24);
      v44 = v23;
      if (!v23)
      {
        goto LABEL_87;
      }

      if (*a3 <= v23 || *v23 != 10)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_68:
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
    if ((v8 - 8000) >> 6 > 0x7C)
    {
      v38 = *(a1 + 8);
      if (v38)
      {
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v39 = sub_11F1920((a1 + 8));
        v7 = v44;
      }

      v22 = sub_1952690(v8, v39, v7, a3);
    }

    else
    {
      v22 = sub_19525AC((a1 + 16), v8, v7, &off_2785748, (a1 + 8), a3);
    }

    goto LABEL_52;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_87:
  v44 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v44;
}

char *sub_18167E0(uint64_t a1, char *a2, _DWORD *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 64) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 44);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_17C2F98(v8, v10, a3);
    }
  }

  v11 = *(a1 + 40);
  if ((v11 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v13 = *(a1 + 96);
    *a2 = 16;
    a2[1] = v13;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      a2[2] = v13 >> 7;
      v12 = a2 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(a2) = a2[2];
        do
        {
          *(v12 - 1) = a2 | 0x80;
          a2 = (v14 >> 7);
          *v12++ = v14 >> 7;
          v15 = v14 >> 14;
          v14 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v12 = a2 + 2;
    }
  }

  else
  {
    v12 = a2;
  }

  if ((v11 & 0x10) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 104);
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
          v12 = (v18 >> 7);
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

  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_29;
    }

LABEL_37:
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v24 = *(a1 + 80);
    *v16 = 42;
    v25 = *(v24 + 20);
    v16[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v16 + 1);
    }

    else
    {
      v26 = v16 + 2;
    }

    v16 = sub_16E74A8(v24, v26, a3);
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  if (*a3 <= v16)
  {
    v16 = sub_225EB68(a3, v16);
  }

  v21 = *(a1 + 72);
  *v16 = 34;
  v22 = *(v21 + 20);
  v16[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v16 + 1);
  }

  else
  {
    v23 = v16 + 2;
  }

  v16 = sub_16E74A8(v21, v23, a3);
  if ((v11 & 2) != 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  if ((v11 & 0x20) == 0)
  {
LABEL_30:
    v20 = v16;
    goto LABEL_50;
  }

LABEL_43:
  if (*a3 <= v16)
  {
    v16 = sub_225EB68(a3, v16);
  }

  v27 = *(a1 + 112);
  *v16 = 48;
  v16[1] = v27;
  if (v27 > 0x7F)
  {
    v16[1] = v27 | 0x80;
    v28 = v27 >> 7;
    v16[2] = v27 >> 7;
    v20 = v16 + 3;
    if (v27 >= 0x4000)
    {
      LOBYTE(v16) = v16[2];
      do
      {
        *(v20 - 1) = v16 | 0x80;
        v16 = (v28 >> 7);
        *v20++ = v28 >> 7;
        v29 = v28 >> 14;
        v28 >>= 7;
      }

      while (v29);
    }
  }

  else
  {
    v20 = v16 + 2;
  }

LABEL_50:
  if ((v11 & 4) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v30 = *(a1 + 88);
    *v20 = 58;
    v31 = *(v30 + 44);
    v20[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v20 + 1);
    }

    else
    {
      v32 = v20 + 2;
    }

    v20 = sub_17C3940(v30, v32, a3);
  }

  if (*(a1 + 26))
  {
    v20 = sub_1953428(a1 + 16, 1000, 2000, v20, a3);
  }

  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v20;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  if (*a3 - v20 >= v36)
  {
    v38 = v36;
    memcpy(v20, v37, v36);
    v20 += v38;
    return v20;
  }

  return sub_1957130(a3, v37, v36, v20);
}

uint64_t sub_1816C08(uint64_t a1)
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
      v9 = sub_17C3204(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      v11 = sub_16E7590(*(a1 + 72));
      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v10 & 2) == 0)
      {
LABEL_10:
        if ((v10 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

    v12 = sub_16E7590(*(a1 + 80));
    v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    v13 = sub_17C3B14(*(a1 + 88));
    v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 8) == 0)
    {
LABEL_12:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_18:
    v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 0x10) == 0)
    {
LABEL_13:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_19:
    v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    v14 = *(a1 + 112);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v15;
  }

LABEL_24:
  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v4 += v19;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1816DE4(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_17F8BD8(a1);

    sub_180375C(a1, a2);
  }
}

__n128 sub_1816E30(uint64_t a1, uint64_t a2)
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
  v11 = *(a1 + 96);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a2 + 88) = v10;
  *(a2 + 96) = v11;
  v13 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  LODWORD(v13) = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v13;
  return result;
}

uint64_t sub_1816EF0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2710458;
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
  *(a1 + 240) = a2;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a2;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a2;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = a2;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = a2;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = a2;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = a2;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = a2;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = a2;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = &qword_278E990;
  *(a1 + 464) = &qword_278E990;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 472) = 0u;
  return a1;
}

void sub_1816FE0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1817010(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v96 = (a1 + 8);
  *(a1 + 16) = 0;
  v95 = a1 + 16;
  *a1 = off_2710458;
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
    sub_13B326C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
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
    sub_13B326C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
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
    v16 = sub_19592E8(a1 + 96, v14);
    sub_166F898((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
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
    v21 = sub_19592E8(a1 + 120, v19);
    sub_193DAC4((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
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
    sub_13B326C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
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
    sub_13B6038((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
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
    sub_13B326C((a1 + 192), v36, (v35 + 8), v34, **(a1 + 208) - *(a1 + 200));
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
    sub_13B326C((a1 + 216), v41, (v40 + 8), v39, **(a1 + 232) - *(a1 + 224));
    v42 = *(a1 + 224) + v39;
    *(a1 + 224) = v42;
    v43 = *(a1 + 232);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  v44 = *(a2 + 248);
  if (v44)
  {
    v45 = *(a2 + 256);
    v46 = sub_19592E8(a1 + 240, *(a2 + 248));
    sub_193DB50((a1 + 240), v46, (v45 + 8), v44, **(a1 + 256) - *(a1 + 248));
    v47 = *(a1 + 248) + v44;
    *(a1 + 248) = v47;
    v48 = *(a1 + 256);
    if (*v48 < v47)
    {
      *v48 = v47;
    }
  }

  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  v49 = *(a2 + 272);
  if (v49)
  {
    v50 = *(a2 + 280);
    v51 = sub_19592E8(a1 + 264, *(a2 + 272));
    sub_13B326C((a1 + 264), v51, (v50 + 8), v49, **(a1 + 280) - *(a1 + 272));
    v52 = *(a1 + 272) + v49;
    *(a1 + 272) = v52;
    v53 = *(a1 + 280);
    if (*v53 < v52)
    {
      *v53 = v52;
    }
  }

  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  v54 = *(a2 + 296);
  if (v54)
  {
    v55 = *(a2 + 304);
    v56 = sub_19592E8(a1 + 288, *(a2 + 296));
    sub_13B326C((a1 + 288), v56, (v55 + 8), v54, **(a1 + 304) - *(a1 + 296));
    v57 = *(a1 + 296) + v54;
    *(a1 + 296) = v57;
    v58 = *(a1 + 304);
    if (*v58 < v57)
    {
      *v58 = v57;
    }
  }

  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  v59 = *(a2 + 320);
  if (v59)
  {
    v60 = *(a2 + 328);
    v61 = sub_19592E8(a1 + 312, *(a2 + 320));
    sub_13B326C((a1 + 312), v61, (v60 + 8), v59, **(a1 + 328) - *(a1 + 320));
    v62 = *(a1 + 320) + v59;
    *(a1 + 320) = v62;
    v63 = *(a1 + 328);
    if (*v63 < v62)
    {
      *v63 = v62;
    }
  }

  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  v64 = *(a2 + 344);
  if (v64)
  {
    v65 = *(a2 + 352);
    v66 = sub_19592E8(a1 + 336, *(a2 + 344));
    sub_13B326C((a1 + 336), v66, (v65 + 8), v64, **(a1 + 352) - *(a1 + 344));
    v67 = *(a1 + 344) + v64;
    *(a1 + 344) = v67;
    v68 = *(a1 + 352);
    if (*v68 < v67)
    {
      *v68 = v67;
    }
  }

  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v69 = *(a2 + 368);
  if (v69)
  {
    v70 = *(a2 + 376);
    v71 = sub_19592E8(a1 + 360, *(a2 + 368));
    sub_13B326C((a1 + 360), v71, (v70 + 8), v69, **(a1 + 376) - *(a1 + 368));
    v72 = *(a1 + 368) + v69;
    *(a1 + 368) = v72;
    v73 = *(a1 + 376);
    if (*v73 < v72)
    {
      *v73 = v72;
    }
  }

  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  v74 = *(a2 + 392);
  if (v74)
  {
    v75 = *(a2 + 400);
    v76 = sub_19592E8(a1 + 384, *(a2 + 392));
    sub_193DBCC((a1 + 384), v76, (v75 + 8), v74, **(a1 + 400) - *(a1 + 392));
    v77 = *(a1 + 392) + v74;
    *(a1 + 392) = v77;
    v78 = *(a1 + 400);
    if (*v78 < v77)
    {
      *v78 = v77;
    }
  }

  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  v79 = *(a2 + 416);
  if (v79)
  {
    v80 = *(a2 + 424);
    v81 = sub_19592E8(a1 + 408, *(a2 + 416));
    sub_166F898((a1 + 408), v81, (v80 + 8), v79, **(a1 + 424) - *(a1 + 416));
    v82 = *(a1 + 416) + v79;
    *(a1 + 416) = v82;
    v83 = *(a1 + 424);
    if (*v83 < v82)
    {
      *v83 = v82;
    }
  }

  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  v84 = *(a2 + 440);
  if (v84)
  {
    v85 = *(a2 + 448);
    v86 = sub_19592E8(a1 + 432, *(a2 + 440));
    sub_13B326C((a1 + 432), v86, (v85 + 8), v84, **(a1 + 448) - *(a1 + 440));
    v87 = *(a1 + 440) + v84;
    *(a1 + 440) = v87;
    v88 = *(a1 + 448);
    if (*v88 < v87)
    {
      *v88 = v87;
    }
  }

  v89 = *(a2 + 8);
  if (v89)
  {
    sub_1957EF4(v96, (v89 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v95, a2 + 16);
  *(a1 + 456) = &qword_278E990;
  v90 = *(a2 + 40);
  if (v90)
  {
    v91 = (*v96 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v96)
    {
      v91 = *v91;
    }

    sub_194EA1C((a1 + 456), (*(a2 + 456) & 0xFFFFFFFFFFFFFFFELL), v91);
    v90 = *(a2 + 40);
  }

  *(a1 + 464) = &qword_278E990;
  if ((v90 & 2) != 0)
  {
    v92 = (*v96 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v96)
    {
      v92 = *v92;
    }

    sub_194EA1C((a1 + 464), (*(a2 + 464) & 0xFFFFFFFFFFFFFFFELL), v92);
    v90 = *(a2 + 40);
  }

  if ((v90 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 472) = 0;
  if ((v90 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 480) = 0;
  if ((v90 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 488) = 0;
  if ((v90 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 496) = 0;
  v93 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 504) = v93;
  return a1;
}

void *sub_1817AD4(void *a1)
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

  sub_1817C2C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B31E8(a1 + 54);
  sub_166F360(a1 + 51);
  sub_193B988(a1 + 48);
  sub_13B31E8(a1 + 45);
  sub_13B31E8(a1 + 42);
  sub_13B31E8(a1 + 39);
  sub_13B31E8(a1 + 36);
  sub_13B31E8(a1 + 33);
  sub_193B904(a1 + 30);
  sub_13B31E8(a1 + 27);
  sub_13B31E8(a1 + 24);
  sub_13B5A00(a1 + 21);
  sub_13B31E8(a1 + 18);
  sub_193B880(a1 + 15);
  sub_166F360(a1 + 12);
  sub_13B31E8(a1 + 9);
  sub_13B31E8(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1817C2C(uint64_t result)
{
  v1 = result;
  if (*(result + 456) != &qword_278E990)
  {
    sub_194E89C((result + 456));
  }

  if (*(result + 464) != &qword_278E990)
  {
    sub_194E89C((result + 464));
  }

  if (result != &off_27857C0)
  {
    v2 = *(result + 472);
    if (v2)
    {
      sub_1917370(v2);
      operator delete();
    }

    v3 = v1[60];
    if (v3)
    {
      sub_1917370(v3);
      operator delete();
    }

    v4 = v1[61];
    if (v4)
    {
      sub_18524A8(v4);
      operator delete();
    }

    result = v1[62];
    if (result)
    {
      sub_17D62FC(result);

      operator delete();
    }
  }

  return result;
}

void sub_1817D20(void *a1)
{
  sub_1817AD4(a1);

  operator delete();
}

uint64_t sub_1817D58(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v146 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v146, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v146 + 1);
    v8 = **v146;
    if (**v146 < 0)
    {
      v8 = v8 + (*v7 << 7) - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v146, v8);
      }

      else
      {
        v7 = (*v146 + 2);
      }
    }

    *v146 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_233;
        }

        v9 = v7 - 1;
        while (1)
        {
          v10 = v9 + 1;
          *v146 = v9 + 1;
          v11 = *(a1 + 64);
          if (v11 && (v12 = *(a1 + 56), v12 < *v11))
          {
            *(a1 + 56) = v12 + 1;
            v13 = *&v11[2 * v12 + 2];
          }

          else
          {
            v14 = sub_16F5A54(*(a1 + 48));
            v13 = sub_19593CC(a1 + 48, v14);
            v10 = *v146;
          }

          v9 = sub_22002C0(a3, v13, v10);
          *v146 = v9;
          if (!v9)
          {
            goto LABEL_252;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_156;
          }
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_233;
        }

        v63 = v7 - 1;
        while (1)
        {
          v64 = v63 + 1;
          *v146 = v63 + 1;
          v65 = *(a1 + 88);
          if (v65 && (v66 = *(a1 + 80), v66 < *v65))
          {
            *(a1 + 80) = v66 + 1;
            v67 = *&v65[2 * v66 + 2];
          }

          else
          {
            v68 = sub_16F5A54(*(a1 + 72));
            v67 = sub_19593CC(a1 + 72, v68);
            v64 = *v146;
          }

          v63 = sub_22002C0(a3, v67, v64);
          *v146 = v63;
          if (!v63)
          {
            goto LABEL_252;
          }

          if (*a3 <= v63 || *v63 != 18)
          {
            goto LABEL_156;
          }
        }

      case 3u:
        if (v8 != 26)
        {
          goto LABEL_233;
        }

        v46 = v7 - 1;
        while (1)
        {
          v47 = v46 + 1;
          *v146 = v46 + 1;
          v48 = *(a1 + 112);
          if (v48 && (v49 = *(a1 + 104), v49 < *v48))
          {
            *(a1 + 104) = v49 + 1;
            v50 = *&v48[2 * v49 + 2];
          }

          else
          {
            v51 = sub_1860AC8(*(a1 + 96));
            v50 = sub_19593CC(a1 + 96, v51);
            v47 = *v146;
          }

          v46 = sub_222F330(a3, v50, v47);
          *v146 = v46;
          if (!v46)
          {
            goto LABEL_252;
          }

          if (*a3 <= v46 || *v46 != 26)
          {
            goto LABEL_156;
          }
        }

      case 4u:
        if (v8 != 34)
        {
          goto LABEL_233;
        }

        *(a1 + 40) |= 4u;
        v22 = *(a1 + 472);
        if (v22)
        {
          goto LABEL_92;
        }

        v55 = *(a1 + 8);
        v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
        if (v55)
        {
          v56 = *v56;
        }

        v22 = sub_191BA60(v56);
        *(a1 + 472) = v22;
        goto LABEL_91;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_233;
        }

        *(a1 + 40) |= 8u;
        v22 = *(a1 + 480);
        if (v22)
        {
          goto LABEL_92;
        }

        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_191BA60(v24);
        *(a1 + 480) = v22;
LABEL_91:
        v7 = *v146;
LABEL_92:
        v18 = sub_2201310(a3, v22, v7);
        goto LABEL_155;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_233;
        }

        v78 = v7 - 1;
        while (1)
        {
          v79 = v78 + 1;
          *v146 = v78 + 1;
          v80 = *(a1 + 136);
          if (v80 && (v81 = *(a1 + 128), v81 < *v80))
          {
            *(a1 + 128) = v81 + 1;
            v82 = *&v80[2 * v81 + 2];
          }

          else
          {
            v83 = sub_1862CAC(*(a1 + 120));
            v82 = sub_19593CC(a1 + 120, v83);
            v79 = *v146;
          }

          v78 = sub_2248AD4(a3, v82, v79);
          *v146 = v78;
          if (!v78)
          {
            goto LABEL_252;
          }

          if (*a3 <= v78 || *v78 != 50)
          {
            goto LABEL_156;
          }
        }

      case 7u:
        if (v8 != 58)
        {
          goto LABEL_233;
        }

        v92 = v7 - 1;
        while (1)
        {
          v93 = v92 + 1;
          *v146 = v92 + 1;
          v94 = *(a1 + 160);
          if (v94 && (v95 = *(a1 + 152), v95 < *v94))
          {
            *(a1 + 152) = v95 + 1;
            v96 = *&v94[2 * v95 + 2];
          }

          else
          {
            v97 = sub_16F5A54(*(a1 + 144));
            v96 = sub_19593CC(a1 + 144, v97);
            v93 = *v146;
          }

          v92 = sub_22002C0(a3, v96, v93);
          *v146 = v92;
          if (!v92)
          {
            goto LABEL_252;
          }

          if (*a3 <= v92 || *v92 != 58)
          {
            goto LABEL_156;
          }
        }

      case 8u:
        if (v8 != 66)
        {
          goto LABEL_233;
        }

        v57 = (v7 - 1);
        while (1)
        {
          v58 = (v57 + 1);
          *v146 = v57 + 1;
          v59 = *(a1 + 184);
          if (v59 && (v60 = *(a1 + 176), v60 < *v59))
          {
            *(a1 + 176) = v60 + 1;
            v61 = *&v59[2 * v60 + 2];
          }

          else
          {
            v62 = sub_191BA60(*(a1 + 168));
            v61 = sub_19593CC(a1 + 168, v62);
            v58 = *v146;
          }

          v57 = sub_2201310(a3, v61, v58);
          *v146 = v57;
          if (!v57)
          {
            goto LABEL_252;
          }

          if (*a3 <= v57 || *v57 != 66)
          {
            goto LABEL_156;
          }
        }

      case 9u:
        if (v8 != 72)
        {
          goto LABEL_233;
        }

        v5 |= 0x80u;
        v110 = (v7 + 1);
        v111 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_192;
        }

        v112 = *v110;
        v111 = v111 + (v112 << 7) - 128;
        if (v112 < 0)
        {
          v142 = sub_1958770(v7, v111);
          *v146 = v142;
          *(a1 + 512) = v143;
          if (!v142)
          {
            goto LABEL_252;
          }
        }

        else
        {
          v110 = (v7 + 2);
LABEL_192:
          *v146 = v110;
          *(a1 + 512) = v111;
        }

        goto LABEL_156;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_233;
        }

        v28 = v7 - 1;
        while (1)
        {
          v29 = v28 + 1;
          *v146 = v28 + 1;
          v30 = *(a1 + 208);
          if (v30 && (v31 = *(a1 + 200), v31 < *v30))
          {
            *(a1 + 200) = v31 + 1;
            v32 = *&v30[2 * v31 + 2];
          }

          else
          {
            v33 = sub_16F5A54(*(a1 + 192));
            v32 = sub_19593CC(a1 + 192, v33);
            v29 = *v146;
          }

          v28 = sub_22002C0(a3, v32, v29);
          *v146 = v28;
          if (!v28)
          {
            goto LABEL_252;
          }

          if (*a3 <= v28 || *v28 != 82)
          {
            goto LABEL_156;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_233;
        }

        v104 = v7 - 1;
        while (1)
        {
          v105 = v104 + 1;
          *v146 = v104 + 1;
          v106 = *(a1 + 232);
          if (v106 && (v107 = *(a1 + 224), v107 < *v106))
          {
            *(a1 + 224) = v107 + 1;
            v108 = *&v106[2 * v107 + 2];
          }

          else
          {
            v109 = sub_16F5A54(*(a1 + 216));
            v108 = sub_19593CC(a1 + 216, v109);
            v105 = *v146;
          }

          v104 = sub_22002C0(a3, v108, v105);
          *v146 = v104;
          if (!v104)
          {
            goto LABEL_252;
          }

          if (*a3 <= v104 || *v104 != 90)
          {
            goto LABEL_156;
          }
        }

      case 0xCu:
        if (v8 != 97)
        {
          goto LABEL_233;
        }

        v5 |= 0x40u;
        *(a1 + 504) = *v7;
        *v146 = v7 + 8;
        goto LABEL_156;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_233;
        }

        *(a1 + 40) |= 1u;
        v25 = *(a1 + 8);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v27 = (a1 + 456);
        goto LABEL_154;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_233;
        }

        *(a1 + 40) |= 2u;
        v90 = *(a1 + 8);
        v26 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
        if (v90)
        {
          v26 = *v26;
        }

        v27 = (a1 + 464);
LABEL_154:
        v91 = sub_194DB04(v27, v26);
        v18 = sub_1958890(v91, *v146, a3);
        goto LABEL_155;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_233;
        }

        *(a1 + 40) |= 0x10u;
        v19 = *(a1 + 488);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_1866190(v21);
          *(a1 + 488) = v19;
          v7 = *v146;
        }

        v18 = sub_22489B4(a3, v19, v7);
        goto LABEL_155;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_233;
        }

        v5 |= 0x100u;
        v53 = (v7 + 1);
        v52 = *v7;
        if ((v52 & 0x8000000000000000) == 0)
        {
          goto LABEL_85;
        }

        v54 = *v53;
        v52 = (v54 << 7) + v52 - 128;
        if (v54 < 0)
        {
          v140 = sub_19587DC(v7, v52);
          *v146 = v140;
          *(a1 + 516) = v141 != 0;
          if (!v140)
          {
            goto LABEL_252;
          }
        }

        else
        {
          v53 = (v7 + 2);
LABEL_85:
          *v146 = v53;
          *(a1 + 516) = v52 != 0;
        }

        goto LABEL_156;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_233;
        }

        *(a1 + 40) |= 0x20u;
        v15 = *(a1 + 496);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_1860AC8(v17);
          *(a1 + 496) = v15;
          v7 = *v146;
        }

        v18 = sub_222F330(a3, v15, v7);
        goto LABEL_155;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_233;
        }

        v70 = (v7 + 1);
        v69 = *v7;
        if ((v69 & 0x8000000000000000) == 0)
        {
          goto LABEL_117;
        }

        v71 = *v70;
        v69 = (v71 << 7) + v69 - 128;
        if (v71 < 0)
        {
          *v146 = sub_19587DC(v7, v69);
          if (!*v146)
          {
            goto LABEL_252;
          }
        }

        else
        {
          v70 = (v7 + 2);
LABEL_117:
          *v146 = v70;
        }

        if (v69 > 2)
        {
          sub_13ED138();
        }

        else
        {
          *(a1 + 40) |= 0x200u;
          *(a1 + 520) = v69;
        }

        goto LABEL_156;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_233;
        }

        v98 = v7 - 2;
        while (1)
        {
          v99 = v98 + 2;
          *v146 = v98 + 2;
          v100 = *(a1 + 256);
          if (v100 && (v101 = *(a1 + 248), v101 < *v100))
          {
            *(a1 + 248) = v101 + 1;
            v102 = *&v100[2 * v101 + 2];
          }

          else
          {
            v103 = sub_16F5AD8(*(a1 + 240));
            v102 = sub_19593CC(a1 + 240, v103);
            v99 = *v146;
          }

          v98 = sub_224DA38(a3, v102, v99);
          *v146 = v98;
          if (!v98)
          {
            goto LABEL_252;
          }

          if (*a3 <= v98 || *v98 != 410)
          {
            goto LABEL_156;
          }
        }

      case 0x14u:
        if (v8 != 162)
        {
          goto LABEL_233;
        }

        v119 = v7 - 2;
        while (1)
        {
          v120 = v119 + 2;
          *v146 = v119 + 2;
          v121 = *(a1 + 280);
          if (v121 && (v122 = *(a1 + 272), v122 < *v121))
          {
            *(a1 + 272) = v122 + 1;
            v123 = *&v121[2 * v122 + 2];
          }

          else
          {
            v124 = sub_16F5A54(*(a1 + 264));
            v123 = sub_19593CC(a1 + 264, v124);
            v120 = *v146;
          }

          v119 = sub_22002C0(a3, v123, v120);
          *v146 = v119;
          if (!v119)
          {
            goto LABEL_252;
          }

          if (*a3 <= v119 || *v119 != 418)
          {
            goto LABEL_156;
          }
        }

      case 0x15u:
        if (v8 != 170)
        {
          goto LABEL_233;
        }

        v72 = v7 - 2;
        while (1)
        {
          v73 = v72 + 2;
          *v146 = v72 + 2;
          v74 = *(a1 + 304);
          if (v74 && (v75 = *(a1 + 296), v75 < *v74))
          {
            *(a1 + 296) = v75 + 1;
            v76 = *&v74[2 * v75 + 2];
          }

          else
          {
            v77 = sub_16F5A54(*(a1 + 288));
            v76 = sub_19593CC(a1 + 288, v77);
            v73 = *v146;
          }

          v72 = sub_22002C0(a3, v76, v73);
          *v146 = v72;
          if (!v72)
          {
            goto LABEL_252;
          }

          if (*a3 <= v72 || *v72 != 426)
          {
            goto LABEL_156;
          }
        }

      case 0x16u:
        if (v8 != 178)
        {
          goto LABEL_233;
        }

        v84 = v7 - 2;
        while (1)
        {
          v85 = v84 + 2;
          *v146 = v84 + 2;
          v86 = *(a1 + 328);
          if (v86 && (v87 = *(a1 + 320), v87 < *v86))
          {
            *(a1 + 320) = v87 + 1;
            v88 = *&v86[2 * v87 + 2];
          }

          else
          {
            v89 = sub_16F5A54(*(a1 + 312));
            v88 = sub_19593CC(a1 + 312, v89);
            v85 = *v146;
          }

          v84 = sub_22002C0(a3, v88, v85);
          *v146 = v84;
          if (!v84)
          {
            goto LABEL_252;
          }

          if (*a3 <= v84 || *v84 != 434)
          {
            goto LABEL_156;
          }
        }

      case 0x17u:
        if (v8 != 186)
        {
          goto LABEL_233;
        }

        v113 = v7 - 2;
        while (1)
        {
          v114 = v113 + 2;
          *v146 = v113 + 2;
          v115 = *(a1 + 352);
          if (v115 && (v116 = *(a1 + 344), v116 < *v115))
          {
            *(a1 + 344) = v116 + 1;
            v117 = *&v115[2 * v116 + 2];
          }

          else
          {
            v118 = sub_16F5A54(*(a1 + 336));
            v117 = sub_19593CC(a1 + 336, v118);
            v114 = *v146;
          }

          v113 = sub_22002C0(a3, v117, v114);
          *v146 = v113;
          if (!v113)
          {
            goto LABEL_252;
          }

          if (*a3 <= v113 || *v113 != 442)
          {
            goto LABEL_156;
          }
        }

      case 0x18u:
        if (v8 != 194)
        {
          goto LABEL_233;
        }

        v125 = v7 - 2;
        while (1)
        {
          v126 = v125 + 2;
          *v146 = v125 + 2;
          v127 = *(a1 + 376);
          if (v127 && (v128 = *(a1 + 368), v128 < *v127))
          {
            *(a1 + 368) = v128 + 1;
            v129 = *&v127[2 * v128 + 2];
          }

          else
          {
            v130 = sub_16F5A54(*(a1 + 360));
            v129 = sub_19593CC(a1 + 360, v130);
            v126 = *v146;
          }

          v125 = sub_22002C0(a3, v129, v126);
          *v146 = v125;
          if (!v125)
          {
            goto LABEL_252;
          }

          if (*a3 <= v125 || *v125 != 450)
          {
            goto LABEL_156;
          }
        }

      case 0x19u:
        if (v8 != 202)
        {
          goto LABEL_233;
        }

        v40 = v7 - 2;
        while (1)
        {
          v41 = v40 + 2;
          *v146 = v40 + 2;
          v42 = *(a1 + 400);
          if (v42 && (v43 = *(a1 + 392), v43 < *v42))
          {
            *(a1 + 392) = v43 + 1;
            v44 = *&v42[2 * v43 + 2];
          }

          else
          {
            v45 = sub_18669E8(*(a1 + 384));
            v44 = sub_19593CC(a1 + 384, v45);
            v41 = *v146;
          }

          v40 = sub_224DAC8(a3, v44, v41);
          *v146 = v40;
          if (!v40)
          {
            goto LABEL_252;
          }

          if (*a3 <= v40 || *v40 != 458)
          {
            goto LABEL_156;
          }
        }

      case 0x1Au:
        if (v8 != 210)
        {
          goto LABEL_233;
        }

        v34 = v7 - 2;
        while (1)
        {
          v35 = v34 + 2;
          *v146 = v34 + 2;
          v36 = *(a1 + 424);
          if (v36 && (v37 = *(a1 + 416), v37 < *v36))
          {
            *(a1 + 416) = v37 + 1;
            v38 = *&v36[2 * v37 + 2];
          }

          else
          {
            v39 = sub_1860AC8(*(a1 + 408));
            v38 = sub_19593CC(a1 + 408, v39);
            v35 = *v146;
          }

          v34 = sub_222F330(a3, v38, v35);
          *v146 = v34;
          if (!v34)
          {
            goto LABEL_252;
          }

          if (*a3 <= v34 || *v34 != 466)
          {
            goto LABEL_156;
          }
        }

      case 0x1Bu:
        if (v8 != 218)
        {
          goto LABEL_233;
        }

        v131 = v7 - 2;
        while (1)
        {
          v132 = v131 + 2;
          *v146 = v131 + 2;
          v133 = *(a1 + 448);
          if (v133 && (v134 = *(a1 + 440), v134 < *v133))
          {
            *(a1 + 440) = v134 + 1;
            v135 = *&v133[2 * v134 + 2];
          }

          else
          {
            v136 = sub_16F5A54(*(a1 + 432));
            v135 = sub_19593CC(a1 + 432, v136);
            v132 = *v146;
          }

          v131 = sub_22002C0(a3, v135, v132);
          *v146 = v131;
          if (!v131)
          {
            goto LABEL_252;
          }

          if (*a3 <= v131 || *v131 != 474)
          {
            goto LABEL_156;
          }
        }

      default:
LABEL_233:
        if (v8)
        {
          v137 = (v8 & 7) == 4;
        }

        else
        {
          v137 = 1;
        }

        if (!v137)
        {
          if ((v8 - 8000) >> 6 > 0x7C)
          {
            v138 = *(a1 + 8);
            if (v138)
            {
              v139 = (v138 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v145 = v8;
              v144 = sub_11F1920((a1 + 8));
              v8 = v145;
              v7 = *v146;
              v139 = v144;
            }

            v18 = sub_1952690(v8, v139, v7, a3);
          }

          else
          {
            v18 = sub_19525AC((a1 + 16), v8, v7, &off_27857C0, (a1 + 8), a3);
          }

LABEL_155:
          *v146 = v18;
          if (!v18)
          {
            goto LABEL_252;
          }

LABEL_156:
          if (sub_195ADC0(a3, v146, a3[11].i32[1]))
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
LABEL_252:
          *v146 = 0;
        }

LABEL_2:
        *(a1 + 40) |= v5;
        return *v146;
    }
  }
}