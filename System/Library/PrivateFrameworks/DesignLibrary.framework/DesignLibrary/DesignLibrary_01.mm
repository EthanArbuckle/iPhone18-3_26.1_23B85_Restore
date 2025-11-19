uint64_t sub_18AE8DFB8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v2 = *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32);
  if (!v2 || *(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44))
  {
    return 0;
  }

  v4 = *(a1 + 84);
  v5 = *(a1 + 104);
  v6 = *(a2 + 84);
  v7 = *(a2 + 104);
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (*(a2 + 64))
    {
      goto LABEL_29;
    }

    v8 = a2;
    v9 = a1;
    v10 = sub_18AFCCE14();
    a2 = v8;
    v11 = v10;
    a1 = v9;
    if ((v11 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v6)
    {
      goto LABEL_29;
    }

    v12 = a2;
    v13 = a1;
    v14 = sub_18AFCCE14();
    a2 = v12;
    v15 = v14;
    a1 = v13;
    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (v5)
  {
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    v20 = 0;
    return v20 & 1;
  }

  if (v7)
  {
    goto LABEL_29;
  }

  v16 = a2;
  v17 = a1;
  v18 = sub_18AFCCE14();
  a2 = v16;
  v19 = v18;
  a1 = v17;
  if ((v19 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_28:
  v20 = *(a1 + 105) ^ *(a2 + 105) ^ 1;
  return v20 & 1;
}

unint64_t sub_18AE8E22C@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result >> 62;
  if ((result >> 62) > 1)
  {
    if (v2 == 2)
    {
LABEL_6:
      v3 = 0;
    }

    else
    {
      v3 = 2;
      switch(__ROR8__(result + 0x4000000000000000, 3))
      {
        case 1:
        case 5:
        case 6:
        case 8:
        case 9:
        case 0xALL:
        case 0xCLL:
        case 0xDLL:
        case 0xELL:
        case 0xFLL:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
          if (qword_1ED56AA58 != -1)
          {
            v4 = a2;
            result = swift_once();
            a2 = v4;
          }

          v3 = qword_1ED56C8D8;
          break;
        case 2:
        case 4:
        case 7:
          break;
        case 3:
        case 0xBLL:
          goto LABEL_6;
        default:
          if (qword_1ED56AA58 != -1)
          {
            v5 = a2;
            result = swift_once();
            a2 = v5;
          }

          v3 = qword_1ED56C8D8 | 0x4000;
          break;
      }
    }
  }

  else if (v2)
  {
    v3 = 4097;
  }

  else
  {
    v3 = 2;
  }

  *a2 = v3;
  return result;
}

uint64_t GlassMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v229 = _s17ResolvedCompositeV3KeyVMa();
  MEMORY[0x1EEE9AC00](v229);
  v239 = (&v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v244 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v244);
  v240 = &v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for GlassMaterialProvider.Resolved(0);
  MEMORY[0x1EEE9AC00](v231);
  v230 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v232 = &v194 - v7;
  v225 = sub_18AFCD424();
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v222 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v223 = &v194 - v10;
  v220 = sub_18AFCD2E4();
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v216 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v217 = &v194 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v218 = &v194 - v15;
  v215 = sub_18AFCC824();
  v214 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v213 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_18AFCC9A4();
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v212 = &v194 - v19;
  v235 = sub_18AFCC5C4();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v211 = &v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_18AFCBB34();
  v243 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v201 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v209 = &v194 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v208 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v194 - v28;
  v246 = _s11EnvironmentVMa();
  MEMORY[0x1EEE9AC00](v246);
  v242 = &v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v194 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v238 = &v194 - v35;
  v36 = sub_18AFCC474();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v200 = &v194 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v194 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v194 - v43;
  sub_18AFCDA44();
  sub_18AE8FD80(v44, v248);
  v45 = *(v37 + 8);
  v221 = v44;
  v227 = v36;
  v226 = v37 + 8;
  v233 = v45;
  v45(v44, v36);
  v249 = v248[0];
  v250 = v248[1];
  v251 = v248[2];
  v245 = v41;
  sub_18AFCDA44();
  v46 = v1 + *(v244 + 40);
  v236 = v29;
  sub_18AE83A40(v46, v29, &qword_1EA99B5F0);
  v207 = sub_18AF47DE4(*v1);
  v47 = *(v1 + 16);
  v48 = *(v1 + 24);
  v228 = v1;
  v49 = *(v1 + 32) == 1;
  v241 = a1;
  if (v49)
  {
    if (*&v47 > 1uLL)
    {
      v50 = v243;
      if (*&v47 ^ 2 | *&v48)
      {
        v205 = sub_18AFB0AE0();
        v204 = v55;
        v52 = v56 & 1;
        v54 = &v238;
        goto LABEL_14;
      }

      v206 = 0;
      v51 = 0;
      v52 = 0x406929999999999ALL;
    }

    else
    {
      v50 = v243;
      v206 = 0;
      v51 = 0;
      if (*&v47 | *&v48)
      {
        v52 = 0x4064C00000000000;
      }

      else
      {
        v52 = 0x4048000000000000;
      }
    }

    v205 = v52;
    v54 = &v236;
LABEL_14:
    *(v54 - 32) = v52;
    goto LABEL_15;
  }

  v206 = 0;
  v51 = 0;
  *&v53 = v47;
  if (v48 < v47)
  {
    *&v53 = v48;
  }

  v205 = v53;
  v204 = v53;
  v50 = v243;
LABEL_15:
  v203 = v51 & 1;
  v57 = v246;
  v58 = v246[5];
  v59 = *MEMORY[0x1E697DBB8];
  v60 = *(v50 + 104);
  v199 = v50 + 104;
  v198 = v60;
  v60((v33 + v58), v59, v21);
  v61 = v57[6];
  (*(v234 + 104))(v33 + v61, *MEMORY[0x1E697F600], v235);
  v62 = (v33 + v57[7]);
  *v62 = 0;
  *(v62 + 1) = 0;
  v62[16] = 1;
  v63 = v57[8];
  v64 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
  (*(*(v64 - 8) + 56))(v33 + v63, 1, 1, v64);
  v202 = v57[12];
  *(v33 + v202) = 0;
  v210 = v57[21];
  *(v33 + v210) = 0;
  sub_18AFCC244();
  *v33 = v65;
  v66 = v208;
  sub_18AE83A40(v236, v208, &qword_1EA99B5F0);
  v67 = v50;
  v68 = *(v50 + 48);
  if (v68(v66, 1, v21) == 1)
  {
    v69 = v209;
    sub_18AFCC204();
    if (v68(v66, 1, v21) != 1)
    {
      sub_18AE7BA80(v66, &qword_1EA99B5F0);
    }
  }

  else
  {
    v70 = *(v67 + 32);
    v69 = v209;
    v70(v209, v66, v21);
  }

  v237 = v21;
  v71 = (v33 + v246[10]);
  v72 = (v33 + v246[11]);
  (*(v243 + 40))(v33 + v58, v69, v21);
  v73 = v211;
  sub_18AFCC2F4();
  (*(v234 + 40))(v33 + v61, v73, v235);
  sub_18AFAB8BC();
  v74 = v212;
  sub_18AFCC484();
  sub_18AE90D7C(v74, v33 + v63);
  *v71 = 0;
  v75 = 1;
  v71[4] = 1;
  v76 = v206;
  *v72 = v205;
  *(v72 + 1) = v76;
  *(v72 + 2) = v204;
  *(v72 + 12) = v203;
  sub_18AE7A260();
  sub_18AFCC484();
  *(v33 + v202) = v248[0];
  if (v207)
  {
    sub_18AFCC974();
    v77 = v195;
    sub_18AFCC984();

    v78 = sub_18AFCC994();
    (*(v196 + 8))(v77, v197);
    v79 = sub_18AF76B64();
    v81 = v80;
    v83 = v82;
    v75 = v84;
  }

  else
  {
    v83 = 0;
    v79 = 0.0;
    v81 = 0;
  }

  v85 = (v33 + v246[9]);
  v86 = v246[13];
  v87 = v246[14];
  v89 = v246[15];
  v88 = v246[16];
  v90 = v246[17];
  v212 = v246[18];
  v91 = v246[20];
  v234 = v246[19];
  v235 = v91;
  *v85 = v79;
  *(v85 + 1) = v81;
  *(v85 + 2) = v83;
  v85[24] = v75 & 1;
  *(v33 + v86) = sub_18AFCC274() & 1;
  *(v33 + v87) = sub_18AFCC304() & 1;
  sub_18AFAB910();
  sub_18AFCC484();
  *(v33 + v89) = v248[0];
  v92 = v213;
  sub_18AFCC454();
  v93 = sub_18AFCC814();
  (*(v214 + 8))(v92, v215);
  v94 = *(v93 + 16);

  *(v33 + v88) = v94 != 0;
  *(v33 + v90) = sub_18AFCC354() & 1;
  *(v33 + v212) = sub_18AFCC334() & 1;
  *(v33 + v234) = sub_18AFCC344() & 1;
  *(v33 + v235) = sub_18AFCC424() & 1;
  v95 = v218;
  sub_18AFCC3D4();
  v96 = v219;
  v97 = v217;
  v98 = v220;
  (*(v219 + 16))(v217, v95, v220);
  v99 = v216;
  sub_18AFCD214();
  sub_18AFABD8C(&qword_1ED56A7A0, MEMORY[0x1E69818B0]);
  LOBYTE(v94) = sub_18AFCDDF4();
  v100 = *(v96 + 8);
  v100(v99, v98);
  if (v94)
  {
    v100(v97, v98);
    v100(v95, v98);
    v101 = 1;
  }

  else
  {
    sub_18AFCD234();
    v102 = sub_18AFCDDF4();
    v100(v99, v98);
    v100(v97, v98);
    v100(v95, v98);
    if (v102)
    {
      v101 = 2;
    }

    else
    {
      v101 = 0;
    }
  }

  v103 = v230;
  v104 = v225;
  v105 = v224;
  v106 = v223;
  *(v33 + v210) = v101;
  sub_18AFCC3E4();
  v107 = v222;
  sub_18AFCD414();
  sub_18AFABD8C(&qword_1EA99BC80, MEMORY[0x1E69818D0]);
  v108 = sub_18AFCDDF4();
  v109 = *(v105 + 8);
  v109(v107, v104);
  if ((v108 & 1) == 0)
  {
    sub_18AFCD404();
    v235 = v33;
    sub_18AFCDDF4();
    v33 = v235;
    v109(v107, v104);
  }

  v109(v106, v104);
  *(v33 + v246[23]) = v108 & 1;
  sub_18AFAB964();
  v110 = v245;
  sub_18AFCC484();
  v111 = *&v248[0];
  if (*&v248[0])
  {
    swift_getKeyPath();
    v247 = v111;
    sub_18AFABD8C(&qword_1ED56A728, _s6PocketV7StorageCMa);

    sub_18AFCB9B4();

    os_unfair_lock_lock((v111 + 16));
    v112 = *(v111 + 36);
    v113 = *(v111 + 40);
    os_unfair_lock_unlock((v111 + 16));

    sub_18AE7BA80(v236, &qword_1EA99B5F0);
    v114 = v227;
    v115 = v233;
    v233(v110, v227);

    v49 = v113 == 0;
    v116 = v115;
    v117 = 0x100000000;
    if (v49)
    {
      v117 = 0;
    }

    v118 = v117 | v112;
  }

  else
  {
    sub_18AE7BA80(v236, &qword_1EA99B5F0);
    v114 = v227;
    v116 = v233;
    v233(v110, v227);
    v118 = 0;
  }

  v119 = (v33 + v246[22]);
  v119[4] = BYTE4(v118);
  *v119 = v118;
  v119[5] = v111 == 0;
  v120 = v238;
  sub_18AE7C1C8(v33, v238, _s11EnvironmentVMa);
  v121 = v228;
  v122 = v240;
  sub_18AE7B03C(v228, v240, type metadata accessor for GlassMaterialProvider.Configuration);
  v123 = v242;
  sub_18AE7B03C(v120, v242, _s11EnvironmentVMa);
  sub_18AE90E8C(&v249, v248);
  v124 = v221;
  v125 = v241;
  sub_18AFCDA44();
  v126 = sub_18AFAA710();
  v127 = v116(v124, v114);
  MEMORY[0x1EEE9AC00](v127);
  *(&v194 - 2) = v125;
  v230 = sub_18AE7E670(sub_18AFAB9B8, (&v194 - 4), v126);

  v128 = v121 + *(v244 + 64);
  v129 = *(v128 + 16) | (*(v128 + 20) << 32);
  v130 = *(v128 + 20);
  v236 = v129;
  if (v130 > 0xFE)
  {
    v245 = 0;
    v235 = 0;
  }

  else
  {
    v132 = *v128;
    v131 = *(v128 + 8);
    v133 = v200;
    sub_18AFCDA44();
    if ((v129 & 0x100000000) != 0)
    {
      v136 = HIDWORD(v132);
      v139 = HIDWORD(v131);
    }

    else
    {
      sub_18AFCCDC4();
      LODWORD(v132) = v134;
      v136 = v135;
      LODWORD(v131) = v137;
      v139 = v138;
    }

    v233(v133, v114);
    v245 = (v132 | (v136 << 32));
    v235 = v131 | (v139 << 32);
    v123 = v242;
  }

  v140 = *v122;
  v141 = v249;
  v142 = DWORD2(v249);
  v143 = BYTE12(v249);
  *(v103 + 4) = *v122;
  *(v103 + 5) = v141;
  v103[52] = v143;
  *(v103 + 12) = v142;
  v144 = v246;
  v145 = v246[5];
  v146 = v243;
  v147 = v239;
  v148 = v239 + *(v229 + 20);
  v149 = v237;
  v233 = *(v243 + 16);
  (v233)(v148, v123 + v145, v237);
  v150 = v251;
  v147[1] = v250;
  v147[2] = v150;
  *v147 = v249;
  v151 = v123 + v144[10];
  v152 = *(v151 + 4);
  v234 = v145;
  if (v152)
  {
    v153 = v201;
    v198(v201, *MEMORY[0x1E697DBA8], v149);
    sub_18AE90E8C(&v249, v248);
    sub_18AE90E8C(&v249, v248);
    sub_18AE89F60(v140);
    sub_18AFABD8C(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
    v154 = sub_18AFCDDF4();
    (*(v146 + 8))(v153, v149);
    if (v154)
    {
      v155 = 0.0;
    }

    else
    {
      v155 = 1.0;
    }
  }

  else
  {
    v155 = *v151;
    sub_18AE90E8C(&v249, v248);
    sub_18AE90E8C(&v249, v248);
    sub_18AE89F60(v140);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BC90);
  v156 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BC98) - 8);
  v157 = (*(*v156 + 80) + 32) & ~*(*v156 + 80);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_18AFD8390;
  v159 = v158 + v157;
  v160 = v156[14];
  v161 = v239;
  sub_18AE7B03C(v239, v159, _s17ResolvedCompositeV3KeyVMa);
  *(v159 + v160) = 0x3FF0000000000000;
  v162 = sub_18AFABA58(v158);
  swift_setDeallocating();
  sub_18AE7BA80(v159, &qword_1EA99BC98);
  swift_deallocClassInstance();
  sub_18AFAC05C(v161, _s17ResolvedCompositeV3KeyVMa);
  *v103 = v162;
  *(v103 + 2) = v155;
  *(v103 + 11) = v230;
  v163 = v140 >> 62;
  v164 = v240;
  v165 = *(v240 + 9);
  if (!(v140 >> 62))
  {
    v170 = 0x100000000;
    if (!*(v140 + 20))
    {
      v170 = 0;
    }

    v167 = v170 | *(v140 + 16) | (v165 << 40);
    v166 = v242;
    goto LABEL_60;
  }

  v166 = v242;
  if (v163 == 3)
  {
    if (v140 == 0xC000000000000018 || v140 == 0xC000000000000020)
    {
      v167 = 0x200000000000;
      goto LABEL_60;
    }

    if (v140 == 0xC000000000000038)
    {
      v167 = 0x220000000000;
LABEL_60:
      *(v103 + 24) = v167;
      *(v103 + 50) = WORD2(v167);
      goto LABEL_61;
    }
  }

  *(v103 + 24) = 0;
  *(v103 + 50) = 7936;
  if (v163 == 1 && (*((v140 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 1) == 0)
  {
    *(v103 + 1) = *((v140 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v168 = v236;
    v169 = v233;
    goto LABEL_65;
  }

LABEL_61:
  sub_18AFCDCE4();
  *(v103 + 2) = v171;
  *(v103 + 3) = v172;
  v168 = v236;
  v169 = v233;
  if (v163 == 3)
  {
    if (v140 == 0xC000000000000018)
    {
      v173 = 0;
      v174 = 0;
      v175 = xmmword_18AFDFDF0;
      v176 = 0x4050000000000000;
      goto LABEL_71;
    }

    if (v140 == 0xC000000000000020)
    {
      v173 = 0;
      v174 = 0;
      v175 = xmmword_18AFDFE00;
      v176 = 0x4064800000000000;
      goto LABEL_71;
    }
  }

LABEL_65:
  if (v165 == 6)
  {
    v173 = 0;
    v174 = 0;
    v175 = xmmword_18AFDEFE0;
    v176 = 0x4020000000000000;
  }

  else if (v165 == 3)
  {
    v173 = 0;
    v174 = 0;
    v175 = xmmword_18AFDFE10;
    v176 = 0x4028000000000000;
  }

  else
  {
    v177 = v166 + v246[11];
    v175 = *v177;
    v176 = *(v177 + 16);
    v173 = *(v177 + 24);
    v174 = *(v177 + 25);
  }

LABEL_71:
  v178 = HIDWORD(v168) > 0xFE;
  v179 = v231;
  v180 = v231[12];
  v181 = v231[13];
  v182 = &v103[v231[15]];
  v183 = &v103[v231[17]];
  *(v103 + 56) = v175;
  *(v103 + 9) = v176;
  v103[80] = v173;
  v103[81] = v174;
  v169(&v103[v179[11]], v166 + v234, v237);
  v184 = v244;
  *&v103[v180] = *(v164 + *(v244 + 72));
  v244 = *(v164 + *(v184 + 76));
  *&v103[v181] = v244;
  sub_18AE7C1C8(v164, &v103[v179[14]], type metadata accessor for GlassMaterialProvider.Configuration);
  v185 = v166 + v246[7];
  v186 = *v185;
  v187 = *(v185 + 8);
  v188 = v103;
  v189 = *(v185 + 16);

  sub_18AFAC05C(v166, _s11EnvironmentVMa);
  sub_18AE920D8(&v249);
  *v182 = v186;
  *(v182 + 1) = v187;
  v182[16] = v189;
  *(v188 + v179[16]) = sub_18AFA8DB8(SDWORD2(v250));
  v190 = v235;
  *v183 = v245;
  *(v183 + 1) = v190;
  v183[16] = v178;
  v191 = v232;
  sub_18AE7C1C8(v188, v232, type metadata accessor for GlassMaterialProvider.Resolved);
  v192 = GlassMaterialProvider.Resolved.resolveLayers(in:)(v241);
  sub_18AE920D8(&v249);
  sub_18AFAC05C(v191, type metadata accessor for GlassMaterialProvider.Resolved);
  sub_18AFAC05C(v238, _s11EnvironmentVMa);
  return v192;
}

uint64_t sub_18AE8FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a1;
  v142 = a2;
  v145 = (type metadata accessor for GlassMaterialProvider.Configuration(0) - 8);
  MEMORY[0x1EEE9AC00](v145);
  v141 = (&v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_18AFCD424();
  v139 = *(v3 - 8);
  v140 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v134 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v138 = &v108 - v6;
  v7 = sub_18AFCD2E4();
  v131 = *(v7 - 8);
  v132 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v108 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v108 - v12;
  v126 = sub_18AFCC824();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_18AFCC9A4();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  *&v122 = &v108 - v16;
  v17 = sub_18AFCC5C4();
  *&v143 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  *&v120 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_18AFCBB34();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v108 - v26;
  v28 = sub_18AFCC474();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _s11EnvironmentVMa();
  MEMORY[0x1EEE9AC00](v32);
  v136 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v108 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v137 = &v108 - v39;
  v133 = v29;
  v40 = *(v29 + 16);
  v41 = v135;
  v135 = v28;
  v40(v31, v41, v28, v38);
  (*(v20 + 56))(v27, 1, 1, v19);
  v110 = *(v144 + v145[17]);
  v42 = *v144;
  sub_18AE89F60(*v144);
  v119 = sub_18AF47DE4(v42);
  v43 = *MEMORY[0x1E697DBB8];
  v44 = *(v20 + 104);
  v114 = v32[5];
  v44(&v36[v114], v43, v19);
  v45 = *MEMORY[0x1E697F600];
  v46 = *(v143 + 104);
  v115 = v32[6];
  *&v121 = v17;
  v46(&v36[v115], v45, v17);
  v47 = &v36[v32[7]];
  v47->i64[0] = 0;
  v47->i64[1] = 0;
  v109 = v47;
  v47[1].i8[0] = 1;
  v48 = v32[8];
  v49 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
  v50 = *(*(v49 - 8) + 56);
  v116 = v48;
  v50(&v36[v48], 1, 1, v49);
  v118 = v32[12];
  v36[v118] = 0;
  v145 = v32;
  v123 = v32[21];
  v36[v123] = 0;
  sub_18AFCC244();
  *v36 = v51;
  v130 = v27;
  sub_18AE83A40(v27, v24, &qword_1EA99B5F0);
  v52 = *(v20 + 48);
  if (v52(v24, 1, v19) == 1)
  {
    v53 = v117;
    sub_18AFCC204();
    if (v52(v24, 1, v19) != 1)
    {
      sub_18AE7BA80(v24, &qword_1EA99B5F0);
    }
  }

  else
  {
    v53 = v117;
    (*(v20 + 32))(v117, v24, v19);
  }

  (*(v20 + 40))(&v36[v114], v53, v19);
  v54 = v120;
  sub_18AFCC2F4();
  (*(v143 + 40))(&v36[v115], v54, v121);
  sub_18AFAB8BC();
  v55 = v122;
  sub_18AFCC484();
  sub_18AE90D7C(v55, &v36[v116]);
  v56 = v132;
  if (v42 == 0xC000000000000090)
  {
    if (!v110 && !sub_18AFCC1C4())
    {
      sub_18AFCCCD4();
    }

    sub_18AFCCDC4();
    v121 = v57;
    v143 = v58;
    v120 = v59;
    v122 = v60;

    v61.i64[0] = v121;
    v61.i64[1] = v120;
    v62 = v109;
    *v109 = vorrq_s8(vshll_n_s32(__PAIR64__(v122, v143), 0x20uLL), v61);
    v62[1].i8[0] = 0;
  }

  else
  {
    sub_18AF4B0F8(v42);
  }

  v63 = &v36[v145[10]];
  v64 = &v36[v145[11]];
  *v63 = 0;
  v65 = 1;
  v63[4] = 1;
  *v64 = 0;
  *(v64 + 1) = 0;
  *(v64 + 2) = 0;
  *(v64 + 12) = 256;
  sub_18AE7A260();
  sub_18AFCC484();
  v36[v118] = v147;
  if (v119)
  {
    sub_18AFCC974();
    v66 = v111;
    sub_18AFCC984();

    v67 = sub_18AFCC994();
    (*(v112 + 8))(v66, v113);
    v68 = sub_18AF76B64();
    v70 = v69;
    v72 = v71;
    v65 = v73;
  }

  else
  {
    v72 = 0;
    v68 = 0.0;
    v70 = 0;
  }

  v74 = &v36[v145[9]];
  v75 = v145[13];
  v76 = v145[14];
  v77 = v145[15];
  v78 = v145[16];
  v79 = v145[17];
  *&v121 = v145[18];
  v80 = v145[20];
  *&v122 = v145[19];
  *&v143 = v80;
  *v74 = v68;
  *(v74 + 1) = v70;
  *(v74 + 2) = v72;
  v74[24] = v65 & 1;
  v36[v75] = sub_18AFCC274() & 1;
  v36[v76] = sub_18AFCC304() & 1;
  sub_18AFAB910();
  sub_18AFCC484();
  v36[v77] = v147;
  v81 = v124;
  sub_18AFCC454();
  v82 = sub_18AFCC814();
  (*(v125 + 8))(v81, v126);
  v83 = *(v82 + 16);

  v36[v78] = v83 != 0;
  v36[v79] = sub_18AFCC354() & 1;
  v36[v121] = sub_18AFCC334() & 1;
  v36[v122] = sub_18AFCC344() & 1;
  v36[v143] = sub_18AFCC424() & 1;
  v84 = v129;
  sub_18AFCC3D4();
  v85 = v131;
  v86 = v128;
  (*(v131 + 16))(v128, v84, v56);
  v87 = v127;
  sub_18AFCD214();
  sub_18AFABD8C(&qword_1ED56A7A0, MEMORY[0x1E69818B0]);
  LOBYTE(v83) = sub_18AFCDDF4();
  v88 = *(v85 + 8);
  v88(v87, v56);
  if (v83)
  {
    v88(v86, v56);
    v88(v84, v56);
    v89 = 1;
  }

  else
  {
    sub_18AFCD234();
    v90 = sub_18AFCDDF4();
    v88(v87, v56);
    v88(v86, v56);
    v88(v84, v56);
    if (v90)
    {
      v89 = 2;
    }

    else
    {
      v89 = 0;
    }
  }

  v92 = v139;
  v91 = v140;
  v93 = v138;
  v36[v123] = v89;
  sub_18AFCC3E4();
  v94 = v134;
  sub_18AFCD414();
  sub_18AFABD8C(&qword_1EA99BC80, MEMORY[0x1E69818D0]);
  v95 = sub_18AFCDDF4();
  v96 = *(v92 + 8);
  v96(v94, v91);
  if ((v95 & 1) == 0)
  {
    sub_18AFCD404();
    sub_18AFCDDF4();
    v96(v94, v91);
  }

  v96(v93, v91);
  v36[v145[23]] = v95 & 1;
  sub_18AFAB964();
  sub_18AFCC484();
  v97 = v147;
  if (v147)
  {
    swift_getKeyPath();
    v146 = v97;
    sub_18AFABD8C(&qword_1ED56A728, _s6PocketV7StorageCMa);

    sub_18AFCB9B4();

    os_unfair_lock_lock((v97 + 16));
    v98 = *(v97 + 36);
    v99 = *(v97 + 40);
    os_unfair_lock_unlock((v97 + 16));

    sub_18AE7BA80(v130, &qword_1EA99B5F0);
    (*(v133 + 8))(v31, v135);

    v100 = 0x100000000;
    if (!v99)
    {
      v100 = 0;
    }

    v101 = v100 | v98;
  }

  else
  {
    sub_18AE7BA80(v130, &qword_1EA99B5F0);
    (*(v133 + 8))(v31, v135);
    v101 = 0;
  }

  v102 = &v36[v145[22]];
  v102[4] = BYTE4(v101);
  *v102 = v101;
  v102[5] = v97 == 0;
  v103 = v137;
  sub_18AE7C1C8(v36, v137, _s11EnvironmentVMa);
  v104 = v141;
  sub_18AE7B03C(v144, v141, type metadata accessor for GlassMaterialProvider.Configuration);
  v105 = v136;
  sub_18AE7B03C(v103, v136, _s11EnvironmentVMa);
  v106 = sub_18AFA8DFC(v104, v105);
  sub_18AE7E7F8(v103, v106, v142);
  return sub_18AFAC05C(v103, _s11EnvironmentVMa);
}

uint64_t sub_18AE90D7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_18AE90DEC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    result = 0;
    if ((vminv_u16(vmovn_s32(vceqq_f32(*(a1 + 48), *(a2 + 48)))) & 1) != 0 && *(a1 + 64) == *(a2 + 64))
    {
      return *(a1 + 68) == *(a2 + 68);
    }
  }

  return result;
}

uint64_t sub_18AE90EE8(uint64_t a1, unint64_t a2)
{
  v4 = _s13ConfigurationV3MixVMa(0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v12 = v5;
      v13 = swift_projectBox();
      sub_18AE7AFD4(v13, v8, _s13ConfigurationV3MixVMa);
      MEMORY[0x18CFED610](25);
      GlassMaterialProvider.Configuration.hash(into:)(a1);
      GlassMaterialProvider.Configuration.hash(into:)(a1);
      v14 = *&v8[*(v12 + 24)];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x18CFED640](*&v14);
      return sub_18AF4BBC8(v8, _s13ConfigurationV3MixVMa);
    }

    else
    {
      switch(__ROR8__(a2 + 0x4000000000000000, 3))
      {
        case 1:
          v17 = 1;
          break;
        case 2:
          v17 = 2;
          break;
        case 3:
          v17 = 3;
          break;
        case 4:
          v17 = 4;
          break;
        case 5:
          v17 = 6;
          break;
        case 6:
          v17 = 7;
          break;
        case 7:
          v17 = 8;
          break;
        case 8:
          v17 = 9;
          break;
        case 9:
          v17 = 10;
          break;
        case 0xALL:
          v17 = 11;
          break;
        case 0xBLL:
          v17 = 12;
          break;
        case 0xCLL:
          v17 = 14;
          break;
        case 0xDLL:
          v17 = 15;
          break;
        case 0xELL:
          v17 = 16;
          break;
        case 0xFLL:
          v17 = 17;
          break;
        case 0x10:
          v17 = 18;
          break;
        case 0x11:
          v17 = 19;
          break;
        case 0x12:
          v17 = 20;
          break;
        case 0x13:
          v17 = 21;
          break;
        case 0x14:
          v17 = 22;
          break;
        case 0x15:
          v17 = 23;
          break;
        case 0x16:
          v17 = 24;
          break;
        default:
          v17 = 0;
          break;
      }

      return MEMORY[0x18CFED610](v17, v6);
    }
  }

  else
  {
    if (!v9)
    {
      v10 = *(a2 + 20);
      v11 = *(a2 + 28);
      MEMORY[0x18CFED610](5, v6.n128_f64[0]);
      if (v10)
      {
        sub_18AFCE2B4();
        if (!v11)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_18AFCE2B4();
        sub_18AFCE2C4();
        if (!v11)
        {
LABEL_18:
          sub_18AFCE2B4();
          return sub_18AFCE2C4();
        }
      }

      return sub_18AFCE2B4();
    }

    v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    MEMORY[0x18CFED610](13, v6.n128_f64[0]);
    if (v16)
    {
      return sub_18AFCE2B4();
    }

    sub_18AFCE2B4();

    return sub_18AFCDCD4();
  }
}

