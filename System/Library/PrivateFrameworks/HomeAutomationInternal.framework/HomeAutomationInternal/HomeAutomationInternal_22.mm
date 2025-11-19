uint64_t sub_252ABCF68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530AE390](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 8);
      v7 = *(v5 - 1);
      v8 = *v5;
      if (*(v5 - 2))
      {
        v9 = *(v5 - 3);
        sub_252E37EE4();

        sub_252E37044();
        if (v6 != 52)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_252E37EE4();
        if (v6 != 52)
        {
LABEL_9:
          sub_252E37EE4();
          AccessoryTypeSemantic.rawValue.getter();
          sub_252E37044();

          goto LABEL_4;
        }
      }

      sub_252E37EE4();
LABEL_4:
      v5 += 32;
      sub_252E37EF4();
      sub_252E37044();

      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_252ABD13C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_252E378C4();
    MEMORY[0x2530AE390](v8);
    v3 = sub_252E378C4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x2530AE390](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x2530ADF00](i, a2);
      sub_252E376A4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_252E376A4();

      --v3;
    }

    while (v3);
  }
}

uint64_t _s22HomeAutomationInternal0aB6IntentV13ReferenceTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 4)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_252ABD2F8()
{
  result = qword_27F542BB0;
  if (!qword_27F542BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542BB0);
  }

  return result;
}

unint64_t sub_252ABD34C()
{
  result = qword_27F542BB8;
  if (!qword_27F542BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542BB8);
  }

  return result;
}

unint64_t sub_252ABD3A0()
{
  result = qword_27F542BC0;
  if (!qword_27F542BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542BC0);
  }

  return result;
}

unint64_t sub_252ABD3F4()
{
  result = qword_27F542BC8;
  if (!qword_27F542BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542BC8);
  }

  return result;
}

unint64_t sub_252ABD448()
{
  result = qword_27F542BD0;
  if (!qword_27F542BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542BD0);
  }

  return result;
}

unint64_t sub_252ABD49C()
{
  result = qword_27F542BD8;
  if (!qword_27F542BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542BD8);
  }

  return result;
}

unint64_t sub_252ABD4F0()
{
  result = qword_27F542BE0;
  if (!qword_27F542BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542BE0);
  }

  return result;
}

unint64_t sub_252ABD544()
{
  result = qword_27F542BE8;
  if (!qword_27F542BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542BE8);
  }

  return result;
}

BOOL _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v172 = *(a1 + 16);
  v171 = *(a1 + 24);
  v170 = *(a1 + 25);
  v168 = *(a1 + 26);
  v167 = *(a1 + 32);
  v165 = *(a1 + 40);
  v163 = *(a1 + 48);
  v161 = *(a1 + 56);
  v159 = *(a1 + 64);
  v157 = *(a1 + 72);
  v155 = *(a1 + 80);
  v153 = *(a1 + 88);
  v151 = *(a1 + 96);
  v149 = *(a1 + 104);
  v147 = *(a1 + 112);
  v145 = *(a1 + 120);
  v143 = *(a1 + 128);
  v140 = *(a1 + 136);
  v141 = *(a1 + 144);
  v81 = *(a1 + 152);
  v83 = *(a1 + 160);
  v7 = *(a1 + 488);
  v174 = *(a1 + 480);
  v137 = *(a2 + 488);
  v176 = *(a2 + 480);
  v8 = *(a1 + 168);
  v9 = *(a1 + 176);
  v10 = *(a1 + 448);
  v173[2] = *(a1 + 432);
  v173[3] = v10;
  v173[4] = *(a1 + 464);
  v11 = *(a1 + 416);
  v173[0] = *(a1 + 400);
  v173[1] = v11;
  v68 = v8;
  v69 = *(a1 + 184);
  v70 = v9;
  v71 = *(a1 + 192);
  v72 = *(a1 + 200);
  v73 = *(a1 + 208);
  v76 = *(a1 + 209);
  v82 = *(a1 + 216);
  v85 = *(a1 + 224);
  v87 = *(a1 + 232);
  v89 = *(a1 + 248);
  v90 = *(a1 + 240);
  v91 = *(a1 + 256);
  v93 = *(a1 + 272);
  v94 = *(a1 + 264);
  v98 = *(a1 + 280);
  v97 = *(a1 + 288);
  v96 = *(a1 + 289);
  v105 = *(a1 + 296);
  v108 = *(a1 + 304);
  v111 = *(a1 + 312);
  v113 = *(a1 + 320);
  v115 = *(a1 + 328);
  v116 = *(a1 + 336);
  v117 = *(a1 + 344);
  v118 = *(a1 + 352);
  v119 = *(a1 + 360);
  v120 = *(a1 + 368);
  v121 = *(a1 + 376);
  v124 = *(a1 + 384);
  v130 = *(a1 + 385);
  v131 = *(a1 + 386);
  v132 = *(a1 + 387);
  v133 = *(a1 + 388);
  v134 = *(a1 + 389);
  v135 = *(a1 + 392);
  v136 = *(a1 + 496);
  v12 = *(a2 + 448);
  v175[2] = *(a2 + 432);
  v175[3] = v12;
  v175[4] = *(a2 + 464);
  v13 = *(a2 + 416);
  v175[0] = *(a2 + 400);
  v175[1] = v13;
  v14 = *(a2 + 8);
  v15 = *(a2 + 9);
  v16 = *(a2 + 10);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 25);
  v169 = *(a2 + 26);
  v166 = *(a2 + 32);
  v164 = *(a2 + 40);
  v162 = *(a2 + 48);
  v160 = *(a2 + 56);
  v158 = *(a2 + 64);
  v156 = *(a2 + 72);
  v154 = *(a2 + 80);
  v152 = *(a2 + 88);
  v150 = *(a2 + 96);
  v148 = *(a2 + 104);
  v146 = *(a2 + 112);
  v144 = *(a2 + 120);
  v142 = *(a2 + 128);
  v138 = *(a2 + 136);
  v139 = *(a2 + 144);
  v59 = *(a2 + 152);
  v60 = *(a2 + 160);
  v61 = *(a2 + 168);
  v62 = *(a2 + 176);
  v63 = *(a2 + 184);
  v64 = *(a2 + 192);
  v65 = *(a2 + 200);
  v66 = *(a2 + 208);
  v67 = *(a2 + 209);
  v74 = *(a2 + 216);
  v75 = *(a2 + 224);
  v77 = *(a2 + 232);
  v78 = *(a2 + 240);
  v79 = *(a2 + 248);
  v80 = *(a2 + 256);
  v84 = *(a2 + 264);
  v86 = *(a2 + 272);
  v95 = *(a2 + 280);
  v92 = *(a2 + 288);
  v88 = *(a2 + 289);
  v99 = *(a2 + 296);
  v100 = *(a2 + 304);
  v101 = *(a2 + 312);
  v102 = *(a2 + 320);
  v103 = *(a2 + 328);
  v104 = *(a2 + 336);
  v106 = *(a2 + 344);
  v107 = *(a2 + 352);
  v109 = *(a2 + 360);
  v110 = *(a2 + 368);
  v112 = *(a2 + 376);
  v114 = *(a2 + 384);
  v122 = *(a2 + 385);
  v123 = *(a2 + 386);
  v125 = *(a2 + 387);
  v126 = *(a2 + 388);
  v127 = *(a2 + 389);
  v128 = *(a2 + 392);
  v129 = *(a2 + 496);
  if ((sub_252AE810C(v3, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4 != 3)
  {
    if (v14 == 3)
    {
      return 0;
    }

    v57 = v7;
    v22 = 0xEC00000065756C61;
    v23 = 0x765F746567726174;
    if (v4)
    {
      if (v4 == 1)
      {
        v24 = 0x5F746E6572727563;
        v25 = 0xED000065756C6176;
      }

      else
      {
        v25 = 0xE600000000000000;
        v24 = 0x656C67676F74;
      }
    }

    else
    {
      v24 = 0x765F746567726174;
      v25 = 0xEC00000065756C61;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        v22 = 0xE600000000000000;
        if (v24 != 0x656C67676F74)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      v23 = 0x5F746E6572727563;
      v22 = 0xED000065756C6176;
    }

    if (v24 != v23)
    {
LABEL_29:
      v29 = sub_252E37DB4();

      v7 = v57;
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_4;
    }

LABEL_23:
    if (v25 == v22)
    {

      v7 = v57;
      if (v5 == 3)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (v14 != 3)
  {
    return 0;
  }

LABEL_4:
  if (v5 == 3)
  {
LABEL_5:
    result = 0;
    if (v15 != 3 || ((v6 ^ v16) & 1) != 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_25:
  if (v15 == 3)
  {
    return 0;
  }

  v26 = 7562617;
  v58 = v7;
  if (v5)
  {
    if (v5 == 1)
    {
      v27 = 0xE200000000000000;
      v28 = 28526;
    }

    else
    {
      v27 = 0xE600000000000000;
      v28 = 0x6C65636E6163;
    }
  }

  else
  {
    v27 = 0xE300000000000000;
    v28 = 7562617;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      v30 = 0xE200000000000000;
      v26 = 28526;
    }

    else
    {
      v30 = 0xE600000000000000;
      v26 = 0x6C65636E6163;
    }
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  if (v28 == v26 && v27 == v30)
  {

    v7 = v58;
    if (v6 != v16)
    {
      return 0;
    }
  }

  else
  {
    v31 = sub_252E37DB4();

    result = 0;
    if ((v31 & 1) == 0)
    {
      return result;
    }

    v7 = v58;
    if ((v6 ^ v16))
    {
      return result;
    }
  }

LABEL_7:
  if (v172)
  {
    if (!v17)
    {
      return 0;
    }

    sub_252E35DD4();
    sub_252ABF5E8(&qword_27F542D40, MEMORY[0x277D56498]);

    v21 = sub_252E36EF4();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v171 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v18 == 2)
    {
      return 0;
    }

    if (v171)
    {
      v32 = 0x6573616572636564;
    }

    else
    {
      v32 = 0x6573616572636E69;
    }

    if (v18)
    {
      v33 = 0x6573616572636564;
    }

    else
    {
      v33 = 0x6573616572636E69;
    }

    if (v32 == v33)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v34 = sub_252E37DB4();
      swift_bridgeObjectRelease_n();
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v170 == 3)
  {
    if (v19 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v19 == 3)
    {
      return 0;
    }

    v35 = 6777186;
    if (v170)
    {
      if (v170 == 1)
      {
        v36 = 0xE600000000000000;
        v37 = 0x6D756964656DLL;
      }

      else
      {
        v36 = 0xE500000000000000;
        v37 = 0x6C6C616D73;
      }
    }

    else
    {
      v36 = 0xE300000000000000;
      v37 = 6777186;
    }

    v38 = v7;
    if (v19)
    {
      if (v19 == 1)
      {
        v39 = 0xE600000000000000;
        v35 = 0x6D756964656DLL;
      }

      else
      {
        v39 = 0xE500000000000000;
        v35 = 0x6C6C616D73;
      }
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    if (v37 == v35 && v36 == v39)
    {

      v7 = v38;
    }

    else
    {
      v40 = sub_252E37DB4();

      v7 = v38;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v168 == 4)
  {
    if (v169 != 4)
    {
      return 0;
    }
  }

  else if (v169 == 4 || (sub_252A0C910(v168, v169) & 1) == 0)
  {
    return 0;
  }

  if ((sub_252AE8238(v167, v166) & 1) == 0)
  {
    return 0;
  }

  if (v165 == 4)
  {
    if (v164 != 4)
    {
      return 0;
    }
  }

  else if (v164 == 4 || (sub_252A0CF54(v165, v164) & 1) == 0)
  {
    return 0;
  }

  if ((sub_252AE83F4(v163, v162) & 1) == 0 || (sub_252AE8484(v161, v160) & 1) == 0)
  {
    return 0;
  }

  if (v159 == 4)
  {
    if (v158 != 4)
    {
      return 0;
    }
  }

  else if (v158 == 4 || (sub_252A0CE08(v159, v158) & 1) == 0)
  {
    return 0;
  }

  if ((sub_252AE83F4(v157, v156) & 1) == 0 || (sub_252AE8584(v155, v154) & 1) == 0 || (sub_252AE859C(v153, v152) & 1) == 0 || (sub_252AE8B04(v151, v150) & 1) == 0 || (sub_252AE83F4(v149, v148) & 1) == 0 || (sub_252AE83F4(v147, v146) & 1) == 0 || (sub_252AE83F4(v145, v144) & 1) == 0 || (sub_252AE83F4(v143, v142) & 1) == 0 || (sub_252AE8BBC(v140, v138) & 1) == 0 || (sub_252AE8BBC(v141, v139) & 1) == 0 || (sub_252AE83F4(v81, v59) & 1) == 0 || (sub_252AE83F4(v83, v60) & 1) == 0 || (sub_252AE83F4(v68, v61) & 1) == 0 || (sub_252AE83F4(v70, v62) & 1) == 0 || (sub_252AE83F4(v69, v63) & 1) == 0 || (sub_252AE8BD4(v71, v64) & 1) == 0 || (sub_252AE8CF8(v72, v65) & 1) == 0)
  {
    return 0;
  }

  if (v73 == 9)
  {
    if (v66 != 9)
    {
      return 0;
    }
  }

  else if (v66 == 9 || (sub_252A0D524(v73, v66) & 1) == 0)
  {
    return 0;
  }

  if (v76 == 2)
  {
    if (v67 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v67 == 2)
    {
      return 0;
    }

    if (v76)
    {
      v41 = 0x7265626D656D6572;
    }

    else
    {
      v41 = 0x746567726F66;
    }

    if (v76)
    {
      v42 = 0xE800000000000000;
    }

    else
    {
      v42 = 0xE600000000000000;
    }

    if (v67)
    {
      v43 = 0x7265626D656D6572;
    }

    else
    {
      v43 = 0x746567726F66;
    }

    if (v67)
    {
      v44 = 0xE800000000000000;
    }

    else
    {
      v44 = 0xE600000000000000;
    }

    if (v41 == v43 && v42 == v44)
    {
    }

    else
    {
      v45 = sub_252E37DB4();

      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((sub_252AE8ECC(v82, v74) & 1) == 0)
  {
    return 0;
  }

  v46 = sub_252AE83F4(v85, v75);
  result = 0;
  if ((v46 & 1) != 0 && ((v87 ^ v77) & 1) == 0)
  {
    if (v89)
    {
      if (!v79 || (v90 != v78 || v89 != v79) && (sub_252E37DB4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v79)
    {
      return 0;
    }

    if ((sub_252AE8FD8(v91, v80) & 1) == 0)
    {
      return 0;
    }

    if (v93)
    {
      if (!v86 || (v94 != v84 || v93 != v86) && (sub_252E37DB4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v86)
    {
      return 0;
    }

    if (v96)
    {
      if ((v88 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v88)
      {
        return 0;
      }

      if (v97)
      {
        if (v98 > 2)
        {
          if (v98 == 3)
          {
            result = 0;
            if ((v92 & 1) == 0 || v95 != 3)
            {
              return result;
            }
          }

          else if (v98 == 4)
          {
            result = 0;
            if ((v92 & 1) == 0 || v95 != 4)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if ((v92 & 1) == 0 || v95 < 5)
            {
              return result;
            }
          }
        }

        else if (v98)
        {
          if (v98 == 1)
          {
            result = 0;
            if ((v92 & 1) == 0 || v95 != 1)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if ((v92 & 1) == 0 || v95 != 2)
            {
              return result;
            }
          }
        }

        else
        {
          result = 0;
          if ((v92 & 1) == 0 || v95)
          {
            return result;
          }
        }
      }

      else
      {
        result = 0;
        if ((v92 & 1) != 0 || v98 != v95)
        {
          return result;
        }
      }
    }

    if (v105)
    {
      if (!v99)
      {
        return 0;
      }

      v47 = sub_252AE91C8(v105, v99);

      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v99)
    {
      return 0;
    }

    if (v108)
    {
      if (!v100)
      {
        return 0;
      }

      v48 = sub_252AE91C8(v108, v100);

      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v100)
    {
      return 0;
    }

    if (v111 == 2)
    {
      result = 0;
      if (v101 != 2)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v101 == 2 || ((v101 ^ v111) & 1) != 0)
      {
        return result;
      }
    }

    if (v113 != v102)
    {
      return result;
    }

    if ((sub_252AE83F4(v115, v103) & 1) == 0 || (sub_252AE83F4(v116, v104) & 1) == 0 || (sub_252AE83F4(v117, v106) & 1) == 0 || (sub_252AE83F4(v118, v107) & 1) == 0 || (sub_252AE83F4(v119, v109) & 1) == 0 || (sub_252AE83F4(v120, v110) & 1) == 0 || (sub_252AE91E0(v121, v112) & 1) == 0)
    {
      return 0;
    }

    if (v124 == 22)
    {
      if (v114 != 22)
      {
        return 0;
      }
    }

    else
    {
      if (v114 == 22)
      {
        return 0;
      }

      v49 = HomeAutomationIntent.UsoTaskType.rawValue.getter();
      v51 = v50;
      if (v49 != HomeAutomationIntent.UsoTaskType.rawValue.getter() || v51 != v52)
      {
        v53 = sub_252E37DB4();

        result = 0;
        if (v53 & 1) == 0 || ((v130 ^ v122))
        {
          return result;
        }

        goto LABEL_219;
      }
    }

    result = 0;
    if (v130 != v122)
    {
      return result;
    }

LABEL_219:
    if (((v131 ^ v123) & 1) == 0 && ((v132 ^ v125) & 1) == 0 && ((v133 ^ v126) & 1) == 0 && ((v134 ^ v127) & 1) == 0)
    {
      if ((sub_252AE9618(v135, v128) & 1) == 0 || (sub_252C600F8(v173, v175) & 1) == 0 || (sub_2529A91A8(v7, v137) & 1) == 0)
      {
        return 0;
      }

      if (v136)
      {
        if (!v129)
        {
          return 0;
        }

        sub_252ABF59C();
        v54 = v129;
        v55 = v136;
        v56 = sub_252E37694();

        return (v56 & 1) != 0;
      }

      return !v129;
    }
  }

  return result;
}

unint64_t sub_252ABE50C()
{
  result = qword_27F542C48;
  if (!qword_27F542C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542C48);
  }

  return result;
}

unint64_t sub_252ABE5A8()
{
  result = qword_27F542C60;
  if (!qword_27F542C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542C60);
  }

  return result;
}

unint64_t sub_252ABE600()
{
  result = qword_27F542C68;
  if (!qword_27F542C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542C68);
  }

  return result;
}

unint64_t sub_252ABE658()
{
  result = qword_27F542C70;
  if (!qword_27F542C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542C70);
  }

  return result;
}

unint64_t sub_252ABE6B0()
{
  result = qword_27F542C78;
  if (!qword_27F542C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542C78);
  }

  return result;
}

unint64_t sub_252ABE74C()
{
  result = qword_27F542C90;
  if (!qword_27F542C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542C90);
  }

  return result;
}

uint64_t sub_252ABE7A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 504))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252ABE7F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntent.UsoTaskType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntent.UsoTaskType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntent.ReferenceType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntent.ReferenceType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252ABEC14()
{
  result = qword_27F542C98;
  if (!qword_27F542C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542C98);
  }

  return result;
}

unint64_t sub_252ABEC6C()
{
  result = qword_27F542CA0;
  if (!qword_27F542CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CA0);
  }

  return result;
}

unint64_t sub_252ABECC4()
{
  result = qword_27F542CA8;
  if (!qword_27F542CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CA8);
  }

  return result;
}

unint64_t sub_252ABED1C()
{
  result = qword_27F542CB0;
  if (!qword_27F542CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CB0);
  }

  return result;
}