uint64_t GlassMaterialProvider.Configuration.hash(into:)(uint64_t a1)
{
  v3 = sub_18AFCBB34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30[-v8];
  sub_18AE90EE8(a1, *v1);
  MEMORY[0x18CFED610](*(v1 + 8));
  MEMORY[0x18CFED610](*(v1 + 9));
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    if (v10 > 1)
    {
      if (v10 ^ 2 | v11)
      {
        v12 = 4;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v12 = (v10 | v11) != 0;
    }

    MEMORY[0x18CFED610](v12);
  }

  else
  {
    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    MEMORY[0x18CFED610](3);
    if (v13 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v13;
    }

    MEMORY[0x18CFED640](*&v15);
    if (v14 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v14;
    }

    MEMORY[0x18CFED640](*&v16);
  }

  MEMORY[0x18CFED610](*(v1 + 40));
  MEMORY[0x18CFED610](*(v1 + 48));
  v17 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  sub_18AE7BA10(v1 + v17[10], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_18AFCE2B4();
    sub_18AF4B160(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
    sub_18AFCDDA4();
    (*(v4 + 8))(v6, v3);
  }

  v18 = *(v1 + v17[11]);
  sub_18AFCE2B4();
  if (v18 != 3)
  {
    MEMORY[0x18CFED610](v18);
  }

  MEMORY[0x18CFED610](*(v1 + v17[12]));
  if (*(v1 + v17[13] + 16) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    sub_18AFCE2B4();
    sub_18AFCE2C4();
    sub_18AFCE2C4();
    sub_18AFCE2C4();
    sub_18AFCE2C4();
  }

  sub_18AE91794(a1, *(v1 + v17[14]));
  if (*(v1 + v17[15]))
  {
    sub_18AFCE2B4();
    sub_18AFCCD54();
  }

  else
  {
    sub_18AFCE2B4();
  }

  v19 = (v1 + v17[16]);
  if (*(v19 + 20) == 255)
  {
    sub_18AFCE2B4();
  }

  else
  {
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v19 + 4) | (*(v19 + 20) << 32);
    sub_18AFCE2B4();
    if ((v22 & 0x100000000) != 0)
    {
      *&v30[12] = v20;
      v31 = v21;
      v32 = v22;
      MEMORY[0x18CFED610](1);
      sub_18AFCCF14();
    }

    else
    {
      MEMORY[0x18CFED610](0);
      sub_18AFCCD54();
    }
  }

  if (!*(v1 + v17[17] + 4))
  {
    v23 = 1;
    goto LABEL_35;
  }

  if (*(v1 + v17[17] + 4) == 1)
  {
    v23 = 2;
LABEL_35:
    MEMORY[0x18CFED610](v23);
    sub_18AFCE2C4();
    goto LABEL_37;
  }

  MEMORY[0x18CFED610](0);
LABEL_37:
  v24 = *(v1 + v17[18]);
  sub_18AFCE2B4();
  if (v24)
  {
    (*(*v24 + 88))(a1);
  }

  v25 = (v1 + v17[19]);
  v26 = *v25;
  if (!*v25)
  {
    return sub_18AFCE2B4();
  }

  v27 = v25[1];
  sub_18AFCE2B4();
  (*(*v26 + 88))(a1);
  if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  return MEMORY[0x18CFED640](v28);
}

uint64_t sub_18AE91794(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x18CFED610](v3);
  if (v3)
  {
    v5 = (a2 + 60);
    do
    {
      v6 = *(v5 - 20);
      v7 = *(v5 - 12);
      v8 = *(v5 - 1);
      v9 = *v5;
      MEMORY[0x18CFED610](*(v5 - 28));
      if (v9)
      {
        MEMORY[0x18CFED610](1);
        result = sub_18AFCCF14();
      }

      else
      {
        MEMORY[0x18CFED610](0);

        sub_18AFCCD54();
        result = sub_18AE92094(v6, v7, v8, 0);
      }

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_18AE91884@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18AFCBB34();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for GlassMaterialProvider.State();
  *(a1 + v3[5]) = 1;
  result = sub_18AFA8190((a1 + v3[6]));
  *(a1 + v3[7]) = 0;
  *(a1 + v3[8]) = MEMORY[0x1E69E7CC0];
  v5 = a1 + v3[9];
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  return result;
}

uint64_t _s13DesignLibrary21GlassMaterialProviderV5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFCBB34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6A0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  v15 = *(v12 + 56);
  sub_18AE83A40(a1, &v23 - v13, &qword_1EA99B5F0);
  sub_18AE83A40(a2, &v14[v15], &qword_1EA99B5F0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_18AE7BA80(v14, &qword_1EA99B5F0);
LABEL_8:
      v19 = type metadata accessor for GlassMaterialProvider.State();
      if (*(a1 + *(v19 + 20)) != *(a2 + *(v19 + 20)))
      {
        return 0;
      }

      v20 = v19;
      if ((sub_18AE966B8(a1 + *(v19 + 24), a2 + *(v19 + 24)) & 1) == 0 || *(a1 + v20[7]) != *(a2 + v20[7]) || (sub_18AE9342C(*(a1 + v20[8]), *(a2 + v20[8])) & 1) == 0)
      {
        return 0;
      }

      v21 = v20[9];
      if (*(a1 + v21 + 16))
      {
        if ((*(a2 + v21 + 16) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*(a2 + v21 + 16) & 1) != 0 || (sub_18AFCCE14() & 1) == 0)
      {
        return 0;
      }

      return 1;
    }

    goto LABEL_6;
  }

  sub_18AE83A40(v14, v10, &qword_1EA99B5F0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_18AE7BA80(v14, &qword_1EA99B6A0);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v15], v4);
  sub_18AFB68A0(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
  v17 = sub_18AFCDDF4();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_18AE7BA80(v14, &qword_1EA99B5F0);
  if (v17)
  {
    goto LABEL_8;
  }

  return 0;
}