unint64_t sub_252ABED74()
{
  result = qword_27F542CB8;
  if (!qword_27F542CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CB8);
  }

  return result;
}

unint64_t sub_252ABEDCC()
{
  result = qword_27F542CC0;
  if (!qword_27F542CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CC0);
  }

  return result;
}

unint64_t sub_252ABEE24()
{
  result = qword_27F542CC8;
  if (!qword_27F542CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CC8);
  }

  return result;
}

unint64_t sub_252ABEE7C()
{
  result = qword_27F542CD0;
  if (!qword_27F542CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CD0);
  }

  return result;
}

unint64_t sub_252ABEED4()
{
  result = qword_27F542CD8;
  if (!qword_27F542CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CD8);
  }

  return result;
}

unint64_t sub_252ABEF2C()
{
  result = qword_27F542CE0;
  if (!qword_27F542CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CE0);
  }

  return result;
}

unint64_t sub_252ABEF84()
{
  result = qword_27F542CE8;
  if (!qword_27F542CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CE8);
  }

  return result;
}

unint64_t sub_252ABEFDC()
{
  result = qword_27F542CF0;
  if (!qword_27F542CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CF0);
  }

  return result;
}

unint64_t sub_252ABF034()
{
  result = qword_27F542CF8;
  if (!qword_27F542CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542CF8);
  }

  return result;
}

unint64_t sub_252ABF08C()
{
  result = qword_27F542D00;
  if (!qword_27F542D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542D00);
  }

  return result;
}

unint64_t sub_252ABF0E4()
{
  result = qword_27F542D08;
  if (!qword_27F542D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542D08);
  }

  return result;
}

unint64_t sub_252ABF13C()
{
  result = qword_27F542D10;
  if (!qword_27F542D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542D10);
  }

  return result;
}

unint64_t sub_252ABF194()
{
  result = qword_27F542D18;
  if (!qword_27F542D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542D18);
  }

  return result;
}

unint64_t sub_252ABF1EC()
{
  result = qword_27F542D20;
  if (!qword_27F542D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542D20);
  }

  return result;
}

uint64_t sub_252ABF240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76697463656A626FLL && a2 == 0xE900000000000065;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7669736573736F70 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69736F507473696CLL && a2 == 0xEC0000006E6F6974 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047342 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000252E78230 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_252ABF4A0()
{
  result = qword_27F542D28;
  if (!qword_27F542D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542D28);
  }

  return result;
}

unint64_t sub_252ABF4F4()
{
  result = qword_27F542D30;
  if (!qword_27F542D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542D30);
  }

  return result;
}

unint64_t sub_252ABF548()
{
  result = qword_27F542D38;
  if (!qword_27F542D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F542D38);
  }

  return result;
}

unint64_t sub_252ABF59C()
{
  result = qword_27F540AA8;
  if (!qword_27F540AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540AA8);
  }

  return result;
}

uint64_t sub_252ABF5E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252ABF638(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542D98, &qword_252E49170);
  if (swift_dynamicCast())
  {
    sub_252927BEC(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_252E32BB4();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25293847C(__src, &qword_27F542DA0, &qword_252E49178);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_252E37A84();
  }

  sub_252ACAE60(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_252ACBB04(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_252ACAF28(sub_252ACBBA4);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_252E32CF4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_252AD5C38(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_252E370E4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_252E37124();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_252E37A84();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_252AD5C38(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_252E370F4();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_252E32D04();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_252E32D04();
    sub_252982EFC(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_252982EFC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2529E61B0(*&__src[0], *(&__src[0] + 1));

  sub_25296464C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_252ABFB58(uint64_t a1)
{
  v2 = sub_252E36E04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252ACBE88(&unk_27F541310, MEMORY[0x277CC55B0]);
  v7 = sub_252E371B4();
  v35 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  result = sub_252E371A4();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_252E3C290;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x277D84B78];
        *(v14 + 64) = MEMORY[0x277D84BC0];
        *(v14 + 32) = v13;
        result = sub_252E36F64();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_2529AA3A0((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_252E3C290;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x277D84B78];
        *(v23 + 64) = MEMORY[0x277D84BC0];
        *(v23 + 32) = v22;
        result = sub_252E36F64();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_2529AA3A0((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static MatterAccessoryManager.warmup(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_252E37344();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  sub_2529D89C4(0, 0, v6, &unk_252E49130, v8);
}

dispatch_semaphore_t sub_252AC0004()
{
  result = dispatch_semaphore_create(1);
  qword_27F5757D8 = result;
  return result;
}

id sub_252AC002C()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
  v2 = MEMORY[0x277D84F90];
  *&v0[v1] = sub_252CC7228(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
  *&v0[v3] = sub_252CC723C(v2);
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
  *&v0[v4] = sub_252CC62F8(v2);
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  *&v0[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore] = v2;
  v6 = &v0[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash];
  *v6 = 0;
  v6[1] = 0;
  v0[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadSucceeded] = 0;
  *&v0[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_waitForInitTimeout] = 0x4008000000000000;
  v7 = sub_252CC7228(v2);
  swift_beginAccess();
  v8 = *&v0[v1];
  *&v0[v1] = v7;

  swift_beginAccess();
  v9 = *&v0[v5];
  *&v0[v5] = v2;

  *&v0[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadWaitSemaphores] = v2;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MatterAccessoryManager();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_252AC0190()
{
  v1 = v0[5];
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D61CC0] + 4);

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_252AC0280;
  v5.n128_u64[0] = 5.0;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821C8618](v4, &unk_252E491E0, v2, v6, v5);
}

uint64_t sub_252AC0280()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_252AC03B0;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_252AC039C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252AC03B0()
{
  v1 = v0[6];

  if (qword_2814B0A98 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_2814B0AA0);
  sub_252E379F4();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E78EA0);
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[2], v0[3], 0xD00000000000007CLL, 0x8000000252E6B890, 0x5F2870756D726177, 0xEA0000000000293ALL, 143);

  sub_2529515FC(6, 18, 0xD000000000000035, 0x8000000252E78EF0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252AC0564(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25293B808;

  return sub_252AC0170(a1, v4, v5, v7, v6);
}

uint64_t sub_252AC0644()
{
  v0[3] = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_252AC06E4;
  v2 = v0[2];

  return sub_252AC1428(v2);
}

uint64_t sub_252AC06E4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252AC0820, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_252AC0820()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

uint64_t sub_252AC0884(uint64_t a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v8 = sub_252E32E24();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = sub_252AC0AC0(v8, v10);

  if (!v11 || (v12 = sub_252DA0930(v11), , (result = v12) == 0))
  {
    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544EC8);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E78C00);
    v15 = sub_252D69924();
    MEMORY[0x2530AD570](v15);

    sub_252CC4050(v16, v17, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000019, 0x8000000252E78D60, 156);

    return 0;
  }

  return result;
}

unint64_t sub_252AC0AC0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v22 = v2;
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
LABEL_29:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_17:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544EC8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E78C60);
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000016, 0x8000000252E78C40, 170);
    goto LABEL_27;
  }

  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, v4);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v8 = *(v4 + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }
    }

    v10 = *(v8 + qword_27F5427D0);

    sub_252E36744();

    if (v26)
    {
      break;
    }