char *sub_18AE91D64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18AE91E70(char *a1, int64_t a2, char a3)
{
  result = sub_18AE91E90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18AE91E90(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_18AE91FA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_18AE91FCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  if (*(result + 28))
  {
    v7 = *(result + 8);
    v8 = *(result + 24);
  }

  else
  {

    sub_18AFCCCE4();
    v8 = v10;
    result = sub_18AE92094(v3, v5, v6, 0);
    v7 = v9;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_18AE92094(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t _s13DesignLibrary21GlassMaterialProviderV8ResolvedV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = sub_18AF5CA0C(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v4 == v5)
  {
    if ((sub_18AFCDCB4() & 1) == 0 || (sub_18AE93090(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (sub_18AE93094(*(a1 + 40), *(a1 + 48) | (*(a1 + 52) << 32), *(a2 + 40), *(a2 + 48) | (*(a2 + 52) << 32)) & 1) == 0)
    {
      return 0;
    }

    v8 = *(a2 + 81);
    if (*(a1 + 81))
    {
      goto LABEL_7;
    }

    if (*(a2 + 81))
    {
      return 0;
    }

    v12 = *(a2 + 64);
    v8 = *(a2 + 80);
    if (*(a1 + 64))
    {
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12 & 1 | (*(a1 + 56) != *(a2 + 56)))
    {
      return 0;
    }

    if (*(a1 + 80))
    {
LABEL_7:
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((*(a2 + 80) & 1) != 0 || *(a1 + 72) != *(a2 + 72))
      {
        return result;
      }
    }

    if ((sub_18AE9342C(*(a1 + 88), *(a2 + 88)) & 1) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 100);
    v10 = *(a2 + 96) | (*(a2 + 100) << 32);
    v11 = v9 >> 8;
    if (v9 >> 8 > 0x20)
    {
      if (v11 == 33)
      {
        if (BYTE5(v10) != 33)
        {
          return 0;
        }

        goto LABEL_35;
      }

      if (v11 == 34)
      {
        if (BYTE5(v10) != 34)
        {
          return 0;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v11 == 31)
      {
        if (BYTE5(v10) != 31)
        {
          return 0;
        }

        goto LABEL_35;
      }

      if (v11 == 32)
      {
        if (BYTE5(v10) != 32)
        {
          return 0;
        }

        goto LABEL_35;
      }
    }

    if (BYTE5(v10) - 31 < 4)
    {
      return 0;
    }

    v13 = *(a1 + 96) | (*(a1 + 100) << 32);
    v36 = *(a1 + 96);
    v37 = BYTE4(v13) & 1;
    v38 = BYTE1(v9);
    v33 = v10;
    v34 = BYTE4(v10) & 1;
    v35 = BYTE5(v10);
    if (!sub_18AF5DC58(&v36, &v33))
    {
      return 0;
    }

LABEL_35:
    v14 = type metadata accessor for GlassMaterialProvider.Resolved(0);
    if (sub_18AFCBB24())
    {
      v15 = v14[12];
      v16 = *(a1 + v15);
      v17 = *(a2 + v15);
      if (v16)
      {
        if (!v17)
        {
          return 0;
        }

        v18 = *(*v16 + 80);

        v20 = v18(v19);

        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v17)
      {
        return 0;
      }

      v21 = v14[13];
      v22 = a1 + v21;
      v23 = *(a1 + v21);
      v24 = (a2 + v21);
      v25 = *v24;
      if (v23)
      {
        if (v25 == 0.0)
        {
          return 0;
        }

        v26 = *(v22 + 8);
        v27 = v24[1];
        v28 = *(*v23 + 80);

        v30 = v28(v29);

        result = 0;
        if ((v30 & 1) == 0 || v26 != v27)
        {
          return result;
        }
      }

      else if (v25 != 0.0)
      {
        return 0;
      }

      if (static GlassMaterialProvider.Configuration.== infix(_:_:)(a1 + v14[14], a2 + v14[14]))
      {
        v31 = v14[15];
        if (*(a1 + v31 + 16))
        {
          if ((*(a2 + v31 + 16) & 1) == 0)
          {
            return 0;
          }
        }

        else if ((*(a2 + v31 + 16) & 1) != 0 || (sub_18AFCCE14() & 1) == 0)
        {
          return 0;
        }

        if (*(a1 + v14[16]) == *(a2 + v14[16]))
        {
          v32 = v14[17];
          if (*(a1 + v32 + 16))
          {
            if (*(a2 + v32 + 16))
            {
              return 1;
            }
          }

          else if (*(a2 + v32 + 16) & 1) == 0 && (sub_18AFCCE14())
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_18AE92510(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v84 = v2;
  v85 = v3;
  v4 = *(a1 + 136);
  *&__dst[96] = *(a1 + 120);
  *&__dst[112] = v4;
  *&__dst[128] = *(a1 + 152);
  __dst[144] = *(a1 + 168);
  v5 = *(a1 + 72);
  *&__dst[32] = *(a1 + 56);
  *&__dst[48] = v5;
  v6 = *(a1 + 104);
  *&__dst[64] = *(a1 + 88);
  *&__dst[80] = v6;
  v7 = *(a1 + 40);
  *__dst = *(a1 + 24);
  *&__dst[16] = v7;
  v8 = *(a2 + 152);
  *v62 = *(a2 + 136);
  *&v62[16] = v8;
  *&__dst[248] = *(a2 + 120);
  v62[32] = *(a2 + 168);
  *&__dst[184] = *(a2 + 56);
  *&__dst[200] = *(a2 + 72);
  *&__dst[216] = *(a2 + 88);
  *&__dst[232] = *(a2 + 104);
  *&__dst[152] = *(a2 + 24);
  *&__dst[168] = *(a2 + 40);
  v10 = *(a1 + 136);
  v64[6] = *(a1 + 120);
  v64[7] = v10;
  v64[8] = *(a1 + 152);
  v65 = *(a1 + 168);
  v11 = *(a1 + 72);
  v64[2] = *(a1 + 56);
  v64[3] = v11;
  v12 = *(a1 + 104);
  v64[4] = *(a1 + 88);
  v64[5] = v12;
  v14 = *(a1 + 40);
  v64[0] = *(a1 + 24);
  v64[1] = v14;
  if (sub_18AF4FB80(v64) != 1)
  {
    v63[6] = *&__dst[248];
    v63[7] = *v62;
    v63[8] = *&v62[16];
    LOBYTE(v63[9]) = v62[32];
    v63[2] = *&__dst[184];
    v63[3] = *&__dst[200];
    v63[4] = *&__dst[216];
    v63[5] = *&__dst[232];
    v63[0] = *&__dst[152];
    v63[1] = *&__dst[168];
    if (sub_18AF4FB80(v63) == 1)
    {
      return 0;
    }

    v83[5] = *&__dst[232];
    v83[6] = *&__dst[248];
    v83[7] = *v62;
    v83[8] = *&v62[16];
    v83[1] = *&__dst[168];
    v83[2] = *&__dst[184];
    v83[3] = *&__dst[200];
    v83[4] = *&__dst[216];
    v82[6] = *&__dst[96];
    v82[7] = *&__dst[112];
    v82[8] = *&__dst[128];
    v83[0] = *&__dst[152];
    v82[2] = *&__dst[32];
    v82[3] = *&__dst[48];
    v82[4] = *&__dst[64];
    v82[5] = *&__dst[80];
    v82[0] = *__dst;
    v82[1] = *&__dst[16];
    if (!sub_18AF6EB8C(v82, v83))
    {
      return 0;
    }

LABEL_10:
    v16 = a1;
    v17 = a2;
    if (*(a1 + 248))
    {
      if ((*(a2 + 248) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 248))
      {
        return 0;
      }

      v18 = *(a2 + 224);
      v80[2] = *(a2 + 208);
      v80[3] = v18;
      v81 = *(a2 + 240);
      v19 = *(a2 + 192);
      v80[0] = *(a2 + 176);
      v80[1] = v19;
      v20 = *(a1 + 224);
      v78[2] = *(a1 + 208);
      v78[3] = v20;
      v79 = *(a1 + 240);
      v21 = *(a1 + 192);
      v78[0] = *(a1 + 176);
      v78[1] = v21;
      v22 = sub_18AE90DEC(v78, v80);
      v17 = a2;
      v16 = a1;
      if (!v22)
      {
        return 0;
      }
    }

    if (*(v16 + 308))
    {
      if ((*(v17 + 308) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(v17 + 308) & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v16 + 256), *(v17 + 256)), vceqq_f64(*(v16 + 272), *(v17 + 272))))) & 1) == 0 || *(v16 + 288) != *(v17 + 288) || *(v16 + 296) != *(v17 + 296) || *(v16 + 304) != *(v17 + 304))
    {
      return 0;
    }

    if (*(v16 + 385))
    {
      if ((*(v17 + 385) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v17 + 385))
      {
        return 0;
      }

      if (*(v16 + 312) != *(v17 + 312))
      {
        return 0;
      }

      v23 = (v16 + 316);
      v24 = *v23;
      v74[1] = v23[1];
      v25 = v23[3];
      v74[2] = v23[2];
      v26 = v17 + 316;
      v75[0] = v25;
      *(v75 + 13) = *(v23 + 61);
      v74[0] = v24;
      v27 = *(v26 + 48);
      v76[2] = *(v26 + 32);
      v77[0] = v27;
      *(v77 + 13) = *(v26 + 61);
      v28 = *(v26 + 16);
      v76[0] = *v26;
      v76[1] = v28;
      v29 = sub_18AE8DE28(v74, v76);
      v17 = a2;
      v16 = a1;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    v30 = *(v16 + 496);
    v31 = *(v17 + 496);
    v32 = v31 & 0xFF00;
    if ((v30 & 0xFF00) == 0x200)
    {
      if (v32 != 512)
      {
        return 0;
      }
    }

    else
    {
      if (v32 == 512)
      {
        return 0;
      }

      v33 = (v16 + 392);
      v34 = v17 + 392;
      v35 = *(v34 + 32);
      v71[3] = *(v34 + 48);
      v36 = *(v34 + 80);
      v71[4] = *(v34 + 64);
      v71[5] = v36;
      v72 = *(v34 + 96);
      v37 = *(v34 + 16);
      v71[0] = *v34;
      v71[1] = v37;
      v71[2] = v35;
      v73 = v31;
      v38 = v33[3];
      v68[2] = v33[2];
      v39 = *v33;
      v68[1] = v33[1];
      v68[0] = v39;
      v40 = v33[4];
      v41 = v33[5];
      v69 = *(v33 + 12);
      v68[5] = v41;
      v68[4] = v40;
      v68[3] = v38;
      v70 = v30;
      v42 = sub_18AE8DFB8(v68, v71);
      v17 = a2;
      v16 = a1;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }

    v43 = v17 + 500;
    v44 = v16 + 500;
    if (*(v16 + 516))
    {
      if ((*(v17 + 516) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v17 + 516))
      {
        return 0;
      }

      if (COERCE_FLOAT(HIDWORD(*v44)) != COERCE_FLOAT(HIDWORD(*v43)))
      {
        return 0;
      }

      v45 = *(v16 + 508);
      v46 = *(v17 + 508);
      if (*&v45 != *&v46 || *(&v45 + 1) != *(&v46 + 1))
      {
        return 0;
      }
    }

    v47 = v16;
    v48 = v17;
    memcpy(__dst, (v16 + 520), 0x101uLL);
    memcpy(v62, (v48 + 520), sizeof(v62));
    memcpy(v63, (v47 + 520), 0x101uLL);
    if (sub_18AF4FB9C(v63) == 1)
    {
      memcpy(v60, v62, 0x101uLL);
      if (sub_18AF4FB9C(v60) != 1)
      {
        return 0;
      }
    }

    else
    {
      memcpy(v60, v62, 0x101uLL);
      if (sub_18AF4FB9C(v60) == 1)
      {
        return 0;
      }

      v67[12] = *&v62[192];
      v67[13] = *&v62[208];
      v67[14] = *&v62[224];
      v67[15] = *&v62[240];
      v67[8] = *&v62[128];
      v67[9] = *&v62[144];
      v67[10] = *&v62[160];
      v67[11] = *&v62[176];
      v67[4] = *&v62[64];
      v67[5] = *&v62[80];
      v67[6] = *&v62[96];
      v67[7] = *&v62[112];
      v67[0] = *v62;
      v67[1] = *&v62[16];
      v67[2] = *&v62[32];
      v67[3] = *&v62[48];
      v66[12] = *&__dst[192];
      v66[13] = *&__dst[208];
      v66[14] = *&__dst[224];
      v66[15] = *&__dst[240];
      v66[8] = *&__dst[128];
      v66[9] = *&__dst[144];
      v66[10] = *&__dst[160];
      v66[11] = *&__dst[176];
      v66[5] = *&__dst[80];
      v66[6] = *&__dst[96];
      v66[7] = *&__dst[112];
      v66[0] = *__dst;
      v66[1] = *&__dst[16];
      v66[2] = *&__dst[32];
      v66[3] = *&__dst[48];
      v66[4] = *&__dst[64];
      if (!sub_18AE92EB0(v66, v67))
      {
        return 0;
      }
    }

    if (*(v44 + 316))
    {
      if ((*(v43 + 316) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v43 + 316))
      {
        return 0;
      }

      v49 = *(a1 + 784);
      v50 = *(a2 + 784);
      if (*&v49 != *&v50 || *(&v49 + 1) != *(&v50 + 1) || COERCE_FLOAT(*(a1 + 792)) != COERCE_FLOAT(*(a2 + 792)) || *(a1 + 800) != *(a2 + 800) || *(a1 + 808) != *(a2 + 808))
      {
        return 0;
      }
    }

    if (*(a1 + 872))
    {
      if ((*(a2 + 872) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 872))
      {
        return 0;
      }

      v51 = *(v44 + 324);
      v52 = *(v44 + 340);
      v53 = *(v44 + 356);
      v54 = *(v43 + 340);
      v55 = *(v43 + 356);
      *__dst = *(v43 + 324);
      *&__dst[16] = v54;
      *&__dst[32] = v55;
      v60[0] = v51;
      v60[1] = v52;
      v60[2] = v53;
      if (!sub_18AE92DBC(v60, __dst))
      {
        return 0;
      }
    }

    if (*(v44 + 404))
    {
      if ((*(v43 + 404) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(v43 + 404) & 1) != 0 || *(a1 + 880) != *(a2 + 880) || *(a1 + 888) != *(a2 + 888) || *(a1 + 896) != *(a2 + 896))
    {
      return 0;
    }

    if (*(v44 + 436))
    {
      if ((*(v43 + 436) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(v43 + 436) & 1) != 0 || *(a1 + 912) != *(a2 + 912) || *(a1 + 920) != *(a2 + 920) || *(a1 + 928) != *(a2 + 928))
    {
      return 0;
    }

    if (*(v44 + 460))
    {
      if ((*(v43 + 460) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v43 + 460))
      {
        return 0;
      }

      v56 = *(a1 + 944);
      v57 = *(a2 + 944);
      if (*&v56 != *&v57 || *(&v56 + 1) != *(&v57 + 1) || *(a1 + 952) != *(a2 + 952))
      {
        return 0;
      }
    }

    if (*(v44 + 484))
    {
      if ((*(v43 + 484) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v43 + 484))
      {
        return 0;
      }

      v58 = *(a1 + 968);
      v59 = *(a2 + 968);
      if (*&v58 != *&v59 || *(&v58 + 1) != *(&v59 + 1) || *(a1 + 976) != *(a2 + 976))
      {
        return 0;
      }
    }

    if (*(v44 + 524))
    {
      if (!*(v43 + 524))
      {
        return 0;
      }
    }

    else if ((*(v43 + 524) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 992), *(a2 + 992)), vceqq_f64(*(a1 + 1008), *(a2 + 1008))), xmmword_18AFDDBA0)) & 0xF) != 0)
    {
      return 0;
    }

    return 1;
  }

  v63[6] = *&__dst[248];
  v63[7] = *v62;
  v63[8] = *&v62[16];
  LOBYTE(v63[9]) = v62[32];
  v63[2] = *&__dst[184];
  v63[3] = *&__dst[200];
  v63[4] = *&__dst[216];
  v63[5] = *&__dst[232];
  v63[0] = *&__dst[152];
  v63[1] = *&__dst[168];
  if (sub_18AF4FB80(v63) == 1)
  {
    goto LABEL_10;
  }

  return 0;
}

BOOL sub_18AE92DBC(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  if ((sub_18AFCCCB4() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    if (a1[10] == a2[10])
    {
      return a1[11] == a2[11];
    }

    return 0;
  }

  return result;
}

BOOL sub_18AE92EB0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v40 = v9;
  v41 = v8;
  v42 = v7;
  v43 = v6;
  v44 = v5;
  v45 = v4;
  v46 = v2;
  v47 = v3;
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  v18 = sub_18AFCCCB4();
  result = 0;
  if ((v18 & 1) != 0 && v16 == v13 && v15 == v12)
  {
    v20 = *(a1 + 72);
    v21 = *(a1 + 104);
    v38[2] = *(a1 + 88);
    v39[0] = v21;
    *(v39 + 13) = *(a1 + 117);
    v38[0] = *(a1 + 56);
    v38[1] = v20;
    v22 = *(a2 + 72);
    v23 = *(a2 + 104);
    v36[2] = *(a2 + 88);
    v37[0] = v23;
    *(v37 + 13) = *(a2 + 117);
    v36[0] = *(a2 + 56);
    v36[1] = v22;
    result = 0;
    if ((sub_18AE8DE28(v38, v36) & 1) != 0 && (sub_18AFCCCB4() & 1) != 0 && *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144))
    {
      v25 = *(a2 + 160);
      v24 = *(a2 + 168);
      v27 = *(a1 + 160);
      v26 = *(a1 + 168);
      if ((sub_18AFCCCB4() & 1) != 0 && v27 == v25 && v26 == v24)
      {
        v28 = *(a1 + 224);
        v34[2] = *(a1 + 208);
        v35[0] = v28;
        *(v35 + 13) = *(a1 + 237);
        v29 = *(a1 + 192);
        v34[0] = *(a1 + 176);
        v34[1] = v29;
        v30 = *(a2 + 224);
        v32[2] = *(a2 + 208);
        v33[0] = v30;
        *(v33 + 13) = *(a2 + 237);
        v31 = *(a2 + 192);
        v32[0] = *(a2 + 176);
        v32[1] = v31;
        if (sub_18AE8DE28(v34, v32) & 1) != 0 && (sub_18AFCCCB4())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_18AE93094(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 & 0xFFFFFFFFFFLL;
  v7 = (a2 >> 38) & 3;
  if (((a2 >> 38) & 3) > 1)
  {
    if (v7 == 2)
    {
      if ((a4 & 0xC000000000) == 0x8000000000)
      {
        v19 = v4;
        v20 = v5;
        v8 = *(a3 + 96);
        v15[4] = *(a3 + 80);
        v15[5] = v8;
        v16 = *(a3 + 112);
        v9 = *(a3 + 32);
        v15[0] = *(a3 + 16);
        v15[1] = v9;
        v10 = *(a3 + 64);
        v15[2] = *(a3 + 48);
        v15[3] = v10;
        v11 = *(a1 + 96);
        v17[4] = *(a1 + 80);
        v17[5] = v11;
        v18 = *(a1 + 112);
        v12 = *(a1 + 32);
        v17[0] = *(a1 + 16);
        v17[1] = v12;
        v13 = *(a1 + 64);
        v17[2] = *(a1 + 48);
        v17[3] = v13;
        return sub_18AFB5120(v17, v15);
      }

      return 0;
    }

    switch(a1)
    {
      case 1:
        if (v6 >> 38 < 3 || a3 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (v6 >> 38 < 3 || a3 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (v6 >> 38 < 3 || a3 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (v6 >> 38 < 3 || a3 != 4)
        {
          return 0;
        }

        break;
      case 5:
        if (v6 >> 38 < 3 || a3 != 5)
        {
          return 0;
        }

        break;
      case 6:
        if (v6 >> 38 < 3 || a3 != 6)
        {
          return 0;
        }

        break;
      case 7:
        if (v6 >> 38 < 3 || a3 != 7)
        {
          return 0;
        }

        break;
      case 8:
        if (v6 >> 38 < 3 || a3 != 8)
        {
          return 0;
        }

        break;
      case 9:
        if (v6 >> 38 < 3 || a3 != 9)
        {
          return 0;
        }

        break;
      case 10:
        if (v6 >> 38 < 3 || a3 != 10)
        {
          return 0;
        }

        break;
      case 11:
        if (v6 >> 38 < 3 || a3 != 11)
        {
          return 0;
        }

        break;
      case 12:
        if (v6 >> 38 < 3 || a3 != 12)
        {
          return 0;
        }

        break;
      case 13:
        if (v6 >> 38 < 3 || a3 != 13)
        {
          return 0;
        }

        break;
      case 14:
        if (v6 >> 38 < 3 || a3 != 14)
        {
          return 0;
        }

        break;
      case 15:
        if (v6 >> 38 < 3 || a3 != 15)
        {
          return 0;
        }

        break;
      case 16:
        if (v6 >> 38 < 3 || a3 != 16)
        {
          return 0;
        }

        break;
      case 17:
        if (v6 >> 38 < 3 || a3 != 17)
        {
          return 0;
        }

        break;
      case 18:
        if (v6 >> 38 < 3 || a3 != 18)
        {
          return 0;
        }

        break;
      case 19:
        if (v6 >> 38 < 3 || a3 != 19)
        {
          return 0;
        }

        break;
      case 20:
        if (v6 >> 38 < 3 || a3 != 20)
        {
          return 0;
        }

        break;
      default:
        if (v6 >> 38 < 3 || a3)
        {
          return 0;
        }

        break;
    }

    if (v6 == 0xC000000000)
    {
      return 1;
    }
  }

  else
  {
    if (v7)
    {
      if ((a4 & 0xC000000000) == 0x4000000000)
      {
        return ((a3 ^ a1) & 1) == 0;
      }

      return 0;
    }

    if (!(v6 >> 38))
    {
      if ((a1 & 0x100000000) != 0)
      {
        if ((a3 & 0x100000000) == 0)
        {
          return 0;
        }
      }

      else if ((a3 & 0x100000000) != 0 || *&a1 != *&a3)
      {
        return 0;
      }

      if ((a2 & 0x100000000) == 0)
      {
        return (a4 & 0x100000000) == 0 && *&a2 == *&a4;
      }

      if ((a4 & 0x100000000) != 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_18AE9342C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1);
      v8 = *v3;
      v9 = *(v3 + 4);
      v6 = *(i - 1);
      v10 = *i;
      v11 = *(i + 4);
      if (v5 != v6 || (MEMORY[0x18CFEC270](&v8, &v10) & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

double GlassMaterialProvider.Configuration.mix(with:by:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = _s13ConfigurationV3MixVMa(0);
  v8 = swift_allocBox();
  v10 = v9;
  sub_18AE7AFD4(v3, v9, type metadata accessor for GlassMaterialProvider.Configuration);
  sub_18AE7AFD4(a1, v10 + *(v7 + 20), type metadata accessor for GlassMaterialProvider.Configuration);
  *(v10 + *(v7 + 24)) = a3;

  return sub_18AF4884C(v8 | 0x8000000000000000, a2);
}

uint64_t sub_18AE935F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);

  sub_18AFCDC84();
  v6 = v5;
  v8 = v7;

  v10 = sub_18AE96968(v9);

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  return result;
}

void *sub_18AE93684(uint64_t a1)
{
  v2 = v1;
  v548 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v491 = v5;
  memcpy(__dst, v1, sizeof(__dst));
  if (v548 > 0.0)
  {
    if (v548 >= 1.0)
    {
      v6 = *v4;
    }

    else
    {
      v6 = *v1;
      if (*v1 <= *v4)
      {
        v6 = *v4;
      }
    }

    *__dst = v6;
  }

  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v11 = *(v1 + 7);
  v12 = *(v1 + 8);
  v13 = *(v1 + 9);
  v14 = *(v1 + 20);
  v15 = *(v1 + 21);
  v16 = *(v1 + 22);
  v17 = *(v1 + 23);
  v18 = *(v1 + 25);
  v19 = *(v1 + 108);
  v20 = *(v1 + 14);
  v21 = *(v1 + 15);
  v22 = *(v1 + 128);
  v23 = *(v1 + 33);
  v24 = *(v1 + 35);
  v25 = *(v1 + 148);
  v26 = *(v2 + 38);
  v27 = *(v2 + 39);
  v28 = *(v2 + 20);
  v29 = *(v2 + 168);
  v30 = *(v2 + 109);
  v523 = v8;
  v526 = v7;
  v726[0] = v7;
  v726[1] = v8;
  v520 = v9;
  v726[2] = v9;
  v726[3] = v10;
  v726[4] = v11;
  v726[5] = v12;
  v726[6] = v13;
  v529 = v14;
  v727 = v14;
  v728 = v15;
  v729 = v16;
  v535 = v17;
  v730 = v17;
  v532 = v18;
  v731 = v18;
  v732 = v19;
  v733 = v30;
  v734 = *(v2 + 111);
  v539 = v20;
  v735 = v20;
  v537 = v21;
  v736 = v21;
  v737 = v22;
  LOWORD(v20) = *(v2 + 149);
  v738 = *(v2 + 129);
  v739 = *(v2 + 131);
  v545 = v23;
  v740 = v23;
  v542 = v24;
  v741 = v24;
  v742 = v25;
  v743 = v20;
  v31 = v27;
  v744 = *(v2 + 151);
  v745 = v26;
  v746 = v27;
  v747 = v28;
  v748 = v29;
  if (sub_18AF4FB80(v726) == 1)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v10 = 0;
    v11 = 0;
    v19 = 1;
    LOBYTE(v626.f64[0]) = 1;
    LOBYTE(v561[0]) = 1;
    LOBYTE(v792) = 1;
    v12 = 0;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v22 = 1;
    v25 = 1;
    v26 = 0;
    v28 = 0;
  }

  else
  {
    v724 = *(v2 + 109);
    v725 = *(v2 + 111);
    v722 = *(v2 + 129);
    v723 = *(v2 + 131);
    v720 = *(v2 + 149);
    v721 = *(v2 + 151);
    v36 = v545;
    v37 = v542;
    v34 = v539;
    v35 = v537;
    v32 = v535;
    v33 = v532;
    v38 = v529;
    v40 = v523;
    v39 = v526;
    v41 = v520;
  }

  v996 = v39;
  v997 = v40;
  v998 = v41;
  v999 = v10;
  v1000 = v11;
  v1001 = v12;
  v1002 = v13;
  v1003 = v38;
  v1004 = v15;
  v1005 = v16;
  v1006 = v32;
  v1007 = v33;
  v1008 = v19;
  v1010 = v725;
  v1009 = v724;
  v1011 = v34;
  v1012 = v35;
  v1013 = v22;
  v1015 = v723;
  v1014 = v722;
  v1016 = v36;
  v1017 = v37;
  v1018 = v25;
  v1020 = v721;
  v1019 = v720;
  v1021 = v26;
  v1022 = v31;
  v1023 = v28;
  v42 = *(v4 + 40);
  v43 = *(v4 + 48);
  v44 = *(v4 + 56);
  v45 = *(v4 + 64);
  v46 = *(v4 + 72);
  v47 = *(v4 + 80);
  v48 = *(v4 + 84);
  v49 = *(v4 + 88);
  v50 = *(v4 + 92);
  v51 = *(v4 + 100);
  v52 = *(v4 + 108);
  v53 = *(v4 + 112);
  v54 = *(v4 + 120);
  v55 = *(v4 + 128);
  v56 = *(v4 + 132);
  v57 = *(v4 + 140);
  v58 = *(v4 + 148);
  v59 = *(v4 + 152);
  v60 = *(v4 + 156);
  v61 = *(v4 + 160);
  v62 = *(v4 + 168);
  v63 = *(v4 + 109);
  v524 = *(v4 + 32);
  v527 = *(v4 + 24);
  v697[0] = v527;
  v697[1] = v524;
  v521 = v42;
  v697[2] = v42;
  v697[3] = v43;
  v697[4] = v44;
  v697[5] = v45;
  v697[6] = v46;
  v530 = v47;
  v698 = v47;
  v699 = v48;
  v700 = v49;
  v536 = v50;
  v701 = v50;
  v533 = v51;
  v702 = v51;
  v703 = v52;
  v704 = v63;
  v705 = *(v4 + 111);
  v540 = v53;
  v706 = v53;
  v538 = v54;
  v707 = v54;
  v708 = v55;
  LOWORD(v53) = *(v4 + 149);
  v709 = *(v4 + 129);
  v710 = *(v4 + 131);
  v543 = v56;
  v711 = v56;
  v64 = v57;
  v712 = v57;
  v713 = v58;
  v714 = v53;
  v715 = *(v4 + 151);
  v716 = v59;
  v546 = v60;
  v717 = v60;
  v718 = v61;
  v719 = v62;
  if (sub_18AF4FB80(v697) == 1)
  {
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v64 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v43 = 0;
    v44 = 0;
    v52 = 1;
    LOBYTE(v626.f64[0]) = 1;
    LOBYTE(v561[0]) = 1;
    LOBYTE(v792) = 1;
    v45 = 0;
    v46 = 0;
    v48 = 0;
    v49 = 0;
    v55 = 1;
    v58 = 1;
    v59 = 0;
    v61 = 0;
  }

  else
  {
    v695 = *(v4 + 109);
    v696 = *(v4 + 111);
    v693 = *(v4 + 129);
    v694 = *(v4 + 131);
    v691 = *(v4 + 149);
    v692 = *(v4 + 151);
    v76 = v543;
    v74 = v540;
    v75 = v538;
    v72 = v536;
    v73 = v533;
    v77 = v530;
    v79 = v524;
    v78 = v527;
    v80 = v521;
  }

  v974[0] = v78;
  v974[1] = v79;
  v974[2] = v80;
  v974[3] = v43;
  v974[4] = v44;
  v974[5] = v45;
  v974[6] = v46;
  v975 = v77;
  v976 = v48;
  v977 = v49;
  v978 = v72;
  v979 = v73;
  v980 = v52;
  v982 = v696;
  v981 = v695;
  v983 = v74;
  v984 = v75;
  v985 = v55;
  v987 = v694;
  v986 = v693;
  v988 = v76;
  v989 = v64;
  v990 = v58;
  v992 = v692;
  v991 = v691;
  v993 = v59;
  v994 = v546;
  v995 = v61;
  sub_18AE95BA0(v974, v65, v66, v67, v68, v69, v70, v71, &v750, v548);
  v690 = 1;
  v687 = 1;
  v684 = 1;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v750), vceqzq_f64(v751))))) & 1) == 0 && *&v752 == 0.0 && *(&v752 + 1) == 0.0 && *&v753 == 0.0 && *(&v753 + 2) == 0.0 && *(&v753 + 3) == 0.0 && *&v754 == 0.0 && (BYTE4(v755) & 1) != 0 && (BYTE8(v756) & 1) != 0 && (BYTE12(v757) & 1) != 0 && *&v758 == 0.0 && *(&v758 + 1) == 0.0)
  {
    sub_18AF6A99C(&v674);
  }

  else
  {
    *v631 = v756;
    *&v631[16] = v757;
    v632 = v758;
    v628 = v752;
    v629 = v753;
    *&v630[16] = v755;
    *v630 = v754;
    v626 = v750;
    v627 = v751;
    sub_18AF6A9C0(&v626);
    v680 = *v631;
    v681 = *&v631[16];
    v682 = v632;
    v683 = v633;
    v676 = v628;
    v677 = v629;
    v678 = *v630;
    v679 = *&v630[16];
    v674 = v626;
    v675 = v627;
  }

  *&__dst[120] = v680;
  *&__dst[136] = v681;
  *&__dst[152] = v682;
  *&__dst[56] = v676;
  *&__dst[72] = v677;
  *&__dst[88] = v678;
  *&__dst[104] = v679;
  *&__dst[24] = v674;
  *&__dst[40] = v675;
  v81 = *(v2 + 248);
  v82 = vdup_n_s32(v81);
  v83.i64[0] = v82.u32[0];
  v83.i64[1] = v82.u32[1];
  v84 = vcgezq_s64(vshlq_n_s64(v83, 0x3FuLL));
  v85 = vandq_s8(*(v2 + 48), v84);
  v969 = vandq_s8(*(v2 + 44), v84);
  v970 = v85;
  v86 = vandq_s8(*(v2 + 52), v84);
  v87 = vandq_s8(*(v2 + 56), vcgezq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v81)), 0x1FuLL)));
  __dst[168] = v683;
  v971 = v86;
  v972 = v87;
  v973 = vand_s8(*(v2 + 60), vcgez_s32(vshl_n_s32(v82, 0x1FuLL)));
  if (*(v4 + 248))
  {
    v88 = 0uLL;
    v89 = 0;
    v90 = 0uLL;
    v91 = 0uLL;
    v92 = 0uLL;
  }

  else
  {
    v88 = *(v4 + 176);
    v91 = *(v4 + 192);
    v92 = *(v4 + 208);
    v90 = *(v4 + 224);
    v89 = *(v4 + 240);
  }

  v967[0] = v88;
  v967[1] = v91;
  v967[2] = v92;
  v967[3] = v90;
  v968 = v89;
  sub_18AE95ED8(v967, &v759, v548);
  v100 = v759;
  v101 = v760;
  v102 = v761;
  v103 = v762;
  v104 = v763;
  v105 = v764;
  v106 = v765;
  v107 = v766;
  v108 = v767;
  if ((v759 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v760 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v761 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v762 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v763 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v764 & 0x7FFFFFFFFFFFFFFFLL) != 0 || (v765 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (v766 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (v767 & 0x7FFFFFFF7FFFFFFFLL) != 0)
  {
    v109 = 0;
  }

  else
  {
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 1;
  }

  *&__dst[176] = v100;
  *&__dst[184] = v101;
  *&__dst[192] = v102;
  *&__dst[200] = v103;
  *&__dst[208] = v104;
  *&__dst[216] = v105;
  v110 = 0uLL;
  *&__dst[224] = v106;
  *&__dst[232] = v107;
  v111 = 0.0;
  *&__dst[240] = v108;
  v112 = 0.0;
  v113 = 0uLL;
  __dst[248] = v109;
  v114 = 0uLL;
  v115 = 0uLL;
  if ((v2[77] & 1) == 0)
  {
    v112 = v2[76];
    v114 = *(v2 + 68);
    v115 = *(v2 + 72);
    v113 = *(v2 + 64);
  }

  v116 = 0uLL;
  v117 = 0uLL;
  if ((*(v4 + 308) & 1) == 0)
  {
    v111 = *(v4 + 304);
    v116 = *(v4 + 272);
    v117 = *(v4 + 288);
    v110 = *(v4 + 256);
  }

  v118 = vaddq_f64(vmulq_n_f64(v113, 1.0 - v548), vmulq_n_f64(v110, v548));
  v119 = vaddq_f64(vmulq_n_f64(v114, 1.0 - v548), vmulq_n_f64(v116, v548));
  v120 = vaddq_f64(vmulq_n_f64(v115, 1.0 - v548), vmulq_n_f64(v117, v548));
  v121 = 1.0 - v548;
  v122 = v548;
  v123 = (v112 * v121) + (v111 * v122);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v118), vceqzq_f64(v119))))) & 1) == 0 && v120.f64[0] == 0.0 && v120.f64[1] == 0.0 && v123 == 0.0)
  {
    v124 = 1;
    v118 = 0uLL;
    v123 = 0.0;
    v119 = 0uLL;
    v120 = 0uLL;
  }

  else
  {
    v124 = 0;
  }

  *&__dst[256] = v118;
  *&__dst[272] = v119;
  *&__dst[288] = v120;
  *&__dst[304] = v123;
  __dst[308] = v124;
  if (*(v2 + 385))
  {
    v125 = v690;
    v672 = v688;
    v673 = v689;
    v126 = v687;
    v670 = v685;
    v671 = v686;
    v127 = 0uLL;
    v128 = 0;
    v129 = 0.0;
    v130 = 0;
    v131 = 0uLL;
    v132 = 0uLL;
    v133 = v684;
  }

  else
  {
    v126 = *(v2 + 364);
    v131 = *(v2 + 87);
    v125 = *(v2 + 344);
    v132 = *(v2 + 82);
    v130 = *(v2 + 81);
    v128 = *(v2 + 79);
    v129 = v2[78];
    v133 = *(v2 + 384);
    v127 = *(v2 + 23);
    v673 = *(v2 + 347);
    v672 = *(v2 + 345);
    v671 = *(v2 + 367);
    v670 = *(v2 + 365);
  }

  v541 = 1.0 - v548;
  if (*(v4 + 385))
  {
    v134 = v690;
    v668 = v688;
    v669 = v689;
    v135 = v687;
    v666 = v685;
    v667 = v686;
    v136 = 0uLL;
    v137 = 0;
    v138 = 0.0;
    v139 = 0;
    v140 = 0uLL;
    v141 = 0uLL;
    v142 = v684;
  }

  else
  {
    v135 = *(v4 + 364);
    v140 = *(v4 + 348);
    v134 = *(v4 + 344);
    v141 = *(v4 + 328);
    v139 = *(v4 + 324);
    v137 = *(v4 + 316);
    v138 = *(v4 + 312);
    v142 = *(v4 + 384);
    v136 = *(v4 + 368);
    v669 = *(v4 + 347);
    v668 = *(v4 + 345);
    v667 = *(v4 + 367);
    v666 = *(v4 + 365);
  }

  v955 = v128;
  v544 = v548;
  v547 = 1.0 - v548;
  v956 = v130;
  v143 = (v129 * v121) + (v138 * v122);
  v957 = v132;
  v958 = v125;
  v959 = v672;
  v960 = v673;
  v961 = v131;
  v962 = v126;
  v963 = v670;
  v964 = v671;
  v965 = v127;
  v966 = v133;
  v943 = v137;
  v944 = v139;
  v945 = v141;
  v946 = v134;
  v948 = v669;
  v947 = v668;
  v949 = v140;
  v950 = v135;
  v952 = v667;
  v951 = v666;
  v953 = v136;
  v954 = v142;
  sub_18AE9582C(&v943, v93, v94, v95, v96, v97, v98, v99, &v768, v548, *&v131);
  v151 = v769;
  v152 = v770;
  v153 = v771;
  v154 = v772;
  v155 = v773;
  v156 = v774;
  if (v143 == 0.0 && (v768 & 0x7FFFFFFF) == 0 && (v769 & 0x7FFFFFFF7FFFFFFFLL) == 0 && (v771 & 1) != 0 && (v772 & 0x100000000) != 0 && (v774 & 1) != 0)
  {
    v157 = 0;
    v152 = 0;
    v155 = 0;
    v156 = 0;
    v151 = 0uLL;
    v153 = 0uLL;
    v158 = 1;
    v154 = 0uLL;
  }

  else
  {
    v158 = 0;
    v157 = LODWORD(v143) | (v768 << 32);
  }

  *&__dst[320] = v151;
  *&__dst[312] = v157;
  *&__dst[336] = v152;
  *&__dst[344] = v153;
  *&__dst[360] = v154;
  *&__dst[376] = v155;
  __dst[384] = v156;
  __dst[385] = v158;
  v159 = *(v2 + 497);
  if (v159 == 2)
  {
    LOBYTE(v159) = 0;
    v160 = v690;
    v664 = v688;
    v665 = v689;
    v161 = v687;
    v662 = v685;
    v663 = v686;
    v162 = 0uLL;
    v163 = 0uLL;
    v164 = 0;
    v165 = 0uLL;
    v166 = 0;
    v167 = 0uLL;
    v168 = 0uLL;
    v169 = v684;
  }

  else
  {
    v161 = *(v2 + 476);
    v167 = *(v2 + 115);
    v160 = *(v2 + 456);
    v168 = *(v2 + 110);
    v164 = *(v2 + 54);
    v165 = *(v2 + 26);
    v166 = *(v2 + 51);
    v163 = *(v2 + 98);
    v169 = *(v2 + 496);
    v162 = *(v2 + 30);
    v665 = *(v2 + 459);
    v664 = *(v2 + 457);
    v663 = *(v2 + 479);
    v662 = *(v2 + 477);
  }

  v928 = v163;
  v930 = v165;
  v929 = v166;
  v931 = v164;
  v932 = v168;
  v933 = v160;
  v934 = v664;
  v935 = v665;
  v936 = v167;
  v937 = v161;
  v938 = v662;
  v939 = v663;
  v940 = v162;
  v941 = v169;
  v942 = v159;
  v170 = *(v4 + 497);
  if (v170 == 2)
  {
    LOBYTE(v170) = 0;
    v171 = v690;
    v660 = v688;
    v661 = v689;
    v172 = v687;
    v658 = v685;
    v659 = v686;
    v173 = 0uLL;
    v174 = 0uLL;
    v175 = 0;
    v176 = 0uLL;
    v177 = 0;
    v178 = 0uLL;
    v179 = 0uLL;
    v180 = v684;
  }

  else
  {
    v172 = *(v4 + 476);
    v178 = *(v4 + 460);
    v171 = *(v4 + 456);
    v179 = *(v4 + 440);
    v175 = *(v4 + 432);
    v176 = *(v4 + 416);
    v177 = *(v4 + 408);
    v174 = *(v4 + 392);
    v180 = *(v4 + 496);
    v173 = *(v4 + 480);
    v661 = *(v4 + 459);
    v660 = *(v4 + 457);
    v659 = *(v4 + 479);
    v658 = *(v4 + 477);
  }

  v913 = v174;
  v915 = v176;
  v914 = v177;
  v916 = v175;
  v917 = v179;
  v918 = v171;
  v919 = v660;
  v920 = v661;
  v921 = v178;
  v922 = v172;
  v923 = v658;
  v924 = v659;
  v925 = v173;
  v926 = v180;
  v927 = v170;
  sub_18AE95F9C(&v913, v144, v145, v146, v147, v148, v149, v150, &v775, v548);
  v181 = v775;
  v182 = v776;
  v183 = v777;
  v184 = v778;
  v185 = v780;
  v186 = v779;
  v187 = v781;
  v188 = v782;
  v189 = v783;
  v190 = v784;
  v191 = v785;
  if (v775 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (v776 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (v777 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (v778 & 0x7FFFFFFF) == 0 && !(v778 & 0x7FFFFFFF00000000 | v779 & 0x7FFFFFFF) && !(v779 & 0x7FFFFFFF00000000 | v780 & 0x7FFFFFFF7FFFFFFFLL) && (v782 & 1) != 0 && (v783 & 0x100000000) != 0 && (v785 & 0x100) == 0 && (v785)
  {
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v186 = 0;
    v187 = 0;
    v190 = 0;
    v185 = 0uLL;
    v188 = 0uLL;
    v189 = 0uLL;
    v191 = 512;
  }

  *&__dst[392] = v181;
  *&__dst[400] = v182;
  *&__dst[408] = v183;
  *&__dst[416] = v184;
  *&__dst[432] = v185;
  *&__dst[424] = v186;
  *&__dst[448] = v187;
  *&__dst[456] = v188;
  *&__dst[472] = v189;
  *&__dst[488] = v190;
  v192 = 0;
  v193 = 0.0;
  *&__dst[496] = v191;
  v194 = 0.0;
  v195 = 0;
  if ((v2[129] & 1) == 0)
  {
    v195 = vshrn_n_s64(*(v2 + 125), 0x20uLL);
    LODWORD(v194) = *(v2 + 127);
  }

  if ((*(v4 + 516) & 1) == 0)
  {
    v192 = vshrn_n_s64(*(v4 + 500), 0x20uLL);
    LODWORD(v193) = *(v4 + 508);
  }

  v196 = vmul_n_f32(v195, v547);
  v197 = vmul_n_f32(v192, v544);
  v198 = (v194 * v547) + (v193 * v544);
  v199 = vadd_f32(v196, v197);
  v201 = v198 == 0.0 && *v199.i32 == 0.0;
  v202 = v201 && *&v199.i32[1] == 0.0;
  v203 = 0uLL;
  if (v202 != 1)
  {
    v204 = LODWORD(v198);
    v205.i64[0] = vdupq_n_s64(0x3F800000uLL).u64[0];
    v205.i64[1] = v204;
    v203 = vorrq_s8(vshll_n_s32(v199, 0x20uLL), v205);
  }

  *&__dst[500] = v203;
  __dst[516] = v202;
  v206 = 0;
  if (v2[218])
  {
    v207 = 0;
    v208 = 0;
    v209 = 0;
    v210 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    v214 = 0;
    v215 = 0;
    v216 = 0;
    v217 = 0;
  }

  else
  {
    v215 = *(v2 + 216);
    v216 = *(v2 + 217);
    v213 = *(v2 + 214);
    v214 = *(v2 + 215);
    v217 = *(v2 + 106);
    v211 = *(v2 + 210);
    v212 = *(v2 + 211);
    v209 = *(v2 + 208);
    v210 = *(v2 + 209);
    v207 = *(v2 + 206);
    v208 = *(v2 + 207);
  }

  v902 = v207;
  v903 = v208;
  v904 = v209;
  v905 = v210;
  v906 = v211;
  v907 = v212;
  v908 = v217;
  v909 = v213;
  v910 = v214;
  v911 = v215;
  v912 = v216;
  if (*(v4 + 872))
  {
    v218 = 0;
    v219 = 0;
    v220 = 0;
    v221 = 0;
    v222 = 0;
    v223 = 0;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 0;
  }

  else
  {
    v219 = *(v4 + 864);
    v218 = *(v4 + 868);
    v221 = *(v4 + 856);
    v220 = *(v4 + 860);
    v206 = *(v4 + 848);
    v223 = *(v4 + 840);
    v222 = *(v4 + 844);
    v225 = *(v4 + 832);
    v224 = *(v4 + 836);
    v227 = *(v4 + 824);
    v226 = *(v4 + 828);
  }

  v896[0] = v227;
  v896[1] = v226;
  v896[2] = v225;
  v896[3] = v224;
  v896[4] = v223;
  v896[5] = v222;
  v897 = v206;
  v898 = v221;
  v899 = v220;
  v900 = v219;
  v901 = v218;
  sub_18AF6D5F0(v896, &v786, v548, *v203.i64, *&v196);
  v228 = v786;
  v229 = v787;
  v230 = v788;
  v231 = v789;
  v232 = v790;
  v233 = v791;
  if ((v786 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (v787 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (v788 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (sub_18AFCCCB4() & 1) == 0 || (v232 & 0x7FFFFFFF7FFFFFFFLL) != 0 || (v233 & 0x7FFFFFFF7FFFFFFFLL) != 0)
  {
    v234 = 0;
  }

  else
  {
    v228 = 0;
    v229 = 0;
    v230 = 0;
    v232 = 0;
    v233 = 0;
    v231 = 0;
    v234 = 1;
  }

  *&__dst[824] = v228;
  *&__dst[832] = v229;
  *&__dst[840] = v230;
  *&__dst[848] = v231;
  *&__dst[856] = v232;
  *&__dst[864] = v233;
  __dst[872] = v234;
  v235 = v2[130];
  v236 = *(v2 + 66);
  v237 = *(v2 + 67);
  v238 = *(v2 + 136);
  v239 = *(v2 + 137);
  v240 = *(v2 + 69);
  v241 = *(v2 + 70);
  v242 = *(v2 + 71);
  v243 = *(v2 + 144);
  v244 = *(v2 + 145);
  v245 = *(v2 + 146);
  v246 = *(v2 + 147);
  v247 = *(v2 + 149);
  v248 = *(v2 + 604);
  v249 = *(v2 + 76);
  v250 = *(v2 + 77);
  v251 = *(v2 + 624);
  v252 = *(v2 + 157);
  v253 = *(v2 + 159);
  v254 = *(v2 + 644);
  v255 = *(v2 + 81);
  v256 = *(v2 + 82);
  v257 = *(v2 + 166);
  v258 = *(v2 + 167);
  v259 = *(v2 + 84);
  v260 = *(v2 + 85);
  v261 = *(v2 + 86);
  v262 = *(v2 + 174);
  v263 = *(v2 + 175);
  v264 = *(v2 + 176);
  v265 = *(v2 + 177);
  v266 = *(v2 + 179);
  v267 = *(v2 + 724);
  v268 = *(v2 + 91);
  v269 = *(v2 + 92);
  v270 = *(v2 + 744);
  *(v626.f64 + 1) = v2[131];
  *&v630[21] = *(v2 + 605);
  v630[23] = *(v2 + 607);
  v631[11] = *(v2 + 627);
  *&v631[9] = *(v2 + 625);
  *&v631[29] = *(v2 + 645);
  v631[31] = *(v2 + 647);
  v644 = *(v2 + 725);
  v645 = *(v2 + 727);
  v649 = *(v2 + 745);
  v650 = *(v2 + 747);
  v654 = *(v2 + 765);
  v271 = *(v2 + 187);
  v272 = *(v2 + 189);
  v515 = v246;
  v516 = v253;
  *&v630[4] = v246;
  v512 = v271;
  v513 = v247;
  *&v630[12] = v247;
  v518 = v252;
  *&v631[12] = v252;
  *&v631[20] = v253;
  v531 = v265;
  v641 = v265;
  v525 = v266;
  v642 = v266;
  v651 = v271;
  v511 = v272;
  v652 = v272;
  v655 = *(v2 + 767);
  v657 = *(v2 + 776);
  v273 = *(v2 + 764);
  v274 = *(v2 + 96);
  v502 = v235;
  *v626.f64 = v235;
  v503 = v237;
  v504 = v236;
  v626.f64[1] = v236;
  v627.f64[0] = v237;
  v505 = v238;
  *&v627.f64[1] = __PAIR64__(v239, v238);
  v484 = v239;
  v507 = v240;
  v508 = v241;
  *&v628 = v240;
  *(&v628 + 1) = v241;
  v509 = v242;
  v510 = v255;
  *&v629 = v242;
  v501 = v243;
  *(&v629 + 1) = __PAIR64__(v244, v243);
  v500 = v244;
  v499 = v245;
  *v630 = v245;
  v498 = v248;
  v630[20] = v248;
  v517 = v249;
  *&v630[24] = v249;
  v514 = v250;
  *v631 = v250;
  v497 = v251;
  v631[8] = v251;
  v496 = v254;
  v631[28] = v254;
  *&v632 = v255;
  *(&v632 + 1) = v256;
  v633 = v257;
  v490 = v258;
  v634 = v258;
  v635 = v259;
  v636 = v260;
  v637 = v261;
  v638 = v262;
  v639 = v263;
  v640 = v264;
  v519 = v267;
  v643 = v267;
  v534 = v268;
  v646 = v268;
  v528 = v269;
  v647 = v269;
  v522 = v270;
  v648 = v270;
  v653 = v273;
  v506 = v274;
  v656 = v274;
  if (sub_18AF4FB9C(&v626) == 1)
  {
    v528 = 0;
    v531 = 0;
    v525 = 0;
    v534 = 0;
    v511 = 0;
    v512 = 0;
    v514 = 0;
    v515 = 0;
    v513 = 0;
    v517 = 0;
    v518 = 0;
    v516 = 0;
    v489 = 0;
    v506 = 0;
    v507 = 0;
    v487 = 0;
    v488 = 0;
    v485 = 0;
    v486 = 0;
    v624 = v688;
    v625 = v689;
    v622 = v685;
    v618 = v688;
    v509 = 0;
    v510 = 0;
    v508 = 0;
    v505 = 0;
    v623 = v686;
    v503 = 0.0;
    v504 = 0.0;
    v502 = 0.0;
    v619 = v689;
    v482 = 0;
    v483 = 0;
    v616 = v685;
    v481 = 0;
    v617 = v686;
    v501 = 0;
    v500 = 0;
    v499 = 0;
    v519 = v690;
    v498 = v690;
    v522 = v687;
    v497 = v687;
    v480 = v684;
    v496 = v684;
  }

  else
  {
    v480 = v273;
    v481 = v264;
    v482 = v263;
    v483 = v262;
    v485 = v256;
    v486 = v259;
    v487 = v260;
    v488 = v261;
    v489 = v257;
    v624 = *(v2 + 605);
    v625 = *(v2 + 607);
    v622 = *(v2 + 625);
    v623 = *(v2 + 627);
    v620 = *(v2 + 645);
    v621 = *(v2 + 647);
    v619 = *(v2 + 727);
    v618 = *(v2 + 725);
    v275 = *(v2 + 745);
    v617 = *(v2 + 747);
    v616 = v275;
    v615 = *(v2 + 767);
    v614 = *(v2 + 765);
  }

  v276 = *(v4 + 520);
  v277 = *(v4 + 528);
  v278 = *(v4 + 536);
  v279 = *(v4 + 544);
  v280 = *(v4 + 548);
  v281 = *(v4 + 552);
  v282 = *(v4 + 560);
  v283 = *(v4 + 568);
  v284 = *(v4 + 576);
  v285 = *(v4 + 580);
  v286 = *(v4 + 584);
  v287 = *(v4 + 588);
  v288 = *(v4 + 596);
  v289 = *(v4 + 604);
  v290 = *(v4 + 608);
  v291 = *(v4 + 616);
  v292 = *(v4 + 624);
  v293 = *(v4 + 628);
  v294 = *(v4 + 636);
  v295 = *(v4 + 644);
  v296 = *(v4 + 648);
  v297 = *(v4 + 656);
  v298 = *(v4 + 664);
  v299 = *(v4 + 668);
  v300 = *(v4 + 672);
  v301 = *(v4 + 680);
  v302 = *(v4 + 688);
  v303 = *(v4 + 696);
  v304 = *(v4 + 700);
  v305 = *(v4 + 704);
  v306 = *(v4 + 708);
  v307 = *(v4 + 716);
  v308 = *(v4 + 724);
  v309 = *(v4 + 728);
  v310 = *(v4 + 736);
  v311 = *(v4 + 744);
  v561[1] = *(v4 + 524);
  v575 = *(v4 + 605);
  v576 = *(v4 + 607);
  v581 = *(v4 + 627);
  v580 = *(v4 + 625);
  v585 = *(v4 + 645);
  v586 = *(v4 + 647);
  v600 = *(v4 + 725);
  v601 = *(v4 + 727);
  v605 = *(v4 + 745);
  v606 = *(v4 + 747);
  v610 = *(v4 + 765);
  v312 = *(v4 + 748);
  v313 = *(v4 + 756);
  v468 = v287;
  v469 = v294;
  v572 = v287;
  v466 = v288;
  v573 = v288;
  v471 = v293;
  v582 = v293;
  v583 = v294;
  v473 = v307;
  v474 = v306;
  v597 = v306;
  v598 = v307;
  v492 = v313;
  v493 = v312;
  v607 = v312;
  v608 = v313;
  v611 = *(v4 + 767);
  v613 = *(v4 + 776);
  LOBYTE(v312) = *(v4 + 764);
  v314 = *(v4 + 768);
  v451 = v276;
  *v561 = v276;
  v454 = v277;
  v562 = v277;
  v461 = v278;
  v462 = v282;
  v563 = v278;
  v460 = v279;
  v564 = v279;
  v478 = v280;
  v565 = v280;
  v463 = v283;
  v464 = v281;
  v566 = v281;
  v567 = v282;
  v568 = v283;
  v455 = v285;
  v456 = v284;
  v569 = v284;
  v570 = v285;
  v457 = v286;
  v571 = v286;
  v452 = v292;
  v453 = v289;
  v574 = v289;
  v470 = v290;
  v577 = v290;
  v467 = v291;
  v578 = v291;
  v579 = v292;
  v584 = v295;
  v465 = v296;
  v587 = v296;
  v459 = v297;
  v588 = v297;
  v315 = v298;
  v589 = v298;
  v479 = v299;
  v590 = v299;
  v316 = v300;
  v591 = v300;
  v317 = v301;
  v592 = v301;
  v318 = v302;
  v593 = v302;
  v319 = v303;
  v594 = v303;
  v320 = v304;
  v595 = v304;
  v321 = v305;
  v596 = v305;
  v472 = v308;
  v599 = v308;
  v494 = v310;
  v495 = v309;
  v602 = v309;
  v603 = v310;
  v322 = v311;
  v604 = v311;
  v458 = v312;
  v609 = v312;
  v323 = v314;
  v612 = v314;
  if (sub_18AF4FB9C(v561) == 1)
  {
    v331 = 0;
    v332 = 0;
    v494 = 0;
    v495 = 0;
    v492 = 0;
    v493 = 0;
    v333 = 0;
    v334 = 0;
    v335 = 0;
    v336 = 0;
    v337 = 0;
    v338 = 0;
    v339 = v690;
    v340 = v687;
    v475 = 0;
    v476 = 0;
    v477 = 0;
    v341 = v684;
    v317 = 0;
    v316 = 0;
    v559 = v688;
    v560 = v689;
    v557 = v685;
    v553 = v688;
    v342 = 0;
    v343 = 0;
    v344 = 0;
    v345 = 0;
    v346 = 0;
    v347 = 0;
    v558 = v686;
    v348 = 0;
    v349 = 0.0;
    v350 = 0.0;
    v554 = v689;
    v319 = 0;
    v551 = v685;
    v320 = 0;
    v321 = 0;
    v552 = v686;
    v351 = 0;
    v352 = 0;
    v353 = 0;
    v354 = v690;
    v355 = v687;
    v356 = v684;
  }

  else
  {
    v559 = *(v4 + 605);
    v560 = *(v4 + 607);
    v557 = *(v4 + 625);
    v558 = *(v4 + 627);
    v555 = *(v4 + 645);
    v556 = *(v4 + 647);
    v554 = *(v4 + 727);
    v553 = *(v4 + 725);
    v552 = *(v4 + 747);
    v551 = *(v4 + 745);
    v550 = *(v4 + 767);
    v549 = *(v4 + 765);
    v332 = v473;
    v331 = v474;
    v340 = v322;
    v339 = v472;
    v475 = v315;
    v476 = v318;
    v477 = v323;
    v342 = v459;
    v335 = v470;
    v337 = v471;
    v333 = v468;
    v338 = v469;
    v334 = v466;
    v336 = v467;
    v346 = v464;
    v343 = v465;
    v345 = v462;
    v344 = v463;
    v348 = v461;
    v347 = v460;
    v341 = v458;
    v351 = v456;
    v353 = v457;
    v352 = v455;
    v349 = v454;
    v355 = v452;
    v354 = v453;
    v356 = v295;
    v350 = v451;
  }

  v871 = v503;
  v357 = (v502 * v547) + (v350 * v544);
  v872 = v505;
  v873 = v484;
  v358 = v541 * v504 + v349 * v548;
  v874 = v507;
  v875 = v508;
  v876 = v509;
  v877 = v501;
  v878 = v500;
  v879 = v499;
  v880 = v515;
  v881 = v513;
  v882 = v498;
  v883 = v624;
  v884 = v625;
  v885 = v517;
  v886 = v514;
  v887 = v497;
  v888 = v622;
  v889 = v623;
  v890 = v518;
  v891 = v516;
  v892 = v496;
  v893 = v620;
  v894 = v621;
  v895 = v510;
  v846 = v348;
  v847 = v347;
  v848 = v478;
  v849 = v346;
  v850 = v345;
  v851 = v344;
  v852 = v351;
  v853 = v352;
  v854 = v353;
  v855 = v333;
  v856 = v334;
  v857 = v354;
  v859 = v560;
  v858 = v559;
  v860 = v335;
  v861 = v336;
  v862 = v355;
  v864 = v558;
  v863 = v557;
  v865 = v337;
  v866 = v338;
  v867 = v356;
  v869 = v556;
  v868 = v555;
  v870 = v343;
  sub_18AF6D728(&v846, v324, v325, v326, v327, v328, v329, v330, &v794, v548);
  v821 = v485;
  v822 = v489;
  v823 = v490;
  v824 = v486;
  v825 = v487;
  v826 = v488;
  v827 = v483;
  v828 = v482;
  v829 = v481;
  v830 = v531;
  v831 = v525;
  v832 = v519;
  v833 = v618;
  v834 = v619;
  v835 = v534;
  v836 = v528;
  v837 = v522;
  v838 = v616;
  v839 = v617;
  v840 = v512;
  v841 = v511;
  v842 = v480;
  v843 = v614;
  v844 = v615;
  v845 = v506;
  v796 = v342;
  v797 = v475;
  v798 = v479;
  v799 = v316;
  v800 = v317;
  v801 = v476;
  v802 = v319;
  v803 = v320;
  v804 = v321;
  v805 = v331;
  v806 = v332;
  v807 = v339;
  v809 = v554;
  v808 = v553;
  v810 = v495;
  v811 = v494;
  v812 = v340;
  v814 = v552;
  v813 = v551;
  v815 = v493;
  v816 = v492;
  v817 = v341;
  v819 = v550;
  v818 = v549;
  v820 = v477;
  sub_18AF6D728(&v796, v359, v360, v361, v362, v363, v364, v365, &v795, v548);
  v792 = v357;
  v793 = v358;
  sub_18AF6B330(&v792);
  v367 = *(v2 + 119);
  if (*(v2 + 960))
  {
    v368 = 0.0;
  }

  else
  {
    v368 = v2[236];
  }

  if (*(v2 + 960))
  {
    v369 = 0.0;
  }

  else
  {
    v369 = v2[237];
  }

  v370 = 0.0;
  if (*(v2 + 960))
  {
    v367 = 0.0;
  }

  v371 = *(v4 + 944);
  v372 = *(v4 + 948);
  if (*(v4 + 960))
  {
    v371 = 0.0;
    v372 = 0.0;
    v373 = 0.0;
  }

  else
  {
    v373 = *(v4 + 952);
  }

  v374 = (v368 * v547) + (v371 * v544);
  v375 = (v369 * v547) + (v372 * v544);
  v376 = v541 * v367 + v373 * v548;
  v378 = v375 == 0.0 && v374 == 0.0;
  v379 = v378 && v376 == 0.0;
  if (v379 == 1)
  {
    v380 = 0;
    v376 = 0.0;
  }

  else
  {
    v380 = LODWORD(v374) | (LODWORD(v375) << 32);
  }

  *&__dst[944] = v380;
  *&__dst[952] = v376;
  __dst[960] = v379;
  v381 = *(v2 + 122);
  v382 = v2[242];
  v383 = v2[243];
  if (*(v2 + 984))
  {
    v382 = 0.0;
    v383 = 0.0;
    v381 = 0.0;
  }

  v384 = *(v4 + 976);
  v385 = *(v4 + 968);
  v386 = *(v4 + 972);
  if (*(v4 + 984))
  {
    v385 = 0.0;
    v386 = 0.0;
    v384 = 0.0;
  }

  v387 = (v382 * v547) + (v385 * v544);
  v388 = (v383 * v547) + (v386 * v544);
  v389 = v541 * v381 + v384 * v548;
  v391 = v388 == 0.0 && v387 == 0.0;
  v392 = v391 && v389 == 0.0;
  if (v392)
  {
    v393 = 0;
  }

  else
  {
    v393 = LODWORD(v387) | (LODWORD(v388) << 32);
    v370 = v389;
  }

  *&__dst[968] = v393;
  *&__dst[976] = v370;
  v394 = 0uLL;
  __dst[984] = v392;
  v395 = 0uLL;
  v396 = 0uLL;
  if ((v2[256] & 1) == 0)
  {
    v395 = *(v2 + 248);
    v396 = *(v2 + 252);
  }

  v397 = 0uLL;
  if ((*(v4 + 1024) & 1) == 0)
  {
    v394 = *(v4 + 992);
    v397 = *(v4 + 1008);
  }

  v366.i32[0] = 0;
  v398 = vaddq_f64(vmulq_n_f64(v395, v541), vmulq_n_f64(v394, v548));
  v399 = vaddq_f64(vmulq_n_f64(v396, v541), vmulq_n_f64(v397, v548));
  v400 = vuzp1q_s32(vceqzq_f64(v398), vceqzq_f64(v399));
  v401 = vbicq_s8(xmmword_18AFDDBA0, v400);
  v401.i32[0] = vaddvq_s32(v401);
  v402.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v402.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v401.i64[0] = vceqq_s8(vandq_s8(v401, v402), vandq_s8(v366, v402)).u64[0];
  v403 = vdupq_lane_s8(*v401.i8, 0);
  v404 = vdupq_n_s64(v401.i8[0] & 0xF | (16 * (v403.i8[1] & 0xF)) | ((v403.i8[2] & 0xF) << 8) & 0xFFF | ((v403.i8[3] & 0xFu) << 12) | ((v403.i8[4] & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((v403.i8[5] & 0xF) << 20) | ((v403.i8[6] & 0xF) << 24) | ((v403.i8[7] & 0xF) << 28) | ((v403.i8[8] & 0xF) << 32) | ((v403.i8[9] & 0xF) << 36) | ((v403.i8[10] & 0xF) << 40) | ((v403.i8[11] & 0xF) << 44) | ((v403.i8[12] & 0xF) << 48) | ((v403.i8[13] & 0xF) << 52) | ((v403.i8[14] & 0xF) << 56) | (v403.u8[15] << 60));
  *&__dst[992] = vbicq_s8(v398, v404);
  *&__dst[1008] = vbicq_s8(v399, v404);
  __dst[1024] = (vmaxv_u16(vmovn_s32(vmvnq_s8(v400))) & 1) == 0;
  v405 = *(v2 + 110);
  v406 = *(v2 + 111);
  v407 = *(v2 + 112);
  v408 = 0.0;
  if (*(v2 + 904))
  {
    v405 = 0.0;
    v406 = 0.0;
    v407 = 0.0;
  }

  v409 = *(v4 + 880);
  v410 = *(v4 + 888);
  v411 = *(v4 + 896);
  if (*(v4 + 904))
  {
    v409 = 0.0;
    v410 = 0.0;
    v411 = 0.0;
  }

  v412 = v541 * v405 + v409 * v548;
  v413 = v541 * v406 + v410 * v548;
  v414 = v541 * v407 + v411 * v548;
  v415 = v412 == 0.0;
  if (v413 != 0.0)
  {
    v415 = 0;
  }

  v416 = v415 && v414 == 0.0;
  if (v416)
  {
    v417 = 0.0;
  }

  else
  {
    v417 = v412;
  }

  if (v416)
  {
    v418 = 0.0;
  }

  else
  {
    v418 = v413;
  }

  if (v416)
  {
    v419 = 0.0;
  }

  else
  {
    v419 = v414;
  }

  *&__dst[880] = v417;
  *&__dst[888] = v418;
  *&__dst[896] = v419;
  __dst[904] = v416 & 1;
  v420 = *(v2 + 114);
  v421 = *(v2 + 115);
  v422 = *(v2 + 116);
  if (*(v2 + 936))
  {
    v420 = 0.0;
    v421 = 0.0;
    v422 = 0.0;
  }

  v423 = *(v4 + 912);
  v424 = *(v4 + 920);
  if (*(v4 + 936))
  {
    v423 = 0.0;
    v424 = 0.0;
  }

  else
  {
    v408 = *(v4 + 928);
  }

  v425 = v541 * v420 + v423 * v548;
  v426 = v541 * v421 + v424 * v548;
  v427 = v541 * v422 + v408 * v548;
  v428 = v425 == 0.0;
  if (v426 != 0.0)
  {
    v428 = 0;
  }

  v429 = v428 && v427 == 0.0;
  if (v429)
  {
    v430 = 0.0;
  }

  else
  {
    v430 = v425;
  }

  if (v429)
  {
    v431 = 0.0;
  }

  else
  {
    v431 = v426;
  }

  if (v429)
  {
    v432 = 0.0;
  }

  else
  {
    v432 = v427;
  }

  *&__dst[912] = v430;
  *&__dst[920] = v431;
  *&__dst[928] = v432;
  __dst[936] = v429 & 1;
  v433 = 0uLL;
  v434 = 0.0;
  v435 = 0.0;
  v436 = 0.0;
  v437 = 0.0;
  v438 = 0uLL;
  if ((v2[204] & 1) == 0)
  {
    v438 = *(v2 + 200);
    v435 = v2[196];
    v436 = v2[197];
    v437 = v2[198];
  }

  v439 = 0.0;
  v440 = 0.0;
  if ((*(v4 + 816) & 1) == 0)
  {
    v433 = *(v4 + 800);
    v434 = *(v4 + 784);
    v439 = *(v4 + 788);
    v440 = *(v4 + 792);
  }

  v441 = (v435 * v547) + (v434 * v544);
  v442 = (v436 * v547) + (v439 * v544);
  v443 = (v437 * v547) + (v440 * v544);
  v444 = vaddq_f64(vmulq_n_f64(v438, v541), vmulq_n_f64(v433, v548));
  v446 = v442 == 0.0 && v441 == 0.0;
  v447 = v446 && v443 == 0.0;
  if (v444.f64[0] != 0.0)
  {
    v447 = 0;
  }

  if (v444.f64[1] != 0.0)
  {
    v447 = 0;
  }

  if (v447 == 1)
  {
    v448 = 0;
    v449 = 0;
    v444 = 0uLL;
  }

  else
  {
    v448 = LODWORD(v441) | (LODWORD(v442) << 32);
    v449 = LODWORD(v443);
  }

  *&__dst[784] = v448;
  *&__dst[792] = v449;
  *&__dst[800] = v444;
  __dst[816] = v447;
  return memcpy(v491, __dst, 0x401uLL);
}

float sub_18AE9582C@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v14 = *v11;
  v15 = *a1;
  v16 = *(v11 + 8);
  v17 = *(a1 + 8);
  v18 = *(v11 + 12);
  v19 = *(v11 + 20);
  v20 = *(v11 + 28);
  if (a10 <= 0.0)
  {
    v23 = *(v11 + 32);
    v22 = *(v11 + 40);
    v24 = *(v11 + 48);
    v25 = *(v11 + 52);
    v26 = *(v11 + 60);
    v27 = *(v11 + 68);
  }

  else
  {
    v21 = a1;
    if (a10 < 1.0)
    {
      if (*(v11 + 28))
      {
        if (*(a1 + 28))
        {
          v20 = 1;
          v18 = *(a1 + 12);
          v19 = *(a1 + 20);
          goto LABEL_14;
        }

        LODWORD(v35) = *(a1 + 12);
        v36 = HIDWORD(*(a1 + 12));
        LODWORD(v37) = *(a1 + 20);
        v30 = 0;
        LODWORD(a11) = v36;
        v28 = v35;
        v29 = v37;
      }

      else
      {
        LODWORD(a11) = HIDWORD(*(v11 + 12));
        LODWORD(v28) = *(v11 + 12);
        LODWORD(v29) = *(v11 + 20);
        v30 = HIDWORD(*(v11 + 20));
        v31 = 0.0;
        if (*(a1 + 28))
        {
          LODWORD(v33) = HIDWORD(*(v11 + 12));
          LODWORD(v32) = *(v11 + 12);
          LODWORD(v34) = *(v11 + 20);
LABEL_13:
          a1 = sub_18AE95CCC(v28, a11, v29, v31, a10, v32, v33, v34, a1, a2, a3, a4, a5, a6, a7, a8, v30);
          v20 = 0;
          v18 = v38 | (LODWORD(a11) << 32);
          v19 = v39 | (v40 << 32);
LABEL_14:
          v23 = *(v21 + 32);
          v22 = *(v21 + 40);
          if (*(v11 + 48))
          {
            if (*(v21 + 48))
            {
              v24 = 1;
              goto LABEL_23;
            }

            LODWORD(v48) = *(v21 + 32);
            v49 = HIDWORD(*(v21 + 32));
            LODWORD(v50) = *(v21 + 40);
            v44 = 0;
            LODWORD(a11) = v49;
            v41 = v48;
            v43 = v50;
          }

          else
          {
            v41 = *(v11 + 32);
            LODWORD(a11) = *(v11 + 36);
            v42 = 0.0;
            v43 = *(v11 + 40);
            v44 = *(v11 + 44);
            if (*(v21 + 48))
            {
              v45 = *(v11 + 32);
              v46 = *(v11 + 36);
              v47 = *(v11 + 40);
LABEL_22:
              a1 = sub_18AE95CCC(v41, a11, v43, v42, a10, v45, v46, v47, a1, a2, a3, a4, a5, a6, a7, a8, v44);
              v24 = 0;
              v23 = v51 | (LODWORD(a11) << 32);
              v22 = v52 | (v53 << 32);
LABEL_23:
              v25 = *(v21 + 52);
              v26 = *(v21 + 60);
              if (*(v11 + 68))
              {
                if (*(v21 + 68))
                {
                  v27 = 1;
                  goto LABEL_32;
                }

                LODWORD(v61) = *(v21 + 52);
                v62 = HIDWORD(*(v21 + 52));
                LODWORD(v63) = *(v21 + 60);
                v57 = 0;
                v54 = v61;
                LODWORD(a11) = v62;
                v56 = v63;
              }

              else
              {
                v54 = *(v11 + 52);
                LODWORD(a11) = *(v11 + 56);
                v55 = 0.0;
                v56 = *(v11 + 60);
                v57 = *(v11 + 64);
                if (*(v21 + 68))
                {
                  v58 = *(v11 + 52);
                  v59 = *(v11 + 56);
                  v60 = *(v11 + 60);
LABEL_31:
                  sub_18AE95CCC(v54, a11, v56, v55, a10, v58, v59, v60, a1, a2, a3, a4, a5, a6, a7, a8, v57);
                  v27 = 0;
                  v25 = v64 | (v65 << 32);
                  v26 = v66 | (v67 << 32);
                  goto LABEL_32;
                }

                LODWORD(v61) = *(v21 + 52);
                v62 = HIDWORD(*(v21 + 52));
                LODWORD(v63) = *(v21 + 60);
              }

              v60 = v56;
              v59 = *&a11;
              v58 = v54;
              LODWORD(v55) = HIDWORD(*(v21 + 60));
              v54 = v61;
              LODWORD(a11) = v62;
              v56 = v63;
              goto LABEL_31;
            }

            LODWORD(v48) = *(v21 + 32);
            v49 = HIDWORD(*(v21 + 32));
            LODWORD(v50) = *(v21 + 40);
          }

          v47 = v43;
          v46 = *&a11;
          v45 = v41;
          LODWORD(v42) = HIDWORD(*(v21 + 40));
          v41 = v48;
          LODWORD(a11) = v49;
          v43 = v50;
          goto LABEL_22;
        }

        LODWORD(v35) = *(a1 + 12);
        v36 = HIDWORD(*(a1 + 12));
        LODWORD(v37) = *(a1 + 20);
      }

      v34 = v29;
      v33 = *&a11;
      v32 = v28;
      LODWORD(v31) = HIDWORD(*(a1 + 20));
      v28 = v35;
      LODWORD(a11) = v36;
      v29 = v37;
      goto LABEL_13;
    }

    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = *(a1 + 52);
    v26 = *(a1 + 60);
    v18 = *(a1 + 12);
    v19 = *(a1 + 20);
    v20 = *(a1 + 28);
    v27 = *(a1 + 68);
  }

LABEL_32:
  v68 = 1.0 - a10;
  v69 = a10;
  *a9 = vadd_f32(vmul_n_f32(v14, v68), vmul_n_f32(v15, v69));
  result = (v16 * v68) + (v17 * v69);
  *(a9 + 8) = result;
  *(a9 + 12) = v18;
  *(a9 + 20) = v19;
  *(a9 + 28) = v20;
  *(a9 + 32) = v23;
  *(a9 + 40) = v22;
  *(a9 + 48) = v24;
  *(a9 + 52) = v25;
  *(a9 + 60) = v26;
  *(a9 + 68) = v27;
  return result;
}

float sub_18AE95BA0@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v21 = 1.0 - a10;
  v13 = (1.0 - a10) * *(v10 + 48) + *(a1 + 48) * a10;
  v14 = 1.0 - a10;
  v15 = a10;
  v23 = vaddq_f64(vmulq_n_f64(*(v10 + 16), 1.0 - a10), vmulq_n_f64(*(a1 + 16), a10));
  v24 = vaddq_f64(vmulq_n_f64(*v10, 1.0 - a10), vmulq_n_f64(*a1, a10));
  v22 = vaddq_f64(vmulq_n_f64(*(v10 + 32), 1.0 - a10), vmulq_n_f64(*(a1 + 32), a10));
  sub_18AE9582C(a1 + 56, a2, a3, a4, a5, a6, a7, a8, v25, a10, v22.f64[0]);
  result = (*(v10 + 128) * v14) + (*(a1 + 128) * v15);
  v17 = v21 * *(v10 + 136) + *(a1 + 136) * a10;
  *a9 = v24;
  *(a9 + 16) = v23;
  *(a9 + 32) = v22;
  *(a9 + 48) = v13;
  v18 = v25[0];
  *(a9 + 72) = v25[1];
  v19 = *v26;
  *(a9 + 88) = v25[2];
  *(a9 + 104) = v19;
  *(a9 + 117) = *&v26[13];
  *(a9 + 56) = v18;
  *(a9 + 128) = result;
  *(a9 + 136) = v17;
  return result;
}

uint64_t sub_18AE95CCC(float a1, double a2, float a3, float a4, double a5, float a6, float a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *&v30[8] = a8;
  *&v30[9] = a4;
  v31 = a5;
  v30[6] = a17;
  *&v30[7] = a3;
  v20 = sub_18AFCCCF4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30[3] = a6;
  *&v30[4] = a7;
  sub_18AFCCE24();
  v25 = v24;
  *&v30[5] = a1;
  sub_18AFCCE24();
  v26 = 1.0 - v31;
  v27 = v31;
  *&v31 = (v25 * v26) + (v28 * v27);
  sub_18AFCCE54();
  sub_18AFCCE54();
  sub_18AFCCE34();
  sub_18AFCCE34();
  (*(v21 + 104))(v23, *MEMORY[0x1E69814D8], v20);
  return sub_18AFCCDE4();
}

float32x2_t sub_18AE95ED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = vmulq_n_f64(*a1, a3);
  v5 = vaddq_f64(vmulq_n_f64(*v3, 1.0 - a3), v4);
  *v4.f64 = 1.0 - a3;
  v6 = vaddq_f64(vmulq_n_f64(*(v3 + 16), 1.0 - a3), vmulq_n_f64(*(a1 + 16), a3));
  *a2 = v5;
  *(a2 + 16) = v6;
  v7 = vmulq_n_f64(*(v3 + 32), 1.0 - a3);
  v8 = vmulq_n_f64(*(a1 + 32), a3);
  *&a3 = a3;
  v9 = vaddq_f64(v7, v8);
  *&v8.f64[0] = vdupq_lane_s32(*&v4.f64[0], 0).u64[0];
  v10 = vmulq_n_f32(*(v3 + 48), *v4.f64);
  *&v4.f64[0] = vdupq_lane_s32(*&a3, 0).u64[0];
  v11 = vaddq_f32(v10, vmulq_n_f32(*(a1 + 48), *&a3));
  *(a2 + 32) = v9;
  *(a2 + 48) = v11;
  result = vadd_f32(vmul_f32(*(v3 + 64), *&v8.f64[0]), vmul_f32(*(a1 + 64), *&v4.f64[0]));
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_18AE95F54(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_18AE95F9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v12 = (1.0 - a10) * *(v10 + 16) + *(a1 + 16) * a10;
  v13 = 1.0 - a10;
  v14 = a10;
  v15 = (*(v10 + 32) * v13) + (*(a1 + 32) * v14);
  v16 = (a1 + 105);
  v17 = vadd_f32(vmul_n_f32(*(v10 + 24), v13), vmul_n_f32(*(a1 + 24), v14));
  v24 = vaddq_f64(vmulq_n_f64(*v10, 1.0 - a10), vmulq_n_f64(*a1, a10));
  sub_18AE9582C(a1 + 36, a2, a3, a4, a5, a6, a7, a8, v25, a10, v24.f64[0]);
  if (a10 >= 0.5)
  {
    v18 = v16;
  }

  else
  {
    v18 = (v10 + 105);
  }

  v19 = *v18;
  *a9 = v24;
  *(a9 + 16) = v12;
  *(a9 + 24) = v17;
  *(a9 + 32) = v15;
  v20 = v25[0];
  *(a9 + 52) = v25[1];
  result = *&v26;
  v22 = *v27;
  *(a9 + 68) = v26;
  *(a9 + 84) = v22;
  *(a9 + 97) = *&v27[13];
  *(a9 + 36) = v20;
  *(a9 + 105) = v19;
  return result;
}

unint64_t sub_18AE960A0()
{
  result = qword_1ED56A628;
  if (!qword_1ED56A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A628);
  }

  return result;
}

__n128 __swift_memcpy69_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18AE96148(double *a1, double *a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BC18);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_15;
  }

  v15 = v12;
  v16 = _s11EnvironmentVMa();
  if ((sub_18AFCBB24() & 1) == 0 || (sub_18AFCBB24() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = v16[7];
  if (*(a1 + v17 + 16))
  {
    if ((*(a2 + v17 + 16) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(a2 + v17 + 16) & 1) != 0 || (sub_18AFCCE14() & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = v16[8];
  v19 = *(v15 + 48);
  sub_18AE966BC(a1 + v18, v14);
  sub_18AE966BC(a2 + v18, &v14[v19]);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v19], 1, v4) == 1)
    {
      sub_18AE7BA80(v14, &qword_1EA99BBF0);
      goto LABEL_18;
    }

LABEL_14:
    sub_18AE7BA80(v14, &qword_1EA99BC18);
    goto LABEL_15;
  }

  sub_18AE966BC(v14, v10);
  if (v20(&v14[v19], 1, v4) == 1)
  {
    sub_18AFA89F4(v10);
    goto LABEL_14;
  }

  sub_18AFA8990(&v14[v19], v7);
  v23 = _s13DesignLibrary21GlassMaterialProviderV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_18AFA89F4(v7);
  sub_18AFA89F4(v10);
  sub_18AE7BA80(v14, &qword_1EA99BBF0);
  if (!v23)
  {
    goto LABEL_15;
  }

LABEL_18:
  LOBYTE(v21) = 0;
  v24 = v16[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24);
  v27 = (a2 + v24);
  if (v26 == *v27 && v25[1] == v27[1])
  {
    LOBYTE(v21) = *(v27 + 24);
    if (v25[3])
    {
      if (!*(v27 + 24))
      {
        return v21 & 1;
      }
    }

    else
    {
      if (v25[2] != v27[2])
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        goto LABEL_15;
      }
    }

    v28 = v16[10];
    v29 = (a1 + v28);
    v30 = *(a1 + v28 + 4);
    v31 = (a2 + v28);
    v21 = *(a2 + v28 + 4);
    if (v30)
    {
      if (!v21)
      {
        return v21 & 1;
      }
    }

    else
    {
      if (*v29 != *v31)
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        goto LABEL_15;
      }
    }

    v32 = v16[11];
    v33 = (a1 + v32);
    v34 = *(a1 + v32 + 25);
    v35 = a2 + v32;
    v36 = *(a2 + v32 + 25);
    if (v34)
    {
      goto LABEL_33;
    }

    if (v36)
    {
      goto LABEL_15;
    }

    v41 = v33[2];
    v42 = *(v35 + 1);
    v36 = v35[24];
    if (v33[1])
    {
      if ((v42 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v42 & 1 | (*v33 != *v35))
    {
      goto LABEL_15;
    }

    if (v33[3])
    {
LABEL_33:
      if ((v36 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      LOBYTE(v21) = 0;
      if ((v35[24] & 1) != 0 || v41 != *(v35 + 2))
      {
        return v21 & 1;
      }
    }

    if (*(a1 + v16[12]) != *(a2 + v16[12]) || *(a1 + v16[13]) != *(a2 + v16[13]) || *(a1 + v16[14]) != *(a2 + v16[14]) || *(a1 + v16[15]) != *(a2 + v16[15]) || *(a1 + v16[16]) != *(a2 + v16[16]) || *(a1 + v16[17]) != *(a2 + v16[17]) || *(a1 + v16[18]) != *(a2 + v16[18]) || *(a1 + v16[19]) != *(a2 + v16[19]) || *(a1 + v16[20]) != *(a2 + v16[20]) || *(a1 + v16[21]) != *(a2 + v16[21]))
    {
      goto LABEL_15;
    }

    v37 = v16[22];
    v38 = (a1 + v37);
    v39 = *(a1 + v37 + 5);
    v40 = (a2 + v37);
    if (v39)
    {
      if (*(v40 + 5))
      {
        goto LABEL_46;
      }
    }

    else if ((*(v40 + 5) & 1) == 0)
    {
      v43 = *v38 | (*(v38 + 4) << 32);
      v44 = *v40 | (*(v40 + 4) << 32);
      if ((v43 & 0x100000000) == 0)
      {
        if ((v44 & 0x100000000) != 0 || *&v43 != *&v44)
        {
          goto LABEL_15;
        }

LABEL_46:
        LOBYTE(v21) = *(a1 + v16[23]) ^ *(a2 + v16[23]) ^ 1;
        return v21 & 1;
      }

      if ((v44 & 0x100000000) != 0)
      {
        goto LABEL_46;
      }
    }

LABEL_15:
    LOBYTE(v21) = 0;
  }

  return v21 & 1;
}

uint64_t sub_18AE966BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.glassMaterialContainerStyle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18AE966BC(a1, &v5 - v3);
  sub_18AFAB8BC();
  sub_18AFCC494();
  return sub_18AE967D4(a1);
}

uint64_t sub_18AE967D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_18AE96860()
{
  result = qword_1ED56ADB0;
  if (!qword_1ED56ADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99BBF0);
    sub_18AE968E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56ADB0);
  }

  return result;
}

unint64_t sub_18AE968E4()
{
  result = qword_1ED56ADB8;
  if (!qword_1ED56ADB8)
  {
    type metadata accessor for GlassMaterialProvider.ResolvedStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56ADB8);
  }

  return result;
}

uint64_t sub_18AE96968(uint64_t a1)
{
  v2 = sub_18AFCCED4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = v31 - v7;
  v35 = sub_18AE96C3C(MEMORY[0x1E69E7CC0]);
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7D0);
  sub_18AFCDD94();
  if (v8)
  {
    v33 = (v3 + 32);
    v31[1] = v3 + 40;
    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *(i - 1);
      v36 = *i;
      v37 = *(i + 4);
      v11 = v32;
      sub_18AFCCEE4();
      v12 = *v33;
      v13 = v6;
      v14 = v11;
      v15 = v2;
      (*v33)(v6, v14, v2);
      v16 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v16;
      v18 = sub_18AE98658(v10);
      v20 = *(v16 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (*(v16 + 24) >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = v18;
          sub_18AE9A7D8();
          v18 = v29;
        }
      }

      else
      {
        sub_18AFC0624(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_18AE98658(v10);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_18;
        }
      }

      v2 = v15;
      v26 = v34;
      if (v24)
      {
        v6 = v13;
        (*(v3 + 40))(v34[7] + *(v3 + 72) * v18, v13, v15);
      }

      else
      {
        v34[(v18 >> 6) + 8] |= 1 << v18;
        *(v26[6] + 8 * v18) = v10;
        v6 = v13;
        v12((v26[7] + *(v3 + 72) * v18), v13, v15);
        v27 = v26[2];
        v22 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        v26[2] = v28;
      }

      v35 = v26;
      if (!--v8)
      {
        return v26;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_18AFCE274();
    __break(1u);
  }

  else
  {
    return v35;
  }

  return result;
}

unint64_t sub_18AE96C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A0);
    v7 = sub_18AFCE224();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_18AE83A40(v9, v5, &qword_1EA99BCB0);
      v11 = *v5;
      result = sub_18AE98658(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_18AFCCED4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18AE96E30()
{
  result = qword_1ED56A638;
  if (!qword_1ED56A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A638);
  }

  return result;
}