LABEL_6:

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_17;
    }
  }

  if (v25 != a1 || v26 != a2)
  {
    v7 = sub_252E37DB4();

    if (v7)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

LABEL_20:

  v12 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
  swift_beginAccess();
  v13 = *(v22 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_252A44A10(a1, a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DF8, &qword_252E491C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = v8;
      v18 = inited + 32;
      *(inited + 40) = v16;
      v19 = sub_252CC47C4(inited);
      swift_setDeallocating();
      sub_25293847C(v18, &qword_27F542E00, &qword_252E491D0);
      return v19;
    }
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36AD4();
  __swift_project_value_buffer(v21, qword_27F544EC8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E78C00);
  MEMORY[0x2530AD570](a1, a2);
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000016, 0x8000000252E78C40, 174);

LABEL_27:

  return 0;
}

uint64_t sub_252AC0F68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v10 = sub_252E32E24();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v13 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16))
  {

    v15 = sub_252A44A10(v10, v12);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      return v17;
    }
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544EC8);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E78D00);
  MEMORY[0x2530AD570](v10, v12);

  sub_252CC4050(v21, v22, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD00000000000001ALL, 0x8000000252E78D40, 183);

  return 0;
}

uint64_t sub_252AC11C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v10 = sub_252E32E24();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v13 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16))
  {

    v15 = sub_252A44A10(v10, v12);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      return v17;
    }
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544EC8);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E78CA0);
  MEMORY[0x2530AD570](v10, v12);

  sub_252CC4050(v21, v22, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000019, 0x8000000252E78CE0, 192);

  return 0;
}

uint64_t sub_252AC1428(uint64_t a1)
{
  v2[47] = a1;
  v2[48] = v1;
  v3 = sub_252E36AD4();
  v2[49] = v3;
  v4 = *(v3 - 8);
  v2[50] = v4;
  v5 = *(v4 + 64) + 15;
  v2[51] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DB8, &qword_252E49188);
  v2[52] = v6;
  v7 = *(v6 - 8);
  v2[53] = v7;
  v8 = *(v7 + 64) + 15;
  v2[54] = swift_task_alloc();
  v9 = sub_252E36634();
  v2[55] = v9;
  v10 = *(v9 - 8);
  v2[56] = v10;
  v11 = *(v10 + 64) + 15;
  v2[57] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DC0, &qword_252E49190);
  v2[58] = v12;
  v13 = *(v12 - 8);
  v2[59] = v13;
  v14 = *(v13 + 64) + 15;
  v2[60] = swift_task_alloc();
  v15 = sub_252E32E84();
  v2[61] = v15;
  v16 = *(v15 - 8);
  v2[62] = v16;
  v17 = *(v16 + 64) + 15;
  v2[63] = swift_task_alloc();
  v18 = sub_252E36AB4();
  v2[64] = v18;
  v19 = *(v18 - 8);
  v2[65] = v19;
  v20 = *(v19 + 64) + 15;
  v2[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AC16CC, 0, 0);
}

uint64_t sub_252AC16CC()
{
  v1 = v0[48];
  v2 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadSucceeded;
  v0[67] = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadSucceeded;
  *(v1 + v2) = 0;
  if (qword_27F53F560 != -1)
  {
LABEL_36:
    swift_once();
  }

  v3 = v0[47];
  v0[68] = __swift_project_value_buffer(v0[49], qword_27F544EC8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E78890);
  v4 = type metadata accessor for MatterAccessory();
  v5 = MEMORY[0x2530AD730](v3, v4);
  MEMORY[0x2530AD570](v5);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890);

  if (v3 >> 62)
  {
    if (v0[47] < 0)
    {
      v64 = v0[47];
    }

    v6 = sub_252E378C4();
    v146 = v0;
    if (v6)
    {
LABEL_4:
      if (qword_27F53F598 != -1)
      {
        swift_once();
      }

      v7 = v0[66];
      v8 = qword_27F544F20;
      v0[69] = qword_27F544F20;
      v9 = v8;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      sub_252CC3D90(0xD000000000000038, 0x8000000252E788F0, 0xD00000000000007CLL, 0x8000000252E6B890);
      sub_252B680FC();
      v10 = sub_252B6796C();
      v142 = v11;

      v0[70] = v10;
      sub_252CC3D90(0xD000000000000013, 0x8000000252E78930, 0xD00000000000007CLL, 0x8000000252E6B890);
      type metadata accessor for HomeStore();
      v12 = static HomeStore.shared.getter();
      v13 = sub_2529F219C();
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        if (!v13)
        {
          goto LABEL_11;
        }

        v16 = *&v13[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate];

        v17 = [v16 home];
        if (v17)
        {
          v18 = v17;
          v19 = type metadata accessor for Home();
          v20 = *(v19 + 48);
          v21 = *(v19 + 52);
          swift_allocObject();
          v22 = sub_2529E65BC(v18);
          sub_252956C8C(v13, 0);
          sub_252956C8C(v13, 0);
          v23 = *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v24 = *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v0 = v146;
          goto LABEL_56;
        }

        sub_252956C8C(v13, 0);
        v0 = v146;
      }

      sub_252956C8C(v13, v15 & 1);
LABEL_11:
      v25 = 0;
      v26 = MEMORY[0x277D84F90];
      v147 = MEMORY[0x277D84F90];
      v27 = v3 & 0xC000000000000001;
      v28 = v3 & 0xFFFFFFFFFFFFFF8;
      v29 = v0[47] + 32;
      v145 = (v0[62] + 32);
      do
      {
        v30 = v25;
        while (1)
        {
          if (v27)
          {
            v31 = MEMORY[0x2530ADF00](v30, v0[47]);
            v25 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v30 >= *(v28 + 16))
            {
              goto LABEL_35;
            }

            v31 = *(v29 + 8 * v30);

            v25 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          v32 = [*(v31 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
          if (v32)
          {
            break;
          }

          ++v30;
          if (v25 == v6)
          {
            goto LABEL_28;
          }
        }

        v33 = v0[63];
        v34 = v32;
        v35 = type metadata accessor for Home();
        v36 = *(v35 + 48);
        v37 = *(v35 + 52);
        v38 = swift_allocObject();
        *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v34;
        v39 = v34;
        v40 = [v39 uniqueIdentifier];
        sub_252E32E64();

        v41 = [v39 name];
        v42 = sub_252E36F34();
        v140 = v43;
        v141 = v42;

        v44 = [v39 assistantIdentifier];
        if (v44)
        {
          v45 = v44;
          v46 = sub_252E36F34();
          v48 = v47;
          v49 = v46;
        }

        else
        {

          v49 = 0;
          v48 = 0;
        }

        v50 = (*v145)(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v146[63], v146[61]);
        v51 = (v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v51 = v141;
        v51[1] = v140;
        *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
        v52 = (v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v52 = v49;
        v52[1] = v48;
        MEMORY[0x2530AD700](v50);
        if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v53 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v0 = v146;
        v26 = v147;
      }

      while (v25 != v6);
LABEL_28:
      v54 = sub_252DF956C(v26);

      if (v54 >> 62)
      {
        if (sub_252E378C4() == 1)
        {
          v55 = sub_252E378C4();
          if (v55)
          {
            goto LABEL_30;
          }
        }
      }

      else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_30:
        if ((v54 & 0xC000000000000001) == 0)
        {
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v63 = *(v54 + 32);

            v23 = *(v63 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v24 = *(v63 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

            goto LABEL_56;
          }

          __break(1u);
          goto LABEL_80;
        }

        v139 = MEMORY[0x2530ADF00](0, v54);

        v23 = *(v139 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v24 = *(v139 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        swift_unknownObjectRelease();
LABEL_56:
        v110 = v0[57];
        ObjectType = swift_getObjectType();
        v0[46] = 0;
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DC8, &unk_252E49198);
        v113 = *(v112 + 48);
        v114 = *(v112 + 52);
        swift_allocObject();
        v115 = sub_252E36754();
        v0[71] = v115;
        v0[25] = v23;
        v0[26] = v24;
        v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE8, &unk_252E3F910);
        v117 = *(v116 + 48);
        v118 = *(v116 + 52);
        swift_allocObject();
        v119 = sub_252E36754();
        v0[72] = v119;
        v0[27] = v115;
        v0[28] = v119;
        sub_252ACBD80();
        sub_252ACBDD4();
        sub_2529C0054();
        v120 = sub_252E36404();
        v121 = *(v120 + 48);
        v122 = *(v120 + 52);
        swift_allocObject();
        v123 = sub_252E363F4();
        v0[73] = v123;
        v124 = *(MEMORY[0x277CEB000] + 4);
        v125 = swift_task_alloc();
        v0[74] = v125;
        *v125 = v0;
        v125[1] = sub_252AC25BC;
        v55 = v0[60];
        v57 = v0[57];
        v59 = MEMORY[0x277CEAFA0];
        v56 = v0 + 27;
        v58 = v123;
        v60 = ObjectType;
        v61 = &type metadata for HomeIntentProducer.GetDeviceInfoIntent;
        v62 = v142;

        return MEMORY[0x28213DAA0](v55, v56, v57, v58, v59, v60, v61, v62);
      }

      v23 = 0;
      v24 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v146 = v0;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  v143 = v0[68];
  v144 = v0[67];
  v65 = v0[48];
  v66 = sub_252AC5D34();
  v67 = (v65 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash);
  v68 = *(v65 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash + 8);
  *v67 = v66;
  v67[1] = v69;

  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E789A0);
  v70 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
  swift_beginAccess();
  v71 = *(v65 + v70);
  *(swift_task_alloc() + 16) = v65;

  v73 = sub_252ACB7B8(v72, sub_252ACBED0);

  v74 = MEMORY[0x277D837D0];
  v75 = MEMORY[0x2530AD730](v73, MEMORY[0x277D837D0]);
  v77 = v76;

  MEMORY[0x2530AD570](v75, v77);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E789F0);
  v78 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
  swift_beginAccess();
  v79 = *(v65 + v78);
  *(swift_task_alloc() + 16) = v65;

  v81 = sub_252ACB7B8(v80, sub_252ACBED8);

  v82 = MEMORY[0x2530AD730](v81, v74);
  v84 = v83;

  MEMORY[0x2530AD570](v82, v84);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E78A10);
  v85 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
  swift_beginAccess();
  v86 = *(v65 + v85);
  *(swift_task_alloc() + 16) = v65;

  v88 = sub_252ACB7B8(v87, sub_252ACBF08);

  v89 = MEMORY[0x2530AD730](v88, v74);
  v91 = v90;

  MEMORY[0x2530AD570](v89, v91);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E78A30);
  v92 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v93 = *(v65 + v92);
  v94 = type metadata accessor for DeviceEntity();

  v96 = MEMORY[0x2530AD730](v95, v94);
  v98 = v97;

  MEMORY[0x2530AD570](v96, v98);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E78A50);
  v99 = v67[1];
  v0[31] = *v67;
  v0[32] = v99;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v100 = sub_252E36F94();
  MEMORY[0x2530AD570](v100);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890);

  *(v65 + v144) = 1;
  v148 = MEMORY[0x277D84F90];
  if (qword_27F53F320 != -1)
  {
    swift_once();
  }

  v101 = v0[48];
  sub_252E37604();
  v102 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadWaitSemaphores;
  v55 = swift_beginAccess();
  v103 = *(v101 + v102);
  if (v103 >> 62)
  {
    if (v103 < 0)
    {
      v126 = *(v101 + v102);
    }

    v55 = sub_252E378C4();
    v104 = v55;
    if (v55)
    {
      goto LABEL_44;
    }

LABEL_62:
    v109 = MEMORY[0x277D84F90];
    goto LABEL_63;
  }

  v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v104)
  {
    goto LABEL_62;
  }

LABEL_44:
  if (v104 < 1)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  for (i = 0; i != v104; ++i)
  {
    if ((v103 & 0xC000000000000001) != 0)
    {
      v106 = MEMORY[0x2530ADF00](i, v103);
    }

    else
    {
      v106 = *(v103 + 8 * i + 32);
    }

    v107 = v106;
    MEMORY[0x2530AD700]();
    if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v108 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
  }

  v109 = v148;

LABEL_63:
  v55 = sub_252E37614();
  if (v109 >> 62)
  {
    v55 = sub_252E378C4();
    v127 = v55;
    if (!v55)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v127 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v127)
    {
      goto LABEL_75;
    }
  }

  if (v127 < 1)
  {
LABEL_81:
    __break(1u);
    return MEMORY[0x28213DAA0](v55, v56, v57, v58, v59, v60, v61, v62);
  }

  v128 = 0;
  do
  {
    if ((v109 & 0xC000000000000001) != 0)
    {
      v129 = MEMORY[0x2530ADF00](v128, v109);
    }

    else
    {
      v129 = *(v109 + 8 * v128 + 32);
    }

    v130 = v129;
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    ++v128;
    __swift_project_value_buffer(v146[49], qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000047, 0x8000000252E78A80, 0xD00000000000007CLL, 0x8000000252E6B890);
    sub_252E37614();
  }

  while (v127 != v128);