uint64_t sub_18AE96EAC@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_18AFCD2B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  (*(v5 + 16))(&v19 - v9, a1, v4);
  sub_18AFCD224();
  sub_18AE8C130(&qword_1EA99BDB0, MEMORY[0x1E69818A0]);
  v11 = sub_18AFCDDF4();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    v12(a1, v4);
    result = (v12)(v10, v4);
    v14 = 0;
  }

  else
  {
    sub_18AFCD214();
    v15 = sub_18AFCDDF4();
    v12(v8, v4);
    if (v15)
    {
      v12(a1, v4);
      result = (v12)(v10, v4);
      v14 = 1;
    }

    else
    {
      sub_18AFCD234();
      v16 = sub_18AFCDDF4();
      v12(v8, v4);
      if (v16)
      {
        v12(a1, v4);
        result = (v12)(v10, v4);
        v14 = 2;
      }

      else
      {
        sub_18AFCD284();
        v17 = sub_18AFCDDF4();
        v12(v8, v4);
        if (v17)
        {
          v12(a1, v4);
          result = (v12)(v10, v4);
          v14 = 3;
        }

        else
        {
          sub_18AFCD264();
          v18 = sub_18AFCDDF4();
          v12(a1, v4);
          v12(v8, v4);
          result = (v12)(v10, v4);
          if (v18)
          {
            v14 = 4;
          }

          else
          {
            v14 = 0;
          }
        }
      }
    }
  }

  *a2 = v14;
  return result;
}