LABEL_75:
  v131 = v146[66];
  v132 = v146[63];
  v133 = v146[60];
  v134 = v146[57];
  v135 = v146[54];
  v136 = v146[51];

  v137 = v146[1];

  return v137();
}

uint64_t sub_252AC25BC()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v17 = *v1;
  *(*v1 + 600) = v0;

  v4 = v2[73];
  if (v0)
  {
    v5 = v2[72];
    v6 = v2[71];
    v8 = v2[56];
    v7 = v2[57];
    v9 = v2[55];

    (*(v8 + 8))(v7, v9);

    v10 = sub_252AC3684;
  }

  else
  {
    v11 = v2[72];
    v12 = v2[71];
    v14 = v2[56];
    v13 = v2[57];
    v15 = v2[55];

    (*(v14 + 8))(v13, v15);

    v10 = sub_252AC2760;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_252AC2760()
{
  v136 = v0;
  v1 = 0xD00000000000007CLL;
  v2 = *(v0 + 544);
  v3 = *(v0 + 480);
  v4 = *(v0 + 464);
  v6 = *(v0 + 424);
  v5 = *(v0 + 432);
  v7 = *(v0 + 416);
  v8 = "for accessoryID ";
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E78AD0, 0xD00000000000007CLL, 0x8000000252E6B890);
  sub_252E365F4();
  sub_252E366E4();
  (*(v6 + 8))(v5, v7);
  v9 = *(v0 + 344);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      goto LABEL_42;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v11)
    {
      v119 = v10;
      v12 = 0;
      v13 = *(v0 + 400);
      v131 = v9 & 0xC000000000000001;
      v121 = *(v0 + 384);
      v122 = v9;
      v14 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      v118 = v9 + 32;
      v117 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
      v126 = (v13 + 16);
      v125 = (v13 + 8);
      v124 = v1 - 53;
      v127 = v11;
      v129 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      while (v131)
      {
        v9 = MEMORY[0x2530ADF00](v12, v122);
        v24 = v9;
        v25 = __OFADD__(v12++, 1);
        if (v25)
        {
          goto LABEL_39;
        }

LABEL_14:
        v26 = qword_27F545C30;
        v27 = *(v24 + qword_27F545C30);

        sub_252E36744();

        v28 = *(v0 + 296);
        if (!v28)
        {
          goto LABEL_32;
        }

        v29 = *&v28[qword_27F5427D0];

        sub_252E36744();

        v1 = *(v0 + 272);
        if (!v1)
        {
          goto LABEL_31;
        }

        v123 = v12;
        v128 = v28;
        v30 = *(v0 + 264);
        v31 = *(v24 + qword_27F545C38);

        sub_252E36744();

        v10 = *(v0 + 352);
        if (!v10)
        {

          v12 = v123;
LABEL_31:

          v1 = 0xD00000000000007CLL;
LABEL_32:
          (*v126)(*(v0 + 408), *(v0 + 544), *(v0 + 392));
          v134 = 0;
          v135 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](v124, 0x8000000252E78B20);
          v40 = *(v24 + v26);

          sub_252E36744();

          *(v0 + 312) = *(v0 + 320);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
          v41 = sub_252E36F94();
          MEMORY[0x2530AD570](v41);

          MEMORY[0x2530AD570](0x6F7373656363610ALL, 0xEE00203A44497972);
          v42 = *(v24 + v26);

          sub_252E36744();

          v43 = *(v0 + 304);
          if (v43)
          {
            v15 = *(v43 + qword_27F5427D0);

            sub_252E36744();

            v16 = *(v0 + 184);
          }

          else
          {
            v16 = 0uLL;
          }

          v10 = *(v0 + 408);
          v17 = *(v0 + 392);
          *(v0 + 280) = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
          v18 = sub_252E36F94();
          MEMORY[0x2530AD570](v18);

          MEMORY[0x2530AD570](v1 - 102, 0x8000000252E78B70);
          v19 = *(v24 + qword_27F545C38);

          sub_252E36744();

          *(v0 + 336) = *(v0 + 328);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DF0, &unk_252E5F5E0);
          v20 = sub_252E36F94();
          MEMORY[0x2530AD570](v20);

          MEMORY[0x2530AD570](v1 - 99, 0x8000000252E78B90);

          v21 = sub_252D8BB5C();
          v23 = v22;

          MEMORY[0x2530AD570](v21, v23);

          sub_252CC4050(v134, v135, 0xD00000000000007CLL, v8 | 0x8000000000000000, v1 - 103, 0x8000000252E78980, 260);

          v9 = (*v125)(v10, v17);
          v11 = v127;
          goto LABEL_7;
        }

        swift_beginAccess();
        v8 = v128;

        MEMORY[0x2530AD700](v32);
        if (*((*(v121 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v121 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((*(v121 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        swift_endAccess();
        v9 = sub_252CC479C(MEMORY[0x277D84F90]);
        v33 = v9;
        v133 = v9;
        if (v10 >> 62)
        {
          v9 = sub_252E378C4();
          v34 = v9;
          if (v9)
          {
LABEL_21:
            if (v34 < 1)
            {
              goto LABEL_41;
            }

            for (i = 0; i != v34; ++i)
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                v36 = MEMORY[0x2530ADF00](i, v10);
              }

              else
              {
                v36 = *(v10 + 8 * i + 32);
              }

              v37 = *(v36 + qword_27F545C50);

              sub_252E36744();

              v38 = *(v0 + 608);
              if (v38 != 60)
              {
                v39 = *(v0 + 384);
                sub_252AC4510(v36, v38, v30, v1, &v133);
              }
            }

            v10 = "for accessoryID ";
            v33 = v133;
            v11 = v127;
            goto LABEL_36;
          }
        }

        else
        {
          v34 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_21;
          }
        }

        v10 = "for accessoryID ";
LABEL_36:
        v120 = *(v0 + 544);
        swift_beginAccess();

        v45 = *(v121 + v117);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v134 = *(v121 + v117);
        *(v121 + v117) = 0x8000000000000000;
        sub_2529FB628(v33, v30, v1, isUniquelyReferenced_nonNull_native);

        *(v121 + v117) = v134;
        swift_endAccess();
        v134 = 0;
        v135 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E78BB0);
        MEMORY[0x2530AD570](v30, v1);
        v1 = 0xD00000000000007CLL;

        sub_252CC3D90(v134, v135, 0xD00000000000007CLL, 0x8000000252E6B890);

        v8 = "for accessoryID ";
        v12 = v123;
LABEL_7:
        v14 = v129;
        if (v12 == v11)
        {
          v47 = *(v0 + 560);
          goto LABEL_44;
        }
      }

      if (v12 >= *(v119 + 16))
      {
        goto LABEL_40;
      }

      v24 = *(v118 + 8 * v12);

      v25 = __OFADD__(v12++, 1);
      if (!v25)
      {
        goto LABEL_14;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v50 = v9;
      v11 = sub_252E378C4();
      v9 = v50;
    }

    v51 = *(v0 + 560);
LABEL_44:
  }

  else
  {
    v48 = *(v0 + 560);
    v49 = *(v0 + 544);
    sub_252CC4050(0xD00000000000002CLL, 0x8000000252E78AF0, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000015, 0x8000000252E78980, 272);
  }

  swift_unknownObjectRelease();
  (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
  v52 = *(v0 + 600);
  v53 = *(v0 + 552);
  v54 = *(v0 + 528);
  v55 = *(v0 + 520);
  v56 = *(v0 + 512);
  sub_252E375C4();
  sub_252E36A74();
  (*(v55 + 8))(v54, v56);
  v130 = *(v0 + 544);
  v132 = *(v0 + 536);
  v57 = *(v0 + 384);
  v58 = sub_252AC5D34();
  v59 = (v57 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash);
  v60 = *(v57 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash + 8);
  *v59 = v58;
  v59[1] = v61;

  v134 = 0;
  v135 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](v1 - 57, 0x8000000252E789A0);
  v62 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
  swift_beginAccess();
  v63 = *(v57 + v62);
  *(swift_task_alloc() + 16) = v57;

  v65 = sub_252ACB7B8(v64, sub_252ACBED0);

  v66 = MEMORY[0x277D837D0];
  v67 = MEMORY[0x2530AD730](v65, MEMORY[0x277D837D0]);
  v69 = v68;

  MEMORY[0x2530AD570](v67, v69);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E789F0);
  v70 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
  swift_beginAccess();
  v71 = *(v57 + v70);
  *(swift_task_alloc() + 16) = v57;

  v73 = sub_252ACB7B8(v72, sub_252ACBED8);

  v74 = MEMORY[0x2530AD730](v73, v66);
  v76 = v75;

  MEMORY[0x2530AD570](v74, v76);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E78A10);
  v77 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
  swift_beginAccess();
  v78 = *(v57 + v77);
  *(swift_task_alloc() + 16) = v57;

  v80 = sub_252ACB7B8(v79, sub_252ACBF08);

  v81 = MEMORY[0x2530AD730](v80, v66);
  v83 = v82;

  MEMORY[0x2530AD570](v81, v83);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E78A30);
  v84 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v85 = *(v57 + v84);
  v86 = type metadata accessor for DeviceEntity();

  v88 = MEMORY[0x2530AD730](v87, v86);
  v90 = v89;

  MEMORY[0x2530AD570](v88, v90);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E78A50);
  v91 = v59[1];
  *(v0 + 248) = *v59;
  *(v0 + 256) = v91;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v92 = sub_252E36F94();
  MEMORY[0x2530AD570](v92);

  sub_252CC3D90(v134, v135, 0xD00000000000007CLL, 0x8000000252E6B890);

  *(v57 + v132) = 1;
  v134 = MEMORY[0x277D84F90];
  if (qword_27F53F320 != -1)
  {
    swift_once();
  }

  v93 = *(v0 + 384);
  sub_252E37604();
  v94 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadWaitSemaphores;
  result = swift_beginAccess();
  v96 = *(v93 + v94);
  if (v96 >> 62)
  {
    if (v96 < 0)
    {
      v105 = *(v93 + v94);
    }

    result = sub_252E378C4();
    v97 = result;
    if (result)
    {
      goto LABEL_49;
    }

LABEL_61:
    v104 = MEMORY[0x277D84F90];
    goto LABEL_62;
  }

  v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v97)
  {
    goto LABEL_61;
  }

LABEL_49:
  if (v97 < 1)
  {
    __break(1u);
    goto LABEL_78;
  }

  for (j = 0; j != v97; ++j)
  {
    if ((v96 & 0xC000000000000001) != 0)
    {
      v99 = MEMORY[0x2530ADF00](j, v96);
    }

    else
    {
      v99 = *(v96 + 8 * j + 32);
    }

    v100 = v99;
    MEMORY[0x2530AD700](v100, v101, v102);
    if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v103 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
  }

  v104 = v134;

LABEL_62:
  result = sub_252E37614();
  if (v104 >> 62)
  {
    result = sub_252E378C4();
    v106 = result;
    if (result)
    {
LABEL_64:
      if (v106 >= 1)
      {
        v107 = 0;
        do
        {
          if ((v104 & 0xC000000000000001) != 0)
          {
            v108 = MEMORY[0x2530ADF00](v107, v104);
          }

          else
          {
            v108 = *(v104 + 8 * v107 + 32);
          }

          v109 = v108;
          if (qword_2814B0A98 != -1)
          {
            swift_once();
          }

          ++v107;
          __swift_project_value_buffer(*(v0 + 392), qword_2814B0AA0);
          sub_252CC3D90(0xD000000000000047, 0x8000000252E78A80, 0xD00000000000007CLL, 0x8000000252E6B890);
          sub_252E37614();
        }

        while (v106 != v107);
        goto LABEL_74;
      }

LABEL_78:
      __break(1u);
      return result;
    }
  }

  else
  {
    v106 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v106)
    {
      goto LABEL_64;
    }
  }

LABEL_74:
  v110 = *(v0 + 528);
  v111 = *(v0 + 504);
  v112 = *(v0 + 480);
  v113 = *(v0 + 456);
  v114 = *(v0 + 432);
  v115 = *(v0 + 408);

  v116 = *(v0 + 8);

  return v116();
}