double sub_18AE971F4()
{
  result = 0.0;
  xmmword_1ED56C8F0 = xmmword_18AFE34E0;
  return result;
}

uint64_t sub_18AE97208(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_18AFCD774();
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_18AE975A8(0, v9, 0);
  v10 = v23;
  v16 = v6 + 32;
  for (i = (a3 + 56); ; i += 8)
  {
    v12 = *i;
    v20 = *(i - 3);
    v21 = *(i - 1);
    v22 = v12;
    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_18AE975A8(v13 > 1, v14 + 1, 1);
      v10 = v23;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

size_t sub_18AE973CC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  v10 = *(sub_18AFCD774() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_18AFCD774() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_18AE975A8(size_t a1, int64_t a2, char a3)
{
  result = sub_18AE973CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_18AE975C8()
{
  result = qword_1ED56A620;
  if (!qword_1ED56A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A620);
  }

  return result;
}

unint64_t sub_18AE97620()
{
  result = qword_1ED56A610;
  if (!qword_1ED56A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A610);
  }

  return result;
}

float32x4_t sub_18AE97674@<Q0>(float32x4_t *a1@<X8>, __int32 a2@<S3>)
{
  sub_18AFCCE24();
  v5 = v4;
  sub_18AFCCE54();
  v7 = v6;
  sub_18AFCCE34();
  *v8.i32 = 1.0 - *&a2;
  v9 = v2[1];
  v10 = v8;
  v10.i32[1] = a2;
  v11 = vzip1q_s32(v10, v10);
  v11.f32[2] = 1.0 - *&a2;
  v9.i64[1] = v2[1].u32[2];
  v12 = vmulq_f32(v11, v9);
  v13 = vdupq_laneq_s32(v12, 3);
  v14 = v13;
  v14.f32[0] = v5 * *&a2;
  v14.f32[3] = (1.0 - *&a2) * v2[1].f32[3];
  *a1 = vaddq_f32(v13, vmulq_n_f32(*v2, 1.0 - *&a2));
  a1[1] = vaddq_f32(v12, v14);
  v15 = vdupq_lane_s32(__PAIR64__(v7 * *&a2, v13.u32[0]), 0);
  v15.f32[1] = v7 * *&a2;
  v16 = v13;
  *&v16.i32[1] = v17 * *&a2;
  v18 = vaddq_f32(vzip1q_s32(v16, vdupq_lane_s32(*v16.i8, 0)), vmulq_n_f32(v2[3], 1.0 - *&a2));
  a1[2] = vaddq_f32(v15, vmulq_n_f32(v2[2], 1.0 - *&a2));
  a1[3] = v18;
  v13.i32[1] = a2;
  result = vaddq_f32(vzip1q_s32(v13, vdupq_lane_s32(*v13.f32, 0)), vmulq_n_f32(v2[4], 1.0 - *&a2));
  a1[4] = result;
  return result;
}

char *sub_18AE977B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

double sub_18AE978B4()
{
  sub_18AFCCE24();
  v1 = v0;
  sub_18AFCCE54();
  v3 = v2;
  sub_18AFCCE34();
  if (v3 >= v1)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v1 > v3)
  {
    v7 = v1;
  }

  else
  {
    v7 = v3;
  }

  if (v7 > v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = 0.0;
  if (vabds_f32(v8, v6) >= 0.00034527)
  {
    v10 = v8 - v6;
    if (v8 == v1)
    {
      v11 = 0.0;
      if (v3 < v4)
      {
        v11 = 6.0;
      }

      v9 = v11 + ((v3 - v4) / v10);
    }

    else
    {
      if (v8 == v3)
      {
        v12 = (v4 - v1) / v10;
        v13 = 2.0;
      }

      else
      {
        v12 = (v1 - v3) / v10;
        v13 = 4.0;
      }

      v9 = v12 + v13;
    }
  }

  return (v9 * 60.0) * 0.0174532925;
}

unint64_t sub_18AE97A00()
{
  result = qword_1ED56A618;
  if (!qword_1ED56A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A618);
  }

  return result;
}

uint64_t sub_18AE97A54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18AE97AA0(double a1, float a2, float a3)
{
  v6 = sub_18AFCCCF4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 0.0)
  {
    v11 = a1 * 57.2957795 / 360.0;
    if (a3 < 0.5)
    {
      v12 = (a2 + 1.0) * a3;
    }

    else
    {
      v12 = (a2 + a3) - (a2 * a3);
    }

    v13 = (a3 + a3) - v12;
    sub_18AE97D4C(v13, v12, v11 + 0.33333);
    sub_18AE97D4C(v13, v12, v11);
    v8.n128_f32[0] = sub_18AE97D4C(v13, v12, v11 + -0.33333);
    if (v8.n128_f32[0] < 0.0)
    {
      v8.n128_f32[0] = 0.0;
    }
  }

  (*(v7 + 104))(v10, *MEMORY[0x1E69814D8], v6, v8);
  return sub_18AFCCDE4();
}

uint64_t _s13DesignLibrary21GlassMaterialProviderV8ResolvedV14AnimatableDataV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a2 + 8);
  v5 = *(a2 + 32);
  v6 = sub_18AF5CA0C(*a1, *a2);
  v7 = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    sub_18AE960A0();
    if (sub_18AFCBDF4())
    {
      v7 = sub_18AE97DE0(v3, v5);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

float sub_18AE97D4C(float result, float a2, float a3)
{
  if (a3 < 0.0)
  {
    a3 = a3 + 1.0;
  }

  if (a3 > 1.0)
  {
    a3 = a3 + -1.0;
  }

  if (a3 < 0.16667)
  {
    v3 = (a2 - result) * 6.0;
    return (v3 * a3) + result;
  }

  if (a3 < 0.5)
  {
    return a2;
  }

  if (a3 < 0.66667)
  {
    v3 = (a2 - result) * (0.66667 - a3);
    a3 = 6.0;
    return (v3 * a3) + result;
  }

  return result;
}

uint64_t sub_18AE97DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFCCED4();
  v54 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v48 = (&v45 - v11);
  v49 = v12;
  v13 = 0;
  v46 = a1;
  v14 = *(a1 + 64);
  v45 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v50 = v54 + 16;
  v51 = (v54 + 32);
  v47 = (v54 + 8);
  while (1)
  {
    v19 = v49;
    if (!v17)
    {
      break;
    }

    v52 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
    v25 = *(*(v46 + 48) + 8 * v20);
    v27 = v53;
    v26 = v54;
    (*(v54 + 16))(v53, *(v46 + 56) + *(v54 + 72) * v20, v4);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0);
    v29 = *(v28 + 48);
    *v19 = v25;
    (*(v26 + 32))(&v19[v29], v27, v4);
    (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
    v30 = v19;
    v31 = v48;
    sub_18AE9A768(v30, v48, &qword_1EA99B7A8);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0);
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    v34 = v33 == 1;
    if (v33 == 1)
    {
      return v34;
    }

    v35 = *(v32 + 48);
    v36 = *v31;
    (*v51)(v55, v31 + v35, v4);
    v37 = sub_18AE98658(v36);
    if ((v38 & 1) == 0)
    {
      (*v47)(v55, v4);
      return 0;
    }

    v39 = v53;
    v40 = v54;
    (*(v54 + 16))(v53, *(v56 + 56) + *(v54 + 72) * v37, v4);
    sub_18AE97A54(&qword_1EA9978D0, MEMORY[0x1E6981598]);
    v41 = v55;
    v42 = sub_18AFCDDF4();
    v43 = *(v40 + 8);
    v43(v39, v4);
    result = (v43)(v41, v4);
    v17 = v52;
    if ((v42 & 1) == 0)
    {
      return v34;
    }
  }

  if (v18 <= v13 + 1)
  {
    v21 = v13 + 1;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0);
      (*(*(v44 - 8) + 56))(v19, 1, 1, v44);
      v52 = 0;
      v13 = v22;
      goto LABEL_17;
    }

    v24 = *(v45 + 8 * v23);
    ++v13;
    if (v24)
    {
      v52 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v13 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_18AE982D0@<Q0>(_OWORD *a1@<X8>)
{
  sub_18AFCCE24();
  sub_18AFCCE24();
  sub_18AFCCE54();
  sub_18AFCCE54();
  sub_18AFCCE34();
  sub_18AFCCE34();
  sub_18AFCBCB4();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_18AE984DC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_18AE98658(uint64_t a1)
{
  sub_18AFCE294();
  MEMORY[0x18CFED610](a1);
  v2 = sub_18AFCE2E4();

  return sub_18AE986C4(a1, v2);
}

unint64_t sub_18AE986C4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t static GlassMaterialProvider.Resolved.AnimatableData.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_18AFB3680(*a1, *a2);
  v12 = v11;
  result = sub_18AE987C8(v6, v9);
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v4 - v7;
  *(a3 + 24) = v5 - v8;
  *(a3 + 32) = result;
  return result;
}

uint64_t sub_18AE987C8(void *a1, uint64_t a2)
{
  v4 = sub_18AFCCED4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v92 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v87 = &v81 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v86 = &v81 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v85 = &v81 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v90 = (&v81 - v22);
  v23 = *(a2 + 64);
  v82 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v81 = (v24 + 63) >> 6;
  v91 = v5 + 16;
  v97 = (v5 + 32);
  v94 = (v5 + 8);
  v83 = (v5 + 40);

  v88 = a2;

  v27 = 0;
  v89 = v16;
  v95 = v21;
  if (v26)
  {
    while (1)
    {
      v28 = v16;
      v29 = v27;
LABEL_13:
      v32 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v33 = v32 | (v29 << 6);
      v34 = *(*(v88 + 48) + 8 * v33);
      v35 = v93;
      (*(v5 + 16))(v93, *(v88 + 56) + *(v5 + 72) * v33, v4);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0);
      v37 = *(v36 + 48);
      v38 = v95;
      *v95 = v34;
      v21 = v38;
      (*(v5 + 32))(&v38[v37], v35, v4);
      (*(*(v36 - 8) + 56))(v21, 0, 1, v36);
      v31 = v29;
LABEL_14:
      v39 = v90;
      sub_18AE9A768(v21, v90, &qword_1EA99B7A8);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
      {

        return a1;
      }

      v96 = v31;
      v41 = *v39;
      v42 = v28;
      v43 = *v97;
      (*v97)(v42, v39 + *(v40 + 48), v4);
      if (a1[2])
      {
        v44 = sub_18AE98658(v41);
        if (v45)
        {
          break;
        }
      }

      v58 = v5;
      v59 = v93;
      sub_18AFCCEB4();
      v60 = v87;
      sub_18AFCCE94();
      v61 = *v94;
      (*v94)(v59, v4);
      v62 = v4;
      v43(v92, v60, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = a1;
      v65 = sub_18AE98658(v41);
      v66 = a1[2];
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_44;
      }

      v69 = v64;
      if (a1[3] >= v68)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18AE9A7D8();
        }
      }

      else
      {
        sub_18AFC0624(v68, isUniquelyReferenced_nonNull_native);
        v70 = sub_18AE98658(v41);
        if ((v69 & 1) != (v71 & 1))
        {
          goto LABEL_48;
        }

        v65 = v70;
      }

      v4 = v62;
      a1 = v98;
      v5 = v58;
      if ((v69 & 1) == 0)
      {
        v98[(v65 >> 6) + 8] |= 1 << v65;
        *(a1[6] + 8 * v65) = v41;
        v43((a1[7] + *(v58 + 72) * v65), v92, v4);
        v16 = v89;
        v61(v89, v4);
        v72 = a1[2];
        v54 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        v21 = v95;
        if (v54)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      (*(v58 + 40))(v98[7] + *(v58 + 72) * v65, v92, v4);
      v16 = v89;
      v61(v89, v4);
      v21 = v95;
      v27 = v96;
LABEL_40:
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    v46 = a1[7];
    v84 = *(v5 + 72);
    v47 = *(v5 + 16);
    v48 = v85;
    v47(v85, v46 + v84 * v44, v4);
    MEMORY[0x18CFEC210](v48, v42);
    v47(v86, v48, v4);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v98 = a1;
    v50 = sub_18AE98658(v41);
    v52 = a1[2];
    v53 = (v51 & 1) == 0;
    v54 = __OFADD__(v52, v53);
    v55 = v52 + v53;
    if (v54)
    {
      goto LABEL_46;
    }

    v56 = v51;
    if (a1[3] >= v55)
    {
      v21 = v95;
      if ((v49 & 1) == 0)
      {
        v79 = v50;
        sub_18AE9A7D8();
        v50 = v79;
      }
    }

    else
    {
      sub_18AFC0624(v55, v49);
      v50 = sub_18AE98658(v41);
      v21 = v95;
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_48;
      }
    }

    v16 = v89;
    v75 = v84;
    a1 = v98;
    if (v56)
    {
      (*v83)(v98[7] + v50 * v84, v86, v4);
      v76 = *v94;
      (*v94)(v85, v4);
      v76(v16, v4);
    }

    else
    {
      v98[(v50 >> 6) + 8] |= 1 << v50;
      *(a1[6] + 8 * v50) = v41;
      v43((a1[7] + v50 * v75), v86, v4);
      v77 = *v94;
      (*v94)(v85, v4);
      v77(v16, v4);
      v78 = a1[2];
      v54 = __OFADD__(v78, 1);
      v73 = v78 + 1;
      if (v54)
      {
        goto LABEL_47;
      }

LABEL_38:
      a1[2] = v73;
    }

    v27 = v96;
    goto LABEL_40;
  }