uint64_t sub_252AC3684()
{
  v1 = v0;
  v2 = v0[75];
  v3 = v0[70];
  v4 = v0[68];
  swift_unknownObjectRelease();
  sub_252E379F4();
  v0[29] = 0;
  v0[30] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E78950);
  v0[45] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[29], v0[30], 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000015, 0x8000000252E78980, 275);

  v5 = v0[69];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v1[64];
  sub_252E375C4();
  sub_252E36A74();
  (*(v7 + 8))(v6, v8);
  v71 = v1[68];
  v72 = v1[67];
  v9 = v1[48];
  v10 = sub_252AC5D34();
  v11 = (v9 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash);
  v12 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash + 8);
  *v11 = v10;
  v11[1] = v13;

  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E789A0);
  v14 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
  swift_beginAccess();
  v15 = *(v9 + v14);
  *(swift_task_alloc() + 16) = v9;

  v17 = sub_252ACB7B8(v16, sub_252ACBED0);

  v18 = MEMORY[0x277D837D0];
  v19 = MEMORY[0x2530AD730](v17, MEMORY[0x277D837D0]);
  v21 = v20;

  MEMORY[0x2530AD570](v19, v21);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E789F0);
  v22 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
  swift_beginAccess();
  v23 = *(v9 + v22);
  *(swift_task_alloc() + 16) = v9;

  v25 = sub_252ACB7B8(v24, sub_252ACBED8);

  v26 = MEMORY[0x2530AD730](v25, v18);
  v28 = v27;
  v29 = v1;

  MEMORY[0x2530AD570](v26, v28);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E78A10);
  v30 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
  swift_beginAccess();
  v31 = *(v9 + v30);
  *(swift_task_alloc() + 16) = v9;

  v33 = sub_252ACB7B8(v32, sub_252ACBF08);

  v34 = MEMORY[0x2530AD730](v33, v18);
  v36 = v35;

  MEMORY[0x2530AD570](v34, v36);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E78A30);
  v37 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v38 = *(v9 + v37);
  v39 = type metadata accessor for DeviceEntity();

  v41 = MEMORY[0x2530AD730](v40, v39);
  v43 = v42;

  MEMORY[0x2530AD570](v41, v43);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E78A50);
  v44 = v11[1];
  v29[31] = *v11;
  v29[32] = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v45 = sub_252E36F94();
  MEMORY[0x2530AD570](v45);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890);

  *(v9 + v72) = 1;
  v73 = MEMORY[0x277D84F90];
  if (qword_27F53F320 != -1)
  {
    swift_once();
  }

  v46 = v29[48];
  sub_252E37604();
  v47 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadWaitSemaphores;
  result = swift_beginAccess();
  v49 = *(v46 + v47);
  if (v49 >> 62)
  {
    if (v49 < 0)
    {
      v58 = *(v46 + v47);
    }

    result = sub_252E378C4();
    v50 = result;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_17:
    v57 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v50)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (v50 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  for (i = 0; i != v50; ++i)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x2530ADF00](i, v49);
    }

    else
    {
      v52 = *(v49 + 8 * i + 32);
    }

    v53 = v52;
    MEMORY[0x2530AD700](v53, v54, v55);
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v56 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
  }

  v57 = v73;

LABEL_18:
  result = sub_252E37614();
  v59 = v29;
  if (v57 >> 62)
  {
    result = sub_252E378C4();
    v60 = result;
    if (result)
    {
LABEL_20:
      if (v60 >= 1)
      {
        v61 = 0;
        do
        {
          if ((v57 & 0xC000000000000001) != 0)
          {
            v62 = MEMORY[0x2530ADF00](v61, v57);
          }

          else
          {
            v62 = *(v57 + 8 * v61 + 32);
          }

          v63 = v62;
          if (qword_2814B0A98 != -1)
          {
            swift_once();
          }

          ++v61;
          __swift_project_value_buffer(v59[49], qword_2814B0AA0);
          sub_252CC3D90(0xD000000000000047, 0x8000000252E78A80, 0xD00000000000007CLL, 0x8000000252E6B890);
          sub_252E37614();
        }

        while (v60 != v61);
        goto LABEL_30;
      }

LABEL_34:
      __break(1u);
      return result;
    }
  }

  else
  {
    v60 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
      goto LABEL_20;
    }
  }

LABEL_30:
  v64 = v59[66];
  v65 = v59[63];
  v66 = v59[60];
  v67 = v59[57];
  v68 = v59[54];
  v69 = v59[51];

  v70 = v59[1];

  return v70();
}

uint64_t sub_252AC3ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v7 = *(a4 + v6);
  if (v7 >> 62)
  {
LABEL_23:
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_17:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544EC8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

    goto LABEL_21;
  }

  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2530ADF00](v9, v7);
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(v7 + 8 * v9 + 32);

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_16;
      }
    }

    v13 = *(v11 + qword_27F5427D0);

    sub_252E36744();

    if (v20)
    {
      break;
    }

LABEL_6:

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_17;
    }
  }

  if (v19 != a1 || v20 != a2)
  {
    v10 = sub_252E37DB4();

    if (v10)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

LABEL_20:

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
  v15 = sub_252E36F94();
  MEMORY[0x2530AD570](v15);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540030, &qword_252E491C0);
  sub_25292C260();
  v16 = sub_252E36E54();
  MEMORY[0x2530AD570](v16);

  return 0;
}

uint64_t sub_252AC41F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v9 = *(a4 + v8);
  if (v9 >> 62)
  {
LABEL_23:
    v10 = sub_252E378C4();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = a3;

  if (!v10)
  {
LABEL_17:

    v17 = a5;
    v16 = v24;
    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544EC8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

    goto LABEL_21;
  }

  v11 = 0;
  a3 = v9 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530ADF00](v11, v9);
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v13 = *(v9 + 8 * v11 + 32);

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_16;
      }
    }

    v15 = *(v13 + qword_27F5427D0);

    sub_252E36744();

    if (v27)
    {
      break;
    }

LABEL_6:

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_17;
    }
  }

  if (v26 != a1 || v27 != a2)
  {
    v12 = sub_252E37DB4();

    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

LABEL_20:

  v17 = a5;
  v16 = v24;
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
  v19 = sub_252E36F94();
  MEMORY[0x2530AD570](v19);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v20 = v17(0);
  v21 = MEMORY[0x2530AD730](v16, v20);
  MEMORY[0x2530AD570](v21);

  return 0;
}

void sub_252AC4510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = sub_252BF8DE0(a2);
  if (v10)
  {
    if (qword_27F53F560 != -1)
    {
      goto LABEL_90;
    }

    goto LABEL_3;
  }

  v99 = v5;
  v100 = a3;
  v98 = v9;
  v12 = *(a1 + qword_27F545C58);

  sub_252E36744();

  v13 = v114;
  v14 = MEMORY[0x277D84F90];
  if (!v114)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_17:
    v110 = v14;
    v111 = v14;
    v31 = 0x27F53F000uLL;
    v32 = v17[2];
    if (v32)
    {
      v97 = a4;
      v33 = 0;
      v107 = v17 + 4;
      v34 = MEMORY[0x277D84F90];
      v35 = MEMORY[0x277D84F90];
      v105 = MEMORY[0x277D84F90];
      v101 = v17;
      v106 = v17[2];
      while (1)
      {
        if (v33 >= v17[2])
        {
          __break(1u);
          goto LABEL_87;
        }

        v39 = &v107[2 * v33];
        v40 = *v39;
        v41 = *(v39 + 8);
        if ((v41 - 42) < 2)
        {
          v37 = v40;
          v47 = [v37 cleaningJob];
          if (v47)
          {
            v48 = v47;
            MEMORY[0x2530AD700]();
            if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v73 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();

            v35 = v111;
            goto LABEL_23;
          }

LABEL_22:

          goto LABEL_23;
        }

        if (v41 != 44)
        {
          if (v41 == 45)
          {
            v42 = v40;
            v43 = [v42 cleaningJob];
            if (v43 && (v44 = v43, v45 = [v43 targetMap], v44, v45))
            {
              v46 = v45;
              MEMORY[0x2530AD700]();
              if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v74 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              sub_252E372D4();

              v105 = v110;
              v32 = v106;
            }

            else
            {

              v32 = v106;
            }

            goto LABEL_23;
          }

          v36 = *(v31 + 1376);
          v37 = v40;
          if (v36 != -1)
          {
            swift_once();
          }

          v38 = sub_252E36AD4();
          __swift_project_value_buffer(v38, qword_27F544EC8);
          sub_252CC4050(0xD00000000000002ELL, 0x8000000252E787C0, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD00000000000004ELL, 0x8000000252E78770, 351);
          goto LABEL_22;
        }

        v49 = v40;
        v50 = [v49 cleaningJob];
        if (!v50 || (v51 = v50, v52 = [v50 targetAreas], v51, !v52))
        {

          goto LABEL_23;
        }

        type metadata accessor for HomeAttributeTargetArea();
        v53 = sub_252E37264();

        v54 = v53 >> 62;
        if (v53 >> 62)
        {
          v55 = sub_252E378C4();
        }

        else
        {
          v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v56 = v34 >> 62;
        if (v34 >> 62)
        {
          v57 = sub_252E378C4();
        }

        else
        {
          v57 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v103 = v55;
        v58 = __OFADD__(v57, v55);
        v59 = v57 + v55;
        if (v58)
        {
          goto LABEL_88;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v56)
        {
          goto LABEL_53;
        }

        v60 = v34 & 0xFFFFFFFFFFFFFF8;
        if (v59 > *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_52;
        }

LABEL_55:
        v104 = v34;
        v62 = *(v60 + 16);
        v63 = *(v60 + 24);
        if (v54)
        {
          v64 = sub_252E378C4();
          if (!v64)
          {
LABEL_61:

            v34 = v104;
            v17 = v101;
            v31 = 0x27F53F000;
            v32 = v106;
            if (v103 > 0)
            {
              goto LABEL_89;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v64 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v64)
          {
            goto LABEL_61;
          }
        }

        if (((v63 >> 1) - v62) < v103)
        {
          __break(1u);
          goto LABEL_95;
        }

        v65 = v60 + 8 * v62 + 32;
        if (v54)
        {
          if (v64 < 1)
          {
            goto LABEL_97;
          }

          v96 = v35;
          sub_2529E6488(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
          for (i = 0; i != v64; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
            v68 = sub_2529FBD80(&v112, i, v53);
            v70 = *v69;
            (v68)(&v112, 0);
            *(v65 + 8 * i) = v70;
          }

          v35 = v96;
          v66 = v103;
        }

        else
        {
          v66 = v103;
          swift_arrayInitWithCopy();
        }

        v34 = v104;
        v31 = 0x27F53F000;
        v32 = v106;
        if (v66 > 0)
        {
          v71 = *(v60 + 16);
          v58 = __OFADD__(v71, v66);
          v72 = v71 + v66;
          if (v58)
          {
            goto LABEL_96;
          }

          *(v60 + 16) = v72;
        }

        v17 = v101;
LABEL_23:
        if (++v33 == v32)
        {
          v75 = v35;

          a4 = v97;
          goto LABEL_75;
        }
      }

      if (v56)
      {
LABEL_53:
        sub_252E378C4();
      }

      else
      {
        v60 = v34 & 0xFFFFFFFFFFFFFF8;
LABEL_52:
        v61 = *(v60 + 16);
      }

      v34 = sub_252E37A54();
      v60 = v34 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_55;
    }

    v34 = MEMORY[0x277D84F90];
    v75 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
LABEL_75:
    v76 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
    swift_beginAccess();

    v77 = *(v99 + v76);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(v99 + v76);
    *(v99 + v76) = 0x8000000000000000;
    sub_2529FB5E8(v34, v100, a4, isUniquelyReferenced_nonNull_native);

    *(v99 + v76) = v108;
    swift_endAccess();
    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v79 = sub_252E36AD4();
    __swift_project_value_buffer(v79, qword_27F544EC8);
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E787F0);
    MEMORY[0x2530AD570](v100, a4);
    sub_252CC3D90(v112, v113, 0xD00000000000007CLL, 0x8000000252E6B890);

    v80 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
    swift_beginAccess();

    v81 = *(v99 + v80);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(v99 + v80);
    *(v99 + v80) = 0x8000000000000000;
    sub_2529FB5A8(v105, v100, a4, v82);

    *(v99 + v80) = v109;
    swift_endAccess();
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000045, 0x8000000252E78840);
    MEMORY[0x2530AD570](v100, a4);
    sub_252CC3D90(v112, v113, 0xD00000000000007CLL, 0x8000000252E6B890);

    if (v75 >> 62)
    {
      v83 = sub_252E378C4();
      if (v83)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v83 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v83)
      {
LABEL_79:
        v112 = MEMORY[0x277D84F90];
        sub_252E37AB4();
        if (v83 < 0)
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          return;
        }

        v84 = 0;
        do
        {
          if ((v75 & 0xC000000000000001) != 0)
          {
            v85 = MEMORY[0x2530ADF00](v84, v75);
          }

          else
          {
            v85 = *(v75 + 8 * v84 + 32);
          }

          v86 = v85;
          ++v84;
          v87 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v88 = v86;
          v89 = sub_252E36F04();
          v90 = [v87 initWithIdentifier:0 displayString:v89];

          v91 = v90;
          [v91 setType_];
          [v91 setCleaningJob_];

          sub_252E37A94();
          v92 = *(v112 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        while (v83 != v84);

        v93 = v112;
LABEL_93:
        v94 = *a5;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v112 = *a5;
        sub_2529FB484(v93, v98, v95);
        *a5 = v112;
        return;
      }
    }

    v93 = MEMORY[0x277D84F90];
    goto LABEL_93;
  }

  v15 = 0;
  v16 = *(v114 + 16);
  v17 = MEMORY[0x277D84F90];
LABEL_6:
  v18 = 48 * v15 + 32;
  while (1)
  {
    if (v16 == v15)
    {

      v14 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    if (v15 >= *(v13 + 16))
    {
      break;
    }

    ++v15;
    v19 = v18 + 48;
    v20 = (v13 + v18);
    v21 = *v20;
    v22 = v20[1];
    *&v115[9] = *(v20 + 25);
    v114 = v21;
    *v115 = v22;
    sub_252A656C8(&v114, &v112);
    v23 = sub_252D378B0(&v114);
    v25 = v24;
    sub_252ACBD2C(&v114);
    v18 = v19;
    if (v23)
    {
      v26 = v17;
      v27 = a4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_2529F8C7C(0, v26[2] + 1, 1, v26);
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_2529F8C7C((v28 > 1), v29 + 1, 1, v26);
      }

      v26[2] = v29 + 1;
      v30 = &v26[2 * v29];
      v30[4] = v23;
      *(v30 + 40) = v25;
      a4 = v27;
      v17 = v26;
      goto LABEL_6;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  swift_once();
LABEL_3:
  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544EC8);
  sub_252CC4050(0xD00000000000003DLL, 0x8000000252E78730, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD00000000000004ELL, 0x8000000252E78770, 369);
}

uint64_t sub_252AC50D8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_25:
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      sub_252E36424();
      __swift_project_boxed_opaque_existential_1(&v16, v18);
      if (sub_252E364D4() == a1 && v11 == a2)
      {

        __swift_destroy_boxed_opaque_existential_1(&v16);
LABEL_22:

        return v9;
      }

      v13 = sub_252E37DB4();

      __swift_destroy_boxed_opaque_existential_1(&v16);
      if (v13)
      {
        goto LABEL_22;
      }

      ++v8;
    }

    while (v10 != v7);
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544EC8);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E786D0);
  MEMORY[0x2530AD570](a1, a2);
  sub_252CC4050(v16, v17, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD00000000000001CLL, 0x8000000252E78710, 383);

  return 0;
}