LABEL_5:
  if (v81 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v81;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v81)
    {
      v28 = v16;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0);
      (*(*(v74 - 8) + 56))(v21, 1, 1, v74);
      v26 = 0;
      goto LABEL_14;
    }

    v26 = *(v82 + 8 * v29);
    ++v27;
    if (v26)
    {
      v28 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_18AFCE274();
  __break(1u);
  return result;
}

uint64_t sub_18AE9902C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = sub_18AFB3680(*a1, *a2);
  v11 = v10;
  v12 = sub_18AE987C8(v8, v5);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v6 - v3;
  *(a1 + 24) = v7 - v4;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_18AE990E0(uint64_t a1)
{
  v2 = sub_18AFCCED4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0);
  v6 = MEMORY[0x1EEE9AC00](v28);
  v27 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - v8;
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v26[1] = v3 + 32;
  v26[2] = v3 + 16;
  v26[0] = v3 + 8;
  v29 = a1;

  v16 = 0;
  for (i = 0.0; v13; i = i + v25)
  {
    v18 = v16;
LABEL_9:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v28;
    v22 = *(*(v29 + 48) + 8 * v20);
    (*(v3 + 16))(&v9[*(v28 + 48)], *(v29 + 56) + *(v3 + 72) * v20, v2);
    *v9 = v22;
    v23 = v27;
    sub_18AE9ABC4(v9, v27);
    (*(v3 + 32))(v5, v23 + *(v21 + 48), v2);
    sub_18AFCCE74();
    v25 = v24;
    (*(v3 + 8))(v5, v2);
    result = sub_18AE9AC34(v9);
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall GlassMaterialProvider.Resolved.AnimatableData.scale(by:)(Swift::Double by)
{
  v42 = *&by;
  v40 = sub_18AFCCED4();
  v2 = *(v40 - 8);
  v3 = MEMORY[0x1EEE9AC00](v40);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v30 - v5;
  sub_18AFB0CFC(*&v42);
  *(v1 + 16) = vmulq_n_f64(*(v1 + 16), *&v42);
  v31 = v1;
  v6 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A0);
  v7 = sub_18AFCE204();
  v8 = v7;
  v9 = 0;
  v11 = v6 + 64;
  v10 = *(v6 + 64);
  v41 = v6;
  v12 = 1 << *(v6 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  v34 = v2 + 8;
  v35 = v2 + 16;
  v39 = v2;
  v32 = v2 + 32;
  v33 = v7 + 64;
  v36 = v7;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v43 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v9 << 6);
      v20 = v40;
      v21 = *(v41 + 56);
      v22 = *(*(v41 + 48) + 8 * v19);
      v44 = *(v2 + 72) * v19;
      v45 = v22;
      v23 = *(v2 + 16);
      v24 = v37;
      v23(v37, v21 + v44, v40);
      v25 = v38;
      v23(v38, v24, v20);
      sub_18AFCCEC4();
      (*(v2 + 8))(v24, v20);
      *(v33 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v8 = v36;
      v26 = v44;
      *(*(v36 + 48) + 8 * v19) = v45;
      (*(v2 + 32))(*(v8 + 56) + v26, v25, v20);
      v27 = *(v8 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v8 + 16) = v29;
      v14 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        *(v31 + 32) = v8;
        return;
      }

      v18 = *(v11 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_18AE99654(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = a1[4];

  *v1 = v3;
  *(v1 + 8) = v4;
  sub_18AFCDC94();
  v6 = sub_18AE996F0(v5);

  *(v2 + 88) = v6;
  return result;
}

uint64_t sub_18AE996F0(uint64_t a1)
{
  v31 = sub_18AFCCED4();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_18AFCCCF4();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_18AE977B4(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v8 = *(a1 + 16);
  if (!v8 || (v6 = sub_18AE9AA40(*(a1 + 16), 0), v9 = sub_18AE9AAC4(&v35, v6 + 4, v8, a1), v29 = v38, v30 = v37, , sub_18AE9A7D0(), v9 == v8))
  {
    *&v35 = v6;
    sub_18AE99A94(&v35);
    v10 = v35;
    v11 = *(v35 + 16);
    if (!v11)
    {
LABEL_10:

      return v7;
    }

    LODWORD(v30) = *MEMORY[0x1E69814D8];
    v12 = *(v34 + 104);
    v34 += 104;
    v28 = v33 + 16;
    v29 = v12;
    v8 = 32;
    while (1)
    {
      v13 = *(v10 + v8);
      v29(v5, v30, v32);
      sub_18AFCCDE4();
      *&v35 = __PAIR64__(v15, v14);
      *(&v35 + 1) = __PAIR64__(v17, v16);
      LODWORD(v36) = 2143289344;
      if (!*(a1 + 16))
      {
        break;
      }

      v18 = sub_18AE98658(v13);
      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }

      (*(v33 + 16))(v3, *(a1 + 56) + *(v33 + 72) * v18, v31);
      sub_18AFCCEF4();
      v20 = v35;
      v21 = v36;
      v23 = *(v7 + 2);
      v22 = *(v7 + 3);
      if (v23 >= v22 >> 1)
      {
        v27 = v35;
        v25 = sub_18AE977B4((v22 > 1), v23 + 1, 1, v7);
        v20 = v27;
        v7 = v25;
      }

      *(v7 + 2) = v23 + 1;
      v24 = &v7[32 * v23];
      *(v24 + 4) = v13;
      *(v24 + 40) = v20;
      *(v24 + 14) = v21;
      v8 += 8;
      if (!--v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

double GlassMaterialProvider.Resolved.AnimatableData.magnitudeSquared.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_18AFB0F84(*v0, *(v0 + 8));
  v5 = v4 + v1 * v1 + v2 * v2;
  sub_18AE990E0(v3);
  return v5 + v6;
}

uint64_t sub_18AE99A94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18AE99A80(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_18AFCE244();
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
      v7 = sub_18AFCDEB4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_18AF5D220(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_18AE99BC8(double a1)
{
  sub_18AFB0CFC(a1);
  *(v1 + 16) = vmulq_n_f64(*(v1 + 16), a1);
  v2 = sub_18AF5D974(*(v1 + 32));

  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_18AE99C2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = sub_18AFB3DC4(*a1, *a2);
  v11 = v10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v8;
  sub_18AE99F20(v5, sub_18AE9AC9C, 0, isUniquelyReferenced_nonNull_native, &v15);

  v14 = v15;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v3 + v6;
  *(a1 + 24) = v4 + v7;
  *(a1 + 32) = v14;
  return result;
}

char *sub_18AE99D2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t static GlassMaterialProvider.Resolved.AnimatableData.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_18AFB3DC4(*a1, *a2);
  v12 = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v6;
  sub_18AE99F20(v9, sub_18AE9AC9C, 0, isUniquelyReferenced_nonNull_native, &v16);

  v15 = v16;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v4 + v7;
  *(a3 + 24) = v5 + v8;
  *(a3 + 32) = v15;
  return result;
}

uint64_t sub_18AE99F20(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v64 = a5;
  v9 = sub_18AFCCED4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v52 = v50 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v56 = v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BD18);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v50 - v17);
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 64);
  v22 = -v19;
  v57 = a1;
  v58 = a1 + 64;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v59 = v20;
  v60 = 0;
  v61 = v23 & v21;
  v62 = a2;
  v63 = a3;
  v24 = (v10 + 32);
  v50[3] = v10 + 8;
  v50[4] = v10 + 16;
  v55 = v10;
  v50[2] = v10 + 40;

  v50[0] = a3;

  v54 = v18;
  v51 = (v10 + 32);
  while (1)
  {
    sub_18AE9A34C(v18);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCB0);
    if ((*(*(v33 - 8) + 48))(v18, 1, v33) == 1)
    {
      sub_18AE9A7D0();
    }

    v34 = *v18;
    v35 = *v24;
    (*v24)(v56, v18 + *(v33 + 48), v9);
    v36 = *v64;
    v38 = sub_18AE98658(v34);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v36[3] >= v41)
    {
      if ((a4 & 1) == 0)
      {
        sub_18AE9A7D8();
      }
    }

    else
    {
      sub_18AFC0624(v41, a4 & 1);
      v43 = sub_18AE98658(v34);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_20;
      }

      v38 = v43;
    }

    v45 = *v64;
    if (v42)
    {
      v25 = v55;
      v26 = *(v55 + 72) * v38;
      v27 = v53;
      (*(v55 + 16))(v53, v45[7] + v26, v9);
      v28 = v52;
      v29 = v9;
      v30 = v56;
      sub_18AFCCE84();
      v31 = *(v25 + 8);
      v31(v27, v29);
      v32 = v30;
      v9 = v29;
      v31(v32, v29);
      v24 = v51;
      (*(v25 + 40))(v45[7] + v26, v28, v29);
    }

    else
    {
      v45[(v38 >> 6) + 8] |= 1 << v38;
      *(v45[6] + 8 * v38) = v34;
      v35((v45[7] + *(v55 + 72) * v38), v56, v9);
      v46 = v45[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_19;
      }

      v45[2] = v48;
    }

    a4 = 1;
    v18 = v54;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_18AFCE274();
  __break(1u);
  return result;
}

uint64_t sub_18AE9A34C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - v4;
  v5 = sub_18AFCCED4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v45 = a1;
  v43 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = *(*(v15 + 48) + 8 * v24);
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v5);
    v27 = v42;
    v28 = *(v42 + 48);
    *v14 = v25;
    v29 = v8;
    v30 = v27;
    (*(v6 + 32))(&v14[v28], v29, v5);
    v31 = v41;
    (*(v41 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v32 = v44;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v26;
    v33 = v1[5];
    sub_18AE9A768(v14, v32, &qword_1EA99B7A8);
    v34 = 1;
    v35 = (*(v31 + 48))(v32, 1, v30);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v32;
      v38 = v40;
      sub_18AE9A768(v37, v40, &qword_1EA99B7B0);
      v33(v38);
      sub_18AE7BA80(v38, &qword_1EA99B7B0);
      v34 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCB0);
    return (*(*(v39 - 8) + 56))(v36, v34, 1, v39);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v31 = v41;
        v30 = v42;
        (*(v41 + 56))(&v40 - v13, 1, 1, v42);
        v26 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

double sub_18AE9A714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_18AFB0F84(*v0, *(v0 + 8));
  v5 = v4 + v1 * v1 + v2 * v2;
  sub_18AE990E0(v3);
  return v5 + v6;
}