uint64_t sub_252AC5368(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v62 = a1;
  v63 = a2;
  v61 = sub_252E36AD4();
  v54 = *(v61 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v61);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36C84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v55 = sub_252E36D54();
  v13 = *(v55 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v55);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v58 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v59 = &v49 - v20;
  if (qword_27F53F320 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v21 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadSucceeded;
  if (*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadSucceeded) == 1)
  {
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v61, qword_27F544D78);
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
    MEMORY[0x2530AD570](v62, v63);
    MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E78E70);
    sub_252CC3D90(v64, v65, 0xD00000000000007CLL, 0x8000000252E6B890);

    sub_252E37614();
    return 1;
  }

  v56 = v13;
  v57 = v7;
  v52 = v6;
  v22 = dispatch_semaphore_create(0);
  v23 = qword_2814B0A98;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v61, qword_2814B0AA0);
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_252E379F4();
  v25 = v63;

  v64 = v62;
  v65 = v25;
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E703F0);
  sub_252CC3D90(v64, v65, 0xD00000000000007CLL, 0x8000000252E6B890);

  v26 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_loadWaitSemaphores;
  swift_beginAccess();
  v27 = v24;
  MEMORY[0x2530AD700]();
  if (*((*(v3 + v26) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v26) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  sub_252E37614();
  if (!v27)
  {
    return 1;
  }

  sub_252E36D14();
  *v12 = 3;
  v28 = v57;
  v29 = v52;
  (*(v57 + 104))(v12, *MEMORY[0x277D85188], v52);
  v51 = v27;
  sub_252E36D24();
  v30 = *(v28 + 8);
  v57 = v28 + 8;
  v50 = v30;
  v30(v12, v29);
  v31 = v51;
  LOBYTE(v29) = sub_252E375F4();
  sub_252E36D14();
  sub_252E36D34();
  v32 = v55;
  v33 = *(v56 + 8);
  v56 += 8;
  v33(v17, v55);
  if ((v29 & 1) == 0)
  {
    v49 = "for accessoryID ";
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    v38 = v61;
    v39 = __swift_project_value_buffer(v61, qword_27F544D78);
    v41 = v53;
    v40 = v54;
    (*(v54 + 16))(v53, v39, v38);
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
    MEMORY[0x2530AD570](v62, v63);
    MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E78E40);
    if (*(v3 + v21))
    {
      v42 = 5457241;
    }

    else
    {
      v42 = 20302;
    }

    if (*(v3 + v21))
    {
      v43 = 0xE300000000000000;
    }

    else
    {
      v43 = 0xE200000000000000;
    }

    MEMORY[0x2530AD570](v42, v43);

    MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E70480);
    v44 = v60;
    v45 = v52;
    sub_252E37AE4();
    MEMORY[0x2530AD570](34, 0xE100000000000000);
    sub_252CC3D90(v64, v65, 0xD00000000000007CLL, v49 | 0x8000000000000000);

    (*(v40 + 8))(v41, v38);
    v36 = v44;
    v37 = v45;
    goto LABEL_26;
  }

  if (*(v3 + v21))
  {
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v61, qword_27F544D78);
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
    MEMORY[0x2530AD570](v62, v63);
    MEMORY[0x2530AD570](0xD000000000000042, 0x8000000252E78DF0);
    v34 = v60;
    v35 = v52;
    sub_252E37AE4();
    MEMORY[0x2530AD570](34, 0xE100000000000000);
    sub_252CC3D90(v64, v65, 0xD00000000000007CLL, 0x8000000252E6B890);

    v36 = v34;
    v37 = v35;
LABEL_26:
    v50(v36, v37);
    v33(v58, v32);
    v33(v59, v32);
    return 1;
  }

  if (qword_27F53F4F0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v61, qword_27F544D78);
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
  MEMORY[0x2530AD570](v62, v63);
  MEMORY[0x2530AD570](0xD00000000000004FLL, 0x8000000252E78D80);
  v47 = v60;
  v48 = v52;
  sub_252E37AE4();
  MEMORY[0x2530AD570](34, 0xE100000000000000);
  sub_252CC4050(v64, v65, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD00000000000001DLL, 0x8000000252E78DD0, 433);

  v50(v47, v48);
  v33(v58, v32);
  v33(v59, v32);
  return 0;
}

uint64_t sub_252AC5D34()
{
  v224 = sub_252E36DF4();
  v223 = *(v224 - 8);
  v1 = *(v223 + 64);
  MEMORY[0x28223BE20](v224);
  v222 = &v218 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_252E36E04();
  v226 = *(v227 - 8);
  v3 = *(v226 + 64);
  MEMORY[0x28223BE20](v227);
  v225 = &v218 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = 0;
  v264 = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetMaps;
  swift_beginAccess();
  v255 = v0;
  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  v257 = v5;
  if (v7)
  {
    v8 = sub_252DFA3E0(v7, 0);
    v9 = sub_252E11360(v262, v8 + 32, v7, v6);
    swift_bridgeObjectRetain_n();
    sub_25291AE30();
    if (v9 != v7)
    {
      goto LABEL_284;
    }

    v5 = v257;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v262[0] = v8;
  v10 = 0;
  sub_252AC841C(v262);

  v11 = v262[0];
  v12 = *(v262[0] + 2);
  v253 = v262[0];
  if (v12)
  {
    v13 = 0;
    v14 = v262[0] + 32;
    v260 = ", targetArea.areaId(";
    v259 = "\ttargetMap.mapID(";
    v256 = v12;
    v258 = v262[0] + 32;
    while (1)
    {
      if (v13 >= *(v11 + 2))
      {
        goto LABEL_273;
      }

      v15 = *(v255 + v5);
      if (!*(v15 + 16))
      {
        goto LABEL_8;
      }

      v16 = &v14[16 * v13];
      v18 = *v16;
      v17 = v16[1];

      v19 = sub_252A44A10(v18, v17);
      if (v20)
      {
        break;
      }

      v11 = v253;
LABEL_8:
      if (++v13 == v12)
      {
        goto LABEL_34;
      }
    }

    v21 = *(*(v15 + 56) + 8 * v19);

    v262[0] = 0;
    v262[1] = 0xE000000000000000;
    sub_252E379F4();

    strcpy(v262, "matterNodeID(");
    HIWORD(v262[1]) = -4864;
    MEMORY[0x2530AD570](v18, v17);

    MEMORY[0x2530AD570](670249, 0xE300000000000000);
    MEMORY[0x2530AD570](v262[0], v262[1]);

    if (v21 >> 62)
    {
      v33 = sub_252E378C4();
      if (v33)
      {
        v34 = v33;
        v22 = sub_252E11384(v33, 0);

        sub_252E06784((v22 + 32), v34, v21);
        v36 = v35;

        if (v36 != v34)
        {
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          v217 = v10;
          goto LABEL_289;
        }
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v22 = (v21 & 0xFFFFFFFFFFFFFF8);
    }

    v262[0] = v22;
    sub_252AC8638(v262, sub_252935460, type metadata accessor for HomeAttributeTargetMap);

    v23 = v262[0];
    if ((v262[0] & 0x8000000000000000) != 0 || (v262[0] & 0x4000000000000000) != 0)
    {
      v24 = sub_252E378C4();
      if (v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = *(v262[0] + 2);
      if (v24)
      {
LABEL_17:
        if (v24 < 1)
        {
          goto LABEL_277;
        }

        v25 = 0;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x2530ADF00](v25, v23);
          }

          else
          {
            v30 = *(v23 + 8 * v25 + 32);
          }

          v31 = v30;
          v262[0] = 0;
          v262[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000011, v260 | 0x8000000000000000);
          [v31 mapID];
          sub_252E37374();
          MEMORY[0x2530AD570](0xD000000000000012, v259 | 0x8000000000000000);
          v32 = [v31 name];
          if (v32)
          {
            v26 = v32;
            v27 = sub_252E36F34();
            v29 = v28;
          }

          else
          {
            v29 = 0xE300000000000000;
            v27 = 7104878;
          }

          ++v25;
          MEMORY[0x2530AD570](v27, v29);

          MEMORY[0x2530AD570](2601, 0xE200000000000000);
          MEMORY[0x2530AD570](v262[0], v262[1]);
        }

        while (v24 != v25);

        v11 = v253;
        v5 = v257;
        v12 = v256;
        goto LABEL_32;
      }
    }

    v11 = v253;
LABEL_32:
    v14 = v258;
    goto LABEL_8;
  }

LABEL_34:
  v37 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedTargetAreas;
  v38 = v255;
  swift_beginAccess();
  v39 = *(v38 + v37);
  v40 = *(v39 + 16);
  v249 = v37;
  if (v40)
  {
    v41 = sub_252DFA3E0(v40, 0);
    v42 = sub_252E11360(v262, v41 + 32, v40, v39);
    swift_bridgeObjectRetain_n();
    sub_25291AE30();
    if (v42 != v40)
    {
      goto LABEL_285;
    }

    v37 = v249;
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v262[0] = v41;
  sub_252AC841C(v262);

  v43 = v262[0];
  v44 = *(v262[0] + 2);
  v251 = v262[0];
  v252 = 0;
  if (v44)
  {
    v45 = 0;
    v46 = v262[0] + 32;
    v258 = 0x8000000252E78630;
    v257 = "\ttargetArea.name(";
    v256 = ", targetArea.mapID(";
    v248 = v44;
    v250 = v262[0] + 32;
    while (1)
    {
      if (v45 >= *(v43 + 2))
      {
        goto LABEL_274;
      }

      v47 = *(v255 + v37);
      if (!*(v47 + 16))
      {
        goto LABEL_42;
      }

      v254 = v45;
      v48 = &v46[16 * v45];
      v50 = *v48;
      v49 = v48[1];

      v51 = sub_252A44A10(v50, v49);
      if (v52)
      {
        break;
      }

      v43 = v251;
LABEL_41:
      v45 = v254;
LABEL_42:
      if (++v45 == v44)
      {
        goto LABEL_69;
      }
    }

    v53 = *(*(v47 + 56) + 8 * v51);

    v262[0] = 0;
    v262[1] = 0xE000000000000000;
    sub_252E379F4();

    strcpy(v262, "matterNodeID(");
    HIWORD(v262[1]) = -4864;
    MEMORY[0x2530AD570](v50, v49);

    MEMORY[0x2530AD570](670249, 0xE300000000000000);
    MEMORY[0x2530AD570](v262[0], v262[1]);

    if (v53 >> 62)
    {
      v66 = sub_252E378C4();
      if (v66)
      {
        v67 = v66;
        v54 = sub_252E11384(v66, 0);

        sub_252E06914((v54 + 32), v67, v53);
        v69 = v68;

        if (v69 != v67)
        {
          goto LABEL_287;
        }
      }

      else
      {
        v54 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v54 = (v53 & 0xFFFFFFFFFFFFFF8);
    }

    v262[0] = v54;
    v10 = v252;
    sub_252AC8638(v262, sub_252935460, type metadata accessor for HomeAttributeTargetArea);
    v55 = &v265;
    v252 = v10;
    if (v10)
    {
      goto LABEL_293;
    }

    v56 = v262[0];
    if ((v262[0] & 0x8000000000000000) != 0 || (v262[0] & 0x4000000000000000) != 0)
    {
      v57 = sub_252E378C4();
      if (v57)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v57 = *(v262[0] + 2);
      if (v57)
      {
LABEL_52:
        if (v57 < 1)
        {
          goto LABEL_278;
        }

        v58 = 0;
        v259 = v56 & 0xC000000000000001;
        v260 = v57;
        do
        {
          if (v259)
          {
            v63 = MEMORY[0x2530ADF00](v58, v56);
          }

          else
          {
            v63 = *(v56 + 8 * v58 + 32);
          }

          v64 = v63;
          v262[0] = 0xD000000000000011;
          v262[1] = v258;
          v65 = [v63 name];
          if (v65)
          {
            v59 = v65;
            v60 = sub_252E36F34();
            v62 = v61;
          }

          else
          {
            v62 = 0xE300000000000000;
            v60 = 7104878;
          }

          ++v58;
          MEMORY[0x2530AD570](v60, v62);

          MEMORY[0x2530AD570](41, 0xE100000000000000);
          MEMORY[0x2530AD570](v262[0], v262[1]);

          v10 = 0xE000000000000000;
          v262[0] = 0;
          v262[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000013, v257 | 0x8000000000000000);
          [v64 mapID];
          sub_252E37374();
          MEMORY[0x2530AD570](41, 0xE100000000000000);
          MEMORY[0x2530AD570](v262[0], v262[1]);

          v262[0] = 0;
          v262[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000014, v256 | 0x8000000000000000);
          [v64 areaID];
          sub_252E37374();
          MEMORY[0x2530AD570](2601, 0xE200000000000000);
          MEMORY[0x2530AD570](v262[0], v262[1]);
        }

        while (v260 != v58);

        v43 = v251;
        v37 = v249;
        v44 = v248;
        goto LABEL_67;
      }
    }

    v43 = v251;
LABEL_67:
    v46 = v250;
    goto LABEL_41;
  }

LABEL_69:
  v70 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_supportedAttributes;
  v71 = v255;
  swift_beginAccess();
  v243 = v70;
  v72 = *(v71 + v70);
  v73 = *(v72 + 16);
  if (!v73)
  {
    goto LABEL_72;
  }

  v74 = sub_252DFA3E0(*(v72 + 16), 0);
  v75 = sub_252E11360(v262, v74 + 32, v73, v72);
  swift_bridgeObjectRetain_n();
  sub_25291AE30();
  if (v75 != v73)
  {
    __break(1u);
LABEL_72:

    v74 = MEMORY[0x277D84F90];
  }

  v262[0] = v74;
  v10 = v252;
  sub_252AC841C(v262);
  if (v10)
  {
    goto LABEL_288;
  }

  v76 = v262[0];
  v240 = *(v262[0] + 2);
  if (!v240)
  {
LABEL_262:

    if (qword_27F53F560 != -1)
    {
      goto LABEL_286;
    }

    goto LABEL_263;
  }

  v77 = 0;
  v231 = v262[0] + 32;
  v239 = "Pre-hashed string:\n";
  v238 = "\t\tsupportedUnknownValue\n";
  v237 = "for accessoryID ";
  v229 = "\t\tsupportedRangeValue(empty))\n";
  v228 = "RVC special case handled above";
  v236 = "\t\tsupportedRangeValue(";
  v235 = 0x8000000252E78580;
  v234 = 0x8000000252E785A0;
  v233 = "\t\tsupportedStringValue(";
  v232 = 0x8000000252E785E0;
  v221 = 0x8000000252E67470;
  v220 = 0x8000000252E644C0;
  v219 = 0x8000000252E644A0;
  v218 = 0x8000000252E64480;
  v242 = "\t\tsupportedBooleanValue(";
  v230 = v262[0];
  while (1)
  {
    if (v77 >= *(v76 + 2))
    {
      goto LABEL_276;
    }

    v78 = *(v255 + v243);
    if (!*(v78 + 16))
    {
      goto LABEL_78;
    }

    v241 = v77;
    v79 = &v231[16 * v77];
    v80 = *v79;
    v81 = v79[1];

    v82 = sub_252A44A10(v80, v81);
    if (v83)
    {
      break;
    }

LABEL_77:

    v76 = v230;
    v77 = v241;
LABEL_78:
    if (++v77 == v240)
    {
      goto LABEL_262;
    }
  }

  v84 = *(*(v78 + 56) + 8 * v82);

  v262[0] = 0;
  v262[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v262, "matterNodeID(");
  HIWORD(v262[1]) = -4864;
  MEMORY[0x2530AD570](v80, v81);
  MEMORY[0x2530AD570](670249, 0xE300000000000000);
  MEMORY[0x2530AD570](v262[0], v262[1]);

  v85 = *(v84 + 16);
  v245 = v81;
  v244 = v84;
  if (v85)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
    v86 = swift_allocObject();
    v87 = _swift_stdlib_malloc_size(v86);
    v88 = v87 - 32;
    if (v87 < 32)
    {
      v88 = v87 - 25;
    }

    v86[2] = v85;
    v86[3] = 2 * (v88 >> 3);
    v89 = sub_252E08AE0(v262, v86 + 4, v85, v84);
    swift_bridgeObjectRetain_n();
    sub_25291AE30();
    if (v89 != v85)
    {
      goto LABEL_283;
    }

    v84 = v244;
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  v262[0] = v86;
  sub_252AC8504(v262);

  v90 = v262[0];
  v256 = *(v262[0] + 2);
  if (!v256)
  {
LABEL_261:

    goto LABEL_77;
  }

  v91 = 0;
  v254 = v262[0] + 32;
  v252 = v262[0];
  while (1)
  {
    if (v91 >= *(v90 + 2))
    {
      goto LABEL_275;
    }

    v257 = v91;
    v92 = *&v254[8 * v91];
    v262[0] = 0x7562697274746109;
    v262[1] = 0xEF28657079546574;
    v93 = HomeAttributeType.description.getter(v92);
    MEMORY[0x2530AD570](v93);

    MEMORY[0x2530AD570](2601, 0xE200000000000000);
    MEMORY[0x2530AD570](v262[0], v262[1]);

    if (*(v84 + 16))
    {
      break;
    }

LABEL_91:
    v91 = v257 + 1;
    if ((v257 + 1) == v256)
    {
      goto LABEL_261;
    }
  }

  v94 = sub_252A488EC(67);
  if ((v95 & 1) == 0)
  {
    if (!*(v84 + 16))
    {
      goto LABEL_91;
    }

    v113 = sub_252A488EC(v92);
    if ((v114 & 1) == 0)
    {
      goto LABEL_91;
    }

    v115 = *(*(v84 + 56) + 8 * v113);
    swift_bridgeObjectRetain_n();
    v262[0] = sub_252ACB5E0(v115, sub_252E11384, sub_252E07DD4);
    sub_252AC8488(v262);
    v116 = v262[0];
    v117 = &off_279711000;
    v259 = v115;
    if ((v262[0] & 0x8000000000000000) == 0 && (v262[0] & 0x4000000000000000) == 0)
    {
      v118 = *(v262[0] + 2);
      if (v118)
      {
        goto LABEL_137;
      }

      goto LABEL_90;
    }

    v118 = sub_252E378C4();
    if (!v118)
    {
LABEL_90:

      v84 = v244;
      goto LABEL_91;
    }

LABEL_137:
    v119 = 0;
    v260 = v116 & 0xC000000000000001;
    while (1)
    {
      if (v260)
      {
        v120 = MEMORY[0x2530ADF00](v119, v116);
      }

      else
      {
        if (v119 >= *(v116 + 16))
        {
          goto LABEL_272;
        }

        v120 = *(v116 + 8 * v119 + 32);
      }

      v121 = v120;
      v122 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_271;
      }

      v123 = [v120 v117[222]];
      if (v123 <= 3)
      {
        break;
      }

      if (v123 <= 5)
      {
        if (v123 == 4)
        {
          v262[0] = 0;
          v262[1] = 0xE000000000000000;
          sub_252E379F4();

          v262[0] = 0xD000000000000018;
          v262[1] = v235;
          v261 = [v121 integerValue];
          v124 = sub_252E37D94();
          goto LABEL_167;
        }

        v262[0] = 0;
        v262[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000016, v236 | 0x8000000000000000);
        v261 = [v121 limitValue];
        sub_252E37AE4();
LABEL_139:
        MEMORY[0x2530AD570](2601, 0xE200000000000000);
        MEMORY[0x2530AD570](v262[0], v262[1]);

        goto LABEL_140;
      }

      if (v123 == 6)
      {
        v131 = [v121 rangeValue];
        if (v131)
        {
          v132 = v131;
          [v131 upperValue];
          [v132 lowerValue];
          v262[0] = 0;
          v262[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000016, v229 | 0x8000000000000000);
          sub_252E37374();
          MEMORY[0x2530AD570](44, 0xE100000000000000);
          v90 = v252;
          sub_252E37374();
          MEMORY[0x2530AD570](10, 0xE100000000000000);
          MEMORY[0x2530AD570](v262[0], v262[1]);
        }

        else
        {
          MEMORY[0x2530AD570](0xD00000000000001ELL, v228 | 0x8000000000000000);
        }

        v117 = &off_279711000;
      }

      else
      {
        if (v123 != 8)
        {
          while (1)
          {
LABEL_290:
            v262[0] = v123;
LABEL_292:
            sub_252E37DF4();
            __break(1u);
LABEL_293:
            v217 = *(v55 - 32);
LABEL_289:

            __break(1u);
          }
        }

        if (qword_27F53F560 != -1)
        {
          swift_once();
        }

        v136 = sub_252E36AD4();
        __swift_project_value_buffer(v136, qword_27F544EC8);
        sub_252CC3D90(0xD00000000000001ELL, v238 | 0x8000000000000000, 0xD00000000000007CLL, v237 | 0x8000000000000000);
      }

LABEL_140:

      ++v119;
      if (v122 == v118)
      {
        goto LABEL_90;
      }
    }

    if (v123 > 1)
    {
      if (v123 != 2)
      {
        v262[0] = 0;
        v262[1] = 0xE000000000000000;
        sub_252E379F4();

        v262[0] = 0xD000000000000017;
        v262[1] = v234;
        v126 = [v121 stringValue];
        if (v126)
        {
          v127 = v126;
          v128 = sub_252E36F34();
          v130 = v129;
        }

        else
        {
          v130 = 0xE300000000000000;
          v128 = 7104878;
        }

        MEMORY[0x2530AD570](v128, v130);

        MEMORY[0x2530AD570](2601, 0xE200000000000000);
        MEMORY[0x2530AD570](v262[0], v262[1]);

        v117 = &off_279711000;
        v90 = v252;
        goto LABEL_140;
      }

      v262[0] = 0;
      v262[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000017, v233 | 0x8000000000000000);
      [v121 doubleValue];
      sub_252E37374();
    }

    else
    {
      if (!v123)
      {
        MEMORY[0x2530AD570](0xD000000000000018, v239 | 0x8000000000000000);
        goto LABEL_140;
      }

      if (v123 != 1)
      {
        goto LABEL_290;
      }

      v262[0] = 0;
      v262[1] = 0xE000000000000000;
      sub_252E379F4();

      v262[0] = 0xD000000000000018;
      v262[1] = v232;
      v133 = [v121 BOOLValue];
      v134 = v133 == 0;
      if (v133)
      {
        v124 = 1702195828;
      }

      else
      {
        v124 = 0x65736C6166;
      }

      if (v134)
      {
        v135 = 0xE500000000000000;
      }

      else
      {
        v135 = 0xE400000000000000;
      }

      v125 = v135;
LABEL_167:
      MEMORY[0x2530AD570](v124, v125);
    }

    goto LABEL_139;
  }

  v96 = *(*(v84 + 56) + 8 * v94);
  if (v96 >> 62)
  {
    if (v96 < 0)
    {
      v205 = *(*(v84 + 56) + 8 * v94);
    }

    v97 = sub_252E378C4();
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = &off_279711000;
  v260 = v96 & 0xC000000000000001;

  if (v97)
  {
    v100 = 0;
    v259 = MEMORY[0x277D84F90];
LABEL_99:
    v101 = v100;
    while (1)
    {
      if (v260)
      {
        v102 = MEMORY[0x2530ADF00](v101, v96);
      }

      else
      {
        if (v101 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_265;
        }

        v102 = *(v96 + 8 * v101 + 32);
      }

      v103 = v102;
      v100 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      v104 = [v102 v98[207]];
      if (v104)
      {
        v105 = v104;
        v106 = [v104 runState];

        v107 = 0xE700000000000000;
        v108 = 0x646570706F7473;
        switch(v106)
        {
          case 0uLL:
            v108 = 0x6E776F6E6B6E75;
            goto LABEL_126;
          case 1uLL:
            goto LABEL_126;
          case 2uLL:
            v108 = 0x676E696E6E7572;
            goto LABEL_126;
          case 3uLL:
            v107 = 0xE600000000000000;
            v108 = 0x646573756170;
            goto LABEL_126;
          case 4uLL:
            v108 = 0x43676E696B656573;
            v107 = 0xEE00726567726168;
            goto LABEL_126;
          case 5uLL:
            v107 = 0xE800000000000000;
            v108 = 0x676E696772616863;
            goto LABEL_126;
          case 6uLL:
            v107 = 0xE600000000000000;
            v108 = 0x64656B636F64;
            goto LABEL_126;
          case 7uLL:
            v107 = 0xE500000000000000;
            v108 = 0x726F727265;
            goto LABEL_126;
          case 8uLL:
            v107 = 0xE500000000000000;
            v108 = 0x6B63757473;
            goto LABEL_126;
          case 9uLL:
            v107 = 0xEA00000000007972;
            v108 = 0x6574746142776F6CLL;
            goto LABEL_126;
          case 0xAuLL:
            v108 = 0x4D6E694274737564;
            v107 = 0xEE00676E69737369;
            goto LABEL_126;
          case 0xBuLL:
            v108 = 0x466E694274737564;
            v107 = 0xEB000000006C6C75;
            goto LABEL_126;
          case 0xCuLL:
            v108 = 0xD000000000000010;
            v107 = v218;
            goto LABEL_126;
          case 0xDuLL:
            v108 = 0x6E61547265746177;
            v107 = 0xEE007974706D456BLL;
            goto LABEL_126;
          case 0xEuLL:
            v108 = 0xD000000000000010;
            v107 = v219;
            goto LABEL_126;
          case 0xFuLL:
            v108 = 0xD000000000000015;
            v107 = v220;
            goto LABEL_126;
          case 0x10uLL:
            v108 = 0xD000000000000016;
            v107 = v221;
            goto LABEL_126;
          case 0x11uLL:
            v108 = 0x64656D75736572;
LABEL_126:

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v259 + 16) + 1, 1, v259);
              v259 = isUniquelyReferenced_nonNull_native;
            }

            v110 = *(v259 + 16);
            v109 = *(v259 + 24);
            if (v110 >= v109 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_2529F7A80((v109 > 1), v110 + 1, 1, v259);
              v259 = isUniquelyReferenced_nonNull_native;
            }

            v111 = v259;
            *(v259 + 16) = v110 + 1;
            v112 = v111 + 16 * v110;
            *(v112 + 32) = v108;
            *(v112 + 40) = v107;
            v98 = &off_279711000;
            if (v100 == v97)
            {
              goto LABEL_178;
            }

            goto LABEL_99;
          default:
            v262[0] = v106;
            goto LABEL_292;
        }
      }

      ++v101;
      if (v100 == v97)
      {
        goto LABEL_178;
      }
    }

    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  v259 = MEMORY[0x277D84F90];
LABEL_178:
  v258 = v97;
  v249 = v96 & 0xFFFFFFFFFFFFFF8;
  v250 = v96;
  v137 = *(v259 + 16);
  if (v137)
  {
    v138 = 0;
    v139 = (v259 + 40);
    v247 = v137 - 1;
    v140 = MEMORY[0x277D84F90];
    v248 = (v259 + 40);
    do
    {
      v141 = &v139[16 * v138];
      v142 = v138;
      while (1)
      {
        if (v142 >= *(v259 + 16))
        {
          goto LABEL_266;
        }

        v143 = *(v141 - 1);
        v144 = *v141;
        v138 = v142 + 1;
        v262[0] = v143;
        v262[1] = v144;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v218 - 2) = v262;

        if ((sub_2529ED970(sub_25296A69C, (&v218 - 4), v140) & 1) == 0)
        {
          break;
        }

        v141 += 2;
        ++v142;
        if (v137 == v138)
        {
          goto LABEL_192;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v140 + 16) + 1, 1, v140);
        v140 = isUniquelyReferenced_nonNull_native;
      }

      v146 = *(v140 + 16);
      v145 = *(v140 + 24);
      if (v146 >= v145 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F7A80((v145 > 1), v146 + 1, 1, v140);
        v140 = isUniquelyReferenced_nonNull_native;
      }

      *(v140 + 16) = v146 + 1;
      v147 = v140 + 16 * v146;
      *(v147 + 32) = v143;
      *(v147 + 40) = v144;
      v139 = v248;
    }

    while (v247 != v142);
  }

  else
  {
    v140 = MEMORY[0x277D84F90];
  }