uint64_t sub_18AE9A768(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_18AE9A7D8()
{
  v1 = v0;
  v29 = sub_18AFCCED4();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A0);
  v3 = *v0;
  v4 = sub_18AFCE204();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_18AE9AA40(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_18AE9AAC4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_18AE9ABC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE9AC34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AE9AC9C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCB0) + 48);
  v6 = *a1;
  v7 = sub_18AFCCED4();
  result = (*(*(v7 - 8) + 16))(&a2[v5], &a1[v4], v7);
  *a2 = v6;
  return result;
}

unint64_t sub_18AE9ADC0()
{
  result = qword_1ED56A458;
  if (!qword_1ED56A458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED56A458);
  }

  return result;
}

unint64_t sub_18AE9AE0C()
{
  result = qword_1ED56A450;
  if (!qword_1ED56A450)
  {
    sub_18AE9ADC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A450);
  }

  return result;
}

unint64_t sub_18AE9AE8C(uint64_t a1)
{
  sub_18AFCE294();
  type metadata accessor for CFString(0);
  sub_18AECDB68(&qword_1ED56A478, type metadata accessor for CFString);
  sub_18AFCBA24();
  v2 = sub_18AFCE2E4();

  return sub_18AE9AF8C(a1, v2);
}

unint64_t sub_18AE9AF8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_18AECDB68(&qword_1ED56A478, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_18AFCBA14();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_18AE9B098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_18AE9B0F4(uint64_t a1)
{
  v2 = sub_18AFCE044();

  return sub_18AE9B138(a1, v2);
}

unint64_t sub_18AE9B138(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_18AE9ADC0();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_18AFCE054();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_18AE9B1FC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AE9B234(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_18AE9B240(uint64_t result, unsigned int a2)
{
  if (a2 > 0xE1)
  {
    *(result + 4) = 0;
    *result = a2 - 226;
  }

  else if (a2)
  {
    *(result + 5) = a2 + 30;
  }

  return result;
}

uint64_t sub_18AE9B368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9979C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_18AE9B434(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9979C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t _s15HysteresisRangeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15HysteresisRangeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_18AE9B588()
{

  return swift_deallocObject();
}

uint64_t sub_18AE9B5C0()
{
  v1 = type metadata accessor for CABackgroundExtensionView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_18AE9B234(*v2, *(v2 + 8));
  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9979B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_18AFCC024();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18AE9B70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997A08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE9B77C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AE9B7E4()
{
  v1 = sub_18AFCC024();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 104) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18AE9B880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE9B8F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AE9B91C()
{
  type metadata accessor for BadgeDrawing();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9B9C4@<X0>(void *a1@<X8>)
{
  sub_18AEB10A8();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9BA60@<X0>(_BYTE *a1@<X8>)
{
  sub_18AE7A260();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9BAFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC274();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AE9BB54@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEB2440();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9BBF4@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEB23EC();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9BC90@<X0>(BOOL *a1@<X8>)
{
  sub_18AEB2398();
  result = sub_18AFCC484();
  *a1 = v3 > 1u;
  return result;
}

uint64_t sub_18AE9BCF0()
{
  type metadata accessor for MacToolbarButton();
  type metadata accessor for MacPushButton();
  sub_18AFCC624();
  type metadata accessor for MacButtonDestructive();
  type metadata accessor for MacGlassButton();
  sub_18AFCC624();
  sub_18AFCC624();
  sub_18AFCC624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA997B30);
  sub_18AFCC624();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AEAFA34();
  swift_getWitnessTable();
  sub_18AEAFA88();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9BF14()
{
  sub_18AFCC044();
  sub_18AEB1C28();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9BFD0()
{
  type metadata accessor for MacLabeledCheckboxAndRadioPositioned();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9C018(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AE95F54(&qword_1EA997E60, &qword_1EA997E68);

  return MEMORY[0x1EEDDE438](a1, a2, v4);
}

uint64_t sub_18AE9C110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9C1C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9C27C@<X0>(uint64_t a1@<X8>)
{
  sub_18AEB6814();
  result = sub_18AFCC484();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_18AE9C328()
{
  type metadata accessor for MacGroupBox();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA997EC8);
  sub_18AFCC044();
  sub_18AFCE074();
  swift_getWitnessTable();
  type metadata accessor for MacGladeGroupBox();
  sub_18AFCDB34();
  sub_18AFCC624();
  swift_getWitnessTable();
  sub_18AEB6868();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9C4E4()
{
  type metadata accessor for PopUpButton.PopUpButtonBody();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9C530()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for PopUpButton.PopUpButtonBody() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_18AFCC564();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v0 + v3;

  (*(*(v1 - 8) + 8))(v8 + v2[16], v1);
  sub_18AE9B234(*(v8 + v2[17]), *(v8 + v2[17] + 8));
  sub_18AE9B234(*(v8 + v2[18]), *(v8 + v2[18] + 8));
  sub_18AE9B234(*(v8 + v2[19]), *(v8 + v2[19] + 8));
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_18AE9C6F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998098);
  sub_18AEBB824();
  sub_18AFCC6A4();
  sub_18AFCCF94();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  swift_getWitnessTable();
  type metadata accessor for MacToolbarButton();
  type metadata accessor for MacPushButton();
  sub_18AFCC624();
  type metadata accessor for MacToolbarPopUpButton();
  type metadata accessor for MacPopupButton();
  sub_18AFCC624();
  sub_18AFCC624();
  sub_18AFCC044();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9980B8);
  sub_18AEBB924();
  sub_18AFCC6A4();
  sub_18AFCCF94();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for MacToolbarButton();
  type metadata accessor for MacPushButton();
  sub_18AFCC624();
  type metadata accessor for MacToolbarPopUpButton();
  type metadata accessor for MacPopupButton();
  sub_18AFCC624();
  sub_18AFCC624();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9CC04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9CD20()
{

  return swift_deallocObject();
}

uint64_t sub_18AE9CDA8@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEC58D0();
  result = sub_18AFCBF84();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9CEC4@<X0>(uint64_t a1@<X8>)
{
  sub_18AEC57D4();
  result = sub_18AFCBF84();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_18AE9CF78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9982C8);
  sub_18AEBFF3C();
  sub_18AFCC6A4();
  sub_18AFCCF94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998308);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998310);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AEC00A4();
  sub_18AEC0158();
  sub_18AEC02C8();
  type metadata accessor for MacSegmentedControlComposer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998358);
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998360, &qword_1EA998358);
  swift_getWitnessTable();
  sub_18AFCD134();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9D16C()
{
  sub_18AFCC044();
  sub_18AEC4FF0();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9D1D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998368);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998458);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998370, &qword_1EA998368);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998460, &qword_1EA998458);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9D370()
{

  return swift_deallocObject();
}

uint64_t sub_18AE9D3C8()
{
  v1 = *(v0 + 16);
  v2 = sub_18AFCC564();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = type metadata accessor for SegmentedControl();
  v7 = (v5 + *(*(v6 - 1) + 80)) & ~*(*(v6 - 1) + 80);
  (*(v3 + 8))(v0 + v4, v2);
  v8 = v0 + v7;
  sub_18AE9B234(*(v0 + v7), *(v0 + v7 + 8));
  sub_18AE9B234(*(v8 + 16), *(v8 + 24));
  v9 = v6[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_18AFCC5C4();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v8 + v6[13], v1);
  if (*(v8 + v6[15]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18AE9D61C()
{

  return swift_deallocObject();
}

uint64_t sub_18AE9D670@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEC8720();
  result = sub_18AFCC484();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_18AE9D7A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Stepper();
  *a2 = *(a1 + *(result + 40));
  return result;
}

uint64_t sub_18AE9D810@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Stepper();
  *a2 = *(a1 + *(result + 44));
  return result;
}

uint64_t sub_18AE9D870@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Stepper();
  *a2 = *(a1 + *(result + 48));
  return result;
}

uint64_t sub_18AE9D8D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for Stepper();
  *a2 = *(a1 + *(result + 52));
  return result;
}

uint64_t sub_18AE9D930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 2);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18AE9D9EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 2) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9DAA4@<X0>(void *a1@<X8>)
{
  sub_18AECEF04();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9DAF8()
{

  return swift_deallocObject();
}

uint64_t sub_18AE9DB30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC434();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AE9DB88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC364();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AE9DBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_18AE9DD04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18AE9DE98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC3B4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AE9DEF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AFCC1C4();
  *a1 = result;
  return result;
}

uint64_t sub_18AE9DF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 8);
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998770);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9DFFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 8) = a2 + 4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998770);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9E130()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998790);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998798);
  sub_18AE95F54(&qword_1EA997778, &qword_1EA998790);
  sub_18AECF234();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18AE9E200()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9987B8);
  sub_18AE95F54(&qword_1EA9987C0, &qword_1EA9987B8);
  type metadata accessor for MacCombobox();
  type metadata accessor for UniversalTextField();
  sub_18AFCC624();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9E320@<X0>(_BYTE *a1@<X8>)
{
  sub_18AEB2398();
  result = sub_18AFCC484();
  *a1 = v3;
  return result;
}

uint64_t sub_18AE9E3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998868);
  sub_18AFCC044();
  sub_18AED05DC();
  return swift_getWitnessTable();
}

uint64_t sub_18AE9E46C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998948);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998958, &qword_1EA998940);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998970, &qword_1EA998948);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9E6B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18AFCC344();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18AE9E6E0()
{
  type metadata accessor for iOSStepperButton();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998A38);
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998A40);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9E874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9E930(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9EA0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58);
  sub_18AFCBDC4();
  sub_18AFCC624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B68);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58);
  sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998958, &qword_1EA998940);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998BA8, &qword_1EA998B68);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9EE18(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C18);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_18AE9EFA8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997EA0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C18);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_18AE9F14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9F200(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9F2AC()
{
  v1 = type metadata accessor for MacCheckboxAndRadio();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_18AE9B234(*(v2 + 8), *(v2 + 16));
  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_18AFCC5C4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_18AE9B234(*(v2 + *(v1 + 40)), *(v2 + *(v1 + 40) + 8));

  return swift_deallocObject();
}

uint64_t sub_18AE9F4C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AEDF4E4();
  swift_getWitnessTable();
  sub_18AFCD134();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata3();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998EC8);
  sub_18AFCC044();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998F00, &qword_1EA998EC8);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9F738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 1);
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18AE9F7EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 1) = a2 + 4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AE9F8B8()
{
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990D0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990D8);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990E0);
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999108, &qword_1EA9990D0);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999118, &qword_1EA9990D8);
  swift_getWitnessTable();
  sub_18AE95F54(qword_1EA999128, &qword_1EA9990E0);
  return swift_getWitnessTable();
}

uint64_t sub_18AE9FAA4()
{
  type metadata accessor for MacCheckboxAndRadio();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9FBD8()
{
  type metadata accessor for MacCheckboxAndRadio();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9FD0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940);
  sub_18AFCC044();
  type metadata accessor for MacCheckboxAndRadio();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9FE40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940);
  sub_18AFCC044();
  type metadata accessor for MacCheckboxAndRadio();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AE9FF7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE9FFEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9993B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AEA0054()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  sub_18AFCBDC4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993B8);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999040);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C48);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70);
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999038, &qword_1EA999040);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998CA8, &qword_1EA998C48);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA03E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CA0);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58);
  sub_18AFCBDC4();
  sub_18AFCC624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C48);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58);
  sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998C98, &qword_1EA998CA0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998CA8, &qword_1EA998C48);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA07D8()
{
  type metadata accessor for MacStepperButton();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999578);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999580);
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999590, &qword_1EA999580);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA09B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 36)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 48)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_18AEA0AEC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 36)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 48)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_18AEA0C50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993F0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996B8);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996C0);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  sub_18AE95F54(&qword_1EA999420, &qword_1EA9993F0);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA9996C8, &qword_1EA9996B8);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999760, &qword_1EA9996C0);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA1058()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993F0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999860);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996B8);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999868);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999748);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA9996C8, &qword_1EA9996B8);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999888, &qword_1EA999868);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999740, &qword_1EA999748);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA1494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_18AEA15C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18AEA16E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for SwitchSpecs(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18AEA17A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for SwitchSpecs(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18AEA1848@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x18CFEB700]();
  *a1 = result;
  return result;
}

uint64_t sub_18AEA18A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SwitchSpecs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18AEA196C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SwitchSpecs(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_18AEA1A24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9999E8);
  sub_18AEF8D64();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18AEA1B08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999B60);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48);
  sub_18AFCBDC4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999B68);
  sub_18AFCC044();
  type metadata accessor for ResolvedButtonBorderShape(255);
  sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48);
  sub_18AE95F54(&qword_1EA998950, &qword_1EA998938);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999B70, &qword_1EA999B60);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999B78, &qword_1EA999B68);
  swift_getWitnessTable();
  sub_18AEFBFF0(&qword_1EA998BB0, type metadata accessor for ResolvedButtonBorderShape);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70);
  sub_18AFCC044();
  swift_getOpaqueTypeConformance2();
  sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA1F4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CE8);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF0);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF8);
  sub_18AFCC044();
  sub_18AEFF30C();
  swift_getWitnessTable();
  sub_18AFCC5F4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999D48);
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA999D50, &qword_1EA999D48);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  return swift_getWitnessTable();
}

uint64_t sub_18AEA21F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18AEA22BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9986F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = -a2;
  }

  return result;
}

uint64_t sub_18AEA23A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AFCC374();
  *a1 = result;
  return result;
}

uint64_t sub_18AEA23F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AEA2468()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999E60);
  sub_18AFCC044();
  type metadata accessor for MacColorWellButtonEngineering();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  sub_18AFCC044();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  return swift_getWitnessTable();
}

uint64_t sub_18AEA25BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999F58);
  sub_18AFCC044();
  sub_18AF03A64();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  return swift_getWitnessTable();
}

uint64_t sub_18AEA2670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AEA26E8()
{

  sub_18AE9B234(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18AEA272C()
{
  type metadata accessor for MacLinearSliderTrack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A080);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A090);
  type metadata accessor for MacLinearSliderKnob();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A098);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA99A0A0, &qword_1EA99A090);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCE074();
  swift_getTupleTypeMetadata3();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999A18);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA9977A8, &qword_1EA999A18);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18AEA2A48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A0E8);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A0F0);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();

  return swift_getWitnessTable();
}

uint64_t sub_18AEA2B2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A270);
  sub_18AFCC044();
  sub_18AF09E18(&qword_1EA99A280, &qword_1EA99A270, &unk_18AFD7618, sub_18AF09DE8);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA2BE8()
{
  type metadata accessor for MacLinearSliderTrackVertical();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A080);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A3B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A090);
  type metadata accessor for MacLinearSliderKnob();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A098);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA99A0A0, &qword_1EA99A090);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCE074();
  swift_getTupleTypeMetadata3();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999A18);
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA9977A8, &qword_1EA999A18);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA2E3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A0E8);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A0F0);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999A18);
  sub_18AFCC044();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA9977A8, &qword_1EA999A18);
  return swift_getWitnessTable();
}

uint64_t sub_18AEA2F9C()
{

  return swift_deallocObject();
}

uint64_t sub_18AEA2FE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A480);
  sub_18AE95F54(&qword_1EA99A488, &qword_1EA99A480);
  sub_18AFCBDC4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A470);
  sub_18AE95F54(&qword_1EA99A478, &qword_1EA99A470);
  sub_18AFCBDC4();
  sub_18AFCC624();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A460);
  sub_18AE95F54(&qword_1EA99A468, &qword_1EA99A460);
  sub_18AFCBDC4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A450);
  sub_18AE95F54(&qword_1EA99A458, &qword_1EA99A450);
  sub_18AFCBDC4();
  sub_18AFCC624();
  sub_18AFCC624();
  sub_18AE95F54(&qword_1EA99A4A0, &qword_1EA99A480);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA99A4A8, &qword_1EA99A470);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA99A498, &qword_1EA99A460);
  swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA99A490, &qword_1EA99A450);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}