LABEL_192:

  v262[0] = v140;

  sub_252AC841C(v262);

  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  v149 = sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
  v247 = v148;
  v246 = v149;
  v248 = sub_252E36EA4();
  v259 = v150;

  v151 = v250;
  v152 = v249;
  if (v258)
  {
    v153 = 0;
    v154 = MEMORY[0x277D84F90];
    do
    {
      v155 = v153;
      while (1)
      {
        if (v260)
        {
          v156 = MEMORY[0x2530ADF00](v155, v151);
        }

        else
        {
          if (v155 >= *(v152 + 16))
          {
            goto LABEL_268;
          }

          v156 = *&v151[8 * v155 + 32];
        }

        v157 = v156;
        v153 = v155 + 1;
        if (__OFADD__(v155, 1))
        {
          goto LABEL_267;
        }

        v158 = [v156 cleaningJob];
        if (v158)
        {
          break;
        }

        ++v155;
        if (v153 == v258)
        {
          goto LABEL_210;
        }
      }

      v159 = v158;
      v160 = [v158 cleanModes];

      v161 = sub_252E37264();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = sub_2529F8DD4(0, v154[2] + 1, 1, v154);
      }

      v163 = v154[2];
      v162 = v154[3];
      if (v163 >= v162 >> 1)
      {
        v154 = sub_2529F8DD4((v162 > 1), v163 + 1, 1, v154);
      }

      v154[2] = v163 + 1;
      v154[v163 + 4] = v161;
    }

    while (v153 != v258);
  }

  else
  {
    v154 = MEMORY[0x277D84F90];
  }

LABEL_210:

  v164 = v154[2];
  if (!v164)
  {
    v165 = MEMORY[0x277D84F90];
LABEL_232:

    v180 = *(v165 + 2);
    if (v180)
    {
      v181 = (v165 + 32);
      v182 = MEMORY[0x277D84F90];
      do
      {
        v183 = *v181++;
        v262[0] = v183;
        v184 = sub_252E37D94();
        v186 = v185;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = sub_2529F7A80(0, *(v182 + 2) + 1, 1, v182);
        }

        v188 = *(v182 + 2);
        v187 = *(v182 + 3);
        if (v188 >= v187 >> 1)
        {
          v182 = sub_2529F7A80((v187 > 1), v188 + 1, 1, v182);
        }

        *(v182 + 2) = v188 + 1;
        v189 = &v182[16 * v188];
        *(v189 + 4) = v184;
        *(v189 + 5) = v186;
        --v180;
      }

      while (v180);
    }

    else
    {
      v182 = MEMORY[0x277D84F90];
    }

    v191 = *(v182 + 2);
    if (v191)
    {
      v192 = 0;
      v193 = v182 + 40;
      v260 = *(v182 + 2);
      v250 = (v191 - 1);
      v194 = MEMORY[0x277D84F90];
      v258 = v182 + 40;
      do
      {
        v195 = &v193[16 * v192];
        v196 = v192;
        while (1)
        {
          if (v196 >= *(v182 + 2))
          {
            goto LABEL_270;
          }

          v198 = *(v195 - 1);
          v197 = *v195;
          v192 = v196 + 1;
          v262[0] = v198;
          v262[1] = v197;
          MEMORY[0x28223BE20](v190);
          *(&v218 - 2) = v262;

          if ((sub_2529ED970(sub_25296A724, (&v218 - 4), v194) & 1) == 0)
          {
            break;
          }

          v195 += 2;
          ++v196;
          if (v260 == v192)
          {
            goto LABEL_255;
          }
        }

        v190 = swift_isUniquelyReferenced_nonNull_native();
        if ((v190 & 1) == 0)
        {
          v190 = sub_2529F7A80(0, *(v194 + 16) + 1, 1, v194);
          v194 = v190;
        }

        v200 = *(v194 + 16);
        v199 = *(v194 + 24);
        if (v200 >= v199 >> 1)
        {
          v190 = sub_2529F7A80((v199 > 1), v200 + 1, 1, v194);
          v194 = v190;
        }

        *(v194 + 16) = v200 + 1;
        v201 = v194 + 16 * v200;
        *(v201 + 32) = v198;
        *(v201 + 40) = v197;
        v193 = v258;
      }

      while (v250 != v196);
    }

    else
    {
      v194 = MEMORY[0x277D84F90];
    }

LABEL_255:

    v262[0] = v194;

    sub_252AC841C(v262);

    v202 = sub_252E36EA4();
    v204 = v203;

    v262[0] = 0;
    v262[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000026, v242 | 0x8000000000000000);
    MEMORY[0x2530AD570](v248, v259);

    MEMORY[0x2530AD570](0x4D6E61656C632C29, 0xED0000287365646FLL);
    MEMORY[0x2530AD570](v202, v204);

    MEMORY[0x2530AD570](665897, 0xE300000000000000);
    MEMORY[0x2530AD570](v262[0], v262[1]);

    v84 = v244;
    v90 = v252;
    goto LABEL_91;
  }

  v260 = (v154 + 4);
  v258 = v164 - 1;
  v165 = MEMORY[0x277D84F90];
  v166 = 0;
  while (v166 < v154[2])
  {
    v167 = v154;
    v168 = *(v260 + 8 * v166);
    v169 = v166 + 1;
    v262[0] = v165;
    v261 = v168;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
    sub_2529E6488(&qword_27F542D90, &qword_27F5416D8, &qword_252E40998);
    if (sub_252E37414())
    {

      ++v166;
      if (v164 == v169)
      {
        goto LABEL_232;
      }
    }

    else
    {
      v170 = v168[2];
      v171 = *(v165 + 2);
      v172 = v171 + v170;
      if (__OFADD__(v171, v170))
      {
        goto LABEL_279;
      }

      v173 = v168[2];
      v174 = swift_isUniquelyReferenced_nonNull_native();
      if (!v174 || v172 > *(v165 + 3) >> 1)
      {
        if (v171 <= v172)
        {
          v175 = v172;
        }

        else
        {
          v175 = v171;
        }

        v165 = sub_2529F8104(v174, v175, 1, v165);
      }

      v154 = v167;
      if (v168[2])
      {
        v176 = *(v165 + 2);
        if ((*(v165 + 3) >> 1) - v176 < v173)
        {
          goto LABEL_281;
        }

        memcpy(&v165[8 * v176 + 32], v168 + 4, 8 * v173);

        if (v173)
        {
          v177 = *(v165 + 2);
          v178 = __OFADD__(v177, v173);
          v179 = v177 + v173;
          if (v178)
          {
            goto LABEL_282;
          }

          *(v165 + 2) = v179;
        }
      }

      else
      {

        if (v173)
        {
          goto LABEL_280;
        }
      }

      if (v258 == v166)
      {
        goto LABEL_232;
      }

      ++v166;
    }
  }

LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  __break(1u);
LABEL_275:
  __break(1u);
LABEL_276:
  __break(1u);
LABEL_277:
  __break(1u);
LABEL_278:
  __break(1u);
LABEL_279:
  __break(1u);
LABEL_280:
  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  swift_once();
LABEL_263:
  v206 = sub_252E36AD4();
  __swift_project_value_buffer(v206, qword_27F544EC8);
  v262[0] = 0;
  v262[1] = 0xE000000000000000;
  sub_252E379F4();

  v262[0] = 0xD000000000000013;
  v262[1] = 0x8000000252E784C0;
  v208 = v263;
  v207 = v264;
  MEMORY[0x2530AD570](v263, v264);
  sub_252CC3D90(v262[0], v262[1], 0xD00000000000007CLL, 0x8000000252E6B890);

  v209 = sub_252ABF638(v208, v207);
  v211 = v210;
  sub_252ACBE88(&qword_27F5412F8, MEMORY[0x277CC5588]);
  v212 = v222;
  v213 = v224;
  sub_252E36DE4();
  sub_2529E61B0(v209, v211);
  sub_252D7BB0C(v209, v211);
  sub_25296464C(v209, v211);
  v214 = v225;
  sub_252E36DD4();
  (*(v223 + 8))(v212, v213);
  v262[0] = sub_252ABFB58(v214);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
  v215 = sub_252E36EA4();
  sub_25296464C(v209, v211);

  (*(v226 + 8))(v214, v227);

  return v215;
}

id MatterAccessoryManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_252AC841C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2529346C8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_252AC86CC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_252AC8488(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_252935460(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_252AC87C4(v6);
  return sub_252E37AA4();
}

uint64_t sub_252AC8504(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_252934780(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_252E37D74();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_252E372B4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_252AC98DC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_252AC8638(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_252AC88C8(v10, a3);
  return sub_252E37AA4();
}

uint64_t sub_252AC86CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_252E372B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_252AC8C98(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_252AC89D4(0, v2, 1, a1);
  }

  return result;
}

void sub_252AC87C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_252E37D74();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for HomeAttributeValue();
        v6 = sub_252E372B4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_252AC9274(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_252AC8AA4(0, v2, 1, a1);
  }
}

void sub_252AC88C8(uint64_t *a1, void (*a2)(void))
{
  v4 = a1[1];
  v5 = sub_252E37D74();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v8 = sub_252E372B4();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_252AC9E28(v10, v11, a1, v6);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_252AC8B9C(0, v4, 1, a1);
  }
}

uint64_t sub_252AC89D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_252E37DB4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_252AC8AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 type];
      v13 = [v11 type];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_252AC8B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 mapID];
      v15 = v14;
      [v13 mapID];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_252AC8C98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_252934564(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_252ACA4A0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_252E37DB4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_252E37DB4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_252934578((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_252ACA4A0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2529344D8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_252E37DB4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

void sub_252AC9274(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_252934564(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_252ACA6C8((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_252934564(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_2529344D8(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 type];
      v104 = [v14 type];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 type];
        v7 = [v18 type];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_252934578((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_252ACA6C8((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_2529344D8(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 type];
    v41 = [v39 type];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_252AC98DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_252934564(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_252ACA9AC((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_252934578((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_252ACA9AC((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

void sub_252AC9E28(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_252934564(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_252ACABA0((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_2529344D8(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 mapID];
      v19 = v18;
      [v17 mapID];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 mapID];
        v27 = v26;
        [v25 mapID];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_252934578((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_252ACABA0((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_2529344D8(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 mapID];
    v48 = v47;
    [v46 mapID];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_252ACA4A0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_252E37DB4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_252E37DB4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_252ACA6C8(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 type];
          v35 = [v33 type];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 type];
          v20 = [v18 type];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_252ACA9AC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_252ACABA0(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 mapID];
        v35 = v34;
        [v33 mapID];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 mapID];
        v19 = v18;
        [v17 mapID];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}